#########################################################################
##          BlackTools - The Ultimate Channel Control Script           ##
##                    One TCL. One smart Eggdrop                       ##
#########################################################################
##############################   EGG TCL   ##############################
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

proc egg:setting_check {setting} {
	global black
	set settings "nick realname away homechan chanserv hostchanserv userlogin userpass chanremove-setting add-mask add-defaultmask user-expire banmethod-expire broadcast-showtime cmdchar defaultlang defaultoutput floodmenuprot userfloodmsgprot massfloodmsgprot massfloodsilencetime floodnotcprot pagelimit antibotidle quote-usage"
if {[lsearch -exact [string tolower $settings] [string tolower $setting]] < 0} {
	return 0
	} else { return 1 }
}

proc egg:process {unick host hand chan chan1 setting result} {
	global black config nick botnick
	set tcl_config $black(tclconfig)
	
switch [string tolower $setting] {

nick {
	set result [string map [list \[ {\[} \] {\]} \? {\?} \\ {\\}] $result]
	set return [config:getinfo $config "set nick \"*\""]
if {[string equal -nocase $return $result]} {
	return 2
}
	set ::lastnick [config:getinfo $config "set nick \"*\""]
	set error [config:save $config "set nick \"*\"" "set nick \"$result\""]
	set result [string map [list {\[} \[ {\]} \] {\?} \? {\\} \\] $result]
	set nick [join $result]
if {$error == "0"} {
	return 0
}
	bind RAW - 432 check:validnickname
	return 1
}

realname {
	set result [string map [list \[ {\[} \] {\]} \? {\?} \\ {\\}] $result]
	set return [config:getinfo $config "set realname \"*\""]
if {[string equal -nocase $return $result]} {
	return 2
}
	set error [config:save $config "set realname \"*\"" "set realname \"$result\""]
if {$error == "0"} {
	return 0
	}
	return 1
}

homechan {
	set result [string map [list \[ {\[} \] {\]} \? {\?} \\ {\\}] $result]
	set return [config:getinfo $tcl_config "set black(homechan) \"*\""]
if {[string equal -nocase $return $result]} {
	return 2
}
	set error [config:save $tcl_config "set black(homechan) \"*\"" "set black(homechan) \"$result\""]
if {$error == "0"} {
	return 0
	}
	return 1
}

chanserv {
	set return [config:getinfo $tcl_config "set black(chanserv) \"*\""]
if {[string equal -nocase $return $result]} {
	return 2
}
	set error [config:save $tcl_config "set black(chanserv) \"*\"" "set black(chanserv) \"$result\""]
if {$error == "0"} {
	return 0
	}
	return 1
}

hostchanserv {
	set return [config:getinfo $tcl_config "set black(hostchanserv) \"*\""]
if {[string equal -nocase $return $result]} {
	return 2
}
	set error [config:save $tcl_config "set black(hostchanserv) \"*\"" "set black(hostchanserv) \"$result\""]
if {$error == "0"} {
	return 0
	}
	return 1
}

userlogin {
	set result [string map [list \[ {\[} \] {\]} \? {\?} \\ {\\}] $result]
	set return [config:getinfo $tcl_config "set black(username) \"*\""]
if {[string equal -nocase $return $result]} {
	return 2
}
	set error [config:save $tcl_config "set black(username) \"*\"" "set black(username) \"$result\""]
if {$error == "0"} {
	return 0
	}
	return 1
}

userpass {
	set result [string map [list \[ {\[} \] {\]} \? {\?} \\ {\\}] $result]
	set return [config:getinfo $tcl_config "set black(password) \"*\""]
if {[string equal -nocase $return $result]} {
	return 2
}
	set error [config:save $tcl_config "set black(password) \"*\"" "set black(password) \"$result\""]
if {$error == "0"} {
	return 0
	}
	return 1
}

add-defaultmask {
	set return [config:getinfo $tcl_config "set black(hostadd) \"*\""]
if {[string equal -nocase $return $result]} {
	return 2
}
	set error [config:save $tcl_config "set black(hostadd) \"*\"" "set black(hostadd) \"$result\""]
if {$error == "0"} {
	return 0
	}
	rehash 
	return 1
}

broadcast-showtime {
	set return [config:getinfo $tcl_config "set black(bttime) \"*\""]
if {[string equal -nocase $return $result]} {
	return 2
}
	set error [config:save $tcl_config "set black(bttime) \"*\"" "set black(bttime) \"$result\""]
if {$error == "0"} {
	return 0
	}
	rehash 
	return 1
if {[info exists black(broadcast:timer_start)]} {
	set scan_time [time_return_minute $result]
	set black(broadcast:timer_start) $scan_time
	}
if {[info exists black(broadcast:counter)]} {
	set black(broadcast:counter) 0
	}
}

user-expire {
	set return [config:getinfo $tcl_config "set black(user_expire_time) \"*\""]
if {[string equal -nocase $return $result]} {
	return 2
}
	set error [config:save $tcl_config "set black(user_expire_time) \"*\"" "set black(user_expire_time) \"$result\""]
if {$error == "0"} {
	return 0
	}
	rehash
	return 1
}

banmethod-expire {
	set return [config:getinfo $tcl_config "set black(banmethod_memory_time) \"*\""]
if {[string equal -nocase $return $result]} {
	return 2
}
	set error [config:save $tcl_config "set black(banmethod_memory_time) \"*\"" "set black(banmethod_memory_time) \"$result\""]
if {$error == "0"} {
	return 0
	}
if {[info exists black(banmethod_rem:timer_start)]} {
	set black(banmethod_rem:timer_start) [time_return_minute $result]
}
if {[info exists black(banmethod_rem:counter)]} {
	set black(banmethod_rem:counter) 0
}
	rehash
	return 1
}

cmdchar {
	set return [config:getinfo $tcl_config "set black(cmdchar) \"*\""]
if {[string equal -nocase $return $result]} {
	return 2
}
	set error [config:save $tcl_config "set black(cmdchar) \"*\"" "set black(cmdchar) \"$result\""]
if {$error == "0"} {
	return 0 
	}
	rehash
	return 1
}

defaultlang {
	set return [config:getinfo $tcl_config "set black(default_lang) \"*\""]
if {[string equal -nocase $return $result]} {
	return 2
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
	return 0
	}
	rehash
	return 1
}

defaultoutput {
	set return [config:getinfo $tcl_config "set black(default_output) \"*\""]
switch $return {
	0 {
if {[string equal -nocase $result "notice"]} {
	return 2
}	
	}
		
	1 {
if {[string equal -nocase $result "chan"]} {
	return 2
}			
	}
		
	2 {
if {[string equal -nocase $result "msg"]} {
	return 2
		}	
	}
}
	set error ""
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
	return 0
	}
}
	
if {$error == "0"} {
	return 0
	}
	rehash 
	return 1
}

