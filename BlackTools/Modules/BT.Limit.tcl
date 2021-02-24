#########################################################################
##          BlackTools - The Ultimate Channel Control Script           ##
##                    One TCL. One smart Eggdrop                       ##
#########################################################################
#############################   LIMIT TCL   #############################
#########################################################################
##						                       ##
##   BlackTools  : http://blacktools.tclscripts.net	               ##
##   Bugs report : http://www.tclscripts.net/	                       ##
##   GitHub page : https://github.com/tclscripts/BlackToolS-TCL-script ##
##   Online Help : irc://irc.undernet.org/tcl-help 	               ##
##                 #TCL-HELP / UnderNet                                ##
##                 You can ask in english or romanian                  ##
##					                               														 ##
#########################################################################

proc limit:process {nick host hand chan chan1 why lm type} {
global botnick black
	set cmd_status [btcmd:status $chan $hand "limit" 0]
if {$cmd_status == "1"} {
	return
}
if {[matchattr $hand q]} { blacktools:tell $nick $host $hand $chan $chan1 gl.glsuspend none
	return
}
if {[matchattr $hand -|q $chan]} { blacktools:tell $nick $host $hand $chan $chan1 gl.suspend none
	return
}
if {$why == ""} {
	switch $type {
	0 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr "limit"
	}
	1 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_nick "limit"
	}
	2 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_priv "limit"
		}
	}
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
	set usersnum [llength [chanlist $chan]]

    switch [string tolower $why] {

on {
	set limt [setting:get $chan limit-default]
	setting:set $chan +limit ""
	blacktools:tell $nick $host $hand $chan $chan1 limit.5 none
if {[regexp {^[0-9]+$} $limt] && ($limt != "0")} {
	putserv "MODE $chan +l [expr $usersnum + $limt]"
} else {
	putserv "MODE $chan +l [expr $usersnum + $black(limit:default)]"
	setting:set $chan limit-default $black(limit:default)
	blacktools:tell $nick $host $hand $chan $chan1 limit.6 $black(limit:default)
	}
	set black(limit:$chan:timer_start) 1
}
off {
	setting:set $chan -limit ""
	blacktools:tell $nick $host $hand $chan $chan1 limit.7 none
	putquick "MODE $chan -l"
if {[info exists black(limit:$chan:timer_start)]} {
	unset black(limit:$chan:timer_start)
	}
}

set {
if {![regexp {^[0-9]} $lm]} {
	if {$type == "0"} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr "limit"
}
if {$type == "1"} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_nick "limit"
}
	return
}
if {$lm < 2} { blacktools:tell $nick $host $hand $chan $chan1 limit.9 none
	set lm [expr $lm + 1]
	setting:set $chan limit-default 2
	putserv "MODE $chan +l [expr $usersnum + $lm]"
	blacktools:tell $nick $host $hand $chan $chan1 limit.10 none
	return
}
if {$lm > 500} { blacktools:tell $nick $host $hand $chan $chan1 limit.11 none
	return
}
	setting:set $chan limit-default $lm
	blacktools:tell $nick $host $hand $chan $chan1 limit.12 $lm
	putserv "MODE $chan +l [expr $usersnum + $lm]"
		}
	}
}

proc limit:timer {chans} {
	global black
		set channels ""
foreach chan $chans {
	lappend channels $chan
	}
if {$channels != ""} {
	limit:act $channels 0
	}
}

proc limit:act {channels counter} {
	global black
	set chan [lindex $channels $counter]
if {[botisop $chan]} {
	set usersnum [llength [chanlist $chan]]
	set setnum [setting:get $chan limit-default]
if {$setnum == "0" || $setnum == ""} { set setnum $black(limit:default) }
	set limitcount [expr $usersnum + $setnum]
	set chanmode [getchanmode $chan]
if {[string match "*l*" "$chanmode"]} {
	set lim [lindex $chanmode 1]
} else { set lim 0}
if {$lim != $limitcount} {
if {$usersnum > $lim} { set dif [expr $usersnum - $lim] } else { set dif [expr $lim - $usersnum] }
if {($dif >= $setnum) || ($dif <= $setnum)} {
	puthelp "MODE $chan +l $limitcount"
		}
	}
}
		set cc [expr $counter + 1]
if {[lindex $channels $cc] != ""} {
	utimer 5 [list limit:act $channels $cc]
	}
}

##############
#########################################################################
##   END                                                               ##
#########################################################################
