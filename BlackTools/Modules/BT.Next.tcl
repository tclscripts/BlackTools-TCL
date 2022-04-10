#########################################################################
##          BlackTools - The Ultimate Channel Control Script           ##
##                    One TCL. One smart Eggdrop                       ##
#########################################################################
#############################   NEXT TCL   ##############################
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

proc black:next:join {nick host hand chan} {
		global black
		set counter 0
		set time [unixtime]
		set handle [nick2hand $nick]
		set lang [setting:get $chan lang]
if {$lang == ""} { set lang [string tolower $black(default_lang)] }
if {[setting:get $chan next]} {
if {[matchattr $hand $black(exceptflags) $chan]} { 
	pushmode $chan +v $nick
	return
}
if {[string equal -nocase $nick $black(chanserv)]} {
	return
}
if {[isbotnick $nick]} { 
	black:next:joincheck $chan
	return
}
if {[info exists black(next:$chan:list)]} {
if {[lsearch -exact [string tolower [split $black(next:$chan:list)]]  [string tolower $nick]] == -1} {
	set black(next:$chan:list) "$black(next:$chan:list) $nick"
	set black(next:$chan:$nick:time) $time
	} else {
	set black(next:$chan:$nick:time) $time
	}
} else {
	set black(next:$chan:list) $nick
	set black(next:$chan:$nick:time) $time
}
	set counter [llength [split $black(next:$chan:list)]]
	set replace(%counter%) $counter
	set replace(%nick%) $nick
	set replace(%chan%) $chan
	set text1 [black:color:set "" $black(say.$lang.next.6)]
	set reply1 [join $text1]
	set text2 [black:color:set "" $black(say.$lang.next.1)]
	set reply2 [join $text2]
	set message [string map [array get replace] $reply1]
	puthelp "NOTICE @$chan :$message"
	set message [string map [array get replace] $reply2]
	puthelp "NOTICE $nick :$message"
	}
}

proc black:next:clear:all {nick chan mode} {
	global black
if {[info exists black(next:$chan:list)]} {
if {[lsearch -exact [string tolower [split $black(next:$chan:list)]]  [string tolower $nick]] > -1} {
	set position [lsearch -exact [string tolower [split $black(next:$chan:list)]] [string tolower $nick]]
	set black(next:$chan:list) [join [lreplace [split $black(next:$chan:list)] $position $position]]
	}
}
if {$mode == "0"} {
if {[info exists black(next:$chan:served)]} {
if {[lsearch -exact [string tolower [split $black(next:$chan:served)]]  [string tolower $nick]] > -1} {
	set position [lsearch -exact [string tolower [split $black(next:$chan:served)]] [string tolower $nick]]
	set black(next:$chan:served) [join [lreplace [split $black(next:$chan:served)] $position $position]]
		}
	}
}

if {[info exists black(next:$chan:$nick:time)]} {
	unset black(next:$chan:$nick:time)
}

if {[info exists black(next:$chan:served)]} {
if {$black(next:$chan:served) == ""} {
	unset black(next:$chan:served)	
		}	
	}
if {[info exists black(next:$chan:list)]} {
if {$black(next:$chan:list) == ""} {
	unset black(next:$chan:list)	
		}	
	}
}

proc black:next:clear {nick chan} {
	global black
if {[info exists black(next:$chan:list)]} {
if {[lsearch -exact [string tolower [split $black(next:$chan:list)]]  [string tolower $nick]] > -1} {
	set position [lsearch -exact [string tolower [split $black(next:$chan:list)]] [string tolower $nick]]
	set black(next:$chan:list) [join [lreplace [split $black(next:$chan:list)] $position $position]]
	}
}
if {[info exists black(next:$chan:$nick:time)]} {	
	unset black(next:$chan:$nick:time)
	}
}

proc black:next:joincheck {chan} {
global black
if {[info exists black(next:$chan:list)]} {
foreach user $black(next:$chan:list) {
if {(![onchan $user $chan]) || [isop $user $chan]} {
	black:next:clear:all $user $chan 0
			}
		}
	}
}

proc black:next:part {nick host hand chan arg} {
	global black
if {![validchan $chan]} { return }
if {[setting:get $chan next]} {
if {![info exists black(next:$chan:list)] && ![info exists black(next:$chan:served)]} {
	return
}
	black:next:clear:all $nick $chan 0
	}
}

proc black:next:sign {nick host hand chan arg} {
	global black
if {[setting:get $chan next]} {
if {![info exists black(next:$chan:list)] && ![info exists black(next:$chan:served)]} {
	return
		}
	black:next:clear:all $nick $chan 0
	}
}

proc black:next:split {nick host hand chan args} {
	global black
if {[setting:get $chan next]} {
if {![info exists black(next:$chan:list)] && ![info exists black(next:$chan:served)]} {
	return
		}
	black:next:clear:all $nick $chan 0
	}
}

