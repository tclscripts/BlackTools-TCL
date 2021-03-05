#########################################################################
##          BlackTools - The Ultimate Channel Control Script           ##
##                    One TCL. One smart Eggdrop                       ##
#########################################################################
##########################   BADHOST TCL   ##############################
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

proc badhost:protect {nick host hand chan} {
global black botnick
	set uhost [lindex [split $host @] 1]
	set chan1 $chan
	set found_bad ""
if {![validchan $chan]} { return }
if {[setting:get $chan badhost]} {
if {[matchattr $hand $black(exceptflags) $chan]} { return }
	set bl_protect [blacktools:protect $nick $chan]
if {$bl_protect == "1"} { return }
if {![botisop $chan] && ![setting:get $chan xonly]} { return }
	set gethost [check:except $uhost $chan $black(badhostword) $black(badhostexcept) "BADHOST"]
	set check_word [check:file:word $chan $gethost "BADHOST"]
if {$check_word != ""} {
	set found_bad $check_word
}
if {$found_bad != ""} {
	blacktools:banner:2 $nick "BADHOST:$found_bad" $chan $chan1 $host "0" ""
if {[link:status $chan] == "1"} {
	foreach c [link:chan:get $chan] {
	blacktools:banner:2 $nick "BADHOST:$found_bad" $c $c $host "1" ""
				}
	blacktools:link_ban2 [link:get] 0
			} else { who:chan $chan }
		}
	}	
}

proc badhost:module {nick host hand chan arg} {
	global black lastbind
	set type 0
	set chan1 "$chan"
	set why [lindex [split $arg] 0]
	set badh [join [lrange [split $arg] 1 end]]
	set number [lindex [split $arg] 1]
if {[regexp {^[&#]} $why] && [matchattr $hand nmo|M $why]} {
	set chan "$why"
	set why [lindex [split $arg] 1]
	set badh [join [lrange [split $arg] 2 end]]
	set number [lindex [split $arg] 2]
}
	set return [blacktools:mychar $lastbind $hand]
if {$return == "0"} {
		return
}
	prot:module:process $nick $host $hand $chan $chan1 $why $badh $type $number "badhost"
}

##############
#########################################################################
##   END                                                               ##
#########################################################################
