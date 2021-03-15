#########################################################################
##          BlackTools - The Ultimate Channel Control Script           ##
##                    One TCL. One smart Eggdrop                       ##
#########################################################################
#########################   LOCAL CMDS TCL   ############################
#########################################################################
##						                       ##
##   BlackTools  : http://blacktools.tclscripts.net	       	       ##
##   Bugs report : http://www.tclscripts.net/	                       ##
##   GitHub page : https://github.com/tclscripts/BlackToolS-TCL        ##
##   Online Help : irc://irc.undernet.org/tcl-help 	    	       ##
##                 #TCL-HELP / UnderNet                                ##
##                 You can ask in english or romanian                  ##
##					                               ##
#########################################################################


################################ Commands ###################################

################################## report ###################################

proc report:process {nick host host1 hand chan chan1 type what message} {
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
	set number [scan $black(report:flood) %\[^:\]]
	set timer [scan $black(report:flood) %*\[^:\]:%s]
	
if {[info exists black(floodreport:$host1:$chan)]} {
if {$black(floodreport:$host1:$chan) >= "$number"} {
	return
	}
}

foreach tmr [utimers] {
if {[string match "*black(floodreport:$host1:$chan)*" [join [lindex $tmr 1]]]} {
	killutimer [lindex $tmr 2]
	}
}

if {![info exists black(floodreport:$host1:$chan)]} { 
	set black(floodreport:$host1:$chan) 0 
}
	incr black(floodreport:$host1:$chan)
	utimer $timer [list unset black(floodreport:$host1:$chan)]
	
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

	set handle [nick2hand $what]
if {[validuser $handle]} {
	set found_acces 0
foreach c [channels] {
if {[matchattr $handle $black(exceptflags) $chan]} {
	set found_acces 1
		}
	}
if {$found_acces == "1"} {
	return
	}
}

if {[string equal -nocase $what $nick]} {
	blacktools:tell $nick $host $hand $chan $chan1 report.5 none
	return
}
	set getlang [string tolower [setting:get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
if {[onchan $what $chan]} {
	set replace(%msg.1%) $what
	set replace(%msg.2%) $nick
	set replace(%msg.8%) $message
if {$message != ""} {
	set text [black:color:set "" $black(say.$getlang.report.2)]
} else {
	set text [black:color:set "" $black(say.$getlang.report.3)]
}	
	set reply [join $text]
	set output [string map [array get replace] $reply]
	putserv "NOTICE @$chan :$output"
	blacktools:tell $nick $host $hand $chan $chan1 report.4 none
	} else {
	blacktools:tell $nick $host $hand $chan $chan1 gl.usernotonchan $what
		}
	}
}

################################# disable ###################################

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
	set local_cmds "h omsg o v ho man version mode cycle broadcast say act i stats t myset b black stick dr bot n id spam bw vr gag sb banlist k w anunt bt badchan idle limit seen clonescan securemode private guestnick greet leave topic next helped noidle skip topwords q note report alias"

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
	set text [black:color:set "" $black(say.$getlang.i.7)]
	set getmsg [join $text]
if {[info exists black(say.$getlang.i.7)]} {
	set imessage [string map [array get replace] $getmsg]
}

if {$inick != ""} {
if {[onchan $inick $chan]} {
	blacktools:tell $anick $host $hand $chan $chan1 i.1 $show_inick
	check:if:bind "i:online:check" "302"
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
	topwords:delete $chan
	putserv "PART $chan :PURGED by $hand :$reason"
}

################################### v #################################

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
if {[isvoice $voicenick $chan]} {
if {$xban == "0"} {
	pushmode $chan -v $voicenick
} else { lappend devoicelist $voicenick }
} else {
if {$xban == "0"} {
	pushmode $chan +v $voicenick
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
if {[string equal -nocase $opnick $nick]} { continue }
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
if {[isop $opnick $chan]} {
if {$xban == "0"} {
pushmode $chan -o $opnick
} else { lappend deoplist $opnick } 
} else {
if {$xban == "0"} {
pushmode $chan +o $opnick
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

proc version:process {nick host hand chan chan1 arg} {
global botnick black
	set cmd_status [btcmd:status $chan $hand "version" 0]
if {$cmd_status == "1"} { 
	return
}
if {$arg != ""} { return }
	blacktools:tell $nick $host $hand $chan $chan1 version.1 "$black(vers) [ctime $black(current_modif)]"
}

############################### cycle #################################

proc cycle:process {nick host hand chan chan1 reason} {
global black botnick
	set cmd_status [btcmd:status $chan $hand "cycle" 0]
	set reply ""
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
	set text [black:color:set "" $black(say.$getlang.cycle.2)]
	set reply [join $text]
	putserv "PART $chan :[string map [array get replace] $reply]"
	channel set $chan +inactive
	utimer $reason [list channel set $chan -inactive]
	return
}

if {$reason == ""} { 
	set reason "$black(say.$getlang.cycle.1)" 
	set len [llength $reason] 
    set random [expr int(rand()*$len)] 
    set reason [lindex $reason $random]
	set text [black:color:set "" $reason]
	set reply [join $text]
} else {
	set reply $reason
}
	putserv "PART $chan :$reply"
	putserv "JOIN $chan"
}


################################### mode ######################################

proc mode:process {nick host hand chan chan1 modes type hosts} {
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
if {![string equal -nocase $modes "+b"] && ![string equal -nocase $modes "-b"]} {
	putserv "MODE $chan $modes"
	channel set $chan chanmode $modes
	} else {
	putserv "MODE $chan $modes $hosts"
	}
}

################################## myset #############################

proc myset:process {nick host hand chan chan1 flags typez type chan2 arg} {
global black
	set cmd_status [btcmd:status $chan $hand "myset" 0]
if {$cmd_status == "1"} { 
	return
}
if {[matchattr $hand q]} { blacktools:tell $nick $host $hand $chan $chan1 gl.glsuspend none
return
}
if {[matchattr $hand -|q $chan]} { blacktools:tell $nick $host $hand $chan $chan1 gl.suspend none
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
if {$get == ""} { set get "N/A" }
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
if {![string equal -nocase $typez "-telnet!*@*"]} {
foreach u [userlist] {
	set h [getuser $u hosts]
foreach hs $h {
if {[string match -nocase $hs $typez]} {
	set found_it 1
	set found_user $u
			}
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
	set get [getuser $hand INFO]
if {$get == ""} { set get "N/A" }
	blacktools:tell $nick $host $hand $chan $chan1 myset.12 "$flags $get"
	return
}

if {[string equal -nocase $typez "reset"]} {
	setuser $hand INFO ""
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

notes {
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
	switch $typez {
	on {
	blacktools:tell $nick $host $hand $chan $chan1 myset.19 "myset"
	setuser $hand XTRA NO_NOTES
	}
	
	off {
	blacktools:tell $nick $host $hand $chan $chan1 myset.20 "myset"
	setuser $hand XTRA NO_NOTES 1
	}
	
	show {
	set get [getuser $hand XTRA NO_NOTES]
if {$get != ""} { set get "OFF" }  else { set get "ON" } 
	blacktools:tell $nick $host $hand $chan $chan1 myset.12 "$flags $get"
	return
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
if {$get == ""} { set get "N/A" }
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
if {$get == ""} { set get "N/A" }
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
if {$get == ""} { set get "N/A" }
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
if {$get == ""} { set get $black(default_colors) }
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
if {$get == ""} { set get "N/A" }
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
if {$get == ""} { set get "N/A" }
	blacktools:tell $nick $host $hand $chan $chan1 myset.12 "$flags $get"
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
if {[regexp {^[+-]} $flags]} {
if {![validchan $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.novalidchan none
	return
}
	set black_setting [setting:exists $flags]
if {$black_setting == "1"} {
	set iflag [string map {"+" ""
							"-" ""} $flags]
if {![matchattr $hand n]} {
if {[string equal -nocase "$iflag" "invisible"] || [string equal -nocase "$iflag" "forward"]} {
		blacktools:tell $nick $host $hand $chan $chan1 set.5 $flags
		return
	}
}
if {[string equal -nocase "$iflag" "settingsaved"]} {
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

if {[string equal -nocase "+xonly" $flags]} {
if {![info exists black(logged)]} {
	blacktools:tell $nick $host $hand $chan $chan1 login.3 none
	return
	}
}

	setting:set $chan $flags ""
	
if {[string equal -nocase "+anunt" $flags]} {
if {[setting:get $chan anunt-showtime] != ""} {
	set time [setting:get $chan anunt-showtime]
		} else {
	set time $black(anunttime)
		}
	set scan_time [time_return_minute $time]
	set black(anunt:$chan:timer_start) $scan_time
}

if {[string equal -nocase "+topwords" $flags]} {
	set black(topwords:$chan:timer_start) 1
}

if {[string equal -nocase "-anunt" $flags]} {
if {[info exists black(anunt:$chan:timer_start)]} {
	unset black(anunt:$chan:timer_start)
	}
if {[info exists black(anunt:counter:$chan)]} {
	unset black(anunt:counter:$chan)
	}
}

if {[string equal -nocase "-topwords" $flags]} {
	set black(topwords:$chan:timer_start) 1
if {[info exists black(topwords:$chan:timer_start)]} {
	unset black(topwords:$chan:timer_start)
	}
if {[info exists black(topwords:counter:$chan)]} {
	unset black(topwords:counter:$chan)
	}
}

if {[string equal -nocase "-voiceme"]} {
if {[info exists black(voiceme:stat:$chan)]} {
	unset black(voiceme:stat:$chan)
	}
}

if {[string equal -nocase "-voiceonmsg"]} {
if {[info exists black(voiceonmsg:stat:$chan)]} {
	unset black(voiceonmsg:stat:$chan)
	}
}

if {[string equal -nocase "+quoteofday" $flags]} {
if {[setting:get $chan quote-showtime] != ""} {
	set time [setting:get $chan quote-showtime]
		} else {
	set time $black(quote:msgtime)
		}
	set scan_time [time_return_minute $time]
	set black(quote:$chan:timer_start) $scan_time
}

if {[string equal -nocase "-quoteofday" $flags]} {
if {[info exists black(quote:$chan:timer_start)]} {
	unset black(quote:$chan:timer_start)
	}
if {[info exists black(quote:counter:$chan)]} {
	unset black(quote:counter:$chan)
	}
}

if {[string equal -nocase "+clonescan" $flags]} {
if {[setting:get $chan clonescan-scantime] != ""} {
	set time [setting:get $chan clonescan-scantime]
		} else {
	set time $black(clonescantime)
		}
	set scan_time [time_return_minute $time]
	set black(clonescan:$chan:timer_start) $scan_time
}

if {[string equal -nocase "-clonescan" $flags]} {
if {[info exists black(clonescan:$chan:timer_start)]} {
	unset black(clonescan:$chan:timer_start)
	}
if {[info exists black(clonescan:counter:$chan)]} {
	unset black(clonescan:counter:$chan)
	}
}

if {[string equal -nocase "+antibadchan" $flags]} {
if {[setting:get $chan badchan-scantime] != ""} {
	set time [setting:get $chan badchan-scantime]
		} else {
	set time $black(badchan:scantime)
		}
	set scan_time [time_return_minute $time]
	set black(badchan:$chan:timer_start) $scan_time
}

if {[string equal -nocase "+voiceme" $flags]} {
if {[setting:get $chan voiceme-showtime] != ""} {
	set time [setting:get $chan voiceme-showtime]
		} else {
	set time $black(voiceme:msgtime)
		}
	set scan_time [time_return_minute $time]
	set black(voiceme:$chan:timer_start) $scan_time
}

if {[string equal -nocase "-voiceme" $flags]} {
if {[info exists black(voiceme:$chan:timer_start)]} {
	unset black(voiceme:$chan:timer_start)
	}
if {[info exists black(voiceme:counter:$chan)]} {
	unset black(voiceme:counter:$chan)
	}
}


if {[string equal -nocase "-antibadchan" $flags]} {
if {[info exists black(badchan:$chan:timer_start)]} {
	unset black(badchan:$chan:timer_start)
	}
if {[info exists black(badchan:counter:$chan)]} {
	unset black(badchan:counter:$chan)
	}
}

if {[string equal -nocase "+xonly" $flags]} {
if {![info exists black(logged)]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.noxonly none
	return
	}
}

if {[string equal -nocase "+limit" $flags]} {
	set black(limit:$chan:timer_start) 1
}

if {[string equal -nocase "+voiceonmsg" $flags]} {
	set black(voiceonmsg:$chan:timer_start) 1
}

if {[string equal -nocase "-limit" $flags]} {
if {[info exists black(limit:$chan:timer_start)]} {
	unset black(limit:$chan:timer_start)
	}
}

if {[string equal -nocase "+idleop" $flags] || [string equal -nocase "+idlevoice" $flags] || [string equal -nocase "+idlehalfop" $flags]} {
	antidle:set $chan
}

if {[string equal -nocase "-idleop" $flags] || [string equal -nocase "-idlevoice" $flags] || [string equal -nocase "-idlehalfop" $flags]} {
	antidle:unset $chan
}

if {[string equal -nocase "+antispam" $flags]} {
if {[setting:get $chan antispam-scantime] != ""} {
	set time [setting:get $chan antispam-scantime]
		} else {
	set time $black(spamcycle)
		}
	set scan_time [time_return_minute $time]
	set black(antispam:$chan:timer_start) $scan_time
}

if {[string equal -nocase "-antispam" $flags]} {
if {[info exists black(antispam:$chan:timer_start)]} {
	unset black(antispam:$chan:timer_start)
	}
if {[info exists black(antispam:counter:$chan)]} {
	unset black(antispam:counter:$chan)
	}
}

if {[string equal -nocase "+securemode" $flags]} {
	putserv "MODE $chan :+Dm"
foreach tmr [utimers] {
if {[string match "*securemode:timer*" [join [lindex $tmr 1]]]} {
	return
	}
}
	utimer 30 [list securemode:timer]
}

if {[string equal -nocase "-securemode" $flags]} {
	set found_list 0
	foreach tmr [utimers] {
if {[string match "*securemode:timer*" [join [lindex $tmr 1]]]} {
	putserv "MODE $chan :-Dm"
	set replace(%chan%) $chan1
	set text2 [black:color:set "" $black(say.$getlang.securemode.11)]
	set reply2 [join $text2]
	putserv "PRIVMSG $chan :[string map [array get replace] $reply2]"
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
	return
}
	set why [catch {channel set $chan $flags} error]
if {$why == "1"} { blacktools:tell $nick $host $hand $chan $chan1 set.5 $flags
	return
} else {
	channel set $chan $flags ; blacktools:tell $nick $host $hand $chan $chan1 set.6 $flags	
}

} else {
if {[matchattr $hand nm]} {
	set check_eggcmd [egg:setting_check $flags]
if {$check_eggcmd == "1"} {
	set return [egg:process $nick $host $hand $chan $chan1 $flags $type]
if {$return == "0"} {
	blacktools:tell $nick $host $hand $chan $chan1 set.2 "$flags $type"
	} elseif {$return == "1"} {
	blacktools:tell $nick $host $hand $chan $chan1 set.1 "$flags $type"
	return
	} else {
	blacktools:tell $nick $host $hand $chan $chan1 set.9 "$flags $type"
	return
		}
	return	
	}
}
if {![validchan $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.novalidchan none
	return
}
	set black_setting [setting:exists $flags]
	set int_set [catch {channel set $chan $flags $type} error]
if {$black_setting == "0" && $int_set == "1"} {
	blacktools:tell $nick $host $hand $chan $chan1 set.7 "$flags $type"
	return
}
	set choption 1
	set checkflags $flags
if {$choption == "0"} { return }

if {[string equal -nocase "joinflood" $flags] || [string equal -nocase "badchan-floodcontrol" $flags] || [string equal -nocase "antijoinflood-userset" $flags] || [string equal -nocase "antirepeat-setting" $flags] || [string equal -nocase "chanflood" $flags]} {
if {![regexp {[0-9]:[0-9]} $type]} {
	blacktools:tell $nick $host $hand $chan $chan1 set.7 "$flags $type"
	return
	}
}

if {[string equal -nocase "url" $flags]} {
if {$type == ""} {
	blacktools:tell $nick $host $hand $chan $chan1 set.7 "$flags $type"
	return
	}
}

if {[string equal -nocase "badchan-bmethod" $flags] || [string equal -nocase "badnick-bmethod" $flags]} {
if {[regexp {^[0-9]} $type] && [regexp {[a-z]} $type]} {
	blacktools:tell $nick $host $hand $chan $chan1 set.7 "$flags $type"	
	return
	} elseif {![regexp {^[0-9]} $type]} {
	blacktools:tell $nick $host $hand $chan $chan1 set.7 "$flags $type"	
	return
	} elseif {$type < 1 || $type > 2} {
	blacktools:tell $nick $host $hand $chan $chan1 set.7 "$flags $type"	
	return
	}
}

if {[string equal -nocase "anunt-showtime" $flags]} {
if {$type != ""} {
	set scan_time [time_return_minute $type]
if {$scan_time == "-1"} { 
	set time $black(anunttime)
	set scan_time [time_return_minute $time]
}
	set black(anunt:$chan:timer_start) $scan_time
if {[info exists black(anunt:counter:$chan)]} {
	set black(anunt:counter:$chan) 0
		}
	}
}

if {[string equal -nocase "voiceme-showtime" $flags]} {
if {$type != ""} {
	set scan_time [time_return_minute $type]
if {$scan_time == "-1"} { 
	set time $black(voiceme:msgtime)
	set scan_time [time_return_minute $time]
}
	set black(voiceme:$chan:timer_start) $scan_time
if {[info exists black(voiceme:counter:$chan)]} {
	set black(voiceme:counter:$chan) 0
		}
	}
}


if {[string equal -nocase "quote-showtime" $flags]} {
if {$type != ""} {
	set scan_time [time_return_minute $type]
if {$scan_time == "-1"} { 
	set time $black(quote:msgtime)
	set scan_time [time_return_minute $time]
}
	set black(quote:$chan:timer_start) $scan_time
if {[info exists black(quote:counter:$chan)]} {
	set black(quote:counter:$chan) 0
		}
	}
}

if {[string equal -nocase "badchan-scantime" $flags]} {
if {$type != ""} {
	set scan_time [time_return_minute $type]
if {$scan_time == "-1"} { 
	set time $black(badchan:scantime)
	set scan_time [time_return_minute $time]
}
	set black(badchan:$chan:timer_start) $scan_time
if {[info exists black(badchan:counter:$chan)]} {
	set black(badchan:counter:$chan) 0
		}
	}
}

if {[string equal -nocase "idle-scantime" $flags]} {
if {$type != ""} {
	set scan_time [time_return_minute $type]
if {$scan_time == "-1"} { 
	set time $black(idleinterval)
	set scan_time [time_return_minute $time]
}
	set black(idle:$chan:timer_start) $scan_time
if {[info exists black(idle:counter:$chan)]} {
	set black(idle:counter:$chan) 0
		}
	}
}

if {[string equal -nocase "antispam-scantime" $flags]} {
if {$type != ""} {
	set scan_time [time_return_minute $type]
if {$scan_time == "-1"} { 
	set time $black(spamcycle)
	set scan_time [time_return_minute $time]
}
	set black(antispam:$chan:timer_start) $scan_time
if {[info exists black(antispam:counter:$chan)]} {
	set black(antispam:counter:$chan) 0
		}
	}
}

if {[string equal -nocase "clonescan-scantime" $flags]} {
if {$type != ""} {
	set time ""
	set scan_time [time_return_minute $type]
if {$scan_time == "-1"} { 
	set time $black(clonescantime) 
	set scan_time [time_return_minute $time]
}
	set black(clonescan:$chan:timer_start) $scan_time
if {[info exists black(clonescan:counter:$chan)]} {
	set black(clonescan:counter:$chan) 0
		}
	}
}

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

if {[string match -nocase "backchan" $flags]} {
if {![validchan $type]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.novalidchan none	
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
if {([string equal -nocase $f "invisible"] || [string equal -nocase $f "forward"]) && [matchattr $hand mo|M $chan] && ![matchattr $hand n]} {
	continue
}
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
if {[string equal -nocase $setting "invisible"] || [string equal -nocase $setting "forward"] && ![matchattr $hand n]} {
	blacktools:tell $nick $host $hand $chan $chan1 unset.1 $setting
	return
}
if {[string equal -nocase $setting "settingsaved"]} {
	blacktools:tell $nick $host $hand $chan $chan1 unset.1 $setting
	return
}
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
	
if {[string equal -nocase $setting "clonescan-scantime"]} {
if {[info exists black(clonescan:counter:$chan)]} {
	unset black(clonescan:counter:$chan)
		}
if {[info exists black(clonescan:$chan:timer_start)]} {
	set black(clonescan:$chan:timer_start) 0
	}
}

if {[string equal -nocase $setting "anunt-showtime"]} {
if {[info exists black(anunt:counter:$chan)]} {
	unset black(anunt:counter:$chan)
		}
if {[info exists black(anunt:$chan:timer_start)]} {
	set black(anunt:$chan:timer_start) 0
	}
}

if {[string equal -nocase $setting "quote-showtime"]} {
if {[info exists black(quote:counter:$chan)]} {
	unset black(quote:counter:$chan)
		}
if {[info exists black(quote:$chan:timer_start)]} {
	set black(quote:$chan:timer_start) 0
	}
}

if {[string equal -nocase $setting "badchan-scantime"]} {
if {[info exists black(badchan:counter:$chan)]} {
	unset black(badchan:counter:$chan)
		}
if {[info exists black(badchan:$chan:timer_start)]} {
	set black(badchan:$chan:timer_start) 0
	}
}

if {[string equal -nocase $setting "idle-scantime"]} {
if {[info exists black(idle:counter:$chan)]} {
	unset black(idle:counter:$chan)
		}
if {[info exists black(idle:$chan:timer_start)]} {
	set black(idle:$chan:timer_start) 0
	}
}
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


############################### ignore ######################################

proc ignore:process {nick host hand chan chan1 what mask time reason type} {
global botnick black
	set cmd_status [btcmd:status $chan $hand "ignore" 0]
	set show_mask $mask
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

if {![regexp {[!]} $mask]} {
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
	set check_ignore [ignore:stop $mask]
if {$check_ignore != ""} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.validuser $check_ignore
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

proc ignore:stop {host} {
	global black
		set finduser ""
if {[userlist] != ""} {
foreach usr [userlist] {
	set hst [getuser $usr hosts]
foreach hhost $hst {
if {[string match -nocase $host $hhost] || [string match -nocase $hhost $host]} {
	set finduser $usr
				}
			}
		}
	}
	return $finduser
}

################################# show ################################

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

if {([string equal -nocase $wich "invisible"] || [string equal -nocase $wich "forward"]) && ![matchattr $hand n]} {
	blacktools:tell $nick $host $hand $chan $chan1 show.5 $wich
	return
}
	
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

badnick-bmethod {
	set replyinfo $black(badnbanmethod)
}

voiceme-showtime {
	set replyinfo $black(voiceme:msgtime)
}

quote-showtime {
	set replyinfo $black(quote:msgtime)
}

anunt-showtime {
	set replyinfo $black(anunttime)
}

quitpartmsgflood-char {
	set replyinfo $black(badquitpartmsgchar)
}

repetitivechars-char {
	set replyinfo $black(repetitivechars:num)
}

antispam-scantime {
	set replyinfo $black(spamcycle)
}

clonescan-scantime {
	set replyinfo $black(clonescantime)
}

badchan-scantime {
	set replyinfo $black(badchan:scantime)
}
badchan-floodcontrol {
	set replyinfo $black(badchan:join:seconds)
}

idle-scantime {
	set replyinfo $black(idleinterval)
}

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
	set replyinfo $black(say.$getlang.gl.noset)
}

url {
	set replyinfo $black(say.$getlang.gl.noset)
}

idlehalfopmax {
	set replyinfo $black(idlehalfopmax)
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
antijoinflood-userset {
	set replyinfo $black(antijoinflood_user_joins)
}

chanflood {
	set replyinfo $black(antichanfloodrepeats)
}

idleopmax {
	set replyinfo $black(idleopmax)
}

idlevoicemax {
	set replyinfo $black(idlevoicemax)
}

expirebans {
	set replyinfo $black(default:bantime)
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
	set remain_timer [show:getscantime:remain $wich $chan]
if {$remain_timer == "-1"} {
	blacktools:tell $nick $host $hand $chan $chan1 show.6 "$wich [join $replyinfo]"
	} else {
	blacktools:tell $nick $host $hand $chan $chan1 show.4 "$wich [join $replyinfo] $remain_timer"
	}
}

proc show:getscantime:remain {setting chan} {
	global black
	set remain ""
if {[string equal -nocase $setting "badchan-floodcontrol"]} {
	return -1
}
	set mod [split $setting "-"]
	set mod [lindex $mod 0]
if {[info exists black($mod:$chan:timer_start)] && [info exists black($mod:counter:$chan)]} {
	set remain [expr $black($mod:$chan:timer_start) - $black($mod:counter:$chan)]
	}
if {$remain == ""} {
		return -1
	} else { return $remain }
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
	if {[string equal -nocase $wich "$name-reason"] && [lsearch -exact [string tolower $cmds] [string tolower $name]] > -1} {
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

############################## stats ##################################

proc stats:process {nick host hand chan chan1 user option type} {
global botnick black timezone
	set cmd_status [btcmd:status $chan $hand "stats" 0]
if {$cmd_status == "1"} { 
	return
}
if {[matchattr $hand q]} { blacktools:tell $nick $host $hand $chan $chan1 gl.glsuspend none
	return
}
if {[matchattr $hand -|q $chan]} { blacktools:tell $nick $host $hand $chan $chan1 gl.suspend none
	return
}
	set handle ""
	set show_user $user
	set validuser 0
	set mask ""
if {$user == ""} {
switch $type {
	0 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr "stats"
	}
	1 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_nick "stats"
	}
	2 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_priv "stats"
		}
	}
	return
}

if {![validchan $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.novalidchan none
	return
}

if {[validuser $user]} {
	set validuser 1
} else {
	set handle [nick2hand $user]
if {[validuser $handle]} {
	set user $handle
	set validuser 1
		}
	}
if {$validuser == "0"} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.usernotexist $user
	return
}
switch [string tolower $option] {
	reset {
if {[matchattr $hand nmo|M]} {
	set reseted 0
	set cmds_today [getuser $user XTRA CMD_STATS_TODAY($chan)]
	set cmds_total [getuser $user XTRA CMD_STATS($chan)]

if {$cmds_today != ""} {
	set reseted 1
	setuser $user XTRA CMD_STATS_TODAY($chan)
}
if {$cmds_total != ""} {
	set reseted 1
	setuser $user XTRA CMD_STATS($chan)
}
if {$reseted == "1"} {
	blacktools:tell $nick $host $hand $chan $chan1 stats.5 $user
} else {
	blacktools:tell $nick $host $hand $chan $chan1 stats.1 $user	
			}
		}
	}
	total {
	stats:process:show $nick $host $hand $chan $chan1 $user "CMD_STATS($chan)"
	}
	default {
	stats:process:show $nick $host $hand $chan $chan1 $user "CMD_STATS_TODAY($chan)"
		}
	}
}

proc stats:process:show {nick host hand chan chan1 user option} {
	global black lastbind
	set cmds [getuser $user XTRA $option]
	set stats ""
	set total 0
	set total_k 0
	set cmds_gl ""
if {[matchattr $hand nmo]} {
	set cmds_gl [getuser $user XTRA BANS(GLOBAL)]
if {$cmds_gl == ""} {set cmds_gl 0 }
}
	
if {$cmds == ""} {
	blacktools:tell $nick $host $hand $chan $chan1 stats.1 $user
	return
}
foreach stat $cmds {
if {$stat != ""} {
	set split_stat [split $stat ":"]
	set cmd [lindex $split_stat 0]
	set num [lindex $split_stat 1]
if {[string equal -nocase "k" $cmd] || [string equal -nocase "w" $cmd]} {
	set total_k [expr $total_k + $num]
} else {
	set total [expr $total + $num]
}
	lappend stats "[black:color "1" $hand $cmd] ([black:color "2" $hand $num])"
	}
}

if {[matchattr $hand nmo]} {
if {[string equal -nocase "CMD_STATS_TODAY($chan)" $option]} {
	blacktools:tell $nick $host $hand $chan $chan1 stats.2 "$user $total $total_k [join $stats " ; "]"
} else {
	blacktools:tell $nick $host $hand $chan $chan1 stats.4 "$user $total $cmds_gl $total_k [join $stats " ; "]"
		}
	} else {
if {[string equal -nocase "CMD_STATS_TODAY($chan)" $option]} {
	blacktools:tell $nick $host $hand $chan $chan1 stats.2 "$user $total $total_k [join $stats " ; "]"
} else {
	blacktools:tell $nick $host $hand $chan $chan1 stats.3 "$user $total $total_k [join $stats " ; "]"
		}	
	}
}

################################# r #######################################

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
	set top "$black(say.$getlang.r.1)" 
	set len [llength $top] 
    set random [expr int(rand()*$len)] 
    set top [lindex $top $random]
	set text [black:color:set "" $top]
	set reply [join $text]
	putserv "TOPIC $chan :$reply"
	putserv "TOPIC $chan :$chantopic"
	} else {
	blacktools:tell $nick $host $hand $chan $chan1 r.2 none
	}
}


############################### omsg ###################################


proc omsg:process {nick host hand chan chan1 who msg type} {
	global black
	set cmd_status [btcmd:status $chan $hand "omsg" 0]
if {$cmd_status == "1"} { 
	return
}
if {[matchattr $hand q]} { blacktools:tell $nick $host $hand $chan $chan1 gl.glsuspend none
	return
}
if {[matchattr $hand -|q $chan]} { blacktools:tell $nick $host $hand $chan $chan1 gl.suspend none
	return
}
	set chans ""

if {$who == ""} {
switch $type {
	0 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr "omsg"
	}
	1 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_nick "omsg"
	}
	2 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_priv "omsg"
		}
	}
	return
}

if {$msg == ""} {
switch $type {
	0 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr "omsg"
	}
	1 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_nick "omsg"
	}
	2 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_priv "omsg"
		}
	}
	return
}

if {[string equal -nocase $who "all"]} {
	foreach c [channels] {
if {![setting:get $c invisible]} {
if {[matchattr $hand $black(accessflags) $c]} {
if {[botisop $c]} {
	lappend chans $c
				}
			}
		}
	}
if {$chans == ""} {
	return
}
	blacktools:tell $nick $host $hand $chan $chan1 omsg.1 [join $chans ", "]
	omsg:act $hand $chans 0 $msg
	return
}

if {![validchan $who]} { 
	blacktools:tell $nick $host $hand $chan $chan1 gl.novalidchan none
	return
}

if {[matchattr $hand $black(accessflags) $who]} {
if {![botisop $who]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.noop none
	return
}
	putserv "NOTICE @$who :\[BT\] ($hand) $msg"
	blacktools:tell $nick $host $hand $chan $chan1 omsg.1 $who
	}
}

proc omsg:act {hand chans number msg} {
	global black
	set chan [lindex $chans $number]
	putserv "NOTICE @$chan :\[BT\] ($hand) $msg"
	set number [expr $number + 1]
if {[lindex $chans $number] != ""} {
	utimer 2 [list omsg:act $hand $chans $number $msg]
	}
}

##############
#########################################################################
##   END                                                               ##
#########################################################################
