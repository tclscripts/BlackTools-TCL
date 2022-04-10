#########################################################################
##          BlackTools - The Ultimate Channel Control Script           ##
##                    One TCL. One smart Eggdrop                       ##
#########################################################################
#############################   VOTE TCL   ##############################
#########################################################################
##						                       ##
##   BlackTools  : http://blacktools.tclscripts.net	               ##
##   Bugs report : http://www.tclscripts.net/	                       ##
##   GitHub page : https://github.com/tclscripts/BlackToolS-TCL	       ##
##   Online Help : irc://irc.undernet.org/tcl-help 	               ##
##                 #TCL-HELP / UnderNet                                ##
##                 You can ask in english or romanian                  ##
##					                               ##
#########################################################################

###
proc blacktools:vote:greetshow {nick host hand chan} {
    global black
if {[setting:get $chan votegreet]} {
if {[isbotnick $nick]} { return }
if {[info exists black(turnOnFlood:$chan)]} {
	return
}
if {[matchattr $hand nmo|MA $chan]} {
    set access 1
} else {
    set access 0
}
    set mask_num [get:mask "vote" $chan]
    set get_host [return_mask $mask_num $host $nick]
    set userlang [string tolower [getuser $hand XTRA OUTPUT_LANG]]
if {$userlang == ""} { set userlang "[string tolower $black(default_lang)]" }
if {$access == 1} {
    set list [blacktools:voting_list $chan $userlang "" 1]
} else {
    set list [blacktools:voting_list $chan $userlang "" 0]
}
if {$list == 0} {return}
    set ids ""
foreach entry $list {
    set status [lindex $entry 3]
if {$status == 0} {continue}
    set id [lindex $entry 0]
if {$access == 1} {
    set vote [blacktools:vote:already_vote $chan $id $hand $get_host 0]
} else {
    set vote [blacktools:vote:already_vote $chan $id $hand $get_host 1]
}
if {$vote == 0} {
    lappend ids $id
    }
}
if {$ids != ""} {
    blacktools:tell_v2 $nick $host $hand $chan $chan vote.42 [list [join $ids ", "]]
        }
    }
}


###
proc blacktools:vote_new_first {} {
    global black
    set expire [blacktools:first_expire]
foreach tmr [utimers] {
if {[string match "*blacktools:vote:expire*" [join [lindex $tmr 1]]]} {
	killutimer [lindex $tmr 2]
	}
}
if {$expire != 0} {
if {[info exists black(vote_expire)]} {
if {$expire <= $black(vote_expire)} {
    set black(vote_expire) $expire
    utimer [expr $expire - [clock seconds]] [list blacktools:vote:expire]
    }
} else {
    set black(vote_expire) $expire
    utimer [expr $expire - [clock seconds]] [list blacktools:vote:expire]
        }
    } else {
if {[info exists black(vote_expire)]} {
    unset black(vote_expire)
        }
    }
}

###
proc blacktools:vote:expire {} {
    global black
    set file [open $black(voting_file) r]
    set timestamp [clock format [clock seconds] -format {%Y%m%d%H%M%S}]
	set temp "$black(tempdir)/vote_temp.$timestamp"
	set tempwrite [open $temp w]
while {[gets $file line] != -1} {
    set expire [lindex $line 7]
if {[string equal -nocase [lindex $line 0] "VOTE"]} {
    puts $tempwrite $line  
    continue
}
if {[info exists black(vote_expire)]} {
if {$expire <= $black(vote_expire)} {
    set replace_line [lreplace $line 8 8 "0"]
    puts $tempwrite $replace_line
    } else {
    puts $tempwrite $line       
    }
} elseif {$expire <= [clock seconds]} {
    set replace_line [lreplace $line 8 8 "0"]
    puts $tempwrite $replace_line
        } else {
    puts $tempwrite $line
        }
    }
    close $file
    close $tempwrite
    file rename -force $temp $black(voting_file)

    set read_expire [blacktools:first_expire]
if {$read_expire == 0} {
if {[info exists black(vote_expire)]} {
    unset black(vote_expire)
}
    return
} else {
    utimer [expr $read_expire - [clock seconds]] [list blacktools:vote:expire]
    set black(vote_expire) $read_expire
    }
}

