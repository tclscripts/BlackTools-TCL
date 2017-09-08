#########################################################################
##          BlackTools - The Ultimate Channel Control Script           ##
##                    One TCL. One smart Eggdrop                       ##
#########################################################################
##############################   EGG TCL   ##############################
#########################################################################
##						                       ##
##     BlackTools  : http://blacktools.tclscripts.net	               ##
##     Bugs report : http://www.tclscripts.net/	                       ##
##     Online Help : irc://irc.undernet.org/tcl-help 	               ##
##                   #TCL-HELP / UnderNet                              ##
##                   You can ask in english or romanian                ##
##					                               ##
#########################################################################

proc eggpublic {nick host hand chan arg} {
	global black lastbind
	set type [lindex [split $arg] 0]
	set result [join [lrange [split $arg] 1 end]]
	set chan1 $chan
	set type2 0
	set return [blacktools:mychar $lastbind $hand]
if {$return == "0"} {
		return
}
	egg:process $type $type2 $result $nick $hand $host $chan $chan1 
}

proc egg:show {what getinfo nick host hand chan chan1 type} {
	global black
	switch $type {
	0 {
	blacktools:tell $nick $host $hand $chan $chan1 egg.2 "$what $getinfo"
	}
	1 {
	blacktools:tell $nick $host $hand $chan $chan1 egg.8 "$what $getinfo"
	}
	2 {
	blacktools:tell $nick $host $hand $chan $chan1 egg.7 "$what $getinfo"
		}
	}
}


