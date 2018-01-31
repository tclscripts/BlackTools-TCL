#########################################################################
##          BlackTools - The Ultimate Channel Control Script           ##
##                    One TCL. One smart Eggdrop                       ##
#########################################################################
#############################   SEEN TCL   ##############################
#########################################################################
##						                       ##
##   BlackTools  : http://blacktools.tclscripts.net	               ##
##   Bugs report : http://www.tclscripts.net/	                       ##
##   GitHub page : https://github.com/tclscripts/BlackToolS-TCL-script ##
##   Online Help : irc://irc.undernet.org/tcl-help 	               ##
##                 #TCL-HELP / UnderNet                                ##
##                 You can ask in english or romanian                  ##
##					                               ##
#########################################################################

proc seen:get_lastmessage {nick host hand chan arg} {
	global black username
	set seen_lastmessage_dir $black(seen_details)
	set host "*!$host"
	set time [unixtime]
	set no_staytime 0
	set arg [join [split $arg]]
	set type "LASTMSG"
	set found_entry ""
	set lin 0
if {![validchan $chan]} { return }
if {![setting:get $chan seen] && ![setting:get $chan seenlastmsg]} {
	return
}
	set file [open $seen_lastmessage_dir r]
	set size [file size $seen_lastmessage_dir]
	set data [split [read $file $size] \n]
	close $file
	set timestamp [clock format [clock seconds] -format {%Y%m%d%H%M%S}]
	set temp "$black(tempdir)/seen_temp.$timestamp"
	set tempwrite [open $temp w]
foreach line $data {
if {$line != ""} {
	set lin [expr $lin +1]
	set hostentry [lindex [split $line] 3]
	set chanentry [lindex [split $line] 1]
if {[string equal -nocase $host $hostentry] && [string match -nocase $chanentry $chan]} {
	set userentry [lindex  [split $line] 2]
	set found_entry "LASTMSG $chanentry $userentry $hostentry $time $arg"
	continue
			} else {
	puts $tempwrite $line
			}
		}
	}
if {$found_entry != ""} {
	puts $tempwrite $found_entry
	} else {
	set found_entry "LASTMSG $chan $nick $host $time $arg"
	puts $tempwrite $found_entry
	}
	close $tempwrite
    file rename -force $temp $seen_lastmessage_dir
}


proc seen:save:2 {nick chan host type time staytimer reason} {
	global black
	set j 0
	set line_to_append "$type $chan $nick $host $time $staytimer $reason"
	set file [open $black(seen_file) r]
	set size [file size $black(seen_file)]
	set data [split [read $file $size] \n]
	close $file
	set timestamp [clock format [clock seconds] -format {%Y%m%d%H%M%S}]
	set temp "$black(tempdir)/seen_temp.$timestamp"
	set tempwrite [open $temp w]
foreach line $data {
if {$line != ""} {
	set userentry [lindex  [split $line] 2]
	set chanentry [lindex [split $line] 1]
if {[string equal -nocase $userentry $nick] && [string match -nocase $chanentry $chan]} {
	set joined [lindex [split $line] 0]
if {$joined == "JOIN"} {
	set j [lindex [split $line] 4]
if {![regexp {^[0-9]} $j] || ($j == "")} {
	set j 0
				}
			}
	set line_to_append "$type $chan $nick $host $time $j $reason"
		} else {
	puts $tempwrite $line
		}
	}
}
	puts $tempwrite $line_to_append
	close $tempwrite
	file rename -force $temp $black(seen_file)
}

proc seen:save:1 {nick chan host type time staytimer} {
	global black
	set line_to_append "$type $chan $nick $host $time $staytimer NONE"
	set file [open $black(seen_file) r]
	set size [file size $black(seen_file)]
	set data [split [read $file $size] \n]
	close $file
	set timestamp [clock format [clock seconds] -format {%Y%m%d%H%M%S}]
	set temp "$black(tempdir)/seen_temp.$timestamp"
	set tempwrite [open $temp w]
foreach line $data {
if {$line != ""} {
	set userentry [lindex  [split $line] 2]
	set chanentry [lindex [split $line] 1]
if {[string equal -nocase $userentry $nick] && [string match -nocase $chanentry $chan]} {
	continue
			} else {
	puts $tempwrite $line		
		}
	}
}
	puts $tempwrite $line_to_append
	close $tempwrite
	file rename -force $temp $black(seen_file)
}