###
proc vote:process {nick host uhost hand chan chan1 type arg} {
global botnick black username
if {![setting:get $chan vote]} {
	return
}
	set cmd_status [btcmd:status $chan $hand "vote" 0]
if {$cmd_status == "1"} { 
	return 
}
if {[matchattr $hand q]} { blacktools:tell_v2 $nick $host $hand $chan $chan1 gl.glsuspend none
	return
}
if {[matchattr $hand -|q $chan]} { blacktools:tell_v2 $nick $host $hand $chan $chan1 gl.suspend none
	return
}
    set word [lindex $arg 0]
    set text [lindex $arg 1]
    set id [lindex $arg 2]
    set userlang [string tolower [getuser $hand XTRA OUTPUT_LANG]]
if {$userlang == ""} { set userlang "[string tolower $black(default_lang)]" }
switch [string tolower $word] {
    add {
if {[matchattr $hand nmo|MA $chan]} {
if {[lindex [split $arg] 1] == ""} {
    blacktools:tell_v2 $nick $host $hand $chan $chan1 vote.1 none
    return
}
    set options [regexp -nocase -all -inline {\-option\s.+?(?=(-|$))} $text]
    set voting_name [regexp -nocase -inline {.+?(?=(-))} $text]
    set time [regexp -nocase -inline {\-time\s.+?(?=(-|$))} $text]
    set type [regexp -nocase -inline {\-type\s.+?(?=(-|$))} $text]
    set option_list ""
    set show_list ""
    set letter_num 0
foreach option $options {
    set letter [blacktools:return_letter $letter_num]
    set option [lrange [split $option] 1 end]
    lappend option_list [concat [join $option]]
    lappend show_list [concat [join "\002$letter\002: $option"]]
    incr letter_num
}
if {$option_list == ""} {
    blacktools:tell_v2 $nick $host $hand $chan $chan1 vote.1 none
    return
}
if {$time != ""} {
    set time [concat [lrange [join $time] 1 end]]
    set check_time [catch {clock scan $time -format "%d/%m/%y %H:%M"} time_seconds]
if {$check_time == 1} {
    blacktools:tell_v2 $nick $host $hand $chan $chan1 vote.2 none
    return
    }
    set valid_time [expr $time_seconds - [clock seconds]]
if {$valid_time < 0} {
    blacktools:tell_v2 $nick $host $hand $chan $chan1 vote.2 none
    return
    }
}
if {![info exists time_seconds]} {
    set time_seconds 0
}

if {$type != ""} {
    set type [concat [lrange [join $type] 1 end]]
if {![regexp {[01]} $type]} {
    blacktools:tell_v2 $nick $host $hand $chan $chan1 vote.3 none
    return
    }
} else {set type $black(vote:type)}

    set voting_exists [blacktools:voting_exists $chan [join $voting_name] 0]
if {$voting_exists != -1} {
    blacktools:tell_v2 $nick $host $hand $chan $chan1 vote.4 none
    return
}
    set addtime [clock seconds]
    set id [expr [blacktools:voting_id $chan] + 1]
    set line "VOTING $id $chan $hand $voting_name [list $option_list] $addtime $time_seconds 1 $type"
    set file [open $black(voting_file) a]
    puts $file $line
    close $file
if {$time_seconds == 0} {
    blacktools:tell_v2 $nick $host $hand $chan $chan1 vote.5 [list [concat [join $voting_name]] [join $show_list ", "] $id]
            } else {
    blacktools:vote_new_first
    blacktools:tell_v2 $nick $host $hand $chan $chan1 vote.6 [list [concat [join $voting_name]] [join $show_list ", "] [return_time_2 $userlang [expr $time_seconds - $addtime]] $id]
        }
    }
}
    time {
if {[matchattr $hand nmo|MA $chan]} {
if {![regexp {^[0-9]+$} $id]} {
    blacktools:tell_v2 $nick $host $hand $chan $chan1 vote.39 none
    return
}
    set time [lrange $text 1 end]
    set check_time [catch {clock scan $time -format "%d/%m/%y %H:%M"} time_seconds]
if {$check_time == 1} {
    blacktools:tell_v2 $nick $host $hand $chan $chan1 vote.2 none
    return
        }
    set valid_time [expr $time_seconds - [clock seconds]]
if {$valid_time < 0} {
    blacktools:tell_v2 $nick $host $hand $chan $chan1 vote.2 none
    return
        }
   set voting_exists [blacktools:voting_exists $chan $id 1]
if {$voting_exists == -1} {
    blacktools:tell_v2 $nick $host $hand $chan $chan1 vote.8 $id
    return
}
    set status [lindex $voting_exists 0]
if {$status == 0} {
     blacktools:tell_v2 $nick $host $hand $chan $chan1 vote.11 [list $id]
     return
 }
    blacktools:voting_extend $chan $id $time_seconds
    blacktools:vote_new_first
    blacktools:tell_v2 $nick $host $hand $chan $chan1 vote.40 [list $id [return_time_2 $userlang [expr $time_seconds - [clock seconds]]]]
    }
}

    list {
    set opt [lindex $arg 3]
    set vote_next [lindex $arg 4]
if {![regexp {^[0-9]+$} $id]} {
    set vote_list 1
if {[matchattr $hand nmo|MA $chan]} {
    set list [blacktools:voting_list $chan $userlang "" 1]
} else {
    set list [blacktools:voting_list $chan $userlang "" 0]
}
if {$list == 0} {
    blacktools:tell_v2 $nick $host $hand $chan $chan1 vote.30 none
    return
    }
    module:getinfo $nick $host $hand $chan $chan1 $type $list "vote" "0" [list $id]
} else {
    if {[matchattr $hand nmo|MA $chan]} {
    set list [blacktools:voting_list $chan $userlang $id 1]
if {$list == 0} {
    blacktools:tell_v2 $nick $host $hand $chan $chan1 vote.33 $id
    return
        }
     module:getinfo $nick $host $hand $chan $chan1 $type $list "vote" "0" [list $opt $id $vote_next]
        }
    }
}
    del {
if {[matchattr $hand nmo|MA $chan]} {
if {![regexp {^[0-9]+$} $id]} {
    blacktools:tell_v2 $nick $host $hand $chan $chan1 vote.7 none
    return
}
  set voting_exists [blacktools:voting_exists $chan $id 1]
if {$voting_exists == -1} {
    blacktools:tell_v2 $nick $host $hand $chan $chan1 vote.8 [list $id]
    return
}
    blacktools:voting_delete $chan $id
    blacktools:tell_v2 $nick $host $hand $chan $chan1 vote.9 [list $id]
    blacktools:vote_new_first
    }
}
    end {
if {[matchattr $hand nmo|MA $chan]} {
if {![regexp {^[0-9]+$} $id]} {
    blacktools:tell_v2 $nick $host $hand $chan $chan1 vote.10 none
    return
}
    set voting_exists [blacktools:voting_exists $chan $id 1]
if {$voting_exists == -1} {
    blacktools:tell_v2 $nick $host $hand $chan $chan1 vote.8 [list $id]
    return
}
    set status [lindex $voting_exists 0]
if {$status == 0} {
     blacktools:tell_v2 $nick $host $hand $chan $chan1 vote.11 [list $id]
     return
 }
    blacktools:voting_end $chan $id
    blacktools:tell_v2 $nick $host $hand $chan $chan1 vote.11 [list $id]
    blacktools:vote_new_first
    }
}
    default {
    set get_letter [string toupper $id]
if {![regexp {^[0-9]+$} $word]} {
if {$type == "0"} {
	blacktools:tell_v2 $nick $host $hand $chan $chan1 gl.instr [list "vote"]
}
if {$type == "1"} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_nick [list "vote"]
}
if {$type == "2"} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_priv [list "vote"]
    }   
} else {
    set voting_exists [blacktools:voting_exists $chan $word 1]
if {$voting_exists == -1} {
    blacktools:tell_v2 $nick $host $hand $chan $chan1 vote.8 [list $word]
    return
}
    set status [lindex $voting_exists 0]
    set access [lindex $voting_exists 1]
    set voting_name [lindex $voting_exists 2]
    set options [lindex $voting_exists 3]
    set expires [lindex $voting_exists 4]
    set handle [lindex $voting_exists 5]
 if {$access == 1} {
if {![matchattr $hand $black(localflags) $chan] && ![matchattr $hand $black(glflags)]} {
    return
    }
 }
    set letter_num 0
    array set op [list]
    set show_list ""
 foreach option $options {
    set letter [blacktools:return_letter $letter_num]
    set op($letter) [concat [join [split $option]]]
    lappend show_list [concat [join "\002$letter\002: [split $option]"]]
    incr letter_num
}
if {$get_letter == ""} {
    set votes [blacktools:get_votes $chan $word]
    set sum [lindex $votes 1]
    set votes [lindex $votes 0]
if {$status == 1} {set read_status $black(say.$userlang.vote.13)} else {set read_status $black(say.$userlang.vote.14)}
if {$access == 1} {set access $black(say.$userlang.vote.15)} else {set access $black(say.$userlang.vote.16)}

if {$expires == 0} {
    set expire_time "N/A"
} else {
    set expire_time [return_time_2 $userlang [expr $expires - [clock seconds]]]
}
if {$status == 0} {
    blacktools:tell_v2 $nick $host $hand $chan $chan1 vote.38 [list $word $voting_name "" $read_status $access $expire_time $handle]
} else {
    blacktools:tell_v2 $nick $host $hand $chan $chan1 vote.17 [list $word $voting_name "" $read_status $access $expire_time $handle]
}  
foreach w [wordwrap [join $show_list ", "] 440] {
    blacktools:tell_v2 $nick $host $hand $chan $chan1 vote.41 [list $w]
}
if {$votes == 0} {
    blacktools:tell_v2 $nick $host $hand $chan $chan1 vote.18 none
}  else {
    blacktools:tell_v2 $nick $host $hand $chan $chan1 vote.19 [list [join $votes ", "] $sum]
}
    return
}
if {$status == 0} {
     blacktools:tell_v2 $nick $host $hand $chan $chan1 vote.20 [list $id]
     return
 }
if {![regexp {^[A-Z]$} $get_letter]} {
    blacktools:tell_v2 $nick $host $hand $chan $chan1 vote.21 none
    return
}
if {![info exists op($get_letter)]} {
    blacktools:tell_v2 $nick $host $hand $chan $chan1 vote.22 [list $get_letter [join $show_list ", "]]
    return
}
    set mask_num [get:mask "vote" $chan]
    set get_host [return_mask $mask_num $uhost $nick]
if {$access == 1} {
    set vote [blacktools:vote_now $hand $get_host $chan $word 0 $get_letter]
} else {
    set vote [blacktools:vote_now $nick $get_host $chan $word 1 $get_letter]
                }
if {$vote == 0} {
    blacktools:tell_v2 $nick $host $hand $chan $chan1 vote.23 none
} else {
    blacktools:tell_v2 $nick $host $hand $chan $chan1 vote.24 [list $get_letter $word $voting_name]
                }
            }
        }
    }
}


