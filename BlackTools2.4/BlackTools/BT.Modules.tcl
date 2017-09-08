##########################################################
#
#			BLackToolS
#		       Modules  TCL
#							
#				BLaCkShaDoW ProductionS
##########################################################


set black(gag_file) "scripts/BlackTools/FILES/$username.gag.txt"

if {![file exists $black(gag_file)]} {
	set file [open $black(gag_file) w]
	close $file
}

proc check:stats:entries {oldpath newpath} {
	global botnick
if {![file exists $newpath]} {
	set file [open $newpath w]
	close $file
}	
if {[file exists $oldpath]} {
	set file [open $oldpath r]
	set w [read -nonewline $file]
	close $file
if {$w != ""} {
	set data [split $w "\n"]
foreach entry $data {
	set file [open $newpath a]
	puts $file "$entry"
	close $file
}
	set file [open $oldpath w]
	close $file
		}
	}	
}
	set old_stats_dir "$username.stats.db"
	set new_stats_dir "scripts/BlackTools/FILES/$username.stats.txt"
	
	check:stats:entries $old_stats_dir $new_stats_dir
	
proc check:away {oldpath newpath} {
	global black
if {![file exists $newpath]} {
	set file [open $newpath w]
	close $file
}	
if {[file exists $oldpath]} {
	set file [open $oldpath r]
	set w [gets $file]
	close $file
if {$w != ""} {
	set file [open $newpath a]
	puts $file "$w"
	close $file
}
	set file [open $oldpath w]
	close $file		
	}
}	
	set old_away_dir "$username.away.txt"
	set new_away_dir "scripts/BlackTools/FILES/$username.away.txt"
	
	check:away $old_away_dir $new_away_dir

proc check:badchan:entries {chan oldpath newpath} {
	global botnick
if {![file exists $newpath]} {
	set file [open $newpath w]
	close $file
}	
if {[file exists $oldpath]} {
	set file [open $oldpath r]
	set w [read -nonewline $file]
	close $file
if {$w != ""} {
	set data [split $w "\n"]
foreach entry $data {
	set file [open $newpath a]
	puts $file "$chan $entry NONE"
	close $file
}
	set file [open $oldpath w]
	close $file
		}
	}	
}

proc check:module {oldpath newpath} {
	global botnick
if {![file exists $newpath]} {
	set file [open $newpath w]
	close $file
}	
if {[file exists $oldpath]} {
	set file [open $oldpath r]
	set w [read -nonewline $file]
	close $file
if {$w != ""} {
	set data [split $w "\n"]
foreach entry $data {
	set file [open $newpath a]
	puts $file "$entry"
	close $file
}
	set file [open $oldpath w]
	close $file
		}
	}	
}
	set old_status_dir "$username.status.txt"
	set new_status_dir "scripts/BlackTools/FILES/$username.status.txt"
	
	check:module $old_status_dir $new_status_dir

	set old_seen_dir "$username.Seen.db"
	set new_seen_dir "scripts/BlackTools/FILES/$username.Seen.db"
	
	check:module $old_seen_dir $new_seen_dir

proc check:greet:entries {chan oldpath newpath} {
	global botnick
if {![file exists $newpath]} {
	set file [open $newpath w]
	close $file
}	
if {[file exists $oldpath]} {
	set file [open $oldpath r]
	set w [read -nonewline $file]
	close $file
if {$w != ""} {
	set data [split $w "\n"]
foreach entry $data {
	set file [open $newpath a]
	puts $file "$chan 0 $entry"
	close $file
}
	set file [open $oldpath w]
	close $file
		}
	}	
}


proc check:anunt:entries {chan oldpath newpath} {
	global botnick
if {![file exists $newpath]} {
	set file [open $newpath w]
	close $file
}	
if {[file exists $oldpath]} {
	set file [open $oldpath r]
	set w [read -nonewline $file]
	close $file
if {$w != ""} {
	set data [split $w "\n"]
foreach entry $data {
	set file [open $newpath a]
	puts $file "$chan $entry"
	close $file
}
	set file [open $oldpath w]
	close $file
		}
	}	
}

proc check:broadcast:entries {oldpath newpath} {
	global botnick
if {![file exists $newpath]} {
	set file [open $newpath w]
	close $file
}	
if {[file exists $oldpath]} {
	set file [open $oldpath r]
	set w [read -nonewline $file]
	close $file
if {$w != ""} {
	set data [split $w "\n"]
foreach entry $data {
	set file [open $newpath a]
	puts $file "$entry"
	close $file
}
	set file [open $oldpath w]
	close $file
		}
	}	
}
	set old_broadcast_dir "logs/broadcast.txt"
	set new_broadcast_dir "scripts/BlackTools/FILES/$username.autobroadcast.txt"

	check:broadcast:entries $old_broadcast_dir $new_broadcast_dir

foreach chan [join [channels]] {
	set old_greet_dir "logs/greet($chan).txt"
	set new_greet_dir "scripts/BlackTools/FILES/$username.greets.txt"

	set old_leave_dir "logs/leave($chan).txt"
	set new_leave_dir "scripts/BlackTools/FILES/$username.leave.txt"
	
	set old_badchan_dir "logs/badchan($chan).txt"
	set new_badchan_dir "scripts/BlackTools/FILES/$username.badchannels.txt"
	
	set old_anunt_dir "logs/anunt($chan).txt"
	set new_anunt_dir "scripts/BlackTools/FILES/$username.announce.txt"
	
	set old_topic_dir "logs/topic($chan).txt"
	set new_topic_dir "scripts/BlackTools/FILES/$username.topic.txt"
	
	check:greet:entries $chan $old_leave_dir $new_greet_dir
	check:greet:entries $chan $old_leave_dir $new_leave_dir
	check:badchan:entries $chan $old_badchan_dir $new_badchan_dir
	check:anunt:entries $chan $old_anunt_dir $new_anunt_dir
	check:anunt:entries $chan $old_topic_dir $new_topic_dir
}

if {![info exists anuntpublic:show_running]} { 
	timer $black(anunttime) anuntpublic:show	
	set anuntpublic:show_running 1
}

if {![info exists times_topic_running]} { 
	timer $black(topic_time) times_topic
	set times_topic_running 1
}

if {![info exists antibotidle:module_running]} {
	set sdir "scripts/BlackTools/FILES/$username.status.txt"
	set file [open $sdir "r"]
	set database [read -nonewline $file]
	close $file
	set data [split $database "\n"]
if {$data != ""} {
foreach line $data {
	set type [lindex [split $line] 0]
	set stats [lindex [split $line] 1]
if {($type == "antibotidle:module") && ($stats == "ON")} {
	timer $black(noidlemax) antibotidle:module
	set antibotidle:module_running 1
			}
		}
	}
}

if {![info exists broadcastpublic:show_running]} {
	set sdir "scripts/BlackTools/FILES/$username.status.txt"
	set file [open $sdir "r"]
	set database [read -nonewline $file]
	close $file
	set data [split $database "\n"]
if {$data != ""} {
foreach line $data {
	set type [lindex [split $line] 0]
	set stats [lindex [split $line] 1]
if {($type == "broadcastpublic:show") && ($stats == "ON")} {
	timer $black(bttime) broadcastpublic:show
	set broadcastpublic:show_running 1
			}
		}
	}
}

