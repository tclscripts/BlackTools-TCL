#########################################################################
##          BlackTools - The Ultimate Channel Control Script           ##
##                    One TCL. One smart Eggdrop                       ##
#########################################################################
#######################   ANTIJOINFLOOD TCL   ###########################
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

proc joinflood:unlock {chan modes} {
	global black
	putquick "MODE $chan -$modes"
if {[info exists black(floodjoin:on:$chan)]} {
	unset black(floodjoin:on:$chan)
	}
}

proc joinflood:unset {chan} {
	global black
if {[info exists black(antijoinflood:$chan)]} {
	unset black(antijoinflood:$chan)
	}
}

proc joinflood:unset:host {chan host} {
	global black
if {[info exists black(antijoinflood:$host:$chan)]} {
	unset black(antijoinflood:$host:$chan)
	}
}

proc joinflood:protect {nick host hand chan} {
global black
if {[setting:get $chan antijoinflood]} {
if {[isbotnick $nick]} { return }
	set check_webchat [check:webchat $host]
if {$check_webchat == "1"} {
	set ident [lindex [split $host "@"] 0]
	set host "*!$ident@*"
}
	set user_getset [setting:get $chan antijoinflood-userset]
	set getset [setting:get $chan joinflood]
if {$user_getset == ""} { set user_getset $black(antijoinflood_user_joins) }
if {$getset == ""} { set getset $black(joinflood:protect) }
	set user_num [scan $user_getset %\[^:\]]
	set user_time [scan $user_getset %*\[^:\]:%s]
	set num [scan $getset %\[^:\]]
	set time [scan $getset %*\[^:\]:%s]
	set replace(%chan%) $chan
	
if {![info exists black(floodjoin:on:$chan)]} {
foreach tmr [utimers] {
if {[string match "*joinflood:unset $chan*" [join [lindex $tmr 1]]]} {
	killutimer [lindex $tmr 2]
	}
}
if {![info exists black(antijoinflood:$chan)]} { 
	set black(antijoinflood:$chan) 0 
}
	incr black(antijoinflood:$chan)
	utimer $time [list joinflood:unset $chan]
if {$black(antijoinflood:$chan) >= "$num"} {
if {![botisop $chan] && ![setting:get $chan xonly]} { return }
	set black(floodjoin:on:$chan) 1
	set modes [joinflood:getmodes $chan]
if {$modes != ""} {
	putquick "MODE $chan +$modes" ; utimer $black(nomodetime) [list joinflood:unlock $chan $modes]
}
if {$black(fjoinhow) == "1"} {
	set getlang [string tolower [setting:get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
	set getmessage $black(say.$getlang.antijoinflood.2)
	set message [string map [array get replace] $getmessage]
	puthelp "NOTICE @$chan :$message"
				}
			}
		}
foreach tmr [utimers] {
if {[string match "*joinflood:unset:host $chan $host*" [join [lindex $tmr 1]]]} {
	killutimer [lindex $tmr 2]
	}
}
if {![info exists black(antijoinflood:$host:$chan)]} { 
	set black(antijoinflood:$host:$chan) 0 
}
	incr black(antijoinflood:$host:$chan)
	utimer $user_time [list joinflood:unset:host $chan $host]
if {$black(antijoinflood:$host:$chan) >= "$user_num"} {
	blacktools:banner:2 $nick "ANTIJOINFLOOD" $chan $chan $host "0" ""
	who:chan $chan
if {[info exists black(antijoinflood:$host:$chan)]} {
	unset black(antijoinflood:$host:$chan)
			}
		}	
	}
}

proc joinflood:getmodes {chan} {
	global black
	set current_modes [getchanmode $chan]
	set putmode ""
	set chanmodes [string map {"+" ""} [split [lindex $current_modes 0] ""]]
foreach mod [split $black(modes) ""] {
if {[lsearch $chanmodes $mod] < 0} {
	lappend putmode $mod
	}
}
	return $putmode	
}
	
##############
#########################################################################
##   END                                                               ##
#########################################################################
