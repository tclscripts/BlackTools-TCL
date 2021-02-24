#########################################################################
##          BlackTools - The Ultimate Channel Control Script           ##
##                    One TCL. One smart Eggdrop                       ##
#########################################################################
########################   GREET & LEAVE TCL   ##########################
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

proc greetpublic:join {nick host hand chan} {
	global black
if {[setting:get $chan greet]} {
if {[isbotnick $nick]} { return }
if {[info exists black(turnOnFlood:$chan)]} {
	return
}
	set getgreet ""
	set get_time [setting:get $chan jointime]
if {$get_time == ""} { set jointime [unixtime] }
	set replace(%nick%) $nick
	set replace(%chan%) $chan
	set replace(%countchan%) $chan
	set replace(%count%) [setting:get $chan joincount]
	set replace(%time%) [clock format $get_time -format %D-%H:%M:%S]
	set greet_method [string toupper [setting:get $chan greet-method]]
if {$greet_method == ""} {
	set greet_method $black(greet:method)
}
	set file [open $black(join_file) r]
while {[gets $file line] != -1} {
	set read_modul [lindex [split $line] 0]
	set read_chan [lindex [split $line] 1]
	set enc_chan [encoding convertfrom utf-8 $read_chan]
if {[string equal -nocase $read_modul "greet"] && [string equal -nocase $chan $enc_chan]} {	
	set read_msg [lrange [split $line] 2 end]
	set getgreet [encoding convertfrom utf-8 $read_msg]
	}
}
	close $file
if {$getgreet != ""} {
	set split_greet [split $getgreet "~"]
	foreach line $split_greet {
	set line [string map [array get replace] $line]
if {$greet_method == "NOTICE"} {
	putserv "NOTICE $nick :[join $line]"
				} else { putserv "PRIVMSG $nick :[join $line]" }
			}
		}
	}
}

proc leavepublic:part {nick host hand chan args} {
	global black
	set number [scan $black(leaveflood) %\[^:\]]
	set time [scan $black(leaveflood) %*\[^:\]:%s]
	if {[isbotnick $nick]} { return }
if {[setting:get $chan leave]} {
if {[isbotnick $nick]} { return }
	set getleave ""
foreach tmr [utimers] {
if {[string match "*black(leaveflood:$chan)*" [join [lindex $tmr 1]]]} {
	killutimer [lindex $tmr 2]
	}
}
if {[info exists black(leavestopped:$chan)]} {
	return
}

if {![info exists black(leaveflood:$chan)]} { 
	set black(leaveflood:$chan) 0 
}
	set black(leaveflood:$chan) [expr $black(leaveflood:$chan) + 1]
	utimer $time [list unset black(leaveflood:$chan)]

if {$black(leaveflood:$chan) >= $number} {
	set black(leavestopped:$chan) 1
	utimer 60 [list unset black(leavestopped:$chan)]
	return
}
	set replace(%nick%) $nick
	set replace(%chan%) $chan
	set leave_method [string toupper [setting:get $chan leave-method]]
if {$leave_method == ""} {
	set leave_method "NOTICE"
}
	set file [open $black(join_file) r]
while {[gets $file line] != -1} {
	set read_modul [lindex [split $line] 0]
	set read_chan [lindex [split $line] 1]
	set enc_chan [encoding convertfrom utf-8 $read_chan]
if {[string equal -nocase $read_modul "leave"] && [string equal -nocase $chan $enc_chan]} {	
	set read_msg [lrange [split $line] 2 end]
	set getleave [encoding convertfrom utf-8 $read_msg]
	}
}
	close $file
if {$getleave != ""} {
	set split_leave	[split $getleave "~"]
	foreach line $split_leave {
	set line [string map [array get replace] $line]
if {$leave_method == "NOTICE"} {
	putserv "NOTICE $nick :[join $line]"
				} else { putserv "PRIVMSG $nick :[join $line]" }
			}
		}
	}
}

##############
#########################################################################
##   END                                                               ##
#########################################################################
