#########################################################################
##          BlackTools - The Ultimate Channel Control Script           ##
##                    One TCL. One smart Eggdrop                       ##
#########################################################################
#######################   PRIVMSG CMDS TCL   ############################
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

###
proc command:pubpriv {nick host hand arg} {
	global black server uptime {server-online} botnick userfile
	set cmd [lindex [split $arg] 0]
	set chan [lindex [split $arg] 1]
	set check_code [join [lrange [split $arg] 2 end]]
	set chan1 $nick
	set found_access 0
	set mychan_use 0
if {[lindex $host 0] == "dcc"} {
	set input $host
} else {
	set input "prv"
}
if {![regexp {^[&#]} $chan]} {
if {[validuser $hand]} {
	set mychan [join [string tolower [getuser $hand XTRA MYCHAN]]]
if {[validchan $mychan] && [matchattr $hand nmo|OVMA $mychan] && ![string equal -nocase $cmd "unbanme"]} {
	set chan [string tolower $mychan]
	set mychan_use 1
		}
	}
}

switch [string tolower $cmd] {
vote {
	set type 2
	set word [lindex [split $arg] 2]
    set text [join [lrange [split $arg] 3 end]]
    set id [lindex [split $arg] 3]
	set opt [lindex [split $arg] 4]
	set vote_next [lindex [split $arg] 5]
if {$mychan_use == "1"} {
	set word [lindex [split $arg] 1]
    set text [join [lrange [split $arg] 2 end]]
    set id [lindex [split $arg] 2]
	set opt [lindex [split $arg] 3]
	set vote_next [lindex [split $arg] 4]
}
	vote:process $nick $input $host $hand $chan $chan $type [list $word $text $id $opt $vote_next]
}

alias {
if {[matchattr $hand mno|MAO $chan]} {
	set type 2
	set what [lindex [split $arg] 1]
	set cmdf [lindex [split $arg] 2]
	set cmd_used [lindex [split $arg] 3]
	set text [join [lrange [split $arg] 4 end]]
	alias:process $nick $input $hand $chan $chan $type [list $what $cmdf $cmd_used $text]
	}
}

update {
if {[matchattr $hand n]} {
if {[matchattr $hand q]} { blacktools:tell $nick $host $hand $chan $chan1 gl.glsuspend none
	return
}
	set what [lindex [split $arg] 1]
	set option [lindex [split $arg] 2]
	set type 2
	update:process $nick $input $hand $chan $chan [list $what $option] $type
	}
}

exempt {
if {[matchattr $hand mno|M $chan]} {
	set chan1 $chan
	set type 2
	set gl 0
if {$mychan_use == "0"} {
	set ecmd [lindex [split $arg] 2]
	set ehost [lindex [split $arg] 3]
	set next [lindex [split $arg] 3]
	set tm [lindex [split $arg] 4]
	set global [lindex [split $arg] 5]
	set reason [join [lrange [split $arg] 6 end]]
	set return_time [time_return_minute $tm]
if {$return_time == "-1"} {
	set global [lindex [split $arg] 4]
	set reason [join [lrange [split $arg] 5 end]]
} 
if {[string equal -nocase "$global" "global"] && [matchattr $hand nm]} {
	set gl 1
	set tm [lindex [split $arg] 4]
	set reason [join [lrange [split $arg] 6 end]]
	set return_time [time_return_minute $tm]
if {$return_time == "-1"} {
	set reason [join [lrange [split $arg] 5 end]]
		} 
	} else {
if {$return_time == "-1"} {
	set reason [join [lrange [split $arg] 4 end]]
	} else {
	set reason [join [lrange [split $arg] 5 end]]
		}
	}
} else {
	set ecmd [lindex [split $arg] 1]
	set ehost [lindex [split $arg] 2]
	set next [lindex [split $arg] 2]
	set tm [lindex [split $arg] 3]
	set global [lindex [split $arg] 4]
	set reason [join [lrange [split $arg] 5 end]]
	set return_time [time_return_minute $tm]
if {$return_time == "-1"} {
	set global [lindex [split $arg] 3]
	set reason [join [lrange [split $arg] 4 end]]
} 
if {[string equal -nocase "$global" "global"] && [matchattr $hand nm]} {
	set gl 1
	set tm [lindex [split $arg] 3]
	set reason [join [lrange [split $arg] 5 end]]
	set return_time [time_return_minute $tm]
if {$return_time == "-1"} {
	set reason [join [lrange [split $arg] 4 end]]
		} 
	} else {
if {$return_time == "-1"} {
	set reason [join [lrange [split $arg] 3 end]]
	} else {
	set reason [join [lrange [split $arg] 4 end]]
		}
	}
}
if {![regexp {[0-9]} $tm]} {
	set return_time $black(exempt:default_time)
}
	exempt:process $nick $input $hand $chan $chan1 $type $ecmd $ehost $return_time $reason $gl $next
	}
}

login {
if {[matchattr $hand mn]} {
	set type 2
	set chan1 $chan
	login:process $nick $input $hand $chan $chan1
	}
}

report {
	set type 2
	set what [lindex [split $arg] 2]
	set message [join [lrange [split $arg] 3 end]]
if {$mychan_use == "1"} {
	set what [lindex [split $arg] 1]
	set message [join [lrange [split $arg] 2 end]]
}
	set chan1 $chan
if {[matchattr $hand mno|MAO $chan]} {
	return
}
	report:process $nick $input $host $hand $chan $chan1 $type $what $message
}

idle {
if {[matchattr $hand nmo|M $chan]} {
	set type 2
	set chan1 "$chan"
	set why [lindex [split $arg] 2]
	set user [lindex [split $arg] 3]
	set hosts [lindex [split $arg] 4]
if {$mychan_use == "1"} {
	set why [lindex [split $arg] 1]
	set user [lindex [split $arg] 2]
	set hosts [lindex [split $arg] 3]
}
	antidle:process $why $type $user $input $nick $hand $chan $chan1
	}
}


link {
if {[matchattr $hand nmo]} {
	set type 2
	set channels [join [lrange [split $arg] 1 end]]
	set what [lindex [split $arg] 1]
	set delchan [lindex [split $arg] 2]
	set chan1 $chan
	link:process $nick $input $hand $chan $chan1 $type $what $channels $delchan
	}
}

note {
	set found_access 0
foreach c [channels] {
if {[matchattr $hand nmo|MAOV $c]} {
	set found_access 1
	}
}
if {$found_access == "1"} {
	set type 2
	set chan1 $chan
	set who [lindex [split $arg] 1]
	set note [join [lrange [split $arg] 1 end]]
	set number [lindex [split $arg] 2]
	set user_send [lindex [split $arg] 2]
	set note_send [join [lrange [split $arg] 3 end]]
	note:process $nick $input $hand $chan $chan1 $who $note $user_send $note_send $number $type
	}
}

q {
if {[matchattr $hand nmo|MAOV $chan]} {
if {$mychan_use == "1"} {
	set who [lindex [split $arg] 1]
	set next [lindex [split $arg] 2]
	set quote [join [lrange [split $arg] 1 end]]
if {$who == "*"} {
	set who [lindex [split $arg] 2]
	set quote [join [lrange [split $arg] 1 end]]
}
if {[regexp {^[\[]} $who]} {
	set who [lindex [split $arg] 2]
	set quote [join [lrange [split $arg] 1 end]]
if {$who == "*"} {
	set who [lindex [split $arg] 3]
	set quote [join [lrange [split $arg] 1 end]]
		}
	}
} else {
	set who [lindex [split $arg] 2]
	set next [lindex [split $arg] 3]
	set quote [join [lrange [split $arg] 2 end]]
if {$who == "*"} {
	set who [lindex [split $arg] 3]
	set quote [join [lrange [split $arg] 2 end]]
}
if {[regexp {^[\[]} $who]} {
	set who [lindex [split $arg] 3]
	set quote [join [lrange [split $arg] 2 end]]
if {$who == "*"} {
	set who [lindex [split $arg] 4]
	set quote [join [lrange [split $arg] 2 end]]
		}
	}
}
	set type 2
	set chan1 $chan
if {$mychan_use == "1"} {
	quote:process $nick $input $hand $chan $chan1 $type $who $quote [lrange [split $arg] 1 end] $next
	} else {
	quote:process $nick $input $hand $chan $chan1 $type $who $quote [lrange [split $arg] 2 end] $next
		}
	}
}

check {
if {![validchan $chan]} {
	return
}
if {[setting:get $chan securemode] == "0"} {
	return
}
if {![botisop $chan] && ![setting:get $chan xonly]} {
	return
}
	
if {![info exists black(securecode:$nick:$chan)]} {
	return
}
	set chanmode [getchanmode $chan]
if {[string match -nocase "*D*" $chanmode] && [string match -nocase "*m*" $chanmode]} {
if {[string equal -nocase $check_code $black(securecode:$nick:$chan)]} {
		set lang [setting:get $chan lang]
if {$lang == ""} { set lang [string tolower $black(default_lang)] }
if {[setting:get $chan xonly] && [onchan $black(chanserv) $chan]} {
	putserv "PRIVMSG $black(chanserv) :voice $chan $nick"
	set replace(%chan%) $chan
	set replace(%msg.1%) $nick
	set message [string map [array get replace] $black(say.$lang.securemode.2)]
	putserv "PRIVMSG $nick :$message"
if {[info exists black(secure:$chan:allowlist)]} {
if {[lsearch -exact [string tolower $black(secure:$chan:allowlist)]  [string tolower $host]] < 0} {
	lappend black(secure:$chan:allowlist) $host
	}
} else { lappend black(secure:$chan:allowlist) $host }
		} else {
	putserv "MODE $chan +v $nick"
	set replace(%chan%) $chan
	set replace(%msg.1%) $nick
	set message [string map [array get replace] $black(say.$lang.securemode.2)]
	putserv "PRIVMSG $nick :$message"
if {[info exists black(secure:$chan:allowlist)]} {
if {[lsearch -exact [string tolower $black(secure:$chan:allowlist)]  [string tolower $host]] < 0} {
	lappend black(secure:$chan:allowlist) $host
						}
					} else { lappend black(secure:$chan:allowlist) $host }
}
if {[info exists black(securecode:$nick:$chan)]} {
	unset black(securecode:$nick:$chan)
				}
if {[lsearch -exact [string tolower $black(secure:$chan:list)]  [string tolower $nick]] > -1} {
	set position [lsearch -exact [string tolower $black(secure:$chan:list)] [string tolower $nick]]
	set black(secure:$chan:list) [lreplace $black(secure:$chan:list) $position $position]
			}
		}
	}
}

voiceme {
if {![validchan $chan]} {
	return
}
if {[setting:get $chan voiceme]} {

if {![botisop $chan] && ![setting:get $chan xonly]} {
	return
}
if {![onchan $nick $chan]} {
	return
}

if {[isop $nick $chan] || [isvoice $nick $chan]} {
	return
}

if {[setting:get $chan onlyonmode] && ![info exists black(voiceme:stat:$chan)]} {
	return
}
if {[isvoice $nick $chan]} {
	blacktools:tell $nick $input $hand $chan $chan1 voiceme.4 none
	return
}

if {[setting:get $chan nologged]} {
		set code [join [lrange [split $arg] 2 end]]
if {$code == ""} {
	set black(voicemecode:$chan) [string toupper [bot:setcode]]
	blacktools:tell $nick $input $hand $chan $chan1 voiceme.5 $black(voicemecode:$chan)
foreach tmr [utimers] {
if {[string match "*unset black(voicemecode:$chan)*" [join [lindex $tmr 1]]]} {
	killutimer [lindex $tmr 2]
			}	
		}
	utimer 60 [list unset black(voicemecode:$chan)]
	return
}

if {![info exists black(voicemecode:$chan)]} {
	return
}

if {[string equal -nocase $code $black(voicemecode:$chan)]} {
if {[setting:get $chan xonly] && [onchan $black(chanserv) $chan]} {	
	putserv "PRIVMSG $black(chanserv) :voice $chan $nick"
	blacktools:tell $nick $input $hand $chan $chan1 voiceme.3 none
		} else {
	putserv "MODE $chan +v $nick"
	blacktools:tell $nick $input $hand $chan $chan1 voiceme.3 none
		}
	}
} else {
	putserv "WHOIS $nick"
	set ::vnick $nick
	set ::vchan $chan
	set ::vhand $hand
	set ::vhost $host
	bind RAW - 330 voiceme:logged
	bind RAW - 307 voiceme:identified
		}
	}
}

unbanme {
if {[lindex $host 0] == "dcc"} {
	return
}
if {![regexp {^[&#]} $chan]} {
	return
}
if {![validchan $chan]} {
	return
}
if {![botisop $chan] && ![setting:get $chan xonly]} {
	return
}
	set found_ban 0
foreach b [blacktools:banlist $chan] {
	set read_chan [lindex [split $b] 2]
if {[string equal -nocase $read_chan $chan]} {
	set read_host [lindex [split $b] 3]
	set real_read_host [string map [list \[ {\[} \] {\]} \? {\?} \\ {\\}] $read_host]
if {[string match -nocase $real_read_host "$nick!$host"] || [string match -nocase "$nick!$host" $real_read_host]} {
	set read_bot [lindex [split $b] 7]
if {$read_bot == 3} {
	set found_ban 1
			}
		}
	}
}

if {$found_ban == "0"} {
	return
}
	set code [join [lrange [split $arg] 2 end]]

if {$code == ""} {
	set black(botcode:$chan) [string toupper [bot:setcode]]
	blacktools:tell $nick $input $hand $chan $chan1 bot.6 $black(botcode:$chan)
foreach tmr [utimers] {
if {[string match "*unset black(botcode:$chan)*" [join [lindex $tmr 1]]]} {
	killutimer [lindex $tmr 2]
			}	
		}
	utimer 60 [list unset black(botcode:$chan)]
	return
}

if {![info exists black(botcode:$chan)]} {
	return
}
if {[string equal -nocase $code $black(botcode:$chan)]} {
foreach b [blacktools:banlist $chan] {
	set read_chan [lindex [split $b] 2]
	set read_host [lindex [split $b] 3]
	set real_read_host [string map [list \[ {\[} \] {\]} \? {\?} \\ {\\}] $read_host]
if {[string match -nocase $real_read_host "$nick!$host"]} {
	set read_bot [lindex [split $b] 7]
if {$read_bot == 3} {
if {[ischanban $read_host $chan] && [botisop $chan]} {
	pushmode $chan -b $read_host
							}
if {[setting:get $chan xonly] || [setting:get $chan xtools]} {
	putquick "PRIVMSG $black(chanserv) :unban $chan $read_host"
						}
	blacktools:auto:remove $read_host $chan
	set black(bans) [blacktools:banlist:all]
	blacktools:tell $nick $input $hand $chan $chan1 bot.7 none
				}
			}
		}
	}
}

enable {
if {[matchattr $hand nmo|M $chan]} {
	set what [lindex [split $arg] 2]
	set user [lindex [split $arg] 3]
if {$mychan_use == "1"} {
	set what [lindex [split $arg] 1]
	set user [lindex [split $arg] 2]
}
	set chan1 "$chan"
	set type "2"
	enable:process $nick $input $hand $chan $chan1 $type $what $user
	}
}

disable {
if {[matchattr $hand nmo|M $chan]} {
	set what [lindex [split $arg] 2]
	set user [lindex [split $arg] 3]
if {$mychan_use == "1"} {
	set what [lindex [split $arg] 1]
	set user [lindex [split $arg] 2]
}
	set chan1 "$chan"
	set type "2"
	disable:process $nick $input $hand $chan $chan1 $type $what $user
	}
}

dr {
if {[matchattr $hand nmo|OSMA $chan]} {
	set drone [lindex [split $arg] 2]
	set com [join [lrange [split $arg] 3 end]]
if {$mychan_use == "1"} {
	set drone [lindex [split $arg] 1]
	set com [join [lrange [split $arg] 2 end]]
}
	set type 2
	set chan1 "$chan"
	userhost:act $drone $nick $hand $input $chan $chan1 $type $black(dr:bantime) "dr" "$com" "0"
	}
}

bot {
if {[matchattr $hand nmo|OSMA $chan]} {
	set bot [lindex [split $arg] 2]
	set com [join [lrange [split $arg] 3 end]]
if {$mychan_use == "1"} {
	set bot [lindex [split $arg] 1]
	set com [join [lrange [split $arg] 2 end]]
}
	set type 2
	set chan1 "$chan"
	userhost:act $bot $nick "$hand:bot" $input $chan $chan1 $type $black(bot:bantime) "bot" "$com" "0"
	}
}

n {
if {[matchattr $hand nmo|OMA $chan]} {
	set badnick [lindex [split $arg] 2]
	set com [join [lrange [split $arg] 3 end]]
if {$mychan_use == "1"} {
	set badnick [lindex [split $arg] 1]
	set com [join [lrange [split $arg] 2 end]]
}
	set type 0
	set chan1 "$chan"
	
if {[setting:get $chan nextshortcmd]} {
	nextpublic:process $nick $input $hand $chan $chan1 $badnick
	return
}

if {[regexp {\*} $badnick]} {
	blacktools:tell $nick $input $hand $chan $chan1 gl.instr_priv "n"
	return
}
if {$badnick == ""} {
	blacktools:tell $nick $input $hand $chan $chan1 gl.instr_priv "n"
	return
		}
	bancmds:process $badnick $badnick $nick $hand $input $chan $chan1 $type $black(n:bantime) "n" "$com" "0"
	}
}

id {
if {[matchattr $hand nmo|OMA $chan]} {
	set badident [lindex [split $arg] 2]
	set com [join [lrange [split $arg] 3 end]]
if {$mychan_use == "1"} {
	set badident [lindex [split $arg] 1]
	set com [join [lrange [split $arg] 2 end]]
}
	set handle [nick2hand $badident]
	set type 2
	set chan1 "$chan"
	userhost:act $badident $nick $hand $input $chan $chan1 $type $black(id:bantime) "id" "$com" "0"
	}
}

spam {
if {[matchattr $hand nmo|OMA $chan]} {
	set spammer [lindex [split $arg] 2]
	set com [join [lrange [split $arg] 3 end]]
if {$mychan_use == "1"} {
	set spammer [lindex [split $arg] 1]
	set com [join [lrange [split $arg] 2 end]]
}
	set type 2
	set chan1 "$chan"
	userhost:act $spammer $nick $hand $input $chan $chan1 $type $black(spam:bantime) "spam" "$com" "0"
	}
}


bw {
if {[matchattr $hand nmo|OMA $chan]} {
	set badw [lindex [split $arg] 2]
	set com [join [lrange [split $arg] 3 end]]
if {$mychan_use == "1"} {
	set badw [lindex [split $arg] 1]
	set com [join [lrange [split $arg] 2 end]]
}
	set type 2
	set chan1 "$chan"
	userhost:act $badw $nick $hand $input $chan $chan1 $type $black(bw:bantime) "bw" "$com" "0"
	}
}

mb {
if {[matchattr $hand nmo|OMA $chan]} {
	set badd [lindex [split $arg] 2]
	set reason [join [lrange [split $arg] 3 end]]
if {$mychan_use == "1"} {
	set badd [lindex [split $arg] 1]
	set reason [join [lrange [split $arg] 2 end]]
}
	set type 2
	set chan1 "$chan"
	userhost:act $badd $nick $hand $input $chan $chan1 $type $black(mb:bantime) "mb" $reason "0"
	}
}

black {
if {[matchattr $hand nmo|MA $chan]} {
	set blackb [lindex [split $arg] 2]
	set reason [join [lrange [split $arg] 3 end]]
if {$mychan_use == "1"} {
	set blackb [lindex [split $arg] 1]
	set reason [join [lrange [split $arg] 2 end]]
}
	set type 2
	set chan1 "$chan"
	userhost:act $blackb $nick $hand $input $chan $chan1 $type "0" "black" $reason "0"
	}
}

bl {
if {[matchattr $hand nmo|MA $chan]} {
	set blackb [lindex [split $arg] 2]
	set reason [join [lrange [split $arg] 3 end]]
if {$mychan_use == "1"} {
	set blackb [lindex [split $arg] 1]
	set reason [join [lrange [split $arg] 2 end]]
}
	set type 2
	set chan1 "$chan"
	userhost:act $blackb $nick $hand $input $chan $chan1 $type "0" "black" $reason "0"
	}
}

b {
if {[matchattr $hand nmo|MAO $chan]} {
	set no_chan 0
	set type 2
	set gl 0
	set link 0
	set chan1 "$chan"
	set level ""
	set regex 0
	set b [lindex [split $arg] 2]
if {[string equal -nocase $b "-regex"]} {
	set regex 1
}
	set b [lindex [split $arg] [expr $regex + 2]]
	set tm [lindex [split $arg] [expr $regex + 3]]
	set global [lindex [split $arg] [expr $regex + 4]]
	set reason [join [lrange [split $arg] [expr $regex + 5] end]]
	set return_time [time_return_minute $tm]
if {$return_time == "-1"} {
	set global [lindex [split $arg] [expr $regex + 3]]
	set reason [join [lrange [split $arg] [expr $regex + 4] end]]
}
if {![regexp {^[&#]} $chan]} {
	set no_chan 1
	set b [lindex [split $arg] 1]
if {[string equal -nocase $b "-regex"]} {
	set regex 1
}
	set b [lindex [split $arg] [expr $regex + 1]]
	set tm [lindex [split $arg] [expr $regex + 2]]
	set global [lindex [split $arg] [expr $regex + 3]]
	set reason [join [lrange [split $arg] [expr $regex + 4] end]]
	set return_time [time_return_minute $tm]
if {$return_time == "-1"} {
	set global [lindex [split $arg] [expr $regex + 2]]
	set reason [join [lrange [split $arg] [expr $regex + 3] end]]
	}	
}
if {$mychan_use == "1"} {
	set b [lindex [split $arg] 1]
if {[string equal -nocase $b "-regex"]} {
	set regex 1
}
	set b [lindex [split $arg] [expr $regex + 1]]
	set tm [lindex [split $arg] [expr $regex + 2]]
	set global [lindex [split $arg] [expr $regex + 3]]
	set reason [join [lrange [split $arg] [expr $regex + 4] end]]
	set return_time [time_return_minute $tm]
if {$return_time == "-1"} {
	set global [lindex [split $arg] [expr $regex + 2]]
	set reason [join [lrange [split $arg] [expr $regex + 3] end]]
}
if {[regexp {^[-]} $tm]} {
	set level [blacktools:check:levelban $hand $chan $tm]
	set reason [join [lrange [split $arg] [expr $regex + 4] end]]
	set tm [lindex [split $arg] [expr $regex + 3]]
	set return_time [time_return_minute $tm]
if {$return_time == "-1"} {
	set tm [lindex [split $arg] [expr $regex + 2]]
	set reason [join [lrange [split $arg] [expr $regex + 3] end]]
		} 
} elseif {[string equal -nocase "$global" "global"] && [matchattr $hand nm]} {
	set gl 1
	set tm [lindex [split $arg] [expr $regex + 2]]
	set reason [join [lrange [split $arg] [expr $regex + 4] end]]
	set return_time [time_return_minute $tm]
if {$return_time == "-1"} {
	set reason [join [lrange [split $arg] [expr $regex + 3] end]]
			} 
} elseif {[string equal -nocase "$global" "link"] && [matchattr $hand nm]} {
	set link 1
	set tm [lindex [split $arg] [expr $regex + 2]]
	set reason [join [lrange [split $arg] [expr $regex + 4] end]]
	set return_time [time_return_minute $tm]
if {$return_time == "-1"} {
	set reason [join [lrange [split $arg] [expr $regex + 3] end]]
			}
if {$no_chan == "1"} {
	set b [lindex [split $arg] 1]
if {[string equal -nocase $b "-regex"]} {
	set regex 1
}
	set b [lindex [split $arg] [expr $regex + 1]]
	set tm [lindex [split $arg] [expr $regex + 2]]
	set global [lindex [split $arg] [expr $regex + 3]]
	set reason [join [lrange [split $arg] [expr $regex + 4] end]]
	set return_time [time_return_minute $tm]
if {$return_time == "-1"} {
	set global [lindex [split $arg] [expr $regex + 2]]
	set reason [join [lrange [split $arg] [expr $regex + 3] end]]
			}
		}				
	} else {
if {$return_time == "-1"} {
	set reason [join [lrange [split $arg] [expr $regex + 2] end]]
	} else {
	set reason [join [lrange [split $arg] [expr $regex + 3] end]]
		}
	}
} else {
if {[regexp {^[-]} $tm]} {
	set level [blacktools:check:levelban $hand $chan $tm]
	set reason [join [lrange [split $arg] [expr $regex + 5] end]]
	set tm [lindex [split $arg] [expr $regex + 4]]
	set return_time [time_return_minute $tm]
if {$return_time == "-1"} {
	set tm [lindex [split $arg] [expr $regex + 3]]
	set reason [join [lrange [split $arg] [expr $regex + 4] end]]
		} 
} elseif {[string equal -nocase "$global" "global"] && [matchattr $hand nm]} {
	set gl 1
	set tm [lindex [split $arg] [expr $regex + 3]]
	set reason [join [lrange [split $arg] [expr $regex + 5] end]]
	set return_time [time_return_minute $tm]
if {$return_time == "-1"} {
	set reason [join [lrange [split $arg] [expr $regex + 4] end]]
			}
if {$no_chan == "1"} {
	set b [lindex [split $arg] 1]
if {[string equal -nocase $b "-regex"]} {
	set regex 1
}
	set b [lindex [split $arg] [expr $regex + 1]]
	set tm [lindex [split $arg] [expr $regex + 2]]
	set global [lindex [split $arg] [expr $regex + 3]]
	set reason [join [lrange [split $arg] [expr $regex + 4] end]]
	set return_time [time_return_minute $tm]
if {$return_time == "-1"} {
	set global [lindex [split $arg] [expr $regex + 2]]
	set reason [join [lrange [split $arg] [expr $regex + 3] end]]
		}
	}			
} elseif {[string equal -nocase "$global" "link"] && [matchattr $hand nm]} {
	set link 1
	set tm [lindex [split $arg] [expr $regex + 3]]
	set reason [join [lrange [split $arg] [expr $regex + 5] end]]
	set return_time [time_return_minute $tm]
if {$return_time == "-1"} {
	set reason [join [lrange [split $arg] [expr $regex + 4] end]]
			}
if {$no_chan == "1"} {
	set b [lindex [split $arg] 1]
if {[string equal -nocase $b "-regex"]} {
	set regex 1
}
	set b [lindex [split $arg] [expr $regex + 1]]
	set tm [lindex [split $arg] [expr $regex + 2]]
	set global [lindex [split $arg] [expr $regex + 3]]
	set reason [join [lrange [split $arg] [expr $regex + 4] end]]
	set return_time [time_return_minute $tm]
if {$return_time == "-1"} {
	set global [lindex [split $arg] [expr $regex + 2]]
	set reason [join [lrange [split $arg] [expr $regex + 3] end]]
			}
		}				
	} else {
if {$return_time == "-1"} {
	set reason [join [lrange [split $arg] [expr $regex + 3] end]]
	} else {
	set reason [join [lrange [split $arg] [expr $regex + 4] end]]
		}
	}
}
	
if {[setting:get $chan nextshortcmd]} {
	noidlepublic:process $nick $input $hand $chan $chan1 $b 0
	return
}

if {($return_time > "20160" || $return_time == "0")  && [matchattr $hand -|OS $b]} {
	blacktools:tell $nick $input $hand $chan $chan1 b.6 none
	return
}
if {$return_time == "-1"} {
	set return_time $black(b:bantime)
}
if {[llength $level] > "1"} {
	blacktools:tell $nick $input $hand $chan $chan1 gl.invalidlevel [string map {"0" ""} $level]
	return
}

if {$regex == 1} {
	set cmd [list "b" "REGEX"]
} else {
	set cmd "b"
}

if {$level != ""} {
	userhost:act $b $nick "$hand:$level" $input $chan $chan1 $type $return_time $cmd $reason $gl
} else {
if {$link == "1"} {
	userhost:act $b $nick "$hand" $input $chan $chan1 $type $return_time $cmd $reason "2"
	utimer 5 [list blacktools:link_ban [link:chan:get $chan] 0 $b $nick $hand $input $chan $chan1 $type $return_time $cmd $reason 2]
	return
}
	userhost:act $b $nick "$hand" $input $chan $chan1 $type $return_time $cmd $reason $gl
		}
	}
}

stick {
if {[matchattr $hand nmo|M $chan]} {
	set stickb [lindex [split $arg] 2]
	set tm [lindex [split $arg] 3]
if {$mychan_use == "1"} {
	set stickb [lindex [split $arg] 1]
	set tm [lindex [split $arg] 2]
}
	set return_time [time_return_minute $tm]
if {$return_time == "-1"} {
	set reason [join [lrange [split $arg] 3 end]]
if {$mychan_use == "1"} {
	set reason [join [lrange [split $arg] 2 end]]
	}
} else {
	set tm [lindex [split $arg] 4]
	set reason [join [lrange [split $arg] 4 end]]
if {$mychan_use == "1"} {
	set tm [lindex [split $arg] 3]
	set reason [join [lrange [split $arg] 3 end]]
	}
}
	set type 2
	set chan1 "$chan"
if {($return_time > "20160" || $return_time == "0")  && [matchattr $hand -|OS $stickb]} {
	blacktools:tell $nick $input $hand $chan $chan1 b.6 none
	return
}

if {$return_time == "-1"} {
	set return_time $black(stick:bantime)
}
	userhost:act $stickb $nick $hand $input $chan $chan1 $type $return_time "stick" $reason "0"
	}
}

ub {
if {[matchattr $hand nmo|MAO $chan]} {
	set ban [lindex [split $arg] 1]
	set regexp 0
if {[string equal -nocase $ban "-regex"]} {
	set regexp 1
}
	set ban [lindex [split $arg] [expr $regexp + 1]]
	set why [lindex [split $arg] [expr $regexp + 2]]
if {[regexp {^[&#]} $ban]} { 
	set ban [lindex [split $arg] 2]
if {[string equal -nocase $ban "-regex"]} {
	set regexp 1
}
	set ban [lindex [split $arg] [expr $regexp + 2]]
	set why [lindex [split $arg] [expr $regexp + 3]]
}
	set type 2
	set chan1 "$chan"
if {[regexp {^[0-9]} $ban]} {
	set cmd "ub:id"
} else {
	set cmd "ub"
}
if {$regexp == "1"} {
	set cmd [list $cmd "REGEX"]
}
if {[string equal -nocase $why "global"] && [matchattr $hand nm]} {
	ub:process $ban $ban $nick $hand $host $chan $chan1 $type "1" $cmd "" "" $input
} elseif {[string equal -nocase $why "link"] && [matchattr $hand nm]} {
	ub:process $ban $ban $nick $hand $host $chan $chan1 $type "" $cmd "" "1" $input
} else {
	ub:process $ban $ban $nick $hand $host $chan $chan1 $type "" $cmd "" "" $input
		}
	}
}

k {
if {[matchattr $hand nmo|OMA $chan]} {
	set knick [lindex [split $arg] 2]
	set type 2
	set reason [join [lrange [split $arg] 3 end]]
if {$mychan_use == "1"} {
	set knick [lindex [split $arg] 1]
	set reason [join [lrange [split $arg] 2 end]]
}
	set handle [nick2hand $knick]
	set chan1 "$chan"
if {$knick != ""} {
	k:process $knick $nick $hand $input $reason $chan $chan1 $type
		} else {k:process $knick $nick $hand $input $reason $chan $chan1 $type}
	}
}

w {
if {[matchattr $hand nmo|OMA $chan]} {
	set wnick [lindex [split $arg] 2]
if {$mychan_use == "1"} {
	set wnick [lindex [split $arg] 1]
}
	set type 2
	set handle [nick2hand $wnick]
	set chan1 "$chan"
if {$wnick != ""} {
	w:process $wnick $nick $hand $input $chan $chan1 $type
		} else { w:process $wnick $nick $hand $input $chan $chan1 $type }
	}
}

ungag {
if {[matchattr $hand nmo|OMA $chan]} {
	set gagger [lindex [split $arg] 2]
if {$mychan_use == "1"} {
	set gagger [lindex [split $arg] 1]
}
	set type 2
	set chan1 "$chan"
if {$gagger != ""} {
	ungag:process $gagger $nick $hand $input $chan $chan1 $type
	} else { ungag:process $gagger $nick $hand $input $chan $chan1 $type }
	}
}

gag {
if {[matchattr $hand nmo|OMA $chan]} {
	set gagger [lindex [split $arg] 2]
	set time [lindex [split $arg] 3]
	set reason [join [lrange [split $arg] 4 end]]
if {$mychan_use == "1"} {
	set gagger [lindex [split $arg] 1]
	set time [lindex [split $arg] 2]
	set reason [join [lrange [split $arg] 3 end]]
}
	set type 2
	set handle [nick2hand $gagger]
	set chan1 "$chan"
	set return_time [time_return_minute $time]
if {$return_time == "-1"} {
	set reason [join [lrange [split $arg] 3 end]]
	set time [setting:get $chan gag-bantime]
if {$time == ""} {
	set time $black(gag:bantime)
	}
}

if {$gagger != ""} {
	gag:process $gagger $time $reason $nick "$hand:GAG" $input $chan $chan1 $type
		} else { gag:process $gagger $time $reason $nick $hand $input $chan $chan1 $type }
	}
}

show {
if {[matchattr $hand nmo|M $chan]} {
	set wich [lindex [split $arg] 2]
if {$mychan_use == "1"} {
	set wich [lindex [split $arg] 1]
}
	set type 2
	set chan1 "$chan"
	show:process $nick $input $hand $chan $chan1 $wich $type
	}
}

clonescan {
if {[matchattr $hand nmo|MA $chan]} {
	set why [lindex [split $arg] 2]
	set type 2
	set chan1 "$chan"
if {[regexp {^[&#]} $chan] && [matchattr $hand nmo|M $chan] && ($why != "")} {
	set chan1 "$chan"
	set clone [join [lrange [split $arg] 3 end]]
	set number [lindex [split $arg] 3]
	prot:module:process $nick $input $hand $chan $chan1 $chan $clone $type $number "clonescan"
	return
		}
	scanner:process $nick $input $hand $chan $chan1 $type
	}
}

sb {
if {[matchattr $hand nmo|VMAO $chan]} {
	set bhost [lindex [split $arg] 2]
	set regexp 0
if {[string equal -nocase $bhost "-regex"]} {
	set regexp 1
}
	set bhost [lindex [split $arg] [expr $regexp + 2]]
	set what [lindex [split $arg] [expr $regexp + 3]]
if {$mychan_use == "1"} {
	set bhost [lindex [split $arg] 1]
if {[string equal -nocase $bhost "-regex"]} {
	set regexp 1
}
	set bhost [lindex [split $arg] [expr $regexp + 1]]
	set what [lindex [split $arg] [expr $regexp + 2]]
}
	set type 2
	set chan1 "$chan"
if {$bhost != ""} {
if {[regexp {^[0-9]} $bhost]} {
	sb:process $bhost $input $nick $hand $host $chan $chan1 $type "sb" "2"
	return
}
if {![validchan $chan]} {
	blacktools:tell $nick $input $hand $chan $chan1 gl.novalidchan none
	return
}
if {[onchan $bhost $chan]} {
	set bhost "$bhost![getchanhost $bhost $chan]"
	sb:process $bhost $input $nick $hand $host $chan $chan1 $type "sb" "1"
	return
}
if {$regexp == 1} {
	sb:process $bhost $input $nick $hand $host $chan $chan1 $type [list "sb" "REGEX"] "1"
	return
} elseif {[regexp {\*} $bhost]} {
	sb:process $bhost $input $nick $hand $host $chan $chan1 $type "sb" "1"
	return
}
	sb:process $bhost $input $nick $hand $host $chan $chan1 $type "sb" ""
		} else { sb:process $bhost $input $nick $hand $host $chan $chan1 $type "sb" ""}
	}
}

banlist {
if {[matchattr $hand nmo|AOM $chan]} {
	set user [lindex [split $arg] 2]
	set next [lindex [split $arg] 3]
if {$mychan_use == "1"} {
	set user [lindex [split $arg] 1]
	set next [lindex [split $arg] 2]
}
if {[string equal -nocase $chan "global"]} {
	set user $chan
}
	set type 2
	set chan1 "$chan"
	banlist:process $nick $input $hand $chan $chan1 $user $type "banlist" $next
	}
}

r {
if {[matchattr $hand nmo|MAO $chan]} {
	set c [lindex [split $arg] 1]
	set chan1 $chan
if {$c != "" && [matchattr $hand nmo|AMO $c]} {
	topic:refresh $nick $input $hand $c $chan1 $arg
	return
}
	topic:refresh $nick $input $hand $chan $chan1 $arg
	}
}

man {
if {[matchattr $hand nmo|MASOV $chan]} {
	set command [lindex [split $arg] 1]
	set type 0
	man:process $nick $input $hand $chan $chan1 $type $command
	}
}

auto {
if {[matchattr $hand nmo|MA $chan]} {
	set type 0
	set option [lindex [split $arg] 2]
	set user [lindex [split $arg] 3]
	set gl [lindex [split $arg] 4]
if {$mychan_use == "1"} {
	set option [lindex [split $arg] 1]
	set user [lindex [split $arg] 2]
	set gl [lindex [split $arg] 3]
}
	auto:process $nick $input $hand $chan $chan1 $user $option $gl $type 
	}
}

version {
if {[matchattr $hand nmo|MASOV $chan]} {
	set text [lindex [split $arg] 1]
	version:process $nick $input $hand $chan $chan1 $text
	}
}

seen {
	set type 2
	set wseen [lindex [split $arg] 1]
	set chan1 "$chan"
	set r "prv:$host"
if {[regexp {^[&#]} $wseen] && [matchattr $hand nmo|MAOV $wseen]} {
	set chan1 "$chan"
	set chan $wseen
	set wseen [lindex [split $arg] 2]
	seen:process $nick $r $hand $chan $chan1 $wseen $type 0
} elseif {[string equal -nocase $wseen "global"] && [matchattr $hand nmo]} {
	set chan ""
	set wseen [lindex [split $arg] 2]
	seen:process $nick $r $hand $chan $chan1 $wseen $type 1	
} elseif {$mychan_use == "1"} {
	set wseen [lindex [split $arg] 1]
	seen:process $nick $r $hand $chan $chan1 $wseen $type 0
} else {
	seen:process $nick $r $hand $chan $chan1 $wseen $type 0
	}
}

channels {
if {[matchattr $hand nmo]} {
	set chan1 "$nick"
	channels:process $nick $input $hand $chan $chan1
	}
}

userlist {
if {[matchattr $hand nmo|MAOV $chan]} {
	set type 2
	set chan1 $nick
	set level [lindex [split $arg] 2]
if {$mychan_use == "1"} {
	set level [lindex [split $arg] 1]
}
if {([string equal -nocase $chan [blacktools:getlevelname 2 $hand]] || [string equal -nocase $chan [blacktools:getlevelname 8 $hand]]) && [matchattr $hand nmo]} {
	userlist:execute $hand $input $chan $chan $chan1 $nick $type
	return
}
	userlist:execute $hand $input $level $chan $chan1 $nick $type
	}
}

chuser {
if {[matchattr $hand nmo|M $chan]} {
	set user [lindex [split $arg] 1]
	set chandle [lindex [split $arg] 2]
	set type 2
	set chan1 "$nick"
	chuser:process $nick $input $hand $chan $chan1 $user $chandle $type
	}
}

securemode {
if {[matchattr $hand nmo|M $chan]} {
	set type 2
	set chan1 "$chan"
	set why [lindex [split $arg] 2]
	set except [join [lrange [split $arg] 3 end]]
	set number [lindex [split $arg] 3]
if {$mychan_use == "1"} {
	set why [lindex [split $arg] 1]
	set except [join [lrange [split $arg] 2 end]]
	set number [lindex [split $arg] 2]
		}
	prot:module:process $nick $input $hand $chan $chan1 $why $except $type $number "securemode"
	}
}

delhost {
if {[matchattr $hand nmo|MA $chan]} {
	set user [lindex [split $arg] 1]
	set type 2
	set chan1 "$chan"
	set hosts [lindex [split $arg] 2]
	delhost:process $nick $input $hand $chan $chan1 $user $hosts $type
	}
}

addhost {
if {[matchattr $hand nmo|MA $chan]} {
	set arg [strip:all $arg]
	set type 2
	set chan1 "$chan"
	set user [lindex [split $arg] 1]
	set hosts [lindex [split $arg] 2]
	addhost:process $nick $input $hand $chan $chan1 $user $hosts $type
	}
}

del {
if {[matchattr $hand nmo|M $chan]} {
	set args [lrange [split $arg] 1 end]
	set type 2
	set chan1 "$chan"
	del:process $nick $input $hand $chan $chan1 $args $type
	}
}

delacc {
if {[matchattr $hand nmo|MA $chan]} {
	set args [lrange [split $arg] 2 end]
if {$mychan_use == "1"} {
	set args [lrange [split $arg] 1 end]
}
	set type 2
	set chan1 "$chan"
foreach user $args {
	delacc:process $nick $input $hand $chan $chan1 $user $type
		}
	}
}

add {
if {[matchattr $hand nmo|MA $chan]} {
	set arg [strip:all $arg]
	set level [lindex [split $arg] 2]
	set type 2
	set args [lrange [split $arg] 3 end]
	set c [lindex [split $arg] 3]
if {$mychan_use == "1"} {
	set level [lindex [split $arg] 1]
	set args [lrange [split $arg] 2 end]
	set c [lindex [split $arg] 2]
}
	set chan1 "$chan"
	set handle ""
	set uhost ""
if {$args != ""} {
if {[string equal -nocase $level [blacktools:getlevelname 9 $hand]]} {
	set user [lindex $args 0]
	set reason [join [lrange $args 1 end]]
if {$user != ""} {
if {[validchan $chan] && [onchan $user $chan]} {
	set handle [nick2hand $user]
	set hosts [getchanhost $user $chan]
	set uhost [return_mask $black(hostdefaultadd) $hosts $user]
	add:process $user $uhost $handle $level $hand $input $chan $chan1 $nick $type "add" $reason "ban"
} else {
if {![string is alnum $user]} {
	blacktools:tell $nick $input $hand $chan $chan1 add.18 none
	continue
}
	add:process $user $uhost $handle $level $hand $input $chan $chan1 $nick $type "add" $reason "ban"
		}
	}
	return
}
foreach user $args {
if {$user != ""} {
if {[validchan $chan] && [onchan $user $chan]} {
	set handle [nick2hand $user]
	set hosts [getchanhost $user $chan]
	set uhost [return_mask $black(hostdefaultadd) $hosts $user]
	add:process $user $uhost $handle $level $hand $input $chan $chan1 $nick $type "add" "" ""
	continue
} else {
if {![string is alnum $user]} {
	blacktools:tell $nick $input $hand $chan $chan1 add.18 none
	continue
}
	add:process $user $uhost $handle $level $hand $input $chan $chan1 $nick $type "add" "" ""
					}
				}
			}
		} else {  add:process "" $uhost $handle $level $hand $input $chan $chan1 $nick $type "add" "" ""}	
	}
}

suspend {
if {[matchattr $hand nmo]} {
	set reason [join [lrange [split $arg] 2 end]]
	set cmd_status [btcmd:status $chan $hand "suspend" 0]
if {$cmd_status == "1"} { 
	return 
}
if {[matchattr $hand q]} { blacktools:tell $nick $input $hand $chan $chan1 gl.glsuspend none
	return
}
	set chan1 "$chan"
if {$chan == ""} {blacktools:tell $nick $input $hand $chan $chan1 gl.instr_priv "suspend"
	return
}
if {![regexp {^[&#]} $chan]} {
	blacktools:tell $nick $input $hand $chan $chan1 gl.novalidchan none
	return
}
if {![validchan $chan]} { blacktools:tell $nick $input $hand $chan $chan1 gl.novalidchan none
	return
}

if {[channel get $chan inactive]} {
	blacktools:tell $nick $input $hand $chan $chan1 suspend.3 $chan
	return
}
	channel set $chan +inactive
if {$reason == ""} { set reason "N/A" }
	suspendchan:note $hand $chan $reason
	blacktools:tell $nick $input $hand $chan $chan1 suspend.4 $chan
	}
}

unsuspend {
if {[matchattr $hand nmo]} {
	set cmd_status [btcmd:status $chan $hand "unsuspend" 0]
if {$cmd_status == "1"} { 
	return 
}
if {[matchattr $hand q]} { blacktools:tell $nick $input $hand $chan $chan1 gl.glsuspend none
	return
}
	set chan1 "$chan"
if {$chan == ""} {blacktools:tell $nick $input $hand $chan $chan1 gl.instr_priv "unsuspend"
	return
}

if {![regexp {^[&#]} $chan]} {
	blacktools:tell $nick $input $hand $chan $chan1 gl.novalidchan none
	return
}
 
if {![validchan $chan]} { blacktools:tell $nick $input $hand $chan $chan1 gl.novalidchan none
	return
}

if {![channel get $chan inactive]} {
	blacktools:tell $nick $input $hand $chan $chan1 unsuspend.3 $chan
	return
}
	channel set $chan -inactive
	blacktools:tell $nick $input $hand $chan $chan1 unsuspend.4 $chan
	}
}

delchan {
if {[matchattr $hand nmo]} {
		set reason [join [lrange [split $arg] 2 end]]
	set cmd_status [btcmd:status $chan $hand "delchan" 0]
if {$cmd_status == "1"} { 
	return 
}
if {[matchattr $hand q]} { blacktools:tell $nick $input $hand $chan $chan1 gl.glsuspend none
	return
}
	set chan1 "$chan"
if {$chan == ""} {blacktools:tell $nick $input $hand $chan $chan1 gl.instr_priv "delchan"
	return
}
if {![regexp {^[&#]} $chan]} {
	blacktools:tell $nick $input $hand $chan $chan1 gl.novalidchan none 
	return
} 

if {![validchan $chan]} { blacktools:tell $nick $input $hand $chan $chan1 gl.novalidchan none
	return
}
	set getlang [string tolower [getuser $hand XTRA OUTPUT_LANG]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }

if {!($black(homechan) == "") && ![string equal -nocase $black(homechan) "#no_home_chan"]} {
if {[string equal -nocase $chan $black(homechan)]} {
	blacktools:tell $nick $input $hand $chan $chan1 delchan.5 $chan
	return
	}
}
	channel remove $chan
	delchan:all $chan
if {$reason == ""} { set reason "N/A" }
	delchan:note $hand $chan $reason
	blacktools:tell $nick $input $hand $chan $chan1 delchan.3 $chan
	}
}

addchan {
if {[matchattr $hand nmo]} {
	set cmd_status [btcmd:status $chan $hand "addchan" 0]
if {$cmd_status == "1"} { 
	return 
}
if {[matchattr $hand q]} { blacktools:tell $nick $input $hand $chan $chan1 gl.glsuspend none
	return
}
	set key [lindex [split $arg] 2]
	set chan1 "$chan"
if {$chan == ""} {
	blacktools:tell $nick $input $hand $chan $chan1 gl.instr_priv "addchan"
	return
}

if {![regexp {^[&#]} $chan]} {	
	blacktools:tell $nick $input $hand $chan $chan1 gl.novalidchan none
	return
} 

if {[validchan $chan]} {
	blacktools:tell $nick $input $hand $chan $chan1 addchan.2 $chan
	return
} else {
	channel add $chan
	blacktools:tell $nick $input $hand $chan $chan1 addchan.3 $chan
if {$key != ""} {
	putquick "JOIN $chan :$key"
	channel set $chan chanmode "+ntk $key"
			}
		}
	}
}

die {
if {[matchattr $hand nm]} {
	set cmd_status [btcmd:status $chan $hand "die" 0]
if {$cmd_status == "1"} { 
	return 
}
if {[matchattr $hand q]} { blacktools:tell $nick $input $hand $chan $chan1 gl.glsuspend none
	return
}
	set chan1 "$chan"
	set reason [join [lrange [split $arg] 1 end]]
	set getlang [string tolower [getuser $hand XTRA OUTPUT_LANG]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
	blacktools:tell $nick $input $hand $chan $chan1 die.1 none
if {$reason == ""} {
	set text [black:color:set "" $black(say.$getlang.die.2)]
	set reply [join $text]
	set reason $reply
}
	utimer 3 [list die $reason]
	}
}

jump {
if {[matchattr $hand nm]} {
	set cmd_status [btcmd:status $chan $hand "jump" 0]
if {$cmd_status == "1"} { 
	return 
}
if {[matchattr $hand q]} { blacktools:tell $nick $input $hand $chan $chan1 gl.glsuspend none
	return
}
set chan1 "$chan"
set serv [lindex [split $arg] 1]
if {$serv == ""} {
	blacktools:tell $nick $input $hand $chan $chan1 jump.1 "..."
	utimer 3 [list jump]
} else {
	blacktools:tell $nick $input $hand $chan $chan1 jump.1 "\002$serv\002"
	utimer 3 [list jump $serv]
		}	
	}
}

save {
if {[matchattr $hand nm]} {
	set cmd_status [btcmd:status $chan $hand "save" 0]
if {$cmd_status == "1"} { 
	return 
}
if {[matchattr $hand q]} { blacktools:tell $nick $input $hand $chan $chan1 gl.glsuspend none
	return
}
	set chan1 "$chan"
	blacktools:tell $nick $input $hand $chan $chan1 save.1 none
	save
	}
}

restart {
if {[matchattr $hand nm]} {
	set cmd_status [btcmd:status $chan $hand "restart" 0]
if {$cmd_status == "1"} { 
	return 
}
if {[matchattr $hand q]} { blacktools:tell $nick $input $hand $chan $chan1 gl.glsuspend none
	return
}
	set chan1 "$chan"
	blacktools:tell $nick $input $hand $chan $chan1 restart.1 none
	utimer 3 [list restart]
	}
}


rehash {
if {[matchattr $hand nm]} {
	set cmd_status [btcmd:status $chan $hand "rehash" 0]
if {$cmd_status == "1"} { 
	return 
}
if {[matchattr $hand q]} { blacktools:tell $nick $input $hand $chan $chan1 gl.glsuspend none
	return
}
	set chan1 "$chan"
	blacktools:tell $nick $input $hand $chan $chan1 rehash.1 none
	rehash
	}
}

nick {
if {[matchattr $hand nm]} {
	set thenick [lindex [split $arg] 1]
	set chan1 $chan
	set type 2
	tempnick:process $thenick $nick $input $hand $chan $chan1 $type
	}
}

msg {
if {[matchattr $hand nmo]} {
	set who [lindex [split $arg] 1]	
	set chan1 "$chan"
	set type 2
	set msg [join [lrange [split $arg] 2 end]]
	msg:process $nick $input $hand $chan $chan1 $who $msg $type
	}
}

omsg {
if {[matchattr $hand nmo|OMA $chan]} {
	set who [lindex [split $arg] 2]	
	set chan1 "$chan"
	set type 2
	set msg [join [lrange [split $arg] 3 end]]
	omsg:process $nick $input $hand $chan $chan1 $who $msg $type
	}
}

set {
if {[matchattr $hand nmo|M $chan]} {
	set flags [lindex [split $arg] 2]
	set type [join [lrange [split $arg] 3 end]]
if {$mychan_use == "1"} {
	set flags [lindex [split $arg] 1]
	set type [join [lrange [split $arg] 2 end]]
} elseif {![regexp {[&#]} $chan]} {
	set flags [lindex [split $arg] 1]
	set type [join [lrange [split $arg] 2 end]]
}
	set type1 2
	set chan1 "$chan"
if {[matchattr $hand mn]} {
if {[string equal -nocase "global" $chan]} {
	set chan "$flags"
	foreach c [channels] {
	set:process $nick $input $hand $c $chan1 $flags $type $type1	
		}
		return
			}
		}
	set:process $nick $input $hand $chan $chan1 $flags $type $type1
	}
}

mode {
if {[matchattr $hand nmo|OMA $chan]} {
	set modes [lindex [split $arg] 2]
	set hosts [lindex [split $arg] 3]
if {$mychan_use == "1"} {
	set modes [lindex [split $arg] 1]
	set hosts [lindex [split $arg] 2]
}
	set type 2
	set chan1 "$chan"
	mode:process $nick $input $hand $chan $chan1 $modes $type $hosts
	}
}

cycle {
if {[matchattr $hand nmo|OMA $chan]} {
	set reason [join [lrange [split $arg] 2 end]]
if {$mychan_use == "1"} {
	set reason [join [lrange [split $arg] 1 end]]
}
	set chan1 "$chan"
	cycle:process $nick $input $hand $chan $chan1 $reason
	}
}

purge {
if {[matchattr $hand -|M $chan]} {
	set reason [join [lrange [split $arg] 2 end]]
if {$mychan_use == "1"} {
	set reason [join [lrange [split $arg] 1 end]]
}
	set chan1 "$chan"
if {$reason == ""} {
	blacktools:tell $nick $input $hand $chan $chan1 purge.1 none
	return
}
	purge:process $nick $input $hand $chan $chan1 $reason
	}
}

broadcast {
if {[matchattr $hand nm]} {
	set text [join [lrange [split $arg] 1 end]]	
	set chan1 "$chan"
	set type 2
	broadcast:cmd:process $nick $input $hand $chan $chan1 $text $type
	}
}

act {
if {[matchattr $hand nmo|MA $chan]} {
	set text [join [lrange [split $arg] 2 end]]
	set c [lindex [split $arg] 2]
if {$mychan_use == "1"} {
	set text [join [lrange [split $arg] 1 end]]
	set c [lindex [split $arg] 1]
}
	set type 2
	set chan1 "$chan"
	act:process $nick $input $hand $chan $chan1 $text $type
	}
}

say {
if {[matchattr $hand nmo|MA $chan]} {
	set text [join [lrange [split $arg] 2 end]]
	set c [lindex [split $arg] 2]
if {$mychan_use == "1"} {
	set text [join [lrange [split $arg] 1 end]]
	set c [lindex [split $arg] 1]
}
	set type 2
	set chan1 "$chan"
	say:process $nick $input $hand $chan $chan1 $text $type
	}
}

v {
if {[matchattr $hand nmo|VOMA $chan]} {
	set voicex [join [lrange [split $arg] 2 end]]
if {$mychan_use == "1"} {
	set voicex [join [lrange [split $arg] 1 end]]
}
	set chan1 "$chan"
	v:process $nick $input $hand $chan $chan1 $voicex
	}
}

ho {
if {[matchattr $hand nmo|OMA $chan]} {
	set hopex [join [lrange [split $arg] 2 end]]
if {$mychan_use == "1"} {
	set hopex [join [lrange [split $arg] 1 end]]
}
	set chan1 "$chan"
	ho:process $nick $input $hand $chan $chan1 $hopex
	}
}

o {
if {[matchattr $hand nmo|OMA $chan]} {
	set opex [join [lrange [split $arg] 2 end]]
if {$mychan_use == "1"} {
	set opex [join [lrange [split $arg] 1 end]]
}
	set chan1 "$chan"
	o:process $nick $input $hand $chan $chan1 $opex
	}
}

private {
if {[matchattr $hand nmo|M $chan]} {
	set type 1
	set chan1 "$chan"
	set why [lindex [split $arg] 2]
	set user [lindex [split $arg] 3]
	set uhost [lindex [split $arg] 4]
if {[regexp {^[&#]} $why] && [matchattr $hand nmo|M $chan]} {
	set chan "$why"
	set why [lindex [split $arg] 3]
	set user [lindex [split $arg] 4]
	set uhost [lindex [split $arg] 5]
		}
private:process $nick $host $hand $chan $chan1 $why $user $uhost $type
	}
}

myset {
	foreach c [channels] {
if {[matchattr $hand nmo|AOMV $c]} {
	set chan $c
	}
}

if {[regexp {^[&#]} $chan] && [validuser $hand]} {
	set type 2
	set arg [strip:all $arg]
	set chan1 "$chan"	
	set flags [lindex [split $arg] 1]
	set typez [lindex [split $arg] 2]
	set chan2 [lindex [split $arg] 3]
	set arg [join [lrange [split $arg] 2 end]]
	myset:process $nick $input $hand $chan $chan1 $flags $typez $type $chan2 $arg
	}
}

uptime {
if {[matchattr $hand nmo]} {
	set cmd_status [btcmd:status $chan $hand "uptime" 0]
if {$cmd_status == "1"} { 
	return 
}
	set getlang [string tolower [getuser $hand XTRA OUTPUT_LANG]]
if {[matchattr $hand q]} { blacktools:tell $nick $input $hand $chan $chan1 gl.glsuspend none
	return
}
if {[matchattr $hand -|q $chan]} { blacktools:tell $nick $input $hand $chan $chan1 gl.suspend none
	return
}
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
	set chan1 "$chan"
	set up [return_time_2 $getlang [expr [unixtime] - $uptime]]
	set on [return_time_2 $getlang [expr [unixtime] - ${server-online}]]
	catch {exec uptime} shelluptime
	set file [open $black(uptime_file) "r"]
	set data [read -nonewline $file]
	close $file
if {$data == ""} {
	set read_maxup "-"
	set read_maxon "-"
} else {
	set read_maxup [return_time_2 $getlang [lindex [split $data] 0]]
	set read_maxon [return_time_2 $getlang [lindex [split $data] 1]]
}
	blacktools:tell $nick $input $hand $chan $chan1 maxup.1 "$up $read_maxup"
	blacktools:tell $nick $input $hand $chan $chan1 maxon.1 "$on $read_maxon"
	blacktools:tell $nick $input $hand $chan $chan1 uptime.2 $shelluptime
	blacktools:tell $nick $input $hand $chan $chan1 uptime.3 $server
	}
}

status {
if {[matchattr $hand nmo]} {
	status:process $nick $input $hand $chan
	}
}

t {
if {[matchattr $hand nmo|OMA $chan]} {
	set topics [join [lrange [split $arg] 2 end]]
if {$mychan_use == "1"} {
	set topics [join [lrange [split $arg] 1 end]]
}
	set type 2
	set chan1 "$chan"
	t:process $nick $input $hand $chan $chan1 $topics $type
	}
}

tcl {
if {[matchattr $hand n]} {
	set type 2
	set chan1 "$chan"
	set the_script [lindex [split $arg] 2]
	set who [lindex [split $arg] 1]
	tcl:process $nick $input $hand $chan $chan1 $type $the_script $who
	}
}

anunt {
if {[matchattr $hand nmo|M $chan]} {
	set type 2
	set chan1 "$chan"
	set who [lindex [split $arg] 2]
	set message [join [lrange [split $arg] 3 end]]
	set number [lindex [split $arg] 3]
if {$mychan_use == "1"} {
	set who [lindex [split $arg] 1]
	set message [join [lrange [split $arg] 2 end]]
	set number [lindex [split $arg] 2]
}
	anunt:process $nick $input $hand $chan $chan1 $who $message $number $type
	}
}

h {
if {![validchan $chan]} {
if {[matchattr $hand nmo]} {
	set chan [lindex [channels] 0]
if {![validchan $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.novalidchan none
	return
		}
	}
}
if {[matchattr $hand nmo|MOAV $chan]} {
	set chan1 "$chan"
	set type 2
	set command [lindex [split $arg] 1]
if {[regexp {^[&#]} $command]} {
	set chan $command
	set command [lindex [split $arg] 2]
}
	h:process $nick $input $hand $chan $chan1 $command $type
	}
}

cp {
if {[matchattr $hand nm]} {
	set type 2
	set chan1 $chan
	set what [lindex [split $arg] 1]
	set from [lindex [split $arg] 2]
	set to [lindex [split $arg] 3]
	cp:process $nick $input $hand $chan $chan1 $type $what $from $to
	}
}

troll {
if {[matchattr $hand nmo|AOM $chan]} {
	set tr [lindex [split $arg] 2]
if {$mychan_use == "1"} {
	set tr [lindex [split $arg] 1]
}
	set chan1 "$chan"
	set type 2
	userhost:act $tr $nick $hand $input $chan $chan1 $type "1440" "troll" "" "0"
	}
}

limit {
if {[matchattr $hand nmo|M $chan]} {
	set why [lindex [split $arg] 1]
	set lm [lindex [split $arg] 2]
	set type 2
	set chan1 "$chan"
if {[regexp {^[&#]} $why] && [matchattr $hand nmo|M $why]} {
	set chan "$why"
	set why [lindex [split $arg] 2]
	set lm [lindex [split $arg] 3]
		}
	limit:process $nick $input $hand $chan $chan1 $why $lm $type
	}
}

bt {
if {[matchattr $hand nm]} {
	set chan1 "$chan"
	set type 2
	set who [lindex [split $arg] 1]
	set message [join [lrange [split $arg] 2 end]]
	set number [lindex [split $arg] 2]
	broadcast:process $nick $input $hand $chan $chan1 $who $message $number $type
	}
}

us {
if {[matchattr $hand nmo|MA $chan]} {
	set type 2
	set chan1 "$chan"
	set users [lindex [split $arg] 2]
if {$mychan_use == "1"} {
	set users [lindex [split $arg] 1]
}
	us:process $nick $input $hand $chan $chan1 $users $type
	}
}

s {
if {[matchattr $hand nmo|MA $chan]} {
	set type 2
	set chan1 "$chan"
	set user [lindex [split $arg] 2]
	set suspend_time [lindex [split $arg] 3]
	set suspend_reason [join [lrange [split $arg] 4 end]]
if {$mychan_use == "1"} {
	set user [lindex [split $arg] 1]
	set suspend_time [lindex [split $arg] 2]
	set suspend_reason [join [lrange [split $arg] 3 end]]
}
if {![regexp {^[0-9]} $suspend_time]} {
	set suspend_reason [join [lrange [split $arg] 3 end]]
if {$mychan_use == "1"} {
	set suspend_reason [join [lrange [split $arg] 2 end]]
			}
		}
	s:process $nick $input $hand $chan $chan1 $user $type $suspend_time $suspend_reason
	}
}

badhost {
if {[matchattr $hand nmo|M $chan]} {
	set type 2
	set chan1 "$chan"
	set why [lindex [split $arg] 2]
	set badh [join [lrange [split $arg] 3 end]]
	set number [lindex [split $arg] 3]
if {$mychan_use == "1"} {
	set why [lindex [split $arg] 1]
	set badh [join [lrange [split $arg] 2 end]]
	set number [lindex [split $arg] 2]
}
	prot:module:process $nick $input $hand $chan $chan1 $why $badh $type $number "badhost"
	}
}

antispam {
if {[matchattr $hand nmo|M $chan]} {
	set type 2
	set chan1 "$chan"
	set why [lindex [split $arg] 2]
	set antisp [join [lrange [split $arg] 3 end]]
	set number [lindex [split $arg] 3]
if {$mychan_use == "1"} {
	set why [lindex [split $arg] 1]
	set antisp [join [lrange [split $arg] 2 end]]
	set number [lindex [split $arg] 2]
}
	prot:module:process $nick $input $hand $chan $chan1 $why $antisp $type $number "antispam"
	}
}

badrealname {
if {[matchattr $hand nmo|M $chan]} {
	set type 2
	set chan1 "$chan"
	set why [lindex [split $arg] 2]
	set badf [join [lrange [split $arg] 3 end]]
	set number [lindex [split $arg] 3]
if {$mychan_use == "1"} {
	set why [lindex [split $arg] 1]
	set badf [join [lrange [split $arg] 2 end]]
	set number [lindex [split $arg] 2]
}
	prot:module:process $nick $input $hand $chan $chan1 $why $badf $type $number "badrealname"
	}
}

badquitpart {
if {[matchattr $hand nmo|M $chan]} {
	set type 2
	set chan1 "$chan"
	set why [lindex [split $arg] 2]
	set badq [join [lrange [split $arg] 3 end]]
	set number [lindex [split $arg] 3]
if {$mychan_use == "1"} {
	set why [lindex [split $arg] 1]
	set badq [join [lrange [split $arg] 2 end]]
	set number [lindex [split $arg] 2]
}
	prot:module:process $nick $input $hand $chan $chan1 $why $badq $type $number "badquitpart"
	}
}

badident {
if {[matchattr $hand nmo|M $chan]} {
	set type 2
	set chan1 "$chan"
	set why [lindex [split $arg] 2]
	set badi [join [lrange [split $arg] 3 end]]
	set number [lindex [split $arg] 3]
if {$mychan_use == "1"} {
	set why [lindex [split $arg] 1]
	set badi [join [lrange [split $arg] 2 end]]
	set number [lindex [split $arg] 2]
}
	prot:module:process $nick $input $hand $chan $chan1 $why $badi $type $number "badident"
	}
}

badnick {
if {[matchattr $hand nmo|M $chan]} {
	set type 2
	set chan1 "$chan"
	set why [lindex [split $arg] 2]
	set badn [join [lrange [split $arg] 3 end]]
	set number [lindex [split $arg] 3]
if {$mychan_use == "1"} {
	set why [lindex [split $arg] 1]
	set badn [join [lrange [split $arg] 2 end]]
	set number [lindex [split $arg] 2]
}
	prot:module:process $nick $input $hand $chan $chan1 $why $badn $type $number "badnick"
	}
}

badword {
if {[matchattr $hand nmo|M $chan]} {
	set type 2
	set chan1 "$chan"
	set why [lindex [split $arg] 2]
	set badw [join [lrange [split $arg] 3 end]]
	set number [lindex [split $arg] 3]
if {$mychan_use == "1"} {
	set why [lindex [split $arg] 1]
	set badw [join [lrange [split $arg] 2 end]]
	set number [lindex [split $arg] 2]
}
	prot:module:process $nick $input $hand $chan $chan1 $why $badw $type $number "badword"
	}
}

info {
if {[matchattr $hand nmo|MAOV $chan]} {
	set user [lindex [split $arg] 2]
	set infouser [lindex [split $arg] 2]
if {$mychan_use == "1"} {
	set user [lindex [split $arg] 1]
	set infouser [lindex [split $arg] 1]
}
if {![regexp {^[&#]} $chan]} {
	set user $chan
	}
	set type 2
	set chan1 "$chan"
if {[regexp {^[&#]} $chan] && [matchattr $hand nmo|MAO $chan] && ($infouser == "")} {
	info:process:chan $nick $input $hand $chan $chan1
	return
		}
	info:process $nick $input $hand $chan $chan1 $user $type
	}
}

antipub {
if {[matchattr $hand nmo|M $chan]} {
	set type 2
	set chan1 "$chan"
	set why [lindex [split $arg] 2]
	set except [join [lrange [split $arg] 3 end]]
	set number [lindex [split $arg] 3]
if {$mychan_use == "1"} {
	set why [lindex [split $arg] 1]
	set except [join [lrange [split $arg] 2 end]]
	set number [lindex [split $arg] 2]
}
	prot:module:process $nick $input $hand $chan $chan1 $why $except $type $number "antipub"
	}
}


badchan {
if {[matchattr $hand nmo|M $chan]} {
	set why [lindex [split $arg] 2]
	set type1 2
	set chan1 "$chan"
	set bdchan [lindex [split $arg] 3]
	set type [lindex [split $arg] 4]
	set reason [join [lrange [split $arg] 4 end]]
if {[string equal -nocase $type "global"]} {
	set reason [join [lrange [split $arg] 5 end]]
	}
if {$mychan_use == "1"} {
	set why [lindex [split $arg] 1]
	set bdchan [lindex [split $arg] 2]
	set type [lindex [split $arg] 3]
	set reason [join [lrange [split $arg] 3 end]]
if {[string equal -nocase $type "global"]} {
	set reason [join [lrange [split $arg] 4 end]]
	}
}
if {![regexp {^[&#]} $chan] && [matchattr $hand nmo]} {
	set why $chan
	set bdchan [lindex [split $arg] 2]
	set type [lindex [split $arg] 3]
	set reason [join [lrange [split $arg] 3 end]]
if {[string equal -nocase $type "global"]} {
	set reason [join [lrange [split $arg] 4 end]]
	}
if {$mychan_use == "1"} {
	set bdchan [lindex [split $arg] 1]
	set type [lindex [split $arg] 2]
	set reason [join [lrange [split $arg] 2 end]]
if {[string equal -nocase $type "global"]} {
	set reason [join [lrange [split $arg] 3 end]]
		}
	}
}
	badchan:process $nick $input $hand $chan $chan1 $why $bdchan $type1 $type $reason
	}
}

unset {
if {[matchattr $hand nmo|M $chan]} {
	set setting [lindex [split $arg] 2]
if {$mychan_use == "1"} {
	set setting [lindex [split $arg] 1]
}
	set chan1 $chan
	set type 2
if {[string equal -nocase $setting "global"] && [matchattr $hand nm]} {
	set setting [lindex [split $arg] 2]
foreach c [channels] {
	unset:process $nick $input $hand $c $chan1 $setting $type
			}
		return
	}
	unset:process $nick $input $hand $chan $chan1 $setting $type
	}
}

greet {
if {[matchattr $hand nmo|M $chan]} {
	set who [lindex [split $arg] 2]
	set modul "greet"
	set type 2
	set chan1 $chan
	set greet [join [lrange [split $arg] 3 end]]
if {$mychan_use == "1"} {
	set who [lindex [split $arg] 1]
	set greet [join [lrange [split $arg] 2 end]]
}
	othermodule:process $nick $input $hand $chan $chan1 $who $greet $type $modul	
	}
}

leave {
if {[matchattr $hand nmo|M $chan]} {
	set who [lindex [split $arg] 2]
	set modul "leave"
	set type 2
	set chan1 $chan
	set leave [join [lrange [split $arg] 3 end]]
if {$mychan_use == "1"} {
	set who [lindex [split $arg] 1]
	set leave [join [lrange [split $arg] 2 end]]
}
	othermodule:process $nick $input $hand $chan $chan1 $who $leave $type $modul		
	}
}

topic {
if {[matchattr $hand nmo|M $chan]} {
	set who [lindex [split $arg] 2]
	set modul "topic"
	set type 2
	set chan1 $chan
	set topic [join [lrange [split $arg] 3 end]]
if {$mychan_use == "1"} {
	set who [lindex [split $arg] 1]
	set topic [join [lrange [split $arg] 2 end]]
}
	othermodule:process $nick $input $hand $chan $chan1 $who $topic $type $modul	
	}
}

vr {
if {[matchattr $hand nmo|OMA $chan]} {
	set vr [lindex [split $arg] 2]
	set com [join [lrange [split $arg] 3 end]]
	set chan1 "$chan"
	set type 2
if {$mychan_use == "1"} {
	set vr [lindex [split $arg] 1]
	set com [join [lrange [split $arg] 2 end]]
}
	userhost:act $vr $nick $hand $input $chan $chan1 $type $black(vr:bantime) "vr" "$com" "0"
	}
}

timer {
if {[matchattr $hand nm]} {
	set chan1 $chan
	set cmd [lindex [split $arg] 1]
	set pid [lindex [split $arg] 2]
	set timer_args [join [lrange [split $arg] 4 end]]
	set type 2
	timer:process $nick $input $hand $chan $chan1 $cmd $pid $timer_args $type
	}
}

i {
if {[matchattr $hand nmo|VAOM $chan]} {
	set type 2
	set chan1 "$chan"
	set inick [lindex [split $arg] 2]
if {$mychan_use == "1"} {
	set inick [lindex [split $arg] 1]
}
if {[regexp {^[&#]} $inick] && [matchattr $hand nmo|VAOM $inick]} {
	set chan "$inick"
	set inick [lindex [split $arg] 3]
}
	i:process $nick $input $hand $chan $chan1 $inick $type
	}
}

next {
if {[matchattr $hand nmo|MAO $chan]} {
	set option [lindex [split $arg] 2]
if {$mychan_use == "1"} {
	set option [lindex [split $arg] 1]
}
	set chan1 $chan
		nextpublic:process $nick $input $hand $chan $chan1 $option
	}
}

helped {
if {[matchattr $hand nmo|MAO $chan]} {
	set user [lindex [split $arg] 2]
if {$mychan_use == "1"} {
	set user [lindex [split $arg] 1]
}
	set chan1 $chan
	set type 1
	helpedpublic:process $nick $input $hand $chan $chan1 $user $type
	}
}

noidle {
if {[matchattr $hand nmo|MAO $chan]} {
	set user [lindex [split $arg] 2]
if {$mychan_use == "1"} {
	set user [lindex [split $arg] 1]
}
	set chan1 $chan
	set type 2
	noidlepublic:process $nick $input $hand $chan $chan1 $user $type
	}
}

skip {
if {[matchattr $hand nmo|MAO $chan]} {
	set user [lindex [split $arg] 2]
if {$mychan_use == "1"} {
	set user [lindex [split $arg] 1]
}
	set chan1 $chan
	set type 2
	skippublic:process $nick $input $hand $chan $chan1 $user	$type
				}
			}		

stats {
if {[matchattr $hand nmo|MA $chan]} {
	set type 2
	set chan1 "$chan"
	set user [lindex [split $arg] 2]
	set option [lindex [split $arg] 3]
if {$mychan_use == "1"} {
	set user [lindex [split $arg] 1]
	set option [lindex [split $arg] 2]
		}
	stats:process $nick $input $hand $chan $chan1 $user $option $type
	}
}
topwords {
if {[matchattr $hand nmo|AOMV $chan]} {
	set chan1 "$chan"
	set cmd ""
	set type 1
	set next [lindex [split $arg] 2]
if {$mychan_use == "1"} {
	set next [lindex [split $arg] 1]
	switch $next {
reset {
if {[matchattr $hand nmo|M $chan]} {
	set next [lindex [split $arg] 2]
	set cmd "reset"
		}	
	}
total {
	set next [lindex [split $arg] 2]
	set cmd "total"
	}
week {
	set next [lindex [split $arg] 2]
	set cmd "week"
	}
add {
if {[matchattr $hand nmo|M $chan]} {
	set next [lindex [split $arg] 2]
	set cmd "add"
	}
}	
del {
if {[matchattr $hand nmo|M $chan]} {
	set next [lindex [split $arg] 2]
	set cmd "del"
		}	
	}
list {
if {[matchattr $hand nmo|M $chan]} {
	set next [lindex [split $arg] 2]
	set cmd "list"
	}	
}
default {
if {[matchattr $hand nmo|MAOV $next]} {
if {$next != "" && ![string equal -nocase $next "-next"]} {
	set cmd $next
	set next [lindex [split $arg] 2]
	switch $next {
	total {
	set cmd "total:$cmd"
	}
	week {
	set cmd "week:$cmd"
	}
	reset {
	set cmd "reset:$cmd"
					}
	default {
	set cmd "user:$cmd"
						}
					}
				}
			}
		}
	}
}
if {$cmd == ""} {
	switch $next {
reset {
if {[matchattr $hand nmo|M $chan]} {
	set next [lindex [split $arg] 3]
	set cmd "reset"
		}	
	}
total {
	set next [lindex [split $arg] 3]
	set cmd "total"
	}
week {
	set next [lindex [split $arg] 3]
	set cmd "week"
	}
add {
if {[matchattr $hand nmo|M $chan]} {
	set next [lindex [split $arg] 3]
	set cmd "add"
	}
}	
del {
if {[matchattr $hand nmo|M $chan]} {
	set next [lindex [split $arg] 3]
	set cmd "del"
		}	
	}
list {
if {[matchattr $hand nmo|M $chan]} {
	set next [lindex [split $arg] 3]
	set cmd "list"
	}	
}
default {
if {$next != "" && ![string equal -nocase $next "-next"]} {
if {[matchattr $hand nmo|MAOV $next]} {
	set cmd $next
	switch $next {
	total {
	set cmd "total:$cmd"
	}
	week {
	set cmd "week:$cmd"
	}
	reset {
	set cmd "reset:$cmd"
					}
	default {
	set cmd "user:$cmd"
						}
					}
				}
			}
		}
	}
}
	topwords:process $nick $input $hand $chan $chan1 $cmd $type $next
	}	
}

ignore {
if {[matchattr $hand nmo|M $chan]} {
	set chan1 "$chan"
	set type 2
	set what [lindex [split $arg] 1]
	set mask [lindex [split $arg] 2]
	set time [lindex [split $arg] 3]	
	set reason [join [lrange [split $arg] 4 end]]
if {![regexp {^[0-9]} $time]} {
	set reason [join [lrange [split $arg] 3 end]]
}
	ignore:process $nick $input $hand $chan $chan1 $what $mask $time $reason $type
			}
		}
chat {
if {[matchattr $hand nm]} {
	set cmd_status [btcmd:status $chan $hand "chat" 0]
if {$cmd_status == "1"} { 
	return 
}
if {[matchattr $hand q]} { blacktools:tell $nick $input $hand $chan $chan1 gl.glsuspend none
	return
}
	set chan1 $chan
	*ctcp:CHAT $nick $host $hand $botnick CHAT $arg
	blacktools:tell $nick $input $hand $chan $chan1 chat.1 none
			} 
		}
hello {
if {![file exists $userfile]} {
	blacktools:hello $nick $host $hand
			}
		}
pass {
if {[validuser $hand]} {
	set pass [lindex [split $arg] 1]
if {$pass == ""} {
	return
}
if {[getuser $hand pass] != ""} {
	return
}
	setuser $hand PASS $pass
	blacktools:tell $nick $input $hand "" "" pass.1 $pass
			}
		}
default {
	set alias_check [blacktools:alias_check $hand $cmd]
if {$alias_check != 0} {
	set counter 0
	set text [lrange [split $arg] 2 end]
foreach a $text {
	incr counter
	set replace(%${counter}%) $a
}
	set replace(%chan%) $chan
	set text [string map [array get replace] $alias_check]
	regsub -all {%[0-9]%} $text "" text
	set text [join $text]
	comand:pubme:for $nick $host $hand $chan "for ${botnick} $text"
			}
		}
	}
}

###
##DCC Commands
proc command:pubdcc {hand idx arg} {
    global black
    command:pubpriv "" [list "dcc" $idx] $hand $arg
}


##############
#########################################################################
##   END                                                               ##
#########################################################################
