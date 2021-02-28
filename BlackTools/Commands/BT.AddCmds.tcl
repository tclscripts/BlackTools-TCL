#########################################################################
##          BlackTools - The Ultimate Channel Control Script           ##
##                    One TCL. One smart Eggdrop                       ##
#########################################################################
############################   ADDCMDS TCL   ############################
#########################################################################
##						                       ##
##   BlackTools  : http://blacktools.tclscripts.net	     	       ##
##   Bugs report : http://www.tclscripts.net/	                       ##
##   GitHub page : https://github.com/tclscripts/BlackToolS-TCL        ##
##   Online Help : irc://irc.undernet.org/tcl-help 	 	       ##
##                 #TCL-HELP / UnderNet                                ##
##                 You can ask in english or romanian                  ##
##					                               ##
#########################################################################


############################## Commands #################################

########################## add ##################################

proc add:ban {mask reason} {
	global black
	blacktools:global:ban [channels] 0 $mask "HandleBan" $reason 0 $reason "-1" "1"
}

proc add:process {user uhost handle level hand host chan chan1 nick type cmd reason addban} {
global black botnick
	set cmd_status [btcmd:status $chan $hand $cmd 0]
if {$cmd_status == "1"} { 
	return 
}
if {[matchattr $hand q]} { 
	blacktools:tell $nick $host $hand $chan $chan1 gl.glsuspend none
	return
}
if {[matchattr $hand -|q $chan]} { 
	blacktools:tell $nick $host $hand $chan $chan1 gl.suspend none
	return
}
if {[validuser $handle]} {
	set user $handle
}
if {$user == ""} {
	switch $type {
	0 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr "$cmd"
	}
	1 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_nick "$cmd"
	}
	2 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_priv "$cmd"
		}
	}
	return
}
	set show_user $user
	set time [unixtime]
	set flags "nmo|NMOAVH"

if {![validchan $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.novalidchan none
	return
}
	
if {$user != ""} {
	set user [strip:all $user]
	set replace(%user%) $show_user
if {$uhost == ""} {
	set uhost [string map [array get replace] $black(hostadd)]
}
if {[userlist] != ""} {
foreach usr [userlist] {
	set hst [getuser $usr hosts]
foreach hhost $hst {
if {[string match -nocase $hhost $uhost] && (![string equal -nocase $usr $user])} {
	blacktools:tell $nick $host $hand $chan $chan1 add.5 $usr
	set user $usr
	set show_user $usr
			}
		}
	}
}
if {[matchattr $user $black(banflag)]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.banblack none
	return
}
 
if {[matchattr $hand -|A $chan] && ($level == [string tolower [blacktools:getlevelname 3 $hand]])} {
	blacktools:tell $nick $host $hand $chan $chan1 add.6 [blacktools:getlevelname 3 $hand]
	return
}
if {[matchattr $hand -|A $chan] && ($level == [string tolower [blacktools:getlevelname 4 $hand]])} {
	blacktools:tell $nick $host $hand $chan $chan1 add.7 [blacktools:getlevelname 4 $hand]
	return
}
if {[matchattr $hand -|M $chan] && ($level == [string tolower [blacktools:getlevelname 3 $hand]])} {
	blacktools:tell $nick $host $hand $chan $chan1 add.8 [blacktools:getlevelname 3 $hand]
	return
}

if {[string equal -nocase $level [blacktools:getlevelname 3 $hand]]} { 
	set flags "-|olM"
if {[validuser $user]} {
	set check_global [check:global $user]
if {$check_global != "0"} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.isowner "$user $check_global"
	return
}
if {[matchattr $user m|- $chan] && [matchattr $hand -|M $chan]} { 
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return
}
if {[matchattr $user -|M $chan] && [matchattr $hand -|M $chan]} { 
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return
}
if {[matchattr $user n|- $chan] && [matchattr $hand n|- $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return
}
if {[matchattr $user m|- $chan] && [matchattr $hand m|- $chan] && (![matchattr $hand n|- $chan])} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return 
}
if {[matchattr $user n|- $chan] && [matchattr $hand m|- $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return
}
if {[matchattr $user o|- $chan] && [matchattr $hand -|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return
}
if {[matchattr $user n|- $chan] && [matchattr $hand o|- $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return
}
if {[matchattr $user m|- $chan] && [matchattr $hand o|- $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return
}
if {[matchattr $user o|- $chan] && [matchattr $hand o|- $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return
}
	chattr $user -|-qolSOHAMV $chan
	chattr $user $flags $chan
	setuser $user XTRA CHANMODIF($chan) $time:$hand
	blacktools:tell $nick $host $hand $chan $chan1 add.19 "$show_user [blacktools:getlevelname 3 $hand]"
} else {
	adduser $user $uhost
	set user [check:handle $user $nick $host $hand $chan $chan1]
	chattr $user $flags $chan
	setuser $user XTRA CHANMODIF($chan) $time:$hand
	blacktools:tell $nick $host $hand $chan $chan1 add.10 "$show_user $uhost"
	blacktools:tell $nick $host $hand $chan $chan1 add.19 "$show_user [blacktools:getlevelname 3 $hand]"
	}
} elseif {[string equal -nocase $level [blacktools:getlevelname 4 $hand]]} {
	set flags "-|olA"
 if {[validuser $user]} {
	set check_global [check:global $user]
if {$check_global != "0"} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.isowner "$user $check_global"
	return
}
	set get_status_access [check:access $nick $host $hand $chan $chan1 $user]
if {$get_status_access == "1"} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return
}
	chattr $user -|-qolSHOAMV $chan
	chattr $user $flags $chan
	setuser $user XTRA CHANMODIF($chan) $time:$hand
	blacktools:tell $nick $host $hand $chan $chan1 add.19 "$show_user [blacktools:getlevelname 4 $hand]"
} else {
	adduser $user $uhost
	set user [check:handle $user $nick $host $hand $chan $chan1]
	chattr $user $flags $chan 
	setuser $user XTRA CHANMODIF($chan) $time:$hand
	blacktools:tell $nick $host $hand $chan $chan1 add.10 "$show_user $uhost"
	blacktools:tell $nick $host $hand $chan $chan1 add.19 "$show_user [blacktools:getlevelname 4 $hand]"
	}
} elseif {[string equal -nocase $level [blacktools:getlevelname 2 $hand]]} {
	set flags "m|-"
if {[matchattr $hand n]} {
if {[validuser $user]} { 
	set get_status_access [check:access $nick $host $hand $chan $chan1 $user]
if {$get_status_access == "1"} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return
}
foreach c [channels] {
	if {[matchattr $user $black(exceptflags) $c]} {
	chattr $user -|-qgaolSHOAMV $c
	}
}
	chattr $user -omjlptxq
	chattr $user $flags
	setuser $user XTRA CHANMODIF(GLOBAL) $time:$hand
	blacktools:tell $nick $host $hand $chan $chan1 add.20 "$show_user [blacktools:getlevelname 2 $hand]"
} else {
	adduser $user $uhost
	set user [check:handle $user $nick $host $hand $chan $chan1]
	chattr $user $flags 
	setuser $user XTRA CHANMODIF(GLOBAL) $time:$hand
	blacktools:tell $nick $host $hand $chan $chan1 add.10 "$show_user $uhost"
	blacktools:tell $nick $host $hand $chan $chan1 add.20 "$show_user [blacktools:getlevelname 2 $hand]"
		}
	}
} elseif {[string equal -nocase $level [blacktools:getlevelname 9 $hand]]} {
	set flags "B|-"
if {[matchattr $hand n]} {
	set userlang [getuser $hand XTRA OUTPUT_LANG]
if {$userlang == ""} { set userlang "[string tolower $black(default_lang)]" }
	if {$reason == ""} { set getreason $black(say.$userlang.handleban.1) } else { set getreason $reason }
if {[validuser $user]} {
	set get_status_access [check:access $nick $host $hand $chan $chan1 $user]
if {$get_status_access == "1"} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return
}
foreach c [channels] {
	if {[matchattr $user $black(exceptflags) $c]} {
	chattr $user -|-qgaolSHOAMV $c
	}
}
	chattr $user -omjlptxq
	chattr $user $flags
	setuser $user XTRA CHANMODIF(GLOBAL) $time:$hand
	setuser $user XTRA BLACK_REASON $getreason
	blacktools:tell $nick $host $hand $chan $chan1 add.20 "$show_user [blacktools:getlevelname 9 $hand]"
} else {
	adduser $user $uhost
	set user [check:handle $user $nick $host $hand $chan $chan1]
	chattr $user $flags 
	setuser $user XTRA CHANMODIF(GLOBAL) $time:$hand
	setuser $user XTRA BLACK_REASON $getreason
	add:ban $uhost $reason
	blacktools:tell $nick $host $hand $chan $chan1 add.10 "$show_user $uhost"
	blacktools:tell $nick $host $hand $chan $chan1 add.20 "$show_user [blacktools:getlevelname 9 $hand]"
		}
	}
} elseif {[string equal -nocase $level [blacktools:getlevelname 8 $hand]]} {
	set flags "o|-"
if {[matchattr $hand nm]} {
if {[validuser $user]} { 
	set get_status_access [check:access $nick $host $hand $chan $chan1 $user]
if {$get_status_access == "1"} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return
}
foreach c [channels] {
	if {[matchattr $user $black(exceptflags) $c]} {
	chattr $user -|-qgaolSHOAMV $c
	}
}
	chattr $user -omjlptxq
	chattr $user $flags
	setuser $user XTRA CHANMODIF(GLOBAL) $time:$hand
	blacktools:tell $nick $host $hand $chan $chan1 add.20 "$show_user [blacktools:getlevelname 8 $hand]"
} else {
	adduser $user $uhost
	set user [check:handle $user $nick $host $hand $chan $chan1]
	chattr $user $flags 
	setuser $user XTRA CHANMODIF(GLOBAL) $time:$hand
	blacktools:tell $nick $host $hand $chan $chan1 add.10 "$show_user $uhost"
	blacktools:tell $nick $host $hand $chan $chan1 add.20 "$show_user [blacktools:getlevelname 8 $hand]"
		}
	}
} elseif {[string equal -nocase $level [blacktools:getlevelname 5 $hand]]} {
	set flags "-|olO"
if {[validuser $user]} { 
	set check_global [check:global $user]
if {$check_global != "0"} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.isowner "$user $check_global"
	return
}
	set get_status_access [check:access $nick $host $hand $chan $chan1 $user]
if {$get_status_access == "1"} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return
}
	chattr $user -|-qolSHOAMV $chan
	chattr $user $flags $chan 
	setuser $user XTRA CHANMODIF($chan) $time:$hand
	blacktools:tell $nick $host $hand $chan $chan1 add.19 "$show_user [blacktools:getlevelname 5 $hand]"
} else {
	adduser $user $uhost
	set user [check:handle $user $nick $host $hand $chan $chan1]
	chattr $user $flags $chan 
	setuser $user XTRA CHANMODIF($chan) $time:$hand
	blacktools:tell $nick $host $hand $chan $chan1 add.10 "$show_user $uhost"
	blacktools:tell $nick $host $hand $chan $chan1 add.19 "$show_user [blacktools:getlevelname 5 $hand]"
	}
} elseif {[string equal -nocase $level [blacktools:getlevelname 7 $hand]]} {
	set flags "-|H"
if {[validuser $user]} { 
	set check_global [check:global $user]
if {$check_global != "0"} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.isowner "$user $check_global"
	return
}
	set get_status_access [check:access $nick $host $hand $chan $chan1 $user]
if {$get_status_access == "1"} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return
}
	chattr $user -|-qHolSOAMV $chan
	chattr $user $flags $chan 
	setuser $user XTRA CHANMODIF($chan) $time:$hand
	blacktools:tell $nick $host $hand $chan $chan1 add.19 "$show_user [blacktools:getlevelname 7 $hand]"
} else {
	adduser $user $uhost
	set user [check:handle $user $nick $host $hand $chan $chan1]
	chattr $user $flags $chan 
	setuser $user XTRA CHANMODIF($chan) $time:$hand
	blacktools:tell $nick $host $hand $chan $chan1 add.10 "$show_user $uhost"
	blacktools:tell $nick $host $hand $chan $chan1 add.19 "$show_user [blacktools:getlevelname 7 $hand]"
	}
} elseif {[string equal -nocase $level [blacktools:getlevelname 6 $hand]]} {
	set flags "-|olV"
if {[validuser $user]} { 
	set check_global [check:global $user]
if {$check_global != "0"} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.isowner "$user $check_global"
	return
}	
	set get_status_access [check:access $nick $host $hand $chan $chan1 $user]
if {$get_status_access == "1"} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return
}
	chattr $user -|-qolSHOAMV $chan	
	chattr $user $flags $chan
	setuser $user XTRA CHANMODIF($chan) $time:$hand
	blacktools:tell $nick $host $hand $chan $chan1 add.19 "$show_user [blacktools:getlevelname 6 $hand]"
} else {
	adduser $user $uhost
	set user [check:handle $user $nick $host $hand $chan $chan1]
	chattr $user $flags $chan 
	setuser $user XTRA CHANMODIF($chan) $time:$hand

	blacktools:tell $nick $host $hand $chan $chan1 add.10 "$show_user $uhost"
	blacktools:tell $nick $host $hand $chan $chan1 add.19 "$show_user [blacktools:getlevelname 6 $hand]"
							
				}
			} else {
if {$type == "0"} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr "$cmd"
	return
}
if {$type == "1"} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_nick "$cmd"
	return
			}
		}
	}
}

