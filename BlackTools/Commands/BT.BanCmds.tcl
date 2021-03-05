#########################################################################
##          BlackTools - The Ultimate Channel Control Script           ##
##                    One TCL. One smart Eggdrop                       ##
#########################################################################
############################   BANCMDS TCL   ############################
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

  
################################ ub #####################################

proc ub:link {mask fulldns regexp whois} {
	global black
	set chanban 0
	set chanlink 0
foreach chan [link:get] {
	set chanlink [expr $chanlink + 1]
foreach b [blacktools:banlist $chan] {
	set cidr 0
	set bhost [lindex [split $b] 3]
	set real_bhost [string map [list \[ {\[} \] {\]} \? {\?} \\ {\\}] $bhost]
	set btype [lindex [split $b] 0]
	set num [lindex [split $b] 1]
if {$regexp != "REGEX"} {
if {[regexp {[/]} $real_bhost]} {
	set read_ip [lindex [split $real_bhost @] 1]
	set theip [lindex [split $mask @] 1]
	set cidr_ip [ipcidr $read_ip $theip]
if {$cidr_ip == "1"} {
	set read_rest_ip [lindex [split $mask @] 0]
	set read_theip [lindex [split $real_bhost @] 0]
if {[string match -nocase $read_rest_ip $read_theip] || [string match -nocase $read_theip $read_rest_ip]} {
	set cidr 1
			}
		}
	}
}
if {(([string match -nocase $mask $bhost] || [string match -nocase $fulldns $bhost] || [matchaddr $fulldns $bhost] || [matchaddr $mask $bhost] || ([matchaddr $bhost $fulldns] && $whois == "1") || ([matchaddr $bhost $mask] && $whois == "1")) && $regexp != "REGEX") || ([string equal -nocase $bhost $mask] && $regexp == "REGEX") || ($btype == "REGEX" && ([regexp "$bhost" $mask] || [regexp "$bhost" $fulldns]))} {
	set chanban [expr $chanban + 1]
if {([setting:get $chan xtools] || [setting:get $chan xonly]) && [onchan $black(chanserv) $chan]} {
if {$regexp != "REGEX"} {
	putserv "PRIVMSG $black(chanserv) :unban $chan $bhost"
	}
} else {
if {$regexp != "REGEX"} {
	pushmode $chan -b $bhost
	}
}
	blacktools:delban $bhost $chan "0" "0"
			}
		}
	}
	return "$chanlink $chanban"
}

proc ub:process {user mask nick hand host chan chan1 type gl cmd whois link prv} {
	global black
	set mask [strip:all $mask]
	set rcmd [lindex $cmd 0]
	set split_cmd [split $cmd ":"]
	set id [lindex $split_cmd 1]
	set cmd [lindex $split_cmd 0]
	set cmd_status [btcmd:status $chan $hand "$rcmd" 0]
if {$cmd_status == "1"} { 
	return 
}
if {[matchattr $hand q]} { blacktools:tell $nick $host $hand $chan $chan1 gl.glsuspend none
	return
}
if {[matchattr $hand -|q $chan]} { blacktools:tell $nick $host $hand $chan $chan1 gl.suspend none
	return
}
	set vhost [lindex [split $mask @] 1]
	blacktools:dns:ub $user $mask $nick $hand $host $vhost $chan $chan1 $type $gl $cmd $whois $link $id $prv
}

proc ub:act {user mask nick hand host vhost chan chan1 type gl cmd whois link id prv} {
	global black
	set regexp [lindex $cmd 1]
	set rcmd [lindex $cmd 0]
	set split_cmd [split $rcmd ":"]
	set unbaned_host ""
	set rcmd [lindex $split_cmd 0]
if {$host == "" && $mask == "" && $whois == "1"} { return }
	set rest_host [lindex [split $mask @] 0]
	set fulldns "$rest_host@$host"
if {$host == ""} { set fulldns $mask}
	set host $prv
	set nounban 0
if {$user == ""} {
switch $type {
	0 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr $rcmd
	}
	1 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_nick $rcmd
	}
	2 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_priv $rcmd
		}
	}
	return
}
	
if {![validchan $chan] && $link != "1" && $gl != "1"} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.novalidchan none
	return
}

if {$link != "1" && $gl != "1"} {
if {![botisop $chan] && ![setting:get $chan xonly]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.noop none
	return
	}
}
	set show_mask $mask
	set total_b 0
	set rem_b 0
	set xban 0

if {![regexp {\*} $mask] && $whois != "1" && $id != "id" && $regexp != "REGEX"} {
	putserv "USERHOST :$user"
	bind RAW - 302 ub:get:host
	set ::uuser $user
	set ::unick $nick
	set ::uhand $hand
	set ::uhost $host
	set ::uchan $chan
	set ::uchan1 $chan1
	set ::utype $type
	set ::ugl $gl
	set ::ucmd $rcmd
	set ::ulink $link
	set ::prv $prv
return
}

if {$link == "1"} {
	set return [ub:link $mask $fulldns $regexp $whois]
	set chanlink [lindex $return 0]
	set chanban [lindex $return 1]
	blacktools:tell $nick $host $hand $chan $chan1 ub.7 "$chanban $chanlink"
	return
} 

