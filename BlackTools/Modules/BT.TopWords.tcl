#########################################################################
##          BlackTools - The Ultimate Channel Control Script           ##
##                    One TCL. One smart Eggdrop                       ##
#########################################################################
###########################   TOPWORDS TCL   ############################
#########################################################################
##						                       ##
##   BlackTools  : http://blacktools.tclscripts.net	               ##
##   Bugs report : http://www.tclscripts.net/	                       ##
##   GitHub page : https://github.com/tclscripts/BlackToolS-TCL        ##
##   Online Help : irc://irc.undernet.org/tcl-help 	               ##
##                 #TCL-HELP / UnderNet                                ##
##                 You can ask in english or romanian                  ##
##					                               ##
#########################################################################

proc topwords:delexcept {user nick host hand chan chan1} {
	global black
	set user [join $user]
	set show_user [split $user]	
if {[onchan $user $chan]} {
	set getuser [nick2hand $user]
if {$getuser != "*"} {
	set user $getuser
	}
}

if {![validuser $user]} { 
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomem none
	return
}

if {![matchattr $user "-|w" $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 topwords.20 "$show_user"
	return
}
	chattr $user -|-w $chan
	blacktools:tell $nick $host $hand $chan $chan1 topwords.21 "$show_user"
}

proc topwords:addexcept {user nick host hand chan chan1} {
	global black
	set user [join $user]
	set show_user [split $user]
if {![onchan $user $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.usernotonchan $show_user
	return
}
	set mask [return_mask [return_host_num "topwords" $chan [getchanhost $user $chan]] [getchanhost $user $chan] $user]
	
if {[validuser $user]} {
	set user $user
} else {
if {[nick2hand $user] == "*"} {
	set user $user
	} else {
	set user [nick2hand $user]
	}	
}
foreach usr [userlist] {
	set hst [getuser $usr hosts]
foreach hhost $hst {
if {[string match -nocase $hhost $mask] && (![string match -nocase $usr $user])} {
	blacktools:tell $nick $host $hand $chan $chan1 add.5 [split $usr]
	set user $usr
	set show_user [split $usr]
		}
	}
}

if {[validuser $user]} {
if {[matchattr $user -|w $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 topwords.17 $show_user
	return
}
	chattr $user -|+w $chan
	blacktools:tell $nick $host $hand $chan $chan1 topwords.15 $show_user
} else {
	adduser $user $mask
	chattr $user -|+w $chan
	blacktools:tell $nick $host $hand $chan $chan1 topwords.16 "$show_user $mask"
	}
}

proc topwords:process {nick host hand chan chan1 cmd type next} {
global botnick black username
	set topwords_file "$black(dirname)/BlackTools/FILES/TOPWORDS/$username.$chan.txt"
	set cmd_status [btcmd:status $chan $hand "topwords" 0]
if {$cmd_status == "1"} { 
	return 
}
if {[matchattr $hand q]} { blacktools:tell $nick $host $hand $chan $chan1 gl.glsuspend none
	return
}
if {[matchattr $hand -|q $chan]} { blacktools:tell $nick $host $hand $chan $chan1 gl.suspend none
	return
}
if {![setting:get $chan topwords]} {
	return
}
if {![validchan $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.novalidchan none
	return
}

if {![file isdirectory "$black(dirname)/BlackTools/FILES/TOPWORDS"]} {
	blacktools:tell $nick $host $hand $chan $chan1 topwords.7 none
	return
}
if {![file exists $topwords_file]} {
	blacktools:tell $nick $host $hand $chan $chan1 topwords.7 none
	return
}

if {[string equal -nocase $cmd "list"] && [matchattr $hand mno|MA $chan]} {
	set list [userlist "-|w" $chan]
	blacktools:tell $nick $host $hand $chan $chan1 topwords.18 "none"
if {$list == ""} {set list "N/A"}
	blacktools:tell $nick $host $hand $chan $chan1 topwords.19 "$list"
	return
}

if {[regexp {:} $cmd]} {
	set split_cmd [split $cmd ":"]
	set theuser [lindex $split_cmd 1]
if {[onchan $theuser $chan]} {
	set mask [return_mask [return_host_num "topwords" $chan [getchanhost $theuser $chan]] [getchanhost $theuser $chan] $theuser]
} else {
	set mask ""
}
	topwords:user $nick $host $hand $chan $chan1 $cmd $mask $type
	return
}

if {[string equal -nocase $cmd "del"] && [matchattr $hand mno|MA $chan]} {
if {$next == ""} {
switch $type {
	0 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr "topwords"
	}
	1 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_nick "topwords"
	}
	2 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_priv "topwords"
		}
	}
	return
}
	topwords:delexcept $next $nick $host $hand $chan $chan1
	return
}

if {[string equal -nocase $cmd "add"] && [matchattr $hand mno|MA $chan]} {
if {$next == ""} {
switch $type {
	0 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr "topwords"
	}
	1 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_nick "topwords"
	}
	2 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_priv "topwords"
		}
	}
	return
}
	topwords:addexcept $next $nick $host $hand $chan $chan1
	return
}
if {[string equal -nocase $cmd "reset"] && [matchattr $hand mno|M $chan]} {
	set reset [topwords:reset $chan]
if {$reset == "1"} {
	blacktools:tell $nick $host $hand $chan $chan1 topwords.8 none
} else {
	blacktools:tell $nick $host $hand $chan $chan1 topwords.10 none
}
	return
}
	array set topwordslist [list]
	set timestamp [clock format [clock seconds] -format {%Y%m%d%H%M%S}]
	set temp "$black(tempdir)/topwords_temp.$timestamp"
	set counter 0
	set file [open $topwords_file r]
	while {[gets $file line] != -1} {
	set read_chan [lindex [split $line] 0]
	set enc_chan [encoding convertfrom utf-8 $read_chan]
if {[string match -nocase $enc_chan $chan]} {
if {[string equal -nocase $cmd "total"]} {
	set words_count [lindex [split $line] 6]
} elseif {[string equal -nocase $cmd "week"]} {
	set words_count [lindex [split $line] 7]
} else {
	set words_count [lindex [split $line] 8]
}
	set read_nick [lindex [split $line] 1]
if {$words_count > 0} {
lappend topwordslist($words_count) $read_nick
		}
	}
}
	close $file
	set tempwrite [open $temp w]
	set latestuser ""
	set latesttime 0