############################## delacc ################################

proc delacc:process {nick host hand chan chan1 user type} {
global botnick black
	set cmd_status [btcmd:status $chan $hand "delacc" 0]
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
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr "delacc"
	}
	1 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_nick "delacc"
	}
	2 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_priv "delacc"
		}
	}
	return
}

if {![validchan $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr "delacc"
	return
}

if {$user != ""} {
	set show_user $user
if {[onchan $user $chan] && ![validuser $user]} {
	set user [nick2hand $user]
}
	set get_status_access [check:access $nick $host $hand $chan $chan1 $user]

if {$get_status_access == "1"} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return
}

if {[matchattr $hand n|- $chan]} {
if {[matchattr $user mo]} {
if {[matchattr $user n|- $chan] && [matchattr $hand n|- $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return
}

if {[validuser $user]} { 
if {[matchattr $user m]} {
	blacktools:tell $nick $host $hand $chan $chan1 delacc.2 $show_user
} elseif {[matchattr $user o]} {
	blacktools:tell $nick $host $hand $chan $chan1 delacc.4 $show_user
}
		chattr $user -moagjlptxq
} else { blacktools:tell $nick $host $hand $chan $chan1 gl.nomem none }
	return
	}
} elseif {[matchattr $hand m]} {
if {[matchattr $user o]} {
if {[matchattr $user m|- $chan] && [matchattr $hand m|- $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return
}

if {[validuser $user]} { 
	chattr $user -oagjlptxq
	blacktools:tell $nick $host $hand $chan $chan1 delacc.4 $show_user
} else { blacktools:tell $nick $host $hand $chan $chan1 gl.nomem none }
	return
	}
}
	
if {![matchattr $user -|OAMVH $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.noaccess none
	return
}

if {[validuser $user]} { 
	chattr $user -|-qolSgaOAMVHf $chan
	blacktools:tell $nick $host $hand $chan $chan1 delacc.1 $show_user
			} else { blacktools:tell $nick $host $hand $chan $chan1 gl.nomem none }
	}
}

############################## del #####################################

proc del:process {nick host hand chan chan1 args type} {
global botnick black
	set cmd_status [btcmd:status $chan $hand "del" 0]
if {$cmd_status == "1"} { 
	return 
}
if {[matchattr $hand q]} { blacktools:tell $nick $host $hand $chan $chan1 gl.glsuspend none
	return
}
if {[matchattr $hand -|q $chan]} { blacktools:tell $nick $host $hand $chan $chan1 gl.suspend none
	return
}

if {$args == ""} {
	switch $type {
	0 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr "del"
	}
	1 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_nick "del"
	}
	2 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_priv "del"
		}
	}
	return
} 

