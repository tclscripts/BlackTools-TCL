#########################################################################
##          BlackTools - The Ultimate Channel Control Script           ##
##                    One TCL. One smart Eggdrop                       ##
#########################################################################
###########################   BADNICK TCL   #############################
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

proc badnick:protect:join {nick host hand chan} {
global black botnick
	set found_nick ""
if {![validchan $chan]} { return }
	set chan1 $chan
if {[setting:get $chan badnick]} {
if {![botisop $chan] && ![setting:get $chan xonly]} { return }
	set bl_protect [blacktools:protect $nick $chan]
if {$bl_protect == "1"} { return }
if {[matchattr $hand $black(exceptflags) $chan]} { return }
	set getnick [check:except $nick $chan $black(badnickwords) $black(badnickexcept) "BADNICK"]
	set check_word [check:file:word $chan $getnick "BADNICK"]
if {$check_word != ""} {
	set found_nick $check_word
}
if {$found_nick != ""} {
	set getlang [string tolower [setting:get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
if {[setting:get $chan badnick-bmethod] == ""} {
	set bmethod $black(badnbanmethod)
} else { set bmethod [setting:get $chan badnick-bmethod] }

if {$bmethod == "2"} {
	blacktools:banner:2 $nick "BADNICK:$found_nick" $chan $chan1 $host "0" ""
if {[link:status $chan] == "1"} {
	foreach c [link:chan:get $chan] {
	blacktools:banner:2 $nick "BADNICK:$found_nick" $c $c $host "1" ""
					}
	blacktools:link_ban2 [link:get] 0
				} else { who:chan $chan }
	return
			}
	foreach tmr [utimers] {
if {[string match "*badnick:check:again $nick $chan*" [join [lindex $tmr 1]]]} {
	killutimer [lindex $tmr 2]
	}
}
if {[setting:get $chan badnick-banwait] == ""} {
	set wait_time $black(badnbanwait)
	utimer $black(badnbanwait) [list badnick:check:again $nick $chan $host]
} else {
	set wait_time [setting:get $chan badnick-banwait]
	utimer $wait_time [list badnick:check:again $nick $chan $host]
}
	set text [black:color:set "" $black(say.$getlang.badnick.10)]
	set reply [join $text]
	set replace(%time%) $wait_time
	set message [string map [array get replace] $reply]
	putquick "PRIVMSG $nick :\[$chan\] $message"
		}			
	}
}

proc badnick:check:again {nick chan host} {
	global black
if {[onchan $nick $chan]} {
	blacktools:banner:2 $nick "BADNICK:$nick" $chan $chan $host "0" ""
if {[link:status $chan] == "1"} {
	foreach c [link:chan:get $chan] {
	blacktools:banner:2 $nick "BADNICK:$nick" $c $c $host "1" ""
			}
	blacktools:link_ban2 [link:get] 0
		} else { who:chan $chan }
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
	set newnick [check:except $newnick $chan $black(badnickwords) $black(badnickexcept) "BADNICK"]
	set check_word [check:file:word $chan $newnick "BADNICK"]
if {$check_word != ""} {
	set found_nick $check_word
}
foreach badnick [string tolower $black(badnickwords)] {
if {[string match $badnick [string tolower $newnick]]} {
	set found_nick $badnick
			}
		}
if {$found_nick != ""} {
	set getlang [string tolower [setting:get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
if {[setting:get $chan badnick-bmethod] == ""} {
	set bmethod $black(badnbanmethod)
} else { set bmethod [setting:get $chan badnick-bmethod] }

if {$bmethod == "2"} {
	blacktools:banner:2 $newnick "BADNICK:$found_nick" $chan $chan $host "0" ""
if {[link:status $chan] == "1"} {
	foreach c [link:chan:get $chan] {
	blacktools:banner:2 $newnick "BADNICK:$found_nick" $c $c $host "1" ""
					}
	blacktools:link_ban2 [link:get] 0
				} else { who:chan $chan }
	return
				}
foreach tmr [utimers] {
if {[string match "*badnick:check:again $newnick $chan*" [join [lindex $tmr 1]]]} {
	killutimer [lindex $tmr 2]
	}
}
if {[setting:get $chan badnick-banwait] == ""} {
	set wait_time $black(badnbanwait)
	utimer $black(badnbanwait) [list badnick:check:again $newnick $chan $host]
} else {
	set wait_time [setting:get $chan badnick-banwait]
	utimer $wait_time [list badnick:check:again $newnick $chan $host]
}
	set text [black:color:set "" $black(say.$getlang.badnick.10)]
	set reply [join $text]
	set replace(%time%) $wait_time
	set message [string map [array get replace] $reply]
	putquick "PRIVMSG $newnick :\[$chan\] $message"
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