if {$gl != "1"} {
if {(($mask == "*") || ($mask == "*!*@*")) && [matchattr $hand -|OA $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 ub.5 none
	return
}
foreach b [blacktools:banlist $chan] {
	set bhost [lindex [split $b] 3]
	set btime [lindex [split $b] 5]
	set num [lindex [split $b] 1]
	set btype [lindex [split $b] 0]
if {(([string match -nocase $mask $bhost] || [string match -nocase $fulldns $bhost] || [matchaddr $fulldns $bhost] || [matchaddr $mask $bhost] || ([matchaddr $bhost $fulldns] && $whois == "1") || ([matchaddr $bhost $mask] && $whois == "1") || [string equal -nocase $num $mask]) && $regexp != "REGEX") || ([string equal -nocase $bhost $mask] && $regexp == "REGEX") || ($btype == "REGEX" && ([regexp "$bhost" $mask] || [regexp "$bhost" $fulldns]))} {
	set bywho [lindex [split $b] 4]
	set match_time [lindex [split $b] 5]
	set read_tr [lindex [split $b] 7]
	set total_b [expr $total_b + 1]
	set split_bywho [split $bywho ":"]
	set level [lindex $split_bywho 1]
	set check [blacktools:check:levelub $hand $chan $level]
if {$check == "-1"} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nounban $bhost
	set nounban 1
	continue
}
if {$btime == "0" && [matchattr $hand -|O $chan]} {
	continue
}
if {([blacktools:sticky $mask $chan] == "1") && [matchattr $hand -|OA $chan]} {
	continue
}
	set rem_b [expr $rem_b + 1]

if {([setting:get $chan xtools] || [setting:get $chan xonly]) && [onchan $black(chanserv) $chan]} {
if {$regexp != "REGEX"} {
	putserv "PRIVMSG $black(chanserv) :unban $chan $bhost"
	}
} else {
if {$regexp != "REGEX"} {
	putserv "MODE $chan -b $bhost"
	}
}
	set unbaned_host $bhost
	blacktools:delban $bhost $chan "0" "0"
if {$read_tr == "2"} {
	troll:del $bhost $chan
			}
			continue
		}
	}
foreach b [banlist $chan] {
	set bhost [lindex $b 0]
	set btime [lindex $b 2]
if {[string match -nocase $mask $bhost] || [string match -nocase $bhost $mask]} {
	set total_b [expr $total_b + 1]
if {$btime == "0" && [matchattr $hand -|O $chan]} {
	continue
}
if {[isbansticky $bhost] && [matchattr $hand -|OA $chan]} {
	continue
}
	set rem_b [expr $rem_b + 1]
if {([setting:get $chan xtools] || [setting:get $chan xonly]) && [onchan $black(chanserv) $chan]} {
	putserv "PRIVMSG $black(chanserv) :unban $chan $bhost"
} else {
	putserv "MODE $chan -b $bhost"
}
	set unbaned_host $bhost
	killchanban $chan $bhost
	}
}

if {$total_b == "0"} {
if {$id == "id"} {
	blacktools:tell $nick $host $hand $chan $chan1 ub.8 $show_mask
	return
}
	set return [checkischanban_ub "" $show_mask $chan $whois]
	set return_dns [checkischanban_ub "" $fulldns $chan $whois]

if {$nounban == "1"} {
	set return 0
	set return_dns 0
}
if {$return == "1"} {
	set bans [returnchanbans_ub $show_mask $chan $whois]
foreach b $bans {
if {[setting:get $chan xonly] && [onchan $black(chanserv) $chan]} {
	putserv "PRIVMSG $black(chanserv) :unban $chan $b"
} else {
	pushmode $chan -b $b
	}
}
	blacktools:tell $nick $host $hand $chan $chan1 ub.2 "[llength $bans] [llength $bans] $show_mask"
	return
} elseif {$return_dns == "1"} {
	set bans [returnchanbans_ub $fulldns $chan $whois]
foreach b $bans {
if {([setting:get $chan xtools] || [setting:get $chan xonly]) && [onchan $black(chanserv) $chan]} {
	putserv "PRIVMSG $black(chanserv) :unban $chan $b"
} else {
	pushmode $chan -b $b
	}
}
	blacktools:tell $nick $host $hand $chan $chan1 ub.2 "[llength $bans] [llength $bans] $fulldns"
	return
} else {
	blacktools:tell $nick $host $hand $chan $chan1 ub.1 $show_mask
}
if {[ischanban $mask $chan]} {
if {([setting:get $chan xtools] || [setting:get $chan xonly]) && [onchan $black(chanserv) $chan]} {
	putserv "PRIVMSG $black(chanserv) :unban $chan $mask"
} else {
	putserv "MODE $chan -b $mask"
}
	blacktools:tell $nick $host $hand $chan $chan1 ub.6 none
	return
}
	blacktools:tell $nick $host $hand $chan $chan1 ub.1 $show_mask
	} else {
	set return [checkischanban_ub "" $show_mask $chan $whois]
	set return_dns [checkischanban_ub "" $fulldns $chan $whois]
if {$nounban == "1"} {
	set return 0
	set return_dns 0
}
if {$return == "1"} {
	set bans [returnchanbans_ub $show_mask $chan $whois]
foreach b $bans {
if {([setting:get $chan xtools] || [setting:get $chan xonly]) && [onchan $black(chanserv) $chan]} {
	putserv "PRIVMSG $black(chanserv) :unban $chan $b"
} else {
	pushmode $chan -b $b
		}
	}
} elseif {$return_dns == "1"} {
	set bans [returnchanbans_ub $fulldns $chan $whois]
foreach b $bans {
if {([setting:get $chan xtools] || [setting:get $chan xonly]) && [onchan $black(chanserv) $chan]} {
	putserv "PRIVMSG $black(chanserv) :unban $chan $b"
} else {
	pushmode $chan -b $b
			}
		}
	}
if {$id == "id"} {
	blacktools:tell $nick $host $hand $chan $chan1 ub.9 "$rem_b $total_b $show_mask"
} else {
if {$nounban == "0"} {
	blacktools:tell $nick $host $hand $chan $chan1 ub.2 "$rem_b $total_b $show_mask"
	blacktools:ub:getlast
				}
			}
		}
if {$total_b != "0" && $rem_b != "0"} {
	set getlang [string tolower [setting:get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
	set backchan [join [setting:get $chan backchan]]
if {$backchan != ""} {
	set replace(%nick%) $hand
	set replace(%msg.1%) $rem_b
	set replace(%msg.2%) $total_b
	set replace(%chan%) $chan
if {[regexp {^[0-9]} $mask]} {
	set replace(%msg.3%) $unbaned_host
} else {
	set replace(%msg.3%) $mask
}
	set text [black:color:set "" $black(say.$getlang.reportchan.3)]
	set reply [join $text]
	set reply [string map [array get replace] $reply]
	puthelp "PRIVMSG $backchan :$reply"
			}
		}
	} else {
foreach b [blacktools:banlist:gl] {
	set bhost [lindex [split $b] 3]
	set num [lindex [split $b] 1]
	set btime [lindex [split $b] 4]
if {[string match -nocase $mask $bhost] || [string match -nocase $fulldns $bhost] || [matchaddr $fulldns $bhost] || [matchaddr $mask $bhost] || ([matchaddr $bhost $fulldns] && $whois == "1") || ([matchaddr $bhost $mask] && $whois == "1") || [string equal -nocase $num $mask]} {
	set total_b [expr $total_b + 1]
	set rem_b [expr $rem_b + 1]
	set match_time [lindex [split $b] 5]
	blacktools:delban $bhost $chan "1" "0"
if {$gl == "1"} {
	blacktools:ub:global $bhost [channels] 0
}
	continue
		}
	}
foreach b [banlist] {
	set bhost [lindex $b 0]
	set btime [lindex $b 2]
if {[string match -nocase $mask $bhost] || [string match -nocase $bhost $mask]} {
	set total_b [expr $total_b + 1]
if {([setting:get $chan xtools] || [setting:get $chan xonly]) && [onchan $black(chanserv) $chan]} {
	putserv "PRIVMSG $black(chanserv) :unban $chan $bhost"
} else {
	putserv "MODE $chan -b $bhost"
}
	killban $bhost
		}
	}
if {$total_b == "0"} {
if {$id == "id"} {
	blacktools:tell $nick $host $hand $chan $chan1 ub.11 $show_mask
} else {
	blacktools:tell $nick $host $hand $chan $chan1 ub.3 $show_mask
}
	} else {
if {$id == "id"} {
	blacktools:tell $nick $host $hand $chan $chan1 ub.10 "$total_b $show_mask"
} else {
	blacktools:tell $nick $host $hand $chan $chan1 ub.4 "$total_b $show_mask"
	blacktools:ub:getlast
			}
		}
	}
}

proc blacktools:ub:getlast {} {
	global black
	set lastban [blacktools:getlastban]
if {$lastban == "-1"} {
	foreach tmr [utimers] {
if {[string match "*blacktools:autounban*" [join [lindex $tmr 1]]]} {
	killutimer [lindex $tmr 2]
	}
}
if {[info exists black(lastban)]} {
	unset black(lastban)
}
	return
}
if {[info exists black(lastban)]} {
if {$lastban == $black(lastban)} {
	return
	}
}
	set black(lastban) $lastban
foreach tmr [utimers] {
if {[string match "*blacktools:autounban*" [join [lindex $tmr 1]]]} {
	killutimer [lindex $tmr 2]
	}
}
	utimer $black(lastban) [list blacktools:autounban]	
}

proc blacktools:ub:global {bhost channels num} {
	global black
	set chan [lindex $channels $num]
	set incnum [expr $num + 1]
if {([setting:get $chan xtools] || [setting:get $chan xonly]) && [onchan $black(chanserv) $chan]} {
	putserv "PRIVMSG $black(chanserv) :unban $chan $bhost"
} else {
	putserv "MODE $chan -b $bhost"
}
	if {[lindex $channels $incnum] != ""} {
	blacktools:ub:global $bhost $channels $incnum
	}
}

################################ sb ###################################

proc sb:act {bhost what nick hand host vhost chan chan1 type cmd entry} {
	global black
	set regexp [lindex $cmd 1]
if {$bhost == "-"} {
	blacktools:tell $nick $what $hand $chan $chan1 gl.hostnotexist "none"
	return
}
if {($bhost != "") && ($entry == "")} {
	putserv "USERHOST :$bhost"
	bind RAW - 302 sb:get:host
	set ::suser $bhost
	set ::snick $nick
	set ::shand $hand
	set ::shost $host
	set ::schan $chan
	set ::schan1 $chan1
	set ::stype $type
	set ::scmd $cmd
	set ::swhat $what
	return
}
if {[matchattr $hand mn]} {
	sb:search $nick $what $hand $chan $chan1 $bhost $vhost "1" $entry $type $regexp
	return
}
	sb:search $nick $what $hand $chan $chan1 $bhost $vhost "0" $entry $type $regexp
}

proc sb:process {bhost what nick hand host chan chan1 type cmd entry} {
global botnick black tcldir
	set cmd_status [btcmd:status $chan $hand "sb" 0]
	set bhost [strip:all $bhost]
if {$cmd_status == "1"} {
	return
}
	set vhost [lindex [split $bhost @] 1]
	blacktools:dns:sb $bhost $what $nick $hand $host $vhost $chan $chan1 $type $cmd $entry
}

proc sb:search {nick host hand chan chan1 bhost vhost gl entry type1 regexp} {
	global black
	set show_bhost $bhost
	set gl_bans 0
	set cidr 0
	set local_bans 0
	set rest_host [lindex [split $bhost @] 0]
	set fulldns "$rest_host@$vhost"
if {$vhost == ""} { set fulldns $bhost }
	set getlang [string tolower [getuser $hand XTRA OUTPUT_LANG]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
if {[matchattr $hand q]} { blacktools:tell $nick $host $hand $chan $chan1 gl.glsuspend none
	return
}
if {[matchattr $hand -|q $chan]} { blacktools:tell $nick $host $hand $chan $chan1 gl.suspend none
	return
}
if {$bhost == ""} {
switch $type1 {
	0 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr "sb"
	}
	1 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_nick "sb"
	}
	2 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_priv "sb"
		}
	}
	return 0
}
foreach b $black(bans) {
	set cidr 0
	set mask [lindex [split $b] 3]
	set id [lindex [split $b] 1]
	set btype [lindex [split $b] 0]
	set real_mask [string map [list \[ {\[} \] {\]} \\ {\\}] $mask]
	set read_chan [lindex [split $b] 2]
if {[string equal -nocase $read_chan "GLOBAL"] && $gl == 1} {
if {$regexp != "REGEX"} {
if {[regexp {[/]} $real_mask]} {
	set read_ip [lindex [split $real_mask @] 1]
	set theip [lindex [split $bhost @] 1]
	set theip_dns [lindex [split $fulldns @] 1]
	set cidr_ip [ipcidr $read_ip $theip]
	set cidr_ip_dns [ipcidr $read_ip $theip_dns] 
if {$cidr_ip == "1" || $cidr_ip_dns == "1"} {
	set read_rest_ip [lindex [split $bhost @] 0]
	set read_theip [lindex [split $real_mask @] 0]
if {[string match -nocase $read_rest_ip $read_theip] || [string match -nocase $read_theip $read_rest_ip]} {
	set cidr 1
			}
		}
	}
}
if {((([string match -nocase $fulldns $real_mask] || [string match -nocase $real_mask $fulldns]) || ([string match -nocase $bhost $real_mask] || [string match -nocase $real_mask $bhost]) || $bhost == $id || $cidr == "1") && $regexp != "REGEX") || ($regexp == "REGEX" && [string equal -nocase $bhost $mask]) || ($btype == "REGEX" && ([regexp "$mask" $bhost] || [regexp "$mask" $fulldns]))} {
	set gl_bans [expr $gl_bans + 1]
	set mask [lindex [split $b] 3]
	set id [lindex [split $b] 1]
	set expire [lindex [split $b] 5]
	set created [lindex [split $b] 6]
	set created [clock format $created -format %D-%H:%M:%S]
	set breason [lrange [split $b] 9 end]
	set comment [join [blacktools:get_comment $breason]]
	set breason [blacktools:rem_comment $breason]
	set breason [join [encoding convertfrom utf-8 $breason]]
	set bywho [lindex [split $b] 4]
if {$expire != "0"} {
	set expire [return_time_2 $getlang [expr $expire - [unixtime]]]
	blacktools:tell_v2 $nick $host $hand $chan $chan1 sb.3 [list $btype $id $mask $bywho $created $expire $breason]
if {$comment != "-1"} {
	blacktools:tell $nick $host $hand $chan $chan1 sb.12 $comment
	}
} else { 
	set expire $black(say.$getlang.banlist.13)
	blacktools:tell_v2 $nick $host $hand $chan $chan1 sb.10 [list $btype $id $mask $bywho $created $expire $breason]
if {$comment != "-1"} {
	blacktools:tell $nick $host $hand $chan $chan1 sb.12 $comment
				}
			}
		}
} elseif {[string equal -nocase $read_chan $chan]} {
if {$regexp != "REGEX"} {
if {[regexp {[/]} $real_mask]} {
	set read_ip [lindex [split $real_mask @] 1]
	set theip [lindex [split $bhost @] 1]
	set theip_dns [lindex [split $fulldns @] 1]
	set cidr_ip [ipcidr $read_ip $theip]
	set cidr_ip_dns [ipcidr $read_ip $theip_dns]
if {$cidr_ip == "1" || $cidr_ip_dns == "1"} {
	set read_rest_ip [lindex [split $bhost @] 0]
	set read_theip [lindex [split $real_mask @] 0]
if {[string match -nocase $read_rest_ip $read_theip] || [string match -nocase $read_theip $read_rest_ip]} {
	set cidr 1
			}
		}
	}
}
if {((([string match -nocase $fulldns $real_mask] || [string match -nocase $real_mask $fulldns]) || ([string match -nocase $bhost $real_mask] || [string match -nocase $real_mask $bhost]) || $bhost == $id || $cidr == "1") && $regexp != "REGEX") || ($regexp == "REGEX" && [string equal -nocase $bhost $mask]) || ($btype == "REGEX" && ([regexp "$mask" $bhost] || [regexp "$mask" $fulldns]))} {
	set local_bans [expr $local_bans + 1]
	set expire [lindex [split $b] 5]
	set created [lindex [split $b] 6]
	set sticky [lindex [split $b] 7]
	set created [clock format $created -format %D-%H:%M:%S]
	set breason [lrange [split $b] 9 end]
	set comment [join [blacktools:get_comment $breason]]
	set breason [blacktools:rem_comment $breason]
	set breason [join [encoding convertfrom utf-8 $breason]]
	set bywho [lindex [split $b] 4]
	set split_bywho [split $bywho ":"]
	set handle [lindex $split_bywho 0]
	set type [lindex $split_bywho 1]
if {$type != "" && $type != "bot" && $btype != "GAG"} {
	set bywho "$handle\([encoding convertfrom utf-8 $type]\)"
} elseif {$sticky == "1"} { 
	set bywho "$handle\(STICKY\)"
} else {
	set bywho $handle
}
if {$expire != "0"} {
	set expire [return_time_2 $getlang [expr $expire - [unixtime]]]
	blacktools:tell_v2 $nick $host $hand $chan $chan1 sb.4 [list $btype $id $mask $bywho $created $expire $breason]
if {$comment != "-1"} {
	blacktools:tell $nick $host $hand $chan $chan1 sb.12 $comment
	}
} else { 
	set expire $black(say.$getlang.banlist.13)
	blacktools:tell_v2 $nick $host $hand $chan $chan1 sb.9 [list $btype $id $mask $bywho $created $expire $breason]
if {$comment != "-1"} {
	blacktools:tell $nick $host $hand $chan $chan1 sb.12 $comment
				}
			}
		}
	}
}
if {[expr $local_bans + $gl_bans] > 0} {
	return
} else {
	set gl_bans 0
	set local_bans 0
}
foreach b [banlist $chan] {
	set mask [lindex $b 0]
if {[string match -nocase $mask $bhost] || [string match -nocase $bhost $mask]} {
	set local_bans [expr $local_bans + 1]
	}
}
if {$gl == "1"} {
	foreach b [banlist] {
	set mask [lindex $b 0]
if {[string match -nocase $mask $bhost] || [string match -nocase $bhost $mask]} {
	set gl_bans [expr $gl_bans + 1]
	}
}
if {[expr $local_bans + $gl_bans] == "0"} {
if {$entry == "2"} {
	blacktools:tell $nick $host $hand $chan $chan1 sb.11 $show_bhost
} else {
	blacktools:tell $nick $host $hand $chan $chan1 sb.2 $show_bhost
}
	return
}
if {[expr $local_bans + $gl_bans] > 10} {
	blacktools:tell $nick $host $hand $chan $chan1 sb.5 "none"
	return
	}
} else {

if {$local_bans == "0"} {
if {$entry == "2"} {
	blacktools:tell $nick $host $hand $chan $chan1 sb.11 $show_bhost
} else {
	blacktools:tell $nick $host $hand $chan $chan1 sb.2 $show_bhost
}
	return
}
if {$local_bans > 10} {
	blacktools:tell $nick $host $hand $chan $chan1 sb.5 "none"
	return
	}
}
if {$gl_bans > "0"} {
foreach b [banlist] {
	set mask [lindex $b 0]
if {[string match -nocase $mask $bhost] || [string match -nocase $bhost $mask]} {
	set mask [lindex $b 0]
	set expire [lindex $b 2]
	set created [lindex $b 3]
	set breason [split [lindex $b 1]]
	set bywho [split [lindex $b 5]]
	set created [clock format $created -format %D-%H:%M:%S]
if {$expire != "0"} {
	set expire [return_time_2 $getlang [expr $expire - [unixtime]]]
	blacktools:tell $nick $host $hand $chan $chan1 sb.3 "- $mask $bywho $created $expire $breason"
} else { 
	set expire "NEVER" 
	blacktools:tell $nick $host $hand $chan $chan1 sb.10 "- $mask $bywho $created $expire $breason"
				}
			}
		}
	}