###
proc blacktools:return_letter {num} {
    global black
    set letters "A B C D E F G H I J K L M N O P Q R S T U V W X Y Z"
    return [lindex $letters $num]
}

###
proc blacktools:get_votes {chan id} {
    global black
    set file [open $black(voting_file) r]
    set found_vote 0
    set output ""
    array set votes [list]
while {[gets $file line] != -1} {
    set read_chan [lindex $line 1]
if {[string equal -nocase $chan $read_chan] && [string equal -nocase [lindex $line 0] "VOTE"] && [string equal -nocase [lindex $line 2] $id]} {
    lappend votes([lindex $line 5]) 1
        }
    }
    close $file
if {[array size votes] == 0} {
    return 0
}
    set sum 0
foreach v [lsort -decreasing -increasing [array names votes]] {
    set sum [expr $sum + [llength $votes($v)]]
}
foreach v [lsort -decreasing -increasing [array names votes]] {
    lappend output "\002$v\002 [expr [expr [llength $votes($v)] * 100.0 ] / $sum] %"
    }
    return [list $output $sum]
}


###
proc blacktools:vote:already_vote {chan id hand host type} {
    global black
    set file [open $black(voting_file) r]
    set found_vote 0
    while {[gets $file line] != -1} {
    set read_chan [lindex $line 1]
if {[string equal -nocase $chan $read_chan] && [string equal -nocase [lindex $line 0] "VOTE"] && [string equal -nocase [lindex $line 2] $id] && ([string equal -nocase [lindex $line 3] $hand] && $type == "0" || [string equal -nocase [lindex $line 4] $host] && $type == "1")} {
    set found_vote 1
    break
    }
}
    close $file
    return $found_vote
}


