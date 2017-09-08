#########################################################################
##          BlackTools - The Ultimate Channel Control Script           ##
##                    One TCL. One smart Eggdrop                       ##
#########################################################################
########################   ANTIJOINPART TCL   ###########################
#########################################################################
##						                       ##
##     BlackTools  : http://blacktools.tclscripts.net	               ##
##     Bugs report : http://www.tclscripts.net/	                       ##
##     Online Help : irc://irc.undernet.org/tcl-help 	               ##
##                   #TCL-HELP / UnderNet                              ##
##                   You can ask in english or romanian                ##
##					                               ##
#########################################################################

proc antijoinpart:protect {nick host hand chan arg} {
global black botnick
	set handle [nick2hand $nick]
if {![validchan $chan]} { return }
if {[setting:get $chan antijoinpart]} {
if {[matchattr $handle $black(exceptflags) $chan]} { return }
if {[isbotnick $nick]} { return }
if {[string equal -nocase $chan $botnick]} { return }
if {[getchanjoin $nick $chan] >= [expr {[clock seconds]-$black(joinparttime)}]} {
	blacktools:banner:1 $nick "ANTIJOINPART" $chan $host [get:banmethod "antijoinpart" $chan] [link:chan:get $chan]		
		}
	}
}

proc antijoinpart:protect:kick {nick host hand chan kicked reason} {
global black botnick
	set gethost [getchanhost $kicked $chan]
	antijoinpart:protect $kicked $gethost $hand $chan "none"
}

##############
#########################################################################
##   END                                                               ##
#########################################################################