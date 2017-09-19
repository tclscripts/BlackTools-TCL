#########################################################################
##          BlackTools - The Ultimate Channel Control Script           ##
##                    One TCL. One smart Eggdrop                       ##
#########################################################################
##########################   INVITEBAN TCL   ############################
#########################################################################
##						                       ##
##     BlackTools  : http://blacktools.tclscripts.net	               ##
##     Bugs report : http://www.tclscripts.net/	                       ##
##     Online Help : irc://irc.undernet.org/tcl-help 	               ##
##                   #TCL-HELP / UnderNet                              ##
##                   You can ask in english or romanian                ##
##					                               ##
#########################################################################

proc inviteban:protect {from type arg} {
	global black
	set invitechan [lindex [split $arg] 1]
	set ::invitechan $invitechan
if {[string match -nocase "*!*" $from]} {
	set split_from [split $from "!"]
	set from_nick [lindex [split $split_from] 0]
if {[string equal -nocase $from_nick $black(chanserv)]} {
	return
}
	putserv "USERHOST :$from_nick"
	bind RAW - 302 inviteban:gethost
	return
}
if {[string equal -nocase $from $black(chanserv)]} {
	return
}
	putserv "USERHOST :$from"
	bind RAW - 302 inviteban:gethost
}

proc inviteban:gethost {from keyword arguments} {
	global black
	set invitechan $::invitechan
	set hostname [lindex [split $arguments] 1]
if {[regexp {\+} $hostname]} {
	set split_host [split $hostname "+"]
} else {
	set split_host [split $hostname "-"]
}
	set mask [lindex $split_host 1]
	set getnick [string map {
			"=" ""
			":" ""
			} [lindex $split_host 0]]
if {$getnick != ""} {
	set mask "$getnick!$mask"
foreach chan [channels] {
	set bl_protect [blacktools:protect $getnick $chan]
if {$bl_protect == "1"} { continue }
if {[matchattr [nick2hand $getnick] $black(exceptflags) $chan]} {
	continue
}
	set chan1 $chan
if {[setting:get $chan inviteban]} {
	blacktools:banner:2 $getnick "INVITEBAN:[encoding convertto utf-8 $invitechan]" $chan $chan1 $mask "0"
if {[link:status $chan] == "1"} {
	foreach c [link:chan:get $chan] {
	blacktools:banner:2 $getnick "INVITEBAN:[encoding convertto utf-8 $invitechan]" $c $c $mask "1"
					}
				}		
			}
		}
	}
	check:if:bind "inviteban:gethost" "302"
}

##############
#########################################################################
##   END                                                               ##
#########################################################################