#########################################################################
##          BlackTools - The Ultimate Channel Control Script           ##
##                    One TCL. One smart Eggdrop                       ##
#########################################################################
#######################   ANTICHANFLOOD TCL   ###########################
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

proc antifloodchan:protect {nick host hand chan arg} {
global black
if {![validchan $chan]} { return }
	set handle [nick2hand $nick]
if {![botisop $chan] && ![setting:get $chan xonly]} { return }
if {[matchattr $handle $black(exceptflags) $chan]} { return }
if {[isbotnick $nick]} { return  }
	set bl_protect [blacktools:protect $nick $chan]
if {$bl_protect == "1"} { return }
	set getset [setting:get $chan chanflood]
if {$getset == ""} { set getset "$black(antichanfloodrepeats)" }
	set number [scan $getset %\[^:\]]
	set time [scan $getset %*\[^:\]:%s]
if {![info exists black(repeat:$host:$chan:flood)]} { 
	set black(repeat:$host:$chan:flood) 0 
}
foreach tmr [utimers] {
if {[string match "*chanflood:unset $host $chan*" [join [lindex $tmr 1]]]} {
	killutimer [lindex $tmr 2]
	}
}
	incr black(repeat:$host:$chan:flood)
	utimer $time [list chanflood:unset $host $chan]
if {$black(repeat:$host:$chan:flood) >= $number} {
	blacktools:banner:1 $nick "ANTICHANFLOOD" $chan $host [get:banmethod "antichanflood" $chan] [link:chan:get $chan]
	chanflood:unset $host $chan
	return 1
	}
}

proc chanflood:unset {host chan} {
	global black
if {[info exists black(repeat:$host:$chan:flood)]} { 
	unset black(repeat:$host:$chan:flood)
	}
}

##############
#########################################################################
##   END                                                               ##
#########################################################################