if {$local_bans > "0"} {
foreach b [banlist $chan] {
	set mask [lindex $b 0]
if {[string match -nocase $mask $bhost] || [string match -nocase $bhost $mask]} {
	set mask [lindex $b 0]
	set expire [lindex $b 2]
	set created [lindex $b 3]
	set breason [split [lindex $b 1]]
	set bywho [split [lindex $b 5]]
	set created [clock format $created -format %D-%H:%M:%S]
if {$expire != "0"} {
	set expire [return_time_2 $getlang [expr $expire - [unixtime]]]
	blacktools:tell $nick $host $hand $chan $chan1 sb.4 "- $mask $bywho $created $expire $breason"
} else { 
	set expire "NEVER" 
	blacktools:tell $nick $host $hand $chan $chan1 sb.9 "- $mask $bywho $created $expire $breason"
				}
			}
		}
	}	
}

################################### banlist ###################################

proc banlist:process {nick host hand chan chan1 user type cmd next} {
global botnick black
	set cmd_status [btcmd:status $chan $hand "banlist" 0]
if {$cmd_status == "1"} { 
	return 
}
	set i 0
	set getlang [string tolower [getuser $hand XTRA OUTPUT_LANG]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }

if {[matchattr $hand q]} { blacktools:tell $nick $host $hand $chan $chan1 gl.glsuspend none
	return
}
if {[matchattr $hand -|q $chan]} { blacktools:tell $nick $host $hand $chan $chan1 gl.suspend none
	return
}

if {$user == ""} {
switch $type {
	0 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr $cmd
	}
	1 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_nick $cmd
	}
	2 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_priv $cmd
		}
	}
	return 0
}

