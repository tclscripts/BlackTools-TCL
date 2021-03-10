#########################################################################
##          BlackTools - The Ultimate Channel Control Script           ##
##                    One TCL. One smart Eggdrop                       ##
#########################################################################
#############################   SEEN TCL   ##############################
#########################################################################
##						                       						   ##
##   BlackTools  : http://blacktools.tclscripts.net	               	   ##
##   Bugs report : http://www.tclscripts.net/	                       ##
##   GitHub page : https://github.com/tclscripts/BlackToolS-TCL-script ##
##   Online Help : irc://irc.undernet.org/tcl-help 	               	   ##
##                 #TCL-HELP / UnderNet                                ##
##                 You can ask in english or romanian                  ##
##					                               					   ##
#########################################################################

proc seen:process {nick host hand chan chan1 what type gl} {
global black botnick
	set cmd_status [btcmd:status $chan $hand "seen" 0]
	set number [scan $black(seenflood) %\[^:\]]
	set timer [scan $black(seenflood) %*\[^:\]:%s]
	set i 0
	set host_search 0
	set find_host ""
	set isonchan 0
if {$cmd_status == "1"} {
	return
}
	set split_host [split $host ":"]
	set the_host [lindex $split_host 1]
	set host [lindex $split_host 0]
if {$the_host == ""} {
	set the_host $host
}
if {![validchan $chan] && $gl == "0"} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.novalidchan none
	return
}
if {$host != "prv" && $gl == "0"} {
if {![setting:get $chan seen]} {
	return
	}
}

	set first_host ""
	set seenlist_all ""

if {$what == ""} {
	switch $type {
	0 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr "seen"
	}
	1 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_nick "seen"
	}
	2 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_priv "seen"
		}
	}
	return
}

if {![matchattr $hand nmo]} {
foreach tmr [utimers] {
if {[string match "*remove:seenflood:host $the_host $chan*" [join [lindex $tmr 1]]]} {
	killutimer [lindex $tmr 2]
	}
}

if {![info exists black(flood:$the_host:$chan)]} {
	set black(flood:$the_host:$chan) 0
}
	incr black(flood:$the_host:$chan)
	utimer $timer [list remove:seenflood:host $the_host $chan]

if {$black(flood:$the_host:$chan) >= "$number"} {
	blacktools:tell $nick $host $hand $chan $chan1 seen.5 none
	return
}

if {[string equal -nocase $what $nick] && ($chan1 == $chan)} { blacktools:tell $nick $host $hand $chan $chan1 seen.6 $nick
	return
	}
}

if {[string equal -nocase $what $botnick]} {
	blacktools:tell $nick $host $hand $chan $chan1 seen.4 $show_nick
	return
}

if {$gl == "0"} {
if {[onchan $what $chan]} {
if {[setting:get $chan seenreply]} {
	set isonchan 1
	set read_time [clock format [unixtime] -format %D-%H:%M:%S]
	blacktools:tell $what "prv" "" $chan $chan1 seen.39 "$what $nick $read_time"
		}
	}
}

	set file [open $black(seen_file) r]
	set size [file size $black(seen_file)]
	set data [split [read $file $size] \n]
	close $file
	set what [string map [list \[ {\[} \] {\]} \? {\?} \\ {\\}] $what]
