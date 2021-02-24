#########################################################################
##          BlackTools - The Ultimate Channel Control Script           ##
##                    One TCL. One smart Eggdrop                       ##
#########################################################################
#########################   ANTINOTICE TCL   ############################
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

proc antinotice:protect {nick host hand arg chan} {
global black botnick
if {![validchan $chan]} { return }
if {[setting:get $chan antinotice]} {
	set handle [nick2hand $nick]
if {![botisop $chan] && ![setting:get $chan xonly]} { return }
if {[matchattr $handle $black(exceptflags) $chan]} { return }
	set bl_protect [blacktools:protect $nick $chan]
if {$bl_protect == "1"} { return }
if {[isbotnick $nick]} { return }
if {[string equal -nocase $chan $botnick]} { return }
	blacktools:banner:1 $nick "ANTINOTICE" $chan $host [get:banmethod "antinotice" $chan] [link:chan:get $chan]
	}
}

##############
#########################################################################
##   END                                                               ##
#########################################################################