foreach user $args {
	set show_user $user
if {$user != ""} {
if {$host != "prv"} {
if {[onchan $user $chan] && ![validuser $user]} {
	set user [nick2hand $user]
	}
}

if {![matchattr $hand n] && [matchattr $user $black(banflag)]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.banblack none
	return
}
	set get_status_access [check:access $nick $host $hand $chan $chan1 $user]

if {$get_status_access == "1"} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	continue
}

if {[validuser $user]} { 
if {[matchattr $hand -|MA $chan]} {
foreach c [channels] {
	if {![string equal -nocase $c $chan]} {
	if {[matchattr $user nmo|HAMOVSo $c]} {
	blacktools:tell $nick $host $hand $chan $chan1 del.2 $show_user
	continue
			}
		}
	}
}

if {[matchattr $user B]} {
		set gethost [getuser $user hosts]
foreach h $gethost {
foreach c [channels] {
if {[validchan $c]} {
if {[ischanban $h $c]} {
if {[setting:get $c xonly] && [onchan $black(chanserv) $c]} {
	putserv "PRIVMSG $black(chanserv) :unban $c $h"
} else {
	pushmode $c	-b $h
					}
				}
			}
		}
	}
}
	deluser $user
	notes:remove:ondelete $user
	alias:remove:ondelete $user
	s:remove:ondelete $user
	blacktools:tell $nick $host $hand $chan $chan1 del.1 $show_user
			} else { blacktools:tell $nick $host $hand $chan $chan1 gl.nomem none }
		}
	}
}


################################ addhost #############################

proc addhost:process {nick host hand chan chan1 user hosts type} {
global black botnick
	set cmd_status [btcmd:status $chan $hand "addhost" 0]
if {$cmd_status == "1"} { 
	return 
}
if {[matchattr $hand q]} { blacktools:tell $nick $host $hand $chan $chan1 gl.glsuspend none
	return
}
if {[matchattr $hand -|q $chan]} { blacktools:tell $nick $host $hand $chan $chan1 gl.suspend none
	return
}
	set found_it 0
	set found_user ""
	set show_user $user
	set show_hosts $hosts
if {$user == ""} {
	switch $type {
	0 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr "addhost"
	}
	1 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_nick "addhost"
	}
	2 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_priv "addhost"
		}
	}
	return
}

if {$host != "prv"} {
if {[onchan $user $chan] && ![validuser $user]} {
	set user [nick2hand $user]
	}
}

if {![matchattr $hand mn] && [matchattr $user $black(banflag)]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.banblack none
	return
}

	set get_status_access [check:access $nick $host $hand $chan $chan1 $user]

if {$get_status_access == "1"} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return
}

if {![string equal -nocase $hosts "-telnet!*@*"]} {
foreach u [userlist] {
	set h [getuser $u hosts]
foreach hs $h {
if {[string match -nocase [split $hs] $hosts]} {
	set found_it 1
	set found_user $u
			}
		}
	}
}
if {[validuser $user]} {
if {$found_it == "1"} {
	blacktools:tell $nick $host $hand $chan $chan1 addhost.1 "[split $found_user] $show_hosts"
	return
}
	setuser $user HOSTS $hosts
if {[matchattr $user B]} {
	add:ban $hosts [join [getuser $user XTRA BLACK_REASON]]
}
	blacktools:tell $nick $host $hand $chan $chan1 addhost.2 "$show_user $show_hosts"
	} else { blacktools:tell $nick $host $hand $chan $chan1 gl.nomem none }
}

############################### delhost ############################

proc delhost:process {nick host hand chan chan1 user hosts type} {
global black botnick
	set cmd_status [btcmd:status $chan $hand "delhost" 0]
if {$cmd_status == "1"} { 
	return 
}
if {[matchattr $hand q]} { blacktools:tell $nick $host $hand $chan $chan1 gl.glsuspend none
	return
}
if {[matchattr $hand -|q $chan]} { blacktools:tell $nick $host $hand $chan $chan1 gl.suspend none
	return
}
	set show_user $user
	set show_hosts $hosts
if {$user == ""} {
	switch $type {
	0 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr "delhost"
	}
	1 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_nick "delhost"
	}
	2 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_priv "delhost"
		}
	}
	return
}

if {$host != "prv"} {
if {[onchan $user $chan] && ![validuser $user]} {
	set user [nick2hand $user]
	}
}

if {![matchattr $hand mn] && [matchattr $user $black(banflag)]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.banblack none
	return
}

	set get_status_access [check:access $nick $host $hand $chan $chan1 $user]

if {$get_status_access == "1"} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return
}

if {[validuser $user]} {
	set hhost [getuser $user hosts]
foreach hhost $hhost {
if {[string match -nocase [split $hhost] $hosts]} {
	set foundhost 1
	}
}

if {![info exists foundhost]} {
	blacktools:tell $nick $host $hand $chan $chan1 delhost.1 "$show_user $show_hosts"
	return
}
	delhost $user $hosts
foreach c [channels] {
if {[validchan $c]} {
if {[ischanban $hosts $c]} {
if {[setting:get $c xonly] && [onchan $black(chanserv) $c]} {
	putserv "PRIVMSG $black(chanserv) :unban $c $hosts"
} else {
	pushmode $c	-b $hosts
			}
		}
	}
}
	blacktools:tell $nick $host $hand $chan $chan1 delhost.2 "$show_user $show_hosts"
		} else { 
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomem none
	}
}

############################### chuser ############################

proc chuser:process {nick host hand chan chan1 user chandle type} {
global botnick black
	set cmd_status [btcmd:status $chan $hand "chuser" 0]
if {$cmd_status == "1"} { 
	return 
}
	set owner_user $user
	set owner_chandle $chandle
	set show_user $user
	set show_chandle $chandle
if {[matchattr $hand q]} { blacktools:tell $nick $host $hand $chan $chan1 gl.glsuspend none
	return
}
if {[matchattr $hand -|q $chan]} { blacktools:tell $nick $host $hand $chan $chan1 gl.suspend none
	return
}

if {$user == ""} {
	switch $type {
	0 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr "chuser"
	}
	1 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_nick "chuser"
	}
	2 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_priv "chuser"
		}
	}
	return
}

if {[onchan $user $chan] && ![validuser $user]} {
	set user [nick2hand $user]
}

	set get_status_access [check:access $nick $host $hand $chan $chan1 $user]

if {$get_status_access == "1"} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return
}

if {[matchattr $hand -|M $chan] && ![matchattr $user -|ASOV $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.noaccess none 
	return
}

if {[validuser $chandle]} {
	blacktools:tell $nick $host $hand $chan $chan1 chuser.3 none
return
}

if {[validuser $user]} {
	chhandle $user $chandle
	alias:change:update $user $chandle
	blacktools:tell $nick $host $hand $chan $chan1 chuser.1 "$show_user $show_chandle"
	} else {blacktools:tell $nick $host $hand $chan $chan1 gl.nomem none }
}

############################ userlist #############################