proc seen:join {nick host hand chan} {
global botnick black
if {![validchan $chan]} { return }
if {![setting:get $chan seen]} {
	return
}

if {[setting:get $chan seenreply]} {
	seen:reply:src $nick $host $chan
}

if {[isbotnick $nick]} { return }
	set time [unixtime]
	set host "*!$host"
	set type "JOIN"
	set staytimer "0"
	seen:save:1 $nick $chan $host $type $time $staytimer
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
	seen:save:2 $nick $chan $host $type $time $staytimer $reason
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
	seen:save:2 $nick $chan $host $type $time $staytimer $reason
}


proc seen:kick {nick host hand chan kicked reason} {
global botnick black
if {![validchan $chan]} { return }
if {![setting:get $chan seen]} {
	return
}	
	set j 0
	set time [unixtime]
	set hosted [getchanhost $kicked $chan]
	set hosted "*!$hosted"
	set reason [join [lrange [split $reason] 1 end]]
if {$reason == ""} { set reason "N/A" }
if {[isbotnick $kicked]} { return }
	set line_to_append "KICK $chan $kicked $hosted $time 0 $reason"
	set file [open $black(seen_file) r]
	set size [file size $black(seen_file)]
	set data [split [read $file $size] \n]
	close $file
	set timestamp [clock format [clock seconds] -format {%Y%m%d%H%M%S}]
	set temp "$black(tempdir)/seen_temp.$timestamp"
	set tempwrite [open $temp w]
foreach line $data {
if {$line != ""} {
	set userentry [lindex [split $line] 2]
	set chanentry [lindex [split $line] 1]
if {[string equal -nocase $kicked $userentry] && [string match -nocase $chanentry $chan]} {
	set joined [lindex [split $line] 0]
if {$joined == "JOIN"} {
	set j [lindex [split $line] 4]
if {![regexp {^[0-9]} $j] || ($j == "")} {
	set j 0
		}
	}
	set line_to_append "KICK $chan $kicked $hosted $time $j $reason"
} else {
	puts $tempwrite $line
		}
	}
}
	puts $tempwrite $line_to_append
	close $tempwrite
	file rename -force $temp $black(seen_file)
}


proc seen:split {nick host hand chan args} {
global botnick black
	set seendir $black(seen_file)
if {![file exists $seendir]} {
	set file [open $seendir w]
	close $file
}
if {![validchan $chan]} { return }
if {![setting:get $chan seen]} {
	return
}
	set time [unixtime]	
	set staytimer "0"
	set type "SPLIT"
	set host "*!$host"	
	set reason [join [lrange [split $args] 0 end]]
if {[isbotnick $nick]} { return }
	seen:save:2 $nick $chan $host $type $time $staytimer $reason
}


proc seen:changenick {nick host hand chan newnick} {
global botnick black
	set seendir $black(seen_file)
if {![file exists $seendir]} {
	set file [open $seendir w]
	close $file
}
if {![validchan $chan]} { return }
if {![setting:get $chan seen]} {
	return
}
	set time [unixtime]
	set host "*!$host"
	set staytimer "0"
	set type "NICKCHANGE"
if {[isbotnick $nick]} { return }
	seen:save:2 $nick $chan $host $type $time $staytimer $newnick
}