if {[matchattr $hand nm] && [string equal -nocase "global" $user]} {
	set gl "1"
	banlist:getbans $nick $host $hand $chan $chan1 $user "" $type $next $gl [blacktools:banlist:gl] ""
	return
}

if {[string match -nocase "all" $user]} {
	set gl ""
	set user ""
	banlist:getbans $nick $host $hand $chan $chan1 $user "" $type $next $gl [blacktools:banlist $chan] ""
	return
}

if {[string match -nocase "regex" $user]} {
	set gl ""
	set user ""
	banlist:getbans $nick $host $hand $chan $chan1 $user "" $type $next $gl [blacktools:banlist:regex $chan] ""
	return
}

if {[string match -nocase "gag" $user]} {
	set gl ""
	set user ""
	banlist:getbans $nick $host $hand $chan $chan1 $user "" $type $next $gl [blacktools:gaglist $chan] ""
	return
}

if {[string match -nocase "other" $user]} {
	set gl ""
	set user ""
	banlist:getbans $nick $host $hand $chan $chan1 $user "" $type $next $gl [banlist $chan] "2"
	return
}

if {[onchan $user $chan] && ![validuser $user]} {
	set handle $user
	set user [nick2hand $user]
} else {
	set handle ""
}

if {![validuser $user] && (![string equal -nocase "all" $user])} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomem none
	return
}