if {[regexp {\!} $what]} {
	set first_host $what
	set host_search 1
	} else {
	set addsearch [join [split $what]]
if {[regexp -- {^[a-zA-Z\|\[\]`^\{\}][a-zA-Z0-9\-_\|\[\]`^\{\}\\]*$} $addsearch]} {
if {$gl == "0"} {
if {[setting:get $chan seenreply]} {
if {$isonchan == "0"} {
	seen:add_whosearch $nick $the_host $what $chan
			}
		}
	}
}
if {$gl == "1"} {
	set find [lsearch -all [string tolower $data] [string tolower "* *#* $what *"]]
} else {
	set find [lsearch -all [string tolower $data] [string tolower "* $chan $what *"]]
}

if {[llength $find] > 99} {
	blacktools:tell $nick $host $hand $chan $chan1 seen.41 none
	return
}

if {[llength $find] > 0} {
foreach i $find {
	set line [lindex $data $i]
if {$line != ""} {
	set userentry [lindex [split $line] 2]
	set readhost [lindex [split $line] 3]
	set chanentry [lindex [split $line] 1]
	set time [lindex [split $line] 4]
if {[info exists entry]} {
if {[lsearch -exact [string tolower "$i%$userentry%$readhost%$time"] [string tolower $entry]] == "-1"} {
	lappend entry "$i%$userentry%$readhost%$time"
					}
				} else { lappend entry "$i%$userentry%$readhost%$time" }
			}
		}
	}
	array set seensort [list]
	array set seennick [list]
if {![info exists entry]} {
	blacktools:tell $nick $host $hand $chan $chan1 seen.18 "$what"
	return
}
foreach e $entry {
	set split_e [split $e "%"]
	set read_time [lindex $split_e 3]
	set read_host [lindex $split_e 2]
	set read_pos [lindex $split_e 0]
	set seensort($read_time) "$read_host $read_pos"
}
foreach line [lsort -integer -decreasing -unique [array names seensort]] {
	lappend seenlist $seensort($line)
}
	set first_entry [lindex $seenlist 0]
	set first_host [lindex $first_entry 0]
	set first_pos [lindex $first_entry 1]
}
if {$gl == "1"} {
	set find_other [lsearch -all [string tolower $data] [string tolower "* *#* * $first_host *"]]
} else {
	set find_other [lsearch -all [string tolower $data] [string tolower "* $chan * $first_host *"]]
}

if {[llength $find_other] > 99} {
	blacktools:tell $nick $host $hand $chan $chan1 seen.41 none
	return
}

foreach k $find_other {
	set line [lindex $data $k]
	set userentry [lindex [split $line] 2]
	set time [lindex [split $line] 4]
	set readhost [string map {"~" ""} [lindex [split $line] 3]]
if {[info exists entry]} {
if {[lsearch -exact [string tolower "$k%$userentry%$readhost%$time"] [string tolower $entry]] == "-1"} {
	lappend entry "$k%$userentry%$readhost%$time"
				}
		} else { lappend entry "$k%$userentry%$readhost%$time" }
	}

if {![info exists entry] && $host_search == "1"} {
	blacktools:tell $nick $host $hand $chan $chan1 seen.18 "$what"
	return
}

if {$find_other != ""} {
	foreach e $entry {
	set split_e [split $e "%"]
	set read_time [lindex $split_e 3]
	set read_host [lindex $split_e 2]
	set read_pos [lindex $split_e 0]
	set seennick($read_time) $read_pos
	}
foreach line [lsort -integer -decreasing -unique [array names seennick]] {
	lappend seenlist_all $seennick($line)
		}
	}
	seen:reply $seenlist_all $nick $host $hand $chan $chan1 $data
}

proc seen:add_whosearch {nick host what chan} {
	global black
	set time [unixtime]
if {![info exists black(seen:searched:$chan)]} {
	set black(seen:searched:$chan) "$what%$nick%$host%$time"
} elseif {$black(seen:searched:$chan) == ""} {
	set black(seen:searched:$chan) "$what%$nick%$host%$time"
} else {
	set search_it [lsearch -nocase $black(seen:searched:$chan) "$what%*"]
if {$search_it < 0} {
	lappend black(seen:searched:$chan) [join "$what%$nick%$host%$time"]
		}
	}
}