proc userlist:execute {hand host level chan chan1 nick type} {
global black botnick
	set cmd_status [btcmd:status $chan $hand "userlist" 0]
if {$cmd_status == "1"} { 
	return 
}
	set getlang [string tolower [getuser $hand XTRA OUTPUT_LANG]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
	set gl 0
if {[matchattr $hand q]} { blacktools:tell $nick $host $hand $chan $chan1 gl.glsuspend none
	return
}
if {[matchattr $hand -|q $chan]} { blacktools:tell $nick $host $hand $chan $chan1 gl.suspend none
	return
}
if {$level == ""} {
	switch $type {
	0 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr "userlist"
	}
	1 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_nick "userlist"
	}
	2 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_priv "userlist"
		}
	}
	return
}
if {[string equal -nocase $level [blacktools:getlevelname 3 $hand]]} {
    set flags "-|M"
    set numar [llength [userlist $flags $chan]]
    set list [userlist $flags $chan]
if {$list == ""} { set list "N/A" }
	userlist:details $nick $host $hand $chan $chan1 [blacktools:getlevelname 3 $hand] $list $gl
} elseif {[string equal -nocase $level [blacktools:getlevelname 4 $hand]]} {
	set flags "-|A"
	set numar [llength [userlist $flags $chan]]
	set list [userlist $flags $chan]
if {$list == ""} { set list "N/A" }
	userlist:details $nick $host $hand $chan $chan1 [blacktools:getlevelname 4 $hand] $list $gl
} elseif {[string equal -nocase $level [blacktools:getlevelname 7 $hand]]} {
	set flags "-|H"
	set list [userlist $flags $chan]
    set numar [llength [userlist $flags $chan]]
if {$list == ""} { set list "N/A" } 
	userlist:details $nick $host $hand $chan $chan1 [blacktools:getlevelname 7 $hand] $list $gl
} elseif {[string equal -nocase $level [blacktools:getlevelname 5 $hand]]} {
	set flags "-|O"
    set list [userlist $flags $chan]
    set numar [llength [userlist $flags $chan]]
if {$list == ""} { set list "N/A" }
	userlist:details $nick $host $hand $chan $chan1 [blacktools:getlevelname 5 $hand] $list $gl
} elseif {[string equal -nocase $level [blacktools:getlevelname 9 $hand]] && [matchattr $hand n]} {
	set gl 1
	set flags "B|-"
    set list [userlist $flags $chan]
    set numar [llength [userlist $flags $chan]]
if {$list == ""} { set list "N/A" }
	userlist:details $nick $host $hand $chan $chan1 [blacktools:getlevelname 9 $hand] $list $gl
} elseif {[string equal -nocase $level [blacktools:getlevelname 2 $hand]]} {
if {[matchattr $hand nmo]} {
	set gl 1
	set bossflags "n|-"
	set ownerflags "m|-"
	set listbossowner [userlist $bossflags]
	set listowner [userlist $ownerflags]
foreach user $listbossowner {
if {[lsearch -exact $listowner $user] > -1} {
	set pos [lsearch -exact	$listowner $user]
	set listowner [lreplace $listowner $pos $pos]
	}
}
if {$listowner == ""} { set listowner "N/A" }
	userlist:details $nick $host $hand $chan $chan1 [blacktools:getlevelname 1 $hand] $listbossowner $gl
	userlist:details $nick $host $hand $chan $chan1 [blacktools:getlevelname 2 $hand] $listowner $gl
	}
} elseif {[string equal -nocase $level [blacktools:getlevelname 8 $hand]]} {
if {[matchattr $hand nmo]} {
	set gl 1
	set bossflags "n|-"
	set ownerflags "m|-"
	set masterflags "o|-"
	set listbossowner [userlist $bossflags]
	set listowner [userlist $ownerflags]
	set listmaster [userlist $masterflags]
foreach user $listbossowner {
if {[lsearch -exact $listmaster $user] > -1} {
	set pos [lsearch -exact	$listmaster $user]
	set listmaster [lreplace $listmaster $pos $pos]
	}
}
foreach user $listowner {
if {[lsearch -exact $listmaster $user] > -1} {
	set pos [lsearch -exact	$listmaster $user]
	set listmaster [lreplace $listmaster $pos $pos]
	}
}
if {$listmaster == ""} { set listmaster "N/A" }
	userlist:details $nick $host $hand $chan $chan1 [blacktools:getlevelname 8 $hand] $listmaster $gl
	}
} elseif {[string equal -nocase $level [blacktools:getlevelname 6 $hand]]} {
set flags "-|V"
    set numar [llength [userlist $flags $chan]]
    set list [userlist $flags $chan]
if {$list == ""} { set list "N/A" }
	userlist:details $nick $host $hand $chan $chan1 [blacktools:getlevelname 6 $hand] $list $gl
} elseif {[string equal -nocase $level "all"]} {
array set flgc [list]	
	set flags "-|MHAVO"
	set list [userlist $flags $chan]
	set numar [llength [userlist $flags $chan]]
foreach user $list {
if {[matchattr $user -|M $chan]} {
	lappend flgc([blacktools:getlevelname 3 $hand]) $user
} elseif {[matchattr $user -|A $chan]} { 
	lappend flgc([blacktools:getlevelname 4 $hand]) $user
} elseif {[matchattr $user -|O $chan]} {
	lappend flgc([blacktools:getlevelname 5 $hand]) $user
} elseif {[matchattr $user -|V $chan]} {
	lappend flgc([blacktools:getlevelname 6 $hand]) $user
} elseif {[matchattr $user -|H $chan]} {
	lappend flgc([blacktools:getlevelname 7 $hand]) $user
	}
}

	blacktools:tell $nick $host $hand $chan $chan1 userlist.2 $numar
foreach flw [array names flgc] {
	userlist:details $nick $host $hand $chan $chan1 $flw $flgc($flw) $gl
			}
		} else {
if {$type == "0"} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr "userlist"
	return
}
if {$type == "1"} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_nick "userlist"
	return
		}
	}		
}

proc userlist:details {nick host hand chan chan1 access usernames gl} {
	global black
if {![info exists onchan]} {
	set onchan ""
}

if {![info exists the_usernames]} {
	set the_usernames ""
}

foreach user $usernames {
if {$host != "prv"} {
	foreach n [chanlist $chan] {
	set id [nick2hand $n]

if {[string equal -nocase $id $user]} {
	lappend the_usernames "$user/\002$n\002\[[userlist:check_mode $user $chan]\]"
	lappend onchan $user
			}
		}
	}
if {[lsearch -exact [string tolower $onchan] [string tolower $user]] == -1} {
	lappend the_usernames "$user\[[userlist:check_mode $user $chan]\]"
	}
}
if {$usernames == "-"} {
	blacktools:tell $nick $host $hand $chan $chan1 userlist.1 "\[\002$access\002\] $usernames"
	return
}
foreach user [wordwrap $the_usernames 440] {
	blacktools:tell $nick $host $hand $chan $chan1 userlist.1 "\[\002$access\002\] [join $user]"
	}
}

proc userlist:check_mode {user chan} {
	global black
if {[matchattr $user a]} {
	return "+o all"
	}
if {[matchattr $user g]} {
	return "+v all"
	}
if {[matchattr $user -|a $chan]} {
	return "+o"
	}
if {[matchattr $user -|g $chan]} {
	return "+v"
	}
}

############################### info ############################

