#########################################################################
##          BlackTools - The Ultimate Channel Control Script           ##
##                    One TCL. One smart Eggdrop                       ##
#########################################################################
##########################   ANTICTCP TCL   #############################
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

proc antictcp:protect {nick host hand chan keyword arg} {
global black botnick
if {![validchan $chan]} { return }
if {[setting:get $chan antictcp]} {
	set handle [nick2hand $nick]
if {[string equal -nocase "action" $keyword] || [string equal -nocase "chat" $keyword]} {return}
if {![botisop $chan] && ![setting:get $chan xonly]} { return }
if {[matchattr $handle $black(exceptflags) $chan]} { return}
	set bl_protect [blacktools:protect $nick $chan]
if {$bl_protect == "1"} { return }
if {[isbotnick $nick]} { return }
	blacktools:banner:1 $nick "ANTICTCP" $chan $host [get:banmethod "antictcp" $chan] [link:chan:get $chan]
	}
}

##############
#########################################################################
##   END                                                               ##
#########################################################################
