#########################################################################
##          BlackTools - The Ultimate Channel Control Script           ##
##                    One TCL. One smart Eggdrop                       ##
#########################################################################
########################   ANTIREPEAT TCL   #############################
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

proc antirepeat:protect {nick host hand chan arg} {
global black botnick
	set arg [color:filter [join [split $arg]]]
	set handle [nick2hand $nick]
if {![validchan $chan]} { return }
if {![botisop $chan] && ![setting:get $chan xonly]} { return }
if {[matchattr $handle $black(exceptflags) $chan]} { return }
	set bl_protect [blacktools:protect $nick $chan]
if {$bl_protect == "1"} { return }
if {[isbotnick $nick]} { return }
	set repeatset [setting:get $chan antirepeat-setting]
if {$repeatset == ""} { set repeatset "$black(antirepeat:repeats)" }
	set number [scan $repeatset %\[^:\]]
	set time [scan $repeatset %*\[^:\]:%s]
foreach tmr [utimers] {
if {[string match "*antirepeat:remove $host $chan $arg*" [join [lindex $tmr 1]]]} {
	killutimer [lindex $tmr 2]
	}	
}

if {![info exists black(repeat:$host:$chan:$arg)]} { 
	set black(repeat:$host:$chan:$arg) 0 
}
	incr black(repeat:$host:$chan:$arg)
	utimer $time [list antirepeat:remove $host $chan $arg]

if {$black(repeat:$host:$chan:$arg) >= $number} {
	blacktools:banner:1 $nick "ANTIREPEAT" $chan $host [get:banmethod "antirepeat" $chan] [link:chan:get $chan]
	antirepeat:remove $host $chan $arg
	return 1
	}
}

proc antirepeat:remove {host chan arg} {
	global black
	
foreach tmr [utimers] {
if {[string match "*antirepeat:remove $host $chan $arg*" [join [lindex $tmr 1]]]} {
	killutimer [lindex $tmr 2]
	}	
}

if {[info exists black(repeat:$host:$chan:$arg)]} {
	unset black(repeat:$host:$chan:$arg)
	}
}

proc antirepeat:protect:me {nick host hand chan keyword arg} {
	antirepeat:protect $nick $host $hand $chan $arg
}

##############
#########################################################################
##   END                                                               ##
#########################################################################
