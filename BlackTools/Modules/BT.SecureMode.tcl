#########################################################################
##          BlackTools - The Ultimate Channel Control Script           ##
##                    One TCL. One smart Eggdrop                       ##
#########################################################################
###########################   SECUREMODE TCL   ##########################
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

proc securemode:findexcept {chan host} {
	global black
	set found_it 0
	set file [open $black(add_file) "r"]
	set w [read -nonewline $file]
	close $file
	set data [split $w "\n"]
foreach line $data {
	set read_chan [lindex [split $line] 0]
	set enc_chan [encoding convertfrom utf-8 $read_chan]
if {[string equal -nocase $enc_chan $chan]} {
	set read_type [lindex [split $line] 1]
if {[string equal -nocase $read_type "SECUREMODE-EXCEPT"]} {
	set read_host [lindex [split $line] 3]
	set real_read_host [string map [list \[ {\[} \] {\]} \? {\?} \\ {\\}] $read_host]
if {[string match -nocase $host $real_read_host] || [string match -nocase $real_read_host $host]} {
	set found_it 1
				}
			}
		}
	}
	return $found_it
}

proc securemode:kickremove {nick host hand chan kicked reason} {
	global black
	set host [getchanhost $kicked $chan]
if {[setting:get $chan securemode]} {
	set chanmode [getchanmode $chan]
if {[string match -nocase "*D*" $chanmode] && [string match -nocase "*m*" $chanmode]} {
if {[info exists black(secure:$chan:allowlist)]} {
if {[lsearch -exact [string tolower $black(secure:$chan:allowlist)] [string tolower $host]] > -1} {
	set position [lsearch -exact [string tolower $black(secure:$chan:allowlist)] [string tolower $host]]
	set black(secure:$chan:allowlist) [lreplace $black(secure:$chan:allowlist) $position $position]
				}
if {[info exists black(secure:$chan:list)]} {
if {[lsearch -exact [string tolower $black(secure:$chan:list)]  [string tolower $kicked]] > -1} {
	set position [lsearch -exact [string tolower $black(secure:$chan:list)] [string tolower $kicked]]
	set black(secure:$chan:list) [lreplace $black(secure:$chan:list) $position $position]
					}
				}	
			}
		}
	}
}

proc secured:allowlist:reset {minute hour day month year} {
	global black
foreach chan [channels] {
if {[validchan $chan]} {
if {[info exists black(secure:$chan:allowlist)]} {
	unset black(secure:$chan:allowlist)
			}
		}
	}		
}

proc securemode:timer {} {
	global black botnick
	set channels ""
	set secure_act 0
foreach chan [channels] {
if {[setting:get $chan securemode]} {
	lappend channels $chan
if {[onchan $botnick $chan]} {
	set chanmode [getchanmode $chan]
if {[string match -nocase "*D*" $chanmode] && [string match -nocase "*m*" $chanmode]} {
	set secure_act 1
if {![info exists black(secure_mode:$chan)]} {
	set black(secure_mode:$chan) 1
}
			} else {
if {[info exists black(secure_mode:$chan)]} {
	unset black(secure_mode:$chan)
				}		
			}
		}	
	}
}
if {$channels == ""} {
	return
}
if {$secure_act == "1"} {
	securemode:act $channels 0
}
	utimer 30 [list securemode:timer]
}

