#########################################################################
##          BlackTools - The Ultimate Channel Control Script           ##
##                    One TCL. One smart Eggdrop                       ##
#########################################################################
###########################   TOPWORDS TCL   ############################
#########################################################################
##						                       ##
##     BlackTools  : http://blacktools.tclscripts.net	               ##
##     Bugs report : http://www.tclscripts.net/	                       ##
##     Online Help : irc://irc.undernet.org/tcl-help 	               ##
##                   #TCL-HELP / UnderNet                              ##
##                   You can ask in english or romanian                ##
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
	set mask [return_mask [return_host_num "topwords" $chan] [getchanhost $user $chan] $user]
	
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

proc topwords {nick host hand chan arg} {
global black lastbind
	set next [lindex [split $arg] 0]
	set cmd ""
	set type 0
	set chan1 "$chan"
	set return [blacktools:mychar $lastbind $hand]
if {$return == "0"} {
		return
}
if {[string equal -nocase $next "reset"] && [matchattr $hand nmo|M $chan]} {
	set cmd "reset"
}
if {[string equal -nocase $next "total"]} {
	set next [lindex [split $arg] 1]
	set cmd "total"
}
if {[string equal -nocase $next "add"] && [matchattr $hand nmo|M $next]} {
	set next [lindex [split $arg] 1]
	set cmd "add"
}
if {[string equal -nocase $next "del"] && [matchattr $hand nmo|M $next]} {
	set next [lindex [split $arg] 1]
	set cmd "del"
}
if {[regexp {^[&#]} $next] && [matchattr $hand nmo|MAOV $next]} {
	set chan $next
	set next [lindex [split $arg] 1]
if {[string equal -nocase $next "reset"] && [matchattr $hand nmo|M $next]} {
	set cmd "reset"
}
if {[string equal -nocase $next "total"]} {
	set next [lindex [split $arg] 2]
	set cmd "total"
	}
if {[string equal -nocase $next "add"] && [matchattr $hand nmo|M $next]} {
	set next [lindex [split $arg] 2]
	set cmd "add"
	}
if {[string equal -nocase $next "del"] && [matchattr $hand nmo|M $next]} {
	set next [lindex [split $arg] 2]
	set cmd "del"
	}
}
	topwords:process $nick $host $hand $chan $chan1 $cmd $type $next
}

proc topwords:process {nick host hand chan chan1 cmd type next} {
global botnick black
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
if {![validchan $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.novalidchan none
	return
}

if {[string equal -nocase $next "list"]} {
	set list [userlist "-|w" $chan]
	blacktools:tell $nick $host $hand $chan $chan1 topwords.18 "none"
if {$list == ""} {set list "NONE"}
	blacktools:tell $nick $host $hand $chan $chan1 topwords.19 "$list"
	return
}

if {[string equal -nocase $cmd "del"]} {
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

if {[string equal -nocase $cmd "add"]} {
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
if {[string equal -nocase $cmd "reset"]} {
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
	set file [open $black(topwords_file) "r"]
	set w [read -nonewline $file]
	close $file
	set data [split $w "\n"]
foreach line $data {
	set read_chan [lindex [split $line] 0]
	set enc_chan [encoding convertfrom utf-8 $read_chan]
if {[string match -nocase $enc_chan $chan]} {
if {$cmd == "total"} {
	set words_count [lindex [split $line] 4]
} else {
	set words_count [lindex [split $line] 5]
}
	set read_time [lindex [split $line] 31]
	set read_nick [lindex [split $line] 1]
if {$words_count > 0} {
lappend topwordslist($words_count) $read_nick:$read_time
		}
	}
}
	set tempwrite [open $temp w]
	set latestuser ""
	set latesttime 0
foreach words [lsort -integer -decreasing [array names topwordslist]] {
	set counter [expr $counter + 1]
foreach user $topwordslist($words) {
	set split_user [split $user ":"]
	set theuser [lindex $split_user 0]
	set thetime [lindex $split_user 1]
if {$thetime > $latesttime} {
	set latesttime $thetime
	set latestuser $theuser
} else {
	set latesttime $latesttime
	set latestuser $theuser
	}
}
	puts $tempwrite "$latestuser $words $counter"
	}
	close $tempwrite
	set file [open $temp "r"]
	set w [read -nonewline $file]
	close $file
	set data [split $w "\n"]
	file delete $temp
if {$w == ""} {
if {$cmd == "total"} {
	blacktools:tell $nick $host $hand $chan $chan1 topwords.7 none
} else {
	blacktools:tell $nick $host $hand $chan $chan1 topwords.14 none
}
	return
}
if {$cmd == "total"} {
	module:getinfo $nick $host $hand $chan $chan1 $type $data "topwords:total" "0" $next
} else {
	module:getinfo $nick $host $hand $chan $chan1 $type $data "topwords" "0" $next
	}
}

proc topwords:module {nick host hand chan arg} {
	global black
	set arg [split $arg]
	set mask [return_mask [return_host_num "topwords" $chan] $host $nick]
	set handle [nick2hand $nick]
if {[setting:get $chan topwords]} {

if {[isbotnick $nick]} {
	return
}
if {[validuser $handle]} {
if {[matchattr $handle -|w $chan]} {
	return
	}
}
if {[setting:get $chan accessonly]} {
if {![validuser $hand]} {
	return
}
if {![matchattr $hand $black(exceptflags) $chan]} {
	return
	}
}
	set time [unixtime]
	set list_hours {00:0 01:0 02:0 03:0 04:0 05:0 06:0 07:0 08:0 09:0 10:0 11:0 12:0 13:0 14:0 15:0 16:0 17:0 18:0 19:0 20:0 21:0 22:0 23:0}
	set found_entry 0
	set h_counter 0
	set h [clock format $time -format %H]
	set file [open $black(topwords_file) "r"]
	set timestamp [clock format [clock seconds] -format {%Y%m%d%H%M%S}]
	set temp "$black(tempdir)/topwords_temp.$timestamp"
	set tempwrite [open $temp w]
while {[gets $file line] != -1} {
	set read_chan [lindex [split $line] 0]
	set read_host [lindex [split $line] 2]
	set real_read_host [string map [list \[ {\[} \] {\]} \? {\?} \\ {\\}] $read_host]
	set enc_chan [encoding convertfrom utf-8 $read_chan]
if {[string equal -nocase $enc_chan $chan] && [string equal -nocase $real_read_host $mask]} {
	set found_entry 1
	set nr_letter [lindex [split $line] 3]
	set nr_words [lindex [split $line] 4]
	set words_today [lindex [split $line] 5]
	set nr_lines [lindex [split $line] 6]
	set hours [lrange [split $line] 7 30]
foreach hour $hours {
	set split_hour [split $hour ":"]
	set the_hour [lindex $split_hour 0]
	set counter [lindex $split_hour 1]
if {$the_hour == $h} {
	set h_counter $counter
	}
}
	continue
} else {
	puts $tempwrite $line
		}
    }
	set chars [string length [string map {" " ""} $arg]]
	set words [llength $arg]
	set lines 1
if {$found_entry == "1"} {
	set list_hours2 [topwords:return_hours $h_counter $h $hours]
	puts $tempwrite "$chan $nick $mask [expr $nr_letter + $chars] [expr $nr_words + $words] [expr $words_today + $words] [expr $nr_lines + $lines] $list_hours2 $time"
	} else {
	set list_hours2 [topwords:return_hours 0 $h $list_hours]
	puts $tempwrite "$chan $nick $mask $chars $words $words $lines $list_hours2 $time"
}
	close $tempwrite
	close $file
    file rename -force $temp $black(topwords_file)
	}
}

proc topwords:module:me {nick host hand chan keyword arg} {
global black
	topwords:module $nick $host $hand $chan $arg
}

proc topwords:reset {chan} {
	global black
	set found_entry 0
	set file [open $black(topwords_file) "r"]
	set timestamp [clock format [clock seconds] -format {%Y%m%d%H%M%S}]
	set temp "$black(tempdir)/topwords_temp.$timestamp"
	set tempwrite [open $temp w]
while {[gets $file line] != -1} {
	set read_chan [lindex [split $line] 0]
	set enc_chan [encoding convertfrom utf-8 $read_chan]
if {[string equal -nocase $chan $enc_chan]} {
	set found_entry 1
	continue
		} else {
	puts $tempwrite $line	
		}
	}
		close $tempwrite
		close $file
		file rename -force $temp $black(topwords_file)
	return $found_entry
}

proc topwords:day:reset {minute hour day month year} {
	global black
	set file [open $black(topwords_file) "r"]
	set timestamp [clock format [clock seconds] -format {%Y%m%d%H%M%S}]
	set temp "$black(tempdir)/topwords_temp.$timestamp"
	set tempwrite [open $temp w]
while {[gets $file line] != -1} {
	set chan [lindex [split $line] 0]
	set nick [lindex [split $line] 1]
	set host [lindex [split $line] 2]
	set time [lindex [split $line] 31]
	set nr_letter [lindex [split $line] 3]
	set nr_words [lindex [split $line] 4]
	set words_today [lindex [split $line] 5]
	set nr_lines [lindex [split $line] 6]
	set hours [lrange [split $line] 7 30]
	puts $tempwrite "$chan $nick $host $nr_letter $nr_words 0 $nr_lines $hours $time"
	}
	close $tempwrite
	close $file
    file rename -force $temp $black(topwords_file)
}

proc topwords:return_hours {num hour hours} {
	global black
	set thehours $hours
if {[lsearch -glob $thehours "$hour:*"] > -1} {
	set position [lsearch -glob $thehours "$hour:*"]
	set thehours [lreplace $thehours $position $position]
	set thehours [linsert $thehours $position "$hour:[expr $num + 1]"]
	}
	return $thehours
}

##############
#########################################################################
##   END                                                               ##
#########################################################################