#########################################################################
##          BlackTools - The Ultimate Channel Control Script           ##
##                    One TCL. One smart Eggdrop                       ##
#########################################################################
###########################   CLONESCAN TCL   ###########################
#########################################################################
##						                       ##
##     BlackTools  : http://blacktools.tclscripts.net	               ##
##     Bugs report : http://www.tclscripts.net/	                       ##
##     Online Help : irc://irc.undernet.org/tcl-help 	               ##
##                   #TCL-HELP / UnderNet                              ##
##                   You can ask in english or romanian                ##
##					                               ##
#########################################################################

proc clonescan:module {nick host hand chan arg} {
	global black lastbind
	set return [blacktools:mychar $lastbind $hand]
if {$return == "0"} {
		return
}
	set why [lindex [split $arg] 0]
	set type 0
if {[matchattr $hand nmo|M $chan] && ($why != "") && ![regexp {^[&#]} $why]} {
	set chan1 "$chan"
	set clone [join [lrange [split $arg] 1 end]]
	set number [lindex [split $arg] 1]
if {[regexp {^[&#]} $why]} {
	set chan "$why"
	set why [lindex [split $arg] 1]
	set clone [join [lrange [split $arg] 2 end]]
	set number [lindex [split $arg] 2]
}
	prot:module:process $nick $host $hand $chan $chan1 $why $clone $type $number "clonescan"
	return
}
	set c [lindex [split $arg] 0]
	set type 0
	set chan1 "$chan"
if {[regexp {^[&#]} $c] && [matchattr $hand nmo|M $c]} {
	set chan "$c"
}
	scanner:process $nick $host $hand $chan $chan1 $type
}

proc scanner:process {nick host hand chan chan1 type} {
global botnick black
	set cmd_status [btcmd:status $chan $hand "clonescan" 0]
if {$cmd_status == "1"} { 
	return 
}
	array set clones [list]
	if {$chan == ""} {
switch $type {
	0 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr "clonescan"
	}
	1 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_nick "clonescan"
	}
	2 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_priv "clonescan"
		}
	}
	return 0
}
if {![validchan $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.novalidchan none
	return
}
if {![onchan $botnick $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.notonchan none
	return
}
	blacktools:tell $nick $host $hand $chan $chan1 clonescan.11 none
	clonescan:act $chan $nick $hand $chan1 $type 0
}

proc clonescan:timer {} {
	global black
	set channels ""
	set type 1
foreach chan [channels] {
if {[validchan $chan]} {
if {[setting:get $chan clonescan]} {
	lappend channels $chan
			}
		}
	}
if {$channels != ""} {
	clonescan:act $channels "nick" "" "chan1" $type 0
	set clonescan_time [time_return_minute $black(clonescantime)]
	timer $clonescan_time clonescan:timer
	}
}

proc clonescan:act {channels nick hand chan1 type counter} {
	global black
	set chan [lindex $channels $counter]
	set cc [expr $counter + 1]
	set found_clones 0
	array set clones [list]
if {$chan != ""} {
	set replace(%chan%) $chan
	set getlang [string tolower [setting:get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
if {[setting:get $chan clonescan-maxclone] == "0" || [setting:get $chan clonescan-maxclone] == ""} {
	set maxclone $black(maxclone)
} else { set maxclone [setting:get $chan clonescan-maxclone] }
if {$maxclone < "2"} { return }
	putlog "\[BT\] Scaning for clones on $chan.."
foreach user [chanlist $chan] {
	set host [string tolower [lindex [split [getchanhost $user $chan] @] 1]]
	set findword [prot:findword $chan "CLONESCAN-EXCEPT" $host]
if {$findword == "1"} {
	continue
}
if {[string match "*undernet.org*" $host]} {
	continue
}

	set replace(%host%) $host
	lappend clones($host) $user
}
foreach clone [array names clones] {
	set userlist [join $clones($clone)]
if {[llength [split $userlist]] >= $maxclone} {
	set found_clones 1
if {$type == "0"} {
	blacktools:tell $nick "" $hand $chan $chan1 clonescan.10 "[llength [split $userlist]] $clone [join $clones($clone) ", "]"
				}
if {$type == "1"} {
	set replace(%msg.1%) [llength [split $userlist]]
	set replace(%msg.2%) $clone
	set replace(%msg.7%) [join $clones($clone) ", "]
	set replace(%chan%) $chan
	set message [string map [array get replace] $black(say.$getlang.clonescan.10)]
	putserv "NOTICE @$chan :$message"
	set mask "*!*@$clone"
	blacktools:banner:2 $nick "CLONESCAN" $chan $chan1 $mask "0"
				}
			} 
		}	
	}
if {([lindex $channels $cc] != "") && ($type == "1")} {
	utimer 5 [list clonescan:act $channels $nick $hand $chan1 $type $cc]
		}
if {($type == "0") && ($found_clones == "0")} {
	blacktools:tell $nick "" $hand $chan $chan1 clonescan.2 none
	}
}

##############
#########################################################################
##   END                                                               ##
#########################################################################