foreach words [lsort -integer -decreasing [array names topwordslist]] {
	set counter [expr $counter + 1]
foreach user $topwordslist($words) {
	puts $tempwrite "$user $words $counter"
	}
}
	close $tempwrite

	set file [open $temp r]
	set w [read -nonewline $file]
	close $file
	set data [split $w "\n"]
	file delete $temp
if {$data == ""} {
if {[string equal -nocase $cmd "total"]} {
	blacktools:tell $nick $host $hand $chan $chan1 topwords.7 none
} elseif {[string equal -nocase $cmd "week"]} {
	blacktools:tell $nick $host $hand $chan $chan1 topwords.23 none
} else {
	blacktools:tell $nick $host $hand $chan $chan1 topwords.14 none
}
	return
}
if {[string equal -nocase $cmd "total"]} {
	module:getinfo $nick $host $hand $chan $chan1 $type $data "topwords:total" "0" $next
} elseif {[string equal -nocase $cmd "week"]} {
	module:getinfo $nick $host $hand $chan $chan1 $type $data "topwords:week" "0" $next
	} else {
	module:getinfo $nick $host $hand $chan $chan1 $type $data "topwords" "0" $next
	}
}

proc topwords:user {nick host hand chan chan1 user mask type1} {
	global black username
	set found_it 0
	set split_user [split $user ":"]
	set theuser [lindex $split_user 1]
	set type [lindex $split_user 0]
	set topwords_file "$black(dirname)/BlackTools/FILES/TOPWORDS/$username.$chan.txt"
switch $type {
	reset {
if {[matchattr $hand mno|MA $chan]} {
	set reset [topwords:user:reset $theuser $chan]
if {$reset == "1"} {
	blacktools:tell $nick $host $hand $chan $chan1 topwords.29 $theuser
} else {
	blacktools:tell $nick $host $hand $chan $chan1 topwords.4 $theuser
		}
	}
}
default {
	set file [open $topwords_file r]
	set size [file size $topwords_file]
	set data [split [read $file $size] \n]
	close $file
foreach line $data {
	set read_chan [lindex [split $line] 0]
	set enc_chan [encoding convertfrom utf-8 $read_chan]
	set read_user [lindex [split $line] 1]
	set read_mask [lindex [split $line] 2]
if {$mask != ""} {
if {[string equal -nocase $enc_chan $chan] && [string match -nocase $read_mask $mask]} {
	set found_it 1
	set read_user [lindex [split $line] 1]
	set get_lines [lrange [split $line] 3 5]
	set get_words [lrange [split $line] 6 8]
	set get_chars [lrange [split $line] 9 11]
	set get_actions [lrange [split $line] 12 14]
	set get_smiles [lrange [split $line] 15 17]
	set get_ques [lrange [split $line] 18 20]
	show:topwords:user $nick $host $hand $chan $chan1 $read_user $read_mask $get_lines $get_words $get_chars $get_actions $get_smiles $get_ques $type
	continue
	}
} elseif {[string equal -nocase $enc_chan $chan] && [string equal -nocase $read_user $theuser]} {
	set found_it 1
	set read_mask [lindex [split $line] 2]
	set get_lines [lrange [split $line] 3 5]
	set get_words [lrange [split $line] 6 8]
	set get_chars [lrange [split $line] 9 11]
	set get_actions [lrange [split $line] 12 14]
	set get_smiles [lrange [split $line] 15 17]
	set get_ques [lrange [split $line] 18 20]
	show:topwords:user $nick $host $hand $chan $chan1 $read_user $read_mask $get_lines $get_words $get_chars $get_actions $get_smiles $get_ques $type
	continue			
				}
			}
if {$found_it == "0"} {
	blacktools:tell $nick $host $hand $chan $chan1 topwords.27 $theuser
			}
		}	
	}	
}

