#########################################################################
##          BlackTools - The Ultimate Channel Control Script           ##
##                    One TCL. One smart Eggdrop                       ##
#########################################################################
#########################   LOCAL CMDS TCL   ############################
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

################################# disable ###################################

proc reportpublic {nick host hand chan arg} {
	global black
	set type "0"
	set what [lindex [split $arg] 0]
	set message [join [lrange [split $arg] 1 end]]
	set chan1 $chan
if {[regexp {^[&#]} $what]} {
	set chan $what
	set what [lindex [split $arg] 1]
	set message [join [lrange [split $arg] 2 end]]
}
if {[matchattr $hand mno|MAO $chan]} {
	return
}
	report:process $nick $host $hand $chan $chan1 $type $what $message
}

proc report:process {nick host hand chan chan1 type what message} {
	global black
if {[setting:get $chan reportnick]} {
	set cmd_status [btcmd:status $chan $hand "report" 0]
if {$cmd_status == "1"} { 
	return 
}	
if {[matchattr $hand q]} { blacktools:tell $nick $host $hand $chan $chan1 gl.glsuspend none
	return
}
if {[matchattr $hand -|q $chan]} { blacktools:tell $nick $host $hand $chan $chan1 gl.suspend none
	return
}
if {$what == ""} {
if {$type == "0"} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr "report"
}
if {$type == "1"} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_nick "report"
}
if {$type == "2"} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_priv "report"
}
	return
}

if {![validchan $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.novalidchan none
	return
}

if {![botisop $chan]} {
	return
}

if {[isbotnick $what]} {
	return
}

if {[string equal -nocase $what $nick]} {
	blacktools:tell $nick $host $hand $chan $chan1 report.5 none
	return
}
	set number [scan $black(antiflood:cmd) %\[^:\]]
	set timer [scan $black(antiflood:cmd) %*\[^:\]:%s]
	
if {[info exists black(flood:report:$host)]} {
	return
}

foreach tmr [utimers] {
if {[string match "*black(floodreport:$host:$chan)*" [join [lindex $tmr 1]]]} {
	killutimer [lindex $tmr 2]
	}
}

if {![info exists black(floodreport:$host:$chan)]} { 
	set black(floodreport:$host:$chan) 0 
}
	incr black(floodreport:$host:$chan)
	utimer $timer [list unset black(floodreport:$host:$chan)]

if {$black(floodreport:$host:$chan) == "$number"} {
	blacktools:tell $nick $host $hand $chan $chan1 report.1 "30 report"
	set black(flood:report:$host) 1
	utimer 30 [list unset black(flood:report:$host)]
	return
}
	set getlang [string tolower [setting:get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
if {[onchan $what $chan]} {
	set replace(%msg.1%) $what
	set replace(%msg.2%) $nick
	set replace(%msg.8%) $message
if {$message != ""} {
	set output [string map [array get replace] $black(say.$getlang.report.2)]
} else {
	set output [string map [array get replace] $black(say.$getlang.report.3)]
}
	putserv "NOTICE @$chan :$output"
	blacktools:tell $nick $host $hand $chan $chan1 report.4 none
	} else {
	blacktools:tell $nick $host $hand $chan $chan1 gl.usernotonchan $what
		}
	}
}

proc disablepublic {nick host hand chan arg} {
	global black lastbind
	set what [lindex [split $arg] 0]
	set user [lindex [split $arg] 1]
	set chan1 "$chan"
	set type "0"
if {[regexp {^[&#]} $what] && [matchattr $hand nmo|M $what]} {
	set chan "$what"
	set what [lindex [split $arg] 1]
	set user [lindex [split $arg] 2]
}
	set return [blacktools:mychar $lastbind $hand]
if {$return == "0"} {
		return
}
	disable:process $nick $host $hand $chan $chan1 $type $what $user
}

proc disable:process {nick host hand chan chan1 type what user} {
	global black
	set cmd_status [btcmd:status $chan $hand "disable" 0]
if {$cmd_status == "1"} { 
	return 
}
if {[matchattr $hand q]} { blacktools:tell $nick $host $hand $chan $chan1 gl.glsuspend none
	return
}
if {[matchattr $hand -|q $chan]} { blacktools:tell $nick $host $hand $chan $chan1 gl.suspend none
	return
}
	
if {$what == ""} {
if {$type == "0"} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr "disable"
}
if {$type == "1"} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_nick "disable"
}
if {$type == "2"} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_priv "disable"
}
	return
}
	set local_cmds "h o v ho man version mode cycle say act i activ t myset b black stick dr bot n id spam bw vr gag sb banlist banstats k w anunt bt badchan idle limit seen clonescan securemode private guestnick greet leave topic next helped noidle skip topwords q note report"

if {[matchattr $hand -|M $chan] && [lsearch -exact $what $local_cmds] < 0} {
	blacktools:tell $nick $host $hand $chan $chan1 disable.8 $what
	return
}

if {[string equal -nocase $user "global"] && [matchattr $hand nm]} {
	set return_cmd [btcmd:global:set $hand $what 1]
		switch $return_cmd {
	0 {
	blacktools:tell $nick $host $hand $chan $chan1 disable.6 $what
}
	1 {
	blacktools:tell $nick $host $hand $chan $chan1 disable.7 $what
}
	2 {
	blacktools:tell $nick $host $hand $chan $chan1 disable.3 $what
		}
	3 {
	blacktools:tell $nick $host $hand $chan $chan1 disable.8 $what
		}
	}
	return
}

if {$user != ""} {
	btcmd:set:user $nick $host $hand $chan $chan1 $user $what "1"
	return
}
	set return_cmd [btcmd:set $chan $hand $what 1]
	
	switch $return_cmd {
	0 {
	blacktools:tell $nick $host $hand $chan $chan1 disable.1 $what
}
	1 {
	blacktools:tell $nick $host $hand $chan $chan1 disable.2 $what
}
	2 {
	blacktools:tell $nick $host $hand $chan $chan1 disable.3 $what
}
	3 {
	blacktools:tell $nick $host $hand $chan $chan1 disable.8 $what
		}
	}
}

################################# enable ####################################

proc enablepublic {nick host hand chan arg} {
	global black lastbind
	set what [lindex [split $arg] 0]
	set user [lindex [split $arg] 1]
	set chan1 "$chan"
	set type "0"
if {[regexp {^[&#]} $what] && [matchattr $hand nmo|M $what]} {
	set chan "$what"
	set what [lindex [split $arg] 1]
	set user [lindex [split $arg] 2]
}
	set return [blacktools:mychar $lastbind $hand]
if {$return == "0"} {
		return
}
	enable:process $nick $host $hand $chan $chan1 $type $what $user
}

proc enable:process {nick host hand chan chan1 type what user} {
	global black
if {[matchattr $hand q]} { blacktools:tell $nick $host $hand $chan $chan1 gl.glsuspend none
	return
}
if {[matchattr $hand -|q $chan]} { blacktools:tell $nick $host $hand $chan $chan1 gl.suspend none
	return
}

if {$what == ""} {
if {$type == "0"} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr "enable"
}
if {$type == "1"} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_nick "enable"
}
if {$type == "2"} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_priv "enable"
}
	return
}

if {[string equal -nocase $user "global"] && [matchattr $hand nm]} {
	set return_cmd [btcmd:global:set $hand $what 0]
	switch $return_cmd {
	0 {
	blacktools:tell $nick $host $hand $chan $chan1 enable.7 $what
}
	1 {
	blacktools:tell $nick $host $hand $chan $chan1 enable.6 $what
}
	2 {
	blacktools:tell $nick $host $hand $chan $chan1 enable.3 $what
		}
	}
	return
}

if {$user != ""} {
	btcmd:set:user $nick $host $hand $chan $chan1 $user $what "0"
	return
}
	set gl_check [btcmd:gl:status $what]
if {$gl_check == "1" && $type == "0"} {
	blacktools:tell $nick $host $hand $chan $chan1 enable.8 $what
}

if {[matchattr $hand -|M $chan]} {
	set access "MANAGER"
} elseif {[matchattr $hand n]} {
	set access "BOSS"
} elseif {[matchattr $hand m]} {
	set access "OWNER"
} elseif {[matchattr $hand o]} {
	set access "MASTER"
} 

	set disable_level [btcmd:getlevel $chan $what]

if {$access == "MANAGER" && $disable_level == "OWNER"} {
	blacktools:tell $nick $host $hand $chan $chan1 enable.9 $what
	return
}
if {$access == "OWNER" && $disable_level == "BOSS"} {
	blacktools:tell $nick $host $hand $chan $chan1 enable.9 $what
	return
}
if {$access == "MANAGER" && $disable_level == "BOSS"} {
	blacktools:tell $nick $host $hand $chan $chan1 enable.9 $what
	return
}
if {$access == "MANAGER" && $disable_level == "MASTER"} {
	blacktools:tell $nick $host $hand $chan $chan1 enable.9 $what
	return
}
if {$access == "MASTER" && $disable_level == "OWNER"} {
	blacktools:tell $nick $host $hand $chan $chan1 enable.9 $what
	return
}

if {$access == "MASTER" && $disable_level == "BOSS"} {
	blacktools:tell $nick $host $hand $chan $chan1 enable.9 $what
	return
}
	set return_cmd [btcmd:set $chan $hand $what 0]
	switch $return_cmd {
	0 {
	blacktools:tell $nick $host $hand $chan $chan1 enable.2 $what
}
	1 {
	blacktools:tell $nick $host $hand $chan $chan1 enable.1 $what
}
	2 {
	blacktools:tell $nick $host $hand $chan $chan1 enable.3 $what
}
	}
}

################################### t #################################

proc tpublic {nick host hand chan arg} {
global black lastbind
	set topics [join [lrange [split $arg] 0 end]]
	set c [lindex [split $arg] 0]
	set type 0
	set chan1 "$chan"
if {[regexp {^[&#]} $c] && [matchattr $hand nmo|MAO $c]} {
	set chan "$c"
	set topics [join [lrange [split $arg] 1 end]]
}
	set return [blacktools:mychar $lastbind $hand]
if {$return == "0"} {
		return
}
	t:process $nick $host $hand $chan $chan1 $topics $type
}

proc t:process {nick host hand chan chan1 topics type} {
global botnick black
	set cmd_status [btcmd:status $chan $hand "t" 0]
if {$cmd_status == "1"} { 
	return
}
if {[matchattr $hand q]} { blacktools:tell $nick $host $hand $chan $chan1 gl.glsuspend none
	return
}
if {[matchattr $hand -|q $chan]} { blacktools:tell $nick $host $hand $chan $chan1 gl.suspend none
	return
}

if {$topics == ""} {
switch $type {
	0 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr "t"
	}
	1 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_nick "t"
	}
	2 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_priv "t"
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

if {[setting:get $chan showhandle]} {
	set topics "($hand) $topics"
	} else { set topics "$topics" 
}

if {[setting:get $chan xonly]} {
	if {![botisop $chan]} {
	putserv "PRIVMSG $black(chanserv) :topic $chan $topics"
	return
	}
}

if {![botisop $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.noop none
	return
}
	putserv "TOPIC $chan :$topics"
}

################################# i ###################################

proc ipublic {nick host hand chan arg} {
global botnick black lastbind
	set type 0
	set chan1 "$chan"
	set inick [lindex [split $arg] 0]
	set c [lindex [split $arg] 0]
if {[regexp {^[&#]} $c] && [matchattr $hand nmo|AVOM $c]} {
	set chan "$c"
	set inick [lindex [split $arg] 1]
}
	set return [blacktools:mychar $lastbind $hand]
if {$return == "0"} {
		return
}
	i:process $nick $host $hand $chan $chan1 $inick $type
}

proc i:process {nick host hand chan chan1 inick type} {
global botnick black
	set show_inick $inick
	set cmd_status [btcmd:status $chan $hand "i" 0]
if {$cmd_status == "1"} { 
	return
}
if {[matchattr $hand q]} { blacktools:tell $nick $host $hand $chan $chan1 gl.glsuspend none
	return
}
if {[matchattr $hand -|q $chan]} { blacktools:tell $nick $host $hand $chan $chan1 gl.suspend none
	return
}

if {$inick == "" && $chan != $chan1} {
	set inick $nick
}

if {$inick == ""} {
switch $type {
	0 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr "i"
	}
	1 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_nick "i"
	}
	2 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_priv "i"
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

if {![botisop $chan]} {	
	blacktools:tell $nick $host $hand $chan $chan1 gl.noop none
	return
}
	putserv "USERHOST :$inick"
	bind RAW - 302 i:online:check
	set ::getnick $nick
	set ::hand $hand
	set ::host $host
	set ::chan $chan
	set ::chan1 $chan1
	set ::type $type
	set ::inick $inick
	set ::show_inick $show_inick
}

proc i:online:check {from keyword arguments } {
	global black
	set anick $::getnick
	set hand $::hand
	set host $::host
	set chan $::chan
	set chan1 $::chan1
	set inick $::inick
	set show_inick $::show_inick 
	
set hostname [lindex [split $arguments] 1]
if {[regexp {\+} $hostname]} {
	set split_host [split $hostname "+"]
} else {
	set split_host [split $hostname "-"]
}
	set mask [lindex $split_host 1]
	set getnick [string map {
			"=" ""
			":" ""
			} [lindex $split_host 0]]
if {$getnick != ""} {
	set replace(%nick%) $anick
	set replace(%chan%) $chan
	set getlang [string tolower [getuser $hand XTRA OUTPUT_LANG]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
	set getmsg $black(say.$getlang.i.7)
if {[info exists black(say.$getlang.i.7)]} {
	set imessage [string map [array get replace] $getmsg]
}

if {$inick != ""} {
if {[onchan $inick $chan]} {
	blacktools:tell $anick $host $hand $chan $chan1 i.1 $show_inick
	return
}
	putserv "INVITE $inick $chan"
	putserv "PRIVMSG $inick :$imessage"
	blacktools:tell $anick $host $hand $chan $chan1 i.2 $show_inick
		}
	} else {
	blacktools:tell $anick $host $hand $chan $chan1 gl.notonline "$inick"
}
	check:if:bind "i:online:check" "302"
}

############################### purge ###############################

proc purgepublic {nick host hand chan arg} {
global botnick black lastbind
	set c [lindex [split $arg] 0]
	set reason [join [lrange [split $arg] 0 end]]
	set chan1 "$chan"
if {[regexp {^[&#]} $c] && [matchattr $hand nmo|- $chan]} {
	set chan "$c"
	set reason [join [lrange [split $arg] 1 end]]
}
if {$reason == ""} {
	blacktools:tell $nick $host $hand $chan $chan1 purge.1 none
	return
}
	set return [blacktools:mychar $lastbind $hand]
if {$return == "0"} {
		return
}
	purge:process $nick $host $hand $chan $chan1 $reason
}

proc purge:process {nick host hand chan chan1 reason} {
	global black
	set cmd_status [btcmd:status $chan $hand "purge" 0]
if {$cmd_status == "1"} { 
	return 
}
if {[matchattr $hand q]} { blacktools:tell $nick $host $hand $chan $chan1 gl.glsuspend none
	return
}
if {[matchattr $hand -|q $chan]} { blacktools:tell $nick $host $hand $chan $chan1 gl.suspend none
	return
}
if {!($black(homechan) == "") && ![string equal -nocase $black(homechan) "#no_home_chan"]} {
if {[string equal -nocase $chan $black(homechan)]} {
	blacktools:tell:prv $nick $host $hand delchan.5 $chan
	return
	}
}
	channel remove $chan
	delchan:all $chan
	putserv "PART $chan :PURGED by $hand :$reason"
}

################################### v #################################


proc vpublic {nick host hand chan arg} {
global botnick black lastbind
	set c [lindex [split $arg] 0]
	set arg [split $arg]
	set chan1 "$chan"
if {[regexp {^[&#]} $c] && [matchattr $hand nmo|VAOM $c]} {
	set chan "$c"
	set arg [lrange [split $arg] 1 end]
}
	set return [blacktools:mychar $lastbind $hand]
if {$return == "0"} {
		return
}
	v:process $nick $host $hand $chan $chan1 $arg
}

proc v:process {nick host hand chan chan1 arg} {
global botnick black
	set xban 0
if {[matchattr $hand q]} { blacktools:tell $nick $host $hand $chan $chan1 gl.glsuspend none
	return
}
if {[matchattr $hand -|q $chan]} { blacktools:tell $nick $host $hand $chan $chan1 gl.suspend none
	return
}
	set cmd_status [btcmd:status $chan $hand "v" 0]
if {$cmd_status == "1"} { 
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

if {![botisop $chan] && ![setting:get $chan xonly]} { blacktools:tell $nick $host $hand $chan $chan1 gl.noop none
	return
}

if {$arg == ""} {
	set arg $nick
}

if {[setting:get $chan xonly] && [onchan $black(chanserv) $chan]} {
	set xban 1
}

if {[string equal -nocase $arg "+"]} {
	set noxonly 0
	set userlist ""
	foreach voicenick [chanlist $chan] {
if {[isvoice $voicenick $chan]} { continue }
if {[isbotnick $voicenick]} { continue }
if {$xban == "0"} {
	set noxonly 1
	pushmode $chan +v $voicenick	
		}
	}
if {$noxonly == "0"} {
foreach getuser [chanlist $chan] {
if {![isvoice $getuser $chan]} {
	lappend userlist $getuser
			}
		}
		putserv "PRIVMSG $black(chanserv) :voice $chan [join $userlist]"
	}	
	return
}

if {[string equal -nocase $arg "-"]} {
	set noxonly 0
	set userlist ""
	foreach voicenick [chanlist $chan] {
if {[isbotnick $voicenick]} { continue }
if {$xban == "0"} {
	set noxonly 1
	pushmode $chan -v $voicenick	
		}
	}
if {$noxonly == "0"} {
foreach getuser [chanlist $chan] {
if {[isvoice $getuser $chan]} {
	lappend userlist $getuser
			}
		}
		putserv "PRIVMSG $black(chanserv) :devoice $chan [join $userlist]"
	}	
	return
}
	set voicelist ""
	set devoicelist ""
foreach voicenick [split $arg] {
if {[isbotnick $voicenick]} { continue }
if {[isvoice [join $voicenick] $chan]} {
if {$xban == "0"} {
	pushmode $chan -v [join $voicenick]
} else { lappend devoicelist $voicenick }
} else {
if {$xban == "0"} {
	pushmode $chan +v [join $voicenick]
			} else { lappend voicelist $voicenick }
		}
	}
if {$devoicelist != ""} {
	putserv "PRIVMSG $black(chanserv) :devoice $chan [join $devoicelist]"
}
if {$voicelist != ""} {
	putserv "PRIVMSG $black(chanserv) :voice $chan [join $voicelist]"
	}
}

################################## ho #################################

proc hopublic {nick host hand chan arg} {
global botnick black lastbind
	set c [lindex [split $arg] 0]
	set arg [split $arg]
	set chan1 "$chan"
if {[regexp {^[&#]} $c] && [matchattr $hand nmo|AOM $c]} {
	set chan "$c"
	set arg [lrange [split $arg] 1 end]
}
	set return [blacktools:mychar $lastbind $hand]
if {$return == "0"} {
		return
}
	ho:process $nick $host $hand $chan $chan1 $arg
}

proc ho:process {nick host hand chan chan1 arg} {
global botnick black
	set xban 0
if {[matchattr $hand q]} { blacktools:tell $nick $host $hand $chan $chan1 gl.glsuspend none
	return
}
if {[matchattr $hand -|q $chan]} { blacktools:tell $nick $host $hand $chan $chan1 gl.suspend none
	return
}
	set cmd_status [btcmd:status $chan $hand "ho" 0]
if {$cmd_status == "1"} { 
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
if {![botisop $chan] && ![setting:get $chan xonly]} { blacktools:tell $nick $host $hand $chan $chan1 gl.noop none
 return
}

if {$arg == ""} {
set arg $nick
}

if {[setting:get $chan xonly] && [onchan $black(chanserv) $chan]} {
	set xban 1
}

if {[string equal -nocase $arg "+"]} {
	foreach hopnick [chanlist $chan] {
if {[ishalfop $hopnick $chan]} { continue }
if {$xban == "0"} {
	pushmode $chan +h $hopnick
		} else { return }
	}
	return
}

if {[string equal -nocase $arg "-"]} {
	foreach hopnick [chanlist $chan] {
if {![ishalfop $hopnick $chan]} { continue }
if {[isbotnick $hopnick]} { continue }
if {[onchan $black(chanserv) $chan] && ![setting:get $chan xonly]} {
	blacktools:tell $nick $host $hand $chan $chan1 massdeop.429 $black(chanserv)
	return
		}
if {$xban == "0"} {
	pushmode $chan -h $hopnick	
		} else { return }
	}
	return
}

foreach hopnick [split $arg] {
if {[isbotnick $hopnick]} { continue }
if {[ishalfop $hopnick $chan]} {
if {$xban == "0"} {
	pushmode $chan -h $hopnick
} else { return }
} else {
if {![setting:get $chan xonly]} {
pushmode $chan +h $hopnick
			} else { return }
		}
	}
}

################################## o ##################################

proc opublic {nick host hand chan arg} {
global botnick black lastbind
	set c [lindex [split $arg] 0]
	set arg [split $arg]
	set chan1 "$chan"
if {[regexp {^[&#]} $c] && [matchattr $hand nmo|AOM $c]} {
	set chan "$c"
	set arg [lrange [split $arg] 1 end]
}
	set return [blacktools:mychar $lastbind $hand]
if {$return == "0"} {
		return
}
	o:process $nick $host $hand $chan $chan1 $arg
}


proc o:process {nick host hand chan chan1 arg} {
global botnick black
	set xban 0
if {[matchattr $hand q]} { blacktools:tell $nick $host $hand $chan $chan1 gl.glsuspend none
	return
}
if {[matchattr $hand -|q $chan]} { blacktools:tell $nick $host $hand $chan $chan1 gl.suspend none
	return
}
	set cmd_status [btcmd:status $chan $hand "o" 0]
if {$cmd_status == "1"} { 
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

if {![botisop $chan] && ![setting:get $chan xonly]} { blacktools:tell $nick $host $hand $chan $chan1 gl.noop none
 return
}

if {$arg == ""} {
set arg $nick
}

if {[setting:get $chan xonly] && [onchan $black(chanserv) $chan]} {
	set xban 1
}

if {[string equal -nocase $arg "+"]} {
	set userlist ""
	set noxonly 0
	foreach opnick [chanlist $chan] {
if {[isop $opnick $chan]} { continue }
if {$xban == "0"} {
	set noxonly 1
	pushmode $chan +o $opnick
		}
	}
if {$noxonly == "0"} {
foreach getuser [chanlist $chan] {
if {![isop $getuser $chan]} {
	lappend userlist $getuser
		}
	}
		putserv "PRIVMSG $black(chanserv) :op $chan [join $userlist]"
	}	
	return
}

if {[string equal -nocase $arg "-"]} {
	set userlist ""
	set noxonly 0
	foreach opnick [chanlist $chan] {
if {![isop $opnick $chan]} { continue }
if {[isbotnick $opnick]} { continue }
if {[onchan $black(chanserv) $chan] && ![setting:get $chan xonly]} {
	blacktools:tell $nick $host $hand $chan $chan1 o.1 $black(chanserv)
	return
}
if {$xban == "0"} {
	set noxonly 1
	pushmode $chan -o $opnick	
	}
}
if {$noxonly == "0"} {
foreach getuser [chanlist $chan] {
if {[isop $getuser $chan]} {
	lappend userlist $getuser
		}
	}
		putserv "PRIVMSG $black(chanserv) :deop $chan [join $userlist]"
	}
	return
}
	set oplist ""
	set deoplist ""
foreach opnick [split $arg] {
if {[isbotnick $opnick]} { continue }
if {[isop [join $opnick] $chan]} {
if {$xban == "0"} {
pushmode $chan -o [join $opnick]
} else { lappend deoplist $opnick } 
} else {
if {$xban == "0"} {
pushmode $chan +o [join $opnick]
			} else { lappend oplist $opnick }
		}
	}
if {$deoplist != ""} {
	putserv "PRIVMSG $black(chanserv) :deop $chan [join $deoplist]"
}
if {$oplist != ""} {
	putserv "PRIVMSG $black(chanserv) :op $chan [join $oplist]"
	}
}

################################ say ##################################

proc saypublic {nick host hand chan arg} {
global black lastbind
	set text [join [lrange [split $arg] 0 end]]
	set c [lindex [split $arg] 0]
	set type 0
	set chan1 "$chan"
if {[regexp {^[&#]} $c] && [matchattr $hand nmo|MA $c]} {
	set chan "$c"
	set text [join [lrange [split $arg] 1 end]]
}
	set return [blacktools:mychar $lastbind $hand]
if {$return == "0"} {
		return
}
	say:process $nick $host $hand $chan $chan1 $text $type
}

proc say:process {nick host hand chan chan1 text type} {
global botnick black
	set cmd_status [btcmd:status $chan $hand "say" 0]
if {$cmd_status == "1"} { 
	return
}
if {[matchattr $hand q]} { blacktools:tell $nick $host $hand $chan $chan1 gl.glsuspend none
	return
}
if {[matchattr $hand -|q $chan]} { blacktools:tell $nick $host $hand $chan $chan1 gl.suspend none
	return
}

if {$text == ""} {
switch $type {
	0 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr "say"
	}
	1 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_nick "say"
	}
	2 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_priv "say"
		}
	}
	return 0
}

if {![validchan $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.novalidchan none
	return
}

if {![onchan $botnick $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.notonchan none
	return
}
	putserv "PRIVMSG $chan :$text"
}

################################ act ##################################

proc actpublic {nick host hand chan arg} {
global black lastbind
	set text [join [lrange [split $arg] 0 end]]
	set c [lindex [split $arg] 0]
	set type 0
	set chan1 "$chan"
if {[regexp {^[&#]} $c] && [matchattr $hand nmo|AM $c]} {
	set chan "$c"
	set text [join [lrange [split $arg] 1 end]]
}
	set return [blacktools:mychar $lastbind $hand]
if {$return == "0"} {
		return
}
	act:process $nick $host $hand $chan $chan1 $text $type
}

proc act:process {nick host hand chan chan1 text type} {
global botnick black
	set cmd_status [btcmd:status $chan $hand "act" 0]
if {$cmd_status == "1"} { 
	return
}
if {[matchattr $hand q]} { blacktools:tell $nick $host $hand $chan $chan1 gl.glsuspend none
	return
}

if {[matchattr $hand -|q $chan]} { blacktools:tell $nick $host $hand $chan $chan1 gl.suspend none
	return
}
if {$text == ""} {
switch $type {
	0 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr "act"
	}
	1 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_nick "act"
	}
	2 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_priv "act"
		}
	}
	return 0
}

if {![validchan $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.novalidchan none
	return
}

if {![onchan $botnick $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.notonchan none
	return
}
	putserv "PRIVMSG $chan :\001ACTION $text\001"
}



############################## version ################################

proc versionpublic {nick host hand chan arg} {
global botnick black lastbind
	set chan1 "$chan"
	set return [blacktools:mychar $lastbind $hand]
if {$return == "0"} {
		return
}
	version:process $nick $host $hand $chan $chan1
}

proc version:process {nick host hand chan chan1} {
global botnick black
	set cmd_status [btcmd:status $chan $hand "version" 0]
if {$cmd_status == "1"} { 
	return
}
	blacktools:tell $nick $host $hand $chan $chan1 version.1 $black(vers)
}

############################### cycle #################################

proc cycle:process {nick host hand chan chan1 reason} {
global black botnick
	set cmd_status [btcmd:status $chan $hand "cycle" 0]
if {$cmd_status == "1"} { 
	return
}
	set getlang [string tolower [setting:get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
if {[matchattr $hand q]} { blacktools:tell $nick $host $hand $chan $chan1 gl.glsuspend none
return
}
if {[matchattr $hand -|q $chan]} { blacktools:tell $nick $host $hand $chan $chan1 gl.suspend none
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

if {[regexp {^[0-9]} $reason] && [matchattr $hand nmo|M $chan]} {
	set replace(%msg.1%) $reason
	putserv "PART $chan :[string map [array get replace] $black(say.$getlang.cycle.2)]"
	channel set $chan +inactive
	utimer $reason [list channel set $chan -inactive]
	return
}

if {$reason == ""} { 
	set reason "$black(say.$getlang.cycle.1)" 
	set len [llength $reason] 
    set random [expr int(rand()*$len)] 
    set reason [lindex $reason $random] 
}
	putserv "PART $chan :$reason"
	putserv "JOIN $chan"
}

proc cyclepublic {nick host hand chan arg} {
global black lastbind
	set reason [join [lrange [split $arg] 0 end]]	
	set c [lindex [split $arg] 0]
	set chan1 "$chan"
if {[regexp {^[&#]} $c] && [matchattr $hand nmo|OMA $c]} {
	set chan "$c"
	set reason [join [lrange [split $arg] 1 end]]
}
	set return [blacktools:mychar $lastbind $hand]
if {$return == "0"} {
		return
}
	cycle:process $nick $host $hand $chan $chan1 $reason
}

################################### mode ######################################

proc modepublic {nick host hand chan arg} {
global black lastbind
	set modes [lrange [split $arg] 0 end]
	set chan1 "$chan"
	set type 0
if {[regexp {^[&#]} $modes] && [matchattr $hand nmo|- $chan]} {
	set chan "$modes"
	set modes [lrange [split $arg] 1 end]
}
	set return [blacktools:mychar $lastbind $hand]
if {$return == "0"} {
		return
}
	mode:process $nick $host $hand $chan $chan1 $modes $type
}

proc mode:process {nick host hand chan chan1 modes type} {
global botnick black
	set cmd_status [btcmd:status $chan $hand "mode" 0]
if {$cmd_status == "1"} { 
	return
}
if {[matchattr $hand q]} { blacktools:tell $nick $host $hand $chan $chan1 gl.glsuspend none
return
}
if {[matchattr $hand -|q $chan]} { blacktools:tell $nick $host $hand $chan $chan1 gl.suspend none
	return
}
if {$modes == ""} {
switch $type {
	0 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr "mode"
	}
	1 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_nick "mode"
	}
	2 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_priv "mode"
		}
	}
	return 0
}

if {![validchan $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.novalidchan none
	return
}

if {![onchan $botnick $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.notonchan none
	return
}

if {![botisop $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.noop none
	return
}

if {![regexp {^[+ -]} $modes]} {
switch $type {
	0 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr "mode"
	}
	1 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_nick "mode"
	}
	2 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_priv "mode"
		}
	}
	return
}
	blacktools:tell $nick $host $hand $chan $chan1 mode.6 $modes
	putserv "MODE $chan $modes"
	channel set $chan chanmode $modes
}

################################## myset #############################

proc mysetpublic {nick host hand chan arg} {
global black lastbind
	set type 0
	set chan1 "$chan"	
	set flags [lindex [split $arg] 0]
	set typez [lindex [split $arg] 1]
	set chan2 [lindex [split $arg] 2]
	set arg [join [lrange [split $arg] 1 end]]
	set return [blacktools:mychar $lastbind $hand]
if {$return == "0"} {
		return
}
	myset:process $nick $host $hand $chan $chan1 $flags $typez $type $chan2 $arg
}

proc myset:process {nick host hand chan chan1 flags typez type chan2 arg} {
global black
	set cmd_status [btcmd:status $chan $hand "myset" 0]
if {$cmd_status == "1"} { 
	return
}
	set show_greet $arg
	set show_typez $typez
if {$flags == ""} {
switch $type {
	0 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr "myset"
	}
	1 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_nick "myset"
	}
	2 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_priv "myset"
		}
	}
	return 0
}
switch -exact -- [string tolower $flags] {
lang {
if {$typez == ""} {
switch $type {
	0 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr "myset"
	}
	1 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_nick "myset"
	}
	2 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_priv "myset"
		}
	}
	return
}
if {[string equal -nocase $typez "reset"]} {
	setuser $hand XTRA OUTPUT_LANG
	blacktools:tell $nick $host $hand $chan $chan1 myset.11 $flags
	return
}
if {[string equal -nocase $typez "show"]} {
	set get [getuser $hand XTRA OUTPUT_LANG]
	blacktools:tell $nick $host $hand $chan $chan1 myset.12 "$flags $get"
	return
}

if {![file exists "$black(dirname)/BlackTools/lang/BT.[string tolower $typez].lang.tcl"]} {
	blacktools:tell $nick $host $hand $chan $chan1 myset.5 \002[string tolower $typez]\002
	return
}
	setuser $hand XTRA OUTPUT_LANG $typez
	blacktools:tell $nick $host $hand $chan $chan1 myset.1 $typez
	return
}
addhost {
if {[matchattr $hand mno]} {
	set found_it 0
	set found_user ""
if {$typez == ""} {
switch $type {
	0 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr "myset"
	}
	1 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_nick "myset"
	}
	2 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_priv "myset"
		}
	}
	return
}

foreach u [userlist] {
	set h [getuser $u hosts]
foreach hs $h {
if {[string match -nocase $hs $typez]} {
	set found_it 1
	set found_user $u
		}
	}
}
if {$found_it == "1"} {
	blacktools:tell $nick $host $hand $chan $chan1 addhost.1 "[split $found_user] $typez"
	return
}
	setuser $hand HOSTS $typez
	blacktools:tell $nick $host $hand $chan $chan1 myset.7 $typez
	}
}

delhost {
if {[matchattr $hand mno]} {
	set found_it 0
if {$typez == ""} {
switch $type {
	0 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr "myset"
	}
	1 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_nick "myset"
	}
	2 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_priv "myset"
		}
	}
	return
}
	set h [getuser $hand hosts]
foreach hs $h {
if {[string match -nocase $hs $typez]} {
	set found_it 1
	}
}

if {$found_it == "0"} {
	blacktools:tell $nick $host $hand $chan $chan1 myset.9 $typez
	return
}
	delhost $hand $typez
	blacktools:tell $nick $host $hand $chan $chan1 myset.8 $typez
	}
}

greet {
if {$typez == ""} {
switch $type {
	0 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr "myset"
	}
	1 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_nick "myset"
	}
	2 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_priv "myset"
		}
	}
	return
}

if {[string equal -nocase $typez "show"]} {
	set get [getuser $hand XTRA INFO]
	blacktools:tell $nick $host $hand $chan $chan1 myset.12 "$flags $get"
	return
}

if {[string equal -nocase $typez "reset"]} {
	setuser $hand XTRA INFO
	blacktools:tell $nick $host $hand $chan $chan1 myset.11 $flags
	return
}
	setuser $hand INFO $arg
	blacktools:tell $nick $host $hand $chan $chan1 myset.6 $show_greet
}

auto {
if {[matchattr $hand mno|M $chan]} {
if {[regexp {^[&#]} $chan2]} {
	set actchan $chan2
} else {
if {[string equal -nocase $chan2 "global"]} {
	set actchan "global"
} else {
	set actchan $chan
	}
}
if {![regexp {^[+ -]} $typez]} {
switch $type {
	0 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr "myset"
	}
	1 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_nick "myset"
	}
	2 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_priv "myset"
		}
	}
	return
}
	set verify [string trim $typez {"+","-"}]

if {![string equal -nocase $verify "o"] && ![string equal -nocase $verify "v"]} {
if {$type == "0"} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr "myset"
}
if {$type == "1"} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_nick "myset"
	}
	return
}
if {[matchattr $hand mno] && [string equal -nocase "$actchan" "global"]} {
if {[string match -nocase $typez "+o"]} {
if {[matchattr $hand g]} {
	chattr $hand -g
}
	chattr $hand +a
	blacktools:tell $nick $host $hand $actchan $chan1 auto.6 $hand
}
if {[string match -nocase $typez "-o"]} {
	chattr $hand -a 
	blacktools:tell $nick $host $hand $actchan $chan1 auto.14 $hand
}
if {[string match -nocase $typez "+v"]} {
if {[matchattr $hand a]} {
	chattr $hand -a
}
	chattr $hand +g
	blacktools:tell $nick $host $hand $actchan $chan1 auto.7 $hand
}
if {[string match -nocase $typez "-v"]} {
	chattr $hand -g
	blacktools:tell $nick $host $hand $actchan $chan1 auto.15 $hand
	}
	return
}
if {[string match -nocase $typez "+o"]} {
if {[matchattr $hand -|g $actchan]} {
	chattr $hand -|-g $actchan
}
	chattr $hand -|a $actchan
	blacktools:tell $nick $host $hand $actchan $chan1 auto.8 $hand
}
if {[string match -nocase $typez "-o"]} {
	chattr $hand -|-a $actchan
	blacktools:tell $nick $host $hand $actchan $chan1 auto.16 $hand
}
if {[string match -nocase $typez "+v"]} {
if {[matchattr $hand -|a $actchan]} {
	chattr $hand -|-a $actchan
}
	chattr $hand -|g $actchan
	blacktools:tell $nick $host $hand $actchan $chan1 auto.9 $hand
}
if {[string match -nocase $typez "-v"]} {
	chattr $hand -|-g $actchan
	blacktools:tell $nick $host $hand $actchan $chan1 auto.17 $hand
		}
	}
}

handle {
if {[matchattr $hand mno|M $chan]} {
if {$typez == ""} {
switch $type {
	0 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr "myset"
	}
	1 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_nick "myset"
	}
	2 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_priv "myset"
		}
	}
	return
	}
if {[string equal -nocase $typez "show"]} {
	blacktools:tell $nick $host $hand $chan $chan1 myset.12 "$flags $hand"
	return
}
if {[validuser $typez]} {
	blacktools:tell $nick $host $hand $chan $chan1 chuser.3 none
return
}	
	blacktools:tell $nick $host $hand $chan $chan1 myset.4 "$show_typez"
	chhandle $hand $typez
	}
}

noteexpire {
if {$typez == ""} {
switch $type {
	0 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr "myset"
	}
	1 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_nick "myset"
	}
	2 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_priv "myset"
		}
	}
	return
}

if {[string equal -nocase $typez "reset"]} {
	setuser $hand XTRA NOTE_EXPIRE
	blacktools:tell $nick $host $hand $chan $chan1 myset.11 $flags
	return
}
if {[string equal -nocase $typez "show"]} {
	set get [getuser $hand XTRA NOTE_EXPIRE]
	blacktools:tell $nick $host $hand $chan $chan1 myset.12 "$flags $get"
	return
}

if {![regexp {^[0-9]} $typez]} {
	switch $type {
	0 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr "myset"
	}
	1 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_nick "myset"
	}
	2 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_priv "myset"
		}
	}
	return
}
	set return_time [time_return_minute $typez]
if {$return_time == "-1"} {
switch $type {
	0 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr "myset"
	}
	1 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_nick "myset"
	}
	2 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_priv "myset"
		}
	}
	return
}
	setuser $hand XTRA NOTE_EXPIRE [string tolower $typez]
	blacktools:tell $nick $host $hand $chan $chan1 myset.13 $typez
}


autoinvite {
	switch [string tolower $typez] {
	
	show {
	set get [getuser $hand XTRA AUTOINVITE]
if {$get == "1"} { set get "on"} else { set get "off" }
	blacktools:tell $nick $host $hand $chan $chan1 myset.12 "$flags $get"
}

	reset {
	setuser $hand XTRA AUTOINVITE
	blacktools:tell $nick $host $hand $chan $chan1 myset.11 $flags
}

	on {
	setuser $hand XTRA AUTOINVITE 1
	blacktools:tell $nick $host $hand $chan $chan1 myset.3 $typez
}
	off {
	setuser $hand XTRA AUTOINVITE 0
	blacktools:tell $nick $host $hand $chan $chan1 myset.3 $typez
		}
	}
}

output {
	switch [string tolower $typez] {
	show {
	set get [getuser $hand XTRA OUTPUT_TYPE]
if {$get == "0"} { set get "NOTICE" } elseif {$get == "1"} { set get "CHAN" } elseif {$get == "2"} { set get "MSG" } else { set get "NOTICE"}
	blacktools:tell $nick $host $hand $chan $chan1 myset.12 "$flags $get"
}

	reset {
	setuser $hand XTRA OUTPUT_TYPE
	blacktools:tell $nick $host $hand $chan $chan1 myset.11 $flags
}
	notice {
	setuser $hand XTRA OUTPUT_TYPE 0
	blacktools:tell $nick $host $hand $chan $chan1 myset.2 $typez
}
	chan {
	setuser $hand XTRA OUTPUT_TYPE 1
	blacktools:tell $nick $host $hand $chan $chan1 myset.2 $typez
}
	msg {
	setuser $hand XTRA OUTPUT_TYPE 2
	blacktools:tell $nick $host $hand $chan $chan1 myset.2 $typez
		}
	}
}

colors {
if {[matchattr $hand mno|MAOV $chan]} {
if {$typez == ""} {
switch $type {
	0 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr "myset"
	}
	1 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_nick "myset"
	}
	2 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_priv "myset"
		}
	}
	return
}
if {[string equal -nocase $typez "reset"]} {
	setuser $hand XTRA OUTPUT_COLORS
	blacktools:tell $nick $host $hand $chan $chan1 myset.11 $flags
	return
}
if {[string equal -nocase $typez "show"]} {
	set get [getuser $hand XTRA OUTPUT_COLORS]
	blacktools:tell $nick $host $hand $chan $chan1 myset.12 "$flags $get"
	return
}
	set validcolors "bold underline red blue green yellow orange cyan grey brown purple pink black"
	set notvalid 0
if {[llength $arg] > 4 || [llength $arg] < 4} {
	blacktools:tell $nick $host $hand $chan $chan1 myset.14 none
	return
		}
foreach color $arg {
if {[lsearch [string tolower $color] $validcolors] < -1} {
	set notvalid 1
	}
}
if {$notvalid == "1"} {
	blacktools:tell $nick $host $hand $chan $chan1 myset.15 none
	return
}
	blacktools:tell $nick $host $hand $chan $chan1 myset.16 $show_greet
	setuser $hand XTRA OUTPUT_COLORS [string tolower $arg]
	}
}

mychan {
if {[matchattr $hand mno|MAOV $chan]} {
if {$typez == ""} {
switch $type {
	0 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr "myset"
	}
	1 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_nick "myset"
	}
	2 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_priv "myset"
		}
	}
	return
}
if {[string equal -nocase $typez "reset"]} {
	setuser $hand XTRA MYCHAN
	blacktools:tell $nick $host $hand $chan $chan1 myset.11 $flags
	return
}
if {[string equal -nocase $typez "show"]} {
	set get [getuser $hand XTRA MYCHAN]
	blacktools:tell $nick $host $hand $chan $chan1 myset.12 "$flags $get"
	return
}

if {![regexp {^[&#]} $typez]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.novalidchan none
	return
		}
if {![validchan $typez]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.novalidchan none
	return
		}
	setuser $hand XTRA MYCHAN [string tolower $typez]
	blacktools:tell $nick $host $hand $chan $chan1 myset.10 $typez
	}
}

mychar {
if {[matchattr $hand mno|MAOV $chan]} {
if {$typez == ""} {
switch $type {
	0 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr "myset"
	}
	1 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_nick "myset"
	}
	2 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_priv "myset"
		}
	}
	return
}
if {[string equal -nocase $typez "reset"]} {
	setuser $hand XTRA MYCHAR
	blacktools:tell $nick $host $hand $chan $chan1 myset.11 $flags
	return
}
if {[string equal -nocase $typez "show"]} {
	set get [getuser $hand XTRA MYCHAR]
	blacktools:tell $nick $host $hand $chan $chan1 myset.12 "$flags $get"
	return
}
if {[lsearch -exact $black(cmdchar) $typez] < 0} {
	blacktools:tell $nick $host $hand $chan $chan1 myset.17 $black(cmdchar)
	return	
}
	setuser $hand XTRA MYCHAR [string tolower $typez]
	blacktools:tell $nick $host $hand $chan $chan1 myset.18 $typez
	}
}

default {
switch $type {
	0 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr "myset"
	}
	1 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_nick "myset"
	}
	2 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_priv "myset"
				}
			}
		}
	}
}

