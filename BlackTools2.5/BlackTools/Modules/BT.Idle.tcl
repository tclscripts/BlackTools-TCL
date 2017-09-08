#########################################################################
##          BlackTools - The Ultimate Channel Control Script           ##
##                    One TCL. One smart Eggdrop                       ##
#########################################################################
#############################   IDLE TCL   ##############################
#########################################################################
##						                       ##
##     BlackTools  : http://blacktools.tclscripts.net	               ##
##     Bugs report : http://www.tclscripts.net/	                       ##
##     Online Help : irc://irc.undernet.org/tcl-help 	               ##
##                   #TCL-HELP / UnderNet                              ##
##                   You can ask in english or romanian                ##
##					                               ##
#########################################################################

proc antidlepublic {nick host hand chan arg} {
global black lastbind
	set type 0
	set chan1 "$chan"	
	set why [lindex [split $arg] 0]
	set user [lindex [split $arg] 1]
	set host [lindex [split $arg] 2]
if {[regexp {^[&#]} $why] && [matchattr $hand nmo|M $why]} {
	set chan "$why"
	set why [lindex [split $arg] 1]
	set user [lindex [split $arg] 2]
	set host [lindex [split $arg] 3]
}
	set return [blacktools:mychar $lastbind $hand]
if {$return == "0"} {
		return
}
	antidle:process $why $type $user $host $nick $hand $chan $chan1
}

proc antidle:process {why type user host nick hand chan chan1} {
global botnick black
	set show_user $user
	set flag "-|+f"
	set handle [nick2hand $user]
if {[matchattr $hand q]} { 
	blacktools:tell $nick $host $hand $chan $chan1 gl.glsuspend none
	return
}
if {[matchattr $hand -|q $chan]} { 
	blacktools:tell $nick $host $hand $chan $chan1 gl.suspend none
	return
}
if {($why == "") && ($type == "0")} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr "idle"
	return
}
if {($why == "") && ($type == "1")} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_nick "idle"
	return
}
if {($why == "") && ($type == "2")} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_priv "idle"
	return
}
if {![validchan $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.novalidchan none
	return
}

if {![onchan $botnick $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.notonchan none
	return
}

switch $why {

+o {
	setting:set $chan +idleop ""
	blacktools:tell $nick $host $hand $chan $chan1 idle.11 none
foreach tmr [timers] {
if {[string match "*antidle:module*" [join [lindex $tmr 1]]]} {
	return
	}	 
}
	set idle_time [time_return_minute $black(idleinterval)]
	timer $idle_time antidle:module
}
-o {
	setting:set $chan -idleop ""
	blacktools:tell $nick $host $hand $chan $chan1 idle.12 none
}
+v {
	setting:set $chan +idlevoice ""
	blacktools:tell $nick $host $hand $chan $chan1 idle.14 none
foreach tmr [timers] {
if {[string match "*antidle:module*" [join [lindex $tmr 1]]]} {
	return
	}	 
}
	set idle_time [time_return_minute $black(idleinterval)]
	timer $idle_time antidle:module
}
-v {
	setting:set $chan -idlevoice ""
	blacktools:tell $nick $host $hand $chan $chan1 idle.15 none
}

add {

if {$user == ""} {
if {$type == "0"} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr "idle"
	return
}
if {$type == "1"} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_nick "idle"
}
	return
}

if {[onchan $user $chan]} {
	set getuser [nick2hand $user]
if {$getuser != "*"} {
	set user $getuser
	}
}

if {[validuser $user]} { 
	chattr $user $flag $chan	
	blacktools:tell $nick $host $hand $chan $chan1 idle.18 $show_user
} else {
	
	set hosts [getchanhost $user $chan]
	set uhost "*!*@[lindex [split $hosts @] 1]"
	adduser $user $uhost
	chattr $user $flag $chan
	blacktools:tell $nick $host $hand $chan $chan1 idle.19 "$show_user $uhost"
	}
}

list {
	set list [userlist "-|f" $chan]
	blacktools:tell $nick $host $hand $chan $chan1 idle.20 "none"
if {$list == ""} {set list "NONE"}
	blacktools:tell $nick $host $hand $chan $chan1 idle.21 "$list"
}

del {

if {$user == ""} {
if {$type == "0"} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr "idle"
	return
}
if {$type == "1"} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_nick "idle"
}
	return
}

if {[onchan $user $chan]} {
	set getuser [nick2hand $user]
if {$getuser != "*"} {
	set user $getuser
	}
}

if {![validuser $user]} { 
	blacktools:tell $nick $host $hand $chan $chan1 idle.22 "$show_user"
	return
}

if {![matchattr $user "-|f" $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 idle.23 "$show_user"
	return
}
	chattr $user -|-f $chan
	blacktools:tell $nick $host $hand $chan $chan1 idle.24 "$show_user"
}

default {
	
if {$type == "0"} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr "idle"
	return
}
if {$type == "1"} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_nick "idle"
			}
		}
	}
}

proc antidle:module {} {
	global black
	set channels ""
foreach chan [channels] {
if {[setting:get $chan idleop] || [setting:get $chan idlevoice]} {
	lappend channels $chan
		}
	}
if {$channels != ""} {
	idlewhois $channels 0
	set idle_time [time_return_minute $black(idleinterval)]
	timer $idle_time antidle:module
	} else {
	return
	}
}

proc idlewhois {channels counter} {
global black botnick
	set chan [lindex $channels $counter]
	set cc [expr $counter + 1]
if {$chan != ""} {
	black:check:idle $chan
	utimer 30 [list idlewhois $channels $cc] 
} else {
	return
	}
}

proc black:check:idle {chan} {
	global black
	putlog "\[BT\] Scanning for idle on $chan"
	set black(idle_chan) $chan
foreach user [chanlist $chan] { 
	set handle [nick2hand $user]
if {[isop $user $chan] || [isvoice $user $chan]} { 
if {![isbotnick $user]} { 
	putserv "WHOIS $user $user"
				}
			}
		}
	bind raw - 317 idleprocespublic
}

proc idleprocespublic {nick int arg} {
global black
	set nick [string tolower [lindex [split $arg] 1]]
	set handle [nick2hand $nick]
	set idler [string tolower [lindex [split $arg] 2]]
	set minutesidle [expr $idler / 60]
	set chan $black(idle_chan)
if {[onchan $nick $chan]} {
	set idlevoicetime [setting:get $chan idlevoicemax]
if {$idlevoicetime == ""} { set idlevoicetime "$black(idlevoicemax)" }
	set idleoptime [setting:get $chan idleopmax]
if {$idleoptime == ""} { set idleoptime "$black(idleopmax)" }
if {![info exists black(voiceonmsg:$nick:$chan)]} {
if {[setting:get $chan idlevoice]} {
if {![matchattr $handle "-|gf" $chan]} {
if {$minutesidle > $idlevoicetime} {
if {[setting:get $chan xonly]} {
	putserv "PRIVMSG $black(chanserv) :devoice $chan $nick"
} else {
	pushmode $chan -v $nick
			}
		}
	}
}

if {[setting:get $chan idleop]} {
if {![matchattr $handle "-|af" $chan]} {
if {$minutesidle > $idleoptime} {
if {[setting:get $chan xonly]} {
	putserv "PRIVMSG $black(chanserv) :deop $chan $nick"
} else {
	pushmode $chan -o $nick
						}
					}
				}
			}
		}
	}
}

##############
#########################################################################
##   END                                                               ##
#########################################################################