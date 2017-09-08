#########################################################################
##          BlackTools - The Ultimate Channel Control Script           ##
##                    One TCL. One smart Eggdrop                       ##
#########################################################################
######################   ANTIBADQUITPART TCL   ##########################
#########################################################################
##						                       ##
##     BlackTools  : http://blacktools.tclscripts.net	               ##
##     Bugs report : http://www.tclscripts.net/	                       ##
##     Online Help : irc://irc.undernet.org/tcl-help 	               ##
##                   #TCL-HELP / UnderNet                              ##
##                   You can ask in english or romanian                ##
##					                               ##
#########################################################################

proc antipubpart:protect {nick host hand chan arg} {
global botnick black
	set chan1 $chan
	set found_pub ""
	set banmask [return_mask [return_host_num "antibadquitpart" $chan] $host $nick]
if {![validchan $chan]} { return }
if {[setting:get $chan antibadquitpart]} {
	set handle [nick2hand $nick]
if {[check:except $arg $chan $black(badquitpartwords) $black(badquitpartexcept) "BADQUITPART-EXCEPT"] == "1"} { 
	return
}
foreach usr [userlist "-|AOMV" $chan] {
	set hst [getuser $usr hosts]
foreach hhost $hst {
if {[string match -nocase $hhost $banmask]} {
	return
		}
	}
}
if {![botisop $chan] && ![setting:get $chan xonly]} { return }
if {[matchattr $handle $black(exceptflags) $chan]} { return }
	set bl_protect [blacktools:protect $nick $chan]
if {$bl_protect == "1"} { return }
if {[isbotnick $nick]} { return }
foreach word $black(badquitpartwords) {
if {[string match -nocase $word $arg]} {
	set found_pub $word
			}
		}
if {$found_pub != ""} {
	blacktools:banner:2 $nick "ANTIBADQUITPART:$found_pub" $chan $chan1 $host "0"
if {[link:status $chan] == "1"} {
	foreach c [link:chan:get $chan] {
	blacktools:banner:2 $nick "ANTIBADQUITPART:$found_pub" $c $c $host "1"
				}
			}		
		}
	}
}

proc antipubsign:protect {nick host hand chan arg} {
	antipubpart:protect $nick $host $hand $chan $arg
}


proc anticolorpart:protect {nick host hand chan arg} {
global botnick black
	set handle [nick2hand $nick]
	set found_color 0
	set banmask [return_mask [return_host_num "antibadquitpart" $chan] $host $nick]
if {![validchan $chan]} { return }
if {[setting:get $chan antibadquitpart]} {
	set chan1 $chan
if {![botisop $chan] && ![setting:get $chan xonly]} { return }
if {[matchattr $handle $black(exceptflags) $chan]} { return }
	set bl_protect [blacktools:protect $nick $chan]
if {$bl_protect == "1"} { return }
if {[isbotnick $nick]} { return }
foreach usr [userlist "-|AOMV" $chan] {
	set hst [getuser $usr hosts]
foreach hhost $hst {
if {[string match -nocase $hhost $banmask]} {
	return
		}
	}
}
foreach color $black(badcolors) {
if {[setting:get $chan quitpartcolor] && [string match -nocase $color $arg]} {
	set found_color 1			
			}
		}
if {$found_color == "1"} {
	blacktools:banner:2 $nick "ANTIBADQUITPART" $chan $chan $host "0"	
if {[link:status $chan] == "1"} {
	foreach c [link:chan:get $chan] {
	blacktools:banner:2 $nick "ANTIBADQUITPART" $c $c $host "1"
				}
			}
		}
	}
}

proc anticolorquit:protect {nick host hand chan arg} {
	anticolorpart:protect $nick $host $hand $chan $arg
}

proc badquitpart:module {nick host hand chan arg} {
	global black lastbind
	set type 0
	set chan1 "$chan"
	set why [lindex [split $arg] 0]
	set except [join [lrange [split $arg] 1 end]]
	set number [lindex [split $arg] 1]
if {[regexp {^[&#]} $why] && [matchattr $hand nmo|M $why]} {
	set chan "$why"
	set why [lindex [split $arg] 1]
	set except [join [lrange [split $arg] 2 end]]
	set number [lindex [split $arg] 2]
}
	set return [blacktools:mychar $lastbind $hand]
if {$return == "0"} {
		return
}
	prot:module:process $nick $host $hand $chan $chan1 $why $except $type $number "badquitpart"
}

##############
#########################################################################
##   END                                                               ##
#########################################################################
