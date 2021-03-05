#########################################################################
##          BlackTools - The Ultimate Channel Control Script           ##
##                    One TCL. One smart Eggdrop                       ##
#########################################################################
##########################   BADIDENT TCL   #############################
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

proc badident:protect:join {nick host hand chan} {
global black botnick
	set found_ident ""
if {![validchan $chan]} { return }
if {[setting:get $chan badident]} {
	set chan1 $chan
if {[matchattr $hand $black(exceptflags) $chan]} { return }
	set bl_protect [blacktools:protect $nick $chan]
if {$bl_protect == "1"} { return }
	set ident "[string map {"~" ""} [string tolower [lindex [split $host "@"] 0]]]"
	set text [check:except $ident $chan $black(badidentwords) $black(badidentexcept) "BADIDENT"]
	set check_word [check:file:word $chan $text "BADIDENT"]
if {$check_word != ""} {
	set found_ident $check_word
}
if {$found_ident != ""} {
	blacktools:banner:2 $nick "BADIDENT:$found_ident" $chan $chan1 $host "0" ""
if {[link:status $chan] == "1"} {
	foreach c [link:chan:get $chan] {
	blacktools:banner:2 $nick "BADIDENT:$found_ident" $c $c $host "1" ""
				}
	blacktools:link_ban2 [link:get] 0
			} else { who:chan $chan }	
		}
	}
}

proc badident:module {nick host hand chan arg} {
	global black lastbind
	set type 0
	set chan1 "$chan"
	set why [lindex [split $arg] 0]
	set badi [join [lrange [split $arg] 1 end]]
	set number [lindex [split $arg] 1]
if {[regexp {^[&#]} $why] && [matchattr $hand nmo|M $why]} {
	set chan "$why"
	set why [lindex [split $arg] 1]
	set badi [join [lrange [split $arg] 2 end]]
	set number [lindex [split $arg] 2]
}
	set return [blacktools:mychar $lastbind $hand]
if {$return == "0"} {
		return
}
	prot:module:process $nick $host $hand $chan $chan1 $why $badi $type $number "badident"
}

##############
#########################################################################
##   END                                                               ##
#########################################################################