proc topwords:user:reset {user chan} {
	global black username
	set topwords_file "$black(dirname)/BlackTools/FILES/TOPWORDS/$username.$chan.txt"
	set found_it 0
	set file [open $topwords_file r]
	set timestamp [clock format [clock seconds] -format {%Y%m%d%H%M%S}]
	set temp "$black(tempdir)/othermodule_temp.$timestamp"
	set tempwrite [open $temp w]
while {[gets $file line] != -1} {
	set getuser [lindex [split $line] 1]
if {[string equal -nocase $getuser $user]} {
	set found_it 1
	continue
		} else {
	puts $tempwrite $line
		}	 
	}
	close $tempwrite
	close $file
    file rename -force $temp $topwords_file
	return $found_it
}

proc show:topwords:user {nick host hand chan chan1 read_user read_mask get_lines get_words get_chars get_actions get_smiles get_ques type} {
	global black
	set place [getactivplace $read_mask $chan $type]
	set split_place [split $place ":"]
	set total [lindex $split_place 1]
	set theplace [lindex $split_place 0]
switch $type {
total {
	set lines [lindex $get_lines 0]
	set words [lindex $get_words 0]
	set chars [lindex $get_chars 0]
	set actions [lindex $get_actions 0]
	set smiles [lindex $get_smiles 0]
	set ques [lindex $get_ques 0]
	blacktools:tell $nick $host $hand $chan $chan1 topwords.22 "$read_user $read_mask $words $lines $chars $smiles $actions $ques $theplace $total"
}

week {
	set lines [lindex $get_lines 1]
	set words [lindex $get_words 1]
	set chars [lindex $get_chars 1]
	set actions [lindex $get_actions 1]
	set smiles [lindex $get_smiles 1]
	set ques [lindex $get_ques 1]
	blacktools:tell $nick $host $hand $chan $chan1 topwords.28 "$read_user $read_mask $words $lines $chars $smiles $actions $ques $theplace $total"
}

user {
	set lines [lindex $get_lines 2]
	set words [lindex $get_words 2]
	set chars [lindex $get_chars 2]
	set actions [lindex $get_actions 2]
	set smiles [lindex $get_smiles 2]
	set ques [lindex $get_ques 2]
	blacktools:tell $nick $host $hand $chan $chan1 topwords.3 "$read_user $read_mask $words $lines $chars $smiles $actions $ques $theplace $total"
		}
	}
}


