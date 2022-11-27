#########################################################################
##          BlackTools - The Ultimate Channel Control Script           ##
##                    One TCL. One smart Eggdrop                       ##
#########################################################################
###########################   PRIVATE TCL   #############################
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

proc private:process {nick host hand chan chan1 why user shost type} {
global botnick black
	set cmd_status [btcmd:status $chan $hand "private" 0]
if {$cmd_status == "1"} { 
	return 
}
if {[matchattr $hand q]} { blacktools:tell $nick $host $hand $chan $chan1 gl.glsuspend none
	return
}
if {[matchattr $hand -|q $chan]} { blacktools:tell $nick $host $hand $chan $chan1 gl.suspend none
	return
}
	set flags "-|P"
	set cmd "private"
	set show_user $user

if {$why == ""} {
switch $type {
	0 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr "private"
	}
	1 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_nick "private"
	}
	2 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_priv "private"
		}
	}
	return
}
    switch $why {
	
add {
if {($user == "") && ($type == "0")} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr $cmd
	return
}
if {($user == "") && ($type == "1")} {
		blacktools:tell $nick $host $hand $chan $chan1 gl.instr_nick $cmd
	return
}
if {[onchan $user $chan]} {
	set getuser [nick2hand $user]
if {$getuser != "*"} {
	set user $getuser
	}
}

if {[validuser $user]} {
if {[matchattr $user $flags $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 private.10 $show_user
	return
}
	chattr $user $flags $chan
	blacktools:tell $nick $host $hand $chan $chan1 private.7 $show_user
} else {
if {[onchan $user $chan]} {
	set hosts [getchanhost $user $chan]
	set uhost [return_mask $black(hostdefaultadd) $hosts $user]
	if {[userlist] != ""} {
foreach usr [userlist] {
	set hst [getuser $usr hosts]
foreach hhost $hst {
if {[string match -nocase $hhost $uhost] && (![string match -nocase $usr $user])} {
	blacktools:tell $nick $host $hand $chan $chan1 add.5 $usr
	set user $usr
	set show_user $usr
				}
			}
		}
	}
} else {set uhost $shost}

if {[validuser $user]} {
	chattr $user $flags $chan
	blacktools:tell $nick $host $hand $chan $chan1 private.7 $show_user
	return
}
if {$uhost == ""} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr $cmd
	return 0
}
	adduser $user $uhost
	chattr $user $flags $chan
	blacktools:tell $nick $host $hand $chan $chan1 private.8 "$show_user $uhost"
	}
}

del {
if {($user == "") && ($type == "0")} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr $cmd
	return
}
if {($user == "") && ($type == "1")} {
		blacktools:tell $nick $host $hand $chan $chan1 gl.instr_nick $cmd
	return
}
if {[onchan $user $chan]} {
	set getuser [nick2hand $user]
if {$getuser != "*"} {
	set user $getuser
	}
}

if {[validuser $user]} {
if {[matchattr $user $flags $chan]} {
	chattr $user -|-P $chan
	blacktools:tell $nick $host $hand $chan $chan1 private.9 $show_user
} else { blacktools:tell $nick $host $hand $chan $chan1 private.6 $show_user
		}
	} else { blacktools:tell $nick $host $hand $chan $chan1 gl.nomem none }
}

list {
	set list [join [userlist $flags $chan]]
if {$list == ""} { set list "NONE" }
	blacktools:tell $nick $host $hand $chan $chan1 private.11 none
	blacktools:tell $nick $host $hand $chan $chan1 private.5 $list
}

default {
if {$type == "0"} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr $cmd
	return
}
if {$type == "1"} {
		blacktools:tell $nick $host $hand $chan $chan1 gl.instr_nick $cmd
	return
			}
		}
	}
}

proc private:module {nick host hand chan} {
global black botnick
	set handle [nick2hand $nick]
if {![validchan $chan]} {
	return
}
	set chan1 $chan
if {[setting:get $chan private]} {
if {[matchattr $handle nmo|oMASOVP $chan]} { 
	return 
}
	blacktools:banner:2 $nick "PRIVATE" $chan $chan1 $host "0" ""
	who:chan $chan
	}
}

##############
#########################################################################
##   END                                                               ##
#########################################################################