proc securemode:reply {nick host hand chan mod who} {
	global black
if {[setting:get $chan securemode]} {
	set getlang [string tolower [setting:get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
if {[string match "*+D*" $mod]} {
	set replace(%chan%) $chan
	set text [black:color:set "" $black(say.$getlang.securemode.10)]
	set reply [join $text]
	putserv "PRIVMSG $chan :[string map [array get replace] $reply]"
}
if {[string match "*-D*" $mod]} {
	set replace(%chan%) $chan
	set text2 [black:color:set "" $black(say.$getlang.securemode.11)]
	set reply2 [join $text2]
	putserv "PRIVMSG $chan :[string map [array get replace] $reply2]"
		}
	}
}

proc securemode:act {channels counter} {
	global black

if {$channels == ""} {
	return
}
	set chan [lindex $channels $counter]
	set cc [expr $counter + 1]
if {$chan != ""} {
	securemode:raw $chan
} else {
	return
}
	utimer 5 [list securemode:act $channels $cc]
}

proc securemode:raw {chan} {
	global black
	putquick "NAMES -d $chan"
	set ::securechan $chan
	bind RAW - 355 get:nameslist
	bind RAW - 366 end:nameslist
}

proc get:nameslist {from keyword arguments} {
	global black
	set found_it 0
	set chan $::securechan
	set split_arg [split $arguments ":"]
	set names [lindex $split_arg 1]
if {[info exists black(secure:$chan:list)]} {
foreach entry $black(secure:$chan:list) {
if {[lsearch -exact [string tolower [split $names]] [string tolower $entry]] < 0} {
	set position [lsearch -exact [string tolower $black(secure:$chan:list)] [string tolower $entry]]
	set black(secure:$chan:list) [lreplace $black(secure:$chan:list) $position $position]
if {[info exists black(securecode:$entry:$chan)]} {
	unset black(securecode:$entry:$chan)
			}
		}
	}
}
if {[info exists black(secure:$chan:list)]} {
if {[llength $black(secure:$chan:list)] == "0"} {
	unset black(secure:$chan:list)
	}
}
	secure:gethost $names $chan 0
}

proc end:nameslist {from keyword arguments} {
	global black
	check:if:bind "get:nameslist" "355"
	check:if:bind "end:nameslist" "366"
}

proc secure:gethost {names chan counter} {
	global black
	set name [lindex [split $names] $counter]
	set cc [expr $counter + 1]
if {$name != ""} {
	securemode:gethost:raw $name $chan
} else {
	return
}
	utimer 3 [list secure:gethost $names $chan $cc]
}

proc securemode:gethost:raw {name chan} {
	global black
	putserv "USERHOST :$name"
	set ::shchan $chan
	set ::shnick $name
	bind RAW - 302 get:securemode:host
}

proc get:securemode:host {from keyword arguments} {
	global black botnick
	set is_allowed 0
	set has_access 0
	set securemode_activ 0
	set hosts [lindex [split $arguments] 1]
	set hostname [lindex [split $hosts "="] 1]
	regsub {^[-+]} $hostname "" mask
	set nick $::shnick
	set except_mask "$nick!$mask"
	set chan $::shchan
if {[setting:get $chan securemode]} {
	set chanmode [getchanmode $chan]
if {[string match -nocase "*D*" $chanmode] && [string match -nocase "*m*" $chanmode]} {
	set securemode_activ 1
	}
}
if {$securemode_activ == "0"} {
	return
}
	set replace(%botnick%) $botnick
	set replace(%chan%) $chan
	set lang [setting:get $chan lang]
if {$lang == ""} { set lang [string tolower $black(default_lang)] }
	set getaccess [finduser $except_mask]
if {[matchattr $getaccess $black(exceptflags) $chan]} {
if {[setting:get $chan xonly] && [onchan $black(chanserv) $chan]} {
	putserv "PRIVMSG $black(chanserv) :voice $chan $nick"
		} else {
	putserv "MODE $chan +v $nick"
	}
	return
}
if {[securemode:findexcept $chan $except_mask] == "1"} { 
if {[setting:get $chan xonly] && [onchan $black(chanserv) $chan]} {
	putserv "PRIVMSG $black(chanserv) :voice $chan $nick"
		} else {
	putserv "MODE $chan +v $nick"
	}
	return
}
if {[info exists black(secure:$chan:allowlist)]} {
if {[setting:get $chan strictsecured] == "" || [setting:get $chan strictsecured] == "0"} {
if {[lsearch -exact [string tolower $black(secure:$chan:allowlist)]  [string tolower $mask]] > -1} {
	set is_allowed 1
if {[setting:get $chan xonly] && [onchan $black(chanserv) $chan]} {
	putserv "PRIVMSG $black(chanserv) :voice $chan $nick"
		} else {
	putserv "MODE $chan +v $nick"
		}
	}
	if {$is_allowed == "1"} {
	return
		}
	}
}
if {[info exists black(secure:$chan:list)]} {
if {[lsearch -exact [string tolower $black(secure:$chan:list)]  [string tolower $nick]] < 0} {
	set black(securecode:$nick:$chan) [string toupper [bot:setcode]]
	set replace(%msg.1%) $black(securecode:$nick:$chan)
	set message "$black(say.$lang.securemode.1)"
	set len [llength $message] 
    set random [expr int(rand()*$len)] 
    set message [lindex $message $random]
	set text [black:color:set "" $message]
	set reply [join $text]
	set message [string map [array get replace] $reply]
	putserv "PRIVMSG $nick :$message"
	lappend black(secure:$chan:list) $nick
	}
} else {
	set black(securecode:$nick:$chan) [string toupper [bot:setcode]]
	set replace(%msg.1%) $black(securecode:$nick:$chan)
	set message "$black(say.$lang.securemode.1)"
	set len [llength $message] 
    set random [expr int(rand()*$len)] 
    set message [lindex $message $random]
	set text [black:color:set "" $message]
	set reply [join $text]
	set message [string map [array get replace] $reply]
	putserv "PRIVMSG $nick :$message"
	lappend black(secure:$chan:list) $nick
}
	check:if:bind "get:securemode:host" "302"
}

##############
#########################################################################
##   END                                                               ##
#########################################################################