proc getactivplace {host chan type} {
	global black username
	set topwords_file "$black(dirname)/BlackTools/FILES/TOPWORDS/$username.$chan.txt"
	array set activlist [list]
	set counter 0
	set all_count 0
	set place 0
	set file [open $topwords_file r]
while {[gets $file line] != -1} {
	set read_chan [lindex [split $line] 0]
	set enc_chan [encoding convertfrom utf-8 $read_chan]
if {[string equal -nocase $enc_chan $chan]} {
	set all_count [expr $all_count + 1]
if {[string equal -nocase $type "user"]} {
	set nr_words [lindex [split $line] 8]
} elseif {[string equal -nocase $type "week"]} {
	set nr_words [lindex [split $line] 7]
} elseif {[string equal -nocase $type "total"]} {
	set nr_words [lindex [split $line] 6]
}
	set read_host [lindex [split $line] 2]
	lappend activlist($nr_words) $read_host
		}
	}
	close $file
foreach h [lsort -integer -decreasing [array names activlist]] {
	set counter [expr $counter + 1]
if {[string equal -nocase $activlist($h) $host]} {
	set place $counter
	}
}	
if {$place == "0"} { set place $counter }
	return $place:$all_count
}

proc topwords:module {nick host hand chan arg} {
	global black username
	set arg [split $arg]
	set topwords_file "$black(dirname)/BlackTools/FILES/TOPWORDS/$username.$chan.txt"
	set mask [return_mask [return_host_num "topwords" $chan $host] $host $nick]
	set handle [nick2hand $nick]
	set topwords_run 0
if {[setting:get $chan topwords]} {
if {![file isdirectory "$black(dirname)/BlackTools/FILES/TOPWORDS/"]} {
	file mkdir "$black(dirname)/BlackTools/FILES/TOPWORDS/"
}
if {![file exists $topwords_file]} {
	set file [open $topwords_file w]
	close $file
}

	foreach tmr [timers] {
if {[string match "*blacktools:timers:runtime*" [join [lindex $tmr 1]]]} {
	set topwords_run 1
	}
}

if {$topwords_run == "0"} {
	return
}

if {[isbotnick $nick]} {
	return
}
if {[validuser $handle]} {
if {[matchattr $handle -|w $chan]} {
	return
	}
}
if {[setting:get $chan accessonly]} {
if {![validuser $handle]} {
	return
}
if {![matchattr $handle $black(exceptflags) $chan]} {
	return
	}
}
if {![info exist black(topwords:$chan:list)]} {
	set black(topwords:$chan:list) $mask
} else {
if {[lsearch -exact -nocase $black(topwords:$chan:list) $mask] < 0} {
	lappend black(topwords:$chan:list) $mask
	}
}
	set lines 1
	set last_message [unixtime]
	set smile_num 0
	set ques_num 0
if {[string equal -nocase $hand "ACTION"]} {
	set actions 1
} else { set actions 0 }
	set arg [regsub -all {\s+} $arg " "]
	set words [llength $arg]
	set chars [string length $arg]
if {[regexp {[?]} $arg]} {
	set ques_num [expr $ques_num + 1]
}
foreach text $arg {
	set smile_stat [topwords:smile $text]
if {$smile_stat != "-1"} {
	set smile_num [expr $smile_num + 1]
	}
}
if {![info exists black(topwords:$chan:$mask)]} {
	set black(topwords:$chan:$mask) "$nick $lines $words $chars $actions $smile_num $ques_num"
} else {
	set get_lines [lindex [split $black(topwords:$chan:$mask)] 1]
	set get_words [lindex [split $black(topwords:$chan:$mask)] 2]
	set get_chars [lindex [split $black(topwords:$chan:$mask)] 3]
	set get_actions [lindex [split $black(topwords:$chan:$mask)] 4]
	set get_smiles [lindex [split $black(topwords:$chan:$mask)] 5]
	set get_ques [lindex [split $black(topwords:$chan:$mask)] 6]
	set black(topwords:$chan:$mask) "$nick [expr $get_lines + $lines] [expr $get_words + $words] [expr $get_chars + $chars] [expr $get_actions + $actions] [expr $get_smiles + $smile_num] [expr $get_ques + $ques_num]"	
		}	
	} 
}