proc info:process:info_return {nick host hand chan chan1 user} {
	global black
	set show_user $user
	set getlang [string tolower [getuser $hand XTRA OUTPUT_LANG]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
	blacktools:tell $nick $host $hand $chan $chan1 info.11 "$show_user"
if {[matchattr $hand nmo]} {
foreach c [channels] {
if {[matchattr $user -|H $c]} { 
	set fl [blacktools:getlevelname 7 $hand]
	lappend flg($fl) $c
} elseif {[matchattr $user -|V $c]} { 
	set fl [blacktools:getlevelname 6 $hand]
	lappend flg($fl) $c
} elseif {[matchattr $user -|O $c]} { 
	set fl [blacktools:getlevelname 5 $hand]
	lappend flg($fl) $c
} elseif {[matchattr $user -|A $c]} {
	set fl [blacktools:getlevelname 4 $hand]
	lappend flg($fl) $c
} elseif {[matchattr $user -|M $c]} {
	set fl [blacktools:getlevelname 3 $hand]
	lappend flg($fl) $c 
	}
}
foreach cf [array names flg] {
lappend exit \002[join $flg($cf) ", "]\002 ($cf)
	}
}

if {![info exists exit]} { set exit "N/A"}

	set lastseen [getuser $user LASTON $chan]
	set hosts [getuser $user hosts]

if {$lastseen == ""} {
	set lastseen "N/A"
} else {
	set lastseen [clock format $lastseen -format %D-%H:%M:%S]
}
if {[matchattr $hand mno]} {
	set laston [getuser $user laston]
	set lastseen [lindex $laston 0]
	set lastchan [lindex $laston 1]
if {$laston == ""} {
	set lastseen "N/A"
	set lastchan "N/A"
} else {
	set lastseen [clock format $lastseen -format %D-%H:%M:%S]
}
	blacktools:tell $nick $host $hand $chan $chan1 info.10 "$lastseen $lastchan"
} else {
	blacktools:tell $nick $host $hand $chan $chan1 info.5 $lastseen
}
	blacktools:tell $nick $host $hand $chan $chan1 info.6 $hosts
if {![matchattr $user nmo|- $chan] && [matchattr $hand nmo|- $chan] && ($exit != "N/A")} {
	blacktools:tell $nick $host $hand $chan $chan1 info.8 "[join $exit]"
	}
}

proc info:process:chan {nick host hand chan chan1} {
	global black botnick
	set cmd_status [btcmd:status $chan $hand "info" 0]
if {$cmd_status == "1"} { 
	return 
}
if {[matchattr $hand q]} { blacktools:tell $nick $host $hand $chan $chan1 gl.glsuspend none
	return
}
if {[matchattr $hand -|q $chan]} { blacktools:tell $nick $host $hand $chan $chan1 gl.suspend none
	return
}
if {![validchan $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nocmem $chan
	return
}
	set getlang [string tolower [getuser $hand XTRA OUTPUT_LANG]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
	set status "OK"
	set modes [channel get $chan chanmode]
	set manager [userlist -|M $chan]
	if {$manager == ""} { set manager "N/A" }
	set topic [join [topic:return $chan]]
	set url [join [setting:get $chan url]]
if {[setting:get $chan jointime] == ""} {
	set jointime "N/A"
	set jointime_2 "N/A"
} else {
	set jointime [clock format [setting:get $chan jointime] -format %D-%H:%M:%S]
	set jointime_2 [return_time $getlang [expr [unixtime] - [setting:get $chan jointime]]]
}

	set joincount [setting:get $chan joincount]
if {$joincount == ""} {set joincount 0}
	set nr_user [llength [chanlist $chan]]
	set nr_ban [llength [blacktools:banlist $chan]]
	set nr_user_ac 0
foreach user [chanlist $chan] {
	set handle [nick2hand $user]
if {[matchattr $handle -|OgaAHMNV $chan]} {
	set nr_user_ac [expr $nr_user_ac + 1]
	}
}
	set file [open $black(seen_file) "r"]
	set database [read -nonewline $file]
	set data [split $database "\n"]
	close $file
	set nr_seen [llength [lsearch -all [string tolower $data] [string tolower "* $chan *"]]]

	blacktools:tell $nick $host $hand $chan $chan1 info.15 "$chan $modes"
	blacktools:tell $nick $host $hand $chan $chan1 info.16 "$manager"

if {[channel get $chan inactive]} {
	set found_it 1
if {[info exists black(abuse:$chan)]} {
if {$black(abuse:$chan) == "1"} {
	set text [black:color:set "" $black(say.$getlang.info.29)]
	set status "$text"
	} elseif {$black(abuse:$chan) == "3"} {
	set text [black:color:set "" $black(say.$getlang.info.27)]
	set status "$text"
	} elseif {$black(abuse:$chan) == "2"} {
	set text [black:color:set "" $black(say.$getlang.info.28)]
	set status "$text"
	} elseif {$black(abuse:$chan) == "4"} {
	set text [black:color:set "" $black(say.$getlang.info.26)]
	set status "$text"
	} elseif {$black(abuse:$chan) == "5"} {
	set text [black:color:set "" $black(say.$getlang.info.35)]
	set status "$text"
	}
} else {
	set text [black:color:set "" $black(say.$getlang.info.22)]
	set status "$text"
	}
}
if {![info exist found_it]} {
if {![onchan $botnick $chan]} {
	set found_it 1
if {[info exists black(abuse:$chan)]} {
if {$black(abuse:$chan) == "1"} {
	set text [black:color:set "" $black(say.$getlang.info.33)]
	set status "$text"
	} elseif {$black(abuse:$chan) == "3"} {
	set text [black:color:set "" $black(say.$getlang.info.31)]
	set status "$text"
	} elseif {$black(abuse:$chan) == "2"} {
	set text [black:color:set "" $black(say.$getlang.info.32)]
	set status "$text"
	} elseif {$black(abuse:$chan) == "4"} {
	set text [black:color:set "" $black(say.$getlang.info.30)]
	set status "$text"
	} elseif {$black(abuse:$chan) == "5"} {
	set text [black:color:set "" $black(say.$getlang.info.34)]
	set status "$text"
	} 
} else {
	set text [black:color:set "" $black(say.$getlang.info.23)]
	set status "$text"
		}
	}
}

if {![info exist found_it]} {
if {![botisop $chan]} {
	set text [black:color:set "" $black(say.$getlang.info.24)]
	set status "$text"
		}
	}
if {$status != "OK"} {
	blacktools:tell $nick $host $hand $chan $chan1 info.19 "$status"
}
if {$topic != ""} {
	blacktools:tell $nick $host $hand $chan $chan1 info.17 "$topic"
}
if {$url != ""} {
	blacktools:tell $nick $host $hand $chan $chan1 info.18 "$url"
}
	blacktools:tell $nick $host $hand $chan $chan1 info.20 "$jointime $jointime_2"

	blacktools:tell $nick $host $hand $chan $chan1 info.21 "$joincount $nr_user $nr_user_ac $nr_ban $nr_seen"
}

proc info:process:host {nick host hand chan chan1 get_host} {
	global black
	set users ""
foreach user [userlist] {
foreach h [getuser $user hosts] {
if {[string match -nocase $get_host $h]} {
	set found_host 1
	lappend users $user
		}
	}	
}
	set users [lsort -unique $users]
	set user_num [llength $users]
if {![info exists found_host]} {
	return 0
}
if {$user_num == 1} {
	info:process:info_return $nick $host $hand $chan $chan1 [join $users]
	return 1
}

if {$user_num > 1 && $user_num < 11} {
	blacktools:tell $nick $host $hand $chan $chan1 info.12 "$user_num $users"
	blacktools:tell $nick $host $hand $chan $chan1 info.14 none
	return 1
}

if {$user_num > 10} {
	blacktools:tell $nick $host $hand $chan $chan1 info.13 "$user_num"
	return 1
	}
}

proc info:process {nick host hand chan chan1 user type} {
global botnick black
	set cmd_status [btcmd:status $chan $hand "info" 0]
if {$cmd_status == "1"} { 
	return 
}
if {[matchattr $hand q]} { blacktools:tell $nick $host $hand $chan $chan1 gl.glsuspend none
	return
}
if {[matchattr $hand -|q $chan]} { blacktools:tell $nick $host $hand $chan $chan1 gl.suspend none
	return
}
	set getlang [string tolower [getuser $hand XTRA OUTPUT_LANG]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
	set show_user $user
	set time [ctime [unixtime]]
	array set flg [list]

if {$user == ""} {
switch $type {
	0 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr "info"
	}
	1 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_nick "info"
	}
	2 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_priv "info"
		}
	}
	return
}

if {[matchattr $hand nmo] && ($host == "prv") && (![regexp {^[&#]} $chan])} {
foreach chan [channels] {
if {[onchan $user $chan]} {
	set handle [nick2hand $user]
		}
	}
} else {
if {[onchan $user $chan]} {
	set handle [nick2hand $user]
	}
}

if {[info exists handle]} {
if {[validuser $handle]} {
	set user $handle
	}
}

if {[regexp {\*} $user]} {
if {[matchattr $hand nmo]} {
	set check [info:process:host $nick $host $hand $chan $chan1 $user]
if {$check == "0"} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.hostnotexist $user
		}
	return
	}
}

if {![validuser $user]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomem none 
	return
}

if {(![matchattr $user nmaBgo|OwgaAHSMNV $chan]) && [matchattr $hand mno]} {
	info:process:info_return $nick $host $hand $chan $chan1 $user
	return
} else {
if {[matchattr $user B] && ![matchattr $hand n] && [matchattr $hand mo]} {
	info:process:info_return $nick $host $hand $chan $chan1 $user
	return	
}
if {![matchattr $user nmgao|OwgaAHSMNV $chan]} {
if {[matchattr $user B] && ![matchattr $hand n]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.noaccess none  
	return
		}
	}
}

if {[matchattr $hand nmo|- $chan]} {
foreach c [channels] {
if {[matchattr $user -|H $c]} { 
	set fl [blacktools:getlevelname 7 $hand]
	lappend flg($fl) $c
} elseif {[matchattr $user -|V $c]} { 
	set fl [blacktools:getlevelname 6 $hand]
	lappend flg($fl) $c
} elseif {[matchattr $user -|O $c]} { 
	set fl [blacktools:getlevelname 5 $hand]
	lappend flg($fl) $c
} elseif {[matchattr $user -|A $c]} {
	set fl [blacktools:getlevelname 4 $hand]
	lappend flg($fl) $c
} elseif {[matchattr $user -|M $c]} {
	set fl [blacktools:getlevelname 3 $hand]
	lappend flg($fl) $c 
	}
}
foreach cf [array names flg] {
lappend exit \002[join $flg($cf) ", "]\002 ($cf)
	}
}

if {![info exists exit]} { set exit "N/A"}

	set cflags [chattr $user | $chan]
if {[matchattr $user a]} {
	set automode_gl "OP"
} elseif {[matchattr $user g]} {
	set automode_gl "VOICE"
} else {
	set automode_gl "N/A"
}

if {[matchattr $user -|V $chan]} { set flags [blacktools:getlevelname 6 $hand] } elseif {[matchattr $user -|O $chan]} { set flags [blacktools:getlevelname 5 $hand] } elseif {[matchattr $user -|A $chan]} { set flags [blacktools:getlevelname 4 $hand] } elseif {[matchattr $user -|H $chan]} { set flags [blacktools:getlevelname 7 $hand] } else { set flags "\002N/A\002" }
if {[matchattr $user n|- $chan]} { set flags [blacktools:getlevelname 1 $hand] } elseif {[matchattr $user m|- $chan]} { set flags [blacktools:getlevelname 2 $hand] } elseif {[matchattr $user o|- $chan]} { set flags [blacktools:getlevelname 8 $hand]} elseif {[matchattr $user B|- $chan]} { set flags [blacktools:getlevelname 9 $hand]} elseif {[matchattr $user -|M $chan]} { set flags [blacktools:getlevelname 3 $hand] } elseif {$cflags == "-|-"} { blacktools:tell $nick $host $hand $chan $chan1 info.18 "NONE" } 

if {[matchattr $user -|a $chan]} {
	set automode "OP"
} elseif {[matchattr $user -|g $chan]} {
	set automode "VOICE"
} else {
	set automode "N/A"
}

if {[matchattr $user -|q $chan]} {
	set suspended 1
} else {
	set suspended 0
}
	set getflags [getflags $user $chan]
if {![string equal -nocase $show_user $user]} {
	blacktools:tell $nick $host $hand $chan $chan1 info.1 "$user\[[black:color 1 $hand $user]\] $flags"
} else {
	blacktools:tell $nick $host $hand $chan $chan1 info.1 "$user $flags"
}
if {![matchattr $user B]} {
if {$automode_gl != "N/A"} {
if {[matchattr $user mnaog]} {
if {$getflags != ""} {
	blacktools:tell $nick $host $hand $chan $chan1 info.25 "* $automode_gl\[all\] $getflags $user"
	} else {
	blacktools:tell $nick $host $hand $chan $chan1 info.2 "* $automode_gl\[all\] $user"	
}
} else {
if {$getflags != ""} {
	blacktools:tell $nick $host $hand $chan $chan1 info.25 "$chan $automode_gl\[all\] $getflags $user"
	} else {
	blacktools:tell $nick $host $hand $chan $chan1 info.2 "$chan $automode_gl\[all\] $user"
	}
}
		} else {
if {[matchattr $user mno]} {
if {$getflags != ""} {
	blacktools:tell $nick $host $hand $chan $chan1 info.25 "* $automode $getflags $user"
	} else {
	blacktools:tell $nick $host $hand $chan $chan1 info.2 "* $automode $user"
}
	} else {
if {$getflags != ""} {	
	blacktools:tell $nick $host $hand $chan $chan1 info.25 "$chan $automode $getflags $user"
	} else {
	blacktools:tell $nick $host $hand $chan $chan1 info.2 "$chan $automode $user"
			}
		}	
	}
}
if {[matchattr $user B]} {
	set get [getuser $user XTRA BLACK_REASON]
if {$get != ""} {
	blacktools:tell $nick $host $hand $chan $chan1 info.37 $get
	} else {
	blacktools:tell $nick $host $hand $chan $chan1 info.37 $black(say.$getlang.handleban.1)
	}
}
	set extra "CHANMODIF($chan)"
	set get_chan $chan
if {[matchattr $user mno]} {
	set extra "CHANMODIF(GLOBAL)"
	set get_chan "GLOBAL"
}
	set file [open $black(s_file) "r"]
	set database [read -nonewline $file]
	close $file
	set data [split $database "\n"]
foreach line $data {
	set read_chan [lindex [split $line] 0]
	set read_user [lindex [split $line] 1]
if {[string equal -nocase $read_chan $get_chan] && [string equal -nocase $read_user $user]} {
	set read_time [lindex [split $line] 2]
	
if {[unixtime] > $read_time} {
	set read_time [expr [unixtime] - $read_time]
} else {
	set read_time [expr $read_time - [unixtime]]
}
	set read_time [return_time_2 $getlang $read_time]
	
if {$read_time == 0} {
	continue
}
	set split_readtime [split $read_time " "]
	set days [lindex $split_readtime 0]
	set the_time [lindex $split_readtime 1]
	set read_level [lindex [split $line] 4]
	set read_reason [lrange [split $line] 5 end]
if {[string equal -nocase $get_chan "GLOBAL"]} {
	blacktools:tell $nick $host $hand $chan $chan1 info.9 "$read_time $read_level $read_reason"
			} else {
	blacktools:tell $nick $host $hand $chan $chan1 info.7 "$read_time $read_level $read_reason"
			}
		}
	}

if {[getuser $user INFO] != ""} {
	blacktools:tell $nick $host $hand $chan $chan1 info.3 "[getuser $user INFO]"
}
	set lastmodify [getuser $user XTRA $extra]
if {$lastmodify != ""} {
	set split_last [split $lastmodify ":"]
	set lastmodif_time [lindex $split_last 0]
	set lastmodif_time [clock format $lastmodif_time -format %D-%H:%M:%S]
	set lastmodif_hand [join [lindex [split $split_last] 1]]
} else {
	set date [getuser $user XTRA LASTMODIFDATE]
	set last [getuser $user XTRA LASTMODIFBY]
	set lastmodif_time $date
	set lastmodif_hand $last
}

if {($lastmodif_time == "") && ($lastmodif_hand == "")} {
	set lastmodif_time "N/A"
	set lastmodif_hand "N/A"
}

	set lastseen [getuser $user LASTON $chan]
	set hosts [getuser $user hosts]

if {$lastseen == ""} {
	set lastseen "N/A"
} else {
	set lastseen [clock format $lastseen -format %D-%H:%M:%S]
}
if {![matchattr $user B]} {
	blacktools:tell $nick $host $hand $chan $chan1 info.4 "$lastmodif_hand $lastmodif_time"
}
if {[matchattr $hand mno]} {
	set laston [getuser $user laston]
	set lastseen [lindex $laston 0]
	set lastchan [lindex $laston 1]
if {$laston == ""} {
	set lastseen "N/A"
	set lastchan "N/A"
} else {
	set lastseen [clock format $lastseen -format %D-%H:%M:%S]
}
if {![matchattr $user B]} {
	blacktools:tell $nick $host $hand $chan $chan1 info.10 "$lastseen $lastchan"
	}
} else {
	blacktools:tell $nick $host $hand $chan $chan1 info.5 $lastseen
}
if {[matchattr $hand nmo] || ([matchattr $hand -|MA $chan] && ![matchattr $user nmo]) || [string equal -nocase $user $hand]} {
foreach h [wordwrap $hosts 440] {
	blacktools:tell $nick $host $hand $chan $chan1 info.6 $h
	}
}
if {[matchattr $hand nmo] || ([matchattr $hand -|MA $chan] && ![matchattr $user nmo]) || [string equal -nocase $user $hand]} {
if {[getsettings $user] != ""} {
	blacktools:tell $nick $host $hand $chan $chan1 info.36 [join [getsettings $user] " ; "]
	}
}
if {![matchattr $user nmo|- $chan] && [matchattr $hand nmo|- $chan] && ($exit != "N/A")} {
	blacktools:tell $nick $host $hand $chan $chan1 info.8 "[join $exit]"
	}
}

proc getsettings {user} {
	global black
	set output ""
	set settings "OUTPUT_LANG OUTPUT_TYPE autoinvite mychan mychar OUTPUT_COLORS NO_NOTES"
foreach setting [string toupper $settings] {
	set get [getuser $user XTRA $setting]
if {$get != ""} {
if {$setting == "OUTPUT_COLORS"} {
	set setting "COLORS"
}
if {$setting == "NO_NOTES"} {
	set setting "NOTES"
	set get "OFF"
}
if {$setting == "OUTPUT_TYPE"} {
	set setting "OUTPUT"
	switch $get {
	0 {
	set get "NOTICE"
	}
	1 {
	set get "CHAN"
	}
	2 {
	set get "MSG"
			}
		}
	}
if {$setting == "OUTPUT_LANG"} {
	set setting "LANG"
	set get [string toupper $get]
}
if {$setting == "AUTOINVITE"} {
	switch $get {
	1 {
	set get "ON"
		}
	0 {
	set get "OFF"
					}
				}
			}
	lappend output "$setting\[[join $get ","]\]"
		}
	}
	return $output
}

proc getflags {user chan} {
	global black
	set flags ""
if {[matchattr $user -|f $chan]} {	
	lappend flags "f"
}
if {[matchattr $user -|w $chan]} {	
	lappend flags "w"
}
if {[matchattr $user -|P $chan]} {	
	lappend flags "P"
}
	return [join $flags ""]
}

################################# s ###############################

proc s:process {nick host hand chan chan1 user type suspend_time suspend_reason} {
global botnick black
	set cmd_status [btcmd:status $chan $hand "s" 0]
if {$cmd_status == "1"} { 
	return 
}
	set show_user $user
	set suspend_time $suspend_time
	set show_suspend_reason $suspend_reason
	set flags "-|q"
	set gl_flags "+q"
	set getlang [string tolower [getuser $hand XTRA OUTPUT_LANG]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
	set unixtime [unixtime]
if {[matchattr $hand q]} { blacktools:tell $nick $host $hand $chan $chan1 gl.glsuspend none
	return
}
if {[matchattr $hand -|q $chan]} { blacktools:tell $nick $host $hand $chan $chan1 gl.suspend none
	return
}
if {$user == ""} {
switch $type {
	0 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr "s"
	}
	1 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_nick "s"
	}
	2 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_priv "s"
		}
	}
	return
}

if {![validchan $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.novalidchan none
	return
}

if {![validuser $user]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomem none
	return
}

if {[matchattr $user -|q $chan]} { blacktools:tell $nick $host $hand $chan $chan1 s.1 $show_user
	return
}

if {![matchattr $user nmo|OASMNV $chan]} { blacktools:tell $nick $host $hand $chan $chan1 gl.noaccess none
	return
}
	set get_status_access [check:access $nick $host $hand $chan $chan1 $user]
if {$get_status_access == "1"} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return
}
if {![regexp {^[0-9]} $suspend_time]} {
	set suspend_time $black(s:default_time)
}

if {$suspend_reason == ""} {
	set suspend_reason $black(say.$getlang.s.3)
}
	
	set get_time [expr [time_return_minute $suspend_time] * 60]
	set get_time [expr $unixtime + $get_time]

if {[matchattr $hand n] && [matchattr $user m]} {
	chattr $user $gl_flags
	setuser $user XTRA CHANMODIF(GLOBAL) $get_time:$hand
	set current_flags [s:process:getlevel $hand $chan]
	set s_add [s:process:add $nick $hand "GLOBAL" $chan1 $user $get_time $hand $suspend_reason]
if {$s_add == "1"} {
	blacktools:tell $nick $host $hand $chan $chan1 s.5 $show_user
	}
	return
} elseif {[matchattr $hand n] && [matchattr $user o] && ![matchattr $user m]} {
	chattr $user $gl_flags
	setuser $user XTRA CHANMODIF(GLOBAL) $get_time:$hand
	set current_flags [s:process:getlevel $hand $chan]
	set s_add [s:process:add $nick $hand "GLOBAL" $chan1 $user $get_time $hand $suspend_reason]
if {$s_add == "1"} {
	blacktools:tell $nick $host $hand $chan $chan1 s.5 $show_user
	}
	return
} elseif {[matchattr $hand m] && [matchattr $user o] && ![matchattr $user m]} {
	chattr $user $gl_flags
	setuser $user XTRA CHANMODIF(GLOBAL) $get_time:$hand
	set current_flags [s:process:getlevel $hand $chan]
	set s_add [s:process:add $nick $hand "GLOBAL" $chan1 $user $get_time $hand $suspend_reason]
if {$s_add == "1"} {
	blacktools:tell $nick $host $hand $chan $chan1 s.5 $show_user
if {![info exists black(s:timer_start)]} {
	set black(s:timer_start) 1
		}
	}
	return
}
	chattr $user $flags $chan
	setuser $user XTRA CHANMODIF($chan) $get_time:$hand
	set current_flags [s:process:getlevel $hand $chan]
	set s_add [s:process:add $nick $hand $chan $chan1 $user $get_time $hand $suspend_reason]
if {$s_add == "1"} {
	blacktools:tell $nick $host $hand $chan $chan1 s.2 $show_user
if {![info exists black(s:timer_start)]} {
	set black(s:timer_start) 1
		}
	}
}

proc s:process:add {nick hand chan chan1 user suspend_time bywho reason} {
	global black username
	set current_level [s:process:getlevel $bywho $chan]
	set not_allowed 0
	set found_timer 0
	set found_entry 0
	set lin 0
	set file [open $black(s_file) "r"]
	set database [read -nonewline $file]
	close $file
	set data [split $database "\n"]
foreach line $data {
	set lin [expr $lin + 1]
	set get_channel [lindex [split $line] 0]
	set get_username [lindex [split $line] 1]
	set get_bywho [lindex [split $line] 3]
if {[string equal -nocase $get_channel $chan] && [string equal -nocase $get_username $user]} {
	set found_entry 1
	set get_level [lindex [split $line] 4]
	set not_allowed [s:process:allow $get_level $current_level]
	}
}

if {$not_allowed == "1"} {
	blacktools:tell $nick "" $hand $chan $chan1 s.4 $user
	return 0
}

if {$not_allowed == "0" && $found_entry == 1} {
	set file [open $black(s_file) "r"]
	set timestamp [clock format [clock seconds] -format {%Y%m%d%H%M%S}]
	set temp "$black(tempdir)/s_temp.$timestamp"
	set tempwrite [open $temp w]
while {[gets $file line] != -1} {
	set get_channel [lindex [split $line] 0]
	set get_username [lindex [split $line] 1]
if {[string equal -nocase $get_channel $chan] && [string equal -nocase $get_username $user]} {
	continue
	} else {
	puts $tempwrite $line
	}
}
	close $tempwrite
	close $file
    file rename -force $temp $black(s_file)
}
	set who "$chan $user $suspend_time $bywho $current_level $reason"
	set file [open $black(s_file) "a"]
	puts $file $who
	close $file
	return 1
}

proc s:process:getlevel {hand chan} {
	global black
if {[matchattr $hand n]} {
	set current_flags "BOSS-OWNER"
} elseif {[matchattr $hand m]} {
	set current_flags "OWNER"
} elseif {[matchattr $hand o]} { 
	set current_flags "MASTER" 
} elseif {[matchattr $hand -|M $chan]} { 
	set current_flags "MANAGER"
} elseif {[matchattr $hand -|A $chan]} { 
	set current_flags "ADMIN"
	}
	return $current_flags
}

proc s:process:allow {get_level current_level} {
	global black
if {[string equal -nocase $get_level "BOSS-OWNER"] && [string equal -nocase $current_level "OWNER"]} {
	return 1			
				} elseif {[string equal -nocase $get_level "BOSS-OWNER"] && [string equal -nocase $current_level "MANAGER"]} {
	return 1			
				} elseif {[string equal -nocase $get_level "BOSS-OWNER"] && [string equal -nocase $current_level "ADMIN"]} {
	return 1			
				} elseif {[string equal -nocase $get_level "OWNER"] && [string equal -nocase $current_level "MANAGER"]} {
	return 1			
				} elseif {[string equal -nocase $get_level "OWNER"] && [string equal -nocase $current_level "ADMIN"]} {
	return 1			
				} elseif {[string equal -nocase $get_level "MANAGER"] && [string equal -nocase $current_level "ADMIN"]} {
	return 1
	}
	return 0
}

################################## us ################################

proc us:process {nick host hand chan chan1 user type} {
global botnick black
set cmd_status [btcmd:status $chan $hand "us" 0]
if {$cmd_status == "1"} { 
	return 
}
if {[matchattr $hand q]} { blacktools:tell $nick $host $hand $chan $chan1 gl.glsuspend none
	return
}
if {[matchattr $hand -|q $chan]} { blacktools:tell $nick $host $hand $chan $chan1 gl.suspend none
	return
}
	set show_user $user
	set get_time [unixtime]
	set flags "-|-q"
	set gl_flags "-q"


if {$user == ""} {
switch $type {
	0 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr "us"
	}
	1 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_nick "us"
	}
	2 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_priv "us"
		}
	}
	return
}

