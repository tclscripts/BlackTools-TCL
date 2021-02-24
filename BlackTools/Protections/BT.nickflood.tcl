#########################################################################
##          BlackTools - The Ultimate Channel Control Script           ##
##                    One TCL. One smart Eggdrop                       ##
#########################################################################
##########################   NICKFLOOD TCL   ############################
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

proc nickflood:protect {nick host hand chan arg} {
global black
if {![validchan $chan]} { return }
if {[setting:get $chan nickflood]} {
	set handle [nick2hand $nick]
if {![botisop $chan] && ![setting:get $chan xonly]} { return }
if {[matchattr $handle $black(exceptflags) $chan]} { return }
if {[isbotnick $nick]} { return  }
	set bl_protect [blacktools:protect $nick $chan]
if {$bl_protect == "1"} { return }
	set getset [setting:get $chan nickflood-repeat]
if {$getset == ""} { set getset "$black(nickfloodrepeats)" }
	set number [scan $getset %\[^:\]]
	set time [scan $getset %*\[^:\]:%s]
if {![info exists black(nick:$host:$chan:flood)]} { 
	set black(nick:$host:$chan:flood) 0 
}
foreach tmr [utimers] {
if {[string match "*nickflood:unset $host $chan*" [join [lindex $tmr 1]]]} {
	killutimer [lindex $tmr 2]
	}
}
	incr black(nick:$host:$chan:flood)
	utimer $time [list nickflood:unset $host $chan]
if {$black(nick:$host:$chan:flood) >= $number} {
	blacktools:banner:1 $nick "NICKFLOOD:$arg" $chan $host [get:banmethod "nickflood" $chan] [link:chan:get $chan]
	nickflood:unset $host $chan
		}
	}
}


proc nickflood:unset {host chan} {
	global black
foreach tmr [utimers] {
if {[string match "*nickflood:unset $host $chan*" [join [lindex $tmr 1]]]} {
	killutimer [lindex $tmr 2]
	}
}
if {[info exists black(nick:$host:$chan:flood)]} { 
	unset black(nick:$host:$chan:flood)
	}
}

##############
#########################################################################
##   END                                                               ##
#########################################################################
