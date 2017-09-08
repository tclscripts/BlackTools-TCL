#########################################################################
##          BlackTools - The Ultimate Channel Control Script           ##
##                    One TCL. One smart Eggdrop                       ##
#########################################################################
###########################   BADNICK TCL   #############################
#########################################################################
##						                       ##
##     BlackTools  : http://blacktools.tclscripts.net	               ##
##     Bugs report : http://www.tclscripts.net/	                       ##
##     Online Help : irc://irc.undernet.org/tcl-help 	               ##
##                   #TCL-HELP / UnderNet                              ##
##                   You can ask in english or romanian                ##
##					                               ##
#########################################################################

proc badnick:protect:join {nick host hand chan} {
global black botnick
	set handle [nick2hand $nick]
	set found_nick ""
if {![validchan $chan]} { return }
	set chan1 $chan
if {[setting:get $chan badnick]} {
if {![botisop $chan] && ![setting:get $chan xonly]} { return }
	set bl_protect [blacktools:protect $nick $chan]
if {$bl_protect == "1"} { return }
if {[matchattr $handle $black(exceptflags) $chan]} { return }
	set check_word [check:file:word $chan $nick "BADNICK"]
if {$check_word != "0"} {
	set found_nick $check_word
}
foreach badnick [string tolower $black(badnickwords)] {
if {[string match -nocase $badnick $nick]} {
	set found_nick $badnick
			}
		}
if {$found_nick != ""} {
	blacktools:banner:2 $nick "BADNICK:$found_nick" $chan $chan1 $host "0"
if {[link:status $chan] == "1"} {
	foreach c [link:chan:get $chan] {
	blacktools:banner:2 $nick "BADNICK:$found_nick" $c $c $host "1"
				}
			}			
		}
	}
}

proc badnick:protect:change {nick host hand chan newnick} {
global black botnick
	set handle [nick2hand $nick]
	set found_nick ""
if {![validchan $chan]} { return }
if {[setting:get $chan badnick]} {
	set chan1 $chan
if {![botisop $chan] && ![setting:get $chan xonly]} { return }
if {[matchattr $handle $black(exceptflags) $chan]} { return }
	set bl_protect [blacktools:protect $nick $chan]
if {$bl_protect == "1"} { return }
	set check_word [check:file:word $chan $newnick "BADNICK"]
if {$check_word != "0"} {
	set found_nick $check_word
}
foreach badnick [string tolower $black(badnickwords)] {
if {[string match $badnick [string tolower $newnick]]} {
	set found_nick $badnick
			}
		}
if {$found_nick != ""} {
	blacktools:banner:2 $newnick "BADNICK:$found_nick" $chan $chan1 $host "0"
if {[link:status $chan] == "1"} {
	foreach c [link:chan:get $chan] {
	blacktools:banner:2 $nick "BADNICK:$found_nick" $c $c $host "1"
				}
			}		
		}
	}
}


proc badnick:module {nick host hand chan arg} {
	global black lastbind
	set type 0
	set chan1 "$chan"
	set why [lindex [split $arg] 0]
	set badn [join [lrange [split $arg] 1 end]]
	set number [lindex [split $arg] 1]
if {[regexp {^[&#]} $why] && [matchattr $hand nmo|M $why]} {
	set chan "$why"
	set why [lindex [split $arg] 1]
	set badn [join [lrange [split $arg] 2 end]]
	set number [lindex [split $arg] 2]
}
	set return [blacktools:mychar $lastbind $hand]
if {$return == "0"} {
		return
}
	prot:module:process $nick $host $hand $chan $chan1 $why $badn $type $number "badnick"
}

##############
#########################################################################
##   END                                                               ##
#########################################################################