proc topwords:save:channels {chans} {
	global black
foreach chan $chans {
if {[validchan $chan]} {
	lappend channels $chan
		}
	}
if {$channels != ""} {
		topwords:time $channels 0
	}
}

proc topwords:time {channels counter} {
	global black
	set chan [lindex $channels $counter]
	set cc [expr $counter + 1]
if {$chan != ""} {
	topwords:module:save $chan
} 
if {[lindex $channels $cc] == ""} {
	return
} else {
	topwords:time $channels $cc
	}
}

proc topwords:module:save {chan} {
	global black username
if {![info exists black(topwords:$chan:list)]} {
	return
}
if {$black(topwords:$chan:list) == ""} {
	return
}
	set topwords_file "$black(dirname)/BlackTools/FILES/TOPWORDS/$username.$chan.txt"
if {![file exists $topwords_file]} {
	return
}
if {$black(topwords:$chan:list) == ""} {
	return
}
	topwords:remove_it $topwords_file $chan $black(topwords:$chan:list) 0
}

proc topwords:remove_it {files chan list position} {
	global black
	set mask [lindex $list $position]
if {$mask != ""} {
if {[info exists black(topwords:$chan:$mask)]} {
	set file [open $files r]
	set timestamp [clock format [clock seconds] -format {%Y%m%d%H%M%S}]
	set temp "$black(tempdir)/topwords_temp.$timestamp"
	set tempwrite [open $temp w]
	set found_mask 0
	set counter 0
	set get_nick [lindex [split $black(topwords:$chan:$mask)] 0]
	set curr_lines [lindex [split $black(topwords:$chan:$mask)] 1]
	set curr_words [lindex [split $black(topwords:$chan:$mask)] 2]
	set curr_chars [lindex [split $black(topwords:$chan:$mask)] 3]
	set curr_actions [lindex [split $black(topwords:$chan:$mask)] 4]
	set curr_smiles [lindex [split $black(topwords:$chan:$mask)] 5]
	set curr_ques [lindex [split $black(topwords:$chan:$mask)] 6]
while {[gets $file line] != -1} {
	set read_chan [lindex [split $line] 0]
	set read_host [lindex [split $line] 2]
	set enc_chan [encoding convertfrom utf-8 $read_chan]
if {[string equal -nocase $enc_chan $chan] && [string equal -nocase $mask $read_host]} {
	set found_mask 1
	set get_lines [lrange [split $line] 3 5]
	set get_words [lrange [split $line] 6 8]
	set get_chars [lrange [split $line] 9 11]
	set get_actions [lrange [split $line] 12 14]
	set get_smiles [lrange [split $line] 15 17]
	set get_ques [lrange [split $line] 18 20]
	continue
			} else {
		puts $tempwrite $line
	}
}
if {$found_mask == "0"} {
	puts $tempwrite "$chan $get_nick $mask $curr_lines $curr_lines $curr_lines $curr_words $curr_words $curr_words $curr_chars $curr_chars $curr_chars $curr_actions $curr_actions $curr_actions $curr_smiles $curr_smiles $curr_smiles $curr_ques $curr_ques $curr_ques"
	} else {
	puts $tempwrite "$chan $get_nick $mask [expr $curr_lines + [lindex $get_lines 0]] [expr $curr_lines + [lindex $get_lines 1]] [expr $curr_lines + [lindex $get_lines 2]] [expr $curr_words + [lindex $get_words 0]] [expr $curr_words + [lindex $get_words 1]] [expr $curr_words + [lindex $get_words 2]] [expr $curr_chars + [lindex $get_chars 0]] [expr $curr_chars + [lindex $get_chars 1]] [expr $curr_chars + [lindex $get_chars 2]] [expr $curr_actions + [lindex $get_actions 0]] [expr $curr_actions + [lindex $get_actions 1]] [expr $curr_actions + [lindex $get_actions 2]] [expr $curr_smiles + [lindex $get_smiles 0]] [expr $curr_smiles + [lindex $get_smiles 1]] [expr $curr_smiles + [lindex $get_smiles 2]] [expr $curr_ques + [lindex $get_ques 0]] [expr $curr_ques + [lindex $get_ques 1]] [expr $curr_ques + [lindex $get_ques 2]]"	
	}
	close $file
	close $tempwrite
	file rename -force $temp $files
if {[info exists black(topwords:$chan:$mask)]} {
	unset black(topwords:$chan:$mask)
		}
	set place [lsearch -exact -nocase $black(topwords:$chan:list) $mask]
if {$place > 0} {
	set black(topwords:$chan:list) [lreplace $black(topwords:$chan:list) $place $place]
			}
		}
	}
	set counter [expr $position + 1]
if {[lindex $list $counter] != ""} {
	topwords:remove_it $files $chan $list $counter
	}
}