floodmenuprot {
	set return [config:getinfo $tcl_config "set black(antiflood:cmd) \"*\""]
if {[string equal -nocase $return $result]} {
	return 2
}
	set error [config:save $tcl_config "set black(antiflood:cmd) \"*\"" "set black(antiflood:cmd) \"$result\""]
if {$error == "0"} {
	return 0
	}
	return 1
}

userfloodmsgprot {
	set return [config:getinfo $tcl_config "set black(msg:flood) \"*\""]
if {[string equal -nocase $return $result]} {
	return 2
}
	set error [config:save $tcl_config "set black(msg:flood) \"*\"" "set black(msg:flood) \"$result\""]
if {$error == "0"} {
	return 0
	}
	return 1
}

massfloodmsgprot {
	set return [config:getinfo $tcl_config "set black(mass:msg:flood) \"*\""]
if {[string equal -nocase $return $result]} {
	return 2
}
	set error [config:save $tcl_config "set black(mass:msg:flood) \"*\"" "set black(mass:msg:flood) \"$result\""]
if {$error == "0"} {
	return 0
	}
	return 1
}

massfloodsilencetime {
	set return [config:getinfo $tcl_config "set black(mass:msg:silence_time) \"*\""]
if {[string equal -nocase $return $result]} {
	return 2
}
	set error [config:save $tcl_config "set black(mass:msg:silence_time) \"*\"" "set black(mass:msg:silence_time) \"$result\""]
if {$error == "0"} {
	return 0
	}
	return 1
}

floodnotcprot {
	set return [config:getinfo $tcl_config "set black(notice:flood) \"*\""]
if {[string equal -nocase $return $result]} {
	return 2
}
	set error [config:save $tcl_config "set black(notice:flood) \"*\"" "set black(notice:flood) \"$result\""]
if {$error == "0"} {
	return 0
	}
	return 1
}

pagelimit {
	set return [config:getinfo $tcl_config "set black(modul:nr:entries) \"*\""]
if {[string equal -nocase $return $result]} {
	return 2
}
	set error [config:save $tcl_config "set black(modul:nr:entries) \"*\"" "set black(modul:nr:entries) \"$result\""]
if {$error == "0"} {
	return 0
	}
	return 1
}

away {
	set return [config:getinfo $tcl_config "set black(default_away) \"*\""]
if {[string equal -nocase $return $result]} {
	return 2
}
	set result [string map [list \" {\"} \[ {\[} \] {\]} \? {\?} \\ {\\}] $result]
	set error [config:save $tcl_config "set black(default_away) \"*\"" "set black(default_away) \"$result\""]
if {$error == "0"} {
	return 0
}
	set result [string map [list {\[} \[ {\]} \] {\?} \? {\\} \\] $result]
	putserv "AWAY :"
	putserv "AWAY :$result"
	return 1
}

antibotidle {
	set return [config:getinfo $tcl_config "set black(antibotidle_status) \"*\""]
if {[string equal -nocase $return $result]} {
	return 2
}
if {![regexp {^[01]} $result]} {
	return 0
}
	set error [config:save $tcl_config "set black(antibotidle_status) \"*\"" "set black(antibotidle_status) \"$result\""]
if {$error == "0"} {
	return 0
	}
	rehash
	return 1
}

quote-usage {
	set return [config:getinfo $tcl_config "set black(quote:usage) \"*\""]
if {[string equal -nocase $return $result]} {
	return 2
}
if {![regexp {^[01]} $result]} {
	return 0
}
	set error [config:save $tcl_config "set black(quote:usage) \"*\"" "set black(quote:usage) \"$result\""]
if {$error == "0"} {
	return 0
	}
	rehash
	return 1
}

chanremove-setting {
	set return [config:getinfo $tcl_config "set black(chanremove_all) \"*\""]
if {[string equal -nocase $return $result]} {
	return 2
}
if {![regexp {^[01]} $result]} {
	return 0
}
	set error [config:save $tcl_config "set black(chanremove_all) \"*\"" "set black(chanremove_all) \"$result\""]
if {$error == "0"} {
	return 0
	}
	rehash
	return 1
}

add-mask {
	set return [config:getinfo $tcl_config "set black(hostdefaultadd) \"*\""]
if {[string equal -nocase $return $result]} {
	return 2
}
if {![regexp {^[12345]} $result]} {
	return 0
}
	set error [config:save $tcl_config "set black(hostdefaultadd) \"*\"" "set black(hostdefaultadd) \"$result\""]
if {$error == "0"} {
	return 0
	}
	rehash
	return 1
		}
	}
}

##############
#########################################################################
##   END                                                               ##
#########################################################################