proc blacktools:tell:prv {nick host hand type arg} {
global botnick black
	set char(p) [lindex $black(cmdchar) 0]
if {[string match -nocase "none" "$char(p)"]} {
	set char(p) ""
} 
	set replace(%botnick%) $botnick
	set replace(%char%) $char(p)
	set replace(%msg%) [lrange [split $arg] 0 end]
	set replace(%msg.1%) [lindex [split $arg] 0]
	set replace(%msg.2%) [lindex [split $arg] 1]
	set replace(%msg.3%) [lindex [split $arg] 2]
	set replace(%msg.4%) [lrange [split $arg] 1 end]
	set getlang [string tolower [getuser $hand XTRA OUTPUT_LANG]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
if {[info exists black(say.$getlang.$type)]} {
	set reply [string map [array get replace] $black(say.$getlang.$type)]
	puthelp "PRIVMSG $nick :$reply"
	}
}

proc blacktools:tell {nick host hand chan chan1 type arg} {
global black botnick
	set char(p) [lindex $black(cmdchar) 0]
if {[string match -nocase "none" "$char(p)"]} {
	set char(p) ""
} 
	set replace(%botnick%) $botnick
	set replace(%char%) $char(p)
	set replace(%chan%) $chan
	set replace(%msg%) [join [lrange $arg 0 end]]
	set replace(%msg.set%) [join [lrange [split $arg] 1 end]]
	set replace(%msg.1%) [lindex $arg 0]
	set replace(%msg.2%) [lindex $arg 1]
	set replace(%msg.3%) [lindex $arg 2]
	set replace(%msg.4%) [lindex $arg 3]
	set replace(%msg.5%) [lrange $arg 4 end]
	set replace(%msg.6%) [lrange $arg 3 end]
	set replace(%msg.7%) [lrange $arg 2 end]
	set replace(%msg.8%) [join [lrange $arg 1 end]]
	set getlang [string tolower [getuser $hand XTRA OUTPUT_LANG]]
	set getmethod [getuser $hand XTRA OUTPUT_TYPE]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
if {$getmethod == ""} { set getmethod "1" }
if {[info exists black(say.$getlang.$type)]} {
	set reply [string map [array get replace] $black(say.$getlang.$type)]
if {$getmethod == "1"} {
	putserv "NOTICE $nick :$reply"
} else {
	putserv "PRIVMSG $chan1 :$reply"
		}
	}
}

######################## Flood Protection #######################

proc flood:join:protection {nick host hand chan} {
	global black count
if {[channel get $chan greet] || [channel get $chan count] || [channel get $chan antijoinflood]} {
	set joinflood [channel get $chan joinflood]
if {$joinflood == ""} {set joinflood "4:5"}
	set number [scan $joinflood %\[^:\]]
	set time [scan $joinflood %*\[^:\]:%s]
	
	foreach tmr [utimers] {
if {[string match "*count(flood:join:$chan)*" [join [lindex $tmr 1]]]} {
	killutimer [lindex $tmr 2]
	}
}

if {[info exists black(turnOnFlood:$chan)]} {
	return
}

if {![info exists count(flood:join:$chan)]} { 
	set count(flood:join:$chan) 0 
}
	incr count(flood:join:$chan)
	utimer $time [list remove:flood:join $chan]

if {$count(flood:join:$chan) >= $number} {
	set black(turnOnFlood:$chan) 1
	utimer 60 [list unset black(turnOnFlood:$chan)]
	return
		}
	}	
}

proc remove:flood:join {chan} {
	global count
if {[info exists count(flood:join:$chan)]} {
	unset count(flood:join:$chan)
	}
}

########################### TCL #################################

proc tclpublic {nick host hand chan arg} {
	global black
	set type 0
	set chan1 "$chan"
	set the_script [lindex [split $arg] 1]
	set who [lindex [split $arg] 0]
	tcl:process $nick $host $hand $chan $chan1 $type $the_script $who
}

proc tcl:process {nick host hand chan chan1 type the_script who} {
	global black
	
if {($who == "") && ($type == "0")} {
	blacktools:tell $nick $host $hand $chan $chan1 tcl.15 none
	return
}
if {($who == "") && ($type == "1")} {
	blacktools:tell $nick $host $hand $chan $chan1 tcl.16 none
	return
}	

switch $who {

	list {
	
	set scripts ""	
	set file [open "$black(configname)" r]
	set w [read -nonewline $file]
	close $file
	set data [split $w "\n"]
foreach line $data {
if {[string match -nocase "source $black(dirname)/*" $line]} {
	set the_split [split $line "/"]
	set the_script [lindex $the_split 1]
	lappend	scripts $the_script
		}	
	}
	blacktools:tell $nick $host $hand $chan $chan1 tcl.1 none
	foreach txt [wordwrap [join $scripts ", "] 250 ,] {
	blacktools:tell $nick $host $hand $chan $chan1 tcl.17 $txt
	}
}
	
load {
if {$the_script == ""} {
	blacktools:tell $nick $host $hand $chan $chan1 tcl.2 none
	return
}
	set black(tcl_load) [catch {source "$black(dirname)/$the_script"} black(tcl_load_error)]
	
	if {$black(tcl_load) == "1"} {
	blacktools:tell $nick $host $hand $chan $chan1 tcl.3 "$the_script [split $black(tcl_load_error)]"
	return
}
	set file [open "$black(configname)" r]
	set w [read -nonewline $file]
	close $file
	set counter -1
	set data [split $w "\n"]
	set tcl_position -1
	set found_it 0
foreach line $data {
if {[string match -nocase "source $black(dirname)/*" $line]} {
	set the_split [split $line "/"]
	set script [lindex $the_split 1]
if {[string equal -nocase $script $the_script]} {
	set found_it 1
		}		
	}
}

if {$found_it == 1} {
	blacktools:tell $nick $host $hand $chan $chan1 tcl.4 $the_script
	return
}

	set file [open "$black(configname)" a]
	puts $file "source $black(dirname)/$the_script"
	close $file
	rehash
	blacktools:tell $nick $host $hand $chan $chan1 tcl.5 $the_script

}
unload {
if {$the_script == ""} {
	blacktools:tell $nick $host $hand $chan $chan1 tcl.6 $the_script
	return
}
if {[string match "*BlackTools*" $the_script]} {
	blacktools:tell $nick $host $hand $chan $chan1 tcl.18 none
	return
}

	set file [open "$black(configname)" r]
	set w [read -nonewline $file]
	close $file
	set counter -1
	set data [split $w "\n"]
	set tcl_position -1
	set found_it 0
foreach line $data {
	set counter [expr $counter + 1]
if {[string match -nocase "*source $black(dirname)/*" $line]} {
	set the_split [split $line "/"]
	set script [lindex $the_split 1]
if {[string equal -nocase $script $the_script]} {
	set found_it 1
	set tcl_position $counter
			}	
		}
	}
if {$found_it == 0} {
	blacktools:tell $nick $host $hand $chan $chan1 tcl.7 $the_script
	return
}

	set delete [lreplace $data $tcl_position $tcl_position]
	set file [open "$black(configname)" "w"] 
	puts $file [join $delete "\n"]
	close $file
	rehash
	blacktools:tell $nick $host $hand $chan $chan1 tcl.8 $the_script
}

all {
	set the_files [glob -directory $black(dirname) "*.tcl"]
	set counter 0
	set current_tcl ""
	
foreach file $the_files {
	set counter [expr $counter + 1]
}	

if {$counter > 30} {
	blacktools:tell $nick $host $hand $chan $chan1 tcl.9 $counter
	} else { 	blacktools:tell $nick $host $hand $chan $chan1 tcl.10 $counter			
}
	set counter 0
foreach file $the_files {
	set counter [expr $counter + 1]
	set split_file [split $file "/"]
	set the_file [lindex $split_file 1]
	set status [check:if:load $the_file]
if {$counter < 30} {
	if {$status == "1"} {
			lappend current_tcl "\002$the_file\002"
	} else {
			lappend current_tcl $the_file
	}
}
		}
foreach txt [wordwrap [join $current_tcl ", "] 250 ,] {
	blacktools:tell $nick $host $hand $chan $chan1 tcl.17 $txt
		}
	}
info {
if {$the_script == ""} {
	blacktools:tell $nick $host $hand $chan $chan1 tcl.11 none
	return
}
	set status_valid [check:if:valid $the_script]
	set status [check:if:load $the_script]
if {$status_valid == "0"} {
	blacktools:tell $nick $host $hand $chan $chan1 tcl.12 $the_script
	return
	}
if {$status == "0"} {
	blacktools:tell $nick $host $hand $chan $chan1 tcl.13 $the_script
} else {
	blacktools:tell $nick $host $hand $chan $chan1 tcl.14 $the_script
			}
		}
default {
	blacktools:tell $nick $host $hand $chan $chan1 tcl.15 none
}
	}
	
}

proc check:if:valid {tcl} {
	global black
	set the_files [glob -directory $black(dirname) "*.tcl"]
	foreach file $the_files {
	set split_file [split $file "/"]
	set the_file [lindex $split_file 1]
if {[string equal -nocase $tcl $the_file]} {
	return 1
	}
}
	return 0
}

proc check:if:load {tcl} {
	global black
	set file [open "$black(configname)" r]
	set w [read -nonewline $file]
	close $file
	set data [split $w "\n"]
	set found_it 0
foreach line $data {
if {[string match -nocase "source $black(dirname)/*" $line]} {
	set the_split [split $line "/"]
	set script [lindex $the_split 1]
if {[string equal -nocase $script $tcl]} {
	set found_it 1
			}	
		}
	}
if {$found_it == 1} {
	return 1
} else {
	return 0
}

}

########################## Login ###############################

proc loginpublic {my} {
   global botnick black
if {[info exists black(logged)]} {
	unset black(logged)
}

if {[info exists black(notlogged)]} {
	unset black(notlogged)
}
	putquick "$black(login)"   
    putquick "MODE $botnick :$black(xmod)"
}


proc publiclogin:Cmd {nick host hand chan arg} {
global botnick black
	putquick "$black(login)"
	putquick "MODE $botnick :$black(xmod)"
	blacktools:tell:prv $nick $host $hand login.1 $black(chanserv)
}

################################# reban ################################

proc rebanpublic {nick host hand chan} {
global black
if {[channel get $chan xban]} {
	set host "$nick![getchanhost $nick $chan]"
	set getxtime [channel get $chan xbantime]
	set getxlevel [channel get $chan xbanlevel]
if {$getxlevel == "0"} { set getxlevel "100" } 
if {$getxtime == "0"} { set getxtime "1" }
foreach ban [banlist $chan] {
	set reason [lindex $ban 1]
if {[string match -nocase [string tolower [lindex $ban 0]] $host]} {
	putquick "PRIVMSG $black(chanserv) :ban $chan [lindex $ban 0] $getxtime $getxlevel $reason"
			}
		}
	}
}

################################# XTOOLS ################################

proc toolspublic {chan type} {
global botnick black
if {![channel get $chan xtools]} {
	return
}
if {$type == "op"} {
if  {![onchan "$black(chanserv)" $chan] && ![botisop $chan]} {
	return
}
	putquick "PRIVMSG $black(chanserv) :unban $chan $botnick"
	putquick "PRIVMSG $black(chanserv) :op $chan $botnick"
	return
}
if {$type == "unban"} {
	putquick "PRIVMSG $black(chanserv) :unban $chan $botnick"
	return
}
if {$type == "invite" || $type == "limit"} {
	putquick "PRIVMSG $black(chanserv) :invite $chan $botnick"
	return
	}
if {$type == "key"} {
	putquick "PRIVMSG $black(chanserv) :invite $chan $botnick"
	return
	}
}

################################# Key Need ######################################

proc keyneed {chan type} {
	global black
if {![validchan $chan]} {
	return
}
if {$type == "key"} {
if {![regexp {k} [channel get $chan chanmode]]} {
	return	
} else {
	set the_key [lindex [split [channel get $chan chanmode]] 1]
if {$the_key == ""} { return }
	putserv "JOIN $chan :$the_key"
		}
	}
}

################################# Clone Scan ###################################

proc scannerpublic {nick host hand chan arg} {
global black count
	set c [lindex [split $arg] 0]
	set type 0
	set chan1 "$chan"
if {[regexp {^[&#]} $c] && [matchattr $hand nm|- $chan]} {
	set chan "$c"
}
	scanner:process $nick $host $hand $chan $chan1
}

proc scanner:process {nick host hand chan chan1} {
global botnick black
	array set clones [list]
if {![validchan $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.novalidchan none
	return
}
if {![onchan $botnick $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.notonchan none
	return
}
	blacktools:tell $nick $host $hand $chan $chan1 clonescan.4 none
	
if {[channel get $chan clonescan-maxclone] == 0} {
	set maxclone $black(maxclone)
} else { set maxclone [channel get $chan clonescan-maxclone] }
	
if {!($maxclone >= "2")} { return }
	
foreach user [chanlist $chan] {
	set host [string tolower [lindex [split [getchanhost $user $chan] @] 1]]
if {![string match "*.undernet.org*" $host]} {

if {![info exists c($host:$chan)]} {
	set c($host:$chan) 0
}
	set c($host:$chan) [expr $c($host:$chan) +1]
	lappend clones($user) $host
if {$c($host:$chan) >= $maxclone} {
foreach clon [lsort -unique [array names clones]] {
	set hosts [string tolower [lindex [split [getchanhost $clon $chan] @] 1]]
if {$host == $hosts} {
	lappend clona($host) [join $clon " , "]
	}	 
}
	blacktools:tell $nick $host $hand $chan $chan1 clonescan.1 "$c($host:$chan) $host [lsort -unique $clona($host)]"
}
		}
	}
	utimer 3 [list blacktools:tell $nick $host $hand $chan $chan1 clonescan.2 none]
}

proc clonescanner {minute hour day month year} {
global black botnick
foreach chan [channels] {
	set replace(%chan%) $chan
if {[channel get $chan clonescan]} {
	set getlang [string tolower [channel get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
if {[channel get $chan clonescan-maxclone] == 0} {
	set maxclone $black(maxclone)
} else { set maxclone [channel get $chan clonescan-maxclone] }

if {$maxclone < "2"} { return }

	putlog "Scaning for clones on $chan.."
foreach user [chanlist $chan] {
	set host [string tolower [lindex [split [getchanhost $user $chan] @] 1]]
	set replace(%host%) $host
if {![info exists c($host:$chan)]} {
	set c($host:$chan) 0
}
	array set clones [list]
if {![string match "*.undernet.org*" $host]} {
	set c($host:$chan) [expr $c($host:$chan) +1]
	lappend clones($user) $host
if {$c($host:$chan) >= $maxclone} {
foreach clon [array names clones] {
	set hosts [string tolower [lindex [split [getchanhost $clon $chan] @] 1]]
if {$host == $hosts} {
	lappend clona($host) [join $clon " , "]
	} 
}
set replace(%num%) $c($host:$chan)
set replace(%clone%) [lsort -unique $clona($host)]
if {[channel get $chan clonescan-action] == "" || [string equal -nocase [channel get $chan clonescan-action] "message"]} { 
	putserv "NOTICE @$chan :[string map [array get replace] $black(say.$getlang.clonescan.3)]"
} else {
	set banmask "*!*@$host"
if {[channel get $chan clonescan-bantime] == 0} {
	set bantime $black(clonebtime)
} else { set bantime [channel get $chan clonescan-bantime] }

	set reason [channel get $chan clonescan-banreason]
if {$reason == ""} {
	set reason [string map [array get replace] [string map [array get replace] $black(say.$getlang.clonescan.5)]]
}
	blacktools:banner:2 $banmask $botnick $chan $reason $bantime
						}
					}
				}
			}
		}
	}
}

################################### gag ###############################

proc gag:process {gagger time reason nick hand host chan chan1 type} {
global botnick black
	set char(p) [lindex $black(cmdchar) 0]
if {[string match -nocase "none" "$char(p)"]} {
	set char(p) ""
} 
	set handle [nick2hand $gagger]
if {![validchan $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.novalidchan none
	return
}
if {![onchan $botnick $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.notonchan none
	return
}
if {[matchattr $hand -|q $chan]} { blacktools:tell $nick $host $hand $chan $chan1 gl.suspend none
	return
}

if {[matchattr $hand nm|- $chan]} {
if {($gagger == "") && ($type == "0")} {
	blacktools:tell $nick $host $hand $chan $chan1 gag.1 none
	return
}
if {($gagger == "") && ($type == "1")} {
	blacktools:tell $nick $host $hand $chan $chan1 gag.2 none
	return
	}
}
if {($gagger == "") && ($type == "0")} {
	blacktools:tell $nick $host $hand $chan $chan1 gag.3 none
	return
}
if {($gagger == "") && ($type == "1")} {
	blacktools:tell $nick $host $hand $chan $chan1 gag.4 none
	return
}

if {[matchattr $handle $black(exceptflags) $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.noban none
	return
}

if {[string equal -nocase $gagger "-list"]} {
	set counter "0"
	set file [open $black(gag_file) "r"]
	set database [read -nonewline $file]
	close $file
	set data [split $database "\n"]
	
if {$database == ""} {
	blacktools:tell $nick $host $hand $chan $chan1 gag.7 none
	blacktools:tell $nick $host $hand $chan $chan1 gag.8 none
	return
}
foreach line $data {
	set counter [expr $counter +1]
	set hostentry [lindex  [split $line] 1]
	set chanentry [lindex [split $line] 0]
	set timeentry [lindex  [split $line] 2]
	set reason [join [lrange [split $line] 3 end]]
	blacktools:tell $nick $host $hand $chan $chan1 gag.7 none
	blacktools:tell $nick $host $hand $chan $chan1 gag.9 "$counter $hostentry [duration [expr $timeentry - [unixtime]]]"
	blacktools:tell $nick $host $hand $chan $chan1 gag.14 "$reason"
	}
	return
}

if {[isbotnick $gagger]} {
	return
}

if {![botisop $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.noop none
	return
}

if {$reason == ""} {
	set reason [channel get $chan gag-reason]
if {$reason == ""} {
	set getlang [string tolower [channel get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
	set reason $black(say.$getlang.gag.6)
	} 
}

if {[isvoice $gagger $chan]} {
	putquick "MODE $chan -v $gagger"
}

if {[isop $gagger $chan]} {
	blacktools:tell $gagger $host $hand $chan $chan1 gag.12 "$gagger"
	return
}

if {[onchan $gagger $chan]} {
    set mask *!*@[lindex [split [getchanhost $gagger $chan] "@"] 1] 
} else { blacktools:tell $nick $host $hand $chan $chan1 gl.usernotonchan "$gagger"
	return
}
	set getlang [string tolower [channel get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
	
	set replace(%chan%) $chan
	set replace(%time%) $time
	set replace(%gagger%) $gagger
	set gag_user_message [string map [array get replace] $black(say.$getlang.gag.10)]
	set gag_chan_message [string map [array get replace] $black(say.$getlang.gag.11)]
	
	putquick "PRIVMSG $chan :$gag_chan_message"
	putquick "PRIVMSG $gagger :$gag_user_message"
	putquick "MODE $chan +b $mask"
	
	set seconds [expr $time * 60]
	set gag_time "[expr [unixtime] + $seconds]"
	set gag_act "$chan $mask $gag_time $reason"
	set counter "0"
	set file [open $black(gag_file) "r"]
	set database [read -nonewline $file]
	close $file
	set data [split $database "\n"]
	
foreach line $data {
	set counter [expr $counter +1]
	set hostentry [lindex  [split $line] 1]
	set chanentry [lindex [split $line] 0]
	set timeentry [lindex  [split $line] 2]
if {[string match -nocase $mask $hostentry] && [string match -nocase $chanentry $chan]} {
	blacktools:tell $gagger $host $hand $chan $chan1 gag.13 "$gagger $mask"
if {$line != ""} {
	set counter [expr $counter -1]
	set delete [lreplace $data $counter $counter]
	set files [open $black(gag_file) "w"]
	puts $files [join $delete "\n"]
	close $files
		}
	}
}
	set file [open $black(gag_file) "r"]
	set data [read -nonewline $file]
	close $file
if {$data == ""} {
	set files [open $black(gag_file) "w"]
	close $files
}
	set file [open $black(gag_file) "a"]
	puts $file "$gag_act"
	close $file
}

proc gagpublic {nick host hand chan arg} {
global black
	set gagger [lindex [split $arg] 0]
	set time [lindex [split $arg] 1]
	set reason [lrange [split $arg] 2 end]
	set type 0
	set handle [nick2hand $gagger]
	set chan1 "$chan"
foreach c [channels] {
	set backchan [channel get $c backchan]
if {[string match -nocase $chan $backchan] && [channel get $c chanreport]} {
	set chan "$c"
	}
}
if {[regexp {^[&#]} $gagger] && [matchattr $hand nm|- $chan]} {
	set chan "$gagger"
	set gagger [lindex [split $arg] 1]
	set time [lindex [split $arg] 2]
	set reason [lrange [split $arg] 3 end]
}

if {![regexp {^[0-9]} $time]} {
	set reason [lrange [split $arg] 2 end]
	set time [channel get $chan gag-time]
if {$time == "0"} {
	set time $black(gag_time)
	}
}
	set split_text [split $gagger ","]
if {$split_text != ""} {
foreach txt $split_text {
	gag:process $txt $time $reason $nick $hand $host $chan $chan1 $type
		}
	} else { gag:process $gagger $time $reason $nick $hand $host $chan $chan1 $type }
}

################################# ungag ###############################

proc ungagpublic {nick host hand chan arg} {
global black
	set gagger [lindex [split $arg] 0]
	set type 0
	set chan1 "$chan"
foreach c [channels] {
	set backchan [channel get $c backchan]
if {[string match -nocase $chan $backchan] && [channel get $c chanreport]} {
	set chan "$c"
	}
}
if {[regexp {^[&#]} $gagger] && [matchattr $hand nm|- $chan]} {
	set chan "$gagger"
	set gagger [lindex [split $arg] 1]
}
	set split_text [split $gagger ","]
if {$split_text != ""} {
foreach txt $split_text {
	ungag:process $txt $nick $hand $host $chan $chan1 $type
		}
	} else { ungag:process $gagger $nick $hand $host $chan $chan1 $type }
}

proc ungag:process {gagger nick hand host chan chan1 type} {
	global black
if {![validchan $chan]} {
	return
}
	if {[matchattr $hand nm|- $chan]} {
if {($gagger == "") && ($type == "0")} {
	blacktools:tell $nick $host $hand $chan $chan1 ungag.1 none
	return
}
if {($gagger == "") && ($type == "1")} {
	blacktools:tell $nick $host $hand $chan $chan1 ungag.2 none
	return
	}
}
if {($gagger == "") && ($type == "0")} {
	blacktools:tell $nick $host $hand $chan $chan1 ungag.3 none
	return
}
if {($gagger == "") && ($type == "1")} {
	blacktools:tell $nick $host $hand $chan $chan1 ungag.4 none
	return
}

if {[onchan $gagger $chan]} {
	set mask *!*@[lindex [split [getchanhost $gagger $chan] "@"] 1]
} else {
	set mask $gagger
}

	set counter 0
	set file [open $black(gag_file) "r"]
	set database [read -nonewline $file]
	close $file
	set data [split $database "\n"]
foreach line $data {
	set counter [expr $counter + 1]
	set chanentry [lindex [split $line] 0]
	set hostentry [lindex $line 1]
if {[string match -nocase $hostentry $mask] && [string match -nocase $chanentry $chan]} {
	set found_gag 1
if {$line != ""} {
	set counter [expr $counter - 1]
	set delete [lreplace $data $counter $counter]
	set files [open $black(gag_file) "w"]
	puts $files [join $delete "\n"]
	close $files
		}
	}
}	
	set file [open $black(gag_file) "r"]
	set data [read -nonewline $file]
	close $file	
	if {$data == ""} {
	set files [open $black(gag_file) "w"]
	close $files
}

if {![info exists found_gag]} {
	blacktools:tell $nick $host $hand $chan $chan1 ungag.5 $mask
	return
} else {
	blacktools:tell $nick $host $hand $chan $chan1 ungag.6 $mask
	putquick "MODE $chan -b $mask"
	foreach user [chanlist $chan] {
	set the_mask *!*@[lindex [split [getchanhost $user $chan] "@"] 1]
	if {[string match -nocase $the_mask $mask]} {
	set found_one 1
	lappend object_found "$user" 
		}
	}
if {[info exists found_one]} {
	
	set getlang [string tolower [channel get $chan lang]]
	if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }

	set replace(%chan%) $chan
	set replace(%gagger%) $object_found
	set ungag_user_message [string map [array get replace] $black(say.$getlang.ungag.7)]
	set ungag_chan_message [string map [array get replace] $black(say.$getlang.ungag.8)]

	puthelp "PRIVMSG $gagger :$ungag_user_message"
	puthelp "PRIVMSG $chan :$ungag_chan_message"
		}
	}
}

proc gag:reban {nick host hand chan args} {
global black
	set bans [lindex $args 1]
if {![botisop $chan]} { return }
	set file [open $black(gag_file) "r"]
	set database [read -nonewline $file]
	close $file
	set data [split $database "\n"]
foreach line $data {
	set chanentry [lindex [split $line] 0]
	set hostentry [lindex [split $line] 1]
if {[string match -nocase $bans $hostentry] && [string match -nocase $chanentry $chan]} {
	putserv "MODE $chan +b $bans"
		}
	}
}
 
proc gag:autounban {minute hour day month year} {
global black
	set counter "0"
	set file [open $black(gag_file) "r"]
	set database [read -nonewline $file]
	close $file
	set data [split $database "\n"]
foreach line $data {
	set time_show [lindex  [split $line] 2]
if {[duration [expr $time_show - [unixtime]]] == "0 seconds"} {
	lappend gag_list $time_show	
	}
}
if {[info exists gag_list]} {
	gag:autounban:check $gag_list
	}
}

proc gag:autounban:check {list} {
global black
	set list [join $list]
foreach tm $list {
if {$tm != ""} {
	set file [open $black(gag_file) "r"]
	set database [read -nonewline $file]
	close $file
	set data [split $database "\n"]
	set i [lsearch -glob $data "* $tm *"]
if {$i > -1} {
	set line [lindex $data $i]
	set mask [lindex [split $line] 1]
	set chan [lindex [split $line] 0]
	set delete [lreplace $data $i $i]
	set file [open $black(gag_file) "w"] 
	puts $file [join $delete "\n"]
	close $file	
				}
		}
	pushmode $chan -b $mask
foreach user [chanlist $chan] {
	set the_mask *!*@[lindex [split [getchanhost $user $chan] "@"] 1]
	if {[string match -nocase $the_mask $mask]} {
	set found_one 1
	lappend object_found "$user" 
		}
	}
}
if {[info exists found_one]} {
	set getlang [string tolower [channel get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
	
	set replace(%chan%) $chan
	set replace(%gagger%) [join $object_found ", "]
	set ungag_chan_message [string map [array get replace] $black(say.$getlang.ungag.8)]
	puthelp "PRIVMSG $chan :$ungag_chan_message"
}
	set file [open $black(gag_file) "r"]
	set data [read -nonewline $file]
	close $file
if {$data == ""} {	
	set files [open $black(gag_file) "w"]
	close $files
	}
}


############################# Topic refresh #########################

proc refreshpublic {nick host hand chan arg} {
global botnick black
	set thetopic [topic $chan]
	puthelp "TOPIC $chan :$black(topics)"
	puthelp "TOPIC $chan :$thetopic"
}

proc times_topic {} {
 global black
foreach chan [channels] {
if {[channel get $chan topicrefresh] } {
	set thetopic [topic $chan]
   puthelp "TOPIC $chan :$black(topics)"
   puthelp "TOPIC $chan :$thetopic"
	}
}
	timer $black(topic_time) times_topic
	return 1
}

################################ count ####################################

proc countpublic {nick host hand chan arg} {
global black
	set type 0
	set chan1 "$chan"
	set why [lindex [split $arg] 0]
if {[regexp {^[&#]} $why] && [matchattr $hand nm|M $why]} {
	set chan "$why"
	set why [lindex [split $arg] 1]
}
	count:process $nick $host $hand $chan $chan1 $why $type
}

proc count:process {nick host hand chan chan1 why type} {
global botnick black
	set char(p) [lindex $black(cmdchar) 0]
if {[string match -nocase "none" "$char(p)"]} {
	set char(p) ""
} 

if {($why == "") && ($type == "0")} {
	blacktools:tell $nick $host $hand $chan $chan1 count.1 none
	return
}
if {($why == "") && ($type == "1")} {
	blacktools:tell $nick $host $hand $chan $chan1 count.2 none
	return
}
if {![validchan $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.novalidchan none
	return
}
if {![onchan $botnick $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.notonchan none
	return
}

switch $why {

on {
if {[channel get $chan count]} {
	blacktools:tell $nick $host $hand $chan $chan1 count.3 none
	return
}
	channel set $chan +count
	channel set $chan count-date [clock format [unixtime] -format "%m/%d/%Y"]
	blacktools:tell $nick $host $hand $chan $chan1 count.5 none
}

off {
if {![channel get $chan count]} {
	blacktools:tell $nick $host $hand $chan $chan1 count.4 none
	return
}
	channel set $chan -count
	channel set $chan count-date ""
	blacktools:tell $nick $host $hand $chan $chan1 count.6 none
}

display {
	set stats [channel get $chan countnumber]
	blacktools:tell $nick $host $hand $chan $chan1 count.7 $stats
}

reset {
	channel set $chan countnumber 0
	channel set $chan count-date ""
	blacktools:tell $nick $host $hand $chan $chan1 count.8 none
		}
	} 
}

proc countpublic:join {nick host hand chan} {
global black
if {![validchan $chan]} { return }
if {[isbotnick $nick]} { return }
if {[channel get $chan count]} {

if {[info exists black(turnOnFlood:$chan)]} {
	return
}

if {[channel get $chan count-date] == ""} {
	channel set $chan count-date [clock format [unixtime] -format "%m/%d/%Y"]
}
	set stats [channel get $chan countnumber]
	set stats [expr $stats +1]
	channel set $chan countnumber $stats
	set replace(%num%) $stats
	set replace(%chan%) $chan
	set replace(%time%) [channel get $chan count-date]
	set countmessage [channel get $chan count-message]
if {$countmessage == ""} { 
	set getlang [string tolower [channel get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
	set countmessage  $black(say.$getlang.count.9)
}
	putquick "NOTICE $nick :[string map [array get replace] $countmessage]"
	}
}


############################### Private ##########################

proc privatepublic {nick host hand chan arg} {
global black
	set type 0
	set chan1 "$chan"
	set why [lindex [split $arg] 0]
	set user [lindex [split $arg] 1]
	set host [lindex [split $arg] 2]
if {[regexp {^[&#]} $why] && [matchattr $hand nm|- $chan]} {
	set chan "$why"
	set why [lindex [split $arg] 1]
	set user [lindex [split $arg] 2]
	set host [lindex [split $arg] 3]
}
	private:process $nick $host $hand $chan $chan1 $why $user $host $type
}

proc private:process {nick host hand chan chan1 why user host type} {
global botnick black
	set char(p) [lindex $black(cmdchar) 0]
if {[string match -nocase "none" "$char(p)"]} {
	set char(p) ""
} 
	set flags "-|f"
if {[matchattr $hand nm|- $chan]} {
if {($why == "") && ($type == "0")} {
	blacktools:tell $nick $host $hand $chan $chan1 private.1 none
	return
}
if {($why == "") && ($type == "1")} {
	blacktools:tell $nick $host $hand $chan $chan1 private.2 none
	return
	}
}
if {($why == "") && ($type == "0")} {
	blacktools:tell $nick $host $hand $chan $chan1 private.3 none
	return
}
if {($why == "") && ($type == "1")} {
	blacktools:tell $nick $host $hand $chan $chan1 private.4 none
	return
}
if {![validchan $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.novalidchan none
	return
}
if {![onchan $botnick $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.notonchan none
	return
}

if {([regexp -nocase -- {(#[0-9]+|on|off|add|list|del)} $why tmp privat]) && (![regexp -nocase -- {\S#} $why])} {
    switch $privat {
on {
    channel set $chan +private
	blacktools:tell $nick $host $hand $chan $chan1 private.5 none
}

off {
    channel set $chan -private
	blacktools:tell $nick $host $hand $chan $chan1 private.6 none
}

add {

if {[validuser $user]} { 
	chattr $user $flags $chan
	blacktools:tell $nick $host $hand $chan $chan1 private.7 $user
	return
}	
	adduser $user $host
	chattr $user $flags $chan
	blacktools:tell $nick $host $hand $chan $chan1 private.8 "$user $host"
}


del {

if {[validuser $user]} {
	chattr $user -|-f $chan
	blacktools:tell $nick $host $hand $chan $chan1 private.9 $user
} else { blacktools:tell $nick $host $hand $chan $chan1 private.10 $user
	return
	}
}

list {
	set list [userlist $flags $chan]
	blacktools:tell $nick $host $hand $chan $chan1 private.11 $list
			}
		}
	}
}

proc private:module {nick host hand chan} {
global black botnick
	set getreason [channel get $chan private-reason]
if {$getreason == ""} { 
	set getlang [string tolower [channel get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
	set getreason $black(say.$getlang.private.12)
}
	set getbantime [channel get $chan private-bantime]
if {$getbantime == "0"} { set getbantime $black(privatebantime) }
	set handle [nick2hand $nick]
	set mask "*!*@[lindex [split $host @] 1]"
if {[channel get $chan private]} {
if {[matchattr $handle nm|oMASOVf $chan]} { 
	return 
}
	newchanban $chan $mask $botnick $getreason $getbantime
	}
}


############################### BadChan ###########################

proc badchanpublic {nick host hand chan arg} {
global black
	set why [lindex [split $arg] 0]
	set type1 0
	set chan1 "$chan"
	set bdchan [join [lindex [split $arg] 1]]
	set type [lindex [split $arg] 2]
	set reason [join [lrange [split $arg] 2 end]]
if {[string equal -nocase $why "list"] || [string equal -nocase $why "status"]} {
	set type [lindex [split $arg] 1]
}
if {[string equal -nocase $type "-global"]} {
	set reason [join [lrange [split $arg] 3 end]]
}
if {[regexp {^[&#]} $why] && [matchattr $hand nm|M $why]} {
	set chan "$why"
	set why [lindex [split $arg] 1]
	set bdchan [join [lindex [split $arg] 2]]
	set type [lindex [split $arg] 3]
	set reason [join [lrange [split $arg] 3 end]]

if {[string equal -nocase $why "list"] || [string equal -nocase $why "status"]} {
	set type [lindex [split $arg] 3]
}

if {[string equal -nocase $type "-global"]} {
	set reason [join [lrange [split $arg] 4 end]]
	}
}
	badchan:process $nick $host $hand $chan $chan1 $why $bdchan $type $type1 $reason
}

proc badchan:process {nick host hand chan chan1 why bdchan type type1 reason} {
	global botnick black username
	set dir "scripts/BlackTools/FILES/$username.badchannels.txt"
	set local ""

	set char(p) [lindex $black(cmdchar) 0]
	
if {[matchattr $hand nm|- $chan]} {
if {($why == "") && ($type == "0")} {
	blacktools:tell $nick $host $hand $chan $chan1 badchan.3 none
	return
}
if {($why == "") && ($type == "1")} {
	blacktools:tell $nick $host $hand $chan $chan1 badchan.4 none
	return
	}
}
if {($why == "") && ($type == "0")} {
	blacktools:tell $nick $host $hand $chan $chan1 badchan.1 none
	return
}
if {($why == "") && ($type == "1")} {
	blacktools:tell $nick $host $hand $chan $chan1 badchan.2 none
	return
}
if {![validchan $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.novalidchan none
return
}
if {![onchan $botnick $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.notonchan none
	return
}
	
if {[string match -nocase "none" "$char(p)"]} {
	set char(p) ""
} 	

    switch $why {

	on {

if {[channel get $chan antibadchan]}  {
	blacktools:tell $nick $host $hand $chan $chan1 badchan.5  none
	return
}
	channel set $chan +antibadchan
	blacktools:tell $nick $host $hand $chan $chan1 badchan.6  none
}

off {

if {![channel get $chan antibadchan]} {
	blacktools:tell $nick $host $hand $chan $chan1 badchan.7  none
	return
}
	channel set $chan -antibadchan
	blacktools:tell $nick $host $hand $chan $chan1 badchan.8  none
}

add {

if {$bdchan == ""} { 
if {[matchattr $hand mn]} {	
	blacktools:tell $nick $host $hand $chan $chan1 badchan.9  none
	return
} else {
	blacktools:tell $nick $host $hand $chan $chan1 badchan.10  none
	return
	}
}

if {$reason == ""} {
	set reason "NONE"
}

if {[matchattr $hand mn] && [string equal -nocase $type "-global"]} {		
	set file [open $dir a]
	puts $file "GLOBAL $bdchan $reason"
	close $file
	set local "Global-List"
} else {
	set file [open $dir a]
	puts $file "$chan $bdchan $reason"
	close $file
	set local "Local-List"
}

if {$reason == "NONE"} {
	blacktools:tell $nick $host $hand $chan $chan1 badchan.11  "$local $bdchan $reason"
} else {
	blacktools:tell $nick $host $hand $chan $chan1 badchan.12  "$local $bdchan $reason"
	}
}

list {
	set file [open $dir "r"]
	set check_global 0
	set found_it 0
	set w [read -nonewline $file]
	close $file
	set data [split $w "\n"]
	set counter 0
if {$data == ""} {
	blacktools:tell $nick $host $hand $chan $chan1 badchan.13 none
	return
}
if {[matchattr $hand mn] && [string equal -nocase $type "-global"]} {
	set check_global 1
}
	blacktools:tell $nick $host $hand $chan $chan1 badchan.14 none
foreach line $data {
	set mainchan [lindex [split $line] 0]
	set badchan [lindex [split $line] 1]
	set reason [join [lrange [split $line] 2 end]]
if {$check_global == 1} {
if {[string equal -nocase $mainchan "GLOBAL"]} {
	set counter [expr $counter +1]
	set found_it 1
if {$reason == "NONE"} {
	blacktools:tell $nick $host $hand $chan $chan1 badchan.15 "$counter $badchan"
} else {
	blacktools:tell $nick $host $hand $chan $chan1 badchan.16 "$counter $badchan $reason"
		}
	}
} else {

if {[string equal -nocase $mainchan $chan]} {
	set found_it 1
	set counter [expr $counter +1]
if {$reason == "NONE"} {
	blacktools:tell $nick $host $hand $chan $chan1 badchan.17 "$counter $badchan"
} else {
	blacktools:tell $nick $host $hand $chan $chan1 badchan.18 "$counter $badchan $reason"
			}
		}
	}
}

if {$found_it == 0} {
	blacktools:tell $nick $host $hand $chan $chan1 badchan.19 none
	}

}

del {
	set check_global 0
	set found_it 0
	set line_count 0
	
if {$bdchan == ""} { 
if {[matchattr $hand mn]} {	
	blacktools:tell $nick $host $hand $chan $chan1 badchan.20 none
	return
} else {
	blacktools:tell $nick $host $hand $chan $chan1 badchan.21 none
	return
	}
}

if {[matchattr $hand mn] && [string equal -nocase $type "-global"]} {
	set check_global 1
}
	set file [open $dir "r"]
	set data [read -nonewline $file]
	close $file
	set lines [split $data "\n"]
foreach line $lines {
	set line_count [expr $line_count + 1]
	set mainchan [lindex [split $line] 0]
	set badchan [lindex [split $line] 1]
if {$check_global == 1} {
if {[string equal -nocase $mainchan "GLOBAL"] && [string equal -nocase $badchan $bdchan]} {
	set found_it 1
	blacktools:tell $nick $host $hand $chan $chan1 badchan.22 "$badchan"
if {$line != ""} {
	set line_count [expr $line_count - 1]
	set delete [lreplace $lines $line_count $line_count]
	set files [open $dir "w"]
	puts $files [join $delete "\n"]
	close $files
		}
	}
	
} else {

if {[string equal -nocase $mainchan $chan] && [string equal -nocase $badchan $bdchan]} {
	set found_it 1
if {$line != ""} {
	set line_count [expr $line_count - 1]
	set delete [lreplace $lines $line_count $line_count]
	set files [open $dir "w"]
	puts $files [join $delete "\n"]
	close $files
			}	
	blacktools:tell $nick $host $hand $chan $chan1 badchan.23 "$badchan"
		}
	}
}
if {$found_it == 0} {
	blacktools:tell $nick $host $hand $chan $chan1 badchan.24 none
	}
}

find {
	set found_it 0
	set counter 0
	set check_global 0
	
if {$bdchan == ""} { 
if {[matchattr $hand mn]} {	
	blacktools:tell $nick $host $hand $chan $chan1 badchan.25 none
	return
} else {
	blacktools:tell $nick $host $hand $chan $chan1 badchan.26 none
	return
	}
}	
	
if {[matchattr $hand mn] && [string equal -nocase $type "-global"]} {
	set check_global 1
}

set file [open $dir "r"]
	set data [read -nonewline $file]
	close $file
	set lines [split $data "\n"]
foreach line $lines {
	set mainchan [lindex [split $line] 0]
	set badchan [lindex [split $line] 1]
if {$check_global == 1} {
if {[string equal -nocase $mainchan "GLOBAL"] && [string match -nocase $bdchan $badchan]} {
	set counter [expr $counter + 1]
	set found_it 1
	set reason [join [lrange [split $line] 2 end]]
	if {$reason == "NONE"} { set reason "\"Default reason\"" }
	blacktools:tell $nick $host $hand $chan $chan1 badchan.27 "$counter $badchan $reason"
}
} else {
if {[string equal -nocase $mainchan $chan] && [string match -nocase $bdchan $badchan]} {
	set counter [expr $counter + 1]
	set found_it 1
	set reason [join [lrange [split $line] 2 end]]
	blacktools:tell $nick $host $hand $chan $chan1 badchan.28 "$counter $badchan $reason"
			}
		}
	}
if {$found_it == 0} {
	blacktools:tell $nick $host $hand $chan $chan1 badchan.24 none
	}
}


status {
	set check_global 0
if {[matchattr $hand mn] && [string equal -nocase $type "-global"]} {
	set check_global 1
}
if {[channel get $chan antibadchan]} { set status ONLINE } else { set status OFFLINE }
	blacktools:tell $nick $host $hand $chan $chan1 badchan.29 $status
if {$check_global == 1} {
	set total_chans [get:badchan:stats "GLOBAL"]
	blacktools:tell $nick $host $hand $chan $chan1 badchan.30 $total_chans
} else {
	set total_chans [get:badchan:stats $chan]
	blacktools:tell $nick $host $hand $chan $chan1 badchan.31 $total_chans
}
if {[channel get $chan badchan-reason] == ""} { 
	set getlang [string tolower [channel get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
	set reason $black(say.$getlang.badchan.39)
} else { set reason [join [channel get $chan badchan-reason]]}
if {[channel get $chan badchan-bantime] == 0} { set bantime $black(badcbantime)} else { set bantime [channel get $chan badchan-bantime]}
	blacktools:tell $nick $host $hand $chan $chan1 badchan.32 $reason
	blacktools:tell $nick $host $hand $chan $chan1 badchan.33 $bantime
}

set {
	
switch $bdchan {

reason {

if {$reason == ""} {
	blacktools:tell $nick $host $hand $chan $chan1 badchan.34 none
	return
}
	channel set $chan badchan-reason "$reason"
	blacktools:tell $nick $host $hand $chan $chan1 badchan.35 $reason
	}
bantime {

if {$type == ""} {
	blacktools:tell $nick $host $hand $chan $chan1 badchan.36 none
	return
}
	channel set $chan badchan-bantime $type
	blacktools:tell $nick $host $hand $chan $chan1 badchan.37 $type
}

default {
	blacktools:tell $nick $host $hand $chan $chan1 badchan.38 none
	
		}
	}
}

default {
if {[matchattr $hand mn]} {
	blacktools:tell $nick $host $hand $chan $chan1 badchan.3 none
} else {
	blacktools:tell $nick $host $hand $chan $chan1 badchan.1 none
			}
		}
	}
}

proc get:badchan:stats {type} {
	global black username
	set dir "scripts/BlackTools/FILES/$username.badchannels.txt"
	set counter 0
	set file [open $dir "r"]
	set data [read -nonewline $file]
	close $file
	set lines [split $data "\n"]
foreach line $lines {
	set mainchan [lindex [split $line] 0]
if {[string equal -nocase $type $mainchan]} {
	set counter [expr $counter + 1]
		}	
	}
	return $counter
}


proc badchanpublic:join {nick host hand chan} {
	global black
	set ::bad_chan $chan
if {[matchattr $hand $black(exceptflags) $chan]} {
	return
}
if {![validchan $chan]} { return }
if {![botisop $chan]} { return }
if {[isbotnick $nick]} { return }
if {[channel get $chan antibadchan]} {
	utimer 5 [list putquick "WHOIS $nick $nick"]
	bind RAW - 319 badchan:execute
	}
}


proc badchan:execute {from keyword arguments } {
global botnick black badchan username
	set chan $::bad_chan
	set dir "scripts/BlackTools/FILES/$username.badchannels.txt"
	set arguments [join $arguments]
	set nick [string tolower [lindex $arguments 1]]
	set channels [string tolower [lrange $arguments 2 end]]
	set banmask *!*@[lindex [split [getchanhost $nick $chan] "@"] 1]
if {![onchan $nick $chan]} {
	return
}
	set file [open $dir "r"]
	set database [read -nonewline $file]
	set bantime ""
	close $file
	set data [split $database "\n"]
foreach line $data {
	set mainchan [lindex [split $line] 0]
if {[string equal -nocase $chan $mainchan] || [string equal -nocase "GLOBAL" $mainchan]} {
		set readchan [lindex [split $line] 1]
		set reason [join [lrange [split $line] 2 end]]
foreach c [join $channels] {
set ch [string trimleft $c ":@+"]
if {[string equal -nocase $readchan $ch]} {

if {[string equal -nocase "LOCAL" $mainchan]} {
if {[channel get $chan badchan-reason] == 0} {
	set bantime $black(badcbantime)
} else { set bantime [channel get $chan badchan-reason] }
} else { set bantime $black(badcbantime) }

if {[string equal -nocase $chan $mainchan] && [string equal -nocase $reason "NONE"]} { 
if {[channel get $chan badchan-reason] == ""} {
	set getlang [string tolower [channel get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
	set reason $black(say.$getlang.badchan.39)
} else { set reason [join [channel get $chan badchan-reason]] 
	}
}

if {[string equal -nocase "GLOBAL" $mainchan] && [string equal -nocase $reason "NONE"]} {
	set getlang [string tolower [channel get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
	set reason $black(say.$getlang.badchan.39)
}
	set badchan($banmask:$chan) $reason
	lappend badchan(channels:$banmask:$chan) $readchan	
				}
			}			
		}
	}

if {[info exists badchan(checkagain:$banmask:$chan)]} { 
if {[info exists badchan($banmask:$chan)]} {
	set bywho "[join $badchan(channels:$banmask:$chan) ","]"
	bad:add:word $chan $banmask $bywho
	set replace(%chan%) $chan
	set reason [string map [array get replace] $badchan($banmask:$chan)]
	blacktools:banner:2 $banmask "BADCHAN" $chan $reason $bantime
	unset badchan(checkagain:$banmask:$chan)
	unset badchan($banmask:$chan)
	unset badchan(channels:$banmask:$chan)
	return
}
	unset badchan(checkagain:$banmask:$chan)
	return
}
if {[info exists badchan($banmask:$chan)]} {
	set replace(%badchans%) [join $badchan(channels:$banmask:$chan) ", "]
		set getlang [string tolower [channel get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
	set get_message $black(say.$getlang.badchan.40)
	set message [string map [array get replace] $get_message]
	putquick "PRIVMSG $nick :\[$chan\] $message"
	utimer 30 [list badchan:check:again $nick $chan]
	unset badchan($banmask:$chan)
	unset badchan(channels:$banmask:$chan)
	set badchan(checkagain:$banmask:$chan) 1
} else {

if {[info exists badchan(checkagain:$banmask:$chan]} {
	unset badchan(checkagain:$banmask:$chan
}

if {[info exists badchan($banmask:$chan)]} {
	unset badchan($banmask:$chan)
}

if {[info exists badchan(channels:$banmask:$chan)]} {
	unset badchan(channels:$banmask:$chan)
		}
	}
	unbind RAW - 319 badchan:execute
}

proc badchan:check:again {nick chan} {
	putquick "WHOIS $nick $nick"
	set ::bad_chan $chan
	bind RAW - 319 badchan:execute
}

proc badchan:nickchange {nick host hand chan newnick} { 
	global badchan
	set found_time 0
	set current_time ""
foreach tmr [utimers] {
if {[string match -nocase "*badchan:check:again $nick $chan*" [join [lindex $tmr 1]]]} {
	set current_time [get:timer:time $nick $chan]
	set found_time 1
killutimer [lindex $tmr 2]
	}
}
if {$found_time == "1"} {
	utimer $current_time [list badchan:check:again $newnick $chan] 
	}
}

proc badchan:split {nick host hand chan args} {
	global badchan	
	badchan:part $nick $host $hand $chan "none"
}

proc badchan:kick {nick host hand chan kicked reason} {
	global badchan
	badchan:part $kicked $host $hand $chan "none"	
}

proc badchan:part {nick host hand chan arg} {
	global badchan
if {![validchan $chan]} { return }
	set banmask *!*@[lindex [split [getchanhost $nick $chan] "@"] 1]	
foreach tmr [utimers] {
if {[string match -nocase "*badchan:check:again $nick $chan*" [join [lindex $tmr 1]]]} {
killutimer [lindex $tmr 2]
	}
}

if {[info exists badchan(checkagain:$banmask:$chan)]} {
	unset badchan(checkagain:$banmask:$chan)
}

if {[info exists badchan($banmask:$chan)]} {
	unset badchan($banmask:$chan)
}

if {[info exists badchan(channels:$banmask:$chan)]} {
	unset badchan(channels:$banmask:$chan)
	}	
}

proc get:timer:time {nick chan} {
	global scrabble
	set time_left 0
foreach tmr [utimers] {
if {[string match -nocase "*badchan:check:again $nick $chan*" [join [lindex $tmr 1]]]} {
	set time_left [lindex $tmr 0]
	}
}
	return $time_left
}

################################# Antitake ##################################


proc dontdeoppublic {nick host hand chan args} {
global black botnick
	set dnick [lindex $args 1]
	set handle [nick2hand $nick]
if {[channel get $chan dontdeop] } {
if {[string match -nocase $nick $botnick]} {
	return
}
if {![matchattr $handle $black(exceptflags) $chan]} {
	putquick "MODE $chan -o $nick"
	putquick "MODE $chan +o $dnick"
	set getlang [string tolower [channel get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
	puthelp "NOTICE $nick :$black(say.$getlang.antitake.1)"
		}
	}
}
 
proc dontoppublic {nick host hand chan args} {
global black botnick
	set onick [lindex $args 1]
	set handle [nick2hand $nick]
if {[channel get $chan dontop]} {
if {[string match -nocase $nick $botnick]} { 
	return
}
if {[string match -nocase $onick $botnick]} {
	return
}
if {![matchattr $handle $black(exceptflags) $chan]} {
	putquick "MODE $chan -o $nick"
	putquick "MODE $chan -o $onick"
	set getlang [string tolower [channel get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
	puthelp "NOTICE $nick :$black(say.$getlang.antitake.2)"
		}
	}
}


################################# Anunt ###################################


proc anuntpublic {nick host hand chan arg} {
global black
	set type 0
	set chan1 "$chan"
	set who [lindex [split $arg] 0]
	set message [join [lrange [split $arg] 1 end]]
	set number [lindex [split $arg] 1]
if {[regexp {^[&#]} $who] && [matchattr $hand nm|M $who]} {
	set chan "$who"
	set who [lindex [split $arg] 1]
	set message [join [lrange [split $arg] 2 end]]
	set number [lindex [split $arg] 2]
}
	anunt:process $nick $host $hand $chan $chan1 $who $message $number $type
}

proc anunt:process {nick host hand chan chan1 who message number type} {
global botnick black username
	set char(p) [lindex $black(cmdchar) 0]
	set new_dir "scripts/BlackTools/FILES/$username.announce.txt"
	
if {[string match -nocase "none" "$char(p)"]} {	
	set char(p) ""
} 

if {($who == "") && ($type == "0")} {	
	blacktools:tell $nick $host $hand $chan $chan1 anunt.1 none
	return
}
if {($who == "") && ($type == "1")} {
	blacktools:tell $nick $host $hand $chan $chan1 anunt.2 none	
	return
	}

if {![validchan $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.novalidchan none
	return
}
if {![onchan $botnick $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.notonchan none
	return
}


switch $who {

on {
	channel set $chan +anunt
	blacktools:tell $nick $host $hand $chan $chan1 anunt.3 none
}

off {
	channel set $chan -anunt
	blacktools:tell $nick $host $hand $chan $chan1 anunt.4 none
}

add {
if {$message == ""} {
	blacktools:tell $nick $host $hand $chan $chan1 anunt.12 none
	return
}
	set file [open $new_dir a]
	puts $file "$chan $message"
	close $file
	blacktools:tell $nick $host $hand $chan $chan1 anunt.5 none
	blacktools:tell $nick $host $hand $chan $chan1 anunt.6 $message
}

list {
	set file [open $new_dir "r"]
	set w [read -nonewline $file]
	close $file
	set data [split $w "\n"]
	set i 0
if {$data == ""} { blacktools:tell $nick $host $hand $chan $chan1 anunt.7 none
	return
}
	blacktools:tell $nick $host $hand $chan $chan1 anunt.8 none
foreach line $data {
	set read_chan [lindex [split $line] 0]
if {[string match -nocase $read_chan $chan]} {
	set i [expr $i +1]
	set message [join [lrange [split $line] 1 end]]
	blacktools:tell $nick $host $hand $chan $chan1 anunt.6 "$i. $message"
		}
	}
}

del {
	array set anuntdel [list]
if {![regexp {^[0-9]} $number]} {
	blacktools:tell $nick $host $hand $chan $chan1 anunt.9 none
	return
}

	set file [open $new_dir "r"]
	set data [read -nonewline $file]
	close $file
	set lines [split $data "\n"]
	set counter -1
	set line_counter -1
	set current_place -1
foreach line $lines {
	set line_counter [expr $line_counter + 1]
	set read_chan [lindex [split $line] 0]
if {[string match -nocase $read_chan $chan]} {
	set counter [expr $counter + 1]
	set anuntdel($counter) $line_counter
	}
}

foreach place [array names anuntdel] {
	if {$place == [expr $number - 1]} {
	set current_place $anuntdel($place)
	}
}

if {$current_place == "-1"} {
	blacktools:tell $nick $host $hand $chan $chan1 anunt.13 $number	
	return	
}

	set delete [lreplace $lines $current_place $current_place]
	set files [open $new_dir "w"]
	puts $files [join $delete "\n"]
	close $files
	set file [open $new_dir "r"]
	set data [read -nonewline $file]
	close $file
if {$data == ""} {
	set files [open $new_dir "w"]
	close $files
}
	blacktools:tell $nick $host $hand $chan $chan1 anunt.10 $number
	blacktools:tell $nick $host $hand $chan $chan1 anunt.11 none
		}
	}
}

proc anuntpublic:show {} {
global black
foreach chan [channels] {
if {[validchan $chan]} {
if {[channel get $chan anunt]} {
	lappend black(anunt:chans) [join $chan]
		}
	}
}
if {[info exists black(anunt:chans)]} {
		anunt:time
} else {
	timer $black(anunttime) anuntpublic:show
	return 1
	}
}

proc anunt:time {} {
	global black
	
if {![info exists black(anunt:count:chans)]} {
	set black(anunt:count:chans) 0	
}
	set current_chan [lindex $black(anunt:chans) $black(anunt:count:chans)]
	set black(anunt:count:chans) [expr $black(anunt:count:chans) + 1]
if {$current_chan != ""} {
	anunt:show $current_chan
	anunt:time
} else {
	unset black(anunt:count:chans)
	unset black(anunt:chans)
	timer $black(anunttime) anuntpublic:show
	return 1
	}
}

proc anunt:show {chan} {
	global black count username
	set new_dir "scripts/BlackTools/FILES/$username.announce.txt"
	set temp_dir "scripts/BlackTools/FILES/announce.temp.txt"

if {![file exists $temp_dir]} {
	set file [open $temp_dir w]
	close $file
} else {
	set file [open $temp_dir w]
	close $file
}	
	set file [open $new_dir "r"]
	set data [read -nonewline $file]
	close $file
if {$data != ""} {
	set lines [split $data "\n"]
foreach line $lines {
	set read_chan [lindex [split $line] 0]
if {[string match -nocase $read_chan $chan]} {
	set file [open $temp_dir "a"]
	puts $file [join [lrange [split $line] 1 end]]
	close $file
		}
	}
}
	set file [open $temp_dir "r"]
	set data [read -nonewline $file]
	close $file
if {$data != ""} {

if {![info exists count(anunt:$chan)]} {
	set count(anunt:$chan) 0
}		
	set lines [split $data "\n"]
	set line [lindex $lines $count(anunt:$chan)]
	
if {$line == ""} { 
	set count(anunt:$chan) 0
	set line [lindex $lines $count(anunt:$chan)]
}
	set split_line [split $line "~"]
	incr count(anunt:$chan)
foreach mes $split_line {
	if {$black(anunthow) == "1"} {
	puthelp "PRIVMSG $chan :\001ACTION $mes\001"
} else { 
	puthelp "PRIVMSG $chan :$mes"
			}
		}
	}
	set file [open $temp_dir "w"]
	close $file
}

################################## TimeBan #############################


proc timeban:module {nick host hand chan} {
global botnick
if {[channel get $chan showtime]} {
	set host "$nick![getchanhost $nick $chan]"
foreach ban [banlist $chan] {
if {[string match -nocase [string tolower [lindex $ban 0]] $host]} {
	set reason "[lindex $ban 1]"
	set bantime "[lindex $ban 2]"
	set totalday [expr $bantime - [unixtime]]
if {$totalday >= 86400} {
	set daysfull [expr $totalday/86400]
	set days [expr int($daysfull)]
	set dayssub [expr 86400*$days]
	set totalhour [expr $totalday - $dayssub]
}
if {$totalday < 86400} {
	set totalhour $totalday
	set days 0
}
if {$totalhour >= 3600} {
	set hoursfull [expr $totalhour/3600]
	set hours [expr int($hoursfull)]
	set hourssub [expr 3600*$hours]
	set totalmin [expr $totalhour - $hourssub]
}
if {$totalhour < 3600} {
	set totalmin $totalhour
	set hours 0
}
if {$totalmin >= 60} {
	set minsfull [expr $totalmin/60]
	set mins [expr int($minsfull)]
}
if {$totalmin < 60} {
	set mins 0
}
if {$days < 1} {set zi "0 days, "} elseif {$days == 1} {set zi "$days day, "} {set zi "$days days, "}
if {$hours < 1} {set ora "0"} else { set ora "$hours" }
set minut "$mins"
set re "$reason \[$zi$ora:$minut\]"
if {[lindex $ban 2] == 0} {
set expire "\[Never\]"
set re "$reason $expire"
}
putquick "MODE $chan +b [lindex $ban 0]"
putquick "KICK $chan $nick :$re"
			}
		}
	}
}


############################### AutoBroadcast ############################

proc broadcastpublic:module {nick host hand chan arg} {
global black sdir
	set char(p) [lindex $black(cmdchar) 0]
if {[string match -nocase "none" "$char(p)"]} {
	set char(p) ""
} 
	set chan1 "$chan"
	set who [lindex [split $arg] 0]
	set message [join [lrange [split $arg] 1 end]]
	set number [lindex [split $arg] 1]
if {$who == ""} { blacktools:tell $nick $host $hand $chan $chan1 autobroadcast.1 none
	return
}
	broadcast:process $nick $host $hand $chan $chan1 $who $message $number
}

proc broadcast:process {nick host hand chan chan1 who message number} {
global botnick black username
	set message [join $message]
	set sdir "scripts/BlackTools/FILES/$username.status.txt"
	set char(p) [lindex $black(cmdchar) 0]
if {[string match -nocase "none" "$char(p)"]} {
	set char(p) ""
} 
	set dir "scripts/BlackTools/FILES/$username.autobroadcast.txt"
	set lin 0

switch $who {

on {
	set type "broadcastpublic:show ON"
foreach tmr [timers] {
if {[string match "*broadcastpublic:show*" [join [lindex $tmr 1]]]} {
	blacktools:tell $nick $host $hand $chan $chan1 autobroadcast.3 none
	return
	}
}
	blacktools:tell $nick $host $hand $chan $chan1 autobroadcast.4 none
	set file [open $sdir "r"]
	set database [read -nonewline $file]
	close $file
	set data [split $database "\n"]
foreach line $data {
	set lin [expr $lin +1]
	set who [lindex  [split $line] 0]
	set stats [lindex [split $line] 1]
if {[string match -nocase "broadcastpublic:show" $who]} {
if {$line != ""} {
	set num [expr $lin - 1]
	set delete [lreplace $data $num $num]
	set files [open $sdir "w"]
	puts $files [join $delete "\n"]
	close $files
		}
	}
}
	set file [open $sdir "r"]
	set data [read -nonewline $file]
	close $file
if {$data == ""} {	
	set files [open $sdir "w"]
	close $files
}
	set file [open $sdir "a"]
	puts $file "$type"
	close $file
	timer $black(bttime) broadcastpublic:show
	set broadcastpublic:show_running 1
}

off {
	blacktools:tell $nick $host $hand $chan $chan1 autobroadcast.5 none
	set type "broadcastpublic:show OFF"
foreach tmr [timers] {
if {[string match -nocase "*broadcastpublic:show*" [join [lindex $tmr 1]]]} {
	killtimer [lindex $tmr 2]
	}	
}
	set file [open $sdir "r"]
	set database [read -nonewline $file]
	close $file
	set data [split $database "\n"]
foreach line $data {
	set lin [expr $lin +1]
	set who [lindex  [split $line] 0]
	set stats [lindex [split $line] 1]
if {[string match -nocase "broadcastpublic:show" $who]} {
if {$line != ""} {
	set num [expr $lin - 1]
	set delete [lreplace $data $num $num]
	set files [open $sdir "w"]
	puts $files [join $delete "\n"]
	close $files
		}	
	}
}
	set file [open $sdir "r"]
	set data [read -nonewline $file]
	close $file
if {$data == ""} {
	set files [open $sdir "w"]
	close $files
}
	set file [open $sdir "a"]
	puts $file "$type"
	close $file
if {[info exists broadcastpublic:show_running]} {
	unset broadcastpublic:show_running
	}
}

add {
if {$message == ""} {
	blacktools:tell $nick $host $hand $chan $chan1 autobroadcast.12 none
	return
}
	set file [open $dir a]
	puts $file $message
	close $file
	blacktools:tell $nick $host $hand $chan $chan1 autobroadcast.6 none
	blacktools:tell $nick $host $hand $chan $chan1 autobroadcast.7 $message
}

list {
	set file [open $dir "r"]
	set w [read -nonewline $file]
	close $file
	set data [split $w "\n"]
	set i 0
if {$data == ""} { blacktools:tell $nick $host $hand $chan $chan1 autobroadcast.8 none
	return
}
	blacktools:tell $nick $host $hand $chan $chan1 autobroadcast.9 none
foreach mes $data {
	set i [expr $i +1]
	blacktools:tell $nick $host $hand $chan $chan1 autobroadcast.7 "$i. $mes"
	}
}

del {

if {![regexp {^[0-9]} $number]} {
	blacktools:tell $nick $host $hand $chan $chan1 autobroadcast.10 none
	return
}
	set file [open $dir "r"]
	set data [read -nonewline $file]
	close $file
	set lines [split $data "\n"]
	set i [expr $number - 1]
	set delete [lreplace $lines $i $i]
	set files [open $dir "w"]
	puts $files [join $delete "\n"]
	close $files
	set file [open $dir "r"]
	set data [read -nonewline $file]
	close $file
if {$data == ""} {
	set files [open $dir "w"]
	close $files
}
	blacktools:tell $nick $host $hand $chan $chan1 autobroadcast.11 $number		
		}
	}
}


proc broadcastpublic:show {} {
global black username
	set dir "scripts/BlackTools/FILES/$username.autobroadcast.txt"
	
if {![info exists black(broadcast:count)]} {
	set black(broadcast:count) 0
}

	set file [open $dir "r"]
	set data [read -nonewline $file]
	close $file
if {$data != ""} {
	set lines [split $data "\n"]
	set line [lindex $lines $black(broadcast:count)]
	
if {$line == ""} {
	set black(broadcast:count) 0
	set line [lindex $lines $black(broadcast:count)]
}
	set black(broadcast:count) [expr $black(broadcast:count) +1]
	set split_line [split $line "~"]

foreach chan [channels] {
if {[validchan $chan] && [isdynamic $chan] && (![channel get $chan silent])} {
foreach mes $split_line {
if {$black(bthow) == "1"} {
	puthelp "PRIVMSG $chan :\001ACTION $mes\001"
} else { 
	puthelp "PRIVMSG $chan :$mes"
					}
				}
			}
		}
	}
	timer $black(bttime) broadcastpublic:show
	return
}

################################# Limit ###################################


proc limitpublic {nick host hand chan arg} {
global black 
	set why [lindex [split $arg] 0]
	set lm [lindex [split $arg] 1]
	set type 0
	set chan1 "$chan"
if {[regexp {^[&#]} $why] && [matchattr $hand nm|- $chan]} {
	set chan "$why"
	set why [lindex [split $arg] 1]
	set lm [lindex [split $arg] 2]
}
	limit:process $nick $host $hand $chan $chan1 $why $lm $type
}

proc limit:process {nick host hand chan chan1  why lm type} {
global botnick black
	set char(p) [lindex $black(cmdchar) 0]
if {[string match -nocase "none" "$char(p)"]} {
	set char(p) ""
} 
if {[matchattr $hand nm|- $chan]} {
if {($why == "") && ($type == "0")} {
	blacktools:tell $nick $host $hand $chan $chan1 limit.1 none
	return
}
if {($why == "") && ($type == "1")} {
	blacktools:tell $nick $host $hand $chan $chan1 limit.2 none
	return
	}
}
if {($why == "") && ($type == "0")} {
	blacktools:tell $nick $host $hand $chan $chan1 limit.3 none
	return
}
if {($why == "") && ($type == "1")} {
	blacktools:tell $nick $host $hand $chan $chan1 limit.4 none
	return
}

if {![validchan $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.novalidchan none
	return
}

if {![onchan $botnick $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.notonchan none
	return
}
	set usersnum [llength [chanlist $chan]]
	set setnum [channel get $chan blacklimit]
	
if {([regexp -nocase -- {(#[0-9]+|on|off|set|on|off)} $why tmp lmt]) && (![regexp -nocase -- {\S#} $why])} {
    switch $lmt {

on {
	set limt [channel get $chan blacklimit]
	channel set $chan +limit
	blacktools:tell $nick $host $hand $chan $chan1 limit.5 none
if {($limt != "0")} {
	putserv "MODE $chan +l [expr $usersnum + $limt]"
} else {
	putserv "MODE $chan +l [expr $usersnum + 10]"
	channel set $chan blacklimit 10
	blacktools:tell $nick $host $hand $chan $chan1 limit.6 none
	}
}
off {
	channel set $chan -limit
	blacktools:tell $nick $host $hand $chan $chan1 limit.7 none
	putquick "MODE $chan -l"
}

set {
if {![regexp {^[0-9]} $lm]} {
	blacktools:tell $nick $host $hand $chan $chan1 limit.8 none
	return
}
if {$lm < 2} { blacktools:tell $nick $host $hand $chan $chan1 limit.9 none
	channel set $chan blacklimit 2
	putserv "MODE $chan +l [expr $usersnum + $lm]"
	blacktools:tell $nick $host $hand $chan $chan1 limit.10 none
	return
}
if {$lm > 500} { blacktools:tell $nick $host $hand $chan $chan1 limit.11 none
	return
}
	channel set $chan blacklimit $lm
	blacktools:tell $nick $host $hand $chan $chan1 limit.12 $lm
	putserv "MODE $chan +l [expr $usersnum + $lm]"
			}
		}
	}
}

proc limit:timer {min hour day mon year} {
	global black
foreach chan [channels] {
if {[channel get $chan limit]} {
	set usersnum [llength [chanlist $chan]]
	set setnum [channel get $chan blacklimit]
if {$setnum == "0"} { set setnum "10" }
if {![botisop $chan]} { return 0 }
	set chanmode [getchanmode $chan]
if {[string match "*l*" "$chanmode"]} {
	set lim [lindex $chanmode 1]
} else { set lim "0" }
if {$usersnum > $lim} { set dif [expr $usersnum - $lim] } else { set dif [expr $lim - $usersnum] }
if {($dif >= $setnum) || ($dif <= $setnum)} {
	putserv "MODE $chan +l [expr $usersnum + $setnum]"
			}
		}
	}
}

################################# Topic ###################################

proc topicpublic {nick host hand chan arg} {
	global black
	set nop [lindex [split $arg] 0]
	set char(p) [lindex $black(cmdchar) 0]
if {[string match -nocase "none" "$char(p)"]} {
	set char(p) ""
} 
	set type 0
	set chan1 "$chan"
	set tp [join [lrange [split $arg] 1 end]]
	set number [lindex [split $arg] 1]
if {[regexp {^[&#]} $nop] && [matchattr $hand nm|M $nop]} {
	set chan "$nop"
	set nop [lindex [split $arg] 1]
	set tp [join [lrange [split $arg] 2 end]]
	set number [lindex [split $arg] 2]
}
	topic:process $nick $host $hand $chan $chan1 $nop $tp $number $type
}

proc topic:process {nick host hand chan chan1 nop tp number type} {
	global botnick black username
	set char(p) [lindex $black(cmdchar) 0]
if {[string match -nocase "none" "$char(p)"]} {
	set char(p) ""
} 
	set new_dir "scripts/BlackTools/FILES/$username.topic.txt"
	
if {($nop == "") && ($type == "0")} {
	blacktools:tell $nick $host $hand $chan $chan1 topic.1 none
	return
}
if {($nop == "") && ($type == "1")} {
	blacktools:tell $nick $host $hand $chan $chan1 topic.2 none
	return
}

if {![validchan $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.novalidchan none
	return
}
if {![onchan $botnick $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.notonchan none
	return
}

switch $nop {
	
 save {
	set t [join [topic $chan]]
if {$t == ""} { blacktools:tell $nick $host $hand $chan $chan1 topic.3 none
	return
}
	set file [open $new_dir a]
	puts $file $t
	close $file
	blacktools:tell $nick $host $hand $chan $chan1 topic.4 none
}

add {
if {$tp == ""} {
	blacktools:tell $nick $host $hand $chan $chan1 topic.13 none
	return
}
	set file [open $new_dir a]
	puts $file "$chan $tp"
	close $file
	blacktools:tell $nick $host $hand $chan $chan1 topic.5 none
}

list {
	
	set file [open $new_dir "r"]
	set w [read -nonewline $file]
	close $file
	set data [split $w "\n"]
	set i 0
	set found_it 0
if {$data == ""} { blacktools:tell $nick $host $hand $chan $chan1 topic.6 none
	return
}
	blacktools:tell $nick $host $hand $chan $chan1 topic.7 none
foreach line $data {
	set read_chan [lindex [split $line] 0]
if {[string match -nocase $read_chan $chan]} {
	set found_it 1
	set topic [join [lrange [split $line] 1 end]]
	set i [expr $i +1]
	blacktools:tell $nick $host $hand $chan $chan1 topic.8 "$i. $topic"
		}
	}
if {$found_it == 0} {
	blacktools:tell $nick $host $hand $chan $chan1 topic.6 none
	return
	}
}

del {
	array set topicdel [list]
if {![regexp {^[0-9]} $number]} {
	blacktools:tell $nick $host $hand $chan $chan1 topic.9 none
	return
}
	set file [open $new_dir "r"]
	set data [read -nonewline $file]
	close $file
	set lines [split $data "\n"]
	set counter -1
	set line_counter -1
	set current_place -1
foreach line $lines {
	set line_counter [expr $line_counter + 1]
	set read_chan [lindex [split $line] 0]
if {[string match -nocase $read_chan $chan]} {
	set counter [expr $counter + 1]
	set topicdel($counter) $line_counter
	}
}

foreach place [array names topicdel] {
	if {$place == [expr $number - 1]} {
	set current_place $topicdel($place)
	}
}

if {$current_place == "-1"} {
	blacktools:tell $nick $host $hand $chan $chan1 topic.14 $number	
	return	
}

	set delete [lreplace $lines $current_place $current_place]
	set files [open $new_dir "w"]
	puts $files [join $delete "\n"]
	close $files
	set file [open $new_dir "r"]
	set data [read -nonewline $file]
	close $file
if {$data == ""} {
	set files [open $new_dir "w"]
	close $files
}

	blacktools:tell $nick $host $hand $chan $chan1 topic.10 $number
}

set {
	array set topicset [list]
	
if {![regexp {^[0-9]} $number]} {
	blacktools:tell $nick $host $hand $chan $chan1 topic.11 none
	return
}
	set file [open $new_dir "r"]
	set data [read -nonewline $file]
	close $file
	set lines [split $data "\n"]
	set counter -1
	set line_counter -1
	set current_place -1
foreach line $lines {
	set line_counter [expr $line_counter + 1]
	set read_chan [lindex [split $line] 0]
if {[string match -nocase $read_chan $chan]} {
	set counter [expr $counter + 1]
	set topicdel($counter) $line_counter
	}
}

foreach place [array names topicdel] {
	if {$place == [expr $number - 1]} {
	set current_place $topicdel($place)
	}
}

if {$current_place == "-1"} {
	blacktools:tell $nick $host $hand $chan $chan1 topic.15 $number	
	return	
}
	set current_line [lindex $lines $current_place]
	set line [join [lrange [split $current_line] 1 end]]
	putquick "TOPIC $chan :Setting topic.."
	putserv "TOPIC $chan :$line"
	blacktools:tell $nick $host $hand $chan $chan1 topic.12 $number
}

lock {
	set gettopic [topic $chan]
if {$gettopic == ""} { 
	blacktools:tell $nick $host $hand $chan $chan1 topic.16 none		
	return
}
	channel set $chan +topiclock
	channel set $chan topicset $gettopic
	blacktools:tell $nick $host $hand $chan $chan1 topic.17 none
}

unlock {
if {![channel get $chan topiclock]} {
	blacktools:tell $nick $host $hand $chan $chan1 topic.18 none
}
	channel set $chan -topiclock
	channel set $chan topicset ""
	blacktools:tell $nick $host $hand $chan $chan1 topic.19 none
		}
	}
}

proc topic:change {nick host hand chan arg} {
	global black
	set thetopic [channel get $chan topicset]
	set handle [nick2hand $nick]
	set getlang [string tolower [channel get $chan lang]]
if {![botisop $chan]} { return }
if {[isbotnick $nick]} { return }
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
if {[channel get $chan topiclock]} {
if {![matchattr $handle nm|M $chan]} {
	putserv "TOPIC $chan :$thetopic"
if {[info exists black(say.$getlang.topic.20)]} {	
	putserv "NOTICE $nick :$black(say.$getlang.topic.20)"
			}	
		} else {
	channel set $chan topicset [topic $chan]
		}
	}		
}
proc topiclock:verify {nick host hand chan args} {
	global black
	set onick [lindex $args 1]
if {![validchan $chan]} { return }
if {[isbotnick $onick] && [channel get $chan topiclock]} {
if {[channel get $chan topicset] != ""} {
	set thetopic [topic $chan]
	set locktopic [channel get $chan topicset]
	if {$thetopic != $locktopic} {
	putserv "TOPIC $chan :$locktopic"
			}
		}
	}
}

proc topiclock:join {nick host hand chan} {
	global black
if {![validchan $chan]} { return }
if {![isbotnick $nick]} {
	return
}

if {[llength [chanlist $chan]]  > 1} {
	return
}
	utimer 5 [list  topiclock:join:act $chan]
}

proc topiclock:join:act {chan} {
	global black

if {![botisop $chan]} {
	return
}
if {[channel get $chan topiclock]} {
if {[channel get $chan topicset] != ""} {
	set thetopic [topic $chan]
	set locktopic [channel get $chan topicset]
if {$thetopic != $locktopic} {
	putserv "TOPIC $chan :$locktopic"		
			}
		}
	}
}

################################# Seen ###################################

proc seen:save:2 {nick chan host type time staytimer reason} {
	global black username
	set seendir "scripts/BlackTools/FILES/$username.Seen.db"
	set lin 0
	set j 0
	set who "$type $chan $nick $host $time $staytimer $reason"
	set file [open $seendir "r"]
	set database [read -nonewline $file]
	close $file
	set data [split $database "\n"]
foreach line $data {
	set lin [expr $lin +1]
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
	set who "$type $chan $nick $host $time $j $reason"
if {$line != ""} {
	set num [expr $lin - 1]
	set delete [lreplace $data $num $num]
	set files [open $seendir "w"]
	puts $files [join $delete "\n"]
	close $files
		}
	}
}
	set file [open $seendir "r"]
	set data [read -nonewline $file]
	close $file
if {$data == ""} {
	set files [open $seendir "w"]
	close $files
}
	set file [open $seendir "a"]
	puts $file "$who"
	close $file
}

proc seen:save:1 {nick chan host type time staytimer} {
	global black username
	set seendir "scripts/BlackTools/FILES/$username.Seen.db"
	set lin 0
	set who "$type $chan $nick $host $time $staytimer"
	set file [open $seendir "r"]
	set database [read -nonewline $file]
	close $file	
	set data [split $database "\n"]
foreach line $data {
	set lin [expr $lin +1]
	set userentry [lindex  [split $line] 2]
	set chanentry [lindex [split $line] 1]
if {[string equal -nocase $userentry $nick] && [string match -nocase $chanentry $chan]} {
if {$line != ""} {
	set num [expr $lin - 1]
	set delete [lreplace $data $num $num]
	set files [open $seendir "w"]
	puts $files [join $delete "\n"]
	close $files
		}
	}
}
	set file [open $seendir "r"]
	set data [read -nonewline $file]
	close $file
if {$data == ""} {
	set files [open $seendir "w"]
	close $files
}
	set file [open $seendir "a"]
	puts $file "$who"
	close $file
}


proc seen:join {nick host hand chan} {
global botnick username
	set seendir "scripts/BlackTools/FILES/$username.Seen.db"
if {![validchan $chan]} { return}
if {![channel get $chan seen]} {
	return
}
if {[isbotnick $nick]} { return }
	set time [unixtime]
	set host "*!$host"
	set type "JOIN"
	set staytimer "0"
	seen:save:1 $nick $chan $host $type $time $staytimer
}


proc seen:part {nick host hand chan arg} {
global botnick username
set seendir "scripts/BlackTools/FILES/$username.Seen.db"
if {![validchan $chan]} { return }
if {![channel get $chan seen]} {
	return
}
	set time [unixtime]
	set staytimer "0"
	set type "PART"
	set reason [join [lrange [split $arg] 0 end]]
if {$reason == ""} { set reason "No Reason" }
	set host "*!$host"
if {[isbotnick $nick]} { return }
	seen:save:2 $nick $chan $host $type $time $staytimer $reason
}

proc seen:sign {nick host hand chan arg} {
	global botnick username
	set seendir "scripts/BlackTools/FILES/$username.Seen.db"
if {![validchan $chan]} { return }
if {![channel get $chan seen]} {
	return 0
}
	set time [unixtime]
	set staytimer "0"
	set type "SIGN"
	set host "*!$host"
	set reason [join [lrange [split $arg] 0 end]]
if {$reason == ""} { set reason "No Reason" }
if {[isbotnick $nick]} { return }
	seen:save:2 $nick $chan $host $type $time $staytimer $reason
}


proc seen:kick {nick host hand chan kicked reason} {
global botnick username
	set seendir "scripts/BlackTools/FILES/$username.Seen.db"
if {![validchan $chan]} { return }
if {![channel get $chan seen]} {
	return
}	
	set lin 0
	set j 0
	set time [unixtime]
	set hosted [getchanhost $kicked $chan]
	set hosted "*!$hosted"
	set reason [join [lrange [split $reason] 1 end]]
if {$reason == ""} { set reason "No Reason" }
if {[isbotnick $kicked]} { return }
	set who "KICK $chan $kicked $hosted $time 0 $reason"
	set file [open $seendir "r"]
	set database [read -nonewline $file]
	close $file
	set data [split $database "\n"]
foreach line $data {
	set lin [expr $lin +1]
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
	set who "KICK $chan $kicked $hosted $time $j $reason"
if {$line != ""} {
	set num [expr $lin - 1]
	set delete [lreplace $data $num $num]
	set files [open $seendir "w"]
	puts $files [join $delete "\n"]
	close $files
		}	
	}
}
	set file [open $seendir "r"]
	set data [read -nonewline $file]
	close $file
if {$data == ""} {
	set files [open $seendir "w"]
	close $files
}
	set file [open $seendir "a"]
	puts $file "$who"
	close $file
}


proc seen:split {nick host hand chan args} {
global botnick username
	set seendir "scripts/BlackTools/FILES/$username.Seen.db"
if {![validchan $chan]} { return }
if {![channel get $chan seen]} {
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
global botnick username
	set seendir "scripts/BlackTools/FILES/$username.Seen.db"
if {![validchan $chan]} { return }
if {![channel get $chan seen]} {
	return
}
	set time [unixtime]
	set host "*!$host"
	set staytimer "0"
	set type "NICKCHANGE"
if {[isbotnick $nick]} { return }
	seen:save:2 $nick $chan $host $type $time $staytimer $newnick
}

proc seenpublic {nick host hand chan arg} {
global black
if {![channel get $chan seen]} {
	return
}
	set type 0
	set chan1 "$chan"
	set what [lindex [split $arg] 0]
if {[regexp {^[&#]} $what] && [matchattr $hand nm|- $chan]} {
	set chan1 "$chan"
	set chan "$what"
	set what [lindex [split $arg] 1]
}
	seen:process $nick $host $hand $chan $chan1 $what $type
}

proc seen:process {nick host hand chan chan1 what type} {
global black count botnick username
	set seendir "scripts/BlackTools/FILES/$username.Seen.db"
	set number [scan $black(seenflood) %\[^:\]]
	set timer [scan $black(seenflood) %*\[^:\]:%s]
	set i 0
	set char(p) [lindex $black(cmdchar) 0]
	array set seensort [list]
if {[string match -nocase "none" "$char(p)"]} {
	set char(p) ""
} 

if {($what == "") && ($type == "0")} {
	blacktools:tell $nick $host $hand $chan $chan1 seen.1 none
	return
}
if {($what == "") && ($type == "1")} {
	blacktools:tell $nick $host $hand $chan $chan1 seen.2 none
	return
}
	
if {![validchan $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.novalidchan none
	return
}
if {![onchan $botnick $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.notonchan none
	return
}
foreach tmr [utimers] {
if {[string match "*count(flood:$host:$chan)*" [join [lindex $tmr 1]]]} {
	killutimer [lindex $tmr 2]
	}
}
if {![info exists count(flood:$host:$chan)]} { 
	set count(flood:$host:$chan) 0 
}
	incr count(flood:$host:$chan)

	utimer $timer [list unset count(flood:$host:$chan)]

if {$count(flood:$host:$chan) == "$number"} {
	blacktools:tell $nick $host $hand $chan $chan1 seen.5 none
	return
}	
	
if {[string equal -nocase $what $nick] && ($chan1 == $chan)} { blacktools:tell $nick $host $hand $chan $chan1 seen.6 $nick
	return
}
if {[onchan $what $chan]} { blacktools:tell $nick $host $hand $chan $chan1 seen.7 $what
	return
}
	set file [open $seendir "r"]
	set database [read -nonewline $file]
	close $file
	set data [split $database "\n"]
	set length_data [llength $data]
for {set j $length_data} {$j >= 0} {set j [expr $j - 1]} {	
	set line [lindex $data $j]
if {$line != ""} {	
	set userentry [lindex [split $line] 2]
	set chanentry [lindex [split $line] 1]
	set host [lindex [split $line] 3]

if {$what == "*!*@*"} { return 0 }
if {([string equal -nocase $userentry $what] || [string match -nocase $what $userentry] || [string match -nocase $what $host]) && [string match -nocase $chanentry $chan]} {
	set i [expr $i +1]
if {$i < 6} {
	lappend entry $userentry
}
	set seenfound 1
	
	set host [string trim $host "*!~"]
	set tm [lindex [split $line] 4]
	set jointime [lindex [split $line] 5]
	set newnick [lindex [split $line] 6]
	set reason [join [lrange [split $line] 6 end]]
if {!([regexp {^[0-9]} $jointime]) || ($jointime == "")} {
	set jointime 0
	set reason [join [lrange [split $line] 5 end]]
}
if {$reason == ""} { set reason "No Reason" }
	set output [duration [expr [unixtime] - $tm]]
	set staytime [expr [unixtime] - $jointime]
	set staytime [duration [expr $tm - $jointime]]
	set getlang [string tolower [channel get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }

	set date [clock format $tm -format %d.%m.]
	set hour [clock format $tm -format %H:%M]
	
	set top_seenlist ""
	set entry [lsort -unique $entry]
	set seensort($tm) $j

	foreach line [lsort -integer -decreasing [array names seensort]] {
	lappend top_seenlist $seensort($line)
	}
	set current_line [lindex $top_seenlist 0]
	set line [lindex $data $current_line]
	
	set latest_entry [lindex [split $line] 2]
	set host [lindex [split $line] 3]
	set host [string trim $host "*!~"]
	set tm [lindex [split $line] 4]
	set jointime [lindex [split $line] 5]
	set newnick [lindex [split $line] 6]
	set reason [join [lrange [split $line] 6 end]]
if {!([regexp {^[0-9]} $jointime]) || ($jointime == "")} {
	set jointime 0
	set reason [lrange [split $line] 5 end]
}
if {$reason == ""} { set reason "No Reason" }
	set output [duration [expr [unixtime] - $tm]]
	set staytime [expr [unixtime] - $jointime]
	set staytime [duration [expr $tm - $jointime]]
	set getlang [string tolower [channel get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }

	set date [clock format $tm -format %d.%m.]
	set hour [clock format $tm -format %H:%M]
	
	set replace(%latest%) $latest_entry
	set replace(%num%) [llength $entry]
	set replace(%entry%) "[join $entry ", "]"
	set replace(%host%) "$host"
	set replace(%output%) "$output"
	set replace(%date%) "($date $hour)"
	set replace(%newnick%) "$newnick"
	set replace(%userentry%) "$userentry"
	set replace(%chan%) "$chan"
	set replace(%reason%) "$reason"
	set replace(%staytime%) "$staytime"
if {$jointime == "0"} { set staymsg "[string map [array get replace] $black(say.$getlang.seen.8)]"
	set replace(%staymsg%) "$staymsg"
} else {
	set staymsg "[string map [array get replace] $black(say.$getlang.seen.9)]"
	set replace(%staymsg%) "$staymsg"
}

if {[llength $entry] > 1} {
	set found_many 1
if {[lindex [split $line] 0] == "PART"} {
	set reply "[string map [array get replace] $black(say.$getlang.seen.21)]"
}
if {[lindex [split $line] 0] == "SIGN"} {
	set reply "[string map [array get replace] $black(say.$getlang.seen.22)]"
}
if {[lindex [split $line] 0] == "JOIN"} {
if {[onchan $latest_entry $chan]} { 
	set nowon "[string map [array get replace] $black(say.$getlang.seen.19)]"
	set replace(%nowon%) "$nowon"
} else { 
	set nowon "[string map [array get replace] $black(say.$getlang.seen.11)]"
	set replace(%nowon%) "$nowon"
}
	set reply "[string map [array get replace] $black(say.$getlang.seen.23)]"
}
if {[lindex [split $line] 0] == "SPLIT"} {
	set reply "[string map [array get replace] $black(say.$getlang.seen.24)]"
}
if {[lindex [split $line] 0] == "KICK"} {
	set reply "[string map [array get replace] $black(say.$getlang.seen.25)]"
}
if {[lindex [split $line] 0] == "NICKCHANGE"} {
if {[onchan $newnick $chan]} { 
	set nowon "[string map [array get replace] $black(say.$getlang.seen.10)]"
	set replace(%nowon%) "$nowon"
} else {
	set nowon "[string map [array get replace] $black(say.$getlang.seen.11)]"
	set replace(%nowon%) "$nowon"
}
	set reply "[string map [array get replace] $black(say.$getlang.seen.26)]"
	}
} else {

if {[lindex [split $line] 0] == "PART"} {
	set reply "[string map [array get replace] $black(say.$getlang.seen.12)]"
}
if {[lindex [split $line] 0] == "SIGN"} {
	set reply "[string map [array get replace] $black(say.$getlang.seen.13)]"

}
if {[lindex [split $line] 0] == "JOIN"} {
if {[onchan $userentry $chan]} { 
	set nowon "[string map [array get replace] $black(say.$getlang.seen.19)]"
	set replace(%nowon%) "$nowon"
} else { 
	set nowon "[string map [array get replace] $black(say.$getlang.seen.11)]"
	set replace(%nowon%) "$nowon"
}
	set reply "[string map [array get replace] $black(say.$getlang.seen.14)]"
}
if {[lindex [split $line] 0] == "SPLIT"} {
	set reply "[string map [array get replace] $black(say.$getlang.seen.15)]"
}
if {[lindex [split $line] 0] == "KICK"} {
	set reply "[string map [array get replace] $black(say.$getlang.seen.16)]"
}
if {[lindex [split $line] 0] == "NICKCHANGE"} {
if {[onchan $newnick $chan]} { 
	set nowon "[string map [array get replace] $black(say.$getlang.seen.10)]"
	set replace(%nowon%) "$nowon"
} else {
	set nowon "[string map [array get replace] $black(say.$getlang.seen.11)]"
	set replace(%nowon%) "$nowon"
}
	set reply "[string map [array get replace] $black(say.$getlang.seen.17)]"
		}
	}
}
	set method "NOTICE"
	set onwho "$nick"
	set how [channel get $chan seen-method]
	
switch [string tolower $how] {

	notice {
	set method "NOTICE"
	set onwho "$nick"
}
	privmsg {
	set method "PRIVMSG"
	set onwho "$chan1"		
			}
		}
	}
}

if {[info exists reply]} {
	puthelp "$method $onwho :$reply"
}

if {![info exists seenfound]} {
	blacktools:tell $nick $host $hand $chan $chan1 seen.18 $what
	}
}

proc seen:entry:delete {minute hour day month year} {
	global black username
	set seendir "scripts/BlackTools/FILES/$username.Seen.db"
	set file [open $seendir "r"]
	set database [read -nonewline $file]
	close $file
	set data [split $database "\n"]
	set counter 0
	putlog "\[BlackTools\] Checking for expired seen records.."
foreach line $data {
	set tm [lindex [split $line] 4]
	set read_days [expr [expr [expr [expr [unixtime] - $tm] / 60]] / 1440]
if {$read_days >= $black(seen:expire:time)} {
	set counter [expr $counter + 1]
	lappend expire_list $tm
		}
	}
if {[info exists expire_list]} {
	seen:delete:action $counter $expire_list
	}
}

proc seen:delete:action {counter list} {
	global black username
	set seendir "scripts/BlackTools/FILES/$username.Seen.db"
	set list [join $list]
foreach tm $list {
if {$tm != ""} {
	set file [open $seendir "r"]
	set database [read -nonewline $file]
	close $file
	set data [split $database "\n"]
	set i [lsearch -glob $data "* $tm *"]
if {$i > -1} {
	set line [lindex $data $i]
	set delete [lreplace $data $i $i]
	set file [open $seendir "w"] 
	puts $file [join $delete "\n"]
	close $file	
			}
		}
	}
	putlog "\[BlackTools\] Found $counter expired SEEN records."
}

############################### Greet #####################################


proc greetpublic {nick host hand chan arg} {
global black
	set who [lindex [split $arg] 0]
	set type 0
	set chan1 "$chan"
	set greet [join [lrange [split $arg] 1 end]]
	set number [lindex [split $arg] 1]
if {[regexp {^[&#]} $who] && [matchattr $hand nm|M $who]} {
	set chan "$who"
	set who [lindex [split $arg] 1]
	set greet [join [lrange [split $arg] 2 end]]
	set number [lindex [split $arg] 2]
}
	greet:process $who $greet $number $type $nick $host $hand $chan $chan1
}


proc greet:process {who greet number type nick host hand chan chan1} {
global botnick black username
	set char(p) [lindex $black(cmdchar) 0]
	set new_dir "scripts/BlackTools/FILES/$username.greets.txt"
	
if {[string match -nocase "none" "$char(p)"]} {
	set char(p) ""
} 
if {($who == "") && ($type == "0")} {
	blacktools:tell $nick $host $hand $chan $chan1 greet.1 none
	return
}
if {($who == "") && ($type == "1")} {
	blacktools:tell $nick $host $hand $chan $chan1 greet.2 none
	return
	}

if {![validchan $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.novalidchan none
	return
}
if {![onchan $botnick $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.notonchan none
	return
}

    switch $who {

on {
	channel set $chan +greet
	blacktools:tell $nick $host $hand $chan $chan1 greet.3 none
}

off {
	channel set $chan -greet
	blacktools:tell $nick $host $hand $chan $chan1 greet.4 none
}

add {
	set counter -1
	set file [open $new_dir "r"]
	set w [read -nonewline $file]
	close $file
	set data [split $w "\n"]
	set current -1
foreach line $data {
	set counter [expr $counter + 1]
	set channel [lindex [split $line] 0]
if {[string equal -nocase $chan $channel]} {
	set status [lindex [split $line] 1]
if {$status == "1"} {	
	set message [join [lrange [split $line] 2 end]]
	set delete [lreplace $data $counter $counter]
	set file [open $new_dir "w"] 
	puts $file [join $delete "\n"]
	close $file
	set file [open $new_dir a]
	puts $file "$chan 0 $message"
	close $file
		}	
	}
}
	set file [open $new_dir a]
	puts $file "$chan 1 $greet"
	close $file
	
	blacktools:tell $nick $host $hand $chan $chan1 greet.5 none
	blacktools:tell $nick $host $hand $chan $chan1 greet.6 $greet
}

list {
	set file [open $new_dir "r"]
	set w [read -nonewline $file]
	close $file
	set data [split $w "\n"]
	set i 0
	set found_it 0
if {$data == ""} { blacktools:tell $nick $host $hand $chan $chan1 greet.7 none
	return
}
		blacktools:tell $nick $host $hand $chan $chan1 greet.8 none
foreach mes $data {
	set channel [lindex [split $mes] 0]
if {[string equal -nocase $channel $chan]} {
	set i [expr $i +1]
	set found_it 1
	set message [join [lrange [split $mes] 2 end]]
	set status [lindex [split $mes] 1]
if {$status == 1} {
	blacktools:tell $nick $host $hand $chan $chan1 greet.6 "\002\[ON\]\002   $i. $message"
			} else {
	blacktools:tell $nick $host $hand $chan $chan1 greet.6 "\[OFF\] $i. $message"	
			}
		}
	}
if {$found_it == "0"} {
	blacktools:tell $nick $host $hand $chan $chan1 greet.7 none
	} else {
	blacktools:tell $nick $host $hand $chan $chan1 greet.11 none
	}
}

del {
	set file [open $new_dir "r"]
	set w [read -nonewline $file]
	close $file
	set data [split $w "\n"]
	set counter 0
	
foreach line $data {
	set the_greet [join [lrange [split $line] 2 end]]
	set channel [lindex [split $line] 0]
if {[string equal -nocase $channel $chan] && [string match -nocase $greet $the_greet]} {
	set counter [expr $counter + 1]
	}
}

for {set j 0} {$j < $counter} {incr j} {
	
	set file [open $new_dir "r"]
	set w [read -nonewline $file]
	close $file
	set data [split $w "\n"]
	set i [lsearch -glob $data "* $greet"]

if {$i > -1} {
	set line [lindex $data $i]
	set delete [lreplace $data $i $i]
	set file [open $new_dir "w"] 
	puts $file [join $delete "\n"]
	close $file	
				}
			}
	set file [open $new_dir "r"]
	set w [read -nonewline $file]
	close $file
if {$w == ""} {
	set file [open $new_dir "w"]
	close $file
			}
	blacktools:tell $nick $host $hand $chan $chan1 greet.10 $counter
		}

set {
	set counter -1
	set list_counter 0
	array set greetset [list]
	set current_place -1
	set last_message ""
	set last_place -1
if {$number == ""} {
	blacktools:tell $nick $host $hand $chan $chan1 greet.12 none
	return
}
	set file [open $new_dir "r"]
	set w [read -nonewline $file]
	close $file
	set data [split $w "\n"]
foreach line $data {
	set counter [expr $counter + 1]
	set channel [lindex [split $line] 0]
if {[string equal -nocase $channel $chan]} {
	set list_counter [expr $list_counter + 1]
	set greetset($list_counter) $counter 
	
	}
}

foreach place [array names greetset] {
if {$place == $number} {
	set current_place $greetset($place)
	}
}
if {$current_place == "-1"} {
	blacktools:tell $nick $host $hand $chan $chan1 greet.13 none	
	return	
}
	set current_line [lindex $data $current_place]
	set status [lindex [split $current_line] 1]
if {$status == "1"} {
	blacktools:tell $nick $host $hand $chan $chan1 greet.14 none
}
	set current_message [join [lrange [split $current_line] 2 end]]
	
	set file [open $new_dir "r"]
	set w [read -nonewline $file]
	close $file
	set data [split $w "\n"]
	set counter -1
foreach line $data {
	set counter [expr $counter + 1]
	set channel [lindex [split $line] 0]
	set message [join [lrange [split $line] 2 end]]
if {[string equal -nocase $chan $channel]} {
	set status [lindex [split $line] 1]
if {$status == "1"} {	
	set delete [lreplace $data $counter $counter]
	set last_place $counter
	set last_message $message
	set file [open $new_dir "w"] 
	puts $file [join $delete "\n"]
	close $file
		}	
	}
}
	set file [open $new_dir "r"]
	set w [read -nonewline $file]
	close $file
	set data [split $w "\n"]
	set insert [linsert $data $last_place "$chan 0 $last_message"]
	set file [open $new_dir w]
	puts $file [join $insert "\n"]
	close $file
	
	set file [open $new_dir "r"]
	set w [read -nonewline $file]
	close $file
	set data [split $w "\n"]
	
	
	set delete [lreplace $data $current_place $current_place]
	set file [open $new_dir "w"] 
	puts $file [join $delete "\n"]
	close $file	
	
	
	set file [open $new_dir "r"]
	set w [read -nonewline $file]
	close $file
	set data [split $w "\n"]
	
	set insert [linsert $data $current_place "$chan 1 $current_message"]
	set file [open $new_dir w]
	puts $file [join $insert "\n"]
	close $file
	
	blacktools:tell $nick $host $hand $chan $chan1 greet.15 $number
		}
	}
}

proc greetpublic:join {nick host hand chan} {
global black username count
	set new_dir "scripts/BlackTools/FILES/$username.greets.txt"
	set current_greet ""
if {![validchan $chan]} { return }
if {[channel get $chan greet]} {
if {[isbotnick $nick]} { return }

if {[info exists black(turnOnFlood:$chan)]} {
	return
}

	set replace(%nick%) $nick
	set file [open $new_dir "r"]
	set data [read -nonewline $file]
	close $file
if {$data == ""} { return }
	set lines [split $data "\n"]
foreach line $lines {
	set channel [lindex [split $line] 0]
	set status [lindex [split $line] 1]
if {[string equal -nocase $channel $chan] && ($status == "1")} {
	set message [join [lrange [split $line] 2 end]]
	set current_greet $message
	}
}
	set the_message [string map [array get replace] $current_greet]
	set split_message [split $the_message "~"]
foreach message $split_message {
if {$black(howgreet) == "1"} {
	puthelp "NOTICE $nick :$message"
} else { puthelp "PRIVMSG $nick :$message" }
		}
	}
}

################################ Leave ###################################

proc leavepublic {nick host hand chan arg} {
global black
	set who [lindex [split $arg] 0]
	set type 0
	set chan1 "$chan"
	set leave [join [lrange [split $arg] 1 end]]
	set number [lindex [split $arg] 1]
if {[regexp {^[&#]} $who] && [matchattr $hand nm|M $who]} {
	set chan "$who"
	set who [lindex [split $arg] 1]
	set leave [join [lrange [split $arg] 2 end]]
	set number [lindex [split $arg] 2]
}
	leave:process $who $leave $number $type $nick $host $hand $chan $chan1
}


proc leave:process {who leave number type nick host hand chan chan1} {
global botnick black username
	set char(p) [lindex $black(cmdchar) 0]
	set new_dir "scripts/BlackTools/FILES/$username.leave.txt"
	
if {[string match -nocase "none" "$char(p)"]} {
	set char(p) ""
} 
if {($who == "") && ($type == "0")} {
	blacktools:tell $nick $host $hand $chan $chan1 leave.1 none
	return
}
if {($who == "") && ($type == "1")} {
	blacktools:tell $nick $host $hand $chan $chan1 leave.2 none
	return
	}

if {![validchan $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.novalidchan none
	return
}
if {![onchan $botnick $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.notonchan none
	return
}


    switch $who {

on {
	channel set $chan +leave
	blacktools:tell $nick $host $hand $chan $chan1 leave.3 none
}

off {
	channel set $chan -leave
	blacktools:tell $nick $host $hand $chan $chan1 leave.4 none
}

add {
	set counter -1
	set file [open $new_dir "r"]
	set w [read -nonewline $file]
	close $file
	set data [split $w "\n"]
	set current -1
foreach line $data {
	set counter [expr $counter + 1]
	set channel [lindex [split $line] 0]
if {[string equal -nocase $chan $channel]} {
	set status [lindex [split $line] 1]
if {$status == "1"} {	
	set message [join [lrange [split $line] 2 end]]
	set delete [lreplace $data $counter $counter]
	set file [open $new_dir "w"] 
	puts $file [join $delete "\n"]
	close $file
	set file [open $new_dir a]
	puts $file "$chan 0 $message"
	close $file
		}	
	}
}
	set file [open $new_dir a]
	puts $file "$chan 1 $leave"
	close $file
	
	blacktools:tell $nick $host $hand $chan $chan1 leave.5 none
	blacktools:tell $nick $host $hand $chan $chan1 leave.6 $leave
}

list {
	set file [open $new_dir "r"]
	set w [read -nonewline $file]
	close $file
	set data [split $w "\n"]
	set i 0
	set found_it 0
if {$data == ""} { blacktools:tell $nick $host $hand $chan $chan1 leave.7 none
	return
}
	blacktools:tell $nick $host $hand $chan $chan1 leave.8 none
foreach mes $data {
	set channel [lindex [split $mes] 0]
if {[string equal -nocase $channel $chan]} {
	set i [expr $i +1]
	set found_it 1
	set message [join [lrange [split $mes] 2 end]]
	set status [lindex [split $mes] 1]
if {$status == 1} {
	blacktools:tell $nick $host $hand $chan $chan1 leave.6 "\002\[ON\]\002   $i. $message"
			} else {
	blacktools:tell $nick $host $hand $chan $chan1 leave.6 "\[OFF\] $i. $message"	
			}
		}
	}
if {$found_it == "0"} {
	blacktools:tell $nick $host $hand $chan $chan1 leave.7 none
	} else {
	blacktools:tell $nick $host $hand $chan $chan1 leave.11 none
	}
}

del {
	set file [open $new_dir "r"]
	set w [read -nonewline $file]
	close $file
	set data [split $w "\n"]
	set counter 0
	
foreach line $data {
	set the_leave [join [lrange [split $line] 2 end]]
	set channel [lindex [split $line] 0]
if {[string equal -nocase $channel $chan] && [string match -nocase $leave $the_leave]} {
	set counter [expr $counter + 1]
	}
}

for {set j 0} {$j < $counter} {incr j} {
	
	set file [open $new_dir "r"]
	set w [read -nonewline $file]
	close $file
	set data [split $w "\n"]
	set i [lsearch -glob $data "* $leave"]

if {$i > -1} {
	set line [lindex $data $i]
	set delete [lreplace $data $i $i]
	set file [open $new_dir "w"] 
	puts $file [join $delete "\n"]
	close $file	
				}
			}
	set file [open $new_dir "r"]
	set w [read -nonewline $file]
	close $file
if {$w == ""} {
	set file [open $new_dir "w"]
	close $file
			}
	blacktools:tell $nick $host $hand $chan $chan1 leave.10 $counter
		}

set {
	set counter -1
	set list_counter 0
	array set leaveset [list]
	set current_place -1
	set last_message ""
	set last_place -1
if {$number == ""} {
	blacktools:tell $nick $host $hand $chan $chan1 leave.12 none
	return
}
	set file [open $new_dir "r"]
	set w [read -nonewline $file]
	close $file
	set data [split $w "\n"]
foreach line $data {
	set counter [expr $counter + 1]
	set channel [lindex [split $line] 0]
if {[string equal -nocase $channel $chan]} {
	set list_counter [expr $list_counter + 1]
	set leaveset($list_counter) $counter 
	
	}
}

foreach place [array names leaveset] {
if {$place == $number} {
	set current_place $leaveset($place)
	}
}
if {$current_place == "-1"} {
	blacktools:tell $nick $host $hand $chan $chan1 leave.13 none	
	return	
}
	set current_line [lindex $data $current_place]
	set status [lindex [split $current_line] 1]
if {$status == "1"} {
	blacktools:tell $nick $host $hand $chan $chan1 leave.14 none
}
	set current_message [join [lrange [split $current_line] 2 end]]
	
	set file [open $new_dir "r"]
	set w [read -nonewline $file]
	close $file
	set data [split $w "\n"]
if {$data == ""} {
	set file [open $new_dir "w"] 
	close $file
}
	
	set file [open $new_dir "r"]
	set w [read -nonewline $file]
	close $file
	set data [split $w "\n"]
	set counter -1
foreach line $data {
	set counter [expr $counter + 1]
	set channel [lindex [split $line] 0]
	set message [join [lrange [split $line] 2 end]]
if {[string equal -nocase $chan $channel]} {
	set status [lindex [split $line] 1]
if {$status == "1"} {	
	set delete [lreplace $data $counter $counter]
	set last_place $counter
	set last_message $message
	set file [open $new_dir "w"] 
	puts $file [join $delete "\n"]
	close $file
		}	
	}
}
	set file [open $new_dir "r"]
	set w [read -nonewline $file]
	close $file
	set data [split $w "\n"]
	set insert [linsert $data $last_place "$chan 0 $last_message"]
	set file [open $new_dir w]
	puts $file [join $insert "\n"]
	close $file
	
	set file [open $new_dir "r"]
	set w [read -nonewline $file]
	close $file
	set data [split $w "\n"]
	
	set delete [lreplace $data $current_place $current_place]
	set file [open $new_dir "w"] 
	puts $file [join $delete "\n"]
	close $file	
	
	set file [open $new_dir "r"]
	set w [read -nonewline $file]
	close $file
	set data [split $w "\n"]
	
	set insert [linsert $data $current_place "$chan 1 $current_message"]
	set file [open $new_dir w]
	puts $file [join $insert "\n"]
	close $file
	
	blacktools:tell $nick $host $hand $chan $chan1 leave.15 $number
		}
	}
}

proc leavepublic:part {nick host hand chan args} {
global black username count
	set new_dir "scripts/BlackTools/FILES/$username.leave.txt"
	set current_leave ""
	set number [scan $black(leaveflood) %\[^:\]]
	set time [scan $black(leaveflood) %*\[^:\]:%s]
if {![validchan $chan]} { return }
if {[channel get $chan leave]} {
if {[isbotnick $nick]} { return }

foreach tmr [utimers] {
if {[string match "*count(leaveflood:$chan)*" [join [lindex $tmr 1]]]} {
	killutimer [lindex $tmr 2]
	}
}

if {[info exists black(leavestopped:$chan)]} {
	return
}

if {![info exists count(leaveflood:$chan)]} { 
	set count(leaveflood:$chan) 0 
}

	incr count(leaveflood:$chan)
	utimer $time [list unset count(leaveflood:$chan)]

if {$count(leaveflood:$chan) >= $number} {
	set black(leavestopped:$chan) 1
	utimer 60 [list unset black(leavestopped:$chan)]
	return
}
	set replace(%nick%) $nick
	set file [open $new_dir "r"]
	set data [read -nonewline $file]
	close $file
if {$data == ""} { return }
	set lines [split $data "\n"]
foreach line $lines {
	set channel [lindex [split $line] 0]
	set status [lindex [split $line] 1]
if {[string equal -nocase $channel $chan] && ($status == "1")} {
	set message [join [lrange [split $line] 2 end]]
	set current_greet $message
	}
}
	set the_message [string map [array get replace] $current_greet]
	set split_message [split $the_message "~"]
foreach message $split_message {
if {$black(howleave) == "1"} {
	puthelp "NOTICE $nick :$message"
} else { puthelp "PRIVMSG $nick :$message" }
		}
	}
}

################################ Idle ###################################


proc antidlepublic {nick host hand chan arg} {
global black
	set char(p) [lindex $black(cmdchar) 0]
if {[string match -nocase "none" "$char(p)"]} {
	set char(p) ""
} 
	set type1 0
	set chan1 "$chan"	
	set why [lindex [split $arg] 0]
	set type [lindex [split $arg] 1]
	set user [lindex [split $arg] 1]
	set host [lindex [split $arg] 2]
if {[regexp {^[&#]} $why] && [matchattr $hand nm|M $why]} {
	set chan "$why"
	set why [lindex [split $arg] 1]
	set type [lindex [split $arg] 2]
	set user [lindex [split $arg] 2]
	set host [lindex [split $arg] 3]
}
	antidle:process $why $type $type1 $user $host $nick $hand $chan $chan1
}

proc antidle:process {why type type1 user host nick hand chan chan1} {
global botnick black
	set flag "-|f"
	set char(p) [lindex $black(cmdchar) 0]
if {[string match -nocase "none" "$char(p)"]} {
	set char(p) ""
} 
	set handle [nick2hand $user]
	
if {($why == "") && ($type1 == "0")} {
	blacktools:tell $nick $host $hand $chan $chan1 idle.1 none
	return
}
if {($why == "") && ($type1 == "1")} {
	blacktools:tell $nick $host $hand $chan $chan1 idle.3 none
	return
	}

if {![validchan $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.novalidchan none
	return
}
if {![onchan $botnick $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.notonchan none
	return
}

switch $why {

on {
	channel set $chan +antidle
	blacktools:tell $nick $host $hand $chan $chan1 idle.7 none
}
off {

	channel set $chan -antidle	
	blacktools:tell $nick $host $hand $chan $chan1 idle.8 none
}

op {
 if {$type == ""} { blacktools:tell $nick $host $hand $chan $chan1 idle.9 none
	return
}
if {[string match -nocase $type "on"]} {
if {[channel get $chan antidle]} { set antidle "on" } else { set antidle "off"}
if {$antidle == "off"} { blacktools:tell $nick $host $hand $chan $chan1 idle.10 none
	return
}
	channel set $chan +antididle
	blacktools:tell $nick $host $hand $chan $chan1 idle.11 none
}

if {[string match -nocase $type "off"]} {
if {[channel get $chan antidle]} { set antidle "on" } else { set antidle "off"}
if {$antidle == "off"} { blacktools:tell $nick $host $hand $chan $chan1 idle.10 none
	return
}
	channel set $chan -antididle
	blacktools:tell $nick $host $hand $chan $chan1 idle.12 none
	}
}

voice {
 if {$type == ""} { blacktools:tell $nick $host $hand $chan $chan1 idle.13 none	
	return
}

if {[string match -nocase $type "on"]} {

if {[channel get $chan antidle]} { set antidle "on" } else { set antidle "off"}
if {$antidle == "off"} { blacktools:tell $nick $host $hand $chan $chan1 idle.10 none
	return
}
	channel set $chan +antividle
	blacktools:tell $nick $host $hand $chan $chan1 idle.14 none
}

if {[string match -nocase $type "off"]} {
if {[channel get $chan antidle]} { set antidle "on" } else { set antidle "off"}
if {$antidle == "off"} { blacktools:tell $nick $host $hand $chan $chan1 idle.10 none
	return
}

	channel set $chan -antividle
	blacktools:tell $nick $host $hand $chan $chan1 idle.15 none
	}
}

add {

if {$user == ""} { blacktools:tell $nick $host $hand $chan $chan1 idle.16 none
	return
}

if {[onchan $user $chan]} {
	set getuser [nick2hand $user]
if {$getuser != "*"} {
	set user $getuser
	}
}

if {[validuser $user]} { 
	chattr $user $flag $chan	
	blacktools:tell $nick $host $hand $chan $chan1 idle.18 $user
} else {
	set hosts [getchanhost $user $chan]
	set uhost "*!*@[lindex [split $hosts @] 1]"
	adduser $user $uhost
	chattr $user $flag $chan
	blacktools:tell $nick $host $hand $chan $chan1 idle.19 "$user $uhost"
	}
}

list {
	set list [userlist "-|f" $chan]
	blacktools:tell $nick $host $hand $chan $chan1 idle.20 "none"
if {$list == ""} {set list "NONE"}
	blacktools:tell $nick $host $hand $chan $chan1 idle.21 "$list"
}

del {

if {[onchan $user $chan]} {
	set getuser [nick2hand $user]
if {$getuser != "*"} {
	set user $getuser
	}
}

if {![validuser $user]} { 
	blacktools:tell $nick $host $hand $chan $chan1 idle.22 "$user"
	return
}

if {![matchattr $user "-|f" $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 idle.23 "$user"
	return
}
	chattr $user -|-f $chan
	blacktools:tell $nick $host $hand $chan $chan1 idle.24 "$user"
		}
	}
}

proc idlewhoispublic {min hour day mon year} {
global black botnick
if {([scan $min %d]+([scan $hour %d]*60)) % $black(idleinterval) == 0} {

if {[info exists black(idle_chans)]} {
	unset black(idle_chans)
}
	foreach chan [channels] {
if {[channel get $chan antidle] && [botisop $chan]} {
	lappend black(idle_chans) $chan
		}
	}
	if {[info exists black(idle_chans)]} {
	black:check:idle
		}
	}
}

proc black:check:idle {} {
	global black botnick
foreach chan $black(idle_chans) {
	putlog "\[BlackTools\] Scanning for idle on $chan"
foreach user [chanlist $chan] { 
	set handle [nick2hand $user]
if {[isop $user $chan] || [isvoice $user $chan]} { 
if {$user != $botnick} { 
	putserv "WHOIS $user $user"
				}
			}	
		}
	}
	bind raw - 317 idleprocespublic
} 			

proc idleprocespublic {nick int arg} {
global black
	set nick [string tolower [lindex $arg 1]]
	set handle [nick2hand $nick]
	set idler [string tolower [lindex $arg 2]]
	set minutesidle [expr $idler / 60]
foreach chan $black(idle_chans) {
if {[onchan $nick $chan]} {
	set idlevoicetime [channel get $chan idlevoicemax]
if {$idlevoicetime == "0"} { set idlevoicetime "$black(idlevoicemax)" }
	set idleoptime [channel get $chan idleopmax]
if {$idleoptime == "0"} { set idleoptime "$black(idleopmax)" }
if {[channel get $chan antividle]} {
if {![matchattr $handle "-|gf" $chan]} {
if {$minutesidle > $idlevoicetime} {
	putquick "MODE $chan -v $nick"
		}
	}
}

if {[channel get $chan antididle]} {
if {![matchattr $handle "-|af" $chan]} {
if {$minutesidle > $idleoptime} {
	putquick "MODE $chan -o $nick"
				}
			}
		}
	}
}
#	unbind raw - 317 idleprocespublic	
}

##################################Auto User Expire ################################

proc user:autoexpire {minute hour day month year} {
	global black
	set counter 0
	set max_time [expr 86400 * $black(user_expire_time)]
foreach user [userlist] {
	set laston [getuser $user laston]

if {$laston == ""} {
	set laston [getuser $user XTRA created]
} else {
	set laston [lindex $laston 0]
}
	set user_time [expr [unixtime] - $laston]
if {$user_time > $max_time} {
	set counter [expr $counter + 1]
	deluser $user
	}
}
	putlog "\[BlackTools\] User Auto Expire : Found $counter expired users."
}

######################################### AntiBotIdle #############################


proc botidlepublic {nick host hand chan arg} {
global black botnick username
	set sdir "scripts/BlackTools/FILES/$username.status.txt"
	set what [lindex [split $arg] 0]
	set lin 0	
	set chan1 "$chan"
	set char(p) [lindex $black(cmdchar) 0]
if {[string match -nocase "none" "$char(p)"]} {
	set char(p) ""
} 
if {$what == ""} { blacktools:tell $nick $host $hand $chan $chan1 antibotidle.1 none
	return
}
	botidle:process $nick $host $hand $chan $chan1 $what
}

proc botidle:process {nick host hand chan chan1 what} {
global botnick black sdir username
	set lin 0
switch -exact -- [string tolower $what] {
on {
	set type "antibotidle:module ON"
foreach tmr [timers] {
if {[string match "*antibotidle:module*" [join [lindex $tmr 1]]]} {
	blacktools:tell $nick $host $hand $chan $chan1 antibotidle.3 none
	return
	}
}
	set file [open $sdir "r"]
	set database [read -nonewline $file]
	close $file
	set data [split $database "\n"]
foreach line $data {
	set lin [expr $lin +1]
	set who [lindex  [split $line] 0]
	set stats [lindex [split $line] 1]
if {[string match -nocase "antibotidle:module" $who]} {
if {$line != ""} {
	set num [expr $lin - 1]
	set delete [lreplace $data $num $num]
	set files [open $sdir "w"]
	puts $files [join $delete "\n"]
	close $files
		}
	}
}
	set file [open $sdir "r"]
	set data [read -nonewline $file]
	close $file
if {$data == ""} {
	set files [open $sdir "w"]
	close $files
}
	set file [open $sdir "a"]
	puts $file "$type"
	close $file	
	blacktools:tell $nick $host $hand $chan $chan1 antibotidle.4 none
	timer $black(noidlemax) antibotidle:module
	set antibotidle:module_running 1
}

off {
	blacktools:tell $nick $host $hand $chan $chan1 antibotidle.5 none
	set type "antibotidle:module OFF"
foreach tmr [timers] {
if {[string match "*antibotidle:module*" [join [lindex $tmr 1]]]} {
	killtimer [lindex $tmr 2]
	}
}
	set file [open $sdir "r"]
	set database [read -nonewline $file]
	close $file
	set data [split $database "\n"]
foreach line $data {
	set lin [expr $lin +1]
	set who [lindex  [split $line] 0]
	set stats [lindex [split $line] 1]
if {[string match -nocase "antibotidle:module" $who]} {
if {$line != ""} {
	set num [expr $lin - 1]
	set delete [lreplace $data $num $num]
	set files [open $sdir "w"]
	puts $files [join $delete "\n"]
	close $files
		}
	}
}
	set file [open $sdir "r"]
	set data [read -nonewline $file]
	close $file
if {$data == ""} {
	set files [open $sdir "w"]
	close $files
}
	set file [open $sdir "a"]
	puts $file "$type"
	close $file
if {[info exists antibotidle:module_running]} {
	unset antibotidle:module_running
			}		
		}
	}
}

proc antibotidle:module {} {
global black
	putquick "PRIVMSG $black(noobject) :"
	timer $black(noidlemax) antibotidle:module
	return
}


################################## next #######################################

proc black:next:join {nick host hand chan} {	
		global black
		set counter 0
		set time [unixtime]
		set handle [nick2hand $nick]
		set lang [channel get $chan lang]
if {$lang == ""} { set lang [string tolower $black(default_lang)] }
if {[channel get $chan next]} {
if {[matchattr $handle $black(exceptflags) $chan]} { 
	putserv "MODE $chan +v $nick"
	return
}
if {[isbotnick $nick]} { 
	black:next:joincheck $chan
	return
}

if {[info exists black(next:$chan:list)]} {
if {[lsearch -exact [string tolower $black(next:$chan:list)]  [string tolower $nick]] == -1} {
	set black(next:$chan:list) [linsert $black(next:$chan:list) end $nick]
	set black(next:$chan:$nick:time) $time
	}
} else {
	set black(next:$chan:list) $nick
	set black(next:$chan:$nick:time) $time
}
foreach name $black(next:$chan:list) {
	set get_hand [nick2hand $name]
	
if {$name != ""} {
if {![matchattr $get_hand $black(exceptflags) $chan]} {	
if {[onchan $name $chan]} {
set counter [expr $counter +1]
			}
		}
	}
}

	set backchan [channel get $chan next-backchan]
	set replace(%counter%) $counter
	set replace(%nick%) $nick
	set replace(%chan%) $chan
if {($backchan != "") && [validchan $backchan]} {
	set message [string map [array get replace] $black(say.$lang.next.6)]
	puthelp "NOTICE $backchan :$message"
		}
	set message [string map [array get replace] $black(say.$lang.next.1)]
	puthelp "NOTICE $nick :$message"
	}
}

proc black:next:clear:all {nick chan} {
	global black
if {[lsearch -exact [string tolower $black(next:$chan:list)]  [string tolower $nick]] > -1} {
	set position [lsearch -exact [string tolower $black(next:$chan:list)] [string tolower $nick]]
	set black(next:$chan:list) [lreplace $black(next:$chan:list) $position $position]
}	
if {[info exists black(next:$chan:$nick:time)]} {
	unset black(next:$chan:$nick:time)
}
	
if {[info exists black(next:$chan:list)]} {
if {$black(next:$chan:list) == ""} {
	unset black(next:$chan:list)	
		}	
	}
}

proc black:next:clear {nick chan} {
	global black
if {[lsearch -exact [string tolower $black(next:$chan:list)]  [string tolower $nick]] > -1} {
	set position [lsearch -exact [string tolower $black(next:$chan:list)] [string tolower $nick]]
	set black(next:$chan:list) [lreplace $black(next:$chan:list) $position $position]
}
if {[info exists black(next:$chan:$nick:time)]} {	
	unset black(next:$chan:$nick:time)
	}
}

proc black:next:joincheck {chan} {
global black
if {[info exists black(next:$chan:list)]} {
foreach user [join $black(next:$chan:list)] {
if {(![onchan $user $chan]) || [isvoice $user $chan] || [isop $user $chan]} {
	black:next:clear:all $user $chan
			}
		}
	}
}
proc black:next:part {nick host hand chan arg} {
	global black
if {![validchan $chan]} { return }
if {[channel get $chan next]} {
if {![info exists black(next:$chan:list)]} {
	return
		}
	black:next:clear:all $nick $chan
	}
}

proc black:next:sign {nick host hand chan arg} {
	global black
if {[channel get $chan next]} {
if {![info exists black(next:$chan:list)]} {
	return
		}
	black:next:clear:all $nick $chan
	}
}

proc black:next:split {nick host hand chan args} {
	global black
if {[channel get $chan next]} {
if {![info exists black(next:$chan:list)]} {
	return
		}
black:next:clear:all $nick $chan
	}
}

proc black:next:kick {nick host hand chan kicked arg} {
	global black
if {[channel get $chan next]} {
if {![info exists black(next:$chan:list)]} {
	return
		}
black:next:clear:all $kicked $chan
	}
}

proc black:next:mode {nick host hand chan moded mod_nick} {
	global black
if {[channel get $chan next]} {
if {($moded == "+v") || ($moded == "+o")} {	
if {![info exists black(next:$chan:list)]} {
	return
			}
	black:next:clear:all $mod_nick $chan
		}
	}
}

proc black:next:chnick {nick host hand chan newnick} {
global black
if {[channel get $chan next]} {
if {[info exists black(next:$chan:served)]} {
if {[lsearch -exact [string tolower $black(next:$chan:served)]  [string tolower $nick]] > -1} {
	set position [lsearch -exact [string tolower $black(next:$chan:served)] [string tolower $nick]]
	set black(next:$chan:served) [lreplace $black(next:$chan:served) $position $position]
	set black(next:$chan:served) [linsert $black(next:$chan:served) $position $newnick]
	} 
}
if {[info exists black(next:$chan:list)]} {
if {[lsearch -exact [string tolower $black(next:$chan:list)]  [string tolower $nick]] > -1} {
	set position [lsearch -exact [string tolower $black(next:$chan:list)] [string tolower $nick]]
	set black(next:$chan:list) [lreplace $black(next:$chan:list) $position $position]
	set black(next:$chan:list) [linsert $black(next:$chan:list) $position $newnick]
	set black(next:$chan:$newnick:time) $black(next:$chan:$nick:time)
			}
		}
	}
}

proc nextpublic:cmd {nick host hand chan arg} {
	global black
	set option [lindex [split $arg] 0]
	set chan1 $chan
foreach c [channels] {
	set backchan [channel get $c next-backchan]
if {[string match -nocase $chan $backchan] && [channel get $c next]} {
	set chan "$c"
	
	}
}
		nextpublic:process $nick $host $hand $chan $chan1 $option
}


proc nextpublic:process {nick host hand chan chan1 option} {
	global black
	
if {![channel get $chan next]} {	
	return
}

if {$option != ""} {

switch -exact -- [string tolower $option] {

list  {
	set counter 0
	blacktools:tell $nick $host $hand $chan $chan1 next.7 none
if {![info exists black(next:$chan:list)]} {
	blacktools:tell $nick $host $hand $chan $chan1 next.8 none
	return
}
if {$black(next:$chan:list) == ""} {
	blacktools:tell $nick $host $hand $chan $chan1 next.8 none
	return	
}
foreach name $black(next:$chan:list) {
if {$name != ""} {
	set get_hand [nick2hand $name]
if {![matchattr $get_hand $black(exceptflags) $chan]} { 	
	set counter [expr $counter + 1]
	lappend field_name "$counter. $name "
		}
	}
}
if {![info exists field_name]} {
	blacktools:tell $nick $host $hand $chan $chan1 next.8 none
	return
}
	blacktools:tell $nick $host $hand $chan $chan1 next.9 [join $field_name]
		}
	}
	return
}

if {![info exists black(next:$chan:list)]} {
	blacktools:tell $nick $host $hand $chan $chan1 next.10 none
	return
}

if {[llength black(next:$chan:list)] < 0} {
	blacktools:tell $nick $host $hand $chan $chan1 next.10 none
	return
}

	set current_nick [lindex $black(next:$chan:list) 0]
	set backchan [channel get $chan next-backchan]
	set lang [channel get $chan lang]
if {$lang == ""} { set lang [string tolower $black(default_lang)] }
	set replace(%current%) $current_nick
	set replace(%nick%) $nick
	set replace(%hand%) $hand
	set message [string map [array get replace] $black(say.$lang.next.11)]
if {($backchan != "") && [validchan $backchan]} {	
	puthelp "PRIVMSG $backchan :$message"
}
	set time [duration [expr [unixtime] - $black(next:$chan:$current_nick:time)]]
	set message_1 [string map [array get replace] $black(say.$lang.next.2)]
	puthelp "NOTICE $current_nick :$message_1"
	blacktools:tell $nick $host $hand $chan $chan1 next.3 "$current_nick $time"
	black:next:clear $current_nick $chan
	putserv "MODE $chan +v $current_nick"
	
if {[info exists black(next:$chan:served)]} {
if {[lsearch -exact [string tolower $black(next:$chan:served)] [string tolower $current_nick]] == -1} {
	set black(next:$chan:served) [linsert $black(next:$chan:served) end $current_nick]
	}	
} else {
	set black(next:$chan:served) $current_nick
	}
}

proc helpedpublic:cmd {nick host hand chan arg} {
	global black
	set user [lindex [split $arg] 0]
	set chan1 $chan
foreach c [channels] {
	set backchan [channel get $c next-backchan]
if {[string match -nocase $chan $backchan] && [channel get $c next]} {
	set chan "$c"
	}
}
	helpedpublic:process $nick $host $hand $chan $chan1 $user
}


proc helpedpublic:process {nick host hand chan chan1 user} {
	global black
	set handle [nick2hand $user]
	
if {![channel get $chan next]} {	
	return
}
if {[isbotnick $user]} { return }

if {[matchattr $handle $black(exceptflags) $chan]} { 
	return
}	
if {$user == ""} {
	blacktools:tell $nick $host $hand $chan $chan1 next.12 none
	return
}
if {![onchan $user $chan]} { 
	blacktools:tell $nick $host $hand $chan $chan1 gl.usernotonchan $user	
	return
}

if {[info exists black(next:$chan:list)]} {
if {([lsearch -exact [string tolower $black(next:$chan:list)] [string tolower $user]] > -1)} {
	blacktools:tell $nick $host $hand $chan $chan1 next.13 $user
	return
	}	
} 

if {[info exists black(next:$chan:served)]} {
	if {[lsearch -exact [string tolower $black(next:$chan:served)]  [string tolower $user]] > -1} {
	set entry_find 1
	set position [lsearch -exact [string tolower $black(next:$chan:served)] [string tolower $user]]
	set black(next:$chan:served) [lreplace $black(next:$chan:served) $position $position]
}	
	} else { 
	blacktools:tell $nick $host $hand $chan $chan1 next.14 $user
	return
}

if {![info exists entry_find]} {
	blacktools:tell $nick $host $hand $chan $chan1 next.14 $user
	return
}

	set backchan [channel get $chan next-backchan]
	set lang [channel get $chan lang]
if {$lang == ""} { set lang [string tolower $black(default_lang)] }
	set replace(%current%) $user
	set replace(%nick%) $nick
	set replace(%hand%) $hand
	set replace(%chan%) $chan
	set message [string map [array get replace] $black(say.$lang.next.15)]
if {($backchan != "") && [validchan $backchan]} {	
	puthelp "PRIVMSG $backchan :$message"
}
if {[isvoice $user $chan]} {
	putserv "MODE $chan -v $user"
}
	set message_1 [string map [array get replace] $black(say.$lang.next.4)]
	puthelp "NOTICE $user :$message_1"
}


proc noidlepublic:cmd {nick host hand chan arg} {
	global black
	set user [lindex [split $arg] 0]
	set chan1 $chan
foreach c [channels] {
	set backchan [channel get $c next-backchan]
if {[string match -nocase $chan $backchan] && [channel get $c next]} {
	set chan "$c"

		}
	}
	noidlepublic:process $nick $host $hand $chan $chan1 $user
}

proc noidlepublic:process {nick host hand chan chan1 user} {
	global black
	set handle [nick2hand $user]
if {![channel get $chan next]} {
	return
}	
if {[isbotnick $user]} { return }

if {[matchattr $handle $black(exceptflags) $chan]} { 
	return
}	
if {$user == ""} {
	blacktools:tell $nick $host $hand $chan $chan1 next.16 none
	return
}
if {![onchan $user $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.usernotonchan $user
	return
}

if {[info exists black(next:$chan:list)]} {
if {([lsearch -exact [string tolower $black(next:$chan:list)]  [string tolower $user]] > -1)} {
	blacktools:tell $nick $host $hand $chan $chan1 next.13 $user
	return
	}	
}
if {([lsearch -exact [string tolower $black(next:$chan:served)] [string tolower $user]] > -1) || [info exists black(next:$chan:$nick:served)]} {
	blacktools:tell $nick $host $hand $chan $chan1 next.17 $user
	return
}
	set backchan [channel get $chan next-backchan]
	set lang [channel get $chan lang]
if {$lang == ""} { set lang [string tolower $black(default_lang)] }

if {[channel get $chan next-noidlereason] == ""} {
	set replace(%chan%) $chan
	set message [string map [array get replace] $black(say.$lang.next.5)]
	set reason $message
} else { set reason [channel get $chan next-noidlereason] }

if {[channel get $chan next-bantime] == "0"} {
	set time $black(nextbantime)
} else { set time [channel get $chan next-bantime] }
	set banmask *!*@[lindex [split [getchanhost $user $chan] "@"] 1]
	newchanban $chan $banmask "NOIDLE" $reason $time
}

proc skippublic:cmd {nick host hand chan arg} {
	global black
		set user [lindex [split $arg] 0]
		set chan1 $chan
foreach c [channels] {
	set backchan [channel get $c next-backchan]
if {[string match -nocase $chan $backchan] && [channel get $c next]} {
	set chan "$c"

	}
}
	skippublic:process $nick $host $hand $chan $chan1 $user	
}

proc skippublic:process {nick host hand chan chan1 user} {
	global black

if {![channel get $chan next]} {
	return
}

if {$user == ""} {
	blacktools:tell $nick $host $hand $chan $chan1 next.18 none
	return
}

if {![onchan $user $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.usernotonchan $user
	return
}

if {[info exists black(next:$chan:list)]} {
if {[lsearch -exact [string tolower $black(next:$chan:list)]  [string tolower $user]] > -1} {
	set position [lsearch -exact [string tolower $black(next:$chan:list)]  [string tolower $user]]
	} else {
	blacktools:tell $nick $host $hand $chan $chan1 next.14 $user
}
	} else {
	blacktools:tell $nick $host $hand $chan $chan1 next.10 none
	return
}
	set black(next:$chan:list) [lreplace $black(next:$chan:list) $position $position]
	set black(next:$chan:list) [linsert $black(next:$chan:list) end $user]

	blacktools:tell $nick $host $hand $chan $chan1 next.19 $user
}

proc black:next:checklist  {min hour day mon year} {
	global black
if {([scan $min %d]+([scan $hour %d]*60)) % 5 == 0} { 
foreach chan [channels] {
if {[channel get $chan next]} {
	black:next:joincheck $chan
			}
		}
	}
}

############################## login check ##############################


proc black:login:yes {nick host hand text {dest ""}} {
	global black
if {$nick == "X"} {
if {[info exists black(logged)]} { return }
	set black(logged) 1
	putlog "\[BlackTools\] Login succeded"
	}
}

proc black:login:no {nick host hand text {dest ""}} {
	global black
if {$nick == "X"} {
	set black(notlogged) 1
	putlog "\[BlackTools\] Login unsuccesful"
	}		
}

proc timer:login:check {min hour day mon year} {
	global black
if {[info exists black(logged)]} { return }
if {[info exists black(notlogged)]} { return }
if {![info exists black(logged)] && ![info exists black(notlogged)] } {
	loginpublic my
	}
}

proc add:home:chan {chan} {
	global black
	addchan:stats $chan "HOMECHAN" "NONE"
	channel add $chan
}