proc egg:process {type type2 result unick hand host chan chan1} {
	global black config nick botnick
	set cmd_status [btcmd:status $chan $hand "egg" 0]
if {$cmd_status == "1"} { 
	return 
}
	set tcl_config $black(tclconfig)

if {$type == ""} {
switch $type2 {
	0 {
	blacktools:tell $unick $host $hand $chan $chan1 gl.instr "egg"
	}
	1 {
	blacktools:tell $unick $host $hand $chan $chan1 gl.instr_nick "egg"
	}
	2 {
	blacktools:tell $unick $host $hand $chan $chan1 gl.instr_priv "egg"
		}
	}
	return 0
}

switch [string tolower $type] {

nick {
	set result [string map [list \[ {\[} \] {\]} \? {\?} \\ {\\}] $result]
if {$result == ""} {
	set get_info [config:getinfo $config "set nick \"*\""]
	egg:show $type $get_info $unick $host $hand $chan $chan1 $type2
	return
	}
	set ::lastnick [config:getinfo $config "set nick \"*\""]
	set error [config:save $config "set nick \"*\"" "set nick \"$result\""]
	set result [string map [list {\[} \[ {\]} \] {\?} \? {\\} \\] $result]
	set nick [join $result]
if {$error == "0"} {
	blacktools:tell $unick $host $hand $chan $chan1 egg.4 "nick"
	return
}
	bind RAW - 432 check:validnickname
	blacktools:tell $unick $host $hand $chan $chan1 egg.3 "nick"
}

realname {
	set result [string map [list \[ {\[} \] {\]} \? {\?} \\ {\\}] $result]
if {$result == ""} {
	set get_info [config:getinfo $config "set realname \"*\""]
	egg:show $type $get_info $unick $host $hand $chan $chan1 $type2
	return
	}
	set error [config:save $config "set realname \"*\"" "set realname \"$result\""]
if {$error == "0"} {
	blacktools:tell $unick $host $hand $chan $chan1 egg.4 "realname"
	return
	}
	blacktools:tell $unick $host $hand $chan $chan1 egg.3 "realname"
}

homechan {
	set result [string map [list \[ {\[} \] {\]} \? {\?} \\ {\\}] $result]
if {$result == ""} {
	set get_info [config:getinfo $tcl_config "set black(homechan) \"*\""]
	egg:show $type $get_info $unick $host $hand $chan $chan1 $type2
	return
	}
	set error [config:save $tcl_config "set black(homechan) \"*\"" "set black(homechan) \"$result\""]
if {$error == "0"} {
	blacktools:tell $unick $host $hand $chan $chan1 egg.4 "mainchan"
	return
	}
	blacktools:tell $unick $host $hand $chan $chan1 egg.3 "mainchan"
}

chanserv {
if {$result == ""} {
	set get_info [config:getinfo $tcl_config "set black(chanserv) \"*\""]
	egg:show $type $get_info $unick $host $hand $chan $chan1 $type2
	return
	}
	set error [config:save $tcl_config "set black(chanserv) \"*\"" "set black(chanserv) \"$result\""]
if {$error == "0"} {
	blacktools:tell $unick $host $hand $chan $chan1 egg.4 "chanserv"
	return
	}
	blacktools:tell $unick $host $hand $chan $chan1 egg.3 "chanserv"
}

hostchanserv {
if {$result == ""} {
	set get_info [config:getinfo $tcl_config "set black(hostchanserv) \"*\""]
	egg:show $type $get_info $unick $host $hand $chan $chan1 $type2
	return
	}
	set error [config:save $tcl_config "set black(hostchanserv) \"*\"" "set black(hostchanserv) \"$result\""]
if {$error == "0"} {
	blacktools:tell $unick $host $hand $chan $chan1 egg.4 "hostchanserv"
	return
	}
	blacktools:tell $unick $host $hand $chan $chan1 egg.3 "hostchanserv"
}

userlogin {
	set result [string map [list \[ {\[} \] {\]} \? {\?} \\ {\\}] $result]
if {$result == ""} {
	set get_info [config:getinfo $tcl_config "set black(username) \"*\""]
	egg:show $type $get_info $unick $host $hand $chan $chan1 $type2
	return
	}
	set error [config:save $tcl_config "set black(username) \"*\"" "set black(username) \"$result\""]
if {$error == "0"} {
	blacktools:tell $unick $host $hand $chan $chan1 egg.4 "userlogin"
	return
	}
	blacktools:tell $unick $host $hand $chan $chan1 egg.3 "userlogin"
}

userpass {
	set result [string map [list \[ {\[} \] {\]} \? {\?} \\ {\\}] $result]
if {$result == ""} {
	set get_info [config:getinfo $tcl_config "set black(password) \"*\""]
	egg:show $type $get_info $unick $host $hand $chan $chan1 $type2
	return
	}
	set error [config:save $tcl_config "set black(password) \"*\"" "set black(password) \"$result\""]
if {$error == "0"} {
	blacktools:tell $unick $host $hand $chan $chan1 egg.4 "userpass"
	return
	}
	blacktools:tell $unick $host $hand $chan $chan1 egg.3 "userpass"
}

add-mask {
if {$result == ""} {
	set get_info [config:getinfo $tcl_config "set black(hostadd) \"*\""]
	egg:show $type $get_info $unick $host $hand $chan $chan1 $type2
	return
	}
	set error [config:save $tcl_config "set black(hostadd) \"*\"" "set black(hostadd) \"$result\""]
if {$error == "0"} {
	blacktools:tell $unick $host $hand $chan $chan1 egg.4 "addmask"
	return
	}
	blacktools:tell $unick $host $hand $chan $chan1 egg.3 "addmask"
	rehash
}

user-expire {
if {$result == ""} {
	set get_info [config:getinfo $tcl_config "set black(user_expire_time) \"*\""]
	egg:show $type $get_info $unick $host $hand $chan $chan1 $type2
	return
	}
	set error [config:save $tcl_config "set black(user_expire_time) \"*\"" "set black(user_expire_time) \"$result\""]
if {$error == "0"} {
	blacktools:tell $unick $host $hand $chan $chan1 egg.4 "user-expire"
	return
	}
	blacktools:tell $unick $host $hand $chan $chan1 egg.3 "user-expire"
	rehash
}

cmdchar {
if {$result == ""} {
	set get_info [config:getinfo $tcl_config "set black(cmdchar) \"*\""]
	egg:show $type $get_info $unick $host $hand $chan $chan1 $type2
	return
	}
	set error [config:save $tcl_config "set black(cmdchar) \"*\"" "set black(cmdchar) \"$result\""]
if {$error == "0"} {
	blacktools:tell $unick $host $hand $chan $chan1 egg.4 "cmdchar"
	return
	}
	blacktools:tell $unick $host $hand $chan $chan1 egg.3 "cmdchar"
	rehash
}

defaultlang {
if {$result == ""} {
	set get_info [config:getinfo $tcl_config "set black(default_lang) \"*\""]
	egg:show $type $get_info $unick $host $hand $chan $chan1 $type2
	return
	}
	set found_lang 0
	set get_lang_files [glob -directory "$black(dirname)/BlackTools/lang" "*lang.tcl"]
foreach lang $get_lang_files {
	set split_lang [split $lang "."]
	set the_lang [lindex $split_lang 1]
if {[string equal -nocase $result $the_lang]} {
	set found_lang 1
	}
}
if {$found_lang == 0} {
	blacktools:tell $unick $host $hand $chan $chan1 egg.5 "defaultlang $result"
	return
}
	set error [config:save $tcl_config "set black(default_lang) \"*\"" "set black(default_lang) \"$result\""]
if {$error == "0"} {
	blacktools:tell $unick $host $hand $chan $chan1 egg.4 "defaultlang"
	return
	}
	blacktools:tell $unick $host $hand $chan $chan1 egg.3 "defaultlang"
	rehash
}

defaultoutput {
	set error ""
if {$result == ""} {
	set get_info [config:getinfo $tcl_config "set black(default_output) \"*\""]
if {$get_info == "0"} { set get_info "NOTICE" } elseif {$get_info == "1"} { set get_info "CHAN" } elseif { $get_info == "2" } { set get_info "MSG" } 
	egg:show $type $get_info $unick $host $hand $chan $chan1 $type2
	return
	}
switch [string tolower $result] {
	notice {
	set error [config:save $tcl_config "set black(default_output) \"*\"" "set black(default_output) \"0\""]
}
	chan {
	set error [config:save $tcl_config "set black(default_output) \"*\"" "set black(default_output) \"1\""]
}

	msg {
	set error [config:save $tcl_config "set black(default_output) \"*\"" "set black(default_output) \"2\""]
}
	default {
	switch $type2 {
	0 {
	blacktools:tell $unick $host $hand $chan $chan1 gl.instr "egg"
	}
	1 {
	blacktools:tell $unick $host $hand $chan $chan1 gl.instr_nick "egg"
	}
	2 {
	blacktools:tell $unick $host $hand $chan $chan1 gl.instr_priv "egg"
			}
		}
	}
}	
	
if {$error == "0"} {
	blacktools:tell $unick $host $hand $chan $chan1 egg.4 "defaultoutput"
	return
	}
	blacktools:tell $unick $host $hand $chan $chan1 egg.3 "defaultoutput"
	rehash
}

floodmenuprot {
if {$result == ""} {
	set get_info [config:getinfo $tcl_config "set black(antiflood:cmd) \"*\""]
	egg:show $type $get_info $unick $host $hand $chan $chan1 $type2
	return
	}
	set error [config:save $tcl_config "set black(antiflood:cmd) \"*\"" "set black(antiflood:cmd) \"$result\""]
if {$error == "0"} {
	blacktools:tell $unick $host $hand $chan $chan1 egg.4 "floodmenuprot"
	return
	}
	blacktools:tell $unick $host $hand $chan $chan1 egg.3 "floodmenuprot"
}

floodmsgprot {
if {$result == ""} {
	set get_info [config:getinfo $tcl_config "set black(msg:flood) \"*\""]
	egg:show $type $get_info $unick $host $hand $chan $chan1 $type2
	return
	}
	set error [config:save $tcl_config "set black(msg:flood) \"*\"" "set black(msg:flood) \"$result\""]
if {$error == "0"} {
	blacktools:tell $unick $host $hand $chan $chan1 egg.4 "floodmsgprot"
	return
	}
	blacktools:tell $unick $host $hand $chan $chan1 egg.3 "floodmsgprot"
}

floodnotcprot {
if {$result == ""} {
	set get_info [config:getinfo $tcl_config "set black(notice:flood) \"*\""]
	egg:show $type $get_info $unick $host $hand $chan $chan1 $type2
	return
	}
	set error [config:save $tcl_config "set black(notice:flood) \"*\"" "set black(notice:flood) \"$result\""]
if {$error == "0"} {
	blacktools:tell $unick $host $hand $chan $chan1 egg.4 "floodnotcprot"
	return
	}
	blacktools:tell $unick $host $hand $chan $chan1 egg.3 "floodnotcprot"
}

pagelimit {
if {$result == ""} {
	set get_info [config:getinfo $tcl_config "set black(modul:nr:entries) \"*\""]
	egg:show $type $get_info $unick $host $hand $chan $chan1 $type2
	return
	}
	set error [config:save $tcl_config "set black(modul:nr:entries) \"*\"" "set black(modul:nr:entries) \"$result\""]
if {$error == "0"} {
	blacktools:tell $unick $host $hand $chan $chan1 egg.4 "pagelimit"
	return
	}
	blacktools:tell $unick $host $hand $chan $chan1 egg.3 "pagelimit"
}

away {
	set result [string map [list \" {\"} \[ {\[} \] {\]} \? {\?} \\ {\\}] $result]
if {$result == ""} {
	set get_info [config:getinfo $tcl_config "set black(default_away) \"*\""]
	egg:show $type $get_info $unick $host $hand $chan $chan1 $type2
	return
	}
	set error [config:save $tcl_config "set black(default_away) \"*\"" "set black(default_away) \"$result\""]
if {$error == "0"} {
	blacktools:tell $unick $host $hand $chan $chan1 egg.4 "away"
	return
}
	set result [string map [list {\[} \[ {\]} \] {\?} \? {\\} \\] $result]
	blacktools:tell $unick $host $hand $chan $chan1 egg.3 "away"
	putserv "AWAY :"
	putserv "AWAY :$result"
foreach tmr [timers] {
if {[string match "*away:timer*" [join [lindex $tmr 1]]]} {
	return
		}	
	}
	timer 360 away:timer
}

quoteofday-showtime {
	set found_timer 0
	set return_time [time_return_minute $result]
if {$return_time == "-1"} {
	set return_time $black(quote:msgtime)
	set return_time [time_return_minute $return_time]
}
if {$result == ""} {
	set get_info [config:getinfo $tcl_config "set black(quote:msgtime) \"*\""]
	egg:show $type $get_info $unick $host $hand $chan $chan1 $type2
	return
	}
	set error [config:save $tcl_config "set black(quote:msgtime) \"*\"" "set black(quote:msgtime) \"$result\""]
if {$error == "0"} {
	blacktools:tell $unick $host $hand $chan $chan1 egg.4 "quoteofday-showtime"
	return
	}
	blacktools:tell $unick $host $hand $chan $chan1 egg.3 "quoteofday-showtime"
	foreach tmr [timers] {
if {[string equal -nocase "quote:announce" [lindex $tmr 1]]} {
	killtimer [lindex $tmr 2]
	set found_timer 1
			}	
		}
if {$found_timer == "1"} {
	timer $return_time quote:announce
}
	rehash
}

anunt-showtime {
	set found_timer 0
	set return_time [time_return_minute $result]
if {$return_time == "-1"} {
	set return_time $black(anunttime)
	set return_time [time_return_minute $return_time]
}
if {$result == ""} {
	set get_info [config:getinfo $tcl_config "set black(anunttime) \"*\""]
	egg:show $type $get_info $unick $host $hand $chan $chan1 $type2
	return
	}
	set error [config:save $tcl_config "set black(anunttime) \"*\"" "set black(anunttime) \"$result\""]
if {$error == "0"} {
	blacktools:tell $unick $host $hand $chan $chan1 egg.4 "anunt-showtime"
	return
	}
	blacktools:tell $unick $host $hand $chan $chan1 egg.3 "anunt-showtime"
	foreach tmr [timers] {
if {[string equal -nocase "anuntpublic:show" [lindex $tmr 1]]} {
	killtimer [lindex $tmr 2]
	set found_timer 1
			}	
		}
if {$found_timer == "1"} {
	timer $return_time anuntpublic:show
}
	rehash
}

clonescan-scantime {
	set found_timer 0
	set return_time [time_return_minute $result]
if {$return_time == "-1"} {
	set return_time $black(clonescantime)
	set return_time [time_return_minute $return_time]
}
if {$result == ""} {
	set get_info [config:getinfo $tcl_config "set black(clonescantime) \"*\""]
	egg:show $type $get_info $unick $host $hand $chan $chan1 $type2
	return
	}
	set error [config:save $tcl_config "set black(clonescantime) \"*\"" "set black(clonescantime) \"$result\""]
if {$error == "0"} {
	blacktools:tell $unick $host $hand $chan $chan1 egg.4 "clonescan-scantime"
	return
	}
	blacktools:tell $unick $host $hand $chan $chan1 egg.3 "clonescan-scantime"
	foreach tmr [timers] {
if {[string equal -nocase "clonescan:timer" [lindex $tmr 1]]} {
	killtimer [lindex $tmr 2]
	set found_timer 1
			}	
		}
if {$found_timer == "1"} {
	timer $return_time clonescan:timer
}
	rehash
}

badchan-scantime {
	set found_timer 0
	set return_time [time_return_minute $result]
if {$return_time == "-1"} {
	set return_time $black(badchan:scantime)
	set return_time [time_return_minute $return_time]
}
if {$result == ""} {
	set get_info [config:getinfo $tcl_config "set black(badchan:scantime) \"*\""]
	egg:show $type $get_info $unick $host $hand $chan $chan1 $type2
	return
	}
	set error [config:save $tcl_config "set black(badchan:scantime) \"*\"" "set black(badchan:scantime) \"$result\""]
if {$error == "0"} {
	blacktools:tell $unick $host $hand $chan $chan1 egg.4 "badchan-scantime"
	return
	}
	blacktools:tell $unick $host $hand $chan $chan1 egg.3 "badchan-scantime"
	foreach tmr [timers] {
if {[string equal -nocase "badchan:scantimer" [lindex $tmr 1]]} {
	killtimer [lindex $tmr 2]
	set found_timer 1
			}	
		}
if {$found_timer == "1"} {
	timer $return_time badchan:scantimer
}
	rehash
}

broadcast-showtime {
	set found_timer 0
	set return_time [time_return_minute $result]
if {$return_time == "-1"} {
	set return_time $black(bttime)
	set return_time [time_return_minute $return_time]
}
if {$result == ""} {
	set get_info [config:getinfo $tcl_config "set black(bttime) \"*\""]
	egg:show $type $get_info $unick $host $hand $chan $chan1 $type2
	return
	}
	set error [config:save $tcl_config "set black(bttime) \"*\"" "set black(bttime) \"$result\""]
if {$error == "0"} {
	blacktools:tell $unick $host $hand $chan $chan1 egg.4 "broadcast-time"
	return
	}
	blacktools:tell $unick $host $hand $chan $chan1 egg.3 "broadcast-time"
	foreach tmr [timers] {
if {[string equal -nocase "broadcastpublic:show" [lindex $tmr 1]]} {
	killtimer [lindex $tmr 2]
	set found_timer 1
			}	
		}
if {$found_timer == "1"} {
	timer $return_time broadcastpublic:show
}
	rehash
}

idle-scantime {
	set found_timer 0
	set return_time [time_return_minute $result]
if {$return_time == "-1"} {
	set return_time $black(idleinterval)
	set return_time [time_return_minute $return_time]
}
	
if {$result == ""} {
	set get_info [config:getinfo $tcl_config "set black(idleinterval) \"*\""]
	egg:show $type $get_info $unick $host $hand $chan $chan1 $type2
	return
	}
	set error [config:save $tcl_config "set black(idleinterval) \"*\"" "set black(idleinterval) \"$result\""]
if {$error == "0"} {
	blacktools:tell $unick $host $hand $chan $chan1 egg.4 "idle-scantime"
	return
	}
	blacktools:tell $unick $host $hand $chan $chan1 egg.3 "idle-scantime"
	foreach tmr [timers] {
if {[string equal -nocase "idlewhois" [lindex $tmr 1]]} {
	killtimer [lindex $tmr 2]
	set found_timer 1
			}	
		}
if {$found_timer == "1"} {
	timer $return_time idlewhois
}
	rehash
}

antispam-cycletime {
	set found_timer 0
	set return_time [time_return_minute $result]
if {$return_time == "-1"} {
	set return_time $black(spamcycle)
	set return_time [time_return_minute $return_time]
}
	
if {$result == ""} {
	set get_info [config:getinfo $tcl_config "set black(spamcycle) \"*\""]
	egg:show $type $get_info $unick $host $hand $chan $chan1 $type2
	return
	}
	set error [config:save $tcl_config "set black(spamcycle) \"*\"" "set black(spamcycle) \"$result\""]
if {$error == "0"} {
	blacktools:tell $unick $host $hand $chan $chan1 egg.4 "antispam-cycletime"
	return
	}
	blacktools:tell $unick $host $hand $chan $chan1 egg.3 "antispam-cycletime"
	foreach tmr [timers] {
if {[string equal -nocase "antispam:protect:cycle" [lindex $tmr 1]]} {
	killtimer [lindex $tmr 2]
	set found_timer 1
			}	
		}
if {$found_timer == "1"} {
	timer $return_time antispam:protect:cycle
}
	rehash
}

chanremove-setting {	
if {$result == ""} {
	set get_info [config:getinfo $tcl_config "set black(chanremove_all) \"*\""]
	egg:show $type $get_info $unick $host $hand $chan $chan1 $type2
	return
	}
if {![regexp {^[12]} $result]} {
	blacktools:tell $unick $host $hand $chan $chan1 egg.6 "chanremove-setting $result chanremove-setting"
	return
}
	set error [config:save $tcl_config "set black(chanremove_all) \"*\"" "set black(chanremove_all) \"$result\""]
if {$error == "0"} {
	blacktools:tell $unick $host $hand $chan $chan1 egg.4 "chanremove-setting"
	return
	}
	blacktools:tell $unick $host $hand $chan $chan1 egg.3 "chanremove-setting"
	rehash
}

adduser-mask {	
if {$result == ""} {
	set get_info [config:getinfo $tcl_config "set black(addusermask) \"*\""]
	egg:show $type $get_info $unick $host $hand $chan $chan1 $type2
	return
	}
if {![regexp {^[12345]} $result]} {
	blacktools:tell $unick $host $hand $chan $chan1 egg.6 "addusermask $result addusermask"
	return
}
	set error [config:save $tcl_config "set black(addusermask) \"*\"" "set black(addusermask) \"$result\""]
if {$error == "0"} {
	blacktools:tell $unick $host $hand $chan $chan1 egg.4 "addusermask"
	return
	}
	blacktools:tell $unick $host $hand $chan $chan1 egg.3 "addusermask"
	rehash
}

login {
if {[info exists black(logged)]} {
	blacktools:tell $unick $host $hand $chan $chan1 login.2 "$black(chanserv)"
	return
}
	putserv "PRIVMSG $black(hostchanserv) :login $black(username) $black(password)"
   	putserv "MODE $botnick :$black(xmod)"

if {[info exists black(notlogged)] || [info exists black(notlogged:failed)] || [info exists black(notlogged:invalid)]} {
	blacktools:tell $unick $host $hand $chan $chan1 login.3 "$black(chanserv)"
	}	
}

default {
	blacktools:tell $unick $host $hand $chan $chan1 gl.instr "egg"
		}
	}
}

##############
#########################################################################
##   END                                                               ##
#########################################################################