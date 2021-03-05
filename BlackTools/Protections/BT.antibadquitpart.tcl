#########################################################################
##          BlackTools - The Ultimate Channel Control Script           ##
##                    One TCL. One smart Eggdrop                       ##
#########################################################################
######################   ANTIBADQUITPART TCL   ##########################
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

proc badquitpart:protect {nick host hand chan arg} {
global botnick black
	set chan1 $chan
	set arg [split $arg]
	set found_pub ""
	set found_color 0
	set found_msgflood 0
	set banmask [return_mask [return_host_num "antibadquitpart" $chan $host] $host $nick]
if {![validchan $chan]} { return }
if {[setting:get $chan badquitpart]} {
	set handle [nick2hand $nick]
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
	set text [check:except $arg $chan $black(badquitpartwords) $black(badquitpartexcept) "BADQUITPART"]
	set check_word [check:file:word $chan $text "BADQUITPART"]
if {$check_word != ""} {
	set found_pub $check_word
}
if {$found_pub != ""} {
	blacktools:banner:2 $nick "ANTIBADQUITPART:$found_pub" $chan $chan1 $host "0" ""
if {[link:status $chan] == "1"} {
	foreach c [link:chan:get $chan] {
	blacktools:banner:2 $nick "ANTIBADQUITPART:$found_pub" $c $c $host "1" ""
				}
	blacktools:link_ban2 [link:get] 0
			} else { who:chan $chan }
	return
		}
	}
if {[setting:get $chan quitpartcolor]} {
	set handle [nick2hand $nick]
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
foreach color $black(badcolors) {
if {[setting:get $chan quitpartcolor] && [string match -nocase $color $arg]} {
	set found_color 1			
	}
}
if {$found_color == "1"} {
	blacktools:banner:2 $nick "ANTIBADQUITPART:COLOR" $chan $chan $host "0"	""
if {[link:status $chan] == "1"} {
	foreach c [link:chan:get $chan] {
	blacktools:banner:2 $nick "ANTIBADQUITPART:COLOR" $c $c $host "1" ""
				}
			}
	return
		}
	}
if {[setting:get $chan quitpartmsgflood]} {
	set handle [nick2hand $nick]
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
	set getlongchar [setting:get $chan quitpartmsgflood-char]
if {$getlongchar == ""} { set getlongchar "$black(badquitpartmsgchar)" }
if {[string length $arg] >= $getlongchar} {
	set found_msgflood 1
		}
if {$found_msgflood == "1"} {
if {$black(badquitpartmode) != ""} {
	putserv "MODE $chan +$black(badquitpartmode)"
	utimer $black(badquitpartsecunde) [list badquitpart:removemode $chan]
}
	blacktools:banner:2 $nick "ANTIBADQUITPART:MSGFLOOD" $chan $chan $host "0" ""
if {[link:status $chan] == "1"} {
	foreach c [link:chan:get $chan] {
	blacktools:banner:2 $nick "ANTIBADQUITPART:MSGFLOOD" $c $c $host "1" ""
				}
			}
	return
		}
	}
}

proc badquitpart:removemode {chan} {
	global black
	putserv "MODE $chan -$black(badquitpartmode)"
}

proc badquitpartsign:protect {nick host hand chan arg} {
	badquitpart:protect $nick $host $hand $chan $arg
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
