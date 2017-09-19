#########################################################################
##          BlackTools - The Ultimate Channel Control Script           ##
##                    One TCL. One smart Eggdrop                       ##
#########################################################################
#######################   ANTIJOINFLOOD TCL   ###########################
#########################################################################
##						                       ##
##     BlackTools  : http://blacktools.tclscripts.net	               ##
##     Bugs report : http://www.tclscripts.net/	                       ##
##     Online Help : irc://irc.undernet.org/tcl-help 	               ##
##                   #TCL-HELP / UnderNet                              ##
##                   You can ask in english or romanian                ##
##					                               ##
#########################################################################

proc joinflood:unlock {chan} {
	global black
	putquick "MODE $chan -$black(modes)"
	unset black(floodjoin:on:$chan)
}

proc joinflood:protect {nick host hand chan} {
global black
if {[setting:get $chan antijoinflood]} {
	set getset [setting:get $chan joinflood]
	if {$getset == ""} { set getset $black(joinflood:protect) }
	set number [scan $getset %\[^:\]]
	set time [scan $getset %*\[^:\]:%s]
	set replace(%chan%) $chan
foreach tmr [utimers] {
if {[string match "*black(joinflood:$chan)*" [join [lindex $tmr 1]]]} {
	killutimer [lindex $tmr 2]
	}
}

if {[info exists black(floodjoin:on:$chan)]} {
	return
}

if {![info exists black(joinflood:$chan)]} { 
	set black(joinflood:$chan) 0 
}
	incr black(joinflood:$chan)
	utimer $time [list unset black(joinflood:$chan)]
if {$black(joinflood:$chan) >= "$number"} {
if {![botisop $chan] && ![setting:get $chan xonly]} { return }
	set black(floodjoin:on:$chan) 1
	putquick "MODE $chan +$black(modes)" ; utimer $black(nomodetime) [list joinflood:unlock $chan]
if {$black(fjoinhow) == "1"} {
	set getlang [string tolower [setting:get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
	set getmessage $black(say.$getlang.antijoinflood.1)
	set message [string map [array get replace] $getmessage]
	puthelp "NOTICE @$chan :$message"
			}
		}
	}
}

##############
#########################################################################
##   END                                                               ##
#########################################################################