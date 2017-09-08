#########################################################################
##          BlackTools - The Ultimate Channel Control Script           ##
##                    One TCL. One smart Eggdrop                       ##
#########################################################################
#############################   HCMDS TCL   #############################
#########################################################################
##						                       ##
##     BlackTools  : http://blacktools.tclscripts.net	               ##
##     Bugs report : http://www.tclscripts.net/	                       ##
##     Online Help : irc://irc.undernet.org/tcl-help 	               ##
##                   #TCL-HELP / UnderNet                              ##
##                   You can ask in english or romanian                ##
##					                               ##
#########################################################################

proc hpublic {nick host hand chan arg} {
	global black botnick lastbind
	set chan1 "$chan"
	set type 0
	set command [lindex [split $arg] 0]
	set return [blacktools:mychar $lastbind $hand]
if {$return == "0"} {
		return
}
if {[regexp {^[&#]} $command]} {
	set chan $command
	set command [lindex [split $arg] 1]
}
foreach c [channels] {
	set nextbackchan [join [setting:get $c next-backchan]]
if {[string match -nocase $chan $nextbackchan]} {
if {[setting:get $c nextshortcmd]} {
	set chan "$c"
		}
	}
}
	
if {[setting:get $chan nextshortcmd]} {
	helpedpublic:process $nick $host $hand $chan $chan1 $command 0
	return
}
	h:process $nick $host $hand $chan $chan1 $command $type
}

proc h:process {nick host hand chan chan1 command type} {
global black botnick config lastbind
if {[matchattr $hand q]} { blacktools:tell $nick $host $hand $chan $chan1 gl.glsuspend none
	return
}
if {[matchattr $hand -|q $chan]} { blacktools:tell $nick $host $hand $chan $chan1 gl.suspend none
	return
}
	set cmd_status [btcmd:status $chan $hand "h" 0]
if {$cmd_status == "1"} { 
	return
}
	set number [scan $black(antiflood:cmd) %\[^:\]]
	set timer [scan $black(antiflood:cmd) %*\[^:\]:%s]
	set split_lastbind [split $lastbind ""]
	set charbind [lindex $split_lastbind 0]
if {[lsearch -exact $black(cmdchar) $charbind] < 0} {
	set charbind ""
}
	set replace(%botnick%) $botnick
if {[string equal $lastbind "*"]} { set charbind "" }
if {[string equal -nocase "**" $lastbind]} { set charbind "$botnick " }
	set replace(%char%) $charbind
if {[info exists black(flood:activ:$host)]} {
foreach tmr [utimers] {
if {[string match "*black(flood:activ:$host)*" [join [lindex $tmr 1]]]} {
	set time [lindex $tmr 0]
	}
}
	blacktools:tell $nick $host $hand $chan $chan1 h.16 "$time h"
	return
}
	foreach tmr [utimers] {
if {[string match "*black(floodcmd:$host:$chan)*" [join [lindex $tmr 1]]]} {
	killutimer [lindex $tmr 2]
	}
}

if {![info exists black(floodcmd:$host:$chan)]} { 
	set black(floodcmd:$host:$chan) 0 
}
	incr black(floodcmd:$host:$chan)
	utimer $timer [list unset black(floodcmd:$host:$chan)]

if {$black(floodcmd:$host:$chan) == "$number"} {
	blacktools:tell $nick $host $hand $chan $chan1 h.16 "30 h"
	set black(flood:activ:$host) 1
	utimer 30 [list unset black(flood:activ:$host)]
	return
}
	set replace(%chan%) $chan
	set greeting [getuser $hand XTRA BT_WELCOME]
	set chanlang [string tolower [setting:get $chan lang]]

if {[matchattr $hand -|V $chan]} {
	set access "VOICE"
} elseif {[matchattr $hand -|O $chan]} {
	set access "OP"
} elseif {[matchattr $hand -|A $chan]} {
	set access "ADMIN"
} elseif {[matchattr $hand -|M $chan]} {
	set access "MANAGER"
} elseif {[matchattr $hand n]} {
	set access "BOSS"
} elseif {[matchattr $hand m]} {
	set access "OWNER"
} elseif  {[matchattr $hand o]} {
	set access "MASTER"
}

if {$chanlang == ""} { set chanlang "[string tolower $black(default_lang)]" }
if {$greeting == ""} {
	putserv "PRIVMSG $nick :[string map [array get replace] $black(say.$chanlang.greeting.1)]"
	putserv "PRIVMSG $nick :[string map [array get replace] $black(say.$chanlang.greeting.2)]"
	putserv "PRIVMSG $nick :[string map [array get replace] $black(say.$chanlang.greeting.3)]"
	putserv "PRIVMSG $nick :[string map [array get replace] $black(say.$chanlang.greeting.4)]"
	putserv "PRIVMSG $nick :[string map [array get replace] $black(say.$chanlang.greeting.5)]"
	putserv "PRIVMSG $nick :[string map [array get replace] $black(say.$chanlang.greeting.6)]"
	setuser $hand XTRA BT_WELCOME 1
	return
}
	set getlang [string tolower [getuser $hand XTRA OUTPUT_LANG]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }

if {$command == ""} {
	switch $access {

	VOICE {
	blacktools:tell $nick $host $hand $chan $chan1 h.5 $black(say.$getlang.level.6)
switch $type {
	0 {
	blacktools:tell $nick $host $hand $chan $chan1 h.6 none
	}
	1 {
	blacktools:tell $nick $host $hand $chan $chan1 h.24 none
	}
	2 {
	blacktools:tell $nick $host $hand $chan $chan1 h.20 none
		}
	}
}
	OP {
	blacktools:tell $nick $host $hand $chan $chan1 h.7 $black(say.$getlang.level.5)
switch $type {
	0 {
	blacktools:tell $nick $host $hand $chan $chan1 h.8 none	
	}
	1 {
	blacktools:tell $nick $host $hand $chan $chan1 h.24 none
	}
	2 {
	blacktools:tell $nick $host $hand $chan $chan1 h.20 none
		}
	}	
}

	ADMIN {
	blacktools:tell $nick $host $hand $chan $chan1 h.11 $black(say.$getlang.level.4)
switch $type {
	0 {
	blacktools:tell $nick $host $hand $chan $chan1 h.12 none
	}
	1 {
	blacktools:tell $nick $host $hand $chan $chan1 h.23 none
	}
	2 {
	blacktools:tell $nick $host $hand $chan $chan1 h.19 none
		}
	}
}

	MANAGER {
	blacktools:tell $nick $host $hand $chan $chan1 h.13 $black(say.$getlang.level.3)
switch $type {
	0 {
	blacktools:tell $nick $host $hand $chan $chan1 h.14 none
	}
	1 {
	blacktools:tell $nick $host $hand $chan $chan1 h.22 none
	}
	2 {
	blacktools:tell $nick $host $hand $chan $chan1 h.18 none
		}
	}	
}

	OWNER {
	blacktools:tell $nick $host $hand $chan $chan1 h.3 $black(say.$getlang.level.2)
switch $type {
	0 {
	blacktools:tell $nick $host $hand $chan $chan1 h.4 none
	}
	1 {
	blacktools:tell $nick $host $hand $chan $chan1 h.21 none
	}
	2 {
	blacktools:tell $nick $host $hand $chan $chan1 h.17 none
			}	
		}	
	}	
	
	MASTER {
	blacktools:tell $nick $host $hand $chan $chan1 h.1 $black(say.$getlang.level.8)
switch $type {
	0 {
	blacktools:tell $nick $host $hand $chan $chan1 h.25 none
	}
	1 {
	blacktools:tell $nick $host $hand $chan $chan1 h.27 none
	}
	2 {
	blacktools:tell $nick $host $hand $chan $chan1 h.26 none
			}
		}
	}
	
	BOSS {
	blacktools:tell $nick $host $hand $chan $chan1 h.1 $black(say.$getlang.level.1)
	switch $type {
	0 {
	blacktools:tell $nick $host $hand $chan $chan1 h.4 none
	}
	1 {
	blacktools:tell $nick $host $hand $chan $chan1 h.21 none
	}
	2 {
	blacktools:tell $nick $host $hand $chan $chan1 h.17 none
			}	
		}
	}
}
	return
}

switch -exact -- [string tolower $command] {

	cmds {
	switch $access {

VOICE {
	set cmds [string map [array get replace] $black(say.$getlang.cmdsvoice)]
	set split_cmds [split $cmds ";"]
foreach cmd $split_cmds {
	set thecmd [lindex $cmd 0]
	set rest_of [lrange $cmd 1 end]
	set status [btcmd:status $chan $hand $thecmd 1]
if {$status == "1"} {
	continue
} else { set applycmd "[black:color 1 $hand $thecmd] [black:color 6 $hand [join $rest_of]] ;"  }
	lappend show_cmds [join $applycmd " "]
}
	blacktools:tell:h $nick $host $hand $chan $chan1 h.15 "[join $show_cmds]"
}	
	
OP {
	set cmds [string map [array get replace] $black(say.$getlang.cmdsop)]
	set split_cmds [split $cmds ";"]
foreach cmd $split_cmds {
	set thecmd [lindex $cmd 0]
	set rest_of [lrange $cmd 1 end]
	set status [btcmd:status $chan $hand $thecmd 1]
if {$status == "1"} {
	continue
} else { set applycmd "[black:color 1 $hand $thecmd] [black:color 6 $hand [join $rest_of]] ;" }
	lappend show_cmds [join $applycmd " "]
}
	blacktools:tell:h $nick $host $hand $chan $chan1 h.15 "[join $show_cmds]"
}

ADMIN {
	set cmds [string map [array get replace] $black(say.$getlang.cmdadmin)]
	set split_cmds [split $cmds ";"]
foreach cmd $split_cmds {
	set thecmd [lindex $cmd 0]
	set rest_of [lrange $cmd 1 end]
	set status [btcmd:status $chan $hand $thecmd 1]
if {$status == "1"} {
	continue
} else { set applycmd "[black:color 1 $hand $thecmd] [black:color 6 $hand [join $rest_of]] ;"  }
	lappend show_cmds [join $applycmd " "]
}
	blacktools:tell:h $nick $host $hand $chan $chan1 h.15 "[join $show_cmds]"
}

MANAGER {
	set cmds [string map [array get replace] $black(say.$getlang.cmdmanager)]
	set split_cmds [split $cmds ";"]
foreach cmd $split_cmds {
	set thecmd [lindex $cmd 0]
	set rest_of [lrange $cmd 1 end]
	set status [btcmd:status $chan $hand $thecmd 1]
if {$status == "1"} {
	set applycmd "\00300,14$thecmd [join $rest_of]\003"
} else { set applycmd "[black:color 1 $hand $thecmd] [black:color 6 $hand [join $rest_of]] ;"  }
	lappend show_cmds [join $applycmd " "]
}
	blacktools:tell:h $nick $host $hand $chan $chan1 h.15 "[join $show_cmds]"
}

OWNER {
	set cmds [string map [array get replace] $black(say.$getlang.cmdbossowner)]
	set split_cmds [split $cmds ";"]
foreach cmd $split_cmds {
	set thecmd [lindex $cmd 0]
	set rest_of [lrange $cmd 1 end]
	set status [btcmd:status $chan $hand $thecmd 1]
if {$status == "1"} {
	set applycmd "\00300,14$thecmd [join $rest_of]\003"
} else { set applycmd "[black:color 1 $hand $thecmd] [black:color 6 $hand [join $rest_of]] ;"  }
	lappend show_cmds [join $applycmd " "]
}
	blacktools:tell:h $nick $host $hand $chan $chan1 h.15 "[join $show_cmds]"
}

BOSS {
	set cmds [string map [array get replace] $black(say.$getlang.cmdbossowner)]
	set split_cmds [split $cmds ";"]
foreach cmd $split_cmds {
	set thecmd [lindex $cmd 0]
	set rest_of [lrange $cmd 1 end]
	set status [btcmd:status $chan $hand $thecmd 1]
if {$status == "1"} {
	set applycmd "\00300,14$thecmd [join $rest_of]\003"
} else { 
	set applycmd "[black:color 1 $hand $thecmd] [black:color 6 $hand [join $rest_of]] ;" 
}												
	lappend show_cmds [join $applycmd " "]
}
	blacktools:tell:h $nick $host $hand $chan $chan1 h.15 "[join $show_cmds]"
	}
	
MASTER {
	set cmds [string map [array get replace] $black(say.$getlang.cmdmaster)]
	set split_cmds [split $cmds ";"]
foreach cmd $split_cmds {
	set thecmd [lindex $cmd 0]
	set rest_of [lrange $cmd 1 end]
	set status [btcmd:status $chan $hand $thecmd 1]
if {$status == "1"} {
	set applycmd "\00300,14$thecmd [join $rest_of]\003"
} else { set applycmd "[black:color 1 $hand $thecmd] [black:color 6 $hand [join $rest_of]] ;"  }
	lappend show_cmds [join $applycmd " "]
}
	blacktools:tell:h $nick $host $hand $chan $chan1 h.15 "[join $show_cmds]"
	}	
}
	switch $type {
	0 {
	blacktools:tell $nick $host $hand $chan $chan1 hcommand.1 none
	}
	1 {
	blacktools:tell $nick $host $hand $chan $chan1 hcommand.2 none
	}
	2 {
	blacktools:tell $nick $host $hand $chan $chan1 hcommand.3 none
		}
	}
}

	ban {
switch $access {

VOICE {
	set cmds [string map [array get replace] $black(say.$getlang.banvoice)]
	set split_cmds [split $cmds ";"]
foreach cmd $split_cmds {
	set thecmd [lindex $cmd 0]
	set rest_of [lrange $cmd 1 end]
	set status [btcmd:status $chan $hand $thecmd 1]
if {$status == "1"} {
	continue
} else { set applycmd "[black:color 1 $hand $thecmd] [black:color 6 $hand [join $rest_of]] ;"  }
	lappend show_cmds [join $applycmd " "]
}
foreach txt [wordwrap [string map [array get replace] [join $show_cmds]] 450] {	
	blacktools:tell:h $nick $host $hand $chan $chan1 h.15 "$txt"
	}
}

OP {
	set cmds [string map [array get replace] $black(say.$getlang.banop)]
	set split_cmds [split $cmds ";"]
foreach cmd $split_cmds {
	set thecmd [lindex $cmd 0]
	set rest_of [lrange $cmd 1 end]
	set status [btcmd:status $chan $hand $thecmd 1]
if {$status == "1"} {
	continue
} else { set applycmd "[black:color 1 $hand $thecmd] [black:color 6 $hand [join $rest_of]] ;"  }
	lappend show_cmds [join $applycmd " "]
}
foreach txt [wordwrap [string map [array get replace] [join $show_cmds]] 450] {	
	blacktools:tell:h $nick $host $hand $chan $chan1 h.15 "$txt"
	}
}

ADMIN {
	set cmds [string map [array get replace] $black(say.$getlang.banadmin)]
	set split_cmds [split $cmds ";"]
foreach cmd $split_cmds {
	set thecmd [lindex $cmd 0]
	set rest_of [lrange $cmd 1 end]
	set status [btcmd:status $chan $hand $thecmd 1]
if {$status == "1"} {
	continue
} else { set applycmd "[black:color 1 $hand $thecmd] [black:color 6 $hand [join $rest_of]] ;"  }
	lappend show_cmds [join $applycmd " "]
}
foreach txt [wordwrap [string map [array get replace] [join $show_cmds]] 450] {	
	blacktools:tell:h $nick $host $hand $chan $chan1 h.15 "$txt"
	}
}


MANAGER {
	set cmds [string map [array get replace] $black(say.$getlang.banmanager)]
	set split_cmds [split $cmds ";"]
foreach cmd $split_cmds {
	set thecmd [lindex $cmd 0]
	set rest_of [lrange $cmd 1 end]
	set status [btcmd:status $chan $hand $thecmd 1]
if {$status == "1"} {
	set applycmd "\00300,14$thecmd [join $rest_of]\003"
} else { set applycmd "[black:color 1 $hand $thecmd] [black:color 6 $hand [join $rest_of]] ;"  }
	lappend show_cmds [join $applycmd " "]
}
foreach txt [wordwrap [string map [array get replace] [join $show_cmds]] 450] {
	blacktools:tell:h $nick $host $hand $chan $chan1 h.15 "$txt"
	}
}

OWNER {
	set cmds [string map [array get replace] $black(say.$getlang.banbossowner)]
	set split_cmds [split $cmds ";"]
foreach cmd $split_cmds {
	set thecmd [lindex $cmd 0]
	set rest_of [lrange $cmd 1 end]
	set status [btcmd:status $chan $hand $thecmd 1]
if {$status == "1"} {
	set applycmd "\00300,14$thecmd [join $rest_of]\003"
} else { set applycmd "[black:color 1 $hand $thecmd] [black:color 6 $hand [join $rest_of]] ;"  }
	lappend show_cmds [join $applycmd " "]
}
foreach txt [wordwrap [string map [array get replace] [join $show_cmds]] 440] {	
	blacktools:tell:h $nick $host $hand $chan $chan1 h.15 "$txt"
	}
}

BOSS {
	set cmds [string map [array get replace] $black(say.$getlang.banbossowner)]
	set split_cmds [split $cmds ";"]
foreach cmd $split_cmds {
	set thecmd [lindex $cmd 0]
	set rest_of [lrange $cmd 1 end]
	set status [btcmd:status $chan $hand $thecmd 1]
if {$status == "1"} {
	set applycmd "\00300,14$thecmd [join $rest_of]\003"
} else { set applycmd "[black:color 1 $hand $thecmd] [black:color 6 $hand [join $rest_of]] ;"  }
	lappend show_cmds [join $applycmd " "]
}
foreach txt [wordwrap [string map [array get replace] [join $show_cmds]] 440] {	
	blacktools:tell:h $nick $host $hand $chan $chan1 h.15 "$txt"
		}
	}
	
MASTER {
	set cmds [string map [array get replace] $black(say.$getlang.banmaster)]
	set split_cmds [split $cmds ";"]
foreach cmd $split_cmds {
	set thecmd [lindex $cmd 0]
	set rest_of [lrange $cmd 1 end]
	set status [btcmd:status $chan $hand $thecmd 1]
if {$status == "1"} {
	set applycmd "\00300,14$thecmd [join $rest_of]\003"
} else { set applycmd "\002$thecmd\002 [join $rest_of] ;" }
	lappend show_cmds [join $applycmd " "]
}
foreach txt [wordwrap [string map [array get replace] [join $show_cmds]] 440] {	
	blacktools:tell:h $nick $host $hand $chan $chan1 h.15 "$txt"
		}
	}	
}
	switch $type {
	0 {
	blacktools:tell $nick $host $hand $chan $chan1 hcommand.1 none
	}
	1 {
	blacktools:tell $nick $host $hand $chan $chan1 hcommand.2 none
	}
	2 {
	blacktools:tell $nick $host $hand $chan $chan1 hcommand.3 none
		}
	}
}

	add {
	switch $access {
ADMIN {
	set cmds [string map [array get replace] $black(say.$getlang.addadmin)]
	set split_cmds [split $cmds ";"]
foreach cmd $split_cmds {
	set thecmd [lindex $cmd 0]
	set rest_of [lrange $cmd 1 end]
	set status [btcmd:status $chan $hand $thecmd 1]
if {$status == "1"} {
	continue
} else { set applycmd "[black:color 1 $hand $thecmd] [black:color 6 $hand [join $rest_of]] ;"  }
	lappend show_cmds [join $applycmd " "]
}
	blacktools:tell:h $nick $host $hand $chan $chan1 h.15 "[join $show_cmds]"
}

MASTER {
	set cmds [string map [array get replace] $black(say.$getlang.addmaster)]
	set split_cmds [split $cmds ";"]
foreach cmd $split_cmds {
	set thecmd [lindex $cmd 0]
	set rest_of [lrange $cmd 1 end]
	set status [btcmd:status $chan $hand $thecmd 1]
if {$status == "1"} {
	set applycmd "\00300,14$thecmd [join $rest_of]\003"
} else { set applycmd "[black:color 1 $hand $thecmd] [black:color 6 $hand [join $rest_of]] ;"  }
	lappend show_cmds [join $applycmd " "]
}
	blacktools:tell:h $nick $host $hand $chan $chan1 h.15 "[join $show_cmds]"
}

MANAGER {
	set cmds [string map [array get replace] $black(say.$getlang.addmanager)]
	set split_cmds [split $cmds ";"]
foreach cmd $split_cmds {
	set thecmd [lindex $cmd 0]
	set rest_of [lrange $cmd 1 end]
	set status [btcmd:status $chan $hand $thecmd 1]
if {$status == "1"} {
	set applycmd "\00300,14$thecmd [join $rest_of]\003"
} else { set applycmd "[black:color 1 $hand $thecmd] [black:color 6 $hand [join $rest_of]] ;"  }
	lappend show_cmds [join $applycmd " "]
}
	blacktools:tell:h $nick $host $hand $chan $chan1 h.15 "[join $show_cmds]"
}

OWNER {
	set cmds [string map [array get replace] $black(say.$getlang.addowner)]
	set split_cmds [split $cmds ";"]
foreach cmd $split_cmds {
	set thecmd [lindex $cmd 0]
	set rest_of [lrange $cmd 1 end]
	set status [btcmd:status $chan $hand $thecmd 1]
if {$status == "1"} {
	set applycmd "\00300,14$thecmd [join $rest_of]\003"
} else { set applycmd "[black:color 1 $hand $thecmd] [black:color 6 $hand [join $rest_of]] ;"  }
	lappend show_cmds [join $applycmd " "]
}
	blacktools:tell:h $nick $host $hand $chan $chan1 h.15 "[join $show_cmds]"

}

BOSS {
	set cmds [string map [array get replace] $black(say.$getlang.addbossowner)]
	set split_cmds [split $cmds ";"]
foreach cmd $split_cmds {
	set thecmd [lindex $cmd 0]
	set rest_of [lrange $cmd 1 end]
	set status [btcmd:status $chan $hand $thecmd 1]
if {$status == "1"} {
	set applycmd "\00300,14$thecmd [join $rest_of]\003"
} else { set applycmd "[black:color 1 $hand $thecmd] [black:color 6 $hand [join $rest_of]] ;"  }
	lappend show_cmds [join $applycmd " "]
}
	blacktools:tell:h $nick $host $hand $chan $chan1 h.15 "[join $show_cmds]"
			}
		}	
	switch $type {
	0 {
	blacktools:tell $nick $host $hand $chan $chan1 hcommand.1 none
	}
	1 {
	blacktools:tell $nick $host $hand $chan $chan1 hcommand.2 none
	}
	2 {
	blacktools:tell $nick $host $hand $chan $chan1 hcommand.3 none
		}
	}
}

	manager {
if {$access == "MANAGER"} {
	set cmds [string map [array get replace] $black(say.$getlang.hmanager.1)]
	set split_cmds [split $cmds ";"]
foreach cmd $split_cmds {
	set thecmd [lindex $cmd 0]
	set rest_of [lrange $cmd 1 end]
	set status [btcmd:status $chan $hand $thecmd 1]
if {$status == "1"} {
	set applycmd "\00300,14$thecmd [join $rest_of]\003"
} else { set applycmd "[black:color 1 $hand $thecmd] [black:color 6 $hand [join $rest_of]] ;"  }
	lappend show_cmds [join $applycmd " "]
}
	blacktools:tell:h $nick $host $hand $chan $chan1 h.15 "[join $show_cmds]"
switch $type {
	0 {
	blacktools:tell $nick $host $hand $chan $chan1 hcommand.1 none
	}
	1 {
	blacktools:tell $nick $host $hand $chan $chan1 hcommand.2 none
	}
	2 {
	blacktools:tell $nick $host $hand $chan $chan1 hcommand.3 none
			}
		}	
	}
}

	master {
if {$access == "MASTER"} {
	set cmds [string map [array get replace] $black(say.$getlang.hmaster.1)]
	set split_cmds [split $cmds ";"]
foreach cmd $split_cmds {
	set thecmd [lindex $cmd 0]
	set rest_of [lrange $cmd 1 end]
	set status [btcmd:status $chan $hand $thecmd 1]
if {$status == "1"} {
	set applycmd "\00300,14$thecmd [join $rest_of]\003"
} else { set applycmd "[black:color 1 $hand $thecmd] [black:color 6 $hand [join $rest_of]] ;"  }
	lappend show_cmds [join $applycmd " "]
		}
	}
	foreach txt [wordwrap [string map [array get replace] [join $show_cmds]] 330] {	
	blacktools:tell:h $nick $host $hand $chan $chan1 h.15 "$txt"
}
	switch $type {
	0 {
	blacktools:tell $nick $host $hand $chan $chan1 hcommand.1 none
	}
	1 {
	blacktools:tell $nick $host $hand $chan $chan1 hcommand.2 none
	}
	2 {
	blacktools:tell $nick $host $hand $chan $chan1 hcommand.3 none
			}
		}
	}
	
	owner {
if {[matchattr $hand nm]} {
	set cmds [string map [array get replace] $black(say.$getlang.hbossowner.1)]
	set split_cmds [split $cmds ";"]
foreach cmd $split_cmds {
	set thecmd [lindex $cmd 0]
	set rest_of [lrange $cmd 1 end]
	set status [btcmd:status $chan $hand $thecmd 1]
if {$status == "1"} {
	set applycmd "\00300,14$thecmd [join $rest_of]\003"
} else { set applycmd "[black:color 1 $hand $thecmd] [black:color 6 $hand [join $rest_of]] ;"  }
	lappend show_cmds [join $applycmd " "]
		}
	}
	foreach txt [wordwrap [string map [array get replace] [join $show_cmds]] 330] {	
	blacktools:tell:h $nick $host $hand $chan $chan1 h.15 "$txt"
}
	switch $type {
	0 {
	blacktools:tell $nick $host $hand $chan $chan1 hcommand.1 none
	}
	1 {
	blacktools:tell $nick $host $hand $chan $chan1 hcommand.2 none
	}
	2 {
	blacktools:tell $nick $host $hand $chan $chan1 hcommand.3 none
		}
	}
}

btinfo {
if {[matchattr $hand nm|M $chan]} {
foreach setting $black(extra_flag) {
if {$setting != ""} {
if {[string equal -nocase $setting "chanlink"]} {
	continue
}
if {[string equal -nocase $setting "invisible"] && [matchattr $hand mo|M $chan] && ![matchattr $hand n]} {
	continue
}
if {[setting:get $chan $setting]} {
	lappend btflags +[black:color 2 $hand $setting]
	} else {
	lappend btflags -[black:color 4 $hand $setting]
		}
	}
}

	set btflag_list "$black(say.$getlang.hchaninfo.2) $btflags"
foreach flag [wordwrap [join $btflag_list]  440] {
	blacktools:tell:h $nick $host $hand $chan $chan1 h.15 "$flag"
		}
switch $type {
	0 {
	blacktools:tell $nick $host $hand $chan $chan1 hcommand.4 none
	}
	1 {
	blacktools:tell $nick $host $hand $chan $chan1 hcommand.5 none
	}
	2 {
	blacktools:tell $nick $host $hand $chan $chan1 hcommand.6 none
			}
		}
	}
}

chaninfo {

if {[matchattr $hand nm|M $chan]} {
	set flag_list ""
foreach info [channel info $chan] { 
if {[regexp {^[+]} $info]} {
 lappend flag_list [black:color 2 $hand $info] 
	}
if {[regexp {^[-]} $info]} {
 lappend flag_list [black:color 4 $hand $info] 
	}
}
	set bantime [channel get $chan ban-time]
	set floodchan [channel get $chan flood-chan]
	set floodjoin [channel get $chan flood-join]
	set floodkick [channel get $chan flood-kick]
	set floodctcp [channel get $chan flood-ctcp]
	set floodnick [channel get $chan flood-nick]
	set flooddeop [channel get $chan flood-deop]
	set chanmode [channel get $chan chanmode]

	set floodchan [string map {" " ":"} $floodchan]
	set floodjoin [string map {" " ":"} $floodjoin]
	set floodkick [string map {" " ":"} $floodkick]
	set floodctcp [string map {" " ":"} $floodctcp]
	set floodnick [string map {" " ":"} $floodnick]
	set flooddeop [string map {" " ":"} $flooddeop]
	set eggdrop_flags "[black:color 1 $hand flood-chan] $floodchan [black:color 1 $hand flood-join] $floodjoin [black:color 1 $hand flood-kick]  $floodkick [black:color 1 $hand flood-ctcp] $floodctcp [black:color 1 $hand flood-nick] $floodnick [black:color 1 $hand flood-deop] $flooddeop [black:color 1 $hand bantime] $bantime [black:color 1 $hand chanmode]  $chanmode"
foreach flag [wordwrap $flag_list 400] {
	blacktools:tell:h $nick $host $hand $chan $chan1 h.15 " $black(say.$getlang.hchaninfo.1) $flag"
		}
	blacktools:tell:h $nick $host $hand $chan $chan1 h.15 "$black(say.$getlang.hchaninfo.3) : $eggdrop_flags"
switch $type {
	0 {
	blacktools:tell $nick $host $hand $chan $chan1 hcommand.4 none
	}
	1 {
	blacktools:tell $nick $host $hand $chan $chan1 hcommand.5 none
	}
	2 {
	blacktools:tell $nick $host $hand $chan $chan1 hcommand.6 none
			}
		}
	}
}

module {

set allmodules "Anunt AutoBroadcast BadChan Idle Limit XTools Xonly Seen VoiceMe VoiceOnMsg CloneScan EGG ChanLink SecureMode Private GuestNick Greet Leave Topic Timer Next TopWords BackChan ReportNick Quote Note Language"
set manager_module "Anunt BadChan Idle Limit XTools Xonly Seen VoiceMe VoiceOnMsg Clonescan Securemode Private Guestnick Greet Leave Topic Next TopWords BackChan ReportNick Quote Note Language"
set owner_modules "Anunt AutoBroadcast BadChan Idle Limit CloneScan XTools Xonly Seen VoiceMe VoiceOnMsg CloneScan EGG ChanLink SecureMode Private GuestNick Greet Leave Topic Timer Next TopWords BackChan ReportNick Quote Note Language"
set module_output ""
set other_module "Note"
set master_module "Anunt BadChan Idle Limit XTools Xonly Seen VoiceMe VoiceOnMsg Clonescan Securemode Private Guestnick Greet Leave Topic Next TopWords BackChan ReportNick Quote Note Language"

if {[matchattr $hand n]} {
	set current_modules $allmodules
} elseif {[matchattr $hand m]} {
	set current_modules $owner_modules
} elseif {[matchattr $hand o]} {
	set current_modules $master_module
} elseif {[matchattr $hand -|M $chan]} {
	set current_modules $manager_module
} else {
	set current_modules $other_module
}
foreach m $current_modules {
if {[string equal -nocase $m "quote"]} {
	set m "q"
}
if {[string equal -nocase $m "autobroadcast"]} {
	set m "bt"
}
	set cmd_status [btcmd:status $chan $hand $m 1]
if {[string equal -nocase $m "Topic"]} {
	set m "AutoTopic"
}
if {[string equal -nocase $m "q"]} {
	set m "Quote"
}
if {[string equal -nocase $m "bt"]} {
	set m "AutoBroadcast"
}

if {$cmd_status == "1"} {
	set m "\0034$m\003"
}
	switch [string tolower [color:filter $m]] {
anunt {
if {[setting:get $chan anunt]} {
	lappend module_output "[black:color 2 $hand $m]\[+\] ;"
} else { lappend module_output "[black:color 4 $hand $m]\[-\] ;"}
}

quote {
if {[setting:get $chan quote]} {
	lappend module_output "[black:color 2 $hand $m]\[+\] ;"
} else { lappend module_output "[black:color 4 $hand $m]\[-\] ;"}
}

note {
if {[setting:get $chan note]} {
	lappend module_output "[black:color 2 $hand $m]\[+\] ;"
} else { lappend module_output "[black:color 4 $hand $m]\[-\] ;"}
}

chanlink {
if {[link:status $chan] == "1"} {
	lappend module_output "[black:color 2 $hand $m]\[+\] ;"
} else { lappend module_output "[black:color 4 $hand $m]\[-\] ;"
	}
}

autobroadcast {
	set found_module 0
	foreach tmr [timers] {
if {[string match "*broadcastpublic:show*" [join [lindex $tmr 1]]]} {
	lappend module_output "[black:color 2 $hand $m]\[+\] ;"
	set found_module 1
	}
}
if {$found_module == "0"} {
	lappend module_output "[black:color 4 $hand $m]\[-\] ;"
	}
}

badchan {
if {[setting:get $chan antibadchan]} {
	lappend module_output "[black:color 2 $hand $m]\[+\] ;"
} else { lappend module_output "[black:color 4 $hand $m]\[-\] ;"}	
}

idle {
	set idle_type ""
if {[setting:get $chan idleop]} {
	set idle_type "@"
}
if {[setting:get $chan idlevoice]} {
	set idle_type "$idle_type+"
}
if {$idle_type == ""} {
	set idle_type ""
}
	lappend module_output "[black:color 1 $hand $m]\[$idle_type\] ;"
}

limit {
if {[setting:get $chan limit]} {
	lappend module_output "[black:color 2 $hand $m]\[+\] ;"
} else { lappend module_output "[black:color 4 $hand $m]\[-\] ;"}	
}

clonescan {
if {[setting:get $chan clonescan]} {
	lappend module_output "[black:color 2 $hand $m]\[+\] ;"
} else { lappend module_output "[black:color 4 $hand $m]\[-\] ;"}	
}

xtools {
if {[setting:get $chan xtools]} {
	lappend module_output "[black:color 2 $hand $m]\[+\] ;"
} else { lappend module_output "[black:color 4 $hand $m]\[-\] ;"}
}

xonly {
if {[setting:get $chan xonly]} {
	lappend module_output "[black:color 2 $hand $m]\[+\] ;"
} else { lappend module_output "[black:color 4 $hand $m]\[-\] ;"}
}

seen {
if {[setting:get $chan seen]} {
	lappend module_output "[black:color 2 $hand $m]\[+\] ;"
} else { lappend module_output "[black:color 4 $hand $m]\[-\] ;"}
}

voiceme {
if {[setting:get $chan voiceme]} {
	lappend module_output "[black:color 2 $hand $m]\[+\] ;"
} else { lappend module_output "[black:color 4 $hand $m]\[-\] ;"}
}

voiceonmsg {
if {[setting:get $chan voiceonmsg]} {
	lappend module_output "[black:color 2 $hand $m]\[+\] ;"
} else { lappend module_output "[black:color 4 $hand $m]\[-\] ;"}
}

egg {
	lappend module_output "[black:color 1 $hand $m]\[\] ;"
}

note {
if {[setting:get $chan note]} {
	lappend module_output "[black:color 2 $hand $m]\[+\] ;"
} else { lappend module_output "[black:color 4 $hand $m]\[-\] ;"}
}

securemode {
if {[setting:get $chan securemode]} {
	lappend module_output "[black:color 2 $hand $m]\[+\] ;"
} else { lappend module_output "[black:color 4 $hand $m]\[-\] ;" }	
}

private {
if {[setting:get $chan private]} {
	lappend module_output "[black:color 2 $hand $m]\[+\] ;"
} else { lappend module_output "[black:color 4 $hand $m]\[-\] ;" }	
}


guestnick {
if {[setting:get $chan guestnick]} {
	lappend module_output "[black:color 2 $hand $m]\[+\] ;"
} else { lappend module_output "[black:color 4 $hand $m]\[-\] ;"}	
}

greet {
if {[setting:get $chan greet]} {
	lappend module_output "[black:color 2 $hand $m]\[+\] ;"
} else { lappend module_output "[black:color 4 $hand $m]\[-\] ;"}	
}

leave {
if {[setting:get $chan leave]} {
	lappend module_output "[black:color 2 $hand $m]\[+\] ;"
} else { lappend module_output "[black:color 4 $hand $m]\[-\] ;"}	
}

autotopic {
if {[setting:get $chan autotopic]} {
	lappend module_output "[black:color 2 $hand $m]\[+\] ;"
} else { lappend module_output "[black:color 4 $hand $m]\[-\] ;"}	
}

timer {
	lappend module_output "[black:color 1 $hand $m]\[\] ;"
}

topwords {
if {[setting:get $chan topwords]} {
	lappend module_output "[black:color 2 $hand $m]\[+\] ;"
} else { lappend module_output "[black:color 4 $hand $m]\[-\] ;"}	
}

next {
if {[setting:get $chan next]} {
	lappend module_output "[black:color 2 $hand $m]\[+\] ;"
} else { lappend module_output "[black:color 4 $hand $m]\[-\] ;"}	
}

quote {
if {[setting:get $chan quoteofday]} {
	lappend module_output "[black:color 2 $hand $m]\[+\] ;"
} else { lappend module_output "[black:color 4 $hand $m]\[-\] ;"}	
}

backchan {
if {[setting:get $chan backchan] != ""} {
	lappend module_output "[black:color 2 $hand $m]\[+\] ;"
} else { lappend module_output "[black:color 4 $hand $m]\[-\] ;"}	
}

reportnick {
if {[setting:get $chan reportnick]} {
	lappend module_output "[black:color 2 $hand $m]\[+\] ;"
} else { lappend module_output "[black:color 4 $hand $m]\[-\] ;"}	
}

language {
	set lang [string toupper [setting:get $chan lang]]
if {$getlang == ""} { set getlang "[string toupper $black(default_lang)]" }
	lappend module_output "[black:color 1 $hand $m]\[$lang\] ;"
					}
				}
			}					
	blacktools:tell:h $nick $host $hand $chan $chan1 h.15 "[join $module_output]"
	switch $type {
	0 {
	blacktools:tell $nick $host $hand $chan $chan1 hcommand.7 none
	}
	1 {
	blacktools:tell $nick $host $hand $chan $chan1 hcommand.8 none
	}
	2 {
	blacktools:tell $nick $host $hand $chan $chan1 hcommand.9 none
				}
			}
		}
egg {
	set tcl_config $black(tclconfig)
	set eggcmds ""
	set egg_cmds "cmdchar;defaultlang;homechan;nick;realname;away;defaultoutput;floodmenuprot;floodmsgprot;floodnotcprot;chanremove-setting;user-expire;pagelimit;login;chanserv;hostchanserv;userlogin;userpass;add-mask;adduser-mask;antispam-cycletime;idle-scantime ;clonescan-scantime;broadcast-showtime;badchan-scantime;anunt-showtime;quoteofday-showtime"
	set split_cmds [split $egg_cmds ";"]
foreach cmd [color:filter $split_cmds] {
	switch $cmd {
	away {
	set get_info [config:getinfo $tcl_config "set black(default_away) \"*\""]
	lappend eggcmds [black:color 2 $hand $cmd]\[$get_info\]
	}
	adduser-mask {
	set get_info [config:getinfo $tcl_config "set black(addusermask) \"*\""]
	switch $get_info {
	1 {
	set get_info "*!*@host"
	}
	2 {
	set get_info "*!user@host"
	}
	3 {
	set get_info "nick!user@host"
	}
	4 {
	set get_info "nick!*@*"
	}
	5 {
	set get_info "*!user@*"
			}
		}
	lappend eggcmds [black:color 2 $hand $cmd]\[$get_info\]
	}
	hostchanserv {
	set get_info [config:getinfo $tcl_config "set black(hostchanserv) \"*\""]
	lappend eggcmds [black:color 2 $hand $cmd]\[$get_info\]
	}
	quoteofday-showtime {
	set get_info [config:getinfo $tcl_config "set black(quote:msgtime) \"*\""]
	lappend eggcmds [black:color 2 $hand $cmd]\[$get_info\]
	}
	anunt-showtime {
	set get_info [config:getinfo $tcl_config "set black(anunttime) \"*\""]
	lappend eggcmds [black:color 2 $hand $cmd]\[$get_info\]
	}
	badchan-scantime {
	set get_info [config:getinfo $tcl_config "set black(badchan:scantime) \"*\""]
	lappend eggcmds [black:color 2 $hand $cmd]\[$get_info\]
	}
	clonescan-scantime {
	set get_info [config:getinfo $tcl_config "set black(clonescantime) \"*\""]
	lappend eggcmds [black:color 2 $hand $cmd]\[$get_info\]
	}
	broadcast-showtime {
	set get_info [config:getinfo $tcl_config "set black(bttime) \"*\""]
	lappend eggcmds [black:color 2 $hand $cmd]\[$get_info\]
	}
	idle-scantime {
	set get_info [config:getinfo $tcl_config "set black(idleinterval) \"*\""]
	lappend eggcmds [black:color 2 $hand $cmd]\[$get_info\]
	}
	antispam-cycletime {
	set get_info [config:getinfo $tcl_config "set black(spamcycle) \"*\""]
	lappend eggcmds [black:color 2 $hand $cmd]\[$get_info\]
	}
	add-mask {
	set get_info [config:getinfo $tcl_config "set black(hostadd) \"*\""]
	lappend eggcmds [black:color 2 $hand $cmd]\[$get_info\]
	}
	realname {
	set get_info [config:getinfo $config "set realname \"*\""]
	lappend eggcmds [black:color 2 $hand $cmd]\[$get_info\]
	}
	userlogin {
	set get_info [config:getinfo $tcl_config "set black(username) \"*\""]
	lappend eggcmds [black:color 2 $hand $cmd]\[$get_info\]
	}
	chanserv {
	set get_info [config:getinfo $tcl_config "set black(chanserv) \"*\""]
	lappend eggcmds [black:color 2 $hand $cmd]\[$get_info\]
	}
	nick {
	set get_info [config:getinfo $config "set nick \"*\""]
	lappend eggcmds [black:color 2 $hand $cmd]\[$get_info\]
	}
	cmdchar {
	set get_info [config:getinfo $tcl_config "set black(cmdchar) \"*\""]
	lappend eggcmds [black:color 2 $hand $cmd]\[$get_info\]
	}
	defaultlang {
	set get_info [config:getinfo $tcl_config "set black(default_lang) \"*\""]
	lappend eggcmds [black:color 2 $hand $cmd]\[$get_info\]
	}
	defaultoutput {
	set get_info [config:getinfo $tcl_config "set black(default_output) \"*\""]
	switch $get_info {
	0 {
	set get_info "NOTICE"
	}
	1 {
	set get_info "CHAN"
	}
	2 {
	set get_info "PRIVMSG"
		}
	}
	lappend eggcmds [black:color 2 $hand $cmd]\[$get_info\]
	}
	homechan {
	set get_info [config:getinfo $tcl_config "set black(homechan) \"*\""]
	lappend eggcmds [black:color 2 $hand $cmd]\[$get_info\]
	}
	floodmenuprot {
	set get_info [config:getinfo $tcl_config "set black(antiflood:cmd) \"*\""]
	lappend eggcmds [black:color 2 $hand $cmd]\[$get_info\]
	}
	floodmsgprot {
	set get_info [config:getinfo $tcl_config "set black(msg:flood) \"*\""]
	lappend eggcmds [black:color 2 $hand $cmd]\[$get_info\]
	}
	floodnotcprot {
	set get_info [config:getinfo $tcl_config "set black(notice:flood) \"*\""]
	lappend eggcmds [black:color 2 $hand $cmd]\[$get_info\]
	}
	chanremove-setting {
	set get_info [config:getinfo $tcl_config "set black(chanremove_all) \"*\""]
	lappend eggcmds [black:color 2 $hand $cmd]\[$get_info\]
	}
	user-expire {
	set get_info [config:getinfo $tcl_config "set black(user_expire_time) \"*\""]
	lappend eggcmds [black:color 2 $hand $cmd]\[$get_info\]
	}
	pagelimit {
	set get_info [config:getinfo $tcl_config "set black(modul:nr:entries) \"*\""]
	lappend eggcmds [black:color 2 $hand $cmd]\[$get_info\]
	}
	login {
	lappend eggcmds [black:color 2 $hand $cmd]
	}
	default {
	lappend eggcmds [black:color 2 $hand $cmd]\[\]
		}
	}
}
	foreach option [wordwrap [join $eggcmds " ; "]  450] {
	blacktools:tell:h $nick $host $hand $chan $chan1 hegg.1 "$option"
		}
	switch $type {
	0 {
	blacktools:tell $nick $host $hand $chan $chan1 hegg.2 none
	}
	1 {
	blacktools:tell $nick $host $hand $chan $chan1 hegg.3 none
	}
	2 {
	blacktools:tell $nick $host $hand $chan $chan1 hegg.4 none
				}
			}
		}		
	}
}

##############
#########################################################################
##   END                                                               ##
#########################################################################