################################# set #################################

proc setpublic {nick host hand chan arg} {
global black lastbind
	set flags [lindex [split $arg] 0]
	set type [join [lrange [split $arg] 1 end]]
	set chan1 "$chan"
	set type1 0
	set return [blacktools:mychar $lastbind $hand]
if {$return == "0"} {
		return
}
if {[regexp {^[&#]} $flags] && [matchattr $hand nmo|M $chan]} {
	set chan "$flags"
	set flags [lindex [split $arg] 1]
	set type [join [lrange [split $arg] 2 end]]
}
if {[string equal -nocase $flags "global"] && [matchattr $hand nm]} {
	set flags [lindex [split $arg] 1]
	set type [join [lrange [split $arg] 2 end]]
foreach c [channels] {
	set:process $nick $host $hand $c $chan1 $flags $type $type1
			}
		return
	}
	set:process $nick $host $hand $chan $chan1 $flags $type $type1
}

proc set:process {nick host hand chan chan1 flags type type1} {
global botnick black
	set cmd_status [btcmd:status $chan $hand "set" 0]
if {$cmd_status == "1"} { 
	return 
}
	set getlang [string tolower [setting:get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
	set flags [string tolower $flags]
if {[matchattr $hand q]} { 
	blacktools:tell $nick $host $hand $chan $chan1 gl.glsuspend none
	return
}
if {[matchattr $hand -|q $chan]} { 
	blacktools:tell $nick $host $hand $chan $chan1 gl.suspend none
	return
}
	set choption [check_option $nick $host $hand $chan $chan1 $flags $type1 "$flags"]
if {$choption == "0"} { return }
if {![validchan $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.novalidchan none
	return
}
if {[regexp {^[+-]} $flags]} {
	set black_setting [setting:exists $flags]
if {$black_setting != "0"} {
	set iflag [string map {"+" ""
							"-" ""} $flags]
if {[matchattr $hand mo] && ![matchattr $hand n] && [string equal -nocase "$iflag" "invisible"]} {
		blacktools:tell $nick $host $hand $chan $chan1 set.5 $flags
		return
}
	set status [setting:status $chan $flags ""]
	switch $status {
	0 {
if {[regexp {^[-]} $flags]} {
	blacktools:tell $nick $host $hand $chan $chan1 set.4 $flags
	return
	}
	blacktools:tell $nick $host $hand $chan $chan1 set.6 $flags
	}
	1 {
if {[regexp {^[+]} $flags]} {
	blacktools:tell $nick $host $hand $chan $chan1 set.4 $flags
	return
	}
	blacktools:tell $nick $host $hand $chan $chan1 set.6 $flags
	}
}
	setting:set $chan $flags ""
if {[string equal -nocase "+anunt" $flags]} {
	foreach tmr [timers] {
if {[string match "*anuntpublic:show*" [join [lindex $tmr 1]]]} {
	return
		}	
	}
	set return_time [time_return_minute $black(anunttime)]
	timer $return_time anuntpublic:show
}

if {[string equal -nocase "-voiceme"]} {
if {[info exists black(voiceme:stat:$chan)]} {
	unset black(voiceme:stat:$chan)
	}
}

if {[string equal -nocase "+quoteofday" $flags]} {
	foreach tmr [timers] {
if {[string match "*quote:announce*" [join [lindex $tmr 1]]]} {
	return
		}	
	}
	set return_time [time_return_minute $black(quote:msgtime)]
	timer $return_time quote:announce
}

if {[string equal -nocase "+clonescan" $flags]} {
foreach tmr [timers] {
if {[string match "*clonescan:timer*" [join [lindex $tmr 1]]]} {
	return
		}	
	}
	set clonescan_time [time_return_minute $black(clonescantime)]
	timer $clonescan_time clonescan:timer
}

if {[string equal -nocase "+antibadchan" $flags]} {
foreach tmr [timers] {
if {[string match "*badchan:scantimer*" [join [lindex $tmr 1]]]} {
	return
	}	 
}
	set bscan_time [time_return_minute $black(badchan:scantime)]
	timer $bscan_time badchan:scantimer
}

if {[string equal -nocase "+idleop" $flags] || [string equal -nocase "+idlevoice" $flags]} {
	foreach tmr [timers] {
if {[string match "*antidle:module*" [join [lindex $tmr 1]]]} {
	return
	}
}
	set idle_time [time_return_minute $black(idleinterval)]
	timer $idle_time antidle:module
}

if {[string equal -nocase "+antispam" $flags]} {
foreach tmr [timers] {
if {[string match "*antispam:protect:cycle*" [join [lindex $tmr 1]]]} {
	return
	}
}
	set antispam_time [time_return_minute $black(spamcycle)]
	timer $antispam_time antispam:protect:cycle
}

if {[string equal -nocase "+securemode" $flags]} {
	putserv "MODE $chan :+Dm"
foreach tmr [utimers] {
if {[string match "*securemode:timer*" [join [lindex $tmr 1]]]} {
	return
	}
}
	set replace(%chan%) $chan1
	putserv "PRIVMSG $chan1 :[string map [array get replace] $black(say.$getlang.securemode.10)]"
	utimer 30 [list securemode:timer]
}

if {[string equal -nocase "-securemode" $flags]} {
	set found_list 0
	foreach tmr [utimers] {
if {[string match "*securemode:timer*" [join [lindex $tmr 1]]]} {
	putserv "MODE $chan :-Dm"
	set replace(%chan%) $chan1
	putserv "PRIVMSG $chan1 :[string map [array get replace] $black(say.$getlang.securemode.11)]"
if {[info exists black(secure:$chan:list)]} {
	set found_list 1
if {[llength $black(secure:$chan:list)] > 0} {
	foreach entry $black(secure:$chan:list) {
	putserv "MODE $chan +v $entry"
if {[info exists black(securecode:$entry:$chan)]} {
	unset black(securecode:$entry:$chan)
						}
					}
				}
			}
		}
	}
if {$found_list == "1"} {
if {[info exists black(secure:$chan:list)]} {
	unset black(secure:$chan:list)
		}
	}
}

if {[string equal -nocase "+limit" $flags]} {
foreach tmr [timers] {
if {[string match "*limit:timer*" [join [lindex $tmr 1]]]} {
	return
		}	 
	}
	timer 1 limit:timer
}

if {[string equal -nocase "+voiceonmsg" $flags]} {
foreach tmr [timers] {
if {[string match "*voiceonmsg:timer*" [join [lindex $tmr 1]]]} {
	return
		}	 
	}
	timer 1 voiceonmsg:timer
}
	return
}
	set why [catch {channel set $chan $flags} error]
if {$why == "1"} { blacktools:tell $nick $host $hand $chan $chan1 set.5 $flags
	return
} else {
	channel set $chan $flags ; blacktools:tell $nick $host $hand $chan $chan1 set.6 $flags	
}

} else {
	set black_setting [setting:exists $flags]
	set int_set [catch {channel set $chan $flags $type} error]
if {$black_setting == "0" && $int_set == "1"} {
	blacktools:tell $nick $host $hand $chan $chan1 set.7 "$flags $type"
	return
}
	set choption 1
	set checkflags $flags
if {$choption == "0"} { return }
if {[string equal -nocase "leave-method" $flags]} {
	if {![string equal -nocase "notice" $type] && ![string equal -nocase "privmsg" $type]} {
	set choption [check_option $nick $host $hand $chan $chan1 $type $type1 "leave"]
if {$choption == "0"} { return }
	}
}

if {[string equal -nocase "greet-method" $flags]} {
	if {![string equal -nocase "notice" $type] && ![string equal -nocase "privmsg" $type]} {
	set choption [check_option $nick $host $hand $chan $chan1 $type $type1 "greet"]
if {$choption == "0"} { return }
	}
}

if {[string equal -nocase "guestnick-msgmethod" $flags]} {
	if {![string equal -nocase "notice" $type] && ![string equal -nocase "privmsg" $type] && ![string equal -nocase "chan" $type]} {
	set choption [check_option $nick $host $hand $chan $chan1 $type $type1 "guestnick"]
if {$choption == "0"} { return }
	}
}

if {![matchattr $hand mn|- $chan]} {
if {[string match -nocase "backchan" $flags]} {
	return
	}
}

if {[string equal -nocase "xbanlevel" $flags]} {
if {![regexp {^[0-9]} $type]} {
	blacktools:tell $nick $host $hand $chan $chan1 set.7 "$flags $type"
	return
	}
if {$type < 75 || $type > 500} {
	blacktools:tell $nick $host $hand $chan $chan1 set.7 "$flags $type"
	return
	}
}

if {[string equal -nocase "vprotect" $flags]} {
if {![string equal -nocase "on" $type] && ![string equal -nocase "off" $type]} {
	set choption [check_option $nick $host $hand $chan $chan1 $type $type1 "vprotect"]
if {$choption == "0"} { return }
	}
} 

if {[string equal -nocase "oprotect" $flags]} {
if {![string equal -nocase "on" $type] && ![string equal -nocase "off" $type]} {
	set choption [check_option $nick $host $hand $chan $chan1 $type $type1 "oprotect"]
if {$choption == "0"} { return }
	}
}

if {[string equal -nocase "clonescan-action" $flags]} {
if {![string equal -nocase "message" $type] && ![string equal -nocase "ban" $type]} {
	set choption [check_option $nick $host $hand $chan $chan1 $type $type1 "clonescan"]
if {$choption == "0"} { return }
	}	
}

if {[string equal -nocase "lang" $flags]} {
if {![file exists "$black(dirname)/BlackTools/lang/BlackTools.[string tolower $type].lang.tcl"]} {
	set choption [check_option $nick $host $hand $chan $chan1 $type $type1 "language"]
if {$choption == "0"} { return }
	}
}
	set black_setting [setting:exists $flags]
if {$black_setting == "2"} {
	set status [setting:status $chan $flags $type]
if {$status != "0"} {
	blacktools:tell $nick $host $hand $chan $chan1 set.3 "$flags $type"
	return
}
	set split_flags [split $flags "-"]
	set flags_2 [lindex $split_flags 1]
if {[string equal -nocase $flags_2 "banmethod"] || [string equal -nocase $flags "banmethod"]} {
	set validnum [check:validnum $type "banmethod" $type1 $nick $host $hand $chan $chan1]
	if {$validnum == "0"} { return }
}

if {[string equal -nocase $flags_2 "bantime"] || [string equal -nocase $flags "banmethod"]} {
	set return_time [time_return_minute $type]
if {$return_time == "-1"} {
	blacktools:tell $nick $host $hand $chan $chan1 set.7 "$flags $type"
	return
	}
}

if {[string equal -nocase $flags_2 "banmask"] || [string equal -nocase $flags "banmask"]} {
	set validnum [check:validnum2 $type "banmask" $type1 $nick $host $hand $chan $chan1]
	if {$validnum == "0"} { return }
}
	set encoded [join [encoding convertto utf-8 $type]]
	setting:set $chan $flags $encoded
	blacktools:tell $nick $host $hand $chan $chan1 set.8 "$flags $type"
	return
}
	set why [catch {channel set $chan $flags $type} error]
if {$why == "1"} { blacktools:tell $nick $host $hand $chan $chan1 set.7 "$flags $type"
	return
} else {
if {[string equal -nocase $flags "backchan"]} {
if {![validchan $type]} {
	blacktools:tell $nick $host $hand $chan $chan1 set.12 $type
	return
	}	
}
	channel set $chan $flags $type ; blacktools:tell $nick $host $hand $chan $chan1 set.8 "$flags $type" 
		}
	}
}

################################# unset #######################################

proc unsetpublic {nick host hand chan arg} {
	global black lastbind
	set setting [lindex [split $arg] 0]
	set chan1 $chan
	set type 0
	set return [blacktools:mychar $lastbind $hand]
if {$return == "0"} {
		return
}
if {[regexp {^[&#]} $setting] && [matchattr $hand nmo|M $setting]} {
	set chan $setting
	set setting [lindex [split $arg] 1]
}
if {[string equal -nocase $setting "global"] && [matchattr $hand nm]} {
	set setting [lindex [split $arg] 1]
foreach c [channels] {
	unset:process $nick $host $hand $c $chan1 $setting $type
			}
		return
	}
	unset:process $nick $host $hand $chan $chan1 $setting $type
}

proc unset:process {nick host hand chan chan1 setting type} {
	global black
	set cmd_status [btcmd:status $chan $hand "unset" 0]
if {$cmd_status == "1"} { 
	return 
}
if {[matchattr $hand q]} { blacktools:tell $nick $host $hand $chan $chan1 gl.glsuspend none
	return
}
if {[matchattr $hand -|q $chan]} { blacktools:tell $nick $host $hand $chan $chan1 gl.suspend none
	return
}
if {$setting == ""} {
switch $type {
	0 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr "unset"
	}
	1 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_nick "unset"
	}
	2 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_priv "unset"
		}
	}
	return
}
	
if {[string equal -nocase $setting "flag"]} {
foreach f $black(extra_flag) {
	unset:all $chan $f
}
	blacktools:tell $nick $host $hand $chan $chan1 unset.4 none
	return
}

if {[string equal -nocase $setting "str"]} {
foreach f $black(extra_str) {
	unset:all $chan $f
}
	blacktools:tell $nick $host $hand $chan $chan1 unset.5 none
	return
}
	set timestamp [clock format [clock seconds] -format {%Y%m%d%H%M%S}]
	set temp "$black(tempdir)/extra_temp.$timestamp"
	set black_setting [setting:exists $setting]
if {$black_setting != "0"} {
	set status [setting:get $chan $setting]
if {$status != "" && $status != "0"} {
	blacktools:tell $nick $host $hand $chan $chan1 unset.2 $setting
	set file [open $black(extra_file) r]
	set tempwrite [open $temp w]
while {[gets $file line] != -1} {
	set c [lindex [split $line] 0]
	set gettype [lindex [split $line] 1]
	set comp [lindex [split $line] 2]
if {$black_setting == "1"} {
	set comp [string map {
	"+" ""
	"-" ""} $comp]
}
if {[string equal -nocase $c $chan] && [string equal -nocase $gettype "XTRA"] && [string equal -nocase $comp $setting]} {
	continue
} else {
	puts $tempwrite $line
		}	 
    }
	close $tempwrite
	close $file
    file rename -force $temp $black(extra_file)
	} else {
	blacktools:tell $nick $host $hand $chan $chan1 unset.3 $setting 
	}
} else {
	blacktools:tell $nick $host $hand $chan $chan1 unset.1 $setting
	}		
}

proc unset:all {chan setting} {
	global black
	set timestamp [clock format [clock seconds] -format {%Y%m%d%H%M%S}]
	set temp "$black(tempdir)/extra_temp.$timestamp"
	set file [open $black(extra_file) r]
	set tempwrite [open $temp w]
while {[gets $file line] != -1} {
	set c [lindex [split $line] 0]
	set gettype [lindex [split $line] 1]
	set comp [lindex [split $line] 2]
if {[regexp {^[+-]} $comp]} {
	set comp [string map {
	"+" ""
	"-" ""} $comp]
}
if {[string equal -nocase $c $chan] && [string equal -nocase $gettype "XTRA"] && [string equal -nocase $comp $setting]} {	
		continue
		} else {
	puts $tempwrite $line
		}	
	}
	close $tempwrite
	close $file
    file rename -force $temp $black(extra_file)
}

proc check:validnum {num flags type1 nick host hand chan chan1} {
	global black
	if {![regexp {^[0-9]} $num]} {
if {$type1 == "0"} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr $flags
}
if {$type1 == "1"} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_nick $flags
		}
	return 0
	}
if {($num < 1) || ($num > 7)} {
if {$type1 == "0"} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr $flags
}
if {$type1 == "1"} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_nick $flags
		}
	return 0
	}
	return 1
}

proc check:validnum2 {num flags type1 nick host hand chan chan1} {
	global black
	if {![regexp {^[0-9]} $num]} {
if {$type1 == "0"} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr $flags
}
if {$type1 == "1"} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_nick $flags
		}
	return 0
	}
if {($num < 1) || ($num > 5)} {
if {$type1 == "0"} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr $flags
}
if {$type1 == "1"} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_nick $flags
		}
	return 0
	}
	return 1
}