proc black:next:kick {nick host hand chan kicked arg} {
	global black
if {[setting:get $chan next]} {
if {![info exists black(next:$chan:list)] && ![info exists black(next:$chan:served)]} {
	return
		}
	black:next:clear:all $kicked $chan 0
	}
}

proc black:next:mode {nick host hand chan moded mod_nick} {
	global black
if {[setting:get $chan next]} {
if {($moded == "+v") || ($moded == "+o")} {	
if {![info exists black(next:$chan:list)] && ![info exists black(next:$chan:served)]} {
	return
			}
	black:next:clear:all $mod_nick $chan 1
		}
	}
}

proc black:next:chnick {nick host hand chan newnick} {
global black
if {![validchan $chan]} {
	return
}
if {[setting:get $chan next]} {
if {[info exists black(next:$chan:served)]} {
if {[lsearch -exact [string tolower [split $black(next:$chan:served)]]  [string tolower $nick]] > -1} {
	set position [lsearch -exact [string tolower [split $black(next:$chan:served)]] [string tolower $nick]]
	set black(next:$chan:served) [join [lreplace [split $black(next:$chan:served)] $position $position]]
	set black(next:$chan:served) [linsert $black(next:$chan:served) $position $newnick]
	} 
}
if {[info exists black(next:$chan:list)]} {
if {[lsearch -exact [string tolower [split $black(next:$chan:list)]]  [string tolower $nick]] > -1} {
	set position [lsearch -exact [string tolower [split $black(next:$chan:list)]] [string tolower $nick]]
	set black(next:$chan:list) [join [lreplace [split $black(next:$chan:list)] $position $position]]
	set black(next:$chan:list) [linsert $black(next:$chan:list) $position $newnick]
	set black(next:$chan:$newnick:time) $black(next:$chan:$nick:time)
			}
		}
	}
}

proc nextpublic:process {nick host hand chan chan1 option} {
	global black
if {![setting:get $chan next]} {	
	return
}
	set cmd_status [btcmd:status $chan $hand "next" 0]
if {$cmd_status == "1"} { 
	return 
}
if {$option != ""} {

switch -exact -- [string tolower $option] {

list  {
	set counter 0

if {![info exists black(next:$chan:list)]} {
	blacktools:tell $nick $host $hand $chan $chan1 next.8 none
	return
}
if {$black(next:$chan:list) == ""} {
	blacktools:tell $nick $host $hand $chan $chan1 next.8 none
	return
}
	blacktools:tell $nick $host $hand $chan $chan1 next.7 none
foreach name [split $black(next:$chan:list)] {
if {$name != ""} {
	set get_hand [nick2hand $name]
if {![matchattr $get_hand $black(exceptflags) $chan]} { 	
	set counter [expr $counter + 1]
	lappend field_name "\#$counter $name "
		}
	}
}
if {![info exists field_name]} {
	blacktools:tell $nick $host $hand $chan $chan1 next.8 none
	return
}
	blacktools:tell $nick $host $hand $chan $chan1 next.9 [join $field_name]
		}
	}
	return
}

if {![info exists black(next:$chan:list)]} {
	blacktools:tell $nick $host $hand $chan $chan1 next.8 none
	return
}

if {[llength [split $black(next:$chan:list)]] < 0} {
	blacktools:tell $nick $host $hand $chan $chan1 next.8 none
	return
}
	set getlang [string tolower [setting:get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
	set current_nick [lindex [split [concat $black(next:$chan:list)]] 0]
	set time [return_time $getlang [expr [unixtime] - $black(next:$chan:$current_nick:time)]]
	set text1 [black:color:set "" $black(say.$getlang.next.2)]
	set reply1 [join $text1]
	set replace(%nick%) $nick
	set message_1 [string map [array get replace] $reply1]
	puthelp "NOTICE $current_nick :$message_1"
	blacktools:tell $nick $host $hand $chan $chan1 next.3 "$current_nick $time"
	black:next:clear $current_nick $chan
if {[setting:get $chan xonly] && [onchan $black(chanserv) $chan]} {
	putserv "PRIVMSG $black(chanserv) :voice $chan $current_nick"
} else {
	putserv "MODE $chan +v $current_nick"
}
	
if {[info exists black(next:$chan:served)]} {
if {[lsearch -exact [string tolower [split $black(next:$chan:served)]] [string tolower $current_nick]] == -1} {
	set black(next:$chan:served) "$black(next:$chan:served) $current_nick"
			}	
		} else {
	set black(next:$chan:served) $current_nick
	}
}

proc helpedpublic:process {nick host hand chan chan1 user type} {
	global black
	set cmd_status [btcmd:status $chan $hand "helped" 0]
if {$cmd_status == "1"} { 
	return 
}
	set show_user [split $user]
	set handle [nick2hand $user]
	set entry_find 0
if {![setting:get $chan next]} {
	return
}
if {[isbotnick $user]} { return }

if {[matchattr $handle $black(exceptflags) $chan]} { 
	return
}	
if {$user == ""} {
switch $type {
	0 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr "next"
	}
	1 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_nick "next"
	}
	2 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_priv "next"
		}
	}
	return
}
if {![onchan $user $chan]} { 
	blacktools:tell $nick $host $hand $chan $chan1 gl.usernotonchan $show_user	
	return
}