if {![validchan $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.novalidchan none
	return
}

if {![validuser $user]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomem none
	return
}
if {![matchattr $user nmo|OASMNV $chan]} { blacktools:tell $nick $host $hand $chan $chan1 gl.noaccess none
	return
}
if {![matchattr $user q|q $chan]} { blacktools:tell $nick $host $hand $chan $chan1 us.1 $show_user
	return
}
	set get_status_access [check:access $nick $host $hand $chan $chan1 $user]

if {$get_status_access == "1"} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return
}
	set current_level [s:process:getlevel $hand $chan]
	
if {[matchattr $hand n] && [matchattr $user m]} {
	setuser $user XTRA CHANMODIF(GLOBAL) $get_time:$hand
	set type2 "1"
	set inf [us:process:remove $nick $host $hand "GLOBAL" $chan1 $user $type2 $current_level]
} elseif {[matchattr $hand n] && [matchattr $user o] && ![matchattr $user m]} {
	setuser $user XTRA CHANMODIF(GLOBAL) $get_time:$hand
	set type2 "1"
	set inf [us:process:remove $nick $host $hand "GLOBAL" $chan1 $user $type2 $current_level]
}  elseif {[matchattr $hand m] && [matchattr $user o] && ![matchattr $user m]} {
	setuser $user XTRA CHANMODIF(GLOBAL) $get_time:$hand
	set type2 "1"
	set inf [us:process:remove $nick $host $hand "GLOBAL" $chan1 $user $type2 $current_level]

} else {
	set type2 "0"
	set inf [us:process:remove $nick $host $hand $chan $chan1 $user $type $current_level]
	setuser $user XTRA CHANMODIF($chan) $get_time:$hand
}
if {$inf == "1"} {
if {$type2 == "1"} {
	blacktools:tell $nick $host $hand $chan $chan1 us.3 $show_user
		} else {
	blacktools:tell $nick $host $hand $chan $chan1 us.2 $show_user
		}	
	}
}