###
proc blacktools:vote_now {hand host chan id type vote} {
    global black
    set file [open $black(voting_file) r]
    set found_vote 0
while {[gets $file line] != -1} {
    set read_chan [lindex $line 1]
if {[string equal -nocase $chan $read_chan] && [string equal -nocase [lindex $line 0] "VOTE"] && [string equal -nocase [lindex $line 2] $id] && ([string equal -nocase [lindex $line 3] $hand] && $type == "0" || [string equal -nocase [lindex $line 4] $host] && $type == "1")} {
    set found_vote [list [lindex $line 4] [lindex $line 5]]
    break
    }
}
    close $file
if {$found_vote == 0} {
    set file [open $black(voting_file) a]
    puts $file "VOTE $chan $id $hand $host $vote [unixtime]"
    close $file
    return 1
    } else {return 0}
}

###
proc blacktools:voting_delete {chan id} {
    global black
    set file [open $black(voting_file) r]
    set timestamp [clock format [clock seconds] -format {%Y%m%d%H%M%S}]
	set temp "$black(tempdir)/vote_temp.$timestamp"
	set tempwrite [open $temp w]
while {[gets $file line] != -1} {
    set read_chan [lindex $line 2]
    set read_chan_vote [lindex $line 1]
    set read_id [lindex $line 1]
    set read_id_vote [lindex $line 2]
    set read_type [lindex $line 0]
if {([string equal -nocase $read_chan $chan] && [string equal -nocase $read_id $id] && [string equal -nocase $read_type "VOTING"]) || ([string equal -nocase $read_chan_vote $chan] && [string equal -nocase $read_id_vote $id] && [string equal -nocase $read_type "VOTE"])} {
    continue
        } else {
    puts $tempwrite $line
        }
    }
    close $file
    close $tempwrite
    file rename -force $temp $black(voting_file)
}