proc seen:reply:src {nick host chan} {
	global black
if {![info exists black(seen:searched:$chan)]} {
	return
}
if {$black(seen:searched:$chan) == ""} { return }
	set search_it [lsearch -nocase $black(seen:searched:$chan) "$nick%*"]
if {$search_it == "-1"} { return }
	set line [lindex $black(seen:searched:$chan) $search_it]
	set split_line [split $line "%"]
	set who [lindex $split_line 0]
	set bywho [lindex $split_line 1]
	set thehost [lindex [split $split_line] 2]
	set time [lindex [split $split_line] 3]
	set read_time [clock format $time -format %D-%H:%M:%S]
	blacktools:tell $nick "prv" "" $chan $chan seen.39 "$who $bywho!$thehost $read_time"
	set black(seen:searched:$chan) [lreplace $black(seen:searched:$chan) $search_it $search_it]
}

proc seen:reply {entry nick thehost hand chan chan1 data} {
	global black
	set results ""
	set onchan ""
	set nojointime 0
	set more_entry 0
	set lastmessage 0
	set isonchan 0
	set getlang [string tolower [getuser $hand XTRA OUTPUT_LANG]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
	set first_entry [lindex $entry 0]
	set line [lindex $data $first_entry]
foreach e $entry {
	set getline [lindex $data $e]
	set getnick [lindex [split $getline] 2]
	lappend results $getnick
}
	set results [lsort -unique $results]
	set latest_entry [lindex [split $line] 2]
	set num_results [llength $results]
	set type [lindex [split $line] 0]
	set chanentry [lindex [split $line] 1]
	set jointime [lindex [split $line] 5]
	set newnick [lindex [split $line] 6]
	set split_newnick [wsplit $newnick "%MSG%"]
	set newnick [concat [lindex $split_newnick 0]]
	set extra [join [lrange [split $line] 6 end]]
	set host [lindex [split $line] 3]
	set host [string trim $host "*!~"]
	set tm [lindex [split $line] 4]
	set split_it [wsplit $extra "%MSG%"]
	set message [concat [lindex $split_it 1]]
	set extra [concat [lindex $split_it 0]]
	set output [return_time $getlang [expr [unixtime] - $tm]]
if {[regexp {[0-9]} $jointime]} {
	set staytime [expr [unixtime] - $jointime]
	set staytime [return_time $getlang [expr $tm - $jointime]]
} else { set staytime 0 }
	set time [clock format $tm -format %D-%H:%M:%S]

	set replace(%latest%) $latest_entry
	set replace(%num%) $num_results
	set replace(%entry%) "[join $results]"
	set replace(%host%) "$host"
	set replace(%output%) "$output"
	set replace(%date%) "($time)"
	set replace(%newnick%) "$newnick"
	set replace(%userentry%) "$latest_entry"
	set replace(%chan%) "$chanentry"
	set replace(%reason%) "$extra"
	set replace(%staytime%) "$staytime"
if {$jointime == "0"} { set staymsg "[string map [array get replace] $black(say.$getlang.seen.8)]"
	set replace(%staymsg%) "$staymsg"
} else {
	set staymsg "[string map [array get replace] $black(say.$getlang.seen.9)]"
	set replace(%staymsg%) "$staymsg"
}
if {$staytime == "0"} { set nojointime 1 }
if {$num_results > 1} { set more_entry 1 }
if {$message != ""} { set lastmessage 1 }
if {[onchan $latest_entry $chanentry]} { set isonchan 1 }
if {$type == "NICKCHANGE"} {
	if {[onchan $newnick $chanentry]} { set isonchan 1 }
}
if {$more_entry == "1"} {
	switch $type {
	JOIN {
if {$isonchan == "1"} {
	set nowon "[string map [array get replace] $black(say.$getlang.seen.19)]"
	set replace(%nowon%) "$nowon"
} else {
	set nowon "[string map [array get replace] $black(say.$getlang.seen.20)]"
	set replace(%nowon%) "$nowon"
}
if {$num_results >= 10} {
	set reply "[string map [array get replace] $black(say.$getlang.seen.35)]"
} else {
	set reply "[string map [array get replace] $black(say.$getlang.seen.23)]"
	}
}

	SPLIT {
if {$num_results >= 10} {
	set reply "[string map [array get replace] $black(say.$getlang.seen.36)]"
} else {
	set reply "[string map [array get replace] $black(say.$getlang.seen.24)]"
	}
}

	PART {
if {$num_results >= 10} {
	set reply "[string map [array get replace] $black(say.$getlang.seen.33)]"
} else {
	set reply "[string map [array get replace] $black(say.$getlang.seen.21)]"
	}
}

	KICK {
if {$num_results >= 10} {
	set reply "[string map [array get replace] $black(say.$getlang.seen.37)]"
} else {
	set reply "[string map [array get replace] $black(say.$getlang.seen.25)]"
	}
}

	SIGN {
if {$num_results >= 10} {
	set reply "[string map [array get replace] $black(say.$getlang.seen.34)]"
	} else {
	set reply "[string map [array get replace] $black(say.$getlang.seen.22)]"
	}
}

	NICKCHANGE {
if {$isonchan == "1"} {
	set nowon "[string map [array get replace] $black(say.$getlang.seen.10)]"
	set replace(%nowon%) "$nowon"
} else {
	set nowon "[string map [array get replace] $black(say.$getlang.seen.11)]"
	set replace(%nowon%) "$nowon"
	}
if {$num_results >= 10} {
	set reply "[string map [array get replace] $black(say.$getlang.seen.38)]"
} else {
	set reply "[string map [array get replace] $black(say.$getlang.seen.26)]"
	}
}

	LASTMSG {
if {$isonchan == "1"} {
	set nowon "[string map [array get replace] $black(say.$getlang.seen.19)]"
	set replace(%nowon%) "$nowon"
} else {
	set nowon "[string map [array get replace] $black(say.$getlang.seen.20)]"
	set replace(%nowon%) "$nowon"
}
if {$num_results >= 10} {
	set reply "[string map [array get replace] $black(say.$getlang.seen.40)]"
} else {
	set reply "[string map [array get replace] $black(say.$getlang.seen.30)]"
			}
		}
	}
} else {
	switch $type {
	JOIN {
if {$isonchan == "1"} {
	set nowon "[string map [array get replace] $black(say.$getlang.seen.19)]"
	set replace(%nowon%) "$nowon"
		} else {
	set nowon "[string map [array get replace] $black(say.$getlang.seen.20)]"
	set replace(%nowon%) "$nowon"
	}
	set reply "[string map [array get replace] $black(say.$getlang.seen.14)]"
}
	SPLIT {
	set reply "[string map [array get replace] $black(say.$getlang.seen.15)]"
	}
	PART {
	set reply "[string map [array get replace] $black(say.$getlang.seen.12)]"
	}

	SIGN {
	set reply "[string map [array get replace] $black(say.$getlang.seen.13)]"
}
	KICK {
	set reply "[string map [array get replace] $black(say.$getlang.seen.16)]"
	}
	NICKCHANGE {
if {$isonchan == "1"} {
	set nowon "[string map [array get replace] $black(say.$getlang.seen.10)]"
	set replace(%nowon%) "$nowon"
} else {
	set nowon "[string map [array get replace] $black(say.$getlang.seen.11)]"
	set replace(%nowon%) "$nowon"
	}
	set reply "[string map [array get replace] $black(say.$getlang.seen.17)]"
}
	LASTMSG {
if {$isonchan == "1"} {
	set nowon "[string map [array get replace] $black(say.$getlang.seen.19)]"
	set replace(%nowon%) "$nowon"
} else {
	set nowon "[string map [array get replace] $black(say.$getlang.seen.20)]"
	set replace(%nowon%) "$nowon"
			}
	set reply "[string map [array get replace] $black(say.$getlang.seen.29)]"
		}
	}
}
	set text [black:color:set "" $reply]
	blacktools:tell $nick $thehost $hand $chan $chan1 seen.27 $text
if {$lastmessage == "1"} {
	set replace(%lastmsg%) $message
	set lastmsg "[string map [array get replace] $black(say.$getlang.seen.32)]"
} else {
	set lastmsg "[string map [array get replace] $black(say.$getlang.seen.31)]"
	}
	set lastmsg [black:color:set "" $lastmsg]
	blacktools:tell $nick $thehost $hand $chan $chan1 seen.27 $lastmsg
}


proc seen:join {nick host hand chan} {
global botnick black
if {![validchan $chan]} { return }
if {![setting:get $chan seen]} {
	return
}

if {[isbotnick $nick]} { return }

if {[setting:get $chan seenreply]} {
	seen:reply:src $nick $host $chan
}
	set time [unixtime]
	set host "*!$host"
	set type "JOIN"
	seen:save $nick $chan $host $type $time "NONE"
}

proc seen:part {nick host hand chan arg} {
	global botnick black
if {![validchan $chan]} { return }
if {![setting:get $chan seen]} {
	return
}
	set time [unixtime]
	set staytimer "0"
	set type "PART"
	set reason [join [lrange [split $arg] 0 end]]
if {$reason == ""} { set reason "N/A" }
	set host "*!$host"
if {[isbotnick $nick]} { return }
	seen:save $nick $chan $host $type $time $reason
}

proc seen:sign {nick host hand chan arg} {
	global botnick black
if {![validchan $chan]} { return }
if {![setting:get $chan seen]} {
	return 0
}
	set time [unixtime]
	set staytimer "0"
	set type "SIGN"
	set host "*!$host"
	set reason [join [lrange [split $arg] 0 end]]
if {$reason == ""} { set reason "N/A" }
if {[isbotnick $nick]} { return }
	seen:save $nick $chan $host $type $time $reason
}

proc seen:kick {nick host hand chan kicked reason} {
global botnick black
if {![validchan $chan]} { return }
if {![setting:get $chan seen]} {
	return
}
	set time [unixtime]
	set host [getchanhost $kicked $chan]
	set host "*!$host"
	set reason [join [lrange [split $reason] 1 end]]
if {$reason == ""} { set reason "N/A" }
if {[isbotnick $kicked]} { return }
	set type "KICK"
	seen:save $kicked $chan $host $type $time $reason
}

proc seen:split {nick host hand chan args} {
global botnick black
if {![validchan $chan]} { return }
if {![setting:get $chan seen]} {
	return
}
	set time [unixtime]
	set type "SPLIT"
	set host "*!$host"
	set reason [join [lrange [split $args] 0 end]]
if {[isbotnick $nick]} { return }
	seen:save $nick $chan $host $type $time "NONE"
}

proc seen:changenick {nick host hand chan newnick} {
global botnick black
if {![validchan $chan]} { return }
if {![setting:get $chan seen]} {
	return
}
	set time [unixtime]
	set host "*!$host"
	set type "NICKCHANGE"
if {[isbotnick $nick]} { return }
	seen:save $nick $chan $host $type $time $newnick
}

proc seen:lastmsg {nick host hand chan arg} {
	global black
if {![validchan $chan]} { return }
if {![setting:get $chan seen]} {
	return
}
	set time [unixtime]
	set text [join [lrange [split $arg] 0 end]]
	set host "*!$host"
	set type "LASTMSG"
if {[isbotnick $nick]} { return }
	seen:save $nick $chan $host $type $time $text
}

proc seen:save {nick chan host type time extra} {
	global black
	set staytimer 0
if {$type != "JOIN" && $type != "LASTMSG"} {
if {[info exists black(seen:entry:$nick:$chan)]} {
	set getextra [join [lrange [split $black(seen:entry:$nick:$chan)] 4 end]]
	set split_it [wsplit $getextra "%MSG%"]
	set message [concat [lindex $split_it 1]]
if {$message != ""} {
	set extra [concat [lindex $split_it 0]]
	set extra "$extra%MSG%$message"
}
	set get_type [lindex [split $black(seen:entry:$nick:$chan)] 0]
if {$get_type == "JOIN"} {
	set staytimer [lindex [split $black(seen:entry:$nick:$chan)] 2]
if {[regexp {[0-9]} $staytimer]} {
	set black(seen:entry:$nick:$chan) "$type $host $time $staytimer $extra"
			} else {
	set black(seen:entry:$nick:$chan) "$type $host $time 0 $extra"
			}
		} else {
	set black(seen:entry:$nick:$chan) "$type $host $time 0 $extra"
		}
	} else {
	set black(seen:entry:$nick:$chan) "$type $host $time 0 $extra"
	}
} elseif {$type == "LASTMSG"} {
if {[info exists black(seen:entry:$nick:$chan)]} {
	set staytimer [lindex [split $black(seen:entry:$nick:$chan)] 3]
	set jointime [lindex [split $black(seen:entry:$nick:$chan)] 2]
	set gettype [lindex [split $black(seen:entry:$nick:$chan)] 0]
if {$gettype == "JOIN"} {
	set staytimer $jointime
}
if {[regexp {[0-9]} $staytimer]} {
	set black(seen:entry:$nick:$chan) "$type $host $time $staytimer NONE%MSG%$extra"
		} else {
	set black(seen:entry:$nick:$chan) "$type $host $time 0 NONE%MSG%$extra"
		}
	} else {
	set black(seen:entry:$nick:$chan) "$type $host $time $time NONE%MSG%$extra"
	}
} else {
if {[info exists black(seen:entry:$nick:$chan)]} {
	set getextra [join [lrange [split $black(seen:entry:$nick:$chan)] 4 end]]
	set split_it [wsplit $getextra "%MSG%"]
	set message [concat [lindex $split_it 1]]
if {$message != ""} {
	set extra [concat [lindex $split_it 0]]
	set extra "$extra%MSG%$message"
	}
}
	set black(seen:entry:$nick:$chan) "$type $host $time 0 $extra"
}
if {[info exists black(seen_list:$chan)]} {
if {$black(seen_list:$chan) != ""} {
	set find_entry [lsearch -exact -nocase [split $black(seen_list:$chan)] $nick]
if {$find_entry > -1} {
	return
			}
			set black(seen_list:$chan) "$black(seen_list:$chan) $nick"
		} else {
	set black(seen_list:$chan) $nick
		}
	} else {
	set black(seen_list:$chan) $nick
	}
}

proc seen:save_file {min hour day mon year} {
	global black
	set channels ""
if {![file exists $black(seen_file)]} {return}
foreach chan [channels] {
if {[setting:get $chan seen]} {
if {[info exists black(seen_list:$chan)]} {
if {$black(seen_list:$chan) != ""} {
	lappend channels $chan
			}
		}
	}
}
if {$channels != ""} {
	seen:save_chan $channels 0
	}
}

proc seen:save_remove {entry chan} {
	global black
	set staytime 0
	set message ""
	set jointime 0
	set action ""
	set host [lindex [split $black(seen:entry:$entry:$chan)] 1]
	set type [lindex [split $black(seen:entry:$entry:$chan)] 0]
	set time [lindex [split $black(seen:entry:$entry:$chan)] 2]
	set thestay [lindex [split $black(seen:entry:$entry:$chan)] 3]
	set extra [join [lrange [split $black(seen:entry:$entry:$chan)] 4 end]]
	set timestamp [clock format [clock seconds] -format {%Y%m%d%H%M%S}]
	set temp "$black(tempdir)/seen_temp.$timestamp"
	set file [open $black(seen_file) "r"]
	set tempwrite [open $temp w]
while {[gets $file line] != -1} {
	set read_type [lindex [split $line] 0]
	set read_chan [lindex [split $line] 1]
	set read_nick [lindex [split $line] 2]
	set enc_chan [encoding convertfrom utf-8 $read_chan]
if {[string equal -nocase $chan $enc_chan] && [string equal -nocase $entry $read_nick]} {
	set staytime [lindex [split $line] 5]
	set readmsg [join [lrange [split $line] 6 end]]
	set jointime [lindex [split $line] 4]
	set action [lindex [split $line] 0]
	set split_it [wsplit $readmsg "%MSG%"]
	set message [concat [lindex $split_it 1]]
if {[string match -nocase "*%MSG*" $extra]} {
	set message ""
}
	continue
		} else {
	puts $tempwrite $line
	}
}
	close $file
if {$type != "JOIN"} {
if {$action == "JOIN"} {
if {$message != ""} {
	puts $tempwrite "$type $chan $entry $host $time $jointime $extra%MSG%$message"
} else {
	puts $tempwrite "$type $chan $entry $host $time $jointime $extra"
}
	} else {
if {$message != ""} {
	puts $tempwrite "$type $chan $entry $host $time $staytime $extra%MSG%$message"
} else {
	puts $tempwrite "$type $chan $entry $host $time $staytime $extra"
		}
	}
} else {
if {$message != ""} {
	puts $tempwrite "$type $chan $entry $host $time 0 $extra%MSG%$message"
} else {
	puts $tempwrite "$type $chan $entry $host $time 0 $extra"
	}
}
	close $tempwrite
    file rename -force $temp $black(seen_file)
if {[info exists black(seen:entry:$entry:$chan)]} {
	unset black(seen:entry:$entry:$chan)
	}
}

proc seen:save_chan {channels num} {
	global black
	set chan [lindex $channels $num]
	set x 0
if {[info exists black(seen_list:$chan)]} {
while {$x <= [llength [split $black(seen_list:$chan)]]} {
	set entry [lindex [split $black(seen_list:$chan)] $x]
if {[info exists black(seen:entry:$entry:$chan)]} {
	seen:save_remove $entry $chan
		}
	set x [expr $x + 1]
	}
}

if {[info exists black(seen_list:$chan)]} {
	unset black(seen_list:$chan)
}
	set c [expr $num + 1]
if {[lindex $channels $c] != ""} {
	seen:save_chan $channels $c
	}
}

proc seen:entry:delete {minute hour day month year} {
	global black username
	set timestamp [clock format [clock seconds] -format {%Y%m%d%H%M%S}]
	set temp "$black(tempdir)/seen_temp.$timestamp"
	set file [open $black(seen_file) "r"]
	set tempwrite [open $temp w]
	set counter 0
while {[gets $file line] != -1} {
	set tm [lindex [split $line] 4]
if {![regexp {[0-9]} $tm]} {
	continue
}
	set read_days [expr [expr [expr [expr [unixtime] - $tm] / 60]] / 1440]
if {$read_days >= $black(seen:expire:time)} {
	set counter [expr $counter + 1]
	continue
		} else {
		puts $tempwrite $line
		}
	}
	close $tempwrite
	close $file
    file rename -force $temp $black(seen_file)

foreach chan [channels] {
if {![info exists black(seen:searched:$chan)]} { continue }
if {$black(seen:searched:$chan) == ""} {
	unset black(seen:searched:$chan)
	continue
}
foreach entry $black(seen:searched:$chan) {
	set split_entry [split $entry "%"]
	set time [lindex $split_entry 3]
	set read_days [expr [expr [expr [expr [unixtime] - $time] / 60]] / 1440]
if {$read_days >= $black(seen:expire:seenreply)} {
	set search_it [lsearch -all [split $black(seen:searched:$chan)] $entry]
if {$search_it > -1} {
	set black(seen:searched:$chan) [lreplace $black(seen:searched:$chan) $search_it $search_it]
				}
			}
		}
	}
}