if {[info exists black(next:$chan:list)]} {
if {([lsearch -exact [string tolower [split $black(next:$chan:list)]] [string tolower $user]] > -1)} {
	blacktools:tell $nick $host $hand $chan $chan1 next.13 $show_user
	return
	}	
} 

if {[info exists black(next:$chan:served)]} {
if {[lsearch -exact [string tolower [split $black(next:$chan:served)]]  [string tolower $user]] > -1} {
	set entry_find 1
	set position [lsearch -exact [string tolower [split $black(next:$chan:served)]] [string tolower $user]]
	set black(next:$chan:served) [join [lreplace [split $black(next:$chan:served)] $position $position]]
		}	
	} else { 
	blacktools:tell $nick $host $hand $chan $chan1 next.14 $show_user
	return
}
if {$entry_find == "0"} {
	blacktools:tell $nick $host $hand $chan $chan1 next.14 $show_user
	return
}
if {[isvoice $user $chan]} {
if {[setting:get $chan xonly] && [onchan $black(chanserv) $chan]} {
	putserv "PRIVMSG $black(chanserv) :devoice $chan $user"
} else {
	putserv "MODE $chan -v $user"
	}
}
	set getlang [string tolower [setting:get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
	set text1 [black:color:set "" $black(say.$getlang.next.4)]
	set reply1 [join $text1]
	set replace(%current%) $user
	set replace(%chan%) $chan
	set message_1 [string map [array get replace] $reply1]
	puthelp "NOTICE $user :$message_1"
}

proc noidlepublic:process {nick host hand chan chan1 user type} {
	global black
if {![setting:get $chan next]} {
	return
}
	set cmd_status [btcmd:status $chan $hand "noidle" 0]
if {$cmd_status == "1"} { 
	return 
}
	set show_user $user
	set handle [nick2hand $user]
if {![setting:get $chan next]} {
	return
}	
if {[isbotnick $user]} { return }

if {[matchattr $handle $black(exceptflags) $chan]} { 
	return
}	
if {$user == ""} {
switch $type {
	0 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr "next"
	}
	1 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_nick "next"
	}
	2 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_priv "next"
		}
	}
	return
}

if {![onchan $user $chan]} {
	blacktools:tell:h $nick $host $hand $chan $chan1 gl.usernotonchan $user
	return
}

if {[info exists black(next:$chan:list)]} {
if {([lsearch -exact [string tolower [split $black(next:$chan:list)]]  [string tolower $user]] > -1)} {
	blacktools:tell:h $nick $host $hand $chan $chan1 next.13 $user
	return
	}	
}
if {[info exists black(next:$chan:served)]} {
if {([lsearch -exact [string tolower [split $black(next:$chan:served)]] [string tolower $user]] > -1)} {
	blacktools:tell:h $nick $host $hand $chan $chan1 next.17 $user
	return
	}
}
	blacktools:banner:2 $user "NEXT" $chan $chan1 [getchanhost $user $chan] "0" ""
	who:chan $chan
}

proc skippublic:process {nick host hand chan chan1 user type} {
	global black
if {![setting:get $chan next]} {
	return
}
	set cmd_status [btcmd:status $chan $hand "skip" 0]
if {$cmd_status == "1"} { 
	return 
}
if {$user == ""} {
switch $type {
	0 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr "next"
	}
	1 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_nick "next"
	}
	2 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_priv "next"
		}
	}
	return
}

if {![onchan $user $chan]} {
	blacktools:tell:h $nick $host $hand $chan $chan1 gl.usernotonchan $user
	return
}

if {[info exists black(next:$chan:list)]} {
if {[lsearch -exact [string tolower [split $black(next:$chan:list)]]  [string tolower $user]] > -1} {
	set position [lsearch -exact [string tolower [split $black(next:$chan:list)]]  [string tolower $user]]
	set black(next:$chan:list) [join [lreplace [split $black(next:$chan:list)] $position $position]]
	set black(next:$chan:list) "$black(next:$chan:list) $user"
	} else {
	blacktools:tell:h $nick $host $hand $chan $chan1 next.14 $user
	return
}
	} else {
	blacktools:tell $nick $host $hand $chan $chan1 next.8 none
	return
}
	blacktools:tell:h $nick $host $hand $chan $chan1 next.19 $user
}

##############
#########################################################################
##   END                                                               ##
#########################################################################