proc topwords:module:me {nick host hand chan keyword arg} {
	global black
if {[string equal -nocase $keyword "ACTION"]} {
	topwords:module $nick $host "ACTION" $chan $arg
	}
}

proc topwords:reset {chan} {
	global black username
	set found_entry 0
if {[file exists "$black(dirname)/BlackTools/FILES/TOPWORDS/$username.$chan.txt"]} {
	set found_entry 1
	set file [open "$black(dirname)/BlackTools/FILES/TOPWORDS/$username.$chan.txt" w]
	close $file
}
	return $found_entry
}

proc topwords:delete {chan} {
	global black username
if {$black(chanremove_all) == "0"} {
	return
		}
if {[file exists "$black(dirname)/BlackTools/FILES/TOPWORDS/$username.$chan.txt"]} {
	file delete "$black(dirname)/BlackTools/FILES/TOPWORDS/$username.$chan.txt"
	}	
}

proc topwords:day:reset {minute hour day month year} {
	global black username
	set week_reset 0
if {[clock format [clock seconds] -format "%w"] == 0} {
	set week_reset 1
}
foreach chan [channels] {
	set tpfile "$black(dirname)/BlackTools/FILES/TOPWORDS/$username.$chan.txt"
if {[setting:get $chan topwords]} {
if {![file exists $tpfile]} {
	continue
}
	set file [open $tpfile r]
	set size [file size $tpfile]
	set data [split [read $file $size] \n]
	close $file
	set timestamp [clock format [clock seconds] -format {%Y%m%d%H%M%S}]
	set temp "$black(tempdir)/topwords_temp.$timestamp"
	set tempwrite [open $temp w]
foreach line $data {
if {$line != ""} {
	set get_chan [lindex [split $line] 0]
	set get_nick [lindex [split $line] 1]
	set get_host [lindex [split $line] 2]
	set curr_lines [lrange [split $line] 3 5]
	set curr_words [lrange [split $line] 6 8]
	set curr_chars [lrange [split $line] 9 11]
	set curr_actions [lrange [split $line] 12 14]
	set curr_smiles [lrange [split $line] 15 17]
	set curr_ques [lrange [split $line] 18 20]
if {$week_reset == "1"} {
	puts $tempwrite "$get_chan $get_nick $get_host [lindex $curr_lines 0] 0 0 [lindex $curr_words 0] 0 0 [lindex $curr_chars 0] 0 0 [lindex $curr_actions 0] 0 0 [lindex $curr_smiles 0] 0 0 [lindex $curr_ques 0] 0 0"
		} else {
	puts $tempwrite "$get_chan $get_nick $get_host [lindex $curr_lines 0] [lindex $curr_lines 1] 0 [lindex $curr_words 0] [lindex $curr_words 1] 0 [lindex $curr_chars 0] [lindex $curr_chars 1] 0 [lindex $curr_actions 0] [lindex $curr_actions 1] 0 [lindex $curr_smiles 0] [lindex $curr_smiles 1] 0 [lindex $curr_ques 0] [lindex $curr_ques 1] 0"
		}
	}
}
	close $tempwrite
    file rename -force $temp $tpfile
		}
	}
}


proc topwords:smile {text} {
	global black
	set found_it [regexp -inline {(:|8|;)(-|o)?(>|D|\)|\]|\})} $text]
if {$found_it != ""} {
	return 1
	} else {
	return -1
	}
}


##############
#########################################################################
##   END                                                               ##
#########################################################################