proc us:process:remove {nick host hand chan chan1 user type level} {
	global black
	set found_it 0
	set not_allowed 0
	set file [open $black(s_file) "r"]
	set database [read -nonewline $file]
	close $file
	set data [split $database "\n"]
foreach line $data {
	set get_channel [lindex [split $line] 0]
	set get_username [lindex [split $line] 1]
	set get_bywho [lindex [split $line] 3]
if {[string equal -nocase $get_channel $chan] && [string equal -nocase $get_username $user]} {
	set found_entry 1
	set get_level [lindex [split $line] 4]
	set not_allowed [s:process:allow $get_level $level]
	}
}

if {$not_allowed == "1"} {
	blacktools:tell $nick $host $hand $chan $chan1 us.4 $user
	return 0
}
	set file [open $black(s_file) "r"]
	set timestamp [clock format [clock seconds] -format {%Y%m%d%H%M%S}]
	set temp "$black(tempdir)/s_temp.$timestamp"
	set tempwrite [open $temp w]
while {[gets $file line] != -1} {
	set tm [lindex [split $line] 2]
	set suspend_chan [lindex [split $line] 0]
	set suspend_user [lindex [split $line] 1]
if {[string equal -nocase $user $suspend_user] && [string equal -nocase $suspend_chan $chan]} {
	suspend:delete:action $suspend_user $suspend_chan
	set found_it 1
	continue
	} else {
	puts $tempwrite $line
	}
}
	close $tempwrite
	close $file
    file rename -force $temp $black(s_file)
	return $found_it
}

