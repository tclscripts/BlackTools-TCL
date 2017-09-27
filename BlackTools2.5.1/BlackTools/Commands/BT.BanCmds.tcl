#########################################################################
##          BlackTools - The Ultimate Channel Control Script           ##
##                    One TCL. One smart Eggdrop                       ##
#########################################################################
############################   BANCMDS TCL   ############################
#########################################################################
##						                       ##
##     BlackTools  : http://blacktools.tclscripts.net	               ##
##     Bugs report : http://www.tclscripts.net/	                       ##
##     Online Help : irc://irc.undernet.org/tcl-help 	               ##
##                   #TCL-HELP / UnderNet                              ##
##                   You can ask in english or romanian                ##
##					                               ##
#########################################################################


################################ Commands ###################################

################################ ub ###################################

proc ub:link {mask} {
	global black
	set chanban 0
	set chanlink 0
foreach chan [link:get] {
	set chanlink [expr $chanlink + 1]
foreach b [blacktools:banlist $chan] {
	set bhost [lindex [split $b] 3]
	set real_bhost [string map [list \[ {\[} \] {\]} \? {\?} \\ {\\}] $bhost]
if {[string match -nocase $mask $real_bhost] || [string match -nocase $real_bhost $mask]} {
	set chanban [expr $chanban + 1]
if {[setting:get $chan xtools] || [setting:get $chan xonly] && [onchan $black(chanserv) $chan]} {
	putserv "PRIVMSG $black(chanserv) :unban $chan $bhost"
} else {
	pushmode $chan -b $bhost
}
	blacktools:delban $real_bhost $chan "0" "0"
			}
		}
	}
	return "$chanlink $chanban"
}