proc ignorepublic {nick host hand chan arg} {
global black lastbind
	set chan1 "$chan"
	set type 0
	set what [lindex [split $arg] 0]
	set mask [lindex [split $arg] 1]
	set time [lindex [split $arg] 2]
	set reason [join [lrange [split $arg] 3 end]]
if {![regexp {^[0-9]} $time]} {
	set reason [join [lrange [split $arg] 2 end]]
}
	set return [blacktools:mychar $lastbind $hand]
if {$return == "0"} {
		return
}
	ignore:process $nick $host $hand $chan $chan1 $what $mask $time $reason $type
}


proc ignore:process {nick host hand chan chan1 what mask time reason type} {
global botnick black
	set cmd_status [btcmd:status $chan $hand "ignore" 0]
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
	set finduser [finduser $mask]
	set show_mask $mask
if {[matchattr $finduser mno] && [matchattr $hand -|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 ignore.2 none
	return
}
if {[matchattr $finduser n] && [matchattr $hand m]} {
	blacktools:tell $nick $host $hand $chan $chan1 ignore.2 none
	return
}
if {[matchattr $finduser m] && [matchattr $hand o]} {
	blacktools:tell $nick $host $hand $chan $chan1 ignore.2 none
	return
}
if {[matchattr $finduser n] && [matchattr $hand o]} {
	blacktools:tell $nick $host $hand $chan $chan1 ignore.2 none
	return
}

if {$what == ""} {
switch $type {
	0 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr "ignore"
	}
	1 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_nick "ignore"
	}
	2 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_priv "ignore"
		}
	}
}
switch -exact -- [string tolower $what] {

list {
if {[llength [ignorelist]] == "0"} { blacktools:tell $nick $host $hand $chan $chan1 ignore.3 none
	return
}

foreach ig [ignorelist] {
	set hostig [lindex $ig 0]
	set byig [lindex $ig 4]
	set bytime [lindex $ig 2]
	set reasig [lindex $ig 1]
if {$bytime != "0"} {
	set bytime [clock format $bytime -format %D-%H:%M:%S]
} else { set bytime "-"}
	blacktools:tell $nick $host $hand $chan $chan1 ignore.4 "$hostig $byig $bytime [join $reasig]" 
	}
}

add {

if {$mask == ""} {
switch $type {
	0 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr "ignore"
	}
	1 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_nick "ignore"
	}
	2 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_priv "ignore"
		}
	}
	return
}