if {![matchattr $user nmo|OASMN $chan] && (![string equal -nocase "all" $user])} { blacktools:tell $nick $host $hand $chan $chan1 gl.noaccess none 
	return
}

	set gl ""
	set banlist ""
foreach b [blacktools:banlist $chan] {
	set bywho [lindex [split $b] 4]
	set split_bywho [split $bywho ":"]
	set handz [join [lindex [split $split_bywho] 0]]
	set type [lindex [split $split_bywho] 1]
if {[string equal -nocase $handz $user]} {
	set btype [lindex [split $b] 0]
	set id [lindex [split $b] 1]
	set mask [lindex [split $b] 3]
	set expire [lindex [split $b] 5]
	set created [lindex [split $b] 6]
	set sticky [lindex [split $b] 7]
	set breason [lrange [split $b] 9 end]
	set breason [blacktools:rem_comment $breason]
if {$type != ""} {
	lappend banlist "$btype $id $mask $expire $created $bywho $sticky [join $breason]"
			} else {
	lappend banlist "$btype $id $mask $expire $created $bywho $sticky [join $breason]"
			}
		}
	}
	banlist:getbans $nick $host $hand $chan $chan1 $user $handle $type $next $gl $banlist "1"
}

proc banlist:remain {nick host hand count chan chan1 type gl user userb prv} {
	global black lastbind botnick
if {$count == "0"} { return }
	set getlang [string tolower [getuser $hand XTRA OUTPUT_LANG]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
	set split_lastbind [split $lastbind ""]
	set charbind [lindex $split_lastbind 0]
if {[lsearch -exact $black(cmdchar) $charbind] < 0} {
	set charbind ""
}
	set firstchar [lindex $black(cmdchar) 0]
if {[string equal $lastbind "*"]} { set charbind "prv" }
if {[string equal -nocase "**" $lastbind]} { set charbind "$botnick " }
if {[string equal -nocase "***" $lastbind]} { set charbind "$host" }
if {$charbind == ""} {
	set charbind $firstchar
if {[validuser $hand]} {
	set getchar [getuser $hand XTRA MYCHAR]
if {$getchar != ""} {
	set charbind $getchar
		}
	}
}
if {$charbind == "prv"} { set charbind "" }
	set replace(%char%) $charbind
	set replace(%counter%) $count
	set replace(%user%) $user
	set replace(%chan%) $chan

if {$gl == "1"} {
	set msg [black:color:set $hand $black(say.$getlang.banlist.3)]
} 
if {$userb == "1"} {
	set msg [black:color:set $hand $black(say.$getlang.banlist.8)]	
} 
if {$user == ""} {
	set msg [black:color:set $hand $black(say.$getlang.banlist.10)]
}
if {$userb == "2"} {
	set msg [black:color:set $hand $black(say.$getlang.banlist.15)]
}
if {$userb == "3"} {
if {$gl == "1"} {
	set msg [black:color:set $hand $black(say.$getlang.exempt.3)]
} else {
	set msg [black:color:set $hand $black(say.$getlang.exempt.10)]
	}
}

if {$prv == "prv"} {
	set msg [black:color:set $hand $black(say.$getlang.banlist.14)]
if {$userb == "2"} {
	set msg [black:color:set $hand $black(say.$getlang.banlist.15)]
}
if {$gl == "1"} {
	set msg [black:color:set $hand $black(say.$getlang.banlist.3)]
}
if {$userb == "3"} {
if {$gl == "1"} {
	set msg [black:color:set $hand $black(say.$getlang.exempt.3)]
} else {
	set msg [black:color:set $hand $black(say.$getlang.exempt.10)]
	}
}
	puthelp "PRIVMSG $nick :[string map [array get replace] $msg]"
	return
}
	switch $type {
	0 {
	puthelp "NOTICE $nick :[string map [array get replace] $msg]"
}
	1 {
	puthelp "PRIVMSG $chan1 :[string map [array get replace] $msg]"	
}
	2 {
	puthelp "PRIVMSG $nick :[string map [array get replace] $msg]"
	}
}

}

proc banlist:getbans {nick host hand chan chan1 user handle type next gl banlist userb} {
	global black
	set show_user $user
	set show_handle $handle
	set getlang [string tolower [getuser $hand XTRA OUTPUT_LANG]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
	set getmethod [getuser $hand XTRA OUTPUT_TYPE]
if {$getmethod == ""} { set getmethod "0" }
	if {[string equal -nocase $next "-next"]} {
if {[info exists black(morebans:$chan:$hand)]} {
if {$black(morebans:$chan:$hand) >= $black(modul:nr:entries)} {
for {set i $black(showbans:$chan:$hand)} { $i < [expr $black(showbans:$chan:$hand) + $black(modul:nr:entries)] } { incr i } {
	set current_ban [lindex $banlist $i]
	show:bans $nick $host $hand $chan $chan1 $gl $current_ban $userb
		}
	set black(morebans:$chan:$hand) [expr $black(morebans:$chan:$hand) - $black(modul:nr:entries)]
	banlist:remain $nick $host $hand $black(morebans:$chan:$hand) $chan $chan1 $getmethod $gl $user $userb $host
	set black(showbans:$chan:$hand) [expr $black(showbans:$chan:$hand) + $black(modul:nr:entries)]
	} else {
if {$black(morebans:$chan:$hand) < 1} {
	return
}
for {set i $black(showbans:$chan:$hand)} { $i <= [expr $black(showbans:$chan:$hand) +  $black(morebans:$chan:$hand)]} { incr i } {
	set current_ban [lindex $banlist $i]
	show:bans $nick $host $hand $chan $chan1 $gl $current_ban $userb
		}
	set black(morebans:$chan:$hand) [expr $black(morebans:$chan:$hand) - $black(showbans:$chan:$hand)]
	}
	foreach tmr [utimers] {
if {[string match -nocase "*banlist:unset:more $chan $hand*" [join [lindex $tmr 1]]]} {
	killutimer [lindex $tmr 2]
		}
	}
	utimer 30 [list banlist:unset:more $chan $hand]
if {$black(morebans:$chan:$hand) < 1} {
	blacktools:tell $nick $host $hand $chan $chan1 banlist.4 none
	}
}	
	return
}
	set black(cbanlist:$chan:$hand) [llength $banlist]
	set black(showbans:$chan:$hand) 0
if {$black(cbanlist:$chan:$hand) > $black(modul:nr:entries)} {
if {$userb == "3"} {
if {$gl == "1"} {
	blacktools:tell $nick $host $hand $chan $chan1 exempt.2 "$black(cbanlist:$chan:$hand)"
} else {
	blacktools:tell $nick $host $hand $chan $chan1 exempt.6 "$black(cbanlist:$chan:$hand)"
	}
} else {
if {$gl == "1"} {
	blacktools:tell $nick $host $hand $chan $chan1 banlist.2 "$black(cbanlist:$chan:$hand)"
}
if {$user == ""} {
	blacktools:tell $nick $host $hand $chan $chan1 banlist.6 "$black(cbanlist:$chan:$hand)"
}
if {$userb == "1" && $handle != ""} {
	blacktools:tell $nick $host $hand $chan $chan1 banlist.7 "$black(cbanlist:$chan:$hand) $show_user\($show_handle\)"
}
if {$userb == "1" && $handle == ""} {
	blacktools:tell $nick $host $hand $chan $chan1 banlist.7 "$black(cbanlist:$chan:$hand) $show_user"
	}
}

	set black(morebans:$chan:$hand) [expr $black(cbanlist:$chan:$hand) - $black(modul:nr:entries)]
	for {set i 0} { $i < $black(modul:nr:entries) } { incr i } {
	set current_ban [lindex $banlist $i]
	show:bans $nick $host $hand $chan $chan1 $gl $current_ban $userb
	}
	set black(showbans:$chan:$hand) [expr $black(showbans:$chan:$hand) + $black(modul:nr:entries)]
if {$black(morebans:$chan:$hand) > 0} {
	banlist:remain $nick $host $hand $black(morebans:$chan:$hand) $chan $chan1 $getmethod $gl $user $userb $host
}
	foreach tmr [utimers] {
if {[string match -nocase "*banlist:unset:more $chan $hand*" [join [lindex $tmr 1]]]} {
	killutimer [lindex $tmr 2]
		}
	}
	utimer 60 [list banlist:unset:more $chan $hand]
} else {
if {$userb == "3"} {
if {$gl == "1"} {
	blacktools:tell $nick $host $hand $chan $chan1 exempt.2 "$black(cbanlist:$chan:$hand)"
} else {
	blacktools:tell $nick $host $hand $chan $chan1 exempt.6 "$black(cbanlist:$chan:$hand)"
	}
} else {
if {$gl == "1"} {
	blacktools:tell $nick $host $hand $chan $chan1 banlist.2 "$black(cbanlist:$chan:$hand)"
}
if {$user == ""} {
	blacktools:tell $nick $host $hand $chan $chan1 banlist.6 "$black(cbanlist:$chan:$hand)"
}
if {$userb == "1" && $handle != ""} {
	blacktools:tell $nick $host $hand $chan $chan1 banlist.7 "$black(cbanlist:$chan:$hand) $show_user\($show_handle\)"
}
if {$userb == "1" && $handle == ""} {
	blacktools:tell $nick $host $hand $chan $chan1 banlist.7 "$black(cbanlist:$chan:$hand) $show_user"
	}
}
for {set i 0} { $i < $black(modul:nr:entries) } { incr i } {
	set current_ban [lindex $banlist $i]
	show:bans $nick $host $hand $chan $chan1 $gl $current_ban $userb
		}
if {$userb == "3"} {
	blacktools:tell $nick $host $hand $chan $chan1 exempt.4 none
	} else {
	blacktools:tell $nick $host $hand $chan $chan1 banlist.4 none
		}
	}
}

proc banlist:unset:more {chan hand} {
	global black
if {[info exists black(morebans:$chan:$hand)]} {
	unset black(morebans:$chan:$hand)
}
if {[info exists black(cbanlist:$chan:$hand)]} {
	unset black(cbanlist:$chan:$hand)
	}
if {[info exists black(showbans:$chan:$hand)]} {
	unset black(showbans:$chan:$hand)
	}
}

proc show:bans {nick host hand chan chan1 gl b userb} {
	global black
if {$b == ""} { return }
	set never_expire 0
	set btype ""
	set getlang [string tolower [getuser $hand XTRA OUTPUT_LANG]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
if {$userb == "1"} {
	set btype [lindex [split $b] 0]
	set id [lindex [split $b] 1]
	set mask [lindex [split $b] 2]
	set expire [lindex [split $b] 3]
	set created [lindex [split $b] 4]
	set bywho [lindex [split $b] 5]
	set sticky [lindex [split $b] 6]
	set breason [lrange [split $b] 7 end]
	set breason [blacktools:rem_comment $breason]
	set breason [join [encoding convertfrom utf-8 $breason]]
} elseif {$userb == "2"} {
	set id "-"
	set mask [lindex $b 0]
	set expire [lindex $b 2]
	set created [lindex $b 3]
	set breason [split [lindex $b 1]]
	set breason [join [encoding convertfrom utf-8 $breason]]
	set bywho [split [lindex $b 5]]
if {[isbansticky [lindex $b 0] $chan]} {
	set sticky 1
} else {
	set sticky 0
}

} elseif {$userb == "3"} {
	set id "-"
	set mask [lindex $b 0]
	set expire [lindex $b 2]
	set created [lindex $b 3]
	set breason [split [lindex $b 1]]
	set breason [join [encoding convertfrom utf-8 $breason]]
	set bywho [split [lindex $b 5]]
	set sticky 0
if {$breason == ""} { set breason "N/A" }
} else {
	set btype [lindex [split $b] 0]
	set id [lindex [split $b] 1]
	set mask [lindex [split $b] 3]
	set expire [lindex [split $b] 5]
	set bywho [lindex [split $b] 4]
	set created [lindex [split $b] 6]
	set sticky [lindex [split $b] 7]
	set breason [lrange [split $b] 9 end]
	set breason [blacktools:rem_comment $breason]
	set breason [join [encoding convertfrom utf-8 $breason]]
}
	set split_bywho [split $bywho ":"]
	set handle [lindex $split_bywho 0]
	set type [lindex $split_bywho 1]
if {$type != "" && $btype != "REGEX" && $btype != "GAG"} {
	set type "BAN([join [encoding convertfrom utf-8 $type]])"
	set bywho $handle
if {$sticky == 1} {
	set type "BAN(STICK)"
	set bywho $handle
} else {
	set bywho $handle
	set type "BAN"
	}
} elseif {$btype == "REGEX"} {
if {$type != ""} {
	set type "REGEX([join [encoding convertfrom utf-8 $type]])"
	set bywho "$handle"
	} else {
	set type "REGEX" 
	set bywho "$handle"	
	}
} elseif {$btype == "GAG"} {
	set type "GAG" 
	set bywho "$handle"	
} else {
	set bywho $handle
	set type "BAN"
}
if {$userb == "3"} {
	set type "EXEMPT"
}
if {$expire != "0"} {
	set expire [return_time_2 $getlang [expr $expire - [unixtime]]]
} else {
	set expire $black(say.$getlang.banlist.13)
	set never_expire 1
}
	set created [clock format $created -format %D-%H:%M:%S]

if {$never_expire == "0"} {
if {$userb == "1"} {
	blacktools:tell $nick $host $hand $chan $chan1 banlist.9 "$id $type $mask $created $expire $breason"
	return
}
if {$userb == "3"} {
	blacktools:tell $nick $host $hand $chan $chan1 exempt.5 "$id $type $mask $bywho $created $expire $breason"
	return
}
	blacktools:tell $nick $host $hand $chan $chan1 banlist.5 "$id $type $mask $bywho $created $expire $breason"
	} else {
if {$userb == "1"} {
	blacktools:tell $nick $host $hand $chan $chan1 banlist.12 "$id $type $mask $created $expire $breason"
	return
}
if {$userb == "3"} {
	blacktools:tell $nick $host $hand $chan $chan1 exempt.11 "$id $type $mask $bywho $created $expire $breason"
	return
}
	blacktools:tell $nick $host $hand $chan $chan1 banlist.11 "$id $type $mask $bywho $created $expire $breason"
	}        
}

################################ w ####################################

proc w:process {wnick nick hand host chan chan1 type} {
global botnick black
	set cmd_status [btcmd:status $chan $hand "w" 0]
if {$cmd_status == "1"} { 
	return 
}
	set handle [nick2hand $wnick]
	set show_wnick $wnick
	set getlang [string tolower [setting:get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }

if {[matchattr $hand q]} { blacktools:tell $nick $host $hand $chan $chan1 gl.glsuspend none
	return
}
if {[matchattr $hand -|q $chan]} { blacktools:tell $nick $host $hand $chan $chan1 gl.suspend none
	return
}

if {$wnick == ""} {
switch $type {
	0 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr "w"
	}
	1 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_nick "w"
	}
	2 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_priv "w"
		}
	}
	return 0
}
if {![validchan $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.novalidchan none
	return
}

if {![botisop $chan] && ![setting:get $chan xonly]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.noop none
	return
}

if {![onchan $wnick $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.usernotonchan $show_wnick
	return
}
if {![onchan $botnick $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.notonchan none
	return
}

if {[isbotnick $wnick]} {
	return
}
if {[matchattr $handle $black(exceptflags) $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.noban none
	return
}
	set getreason [setting:get $chan w-reason]
if {$getreason == ""} { 
	set getlang [string tolower [setting:get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
	set getreason $black(say.$getlang.w.5)
	set len [llength $getreason] 
    set random [expr int(rand()*$len)] 
    set getreason [lindex $getreason $random]
}

if {[setting:get $chan showhandle]} {
	set reason "($hand) $getreason"
	} else { set reason "$getreason"
}
	set getcount [setting:get $chan kickcount]
	set kcount [expr $getcount +1]
	setting:set $chan kickcount $kcount
	blacktools:banner3_stats "w" $chan $hand ""
if {[setting:get $chan showcount]} {
	set reason "$reason - $kcount -" 
} else {
	set reason "$reason" 
}
if {[setting:get $chan xtools] || [setting:get $chan xonly] && [onchan $black(chanserv) $chan]} {
	putserv "PRIVMSG $black(chanserv) :kick $chan $wnick $reason"
} else {
	putserv "KICK $chan $wnick :$reason"
}
	puthelp "PRIVMSG $wnick :[black:color:set $hand $black(say.$getlang.w.6)]"
}

################################### k #################################

proc k:process {knick nick hand host reason chan chan1 type} {
global botnick black
	set cmd_status [btcmd:status $chan $hand "k" 0]
if {$cmd_status == "1"} { 
	return 
}
	set handle [nick2hand $knick]
	set found_host ""
	set kick_host 0
	set found_access ""
if {[matchattr $hand q]} { blacktools:tell $nick $host $hand $chan $chan1 gl.glsuspend none
	return
}
if {[matchattr $hand -|q $chan]} { blacktools:tell $nick $host $hand $chan $chan1 gl.suspend none
	return
}
if {$knick == ""} {
switch $type {
	0 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr "k"
	}
	1 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_nick "k"
	}
	2 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_priv "k"
		}
	}
	return
}
if {![validchan $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.novalidchan none
	return
}
if {![botisop $chan] && ![setting:get $chan xonly]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.noop none
	return
}
if {![onchan $botnick $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.notonchan none
	return
}
if {[string match -nocase "*!*" $knick]} {
	set kick_host 1
	set finduser [finduser $knick]
foreach user [chanlist $chan] {
	set gethand [nick2hand $user]
	set gethost "$user![getchanhost $user $chan]"
if {[string match -nocase $knick $gethost]} {
if {[matchattr $gethand $black(exceptflags) $chan]} {
	lappend found_access $user
	continue
		}	
	lappend found_host $user
		}
	}
}

if {[matchattr $handle $black(exceptflags) $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.noban none
	return
}

if {$found_access != ""} {
	blacktools:tell $nick $host $hand $chan $chan1 k.2 $found_access
	return
}

if {![onchan $knick $chan] && $kick_host == "0"} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.usernotonchan $knick
	return
}

if {$kick_host == "1"} {
if {$found_host == ""} {
	blacktools:tell $nick $host $hand $chan $chan1 k.1 none
	return
	}
}

if {[isbotnick $knick]} {
	return
}

if {$reason == ""} {
if {[setting:get $chan k-reason] != ""} {
	set reason [join [setting:get $chan k-reason]]
	}
}
if {$reason == ""} {
	set getlang [string tolower [setting:get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
	set reason1 "$black(say.$getlang.k.5)"
	set len [llength $reason1] 
    set random [expr int(rand()*$len)] 
    set reason1 [lindex $reason1 $random]
 } else { set reason1 "$reason" }
if {[setting:get $chan showhandle]} {
	set reason "($hand) $reason1"
	} else { set reason "$reason1" 
}
	set getcount [setting:get $chan kickcount]
	set kcount [expr $getcount +1]
	setting:set $chan kickcount $kcount
	blacktools:banner3_stats "k" $chan $hand ""
if {[setting:get $chan showcount]} {
	set reason "$reason - $kcount -" 
} else {
	set reason "$reason" 
}
if {[setting:get $chan xonly] && [onchan $black(chanserv) $chan]} {
if {$found_host != ""} {
foreach f $found_host {
	putserv "PRIVMSG $black(chanserv) :kick $chan $f $reason"
	}
} else {
	putserv "PRIVMSG $black(chanserv) :kick $chan $knick $reason"
	}
} else {
if {$found_host != ""} {
	foreach f $found_host {
	putserv "KICK $chan $f :$reason"
	}
} else {
	putserv "KICK $chan $knick :$reason"
		}
	}
}

################################ exempt ###############################

proc exempt:process {nick host hand chan chan1 type ecmd ehost return_time reason gl next} {
	global black
if {![validchan $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.novalidchan none
	return
}
switch $ecmd {
	list {
	set user ""
if {[string equal -nocase $ehost "global"]} {
	banlist:getbans $nick $host $hand $chan $chan1 $user "" $type $next 1 [exemptlist] "3"
} else {
	banlist:getbans $nick $host $hand $chan $chan1 $user "" $type $next 0 [exemptlist $chan] "3"
		}
	}
	add {
	if {$ehost == ""} {
switch $type {
	0 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr "exempt"
	}
	1 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_nick "exempt"
	}
	2 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_priv "exempt"
		}
	}
	return
}
if {$gl == "0"} {
	newchanexempt $chan $ehost $hand $reason $return_time
	blacktools:tell $nick $host $hand $chan $chan1 exempt.7 $ehost
	} else {
	newexempt $ehost $hand $reason $return_time
	blacktools:tell $nick $host $hand $chan $chan1 exempt.8 $ehost
		}
	}
	del {
	if {$ehost == ""} {
switch $type {
	0 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr "exempt"
	}
	1 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_nick "exempt"
	}
	2 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_priv "exempt"
		}
	}
	return
}
if {$gl == "0"} {
	set rem [killchanexempt $chan $ehost]
if {$rem == "0"} {
	blacktools:tell $nick $host $hand $chan $chan1 exempt.15 $ehost
} else {
	blacktools:tell $nick $host $hand $chan $chan1 exempt.9 $ehost
	who:chan $chan
	}
} else {
	set rem [killexempt $ehost]
if {$rem == "0"} {
	blacktools:tell $nick $host $hand $chan $chan1 exempt.16 $ehost
} else {
	blacktools:tell $nick $host $hand $chan $chan1 exempt.12 $ehost
		}
	}			
}
	default {
switch $type {
	0 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr "exempt"
	}
	1 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_nick "exempt"
	}
	2 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_priv "exempt"
				}
			}	
		}
	}		
}

##############
#########################################################################
##   END                                                               ##
#########################################################################