proc ub:process {user mask nick hand host chan chan1 type gl cmd whois link} {
	global black
	set nounban 0
	set split_cmd [split $cmd ":"]
	set id [lindex $split_cmd 1]
	set cmd [lindex $split_cmd 0]
	set cmd_status [btcmd:status $chan $hand "$cmd" 0]
if {$cmd_status == "1"} { 
	return 
}
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

if {![regexp {\*} $mask] && $whois != "1" && $id != "id"} {
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
	set ::ucmd $cmd
	set ::ulink $link
return
}

if {$link == "1"} {
	set return [ub:link $mask]
	set chanlink [lindex $return 0]
	set chanban [lindex $return 1]
	blacktools:tell $nick $host $hand $chan $chan1 ub.7 "$chanban $chanlink"
	return
} 

if {$gl != "1"} {
if {[onchan $user $chan]} {
	set mask "$user![getchanhost $user $chan]"
	set ident "[string tolower [lindex [split $mask "@"] 0]]"
if {[string match -nocase "*.mibbit.com*" $mask]} {
	set return_ip [return:mibbit:mask $ident]
if {$return_ip != "0"} {
	set mask "$user!$ident@$return_ip"
			}
		}
	}
}

if {$gl != "1"} {
if {(($mask == "*") || ($mask == "*!*@*")) && [matchattr $hand -|OA $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 ub.5 none
	return
}

foreach b [blacktools:banlist $chan] {
	set bhost [lindex [split $b] 3]
	set real_bhost [string map [list \[ {\[} \] {\]} \? {\?} \\ {\\}] $bhost]
	set btime [lindex [split $b] 5]
	set num [lindex [split $b] 1]
if {[string match -nocase $mask $real_bhost] || [string match -nocase $real_bhost $mask] || [string match -nocase $mask $num]} {
	set bywho [lindex [split $b] 4]
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

if {[setting:get $chan xtools] || [setting:get $chan xonly] && [onchan $black(chanserv) $chan]} {
	putserv "PRIVMSG $black(chanserv) :unban $chan $bhost"
} else {
	pushmode $chan -b $bhost
}
	blacktools:delban $real_bhost $chan "0" "0"
if {$read_tr == "2"} {
	troll:del $real_bhost $chan
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
if {[setting:get $chan xtools] || [setting:get $chan xonly] && [onchan $black(chanserv) $chan]} {
	putserv "PRIVMSG $black(chanserv) :unban $chan $bhost"
} else {
	putserv "MODE $chan -b $bhost"
}
	killchanban $chan $bhost
	}
}

if {$total_b == "0"} {
if {[ischanban $mask $chan]} {
	if {[setting:get $chan xtools] || [setting:get $chan xonly] && [onchan $black(chanserv) $chan]} {
	putserv "PRIVMSG $black(chanserv) :unban $chan $mask"
} else {
	putserv "MODE $chan -b $mask"
}
	blacktools:tell $nick $host $hand $chan $chan1 ub.6 none
	return
}
if {$id == "id"} {
	blacktools:tell $nick $host $hand $chan $chan1 ub.8 $show_mask
} else {
	blacktools:tell $nick $host $hand $chan $chan1 ub.1 $show_mask
}
	} else {
if {$id == "id"} {
	blacktools:tell $nick $host $hand $chan $chan1 ub.9 "$rem_b $total_b $show_mask"
} else {
if {$nounban == "0"} {
	blacktools:tell $nick $host $hand $chan $chan1 ub.2 "$rem_b $total_b $show_mask"
				}
			}
		}		
	} else {
foreach b [blacktools:banlist:gl] {
	set bhost [lindex [split $b] 3]
	set num [lindex [split $b] 1]
	set real_bhost [string map [list \[ {\[} \] {\]} \? {\?} \\ {\\}] $bhost]
	set btime [lindex [split $b] 4]
if {[string match -nocase $mask $real_bhost] || [string match -nocase $real_bhost $mask] || [string match -nocase $mask $num]} {
	set total_b [expr $total_b + 1]
	set rem_b [expr $rem_b + 1]
	blacktools:delban $real_bhost $chan "1" "0"
if {$gl == "1"} {
	blacktools:ub:global $real_bhost [channels] 0
}
	continue
		}
	}
	
foreach b [banlist] {
	set bhost [lindex $b 0]
	set btime [lindex $b 2]
if {[string match -nocase $mask $bhost] || [string match -nocase $bhost $mask]} {
	set total_b [expr $total_b + 1]
if {[setting:get $chan xtools] || [setting:get $chan xonly] && [onchan $black(chanserv) $chan]} {
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
			}
		}
	}
}

proc blacktools:ub:global {bhost channels num} {
	global black
	set chan [lindex $channels $num]
	set incnum [expr $num + 1]
if {[setting:get $chan xtools] || [setting:get $chan xonly] && [onchan $black(chanserv) $chan]} {
	putserv "PRIVMSG $black(chanserv) :unban $chan $bhost"
} else {
	putserv "MODE $chan -b $bhost"
}
	if {[lindex $channels $incnum] != ""} {
	blacktools:ub:global $bhost $channels $incnum
	}
}

################################ sb ###################################

proc sb:process {bhost what nick hand host chan chan1 type cmd entry} {
global botnick black tcldir
	set cmd_status [btcmd:status $chan $hand "sb" 0]
if {$cmd_status == "1"} { 
	return 
}
	set gl_bans 0
	set local_bans 0
	set total_bans 0
	set getlang [string tolower [getuser $hand XTRA OUTPUT_LANG]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
if {[matchattr $hand q]} { blacktools:tell $nick $host $hand $chan $chan1 gl.glsuspend none
	return
}
if {[matchattr $hand -|q $chan]} { blacktools:tell $nick $host $hand $chan $chan1 gl.suspend none
	return
}
if {$bhost == ""} {
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

if {$bhost == "-"} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.hostnotexist "none"
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
	return
}

if {[matchattr $hand mn]} {
	sb:search $nick $host $hand $chan $chan1 $bhost "1" $entry
	return
}
	sb:search $nick $host $hand $chan $chan1 $bhost "0" $entry
}

proc sb:search {nick host hand chan chan1 bhost gl entry} {
	global black
	set show_bhost $bhost
	set gl_bans 0
	set local_bans 0
	set getlang [string tolower [getuser $hand XTRA OUTPUT_LANG]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
foreach b [blacktools:banlist $chan] {
	set mask [lindex [split $b] 3]
	set id [lindex [split $b] 1]
	set real_mask [string map [list \[ {\[} \] {\]} \\ {\\}] $mask]
if {[string match -nocase $real_mask $bhost] || [string match -nocase $bhost $real_mask] || $bhost == $id} {
	set local_bans [expr $local_bans + 1]
	}
}
if {$gl == "1"} {
	foreach b [blacktools:banlist:gl] {
	set mask [lindex [split $b] 3]
	set id [lindex [split $b] 1]
	set real_mask [string map [list \[ {\[} \] {\]} \\ {\\}] $mask]
if {[string match -nocase $real_mask $bhost] || [string match -nocase $bhost $real_mask] || $bhost == $id} {
	set gl_bans [expr $gl_bans + 1]
		}
	}
}
	
if {$gl_bans > "0"} {
foreach b [blacktools:banlist:gl] {
	set mask [lindex [split $b] 3]
	set id [lindex [split $b] 1]
	set real_mask [string map [list \[ {\[} \] {\]} \\ {\\}] $mask]
if {[string match -nocase $real_mask $bhost] || [string match -nocase $bhost $real_mask] || $bhost == $id} {
	set mask [lindex [split $b] 3]
	set id [lindex [split $b] 1]
	set expire [lindex [split $b] 5]
	set created [lindex [split $b] 6]
	set created [clock format $created -format %D-%H:%M:%S]
	set breason [lrange [split $b] 9 end]
	set breason [join [encoding convertfrom utf-8 $breason]]
	set bywho [lindex [split $b] 4]
if {$expire != "0"} {
	set expire [return_time_2 $getlang [expr $expire - [unixtime]]]
	blacktools:tell $nick $host $hand $chan $chan1 sb.3 "$id $mask $bywho $created $expire $breason"
} else { 
	set expire $black(say.$getlang.banlist.13)
	blacktools:tell $nick $host $hand $chan $chan1 sb.10 "$id $mask $bywho $created $expire $breason"
			}
		}
	}
}
if {$local_bans > "0"} {
foreach b [blacktools:banlist $chan] {
	set mask [lindex [split $b] 3]
	set id [lindex [split $b] 1]
	set real_mask [string map [list \[ {\[} \] {\]} \\ {\\}] $mask]
if {[string match -nocase $real_mask $bhost] || [string match -nocase $bhost $real_mask] || $bhost == $id} {
	set mask [lindex [split $b] 3]
	set id [lindex [split $b] 1]
	set expire [lindex [split $b] 5]
	set created [lindex [split $b] 6]
	set sticky [lindex [split $b] 7]
	set created [clock format $created -format %D-%H:%M:%S]
	set breason [lrange [split $b] 9 end]
	set breason [join [encoding convertfrom utf-8 $breason]]
	set bywho [lindex [split $b] 4]
	set split_bywho [split $bywho ":"]
	set handle [lindex $split_bywho 0]
	set type [lindex $split_bywho 1]
if {$type != "" && $type != "bot"} {
	set bywho "$handle\([encoding convertfrom utf-8 $type]\)"
} elseif {$sticky == "1"} { 
	set bywho "$handle\(STICKY\)"
} else {
	set bywho $handle
}
if {$expire != "0"} {
	set expire [return_time_2 $getlang [expr $expire - [unixtime]]]
	blacktools:tell $nick $host $hand $chan $chan1 sb.4 "$id $mask $bywho $created $expire $breason"
} else { 
	set expire $black(say.$getlang.banlist.13)
	blacktools:tell $nick $host $hand $chan $chan1 sb.9 "$id $mask $bywho $created $expire $breason"
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
	set timestamp [clock format [clock seconds] -format {%Y%m%d%H%M%S}]
	set file_temp "temp.$timestamp"
if {![file exists $file_temp]} {
	set file [open $file_temp w]
	close $file
}
	set file [open $file_temp a]
foreach b [blacktools:banlist $chan] {
	set bywho [lindex [split $b] 4]
	set split_bywho [split $bywho ":"]
	set handz [join [lindex [split $split_bywho] 0]]
	set type [lindex [split $split_bywho] 1]
if {[string equal -nocase $handz $user]} {
	set id [lindex [split $b] 1]
	set mask [lindex [split $b] 3]
	set expire [lindex [split $b] 5]
	set created [lindex [split $b] 6]
	set sticky [lindex [split $b] 7]
	set breason [lrange [split $b] 9 end]
if {$type != ""} {
	puts $file "$id $mask $expire $created $bywho $sticky [join $breason]"
			} else {
	puts $file "$id $mask $expire $created $bywho $sticky [join $breason]"		
			}
		}
	}
	close $file

	set file [open $file_temp r]
	set w [read -nonewline $file]
	close $file
	set data [split $w "\n"]
	banlist:getbans $nick $host $hand $chan $chan1 $user $handle $type $next $gl $data "1"
	file delete $file_temp
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
	set msg [black:color:set $hand $black(say.$getlang.banlist.14)]
}
if {$userb == "2"} {
	set msg [black:color:set $hand $black(say.$getlang.banlist.15)]
} 
if {$prv == "prv"} {
	set msg [black:color:set $hand $black(say.$getlang.banlist.14)]
if {$userb == "2"} {
	set msg [black:color:set $hand $black(say.$getlang.banlist.15)]
}
if {$gl == "1"} {
	set msg [black:color:set $hand $black(say.$getlang.banlist.3)]
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
for {set i 0} { $i < $black(modul:nr:entries) } { incr i } {
	set current_ban [lindex $banlist $i]
	show:bans $nick $host $hand $chan $chan1 $gl $current_ban $userb
		}
	blacktools:tell $nick $host $hand $chan $chan1 banlist.4 none
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
	set getlang [string tolower [getuser $hand XTRA OUTPUT_LANG]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
if {$userb == "1"} {
	set id [lindex [split $b] 0]
	set mask [lindex [split $b] 1]
	set expire [lindex [split $b] 2]
	set created [lindex [split $b] 3]
	set bywho [lindex [split $b] 4]
	set sticky [lindex [split $b] 5]
	set breason [lrange [split $b] 6 end]
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
} else {
	set id [lindex [split $b] 1]
	set mask [lindex [split $b] 3]
	set expire [lindex [split $b] 5]
	set bywho [lindex [split $b] 4]
	set created [lindex [split $b] 6]
	set sticky [lindex [split $b] 7]
	set breason [lrange [split $b] 9 end]
	set breason [join [encoding convertfrom utf-8 $breason]]
}
	set split_bywho [split $bywho ":"]
	set handle [lindex $split_bywho 0]
	set type [lindex $split_bywho 1]
if {$type != ""} {
	set type "BAN([join [encoding convertfrom utf-8 $type]])"
	set bywho "$handle"
} elseif {$sticky == "1"} {
	set type "BAN(STICK)"
	set bywho "$handle"
} else {
	set bywho $handle
	set type "BAN"
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
	blacktools:tell $nick $host $hand $chan $chan1 banlist.5 "$id $type $mask $bywho $created $expire $breason"
	} else {
if {$userb == "1"} {
	blacktools:tell $nick $host $hand $chan $chan1 banlist.12 "$id $type $mask $created $expire $breason"
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
	set counts [getuser $hand XTRA KICKS($chan)]
if {$counts == ""} { set counts 0 }
	set counts [expr $counts + 1]
	setuser $hand XTRA KICKS($chan) $counts
	set counts [getuser $hand XTRA KICKS_TODAY($chan)]
if {$counts == ""} { set counts 0 }
	set counts [expr $counts + 1]
	setuser $hand XTRA KICKS_TODAY($chan) $counts
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
	set counts [getuser $hand XTRA KICKS($chan)]
if {$counts == ""} { set counts 0 }
	set counts [expr $counts + 1]
	setuser $hand XTRA KICKS($chan) $counts
	set counts [getuser $hand XTRA KICKS_TODAY($chan)]
if {$counts == ""} { set counts 0 }
	set counts [expr $counts + 1]
	setuser $hand XTRA KICKS_TODAY($chan) $counts
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

################################## BanSTATS ################################

proc topbans:reset {chan} {
	global black
if {![validchan $chan]} { return }
	foreach user [userlist] {
	set counts [getuser $user XTRA BANS($chan)]
	set counts_k [getuser $user XTRA KICKS($chan)]
if {$counts == ""} { 
	continue
 } else {
	setuser $user XTRA BANS($chan) 0
	setuser $user XTRA BANS_TODAY($chan) 0
	}
if {$counts_k == ""} {
	continue
			} else {
	setuser $user XTRA KICKS($chan) 0
	setuser $user XTRA KICKS_TODAY($chan) 0
		}
	}
		foreach user [userlist $chan] {
	set counts [getuser $user XTRA BANS($chan)]
	set counts_k [getuser $user XTRA KICKS($chan)]
if {$counts == ""} { 
	continue
 } else {
	setuser $user XTRA BANS($chan) 0
	setuser $user XTRA BANS_TODAY($chan) 0
	}
if {$counts_k == ""} {
	continue
			} else {
	setuser $user XTRA KICKS($chan) 0
	setuser $user XTRA KICKS_TODAY($chan) 0
		}
	}
}

proc banstats:process {nick host hand chan chan1 cmd type next} {
global botnick black
	set counter 0
	set cmd_status [btcmd:status $chan $hand "banstats" 0]
if {$cmd_status == "1"} { 
	return 
}
if {[matchattr $hand q]} { blacktools:tell $nick $host $hand $chan $chan1 gl.glsuspend none
	return
}
if {[matchattr $hand -|q $chan]} { blacktools:tell $nick $host $hand $chan $chan1 gl.suspend none
	return
}

if {$chan == ""} {
if {$type == "0"} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr "banstats"
}
if {$type == "1"} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_nick "banstats"
}
if {$type == "2"} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_priv "banstats"
	}
}

if {![validchan $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.novalidchan none
	return
}

if {$cmd == "total"} {
	set bans "BANS($chan)"
} else {
	set bans "BANS_TODAY($chan)"
}
	set timestamp [clock format [clock seconds] -format {%Y%m%d%H%M%S}]
	set temp "$black(tempdir)/topbans_temp.$timestamp"
if {[string equal -nocase $cmd "reset"]} {
	set reset [topbans:reset $chan]
	blacktools:tell $nick $host $hand $chan $chan1 topbans.8 none
	return
}
	array set topbanslist [list]

foreach u [userlist] {
	set totalbans [getuser $u XTRA $bans]
if {$totalbans != "" && $totalbans != "0"} {
	lappend topbanslist($totalbans) $u
	}
}
foreach u [userlist $chan] {
if {[matchattr $u $black(localflags) $chan]} {
	set totalbans [getuser $u XTRA $bans]
if {$totalbans != "" && $totalbans != "0"} {
	lappend topbanslist($totalbans) $u
		}
	}
}
	set tempwrite [open $temp w]
foreach u [lsort -integer -decreasing [array names topbanslist]] {
	set counter [expr $counter + 1]
	puts $tempwrite "[join $topbanslist($u) ","] $u $counter"
}
	close $tempwrite
	set file [open $temp "r"]
	set w [read -nonewline $file]
	close $file
	set data [split $w "\n"]
	file delete $temp
	
if {$data == ""} {
if {$cmd == "total"} {
	blacktools:tell $nick $host $hand $chan $chan1 topbans.10 none
} else {
	blacktools:tell $nick $host $hand $chan $chan1 topbans.14 none
}
	return
}
if {$cmd == "total"} {
	module:getinfo $nick $host $hand $chan $chan1 $type $data "topbans:total" "0" $next
} else {
	module:getinfo $nick $host $hand $chan $chan1 $type $data "topbans" "0" $next
	}
}

##############
#########################################################################
##   END                                                               ##
#########################################################################