if {[isignore $mask]} {
	blacktools:tell $nick $host $hand $chan $chan1 ignore.5 $show_mask
	return
}

if {![regexp {^[0-9]} $time]} {
	set time $black(ignore:default_time)
}
	set ignore_time [time_return_minute $time]

if {$reason == ""} { set reason "N/A" }
	newignore $mask $hand $reason $ignore_time
	blacktools:tell $nick $host $hand $chan $chan1 ignore.6 "$show_mask $time $reason"
}

del {
if {$mask == ""} {
switch $type {
	0 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr "ignore"
	}
	1 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_nick "ignore"
	}
	2 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_priv "ignore"
		}
	}
	return
}

if {[isignore $mask]} {
	killignore $mask
} else { blacktools:tell $nick $host $hand $chan $chan1 ignore.8 $show_mask
	return
} 
	blacktools:tell $nick $host $hand $chan $chan1 ignore.9 $show_mask
		}
default {
	switch $type {
	0 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr "ignore"
	}
	1 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_nick "ignore"
	}
	2 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_priv "ignore"
		}
			}
		}
	}
}


################################# show ################################

proc showpublic {nick host hand chan arg} {
global black lastbind
	set wich [lindex [split $arg] 0]
	set type 0
	set chan1 "$chan"
if {[regexp {^[&#]} $wich] && [matchattr $hand nmo|M $wich]} {
	set chan "$wich"
	set wich [lindex [split $arg] 1]
}
	set return [blacktools:mychar $lastbind $hand]
if {$return == "0"} {
		return
}
	show:process $nick $host $hand $chan $chan1 $wich $type
}

proc show:process {nick host hand chan chan1 wich type} {
global black botnick
	set cmd_status [btcmd:status $chan $hand "show" 0]
if {$cmd_status == "1"} { 
	return 
}
	set getlang [string tolower [setting:get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
if {[matchattr $hand q]} { blacktools:tell $nick $host $hand $chan $chan1 gl.glsuspend none
	return
}
if {[matchattr $hand -|q $chan]} { blacktools:tell $nick $host $hand $chan $chan1 gl.suspend none
	return
}

if {$wich == ""} {
switch $type {
	0 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr "show"
	}
	1 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_nick "show"
	}
	2 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_priv "show"
		}
	}
	return 0
}

if {![validchan $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.novalidchan none
	return
}
	set setting_exists [setting:exists $wich]
if {$setting_exists == "0"} {
	set why [catch {channel get $chan $wich} error]
if {$why == "1"} { blacktools:tell $nick $host $hand $chan $chan1 show.5 $wich
	return
} else {
	set replyinfo [channel get $chan $wich]
if {($replyinfo != "") && ($replyinfo == "1")} {
	blacktools:tell $nick $host $hand $chan $chan1 show.7 "$wich"
	return
}
if {($replyinfo != "") && ($replyinfo == "0")} {
	blacktools:tell $nick $host $hand $chan $chan1 show.8 "$wich"
	return
}
	blacktools:tell $nick $host $hand $chan $chan1 show.6 "$wich $replyinfo"
	}
	return
}
	set replyinfo [setting:get $chan $wich]
if {$setting_exists == "1"} {
if {[regexp {^[1]} $replyinfo]} {
	blacktools:tell $nick $host $hand $chan $chan1 show.7 $wich
	return
}

if {[regexp {^[0]} $replyinfo]} {
	blacktools:tell $nick $host $hand $chan $chan1 show.8 $wich
	return
	}
if {($replyinfo == "") && [string equal -nocase $wich "oprotect"] || [string equal -nocase $wich "vprotect"] || [string equal -nocase $wich "hoprotect"]} {
	blacktools:tell $nick $host $hand $chan $chan1 show.7 $wich
	return
}
if {$replyinfo == ""} {
	blacktools:tell $nick $host $hand $chan $chan1 show.8 $wich
	}
	return
}
	set split_wich [split $wich "-"]
	set name [lindex $split_wich 0]
if {$replyinfo == ""} {
switch -exact -- [string tolower $wich] {

lang {
	set replyinfo $black(default_lang)
}

greet-method {
	set replyinfo $black(greet:method)
}

leave-method {
	set replyinfo $black(leave:method)
}

backchan {
	set replyinfo $black(say.ro.gl.noset)
}

url {
	set replyinfo $black(say.ro.gl.noset)
}

next-backchan {
	set replyinfo $black(say.ro.gl.noset)
}

nickflood-repeat {
	set replyinfo $black(nickfloodrepeats)
}

w-message {
	set replyinfo $black(say.$getlang.w.6)
}

antilongtextmax {
	set replyinfo $black(longchar)
}

joinflood {
	set replyinfo $black(joinflood:protect)
}

chanflood {
	set replyinfo $black(antifloodchanrepeats)
}

idleopmax {
	set replyinfo $black(idleopmax)
}

idlevoicemax {
	set replyinfo $black(idlevoicemax)
}

antirepeat-setting {
set replyinfo $black(antirepeat:repeats)
}

gag-reason {
	set replyinfo $black(say.$getlang.gag.6)
}

w-reason {
	set len [llength $black(say.$getlang.w.5)] 
    set random [expr int(rand()*$len)] 
    set reply [lindex $black(say.$getlang.w.5) $random]
	set replyinfo $reply
}

k-reason {
	set len [llength $black(say.$getlang.k.5)] 
    set random [expr int(rand()*$len)] 
    set reply [lindex $black(say.$getlang.k.5) $random]
	set replyinfo $reply
}

b-reason {
	set len [llength $black(say.$getlang.b.5)] 
    set random [expr int(rand()*$len)] 
    set reply [lindex $black(say.$getlang.b.5) $random]
	set replyinfo $reply
}

badchan-bmethod {
	set replyinfo $black(badcbanmethod)
}

d-bantime {
	set replyinfo $black(dbtime)
}

antispam-message {
	set replyinfo $black(say.$getlang.antispam.2)
}

limit-default {
	set replyinfo $black(limit:default)
}

clonescan-maxclone {
	set replyinfo $black(maxclone)
}

clonescan-action {
	set replyinfo "message"
				}
guestnick-message {
	set replyinfo $black(say.$getlang.guestnick.10)
				}
guestnick-msgmethod {
	set replyinfo $black(guestnick:msgmethod)
				}
voiceonmsg-idletime {
	set replyinfo $black(voiceonmsg:idletime)
}
voiceonmsg-linenum {
	set replyinfo $black(voiceonmsg:linenum)
			}
xbantime {
	set replyinfo $black(chanserv:bantime)
}

xbanlevel {
	set replyinfo $black(chanserv:banlevel)
}
default {
	set replyinfo [show:details $wich $name $setting_exists $chan ""]
			}
		}
	} else {
	set replyinfo [show:details $wich $name $setting_exists $chan $replyinfo]
	}
	blacktools:tell $nick $host $hand $chan $chan1 show.6 "$wich $replyinfo"
}

proc show:details {wich name setting_exists chan set} {
	global black
	set getlang [string tolower [setting:get $chan lang]]
	set cmds "dr vr troll bot n id spam bw black stick d next badchan spam"
	set replyinfo ""
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
if {[string equal -nocase $wich "$name-banmethod"]} {
if {$set == ""} {
	set replyinfo [show:getbanmethod $black($name:banmethod)]
	} else {
	set replyinfo [show:getbanmethod $set]
	}
}
if {[string equal -nocase $wich "$name-banmask"]} {
if {$set == ""} {
	set replyinfo [show:getbanmask $black($name:banmask)]
	} else {
	set replyinfo [show:getbanmask $set]
	}
}

if {$setting_exists == "2"} {
	if {[string equal -nocase $wich "$name-bantime"]} {
if {$set == ""} {
	set replyinfo $black($name:bantime)
			} else {
	set replyinfo $set
			}
		}
	}
if {$setting_exists == "2"} {
if {[string equal -nocase $wich "$name-warn"]} {
if {$set == ""} {
	set replyinfo $black(say.$getlang.$name.2)
			} else {
	set replyinfo $set
			}
		}
	}
if {$setting_exists == "2"} {
	if {[string equal -nocase $wich "$name-reason"] && [lsearch -exact -nocase $cmds $name] > -1} {
if {$set == ""} {
	set replyinfo $black(say.$getlang.$name.5)
				} else {
	set replyinfo $set
				}
			}
		}
if {$setting_exists == "2" && $replyinfo == ""} {
	if {[string equal -nocase $wich "$name-reason"]} {
if {$set == ""} {
	set replyinfo $black(say.$getlang.$name.1)
			} else {
	set replyinfo $set
			}
		}
	}
if {$replyinfo == ""} {
	set replyinfo $set
}
	return $replyinfo
}


proc show:getbanmask {num} {
	global black
switch $num {
	1 {
	return "#1 - *!*@host"
	}
	2 {
	return "#2 - *!user@host"
	}
	3 {
	return "#3 - nick!user@host"
	}
	4 {
	return "#4 - nick!*@*"
	}
	5 {
	return "#5 - *!user@*"
		}
	}
}

proc show:getbanmethod {num} {
	global black
switch $num {
	1 {
	return "#1 - warn"
	}
	
	2 {
	return "#2 - kick"
	}
	
	3 {
	return "#3 - ban"
	}
	
	4 {
	return "#4 - warn -> kick"
	}
	
	5 {
	return "#5 - warn -> kick -> ban"
	}
	
	6 {
	return "#6 - kick -> ban"
	}
	7 {
	return "#7 - warn -> ban"
		}
	}	
}

############################## activ ##################################

proc activpublic {nick host hand chan arg} { 
global black lastbind
	set type 0
	set chan1 "$chan"
	set user [lindex [split $arg] 0]
	set option [lindex [split $arg] 1]
if {[regexp {^[&#]} $user] && [matchattr $hand nmo|MAOV $user]} {
	set chan "$user"
	set user [lindex [split $arg] 1]
	set option [lindex [split $arg] 2]
}
	set return [blacktools:mychar $lastbind $hand]
if {$return == "0"} {
		return
}
	activ:process $nick $host $hand $chan $chan1 $user $option $type
}

proc activ:process {nick host hand chan chan1 user option type} {
global botnick black timezone
	set cmd_status [btcmd:status $chan $hand "activ" 0]
if {$cmd_status == "1"} { 
	return
}
	set show_user $user
	array set activhour [list]
	set found_nick ""
	set onchan 0
	set found_it 0
	set validuser 0
	set mask ""
	set max_act "N/A"
if {$user == ""} {
switch $type {
	0 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr "activ"
	}
	1 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_nick "activ"
	}
	2 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_priv "activ"
		}
	}
	return
}

if {![validchan $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.novalidchan none
	return
}

if {[matchattr $hand $black(accessflags) $chan]} {
if {[validuser $show_user]} {
	get:activ:bans $nick $host $hand $chan $chan1 $user
	set validuser 1
} else {
	set handle [nick2hand $show_user]
	get:activ:bans $nick $host $hand $chan $chan1 $handle
	}
}
	
if {![setting:get $chan topwords]} {
	return
}

if {[onchan $user $chan]} {
	set mask [return_mask [return_host_num "topwords" $chan] [getchanhost $user $chan] $user]
} else {
if {$validuser == "1"} {
	set mask [getuser $user HOSTS]
	}
}
if {$validuser == "1"} {
foreach m $mask {
	getinfo:topwords $user $m $chan $nick $host $hand $chan $chan1
}
	} else {
	getinfo:topwords $user * $chan $nick $host $hand $chan $chan1
	}
}

proc getinfo:topwords {user mask chan nick host hand chan chan1} {
	global black
	set found_it 0
	set file [open $black(topwords_file) r]
while {[gets $file line] != -1} {
	set read_chan [lindex [split $line] 0]
	set read_nick [lindex [split $line] 1]
	set read_host [lindex [split $line] 2]
	set enc_chan [encoding convertfrom utf-8 $read_chan]
if {[string equal -nocase $enc_chan $chan] && ([string match -nocase $read_host $mask] || [string equal -nocase $read_nick $user])} {
	set found_it 1
	set found_nick $read_nick
	set read_host [lindex [split $line] 2]
	set return [getactivplace $read_host $chan]
	set the_day [lindex [split $line] 31]
	set the_day [clock format $the_day -format %e]
	set nr_letter [lindex [split $line] 3]
	set nr_words [lindex [split $line] 4]
	set words_today [lindex [split $line] 5]
	set nr_lines [lindex [split $line] 6]
	set hours [lrange [split $line] 7 30]
	set maxhour [gethour:topwords $hours]
	set msg [lrange [split $line] 32 end]
	set split_return [split $return ":"]
	set place [lindex $split_return 0]
	set all [lindex $split_return 1]
	set tz [catch {exec date +%Z} timezone]
if {$place == "0"} { set place "N/A" }
if {$mask == "*"} {
		blacktools:tell $nick $host $hand $chan $chan1 topwords.22 "$found_nick $read_host $nr_lines $nr_words $nr_letter $maxhour:00-$timezone $place $all $words_today $msg"
} else {
	blacktools:tell $nick $host $hand $chan $chan1 topwords.22 "$found_nick $read_host $nr_lines $nr_words $nr_letter $maxhour:00-$timezone $place $all $words_today $msg"
		}
	}
}
	close $file
if {$found_it == "0"} {
	blacktools:tell $nick $host $hand $chan $chan1 topwords.4 $user
	return
	} 
}

proc gethour:topwords {hours} {
	global black
foreach h $hours {
	set split_h [split $h ":"]
	set hour [lindex $split_h 0]
	set nr_hour [lindex $split_h 1]
	lappend activhour($nr_hour) $hour
}
foreach h [lsort -integer -increasing [array names activhour]] {
	set max_act $activhour($h)
}
	return [lindex $max_act 0]
}

proc getactivplace {host chan} {
	global black
	array set activlist [list]
	set counter 0
	set all_count 0
	set place 0
	set file [open $black(topwords_file) r]
while {[gets $file line] != -1} {
	set read_chan [lindex [split $line] 0]
	set enc_chan [encoding convertfrom utf-8 $read_chan]
if {[string equal -nocase $enc_chan $chan]} {
	set all_count [expr $all_count + 1]
	set nr_words [lindex [split $line] 4]
	set read_host [lindex [split $line] 2]
	lappend activlist($nr_words) $read_host
		}
	}
	close $file
foreach h [lsort -integer -decreasing [array names activlist]] {
	set counter [expr $counter + 1]
if {[string equal -nocase $activlist($h) $host]} {
	set place $counter
	}
}	
	return $place:$all_count
}

proc getactivbansplace {user chan} {
	global black
	array set activlist [list]
	set show_user $user
	set counter 0
	set all_count 0
	set place 0
foreach u [userlist] {
	set totalbans [getuser $u XTRA BANS($chan)]
if {$totalbans != ""} {
	set all_count [expr $all_count + 1]
	lappend activlist($totalbans) $u
	}
}

foreach u [userlist $chan] {
if {[matchattr $u $black(localflags) $chan]} {
	set totalbans [getuser $u XTRA BANS($chan)]
if {$totalbans != ""} {
	set all_count [expr $all_count + 1]
	lappend activlist($totalbans) $u
		}
	}
}

foreach u [lsort -integer -decreasing [array names activlist]] {
	set counter [expr $counter + 1]
if {[lsearch -exact -nocase $activlist($u) $show_user] > -1} {
	set place $counter
	}
}
	return $place:$all_count
}

proc get:activ:bans {nick host hand chan chan1 user} {
	global black
	set found_gl 0
	set show_user $user
if {![validuser $user]} {
if {![setting:get $chan topwords]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomem none
}
	return
}

if {![matchattr $hand $black(accessflags) $chan]} {
if {![setting:get $chan topwords]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.noaccess none
	}
	return
}
	set banstoday [getuser $user XTRA BANS_TODAY($chan)]
	set totalbans [getuser $user XTRA BANS($chan)]
	set kickstoday [getuser $user XTRA KICKS_TODAY($chan)]
	set totalkicks [getuser $user XTRA KICKS($chan)]

if {[matchattr $hand $black(glflags)] && [matchattr $user $black(glflags)]} {
	set found_gl 1
	set bansglobal [getuser $user XTRA BANS(GLOBAL)]
if {$bansglobal == ""} { set bansglobal 0 }	
}

if {$banstoday == ""} { set banstoday 0 }
if {$kickstoday == ""} { set kickstoday 0 }
if {$totalbans == ""} { set totalbans 0 }
if {$totalkicks == ""} { set totalkicks 0 }

	set return [getactivbansplace $user $chan]

	set split_return [split $return ":"]
	set place [lindex $split_return 0]
if {$place == "0"} {
	set place "N/A"
}
	set all [lindex $split_return 1]
if {$found_gl == "1"} {
	blacktools:tell $nick $host $hand $chan $chan1 activ.2 "$show_user $totalbans $bansglobal $totalkicks $place $all $banstoday $kickstoday"
	return
}
	blacktools:tell $nick $host $hand $chan $chan1 activ.1 "$show_user $totalbans $totalkicks $place $all $banstoday $kickstoday"
}

################################# r #######################################

proc rpublic {nick host hand chan arg} {
	global black lastbind
	set c [lindex [split $arg] 0]
	set chan1 $chan
	set return [blacktools:mychar $lastbind $hand]
if {$return == "0"} {
		return
}
if {$c != "" && [matchattr $hand nmo|AMO $c]} {
if {![regexp {^[&#]} $c]} { 
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr "r"
	return
	}
	topic:refresh $nick $host $hand $c $chan1 $arg
	return
		}
	topic:refresh $nick $host $hand $chan $chan1 $arg
}

proc topic:refresh {nick host hand chan chan1 arg} {
	global black lastbind botnick
	set cmd_status [btcmd:status $chan $hand "r" 0]
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
	blacktools:tell $nick $host $hand $chan $chan1 gl.novalidchan none
	return
}
if {![onchan $botnick $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.notonchan none
	return
}
if {![botisop $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.noop none
	return
}
	set chantopic [topic $chan]
	set getlang [string tolower [setting:get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
if {$chantopic != ""} {
	putserv "TOPIC $chan :$black(say.$getlang.r.1)"
	putserv "TOPIC $chan :$chantopic"
	} else {
	blacktools:tell $nick $host $hand $chan $chan1 r.2 none
	}
}

##############
#########################################################################
##   END                                                               ##
#########################################################################