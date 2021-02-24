#########################################################################
##          BlackTools - The Ultimate Channel Control Script           ##
##                    One TCL. One smart Eggdrop                       ##
#########################################################################
###########################   VOICEME TCL   #############################
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
	utimer 30 [list voiceme:check:valid $chan]
}
if {$mod == "-m"} {
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
	set text [black:color:set "" $black(say.$getlang.voiceme.2)]
	set text [join $text]
	puthelp "PRIVMSG $chan :[string map [array get replace] $text]"
if {[info exists black(voiceme:stat:$chan)]} {
	unset black(voiceme:stat:$chan)
		}
if {[info exists black(voiceme:$chan:timer_start)]} {
	unset black(voiceme:$chan:timer_start)
		}
	}
}

proc voiceme:get:time {chan} {
	global black
if {[setting:get $chan voiceme-showtime] != ""} {
	set return_time [time_return_minute [setting:get $chan voiceme-showtime]]
} else {
	set return_time [time_return_minute $black(voiceme:msgtime)]
	}
	return $return_time
}

proc voiceme:check:valid {chan} {
	global black botnick
	set found_timer 0
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
if {[setting:get $chan nologged]} {
	set text [black:color:set "" $black(say.$getlang.voiceme.6)]
} else {
	set text [black:color:set "" $black(say.$getlang.voiceme.1)]
}
	set text [join $text]
	puthelp "PRIVMSG $chan :[string map [array get replace] $text]"
if {![info exists black(voiceme:$chan:timer_start)]} {
	set black(voiceme:$chan:timer_start) [voiceme:get:time $chan]
		}
	}
}

proc voiceme:showmsg_timer {chans} {
	global black botnick
	set found_entry 0
	set unixtime [unixtime]
foreach chan $chans {
if {[setting:get $chan voiceme]} {

if {[info exists black(lastaction:$chan)]} {
	set total_anunt 0
	set unixtime [unixtime]
if {[setting:get $chan voiceme-showtime] != ""} {
	set return_time [time_return_minute [setting:get $chan voiceme-showtime]]
} else {
	set return_time [time_return_minute $black(voiceme:msgtime)]
}
	set time [expr [expr [expr $return_time * $black(entry:shown)] * 60] + $unixtime]
if {[expr $unixtime - $black(lastaction:$chan)] > [expr $time - $unixtime]} {
	continue
	}
} else { continue }
	set getlang [string tolower [setting:get $chan lang]]
	set replace(%botnick%) $botnick
	set replace(%chanserv%) $black(chanserv)
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
	set replace(%chan%) $chan
if {![info exists black(voiceme:stat:$chan)]} {
	continue
			} else {
if {[setting:get $chan nologged]} {
	set text [black:color:set "" $black(say.$getlang.voiceme.6)]
} else {
	set text [black:color:set "" $black(say.$getlang.voiceme.1)]
}
	set text [join $text]
	puthelp "PRIVMSG $chan :[string map [array get replace] $text]"
	set found_entry 1
			}
		} else {
if {[info exists black(voiceme:stat:$chan)]} {		
	unset black(voiceme:stat:$chan)	
			}
if {[info exists black(voiceme:$chan:timer_start)]} {
	unset black(voiceme:$chan:timer_start)
			}
		}
	}
}

##############
#########################################################################
##   END                                                               ##
#########################################################################