############################# auto #################################

proc auto:join {nick host hand chan} {
	global black
if {[matchattr $hand a|a $chan]} {
if {[matchattr $hand q|q $chan]} {
	return
}
	pushmode $chan +o $nick
}	

if {[matchattr $hand g|g $chan]} {
if {[matchattr $hand q|q $chan]} {
	return
}
	pushmode $chan +v $nick
	}	
}

proc auto:process {nick host hand chan chan1 user option global type} {
	global black
	set cmd_status [btcmd:status $chan $hand "auto" 0]
if {$cmd_status == "1"} { 
	return 
}
if {[matchattr $hand q]} { blacktools:tell $nick $host $hand $chan $chan1 gl.glsuspend none
	return
}
if {[matchattr $hand -|q $chan]} { blacktools:tell $nick $host $hand $chan $chan1 gl.suspend none
	return
}
	set show_user $user
if {[onchan $user $chan] && ![validuser $user]} {
	set user [nick2hand $user]
	
}	

if {$user == "" || ![regexp {^[+ -]} $option]} {
switch $type {
	0 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr "auto"
	}
	1 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_nick "auto"
	}
	2 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_priv "auto"
		}
	}
	return 0
}

set verify [string trim $option {"+","-"}]

if {[string equal -nocase $verify "o"] || [string equal -nocase $verify "v"]} {
if {[onchan $user $chan] && ![validuser $user]} {
	set user [nick2hand $user]
}

if {![validuser $user]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomem none	
	return	
}

	set get_status_access [check:access $nick $host $hand $chan $chan1 $user]
if {$get_status_access == "1"} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return
	}
}

if {[string equal -nocase "$global" "global"] && [matchattr $hand nm]} {

if {[string equal -nocase $option "+o"]} {
if {[matchattr $user g]} {
	chattr $user -g
}
	chattr $user +a
	blacktools:tell $nick $host $hand $chan $chan1 auto.12 $show_user
}

if {[string equal -nocase $option "-o"]} {
	chattr $user -a
	blacktools:tell $nick $host $hand $chan $chan1 auto.20 $show_user
}

if {[string equal -nocase $option "+v"]} {
if {[matchattr $user a]} {
	chattr $user -a
}
	chattr $user +g
	blacktools:tell $nick $host $hand $chan $chan1 auto.13 $show_user
}

if {[string equal -nocase $option "-v"]} {
	chattr $user -g
	blacktools:tell $nick $host $hand $chan $chan1 auto.21 $show_user
}
	return
}

if {![matchattr $user -|MAOV $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.noaccess none
	return
}

if {[string equal -nocase $option "+o"]} {
if {[matchattr $user -|g $chan]} {
	chattr $user -|-g $chan
}
	chattr $user -|a $chan
	blacktools:tell $nick $host $hand $chan $chan1 auto.10 $show_user
}

if {[string equal -nocase $option "-o"]} {
	chattr $user -|-a $chan
	blacktools:tell $nick $host $hand $chan $chan1 auto.18 $show_user
}

if {[string equal -nocase $option "+v"]} {
if {[matchattr $user -|a $chan]} {
	chattr $user -|-a $chan
}
	chattr $user -|g $chan
	blacktools:tell $nick $host $hand $chan $chan1 auto.11 $show_user
}

if {[string equal -nocase $option "-v"]} {
	chattr $user -|-g $chan
	blacktools:tell $nick $host $hand $chan $chan1 auto.19 $show_user
	}
}

##############
#########################################################################
##   END                                                               ##
#########################################################################