###
proc blacktools:voting_extend {chan id time} {
    global black
     set file [open $black(voting_file) r]
    set timestamp [clock format [clock seconds] -format {%Y%m%d%H%M%S}]
	set temp "$black(tempdir)/vote_temp.$timestamp"
	set tempwrite [open $temp w]
while {[gets $file line] != -1} {
    set read_chan [lindex $line 2]
    set read_id [lindex $line 1]
if {[string equal -nocase $read_chan $chan] && [string equal -nocase $read_id $id]} {
    set replace_line [lreplace $line 7 7 "$time"]
    continue
        } else {
    puts $tempwrite $line
        }
    }
    close $file
if {[info exists replace_line]} {
    puts $tempwrite $replace_line
    }
    close $tempwrite
    file rename -force $temp $black(voting_file)
}

###
proc blacktools:voting_end {chan id} {
    global black
    set file [open $black(voting_file) r]
    set timestamp [clock format [clock seconds] -format {%Y%m%d%H%M%S}]
	set temp "$black(tempdir)/vote_temp.$timestamp"
	set tempwrite [open $temp w]
while {[gets $file line] != -1} {
    set read_chan [lindex $line 2]
    set read_id [lindex $line 1]
if {[string equal -nocase $read_chan $chan] && [string equal -nocase $read_id $id]} {
    set replace_line [lreplace $line 8 8 "0"]
    continue
        } else {
    puts $tempwrite $line
        }
    }
    close $file
if {[info exists replace_line]} {
    puts $tempwrite $replace_line
    }
    close $tempwrite
    file rename -force $temp $black(voting_file)
}