proc seen:process {nick host hand chan chan1 what type} {
global black botnick
	set cmd_status [btcmd:status $chan $hand "seen" 0]
if {$cmd_status == "1"} { 
	return 
}
	set seendir $black(seen_file)
	set test ""
	set test_host ""
	set show_nick $nick
if {![matchattr $hand nmo]} {
if {![validchan $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.novalidchan none
	return
	}
}

if {![setting:get $chan seen]} {
	return
}

if {[string match -nocase "*prv*" $host] || $type == "0"} {
	set split_host [split $host ":"]
	set the_host [lindex $split_host 0]
	set host [lindex $split_host 1]
} else {
	set the_host $host
}

	set number [scan $black(seenflood) %\[^:\]]
	set timer [scan $black(seenflood) %*\[^:\]:%s]
	set i 0
	
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

if {![validchan $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.novalidchan none
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
	
if {[onchan $what $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 seen.7 $what
if {[setting:get $chan seenreply]} {
	set read_time [clock format [unixtime] -format %D-%H:%M:%S]
	blacktools:tell $what "prv" "" $chan $chan1 seen.39 "$what $show_nick $read_time"
	}
	return
}
	set file [open $seendir r]
	set size [file size $seendir]
	set data [split [read $file $size] \n]
	close $file
	set what [string map [list \[ {\[} \] {\]} \? {\?} \\ {\\}] $what]
if {[matchattr $hand nmo]} {
if {[regexp {\!} $what]} {
	set test_host [lsearch -all [string tolower $data] [string tolower "* *#* * $what *"]]
} else {
if {[regexp -- {^[a-zA-Z\|\[\]`^\{\}][a-zA-Z0-9\-_\|\[\]`^\{\}\\]*$} $what]} {
	seen:add_whosearch $nick $host $what $chan
	}
	set test [lsearch -all [string tolower $data] [string tolower "* *#* $what *"]]
}
} else {
if {[regexp {\!} $what]} {
	set test_host [lsearch -all [string tolower $data] [string tolower "* $chan * $what *"]]
	} else {
if {[regexp -- {^[a-zA-Z\|\[\]`^\{\}][a-zA-Z0-9\-_\|\[\]`^\{\}\\]*$} $what]} {
	seen:add_whosearch $nick $host $what $chan
		}
	set test [lsearch -all [string tolower $data] [string tolower "* $chan $what *"]]
	}
}
if {[string length $test] > 0} {
foreach i $test {
	set line [lindex $data $i]
if {$line != ""} {
	set userentry [lindex [split $line] 2]
	set readhost [string map {"~" ""} [lindex [split $line] 3]]
	set chanentry [lindex [split $line] 1]
if {[info exists entry]} {
if {[lsearch -exact [string tolower "$i:$userentry:$readhost"] [string tolower $entry]] == "-1"} {	
	lappend entry "$i:$userentry:$readhost"
					}
				} else { lappend entry "$i:$userentry:$readhost" }
			}
		}
	}

if {[string length $test_host] > 0 && [string length $test] == 0} {
foreach j $test_host {
	set line [lindex $data $j]
if {$line != ""} {
	set userentry [lindex [split $line] 2]
	set readhost [string map {"~" ""} [lindex [split $line] 3]]
	set chanentry [lindex [split $line] 1]
if {[info exists entry]} {
if {[lsearch -exact [string tolower "$j:$userentry:$readhost"] [string tolower $entry]] == "-1"} {
	lappend entry "$j:$userentry:$readhost"
				}
			} else { lappend entry "$j:$userentry:$readhost" }
		}
	}
}

if {[info exists entry]} {
	set split_entry [split $entry ":"]
	set get_host [lindex [split $split_entry] 2]
	set get_line [lindex [split $split_entry] 0]
	set get_nick [lindex [split $split_entry] 1]
}

#checking other entries
if {[info exists get_host]} {
if {[string length $test_host] < 1} {
if {[matchattr $hand nmo]} {
	set test [lsearch -all [string tolower $data] [string tolower "* *#* * $get_host *"]]
} else {
	set test [lsearch -all [string tolower $data] [string tolower "* $chan * $get_host *"]]
}
	foreach k $test {
	if {$k != $get_line} {
	set line [lindex $data $k]
	set userentry [lindex [split $line] 2]
	set readhost [string map {"~" ""} [lindex [split $line] 3]]
if {[info exists entry]} {
if {[lsearch -exact [string tolower "$k:$userentry:$readhost"] [string tolower $entry]] == "-1"} {
	lappend entry "$k:$userentry:$readhost"
					}					
				} else { lappend entry "$k:$userentry:$readhost" }	
			} 	
		}
	}
}
#
if {[info exists entry]} {
	seen:reply $entry $nick $hand $chan $chan1 $data "1" $host
	} else {
	blacktools:tell $nick $host $hand $chan $chan1 seen.18 $what
	}
}

proc seen:add_whosearch {who host searched chan} {
	global black
	set search_time [unixtime]
	set timestamp [clock format [clock seconds] -format {%Y%m%d%H%M%S}]
	set temp "$black(tempdir)/seen_temp.$timestamp"
	set addline "LASTSRC $chan $who $host $search_time $searched"
	set file [open $black(seen_details) "r"]
	set tempwrite [open $temp w]
while {[gets $file line] != -1} {
	set read_type [lindex [split $line] 0]
	set read_chan [lindex [split $line] 1]
	set enc_chan [encoding convertfrom utf-8 $read_chan]
	set read_who [lindex [split $line] 3]
	set read_src [lindex [split $line] 5]
if {[string equal -nocase $read_type "LASTSRC"] && [string equal -nocase $chan $enc_chan] && [string equal -nocase $host $read_who] && [string equal -nocase $searched $read_src]} { 
	continue
		} else {
	puts $tempwrite $line
		}	
	}
	puts $tempwrite $addline
	close $tempwrite
	close $file
    file rename -force $temp $black(seen_details)
}

proc seen:reply:src {nick host chan} {
	global black
	set chan1 $chan
	set file [open $black(seen_details) "r"]	
while {[gets $file line] != -1} {
	set read_type [lindex [split $line] 0]
	set read_chan [lindex [split $line] 1]
	set enc_chan [encoding convertfrom utf-8 $read_chan]
	set read_src [lindex [split $line] 5]
if {[string equal -nocase $read_type "LASTSRC"] && [string equal -nocase $chan $enc_chan] && [string equal -nocase $read_src $nick]} {
	set read_who [lindex [split $line] 2]
	set read_who_h [lindex [split $line] 3]
	set read_time [lindex [split $line] 4]
	set read_time [clock format $read_time -format %D-%H:%M:%S]
	blacktools:tell $nick "prv" "" $chan $chan1 seen.39 "$read_who!$read_who_h $read_time $nick"
	seen:reply:remove $read_src $chan
		}	
	}
	close $file
}

proc seen:reply:remove {nick chan} {
	global black
	set timestamp [clock format [clock seconds] -format {%Y%m%d%H%M%S}]
	set temp "$black(tempdir)/seen_temp.$timestamp"
	set file [open $black(seen_details) "r"]
	set tempwrite [open $temp w]
while {[gets $file line] != -1} {
	set read_type [lindex [split $line] 0]
	set read_chan [lindex [split $line] 1]
	set enc_chan [encoding convertfrom utf-8 $read_chan]
	set read_src [lindex [split $line] 5]
if {[string equal -nocase $read_type "LASTSRC"] && [string equal -nocase $chan $enc_chan] && [string equal -nocase $nick $read_src]} { 
	continue
		} else {
	puts $tempwrite $line
		}	
	}
	close $tempwrite
	close $file
    file rename -force $temp $black(seen_details)
}

proc seen:getlastmsg {what chan nick host hand chan1} {
global black username
	set seendirlastmsg $black(seen_details)
	set test_lastmsg_host ""
	set test_lastmsg_nick ""
	
	set file [open $black(seen_details) r]
	set size [file size $black(seen_details)]
	set data [split [read $file $size] \n]
	close $file
if {$database != ""} {
	set test_lastmsg_nick [lsearch -all [string tolower $data] [string tolower "* *#* $what *"]]
if {[regexp {\!} $what]} {
	set test_lastmsg_host [lsearch -all [string tolower $data] [string tolower "* *#* * $what *"]]
}
	} else { return 0 }
if {[llength $test_lastmsg_nick] < 1 && [llength $test_lastmsg_host] < 1} {
	return 0
}

foreach i $test_lastmsg_nick {
	set line [lindex $data $i]
if {$line != ""} {
	set userentry [lindex [split $line] 2]
	set readhost [lindex [split $line] 3]
if {[info exists entry]} {
if {[lsearch -exact [string tolower "$i:$userentry:$readhost"] [string tolower $entry]] == "-1"} {	
	lappend entry "$i:$userentry:$readhost"
					}
				} else { lappend entry "$i:$userentry:$readhost" }
			}
		}

if {[string length $test_lastmsg_host] > 0 && [string length $test_lastmsg_nick] == 0} {
foreach j $test_lastmsg_host {
	set line [lindex $data $j]
if {$line != ""} {
	set userentry [lindex [split $line] 2]
	set readhost [lindex [split $line] 3]
if {[info exists entry]} {
if {[lsearch -exact [string tolower "$j:$userentry:$readhost"] [string tolower $entry]] == "-1"} {
	lappend entry "$j:$userentry:$readhost"
					}
				} else { lappend entry "$j:$userentry:$readhost" }
			}
		}
	}

if {[info exists entry]} {
	set split_entry [split $entry ":"]
	set get_host [lindex [split $split_entry] 2]
	set get_line [lindex [split $split_entry] 0]
	set get_nick [lindex [split $split_entry] 1]
} else { return 0 }

#checking other entries
	
if {[string length $test_lastmsg_host] < 1} {
if {[string length $test_lastmsg_nick] == 1} {
	set test [lsearch -all [string tolower $data] [string tolower "* * * $get_host *"]]
	foreach k $test {
	if {$k != $get_line} {
	set line [lindex $data $k]
	set userentry [lindex [split $line] 2]
	set readhost [lindex [split $line] 3]
if {[info exists entry]} {
if {[lsearch -exact [string tolower "$k:$userentry:$readhost"] [string tolower $entry]] == "-1"} {
	lappend entry "$k:$userentry:$readhost"
					}					
				} else { lappend entry "$k:$userentry:$readhost" }	
			} 	
		}
	}
}
	seen:reply $entry $nick $hand $chan $data "1" $host
}

proc seen:reply {entry nick hand chan chan1 data lastmsg prv} {
global black
	array set seensort [list]
	set getlang [string tolower [getuser $hand XTRA OUTPUT_LANG]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
	set other_entry ""
	set split_entry [join [split $entry " "]]
foreach n $split_entry {
if {$n != ""} {
	set split_entry [split $n ":"]
	set line_num [lindex $split_entry 0]
	set data_line [lindex $data $line_num] 
	set tm [lindex [split $data_line] 4]
	set seensort($tm) $line_num
	}
}
foreach line [lsort -integer -decreasing -unique [array names seensort]] {
	lappend top_seenlist $seensort($line)
}
	set split_seenlist [split $top_seenlist " "]
	set first_entry_num [lindex $split_seenlist 0]
	set first_entry [lindex $data $first_entry_num]
	set first_entry [lindex [split $first_entry] 2]
	set chanentry [lindex [split $data_line] 1]
	set host [lindex [split $data_line] 3]
	set jointime [lindex [split $data_line] 5]
	set newnick [lindex [split $data_line] 6]
	set reason [join [lrange [split $data_line] 6 end]]
	set uhost $host
	set host [string trim $host "*!~"]
	set tm [lindex [split $data_line] 4]
	set type [lindex [split $data_line] 0]
	set lmsg [join [lrange [split $data_line] 5 end]]
	
if {[llength $entry] > 1} {
	set other_entries [lrange $split_seenlist 1 end]
	
foreach n $other_entries {
if {$n != ""} {
	set other_entry_line [lindex $data $n]
	set other_entry_line [lindex [split $other_entry_line] 2]
	lappend other_entry $other_entry_line
	}
}
	set all_entries  "$first_entry [join $other_entry]"
} else {
	set all_entries "$first_entry"
}   
	set all_entries [concat [join [lsort -unique [split $all_entries]]]]
	set entry_count [llength [concat [split $all_entries]]]
if {!([regexp {^[0-9]} $jointime]) || ($jointime == "")} {
	set jointime 0
	set reason [join [lrange [split $line] 5 end]]
}

if {$reason == ""} { set reason "N/A" }

if {$entry_count >= 10} {
	set all_entries "$first_entry"
}

	set output [return_time $getlang [expr [unixtime] - $tm]]
	set staytime [expr [unixtime] - $jointime]
	set staytime [return_time $getlang [expr $tm - $jointime]]
	set time [clock format $tm -format %D-%H:%M:%S]
	
	set replace(%latest%) $first_entry
	set replace(%num%) $entry_count
	set replace(%entry%) "$all_entries"
	set replace(%host%) "$host"
	set replace(%output%) "$output"
	set replace(%date%) "($time)"
	set replace(%newnick%) "$newnick"
	set replace(%userentry%) "$first_entry"
	set replace(%chan%) "$chanentry"
	set replace(%reason%) "$reason"
	set replace(%staytime%) "$staytime"
	set replace(%lastmsg%) "$lmsg"
if {$jointime == "0"} { set staymsg "[string map [array get replace] $black(say.$getlang.seen.8)]"
	set replace(%staymsg%) "$staymsg"
} else {
	set staymsg "[string map [array get replace] $black(say.$getlang.seen.9)]"
	set replace(%staymsg%) "$staymsg"
}

if {$lastmsg == "1"} {
	if {$entry_count > 1} {
	set reply "[string map [array get replace] $black(say.$getlang.seen.30)]"
	} else {
	set reply "[string map [array get replace] $black(say.$getlang.seen.29)]"
	}
}

if {$entry_count > 1} {
	set found_many 1
if {$type == "PART"} {
if {$entry_count >= 10} {
	set reply "[string map [array get replace] $black(say.$getlang.seen.33)]"
} else {
	set reply "[string map [array get replace] $black(say.$getlang.seen.21)]"
	}
}
if {$type == "SIGN"} {
if {$entry_count >= 10} {
	set reply "[string map [array get replace] $black(say.$getlang.seen.34)]"
	} else {
	set reply "[string map [array get replace] $black(say.$getlang.seen.22)]"
	}
}
if {$type == "JOIN"} {
if {[onchan $first_entry $chanentry]} {
	set nowon "[string map [array get replace] $black(say.$getlang.seen.19)]"
	set replace(%nowon%) "$nowon"
} else { 
	set nowon "[string map [array get replace] $black(say.$getlang.seen.20)]"
	set replace(%nowon%) "$nowon"
}
if {$entry_count >= 10} {
	set reply "[string map [array get replace] $black(say.$getlang.seen.35)]"
} else {
	set reply "[string map [array get replace] $black(say.$getlang.seen.23)]"
	}
}
if {$type == "SPLIT"} {
if {$entry_count >= 10} {
	set reply "[string map [array get replace] $black(say.$getlang.seen.36)]"
} else {
	set reply "[string map [array get replace] $black(say.$getlang.seen.24)]"
	}
}
if {$type == "KICK"} {
if {$entry_count >= 10} {
	set reply "[string map [array get replace] $black(say.$getlang.seen.37)]"
} else {
	set reply "[string map [array get replace] $black(say.$getlang.seen.25)]"
	}
}
if {$type == "NICKCHANGE"} {
if {[onchan $newnick $chanentry]} { 
	set nowon "[string map [array get replace] $black(say.$getlang.seen.10)]"
	set replace(%nowon%) "$nowon"
	set replace(%chan%) "$chanentry"
} else {
	set nowon "[string map [array get replace] $black(say.$getlang.seen.11)]"
	set replace(%nowon%) "$nowon"
}
if {$entry_count >= 10} {
	set reply "[string map [array get replace] $black(say.$getlang.seen.38)]"
} else {
	set reply "[string map [array get replace] $black(say.$getlang.seen.26)]"
		}
	}
} else {

if {$type == "PART"} {
	set reply "[string map [array get replace] $black(say.$getlang.seen.12)]"
}
if {$type == "SIGN"} {
	set reply "[string map [array get replace] $black(say.$getlang.seen.13)]"

}
if {$type == "JOIN"} {
if {[onchan $first_entry $chanentry]} { 
	set nowon "[string map [array get replace] $black(say.$getlang.seen.19)]"
	set replace(%nowon%) "$nowon"
	set replace(%chan%) "$chanentry"
} else { 
	set nowon "[string map [array get replace] $black(say.$getlang.seen.11)]"
	set replace(%nowon%) "$nowon"
}
	set reply "[string map [array get replace] $black(say.$getlang.seen.14)]"
}
if {$type == "SPLIT"} {
	set reply "[string map [array get replace] $black(say.$getlang.seen.15)]"
}
if {$type == "KICK"} {
	set reply "[string map [array get replace] $black(say.$getlang.seen.16)]"
}
if {$type == "NICKCHANGE"} {
if {[onchan $newnick $chanentry]} { 
	set nowon "[string map [array get replace] $black(say.$getlang.seen.10)]"
	set replace(%nowon%) "$nowon"
} else {
	set nowon "[string map [array get replace] $black(say.$getlang.seen.11)]"
	set replace(%nowon%) "$nowon"
}
	set reply "[string map [array get replace] $black(say.$getlang.seen.17)]"
			}
		}
if {[string equal -nocase $prv "prv"]} {
	set text [black:color:set "" $reply]
	blacktools:tell $nick "prv" $hand $chan $nick seen.27 $text
	seenreply:all $nick $uhost $hand $chan $nick $chanentry $first_entry "prv"
} else {
	set text [black:color:set "" $reply]
	blacktools:tell $nick $host $hand $chan $chan1 seen.27 $text
	seenreply:all $nick $uhost $hand $chan $chan1 $chanentry $first_entry ""
}
	}

	
proc seenreply:all {nick host hand chan chan1 chanentry first_entry prv} {
global black username
	set first_entry [join [split $first_entry]]
	set seendirlastmsg $black(seen_details)
	set getlang [string tolower [getuser $hand XTRA OUTPUT_LANG]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
if {[setting:get $chanentry seenlastmsg]} {
	set file [open $seendirlastmsg "r"]
	set database [read -nonewline $file]
	close $file
	set data [split $database "\n"]
	
if {$database != ""} {
	set test_reply [lsearch -all [string tolower $data] [string tolower "* $chanentry * $host *"]]
	if {[llength $test_reply] > 0} {
	set line [lindex $data $test_reply]
	set userentry [lindex [split $line] 2]
	set gettime [lindex [split $line] 4]
	set output [return_time $getlang [expr [unixtime] - $gettime]]
	set replace(%output%) "$output"
	set replace(%userentry%) "$userentry"
	set replace(%chan%) "$chanentry"
	set replace(%host%) "$host"
	set replace(%lastmsg%) [join [lrange [split $line] 5 end]]
	set reply "[string map [array get replace] $black(say.$getlang.seen.32)]"
if {[string equal -nocase $prv "prv"]} {
	set host "$prv"
}
	set text [black:color:set "" $reply]
	blacktools:tell $nick $host $hand $chan $chan1 seen.27 $text
		} else {
	set text2 [black:color:set "" [split $first_entry]]
	blacktools:tell $nick $host $hand $chan $chan1 seen.31 $text2
			}
		}
	}	
}
	
##############
#########################################################################
##   END                                                               ##
#########################################################################
