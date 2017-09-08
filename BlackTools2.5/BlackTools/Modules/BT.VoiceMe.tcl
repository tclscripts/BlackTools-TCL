#########################################################################
##          BlackTools - The Ultimate Channel Control Script           ##
##                    One TCL. One smart Eggdrop                       ##
#########################################################################
###########################   VOICEME TCL   #############################
#########################################################################
##						                       ##
##     BlackTools  : http://blacktools.tclscripts.net	               ##
##     Bugs report : http://www.tclscripts.net/	                       ##
##     Online Help : irc://irc.undernet.org/tcl-help 	               ##
##                   #TCL-HELP / UnderNet                              ##
##                   You can ask in english or romanian                ##
##					                               ##
#########################################################################

proc voiceme:join {nick host hand chan} {
	global black
if {[isbotnick $nick]} {
if {[setting:get $chan voiceme]} {
	utimer 30 [list voiceme:check:valid $chan]	
		}
	}	
}

proc voiceme:mode {nick host hand chan mod who} {
	global black
if {[setting:get $chan voiceme]} {
if {$mod == "+m"} {
foreach tmr [utimers] {
if {[string match -nocase "*voiceme:check:valid $chan*" [join [lindex $tmr 1]]]} {
	killutimer [lindex $tmr 2]
		}
	}
	utimer 30 [list voiceme:check:valid $chan]
}
if {$mod == "-m"} {
	foreach tmr [utimers] {
if {[string match -nocase "*voiceme:check:nomod $chan*" [join [lindex $tmr 1]]]} {
	killutimer [lindex $tmr 2]
		}
	}
	utimer 15 [list voiceme:check:nomod $chan]
		}
	}
}

proc voiceme:check:nomod {chan} {
	global black botnick
	set getlang [string tolower [setting:get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
	set chanmode [getchanmode $chan]
if {[string match "*m*" $chanmode]} {
	return
}
if {[info exists black(voiceme:stat:$chan)]} {
	set replace(%chan%) $chan
	set replace(%botnick%) $botnick
	puthelp "PRIVMSG $chan :[string map [array get replace] $black(say.$getlang.voiceme.2)]"
if {[info exists black(voiceme:stat:$chan)]} {
	unset black(voiceme:stat:$chan)
		}
	}
}

proc voiceme:check:valid {chan} {
	global black botnick
	set getlang [string tolower [setting:get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
	set replace(%chan%) $chan
	set replace(%botnick%) $botnick
	set replace(%chanserv%) $black(chanserv)
	set chanmode [getchanmode $chan]
if {[info exists black(voiceme:stat:$chan)]} {
	return
}
if {[string match "*m*" $chanmode]} {
	set black(voiceme:stat:$chan) 1
	puthelp "PRIVMSG $chan :[string map [array get replace] $black(say.$getlang.voiceme.1)]"
	set voicemsg_time [time_return_minute $black(voiceme:msgtime)]
	timer $voicemsg_time voiceme:showmsg_timer
	}
}

proc voiceme:showmsg_timer {} {
	global black botnick
	set found_entry 0
	set voicemsg_time [time_return_minute $black(voiceme:msgtime)]
foreach chan [channels] {
if {[setting:get $chan voiceme]} {
	set getlang [string tolower [setting:get $chan lang]]
	set replace(%botnick%) $botnick
	set replace(%chanserv%) $black(chanserv)
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
	set replace(%chan%) $chan
if {![info exists black(voiceme:stat:$chan)]} {
	continue
			} else {
	puthelp "PRIVMSG $chan :[string map [array get replace] $black(say.$getlang.voiceme.1)]"
	set found_entry 1
			}
		} else {
if {[info exists black(voiceme:stat:$chan)]} {		
	unset black(voiceme:stat:$chan)	
			}
		}
	}
if {$found_entry == "1"} {
	timer $voicemsg_time voiceme:showmsg_timer
	}
}

##############
#########################################################################
##   END                                                               ##
#########################################################################