###
proc blacktools:voting_list {chan lang text who} {
    global black
    set counter 0
    set file [open $black(voting_file) r]
while {[gets $file line] != -1} {
    set read_chan [lindex $line 2]
    set read_type [lindex $line 0]
    set access [lindex $line 9]
    set read_chan_vote [lindex $line 1]
    set show_list ""
if {$text == ""} {
if {[string equal -nocase $chan $read_chan] && [string equal -nocase $read_type "VOTING"]} {
    set status [lindex $line 8]
if {$who == 0 && $access == 1} {continue}
    set voting_name [lindex $line 4]
    set options [lindex $line 5]
    set handle [lindex $line 3]
    set letter_num 0
 foreach option $options {
    set letter [blacktools:return_letter $letter_num]
    set op($letter) [concat [join [split $option]]]
    lappend show_list [concat [join "\002$letter\002: [split $option]"]]
    incr letter_num
}
    set expires [lindex $line 7]
    set id [lindex $line 1]
if {$access == 1} {set access $black(say.$lang.vote.15)} else {set access $black(say.$lang.vote.16)}
if {$expires == 0} {
    set expire_time "N/A"
} else {
    set expire_time [return_time_2 $lang [expr $expires - [unixtime]]]
}
    lappend output [list $id $voting_name [join $show_list ", "] $status $access $expire_time $handle]
            }
        } else {
if {[string equal -nocase $chan $read_chan_vote] && [string equal -nocase $read_type "VOTE"]} {
    incr counter
    set hand [lindex $line 3]
    set host [lindex $line 4]
    set option [lindex $line 5]
    set time [lindex $line 6]
if {$who == 0 && $access == 1} {continue}
    lappend output [list $counter $hand $host $option $time]
        }
    }
}
    close $file
if {![info exists output]} {return 0} else {
    return $output
    }
}

###
proc blacktools:voting_exists {chan get type} {
    global black
    set file [open $black(voting_file) r]
    set found_it -1
while {[gets $file line] != -1} {
    set read_chan [lindex $line 2]
    set read_id [lindex $line 1]
    set read_name [lindex $line 4]
if {[string equal -nocase $chan $read_chan] && [string equal -nocase [lindex $line 0] "VOTING"] && ([string equal -nocase $read_name $get] && $type == "0" || [string equal -nocase $read_id $get] && $type == "1")} {
    set found_it [list [lindex $line 8] [lindex $line 9] [lindex $line 4] [lindex $line 5] [lindex $line 7] [lindex $line 3]]
    break
        }
    }
    close $file
    return $found_it
}

###
proc blacktools:voting_id {chan} {
    global black
    set file [open $black(voting_file) r]
    set ids ""
while {[gets $file line] != -1} {
    set read_chan [lindex $line 2]
if {[string equal -nocase $chan $read_chan] && [string equal -nocase [lindex $line 0] "VOTING"]} {
    lappend ids [lindex $line 1]
        }
    }
    close $file
if {$ids == ""} {
    return 0
} else {
    set sort [blacktools:quicksort [join $ids]]
	return [lindex $sort end]
    }
}

###
proc blacktools:first_expire {} {
    global black
if {![file exists $black(voting_file)]} {return 0}
    set file [open $black(voting_file) r]
    set times ""
while {[gets $file line] != -1} {
if {[string equal -nocase [lindex $line 0] "VOTING"]} {
    set expire [lindex $line 7]
    set status [lindex $line 8]
if {$expire == 0} {continue}
if {$status == 0} {continue}
    lappend times $expire
    }
}
    close $file
if {$times != ""} {
    set sort [blacktools:quicksort [join $times]]
    return [lindex $sort 0]
    } else {
    return 0
    }
}
