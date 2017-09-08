##########################################################
#
#			BLackToolS
#		       Commands TCL
#							
#				BLaCkShaDoW ProductionS
##########################################################

proc blacktools:banner:3 {mask hand chan reason bantime type} {
global black botnick
if {[channel get $chan xban]} {
	set getcount [channel get $chan kickcount]
	set getxtime [channel get $chan xbantime]
if {$getxtime == "0"} { set getxtime "1" }
	set getxlevel [channel get $chan xbanlevel]
if {$getxlevel == "0"} { set getxlevel "100"}
	set getcount [channel get $chan kickcount]
	set kcount [expr $getcount +1]
	channel set $chan kickcount $kcount
	set countz [getuser $hand XTRA $type]
if {$countz == ""} { set countz 0 }
	set counts [expr $countz + 1]
setuser $hand XTRA $type $counts
if {[channel get $chan showcount]} {
	set reason "$reason - $kcount -" 
} else {
	set reason "$reason" 
}
	putquick "PRIVMSG $black(chanserv) :ban $chan $mask $getxtime $getxlevel $reason"
	utimer 1 [list newchanban $chan $mask $hand $reason $bantime]
	putquick "MODE $chan +b $mask"
if {![channel get $chan chanreport]} {
	return
}
	set backchan [channel get $chan backchan]
if {$backchan == ""} { 
	return
}
if {!([validchan $backchan]) || !([onchan $botnick $backchan])} {
	return
}
	set getlang [string tolower [channel get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
	set replace(%banmask%) $mask
	set replace(%bantime%) $bantime
	set replace(%reason%) $reason
	set replace(%chan%) $chan
	set replace(%nick%) $hand
	puthelp "PRIVMSG $backchan :[string map [array get replace] $black(say.$getlang.reportchan.1)]"
} else {
	set getcount [channel get $chan kickcount]
	set kcount [expr $getcount +1]
	channel set $chan kickcount $kcount
	set countz [getuser $hand XTRA $type]
if {$countz == ""} { set countz 0 }
	set counts [expr $countz + 1]
	setuser $hand XTRA $type $counts
if {[channel get $chan showcount]} {
	set reason "$reason - $kcount -" } else {
	set reason "$reason" 
}
	newchanban $chan $mask $hand $reason $bantime
	putquick "MODE $chan +b $mask"
if {![channel get $chan chanreport]} {
	return
}
	set backchan [channel get $chan backchan]
if {$backchan == ""} { 
	return
}
if {!([validchan $backchan]) || !([onchan $botnick $backchan])} {
return 
}
	set getlang [string tolower [channel get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
	set replace(%banmask%) $mask
	set replace(%bantime%) $bantime
	set replace(%reason%) $reason
	set replace(%chan%) $chan
	set replace(%nick%) $hand
	puthelp "PRIVMSG $backchan :[string map [array get replace] $black(say.$getlang.reportchan.1)]"
	}
}

proc blacktools:banner:4 {mask hand chan reason bantime type} {
global black botnick
if {[channel get $chan xban]} {
	set getcount [channel get $chan kickcount]
	set getxtime [channel get $chan xbantime]
if {$getxtime == "0"} { set getxtime "1" }
	set getxlevel [channel get $chan xbanlevel]
if {$getxlevel == "0"} { set getxlevel "100"}
	set getcount [channel get $chan kickcount]
	set kcount [expr $getcount +1]
	channel set $chan kickcount $kcount
	set countz [getuser $hand XTRA $type]
if {$countz == ""} { set countz 0 }
	set counts [expr $countz + 1]
	setuser $hand XTRA $type $counts
if {[channel get $chan showcount]} {
	set reason "$reason - $kcount -" 
} else {
	set reason "$reason" 
}
	putquick "PRIVMSG $black(chanserv) :ban $chan $mask $getxtime $getxlevel $reason"
	utimer 1 [list newchanban $chan $mask $hand $reason $bantime sticky]
	putquick "MODE $chan +b $mask"
if {![channel get $chan chanreport]} {
	return
}
	set backchan [channel get $chan backchan]
if {$backchan == ""} { 
	return
}
if {!([validchan $backchan]) || !([onchan $botnick $backchan])} {
	return
}
	set getlang [string tolower [channel get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
	set replace(%banmask%) $mask
	set replace(%bantime%) $bantime
	set replace(%reason%) $reason
	set replace(%chan%) $chan
	set replace(%nick%) $hand
	puthelp "PRIVMSG $backchan :[string map [array get replace] $black(say.$getlang.reportchan.1)]"
} else {
	set getcount [channel get $chan kickcount]
	set kcount [expr $getcount +1]
	channel set $chan kickcount $kcount
	set countz [getuser $hand XTRA $type]
if {$countz == ""} { set countz 0 }
	set counts [expr $countz + 1]
	setuser $hand XTRA $type $counts
if {[channel get $chan showcount]} {
	set reason "$reason - $kcount -" } else {
	set reason "$reason" 
}
	newchanban $chan $mask $hand $reason $bantime sticky
	putquick "MODE $chan +b $mask"
if {![channel get $chan chanreport]} {
	return
}
	set backchan [channel get $chan backchan]
if {$backchan == ""} { 
	return
}
if {!([validchan $backchan]) || !([onchan $botnick $backchan])} {
	return
}
	set getlang [string tolower [channel get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
	set replace(%banmask%) $mask
	set replace(%bantime%) $bantime
	set replace(%reason%) $reason
	set replace(%chan%) $chan
	set replace(%nick%) $hand
	puthelp "PRIVMSG $backchan :[string map [array get replace] $black(say.$getlang.reportchan.1)]"
	}
}

######################################## Commands #####################################

proc drpublic {nick host hand chan arg} {
global botnick black
	set drone [lindex [split $arg] 0]
	set chan1 "$chan"
	set mask [lindex [split $arg] 0]
	set type "0"
foreach c [channels] {
	set backchan [channel get $c backchan]
if {[string match -nocase $chan $backchan] && [channel get $c chanreport]} {
	set chan "$c"
	}
}
if {[regexp {^[&#]} $drone] && [matchattr $hand nm|MASO $chan]} {
	set chan "$drone"
	set drone [lindex [split $arg] 1]
	set mask [lindex [split $arg] 1]
}
	set split_text [split $drone ","]

	foreach txt $split_text {
	dr:process $txt $txt $nick $hand $host $chan $chan1 $type
}
if {$drone == ""} {
	dr:process $drone $drone $nick $hand $host $chan $chan1 $type
	}
}

proc dr:process {drone mask nick hand host chan chan1 type} {
global botnick black
	set char(p) [lindex $black(cmdchar) 0]
if {[string equal -nocase "none" "$char(p)"]} {
	set char(p) ""
} 
	set handle [nick2hand $drone]
if {![validchan $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.novalidchan none
	return
}

if {![onchan $botnick $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.notonchan none
	return
}
	set list [userlist $black(exceptflags) $chan]
	set getreason [channel get $chan dr-reason]
if {$getreason == ""} {
	set getlang [string tolower [channel get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
	set getreason $black(say.$getlang.dr.5)
}
if {[channel get $chan showhandle]} {
	set reason "($hand) $getreason"
} else { set reason "$getreason" }
	set getbantime [channel get $chan dr-bantime]
if {$getbantime == "0"} { set getbantime $black(drtime) }
if {[matchattr $hand -|q $chan]} { blacktools:tell $nick $host $hand $chan $chan1 gl.suspend none
	return
}
foreach user $list {
 set hosts [getuser $user hosts]
foreach host $hosts {
if {[string match -nocase $mask $host]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.noban none
	return
		}	
	}
}

if {[matchattr $handle $black(exceptflags) $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.noban none
	return
}

if {$mask == "*!*@*"} {
	return
}

if {[isbotnick $drone]} {
	return
}
if {![botisop $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.noop none
	return
}
if {[onchan $drone $chan]} {
	set mask *!*@[lindex [split [getchanhost $drone $chan] "@"] 1] 
}

if {[matchattr $hand nm|- $chan]} {
if {($drone == "") && ($type == "0")} {
	blacktools:tell $nick $host $hand $chan $chan1 dr.1 none
	return
}
if {($drone == "") && ($type == "1")} {
	blacktools:tell $nick $host $hand $chan $chan1 dr.2 none
	return
	}
}
if {($drone == "") && ($type == "0")} {
	blacktools:tell $nick $host $hand $chan $chan1 dr.3 none
	return
}
if {($drone == "") && ($type == "1")} {
	blacktools:tell $nick $host $hand $chan $chan1 dr.4 none
	return
}
	blacktools:banner:3 $mask $hand $chan $reason $getbantime DR($chan)
}

proc botpublic {nick host hand chan arg} {
global botnick black
	set bot [lindex [split $arg] 0]
	set mask [lindex [split $arg] 0]
	set type 0
	set chan1 "$chan"
foreach c [channels] {
	set backchan [channel get $c backchan]
if {[string match -nocase $chan $backchan] && [channel get $c chanreport]} {
	set chan "$c"
	}
}
if {[regexp {^[&#]} $bot] && [matchattr $hand nm|- $chan]} {
	set chan "$bot"
	set bot [lindex [split $arg] 1]
	set mask [lindex [split $arg] 1]
}
	set split_text [split $bot ","]
foreach txt $split_text {
	bot:process $txt $txt $nick $hand $host $chan $chan1 $type
	}
if {$bot == ""} {
	bot:process $bot $bot $nick $hand $host $chan $chan1 $type
	}
}

proc bot:process {bot mask nick hand host chan chan1 type} {
global black botnick
	set handle [nick2hand $bot]
	set char(p) [lindex $black(cmdchar) 0]
if {[string match -nocase "none" "$char(p)"]} {
	set char(p) ""
} 
if {![validchan $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.novalidchan none
	return
}
if {![onchan $botnick $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.notonchan none
	return
}
	set list [userlist $black(exceptflags) $chan]
	set getreason [channel get $chan bot-reason]
if {$getreason == ""} {
	set getlang [string tolower [channel get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
	set getreason $black(say.$getlang.bot.5)
}
if {[channel get $chan showhandle]} {
	set reason "($hand) $getreason"
} else { set reason "$getreason" 
}
	set getbantime [channel get $chan bot-bantime]
if {$getbantime == "0"} { set getbantime $black(bottime) }
if {[matchattr $hand -|q $chan]} { blacktools:tell $nick $host $hand $chan $chan1 gl.suspend none
	return
}
foreach user $list {
	set hosts [getuser $user hosts]
foreach host $hosts {
if {[string match -nocase $mask $host]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.noban none
	return
		}
	}
}

if {[matchattr $handle $black(exceptflags) $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.noban none
	return
}
if {$mask == "*!*@*"} {
	return
}

if {[isbotnick $bot]} {
	return
}
if {![botisop $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.noop none
	return
}

if {[onchan $bot $chan]} {
	set mask *!*@[lindex [split [getchanhost $bot $chan] "@"] 1] 
}
if {[matchattr $hand nm|- $chan]} {
if {($bot == "") && ($type == "0")} {
	blacktools:tell $nick $host $hand $chan $chan1 bot.1 none
	return
}
if {($bot == "") && ($type == "1")} {
	blacktools:tell $nick $host $hand $chan $chan1 bot.2 none
	return
	}
}
if {($bot == "") && ($type == "0")} {
	blacktools:tell $nick $host $hand $chan $chan1 bot.3 none
	return
}
if {($bot == "") && ($type == "1")} {
	blacktools:tell $nick $host $hand $chan $chan1 bot.4 none
	return
}
	blacktools:banner:3 $mask $hand $chan $reason $getbantime bot($chan)
}

proc b:local {bnick mask time nick reason hand host chan chan1 type} {
global botnick black
	set handle [nick2hand $bnick]
	set char(p) [lindex $black(cmdchar) 0]
if {[string match -nocase "none" "$char(p)"]} {
	set char(p) ""
} 
if {![validchan $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.novalidchan none
	return
}

if {![onchan $botnick $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.notonchan none
	return
}
	set list [userlist $black(exceptflags) $chan]
if {[matchattr $hand -|q $chan]} { blacktools:tell $nick $host $hand $chan $chan1 gl.suspend none
	return
}
foreach user $list {
	set hosts [getuser $user hosts]
foreach host $hosts {
if {[string match -nocase $mask $host]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.noban none
	return
		}
	}
}
if {[matchattr $handle $black(exceptflags) $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.noban none
	return
}

if {$time == "" || (![regexp {^[0-9]} $time])} {
if {[channel get $chan b-bantime] != "0"} {
	set time [channel get $chan b-bantime] 
	} else { set time "$black(btime)" }
}

if {$reason == ""} {
if {[channel get $chan b-reason] != ""} {
	set reason [channel get $chan b-reason]
	}
}

if {$reason == ""} {
	set getlang [string tolower [channel get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
	set reason1 $black(say.$getlang.b.9)
 } else { set reason1 "$reason" }

if {[channel get $chan showhandle]} {
	set reason "($hand) $reason1"
	} else { set reason "$reason1" 
}

if {[isbotnick $bnick]} {
  return
}

if {![botisop $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.noop none
	return
}
if {$mask == "*!*@*"} {
	return
}

if {[onchan $bnick $chan]} {
	set mask *!*@[lindex [split [getchanhost $bnick $chan] "@"] 1] 
}

if {[matchattr $hand nm|- $chan]} {
if {($bnick == "") && ($type == "0")} {
	blacktools:tell $nick $host $hand $chan $chan1 b.1 none
	blacktools:tell $nick $host $hand $chan $chan1 b.2 none
	return
}
if {($bnick == "") && ($type == "1")} {
	blacktools:tell $nick $host $hand $chan $chan1 b.3 none
	blacktools:tell $nick $host $hand $chan $chan1 b.4 none
	return
	}
}
if {($bnick == "") && ($type == "0")} {
	blacktools:tell $nick $host $hand $chan $chan1 b.5 none	
	return
}
if {($bnick == "") && ($type == "1")} {	
	blacktools:tell $nick $host $hand $chan $chan1 b.6 none
	return
}

if {[matchattr $hand -|O $chan]} {
if {$time == 0 || $time >  10160} {
	blacktools:tell $nick $host $hand $chan $chan1 b.10 none
	return
	}
}
	blacktools:banner:3 $mask $hand $chan $reason $time b($chan)
if {$time == "0"} { set reply "Permanent" } else { set reply "$time minute" }
	blacktools:tell $nick $host $hand $chan $chan1 b.7 "$mask $reply"
}

proc b:global {bnick mask time nick reason hand host chan chan1 type1 type2} {
	global botnick black
	set handle [nick2hand $bnick]
	set char(p) [lindex $black(cmdchar) 0]
	set list [userlist nm|-]
foreach user $list {
	set hosts [getuser $user hosts]
foreach host $hosts {
if {[string match $mask $host]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.noban none
	return
		}
	}
}
if {[matchattr $handle nm|- $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.noban none
	return
}
if {$reason == ""} {set reason1 "(GLOBAL) $black(dfreason)"
 } else { set reason1 "(GLOBAL) $reason" }

if {[channel get $chan showhandle]} {
	set reason "($hand) $reason1"
} else { set reason "$reason1" 
}

if {[isbotnick $bnick]} {
	return
}
if {![botisop $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.noop none
	return
}
if {$mask == "*!*@*"} {
	return
}
if {[onchan $bnick $chan]} {
	set mask *!*@[lindex [split [getchanhost $bnick $chan] "@"] 1] 
}
	newban $mask $hand $reason $time
if {$time == "0"} { set reply "Permanent" } else { set reply "$time" }
	blacktools:tell $nick $host $hand $chan $chan1 b.8 "$mask $reply"
}

proc bpublic {nick host hand chan arg} {
global botnick black
	set bnick [lindex [split $arg] 0]
	set char(p) [lindex $black(cmdchar) 0]
if {[string match -nocase "none" "$char(p)"]} {
	set char(p) ""
} 	
	set type 0
	set chan1 "$chan"
	set mask [lindex [split $arg] 0]
	set time [lindex [split $arg] 1]
	set type1 [lindex [split $arg] 1]
	set type2 [lindex [split $arg] 2]
	set reason [join [lrange [split $arg] 2 end]] 
	set handle [nick2hand $bnick]
if {[string match -nocase "global" $type1] || [string match -nocase "global" $type2]  && [matchattr $hand nm|- $chan]} {
	if {[string match -nocase $type1 "global"]} {
	set reason [join [lrange [split $arg] 2 end]]
}
if {[string match -nocase $type2 "global"]} {
	set reason [join [lrange [split $arg] 3 end]]
}

if {![regexp {^[0-9]} $time]} {
	set reason [join [lrange [split $arg] 2 end]]
}
	set split_text [split $bnick ","]
	foreach txt $split_text {
	b:global $txt $txt $time $nick $reason $hand $host $chan $chan1 $type1 $type2
	}
	return
}
foreach c [channels] {
	set backchan [channel get $c backchan]
if {[string match -nocase $chan $backchan] && [channel get $c chanreport]} {
	set chan "$c"
	}
}
if {[regexp {^[&#]} $bnick] && [matchattr $hand nm|- $chan]} {
	set chan "$bnick"
	set bnick [lindex [split $arg] 1]
	set mask [lindex [split $arg] 1]
	set time [lindex [split $arg] 2]
	set reason [join [lrange [split $arg] 3 end]]
if {![regexp {^[0-9]} $time]} {
	set reason [join [lrange [split $arg] 2 end]]
	}
}
if {![regexp {^[0-9]} $time]} {
	set reason [join [lrange [split $arg] 1 end]] 
}
	set split_text [split $bnick ","]
	foreach txt $split_text {
	b:local $txt $txt $time $nick $reason $hand $host $chan $chan1 $type
	}
if {$bnick == ""} {
	b:local $bnick $bnick $time $nick $reason $hand $host $chan $chan1 $type
	}
}

################################### n #################################

proc n:process {bnick nick hand host chan chan1 type} {
global botnick black
	set char(p) [lindex $black(cmdchar) 0]
if {[string match -nocase "none" "$char(p)"]} {
	set char(p) ""
} 
	set handle [nick2hand $bnick]
if {![validchan $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.novalidchan none
	return
}
if {![onchan $botnick $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.notonchan none
	return
}
if {[matchattr $hand -|q $chan]} { blacktools:tell $nick $host $hand $chan $chan1 gl.suspend none
	return
}

if {[matchattr $handle $black(exceptflags) $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.noban none
	return
}
	set getreason [channel get $chan n-reason]
if {$getreason == ""} { 
	set getlang [string tolower [channel get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
	set getreason $black(say.$getlang.n.5)
}
if {[channel get $chan showhandle]} {
	set reason "($hand) $getreason"
} else { set reason "$getreason" 
}
	set getbantime [channel get $chan n-bantime]
if {$getbantime == "0"} { set getbantime $black(ntime) }
if {[isbotnick $bnick]} {
return
}
if {![botisop $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.noop none
	return
}

if {[matchattr $hand nm|- $chan]} {
if {($bnick == "") && ($type == "0")} {
	blacktools:tell $nick $host $hand $chan $chan1 n.1 none
	return
}
if {($bnick == "") && ($type == "1")} {
	blacktools:tell $nick $host $hand $chan $chan1 n.2 none
	return
	}
}
if {($bnick == "") && ($type == "0")} {
	blacktools:tell $nick $host $hand $chan $chan1 n.3 none
	return
}
if {($bnick == "") && ($type == "1")} {
	blacktools:tell $nick $host $hand $chan $chan1 n.4 none
	return
}
if {[regexp {\*} $bnick]} {
	blacktools:tell $nick $host $hand $chan $chan1 n.6 none
	return
}
	set mask "$bnick!*@*"
	blacktools:banner:3 $mask $hand $chan $reason $getbantime n($chan)
}

proc npublic {nick host hand chan arg} {
global botnick black
	set bnick [lindex [split $arg] 0]
	set type 0
	set handle [nick2hand $bnick]
	set chan1 "$chan"
foreach c [channels] {
	set backchan [channel get $c backchan]
if {[string match -nocase $chan $backchan] && [channel get $c chanreport]} {
	set chan "$c"
	}
}
if {[regexp {^[&#]} $bnick] && [matchattr $hand nm|- $chan]} {
	set chan "$bnick"
	set bnick [lindex [split $arg] 1]
}
	set split_text [split $bnick ","]
if {$split_text != ""} {
foreach txt $split_text {
	n:process $txt $nick $hand $host $chan $chan1 $type
		}
	} else { n:process $bnick $nick $hand $host $chan $chan1 $type }
}

################################## id #################################

proc idpublic {nick host hand chan arg} {
global botnick black
	set idnick [lindex [split $arg] 0]
	set char(p) [lindex $black(cmdchar) 0]
if {[string match -nocase "none" "$char(p)"]} {
	set char(p) ""
} 
	set handle [nick2hand $idnick]
	set type 0
	set chan1 "$chan"
foreach c [channels] {
	set backchan [channel get $c backchan]
if {[string match -nocase $chan $backchan] && [channel get $c chanreport]} {
	set chan "$c"
	}
}
if {[regexp {^[&#]} $idnick] && [matchattr $hand nm|- $chan]} {
	set chan "$idnick"
	set idnick [lindex [split $arg] 1]
}
	set split_text [split $idnick ","]
if {$split_text != ""} {
foreach txt $split_text {
	id:process $txt $nick $hand $host $chan $chan1 $type
		}
	} else { id:process $idnick $nick $hand $host $chan $chan1 $type }
}

proc id:process {idnick nick hand host chan chan1 type} {
global botnick black
	set handle [nick2hand $idnick]
	set char(p) [lindex $black(cmdchar) 0]
if {[string match -nocase "none" "$char(p)"]} {
	set char(p) ""
}
if {![validchan $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.novalidchan none
	return
}
if {![onchan $botnick $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.notonchan none
	return
}
	set uhost [getchanhost $idnick $chan]
	set ident "[string tolower [lindex [split $uhost "@"] 0]]"
if {[matchattr $hand -|q $chan]} { blacktools:tell $nick $host $hand $chan $chan1 gl.suspend none
	return
}

if {[matchattr $handle $black(exceptflags) $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.noban none
	return
}
	set getreason [channel get $chan id-reason]
if {$getreason == ""} { 
	set getlang [string tolower [channel get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
	set getreason $black(say.$getlang.id.5)
}

if {[channel get $chan showhandle]} {
	set reason "($hand) $getreason"
	} else { set reason "$getreason"
}
	set getbantime [channel get $chan id-bantime]
if {$getbantime == "0"} { set getbantime $black(idtime) }

if {[isbotnick $idnick]} {
	return
}

if {![botisop $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.noop none
	return
}

if {[matchattr $hand nm|- $chan]} {
if {($idnick == "") && ($type == "0")} {
	blacktools:tell $nick $host $hand $chan $chan1 id.1 none
	return
}
if {($idnick == "") && ($type == "1")} {
	blacktools:tell $nick $host $hand $chan $chan1 id.2 none
	return
	}
}
if {($idnick == "") && ($type == "0")} {
	blacktools:tell $nick $host $hand $chan $chan1 id.3 none
	return
}
if {($idnick == "") && ($type == "1")} {
	blacktools:tell $nick $host $hand $chan $chan1 id.4 none
	return
}

if {[regexp {\*} $idnick]} {
	blacktools:tell $nick $host $hand $chan $chan1 id.6 none
	return
}

if {[onchan $idnick $chan]} {
    set mask "*!$ident@*"
} else { 
	set mask "*!$idnick@*"
}
	blacktools:banner:3 $mask $hand $chan $getreason $getbantime id($chan)
}

############################### black #################################

proc black:process {blnick nick mask hand host chan chan1 reason type} {
global botnick black
	set char(p) [lindex $black(cmdchar) 0]
if {[string match -nocase "none" "$char(p)"]} {
	set char(p) ""
} 
	set handle [nick2hand $blnick]
if {![validchan $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.novalidchan none
	return
}

if {![onchan $botnick $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.notonchan none
	return
}
	set list [userlist $black(exceptflags) $chan]
if {[matchattr $hand -|q $chan]} { 
	blacktools:tell $nick $host $hand $chan $chan1 gl.suspend none
	return
}
foreach user $list {
	set hosts [getuser $user hosts]
foreach host $hosts {
if {[string match -nocase $mask $host]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.noban none
	return
		}	
	}
}
if {[matchattr $handle $black(exceptflags) $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.noban none
	return
}

if {$reason == ""} {
if {[channel get $chan black-reason] != ""} {
	set reason [channel get $chan black-reason]
	}
}

if {$reason == ""} {
	set getlang [string tolower [channel get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
	set reason1 "BlackListed: $black(say.$getlang.black.5)"
 } else { set reason1 "BlackListed: $reason" }

if {[channel get $chan showhandle]} {
	set reason "($hand) $reason1"
	} else { set reason "$reason1" 
}

if {[isbotnick $blnick]} {
	return
}
if {![botisop $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.noop none
	return
}
if {$mask == "*!*@*"} {
	return
}

if {[onchan $blnick $chan]} {
	set mask *!*@[lindex [split [getchanhost $blnick $chan] "@"] 1] 
}
if {[matchattr $hand nm|- $chan]} {
if {($blnick == "") && ($type == "0")} {
	blacktools:tell $nick $host $hand $chan $chan1 black.1 none
	return
}
if {($blnick == "") && ($type == "1")} {
	blacktools:tell $nick $host $hand $chan $chan1 black.2 none
	return
	}
}
if {($blnick == "") && ($type == "0")} {
	blacktools:tell $nick $host $hand $chan $chan1 black.3 none
	return
}
if {($blnick == "") && ($type == "1")} {
	blacktools:tell $nick $host $hand $chan $chan1 black.4 none
	return
}
	blacktools:banner:3 $mask $hand $chan $reason 0 Black($chan)
}


proc blackpublic {nick host hand chan arg} {
global botnick black
	set blnick [lindex [split $arg] 0]
	set mask [lindex [split $arg] 0]
	set type 0
	set reason [join [lrange [split $arg] 1 end]]
	set handle [nick2hand $blnick]
	set chan1 "$chan"
foreach c [channels] {
	set backchan [channel get $c backchan]
if {[string match -nocase $chan $backchan] && [channel get $c chanreport]} {
	set chan "$c"
	}
}
if {[regexp {^[&#]} $blnick] && [matchattr $hand nm|- $chan]} {
	set chan "$blnick"
	set blnick [lindex [split $arg] 1]
	set mask [lindex [split $arg] 1]
	set reason [join [lrange [split $arg] 2 end]]
}
	set split_text [split $blnick ","]
if {$split_text != ""} {	
	foreach txt $split_text {
		black:process $txt $nick $txt $hand $host $chan $chan1 $reason $type
		}
	} else { black:process $blnick $nick $mask $hand $host $chan $chan1 $reason $type }
}

################################ w ####################################

proc wpublic {nick host hand chan arg} {
global botnick black
	set wnick [lindex [split $arg] 0]
	set type 0
	set handle [nick2hand $wnick]
	set chan1 "$chan"
foreach c [channels] {
	set backchan [channel get $c backchan]
if {[string match -nocase $chan $backchan] && [channel get $c chanreport]} {
	set chan "$c"
	}
}
if {[regexp {^[&#]} $wnick] && [matchattr $hand nm|- $chan]} {
	set chan "$wnick"
	set wnick [lindex [split $arg] 1]
}
	set split_text [split $wnick ","]
if {$split_text != ""} {	
	foreach txt $split_text {
	w:process $txt $nick $hand $host $chan $chan1 $type
		}
	} else { w:process $wnick $nick $hand $host $chan $chan1 $type }
}

proc w:process {wnick nick hand host chan chan1 type} {
global botnick black
	set handle [nick2hand $wnick]
	set char(p) [lindex $black(cmdchar) 0]
if {[string match -nocase "none" "$char(p)"]} {
	set char(p) ""
} 
if {![validchan $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.novalidchan none
	return
}
if {![onchan $wnick $chan]} {
	return
}
if {![onchan $botnick $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.notonchan none
	return
}
if {[matchattr $hand -|q $chan]} { blacktools:tell $nick $host $hand $chan $chan1 gl.suspend none
	return
}
if {[isbotnick $wnick]} {
	return
}
if {[matchattr $handle $black(exceptflags) $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.noban none
	return
}
	set getreason [channel get $chan w-reason]
if {$getreason == ""} { 
	set getlang [string tolower [channel get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
	set getreason $black(say.$getlang.w.5)
}

if {[channel get $chan showhandle]} {
	set reason "($hand) $getreason"
	} else { set reason "$getreason"
}
if {![botisop $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.noop none
	return
}
if {[matchattr $hand nm|- $chan]} {
if {($wnick == "") && ($type == "0")} {
	blacktools:tell $nick $host $hand $chan $chan1 w.1 none
	return
}
if {($wnick == "") && ($type == "1")} {
	blacktools:tell $nick $host $hand $chan $chan1 w.2 none
	return
	}
}
if {($wnick == "") && ($type == "0")} {	
	blacktools:tell $nick $host $hand $chan $chan1 w.3 none
	return
}
if {($wnick == "") && ($type == "1")} {
	blacktools:tell $nick $host $hand $chan $chan1 w.4 none
	return
}
	set getcount [channel get $chan kickcount]
	set kcount [expr $getcount +1]
	channel set $chan kickcount $kcount
	set countz [getuser $hand XTRA w($chan)]
if {$countz == ""} { set countz 0 }
	set counts [expr $countz + 1]
	setuser $hand XTRA w($chan) $counts
if {[channel get $chan showcount]} {
	set reason "$reason - $kcount -" 
} else {
	set reason "$reason" 
}
	putquick "KICK $chan $wnick :$reason"
	set getlang [string tolower [channel get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
	puthelp "PRIVMSG $wnick :$black(say.$getlang.w.6)"
}

############################### spam ##################################

proc spam:process {spammer mask nick hand host chan chan1 type} {
global botnick black
	set handle [nick2hand $spammer]
	set char(p) [lindex $black(cmdchar) 0]
if {[string match -nocase "none" "$char(p)"]} {
	set char(p) ""
} 
if {![validchan $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.novalidchan none
	return
}
if {![onchan $botnick $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.notonchan none
	return
}
	set list [userlist $black(exceptflags) $chan]
	set getreason [channel get $chan spam-reason]
if {$getreason == ""} { 
	set getlang [string tolower [channel get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
	set getreason $black(say.$getlang.spam.5)
}
if {[channel get $chan showhandle]} {
	set reason "($hand) $getreason"
	} else { set reason "$getreason" 
}
	set getbantime [channel get $chan spam-bantime]
if {$getbantime == "0"} { set getbantime $black(spamtime) }
if {[matchattr $hand -|q $chan]} { blacktools:tell $nick $host $hand $chan $chan1 gl.suspend none
	return
}
foreach user $list {
	set hosts [getuser $user hosts]
foreach host $hosts {
if {[string match -nocase $mask $host]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.noban none
	return
		}
	}
}
if {[matchattr $handle $black(exceptflags) $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.noban none
	return
}
if {$mask == "*!*@*"} {
	return
}
if {[isbotnick $spammer]} {
	return
}
if {![botisop $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.noop none
	return
}
if {[onchan $spammer $chan]} {
	set mask *!*@[lindex [split [getchanhost $spammer $chan] "@"] 1] 
}
if {[matchattr $hand nm|- $chan]} {
if {($spammer == "") && ($type == "0")} {
	blacktools:tell $nick $host $hand $chan $chan1 spam.1 none
	return
}
if {($spammer == "") && ($type == "1")} {
	blacktools:tell $nick $host $hand $chan $chan1 spam.2 none
	return
	}
}
if {($spammer == "") && ($type == "0")} {
	blacktools:tell $nick $host $hand $chan $chan1 spam.3 none
	return
}
if {($spammer == "") && ($type == "1")} {
	blacktools:tell $nick $host $hand $chan $chan1 spam.4 none
	return
}
	blacktools:banner:3 $mask $hand $chan $reason $getbantime spam($chan)
}

proc spampublic {nick host hand chan arg} {
global botnick black
	set spammer [lindex [split $arg] 0]
	set chan1 "$chan"
	set type 0
	set mask [lindex [split $arg] 0]
	set handle [nick2hand $spammer]
foreach c [channels] {
	set backchan [channel get $c backchan]
if {[string match -nocase $chan $backchan] && [channel get $c chanreport]} {
	set chan "$c"
	}
}
if {[regexp {^[&#]} $spammer] && [matchattr $hand nm|- $chan]} {
	set chan "$spammer"
	set spammer [lindex [split $arg] 1]
	set mask [lindex [split $arg] 1]
}
	set split_text [split $spammer ","]
if {$split_text != ""} {	
	foreach txt $split_text {
		spam:process $txt $txt $nick $hand $host $chan $chan1 $type
		}
	} else { spam:process $spammer $mask $nick $hand $host $chan $chan1 $type }
}

################################### k #################################

proc k:process {knick nick hand host reason chan chan1 type} {
global botnick black
	set char(p) [lindex $black(cmdchar) 0]
if {[string match -nocase "none" "$char(p)"]} {
	set char(p) ""
} 
	set handle [nick2hand $knick]
if {![validchan $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.novalidchan none
	return
}
if {![onchan $botnick $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.notonchan none
	return
}
if {[matchattr $hand -|q $chan]} { blacktools:tell $nick $host $hand $chan $chan1 gl.suspend none
	return
}
if {[isbotnick $knick]} {
	return
}
if {[matchattr $handle $black(exceptflags) $chan] && ($black(kaccess) == "1")} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.noban none
	return
}
if {$reason == ""} {
if {[channel get $chan k-reason] != ""} {
	set reason [channel get $chan k-reason]
	}
}
if {$reason == ""} {
	set getlang [string tolower [channel get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
	set reason1 "$black(say.$getlang.k.5)"
 } else { set reason1 "$reason" }
if {[channel get $chan showhandle]} {
	set reason "($hand) $reason1"
	} else { set reason "$reason1" 
}

if {![botisop $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.noop none
	return
}
if {[matchattr $hand nm|- $chan]} {
if {($knick == "") && ($type == "0")} {
	blacktools:tell $nick $host $hand $chan $chan1 k.1 none
	return
}
if {($knick == "") && ($type == "1")} {
	blacktools:tell $nick $host $hand $chan $chan1 k.2 none
	return
	}
}
if {($knick == "") && ($type == "0")} {
	blacktools:tell $nick $host $hand $chan $chan1 k.3 none
	return
}
if {($knick == "") && ($type == "1")} {
	blacktools:tell $nick $host $hand $chan $chan1 k.4 none
	return
}
if {![onchan $knick $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.usernotonchan "$knick"
	return
}
	set getcount [channel get $chan kickcount]
	set kcount [expr $getcount +1]
	channel set $chan kickcount $kcount
	set countz [getuser $hand XTRA k($chan)]
if {$countz == ""} { set countz 0 }
	set counts [expr $countz + 1]
	setuser $hand XTRA k($chan) $counts
if {[channel get $chan showcount]} {
	set reason "$reason - $kcount -" 
} else {
	set reason "$reason" 
}
	putquick "KICK $chan $knick :$reason"
}

proc kpublic {nick host hand chan arg} {
global botnick black
	set knick [lindex [split $arg] 0]
	set type 0
	set reason [join [lrange [split $arg] 1 end]]
	set handle [nick2hand $knick]
	set chan1 "$chan"
foreach c [channels] {
	set backchan [channel get $c backchan]
if {[string match -nocase $chan $backchan] && [channel get $c chanreport]} {
	set chan "$c"
	}
}
if {[regexp {^[&#]} $knick] && [matchattr $hand nm|- $chan]} {
	set chan "$knick"
	set knick [lindex [split $arg] 1]
	set reason [join [lrange [split $arg] 2 end]]
}
	set split_text [split $knick ","]
if {$split_text != ""} {	
foreach txt $split_text {
	k:process $txt $nick $hand $host $reason $chan $chan1 $type
		}
	} else {k:process $knick $nick $hand $host $reason $chan $chan1 $type}
}


################################# find #################################

proc findpublic {nick host hand chan arg} {
	global black
	set info [lindex [split $arg] 0]
	set type 0
	set chan1 "$chan"
	find:process $info $nick $hand $host $chan $chan1 $type
}

proc find:process {text nick hand host chan chan1 type} {
	global black
	set found_user 0
	set found_host 0
	set counter 0
	set found_global 0
	set found_boss_owner 0
	set found_owner 0
	set found_it 0
if {($text == "") && ($type == "0")} {
	blacktools:tell $nick $host $hand $chan $chan1 find.1 none
	return
}
if {($text == "") && ($type == "1")} {
	blacktools:tell $nick $host $hand $chan $chan1 find.2 none
	return
}


foreach user [userlist] {
if {[string match -nocase $text $user]} {
	set counter [expr $counter + 1]
	set found_user 1
	set found_it 1
	blacktools:tell $nick $host $hand $chan $chan1 find.3 "$counter $user"
	blacktools:tell $nick $host $hand $chan $chan1 find.4 "$counter [getuser $user hosts]"

if {[matchattr $user n|- $chan]} {
	set found_global 1
	set found_boss_owner 1
}
if {[matchattr $user m|- $chan] && ($found_boss_owner != 1)} {
	set found_global 1
	set found_owner 1
}
if {$found_global == 0} {
	foreach chan [channels] {
if {[matchattr $user "-|HAMOVSo" $chan]} {
	lappend channels [split $chan]
			}
		}
if {![info exists channels]} {
	blacktools:tell $nick $host $hand $chan $chan1 find.5 "$counter"
			} else { blacktools:tell $nick $host $hand $chan $chan1 find.6 "$counter [join $channels ", "]" ; unset channels }
		} else {
if {$found_boss_owner == 1} {
	blacktools:tell $nick $host $hand $chan $chan1 find.7 "$counter"
	set found_global 0
	set found_boss_owner 0		
					}
if {$found_owner == 1} {
	blacktools:tell $nick $host $hand $chan $chan1 find.8 "$counter"
	set found_owner 0
	set found_global 0
			}
		}
	set laston [getuser $user laston]
if {$laston == ""}  {
	blacktools:tell $nick $host $hand $chan $chan1 find.9 "$counter"
		} else {
	set time [lindex $laston 0]
	set channel [lindex $laston 1]
	set time [clock format $time -format %D-%H:%M:%S]
	blacktools:tell $nick $host $hand $chan $chan1 find.10 "$counter $time $channel"
		}
	}
}

if {$found_user == 0} {
foreach user [userlist] {
foreach h [getuser $user hosts] {
if {[string match -nocase $text $h]} {
	set found_host 1
	set found_it 1
	}
}
if {$found_host == 1} {
	set counter [expr $counter + 1]
	blacktools:tell $nick $host $hand $chan $chan1 find.3 "$counter $user"
	blacktools:tell $nick $host $hand $chan $chan1 find.4 "$counter [getuser $user hosts]"

if {[matchattr $user n|- $chan]} {
	set found_global 1
	set found_boss_owner 1
}
if {[matchattr $user m|- $chan] && ($found_boss_owner != 1)} {
	set found_global 1
	set found_owner 1
}
if {$found_global == 0} {
	foreach chan [channels] {
if {[matchattr $user "-|HAMOVSo" $chan]} {
	lappend channels [split $chan]
			}
		}
if {![info exists channels]} {
	blacktools:tell $nick $host $hand $chan $chan1 find.5 "$counter"
			} else { blacktools:tell $nick $host $hand $chan $chan1 find.6 "$counter [join $channels ", "]" ; unset channels }
		} else {
if {$found_boss_owner == 1} {
	blacktools:tell $nick $host $hand $chan $chan1 find.7 "$counter"
	set found_global 0
	set found_boss_owner 0		
					}
if {$found_owner == 1} {
	blacktools:tell $nick $host $hand $chan $chan1 find.8 "$counter"
	set found_owner 0
	set found_global 0
			}
		}
	set laston [getuser $user laston]
if {$laston == ""}  {
	blacktools:tell $nick $host $hand $chan $chan1 find.9 "$counter"
		} else {
	set time [lindex $laston 0]
	set channel [lindex $laston 1]
	set time [clock format $time -format %D-%H:%M:%S]
	blacktools:tell $nick $host $hand $chan $chan1 find.10 "$counter $time $channel"
	
				}
	set found_host 0
			}		
		}	
	}
if {$found_it == 0} {
	blacktools:tell $nick $host $hand $chan $chan1 find.12 "$text"
	}
}

################################## bw #################################

proc bw:process {abuser mask nick hand host chan chan1 type} {
global botnick black
set char(p) [lindex $black(cmdchar) 0]
if {[string match -nocase "none" "$char(p)"]} {
	set char(p) ""
} 
	set handle [nick2hand $abuser]
if {![validchan $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.novalidchan none
	return
}
if {![onchan $botnick $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.notonchan none
	return
}
	set list [userlist $black(exceptflags) $chan]
	set getreason [channel get $chan bw-reason]
if {$getreason == ""} { 
	set getlang [string tolower [channel get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
	set getreason $black(say.$getlang.bw.5)
}
if {[channel get $chan showhandle]} {
	set reason "($hand) $getreason"
	} else { set reason "$getreason" 
}
	set getbantime [channel get $chan bw-bantime]
if {$getbantime == "0"} { set getbantime $black(bwtime) }
if {[matchattr $hand -|q $chan]} { blacktools:tell $nick $host $hand $chan $chan1 gl.suspend none
	return
}
foreach user $list {
	set hosts [getuser $user hosts]
foreach host $hosts {
if {[string match -nocase $mask $host]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.noban none
	return
		}
	}
}
if {[matchattr $handle $black(exceptflags) $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.noban none
	return
}
if {$mask == "*!*@*"} {
 return
}

if {[isbotnick $abuser]} {
	return
}
if {![botisop $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.noop none
	return
}
if {[onchan $abuser $chan]} {
	set mask *!*@[lindex [split [getchanhost $abuser $chan] "@"] 1] 
}

if {[matchattr $hand nm|- $chan]} {
if {($abuser == "") && ($type == "0")} {
	blacktools:tell $nick $host $hand $chan $chan1 bw.1 none
	return
}
if {($abuser == "") && ($type == "1")} {	
	blacktools:tell $nick $host $hand $chan $chan1 bw.2 none
	return
	}
}
if {($abuser == "") && ($type == "0")} {
	blacktools:tell $nick $host $hand $chan $chan1 bw.3 none
	return
}
if {($abuser == "") && ($type == "1")} {
	blacktools:tell $nick $host $hand $chan $chan1 bw.4 none
	return
}
	blacktools:banner:3 $mask $hand $chan $reason $getbantime bw($chan) 
}

proc bwpublic {nick host hand chan arg} {
global botnick black
	set abuser [lindex [split $arg] 0]
	set mask [lindex [split $arg] 0]	
	set type 0
	set handle [nick2hand $abuser]
	set chan1 "$chan"
foreach c [channels] {
	set backchan [channel get $c backchan]
if {[string match -nocase $chan $backchan] && [channel get $c chanreport]} {
	set chan "$c"
	}
}
if {[regexp {^[&#]} $abuser] && [matchattr $hand nm|- $chan]} {
	set chan "$abuser"
	set abuser [lindex [split $arg] 1]
	set mask [lindex [split $arg] 1]
}
	set split_text [split $abuser ","]
if {$split_text != ""} {	
	foreach txt $split_text {
		bw:process $txt $txt $nick $hand $host $chan $chan1 $type
		}
	} else { bw:process $abuser $mask $nick $hand $host $chan $chan1 $type}
}

################################ ub ###################################

proc ub:get:host { from keyword arguments } {
	global black
	set nickname [lindex [split $arguments] 1]
	set ident [lindex [split $arguments] 2]
	set mask [lindex [split $arguments] 3]
	set ban "$nickname!$ident@$mask"
	set nick $::getnick
	set hand $::hand
	set host $::host
	set chan $::chan
	set chan1 $::chan1
	set type $::type
	set why $::why
ub:process $ban $why $nick $hand $host $chan $chan1 $type
	check:if:bind "ub:get:host" "311"
}

proc ub:process {ban why nick hand host chan chan1 type} {
global botnick black
	set char(p) [lindex $black(cmdchar) 0]
	set found_it 0
	set count 0
if {[string match -nocase "none" "$char(p)"]} {
	set char(p) ""
} 
if {![validchan $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.novalidchan none
	return
}
if {![onchan $botnick $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.notonchan none
	return
}

if {[matchattr $hand -|q $chan]} { blacktools:tell $nick $host $hand $chan $chan1 gl.suspend none
	return
}
if {[matchattr $hand nm|- $chan]} {
if {($ban == "") && ($type == "0")} {
	blacktools:tell $nick $host $hand $chan $chan1 ub.1 none
	return
}
if {($ban == "") && ($type == "1")} {
	blacktools:tell $nick $host $hand $chan $chan1 ub.2 none
	return
	}
}
if {($ban == "") && ($type == "0")} {
	blacktools:tell $nick $host $hand $chan $chan1 ub.3 none
	return
}
if {($ban == "") && ($type == "1")} {
	blacktools:tell $nick $host $hand $chan $chan1 ub.4 none
	return
}  
if {$ban == "*!*@*"} { 
	return
}
if {![botisop $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.noop none
    return
}
 if {[ispermban $ban $chan] && [matchattr $hand -|O $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 ub.5 none
	return
}

if {($why == "global") && [matchattr $hand nm|- $chan]} {

foreach b [banlist] {
if {[string match -nocase [string tolower [lindex $b 0]] $ban]} {
	set found_it 1
	set count [expr $count + 1]
	killban [lindex $b 0]
	}
}
if {$found_it == "1"} {
	blacktools:tell $nick $host $hand $chan $chan1 ub.6 "$count $ban"
	return
		} else { blacktools:tell $nick $host $hand $chan $chan1 ub.7 none
	return
	}
}

foreach b [banlist $chan] {
if {[string match -nocase [lindex $b 0] $ban] || [string equal -nocase [lindex $b 0] $ban]} {
	set found_it 1
	set count [expr $count + 1]
if {[string equal -nocase [lindex $b 5] "ANTIPUB"] || [string equal -nocase [lindex $b 5] "BADWORD"] || [string equal -nocase [lindex $b 5] "BADCHAN"] } {
	bad:del:word $chan [lindex $b 0]
}
	killchanban $chan [lindex $b 0]
	
if {[onchan "X" $chan]} {
	putquick "PRIVMSG $black(chanserv) :unban $chan [lindex $b 0]"
}
	putquick "MODE $chan -b [lindex $b 0]"
	}
}

if {$found_it == "1"} {
	blacktools:tell $nick $host $hand $chan $chan1 ub.8 "$count $ban"
	} else { 
if {[onchan "X" $chan]} {
	putquick "PRIVMSG $black(chanserv) :unban $chan $ban"
}
	blacktools:tell $nick $host $hand $chan $chan1 ub.9 none 
	return
}
 if {[channel get $chan chanreport]} {
	set backchan [channel get $chan backchan]
if {$backchan == ""} { 
	return
}
if {!([validchan $backchan]) || !([onchan $botnick $backchan])} {
	return
}
	blacktools:tell $nick $host $hand $chan $backchan ub.10 "$hand $count $ban"
	}
}

proc ubpublic {nick host hand chan arg} {
global botnick black
	set ban [lindex [split $arg] 0]
	set why [lindex [split $arg] 1]
	set type 0	
	set chan1 "$chan"
foreach c [channels] {
	set backchan [channel get $c backchan]
if {[string match -nocase $chan $backchan] && [channel get $c chanreport]} {
	set chan "$c"
	}
}
if {[regexp {^[&#]} $ban] && [matchattr $hand nm|- $chan]} {
	set chan "$ban"
	set ban [lindex [split $arg] 1]
}
if {$ban != ""} {
if {(![regexp {\*} $ban]) && ![onchan $ban $chan]} {
if {[onchan $ban $chan]} {
	set ban "$nick![getchanhost $ban $chan]"
	ub:process $ban $why $nick $hand $host $chan $chan1 $type
	return
}
	putquick "WHOIS $ban $ban"
	set ::ban $ban
	set ::getnick $nick
	set ::hand $hand
	set ::host $host
	set ::chan $chan
	set ::chan1 $chan1
	set ::type $type
	set ::why $why
	bind RAW - 311 ub:get:host	
}
if {[regexp {\*} $ban]} {
	ub:process $ban $why $nick $hand $host $chan $chan1 $type
		}
	} else { ub:process $ban $why $nick $hand $host $chan $chan1 $type }
	utimer 1 [list check:if:bind "ub:get:host" "311"]
}

################################ sb ###################################   

proc sb:get:host { from keyword arguments } {
	global black
	set nickname [lindex [split $arguments] 1]
	set ident [lindex [split $arguments] 2]
	set mask [lindex [split $arguments] 3]
	set bhost "$nickname!$ident@$mask"
	set nick $::getnick
	set hand $::hand
	set host $::host
	set chan $::chan
	set chan1 $::chan1
	set type $::type
	set what $::what
sb:process $bhost $what $nick $hand $host $chan $chan1 $type
check:if:bind "sb:get:host" "311"
}

proc sb:process {bhost what nick hand host chan chan1 type} {
global botnick black
	set char(p) [lindex $black(cmdchar) 0]
	set foundban 0
if {[string match -nocase "none" "$char(p)"]} {
	set char(p) ""
} 
if {![validchan $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.novalidchan none
	return
}
if {[matchattr $hand -|q $chan]} { blacktools:tell $nick $host $hand $chan $chan1 gl.suspend none
	return
}
if {[matchattr $hand nm|- $chan]} {
if {($bhost == "") && ($type == "0")} {
	blacktools:tell $nick $host $hand $chan $chan1 sb.1 none
	return
}
if {($bhost == "") && ($type == "1")} {
	blacktools:tell $nick $host $hand $chan $chan1 sb.2 none
	return
	}
}
if {($bhost == "") && ($type == "0")} { 
	blacktools:tell $nick $host $hand $chan $chan1 sb.3 none
	return
}
if {($bhost == "") && ($type == "1")} {
	blacktools:tell $nick $host $hand $chan $chan1 sb.4 none
	return
}
if {[string match -nocase $what "global"] && [matchattr $hand mn|- $chan]} { 
foreach ban [banlist] {
	set expire [clock format [lindex $ban 2] -format %D-%H:%M:%S]
	set created [clock format [lindex $ban 3] -format %D-%H:%M:%S]
	set fban [lindex $ban 0]
	set freason [lindex $ban 1]
	set fbywho [lindex $ban 5]
if {[string match -nocase [lindex $ban 0] $bhost] || [string equal -nocase [lindex $ban 0] $bhost]} {
	set foundban 1
if {[lindex $ban 2] == 0} {
if {[isbansticky [lindex $ban 0]]} {
	blacktools:tell $nick $host $hand $chan $chan1 sb.5 "$fban $fbywho $created 0 $freason"
 } else {
	blacktools:tell $nick $host $hand $chan $chan1 sb.6 "$fban $fbywho $created 0 $freason"
	}
} else { 
if {[isbansticky [lindex $ban 0]]} { 
	blacktools:tell $nick $host $hand $chan $chan1 sb.7 "$fban $fbywho $created $expire $freason"         
} else {
	blacktools:tell $nick $host $hand $chan $chan1 sb.8 "$fban $fbywho $created $expire $freason"      
			}
		}
	}
}
if {$foundban == 0} {
	blacktools:tell $nick $host $hand $chan $chan1 sb.13 none
}
	return
}
#local ban
  foreach ban [banlist $chan] {
if {[string match -nocase [lindex $ban 0] $bhost] || [string equal -nocase [lindex $ban 0] $bhost]} {
	set expire [clock format [lindex $ban 2] -format %D-%H:%M:%S]
	set created [clock format [lindex $ban 3] -format %D-%H:%M:%S]
	set fban [lindex $ban 0]
	set freason [lindex $ban 1]
	set fbywho [lindex $ban 5]
	
	set foundban 1
if {[lindex $ban 2] == 0} {
if {[isbansticky [lindex $ban 0] $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 sb.9 "$fban $fbywho $created $expire $freason"
} else {
	blacktools:tell $nick $host $hand $chan $chan1 sb.10 "$fban $fbywho $created 0 $freason"
	}
} else { 
if {[isbansticky [lindex $ban 0] $chan]} {          
	blacktools:tell $nick $host $hand $chan $chan1 sb.11 "$fban $fbywho $created $expire $freason"
} else {
	blacktools:tell $nick $host $hand $chan $chan1 sb.12 "$fban $fbywho $created $expire $freason"      
			}
		}
if {[string equal $fbywho "ANTIPUB"] || [string equal $fbywho "BADWORD"] || [string equal $fbywho "BADCHAN"]} {
	set type $fbywho
	sb:say:why $nick $fban $hand $chan $chan1 $type
		}
	}
}

if {$foundban == 0} {
	blacktools:tell $nick $host $hand $chan $chan1 sb.13 none
	return
	}
}

proc sb:say:why {nick host hand chan chan1 type} {
	global black
	set file [open $black(bad_saylist) r]
	set w [read -nonewline $file]
	close $file
	set data [split $w "\n"]
if {$w != ""} {
foreach line $data {
	set channel [lindex [split $line] 0]
	set hostmask [lindex [split $line] 1]
	set why [join [lrange [split $line] 2 end]]
if {[string match -nocase $channel $chan] && [string equal -nocase $host $hostmask]} {
if {$type == "ANTIPUB" || $type == "BADWORD"} {
	blacktools:tell $nick $host $hand $chan $chan1 sb.14 $why
	}
if {$type == "BADCHAN"} {
	blacktools:tell $nick $host $hand $chan $chan1 sb.15 $why
				}
			}
		}
	}
}	

proc sbpublic {nick host hand chan arg} {
global botnick black
	set bhost [string tolower [lindex [split $arg] 0]]
	set what [lindex [split $arg] 1]
	set chan1 "$chan"
	set type 0
foreach c [channels] {
	set backchan [channel get $c backchan]
if {[string match -nocase $chan $backchan] && [channel get $c chanreport]} {	
	set chan "$c"
	}
}
if {[regexp {^[&#]} $bhost] && [matchattr $hand nm|- $chan]} {
	set chan "$bhost"
	set bhost [string tolower [lindex [split $arg] 1]]
	set what [lindex [split $arg] 2]
}
if {$bhost != ""} {
if {(![regexp {\*} $bhost]) && ![onchan $bhost $chan]} {
if {[onchan $bhost $chan]} {
	set bhost "$nick![getchanhost $bhost $chan]"
	sb:process $bhost $what $nick $hand $host $chan $chan1 $type
	return
}
	putquick "WHOIS $bhost $bhost"
	set ::bhost $bhost
	set ::getnick $nick
	set ::hand $hand
	set ::host $host
	set ::chan $chan
	set ::chan1 $chan1
	set ::type $type
	set ::what $what
	bind RAW - 311 sb:get:host	
}

if {[regexp {\*} $bhost]} {
	sb:process $bhost $what $nick $hand $host $chan $chan1 $type	
		}
	} else { sb:process $bhost $what $nick $hand $host $chan $chan1 $type }
	utimer 1 [list check:if:bind "sb:get:host" "311"]
}

################################# d ##################################

proc d:process {dnick mask days reason nick hand host chan chan1 type} {
global botnick black
	set char(p) [lindex $black(cmdchar) 0]
if {[string match -nocase "none" "$char(p)"]} {
	set char(p) ""
} 
	set handle [nick2hand $dnick]
if {![validchan $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.novalidchan none
	return 0
}
if {![onchan $botnick $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.notonchan none
	return
}
	set list [userlist $black(exceptflags) $chan]
if {[matchattr $hand -|q $chan]} { blacktools:tell $nick $host $hand $chan $chan1 gl.suspend none
	return
}
if {[matchattr $hand nm|- $chan]} {
if {($dnick == "")  && ($type == "0")} {
	blacktools:tell $nick $host $hand $chan $chan1 d.1 none
	return
}
if {($dnick == "") && ($type == "1")} {
	blacktools:tell $nick $host $hand $chan $chan1 d.2 none
	return
	}
}
if {($dnick == "") && ($type == "0")} {
	blacktools:tell $nick $host $hand $chan $chan1 d.3 none
	return
}
if {($dnick == "") && ($type == "1")} {
	blacktools:tell $nick $host $hand $chan $chan1 d.4 none
	return
}
foreach user $list {
 set hosts [getuser $user hosts]
foreach host $hosts {
if {[string match -nocase $mask $host]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.noban none
	return
		}
	}
}
if {[matchattr $handle $black(exceptflags) $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.noban none
	return
}

if {$days == "" || (![regexp {^[0-9]} $days])} {
if {[channel get $chan d-bantime] != "0"} {
	set days [channel get $chan d-bantime] 
	} else { set days "$black(dbtime)" }
}

if {$reason == ""} {
if {[channel get $chan d-reason] != ""} {
	set reason [channel get $chan d-reason]
	}
}

if {$reason == ""} {
	set getlang [string tolower [channel get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
	set reason1 $black(say.$getlang.d.5)
} else { set reason1 "$reason" }
if {[channel get $chan showhandle]} {
	set reason "($hand) $reason1"
	} else { set reason "$reason1" 
}
if {[isbotnick $dnick]} {
	return
}
if {![botisop $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.noop none
	return
}
if {$mask == "*!*@*"} {
	return
}
if {[onchan $dnick $chan]} {
	set mask *!*@[lindex [split [getchanhost $dnick $chan] "@"] 1] 
}
	blacktools:banner:3 $mask $hand $chan $reason [expr $days * 1440] d($chan)
}

proc dpublic {nick host hand chan arg} {
global botnick black
	set days [lindex [split $arg] 0]
	set dnick [lindex [split $arg] 1]
	set type 0
	set mask [lindex [split $arg] 1]
	set reason [join [lrange [split $arg] 2 end]]
	set handle [nick2hand $dnick]
	set chan1 "$chan"
foreach c [channels] {
	set backchan [channel get $c backchan]
if {[string match -nocase $chan $backchan] && [channel get $c chanreport]} {
	set chan "$c"
	}
}
if {[regexp {^[&#]} $days] && [matchattr $hand nm|- $chan]} {
	set chan "$days"
	set days [lindex [split $arg] 1]
	set mask [lindex [split $arg] 2]
	set dnick [lindex [split $arg] 2]
	set reason [join [lrange [split $arg] 3 end]]
if {![regexp {^[0-9]} $days]} {
	set mask [lindex [split $arg] 1]
	set dnick [lindex [split $arg] 1]
	set reason [join [lrange [split $arg] 2 end]]
	} 
}
if {![regexp {^[0-9]} $days]} {
	set mask [lindex [split $arg] 0]
	set dnick [lindex [split $arg] 0]
	set reason [join [lrange [split $arg] 1 end]]
}
	set split_text [split $dnick ","]
if {$split_text != ""} {
foreach txt $split_text {
	d:process $txt $txt $days $reason $nick $hand $host $chan $chan1 $type
		}
	} else { d:process $dnick $mask $days $reason $nick $hand $host $chan $chan1 $type }
}

############################### stick #################################

proc stick:process {snick mask time reason nick hand host chan chan1 type} {
global botnick black
	set char(p) [lindex $black(cmdchar) 0]
if {[string match -nocase "none" "$char(p)"]} {
	set char(p) ""
} 
	set handle [nick2hand $snick]
	set list [userlist $black(exceptflags) $chan]
if {![validchan $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.novalidchan none
	return
}
if {[matchattr $hand -|q $chan]} { blacktools:tell $nick $host $hand $chan $chan1 gl.suspend none
	return 0
}
if {![onchan $botnick $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.notonchan none
	return
}
foreach user $list {
 set hosts [getuser $user hosts]
foreach host $hosts {
if {[string match $mask $host]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.noban none
	return
		}
	}
}
if {[matchattr $handle nm|AMOVS $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.noban none
	return
}

if {$time == "" || (![regexp {^[0-9]} $time])} {
if {[channel get $chan stick-bantime] != "0"} {
	set time [channel get $chan stick-bantime] 
	} else { set time "$black(dfstickbantime)" }
}

if {$reason == ""} {
if {[channel get $chan stick-reason] != ""} {
	set reason [channel get $chan stick-reason]
	} 
}

if {$reason == ""} {
	set getlang [string tolower [channel get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
	set reason1 $black(say.$getlang.stick.5)
 } else { set reason1 "$reason" }
if {[channel get $chan showhandle]} {
	set reason "($hand) $reason1"
	} else { set reason "$reason1" 
}
if {[isbotnick $snick]} {
	return
}
if {![botisop $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.noop none
	return
}
if {$mask == "*!*@*"} {
	return
}
if {[onchan $snick $chan]} {
	set mask *!*@[lindex [split [getchanhost $snick $chan] "@"] 1] 
}
if {[matchattr $hand nm|- $chan]} {
if {($snick == "")  && ($type == "0")} {
	blacktools:tell $nick $host $hand $chan $chan1 stick.1 none
	return
}
if {($snick == "") && ($type == "1")} {
	blacktools:tell $nick $host $hand $chan $chan1 stick.2 none
	return
	}
}
if {($snick == "") && ($type == "0")} {
	blacktools:tell $nick $host $hand $chan $chan1 stick.3 none
	return
}
if {($snick == "") && ($type == "1")} {
	blacktools:tell $nick $host $hand $chan $chan1 stick.4 none
	return
}
	blacktools:banner:4 $mask $hand $chan $reason $time stick($chan)
}


proc stickpublic {nick host hand chan arg} {
global botnick black
	set snick [lindex [split $arg] 0]
	set mask [lindex [split $arg] 0]
	set chan1 "$chan"
	set type 0
	set time [lindex [split $arg] 1]
	set reason [join [lrange [split $arg] 2 end]]
	set handle [nick2hand $snick]
foreach c [channels] {
	set backchan [channel get $c backchan]
if {[string match -nocase $chan $backchan] && [channel get $c chanreport]} {
	set chan "$c"
	}
}
if {[regexp {^[&#]} $snick] && [matchattr $hand nm|- $chan]} {
	set chan "$snick"
	set time [lindex [split $arg] 2]
	set mask [lindex [split $arg] 1]
	set snick [lindex [split $arg] 1]
	set reason [join [lrange [split $arg] 3 end]]
if {![regexp {^[0-9]} $time]} {	
	set reason [join [lrange [split $arg] 2 end]]
	}
}
if {![regexp {^[0-9]} $time]} {
	set reason [join [lrange [split $arg] 1 end]]
}
	set split_text [split $snick ","]
if {$split_text != ""} {
foreach txt $split_text {
	stick:process $txt $txt $time $reason $nick $hand $host $chan $chan1 $type
		}
	} else { stick:process $snick $mask $time $reason $nick $hand $host $chan $chan1 $type }
}

################################### t #################################

proc tpublic {nick host hand chan arg} {
global black
	set topics [join [lrange [split $arg] 0 end]]
	set c [lindex [split $arg] 0]
	set type 0
	set chan1 "$chan"
if {[regexp {^[&#]} $c] && [matchattr $hand nm|M $c]} {
	set chan "$c"
	set topics [join [lrange [split $arg] 1 end]]
}
	t:process $nick $host $hand $chan $chan1 $topics $type
}

proc t:process {nick host hand chan chan1 topics type} {
global botnick black
	set char(p) [lindex $black(cmdchar) 0]
	set topics [join $topics]
if {(![matchattr $hand nm|M]) && [channel get $chan topiclock]} {
	blacktools:tell $nick $host $hand $chan $chan1 topic.20 none
	return
}

if {[string match -nocase "none" "$char(p)"]} {
	set char(p) ""
} 
if {[matchattr $hand nm|- $chan]} {
if {($topics == "")  && ($type == "0")} {
	blacktools:tell $nick $host $hand $chan $chan1 t.1 none
	return
}
if {($topics == "") && ($type == "1")} {
	blacktools:tell $nick $host $hand $chan $chan1 t.2 none
	return
	}
}
if {($topics == "") && ($type == "0")} {
	blacktools:tell $nick $host $hand $chan $chan1 t.3 none
	return
}
if {($topics == "") && ($type == "1")} {
	blacktools:tell $nick $host $hand $chan $chan1 t.4 none
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
if {[matchattr $hand -|q $chan]} { blacktools:tell $nick $host $hand $chan $chan1 gl.suspend none
	return
}
if {![botisop $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.noop none
	return
}
if {[channel get $chan showhandle]} {
	set topics "($hand) $topics"
	} else { set topics "$topics" 
}
	putquick "TOPIC $chan :$topics"
}

############################## status #################################

proc statuspublic {nick host hand chan arg} {
global botnick server uptime {server-online}
	set chan1 "$chan"
	catch {exec uptime} shelluptime
	set up [duration [expr [unixtime] - $uptime]]
	set on [duration [expr [unixtime] - ${server-online}]]
	blacktools:tell $nick $host $hand $chan $chan1 status.1 $up
	blacktools:tell $nick $host $hand $chan $chan1 status.2 $server
	blacktools:tell $nick $host $hand $chan $chan1 status.3 $on
	blacktools:tell $nick $host $hand $chan $chan1 status.4 [channels]
	blacktools:tell $nick $host $hand $chan $chan1 status.5 $shelluptime
}

############################## uptime #################################

proc uptimepublic {nick host hand chan arg} {
global botnick uptime {server-online} server
	set chan1 "$chan"
	set up [duration [expr [unixtime] - $uptime]]
	set on [duration [expr [unixtime] - ${server-online}]]
	blacktools:tell $nick $host $hand $chan $chan1 status.1 $up
	blacktools:tell $nick $host $hand $chan $chan1 status.2 $server
	blacktools:tell $nick $host $hand $chan $chan1 status.3 $on
}

################################# i ###################################

proc ipublic {nick host hand chan arg} {
global botnick black
	set type 0
	set chan1 "$chan"
	set inick [lrange [split $arg] 0 end]
	set c [lindex [split $arg] 0]
if {[regexp {^[&#]} $c] && [matchattr $hand nm|- $chan]} {
	set chan "$c"
	set inick [join [lrange [split $arg] 1 end]]
}
	i:process $nick $host $hand $chan $chan1 $inick $type
}

proc i:process {nick host hand chan chan1 inick type} {
global botnick black
	set char(p) [lindex $black(cmdchar) 0]
if {[string match -nocase "none" "$char(p)"]} {
	set char(p) ""
} 

if {$inick == "" && $chan != $chan1} {
	set inick $nick
}

if {($inick == "") && ($type == "0")} {
	blacktools:tell $nick $host $hand $chan $chan1 i.5 none
	return
}
if {($inick == "") && ($type == "1")} {
	blacktools:tell $nick $host $hand $chan $chan1 i.6 none
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
	set replace(%nick%) $nick
	set replace(%chan%) $chan
	set getlang [string tolower [getuser $hand XTRA OUTPUT_LANG]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
	set getmsg $black(say.$getlang.i.7)
if {[info exists black(say.$getlang.i.7)]} {
	set imessage [string map [array get replace] $getmsg]
}

if {[matchattr $hand -|q $chan]} { blacktools:tell $nick $host $hand $chan $chan1 gl.suspend none
	return
}
if {![botisop $chan]} {	
	blacktools:tell $nick $host $hand $chan $chan1 gl.noop none
	return
}

foreach in $inick {
if {[onchan $in $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 i.1 $in
	return
}
	set countz [getuser $hand XTRA i($chan)]
if {$countz == ""} { set countz 0 }
	set counts [expr $countz + 1]
	setuser $hand XTRA i($chan) $counts
	putquick "INVITE $in $chan"
	putquick "PRIVMSG $in :$imessage"
	blacktools:tell $nick $host $hand $chan $chan1 i.2 $in
	}
}

############################### addinfo ###############################


proc addinfopublic {nick host hand chan arg} {
global botnick black
set info [join [lrange [split $arg] 0 end]]
set chan1 "$chan"
set char(p) [lindex $black(cmdchar) 0]
if {[matchattr $hand -|q $chan]} { blacktools:tell $nick $host $hand $chan $chan1 gl.suspend none
return 0
}
if {$info == ""} { 
blacktools:tell $nick $host $hand $chan $chan1 addinfo.1 none
return 0
}
addinfo:process $nick $host $hand $chan $chan1 $info
}

proc addinfo:process {nick host hand chan chan1 info} {
global botnick black
if {[string match -nocase "$info" "off"]} {
set infos ""
setuser $hand info $infos
blacktools:tell $nick $host $hand $chan $chan1 addinfo.3 none
return 0
}
setuser $hand info $info
blacktools:tell $nick $host $hand $chan $chan1 addinfo.4 $info 
}

############################### purge ###############################

proc purgepublic {nick host hand chan arg} {
global botnick black
	set c [lindex [split $arg] 0]
	set reason [join [lrange [split $arg] 0 end]]
	set chan1 "$chan"
if {[regexp {^[&#]} $c] && [matchattr $hand nm|- $chan]} {
	set chan "$c"
	set reason [join [lrange [split $arg] 1 end]]
}
if {$reason == ""} {
	blacktools:tell $nick $host $hand $chan $chan1 purge.1 none
	return
}
	purge:process $nick $host $hand $chan $chan1 $reason
}

proc purge:process {nick host hand chan chan1 reason} {
	global black
if {!($black(homechan) == "") && ![string equal -nocase $black(homechan) "#no_home_chan"]} {
if {[string equal -nocase $chan $black(homechan)]} {
	blacktools:tell:prv $nick $host $hand delchan.5 $chan
	return
	}
}
	channel remove $chan
	delchan:stats $chan $hand $host $reason
	blacktools:tell $nick $host $hand $chan $chan1 purge.2 none
	putquick "PART $chan :PURGED by $hand :$reason"
}

################################### v #################################


proc vpublic {nick host hand chan arg} {
global botnick black
set c [lindex [split $arg] 0]
set arg [split $arg]
set nick [split $nick]
set chan1 "$chan"
if {[regexp {^[&#]} $c] && [matchattr $hand nm|- $chan]} {
set chan "$c"
set arg [lrange $arg 1 end]
}
v:process $nick $host $hand $chan $chan1 $arg
}

proc v:process {nick host hand chan chan1 arg} {
global botnick black
if {![validchan $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.novalidchan none
return 0
}
if {![onchan $botnick $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.notonchan none
return 0
}

if {![botisop $chan]} { blacktools:tell $nick $host $hand $chan $chan1 gl.noop none
return 0
}
if {[matchattr $hand -|q $chan]} { blacktools:tell $nick $host $hand $chan $chan1 gl.suspend none
return 0
}
if {$arg == ""} {
set arg $nick
}

foreach voicenick $arg {
if {[isbotnick $voicenick]} { return 0 }
if {[isvoice $voicenick $chan]} {putquick "MODE $chan -v $voicenick"} else {putquick "MODE $chan +v $voicenick"}
}

}

################################## o ##################################

proc opublic {nick host hand chan arg} {
global botnick black
set c [lindex [split $arg] 0]
set arg [split $arg]
set nick [split $nick]
set chan1 "$chan"
if {[regexp {^[&#]} $c] && [matchattr $hand nm|- $chan]} {
set chan "$c"
set arg [lrange $arg 1 end]
}
o:process $nick $host $hand $chan $chan1 $arg
}


proc o:process {nick host hand chan chan1 arg} {
global botnick black
if {![validchan $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.novalidchan none
return 0
}
if {![onchan $botnick $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.notonchan none
return 0
}

if {![botisop $chan]} { blacktools:tell $nick $host $hand $chan $chan1 gl.noop none
 return 0
}
if {[matchattr $hand -|q $chan]} { blacktools:tell $nick $host $hand $chan $chan1 gl.suspend none
return 0
}

if {$arg == ""} {
set arg $nick
}


foreach opnick $arg {
if {[isbotnick $opnick]} { return 0 }
if {[isop $opnick $chan]} {putquick "MODE $chan -o $opnick"} else {putquick "MODE $chan +o $opnick"}
}

}


################################# l ###################################

proc lpublic {nick host hand chan arg} {
global black
set times [lindex [split $arg] 0]
set type 0
set chan1 "$chan"
if {[regexp {^[&#]} $times] && [matchattr $hand nm|- $chan]} {
set chan "$times"
set times [lindex [split $arg] 1]
}
l:process $nick $host $hand $chan $chan1 $times $type
}

proc l:process {nick host hand chan chan1 time type} {
global botnick black
set char(p) [lindex $black(cmdchar) 0]
if {[string match -nocase "none" "$char(p)"]} {
set char(p) ""
}         
if {[matchattr $hand -|q $chan]} { blacktools:tell $nick $host $hand $chan $chan1 gl.suspend none
return 0
}
if {[matchattr $hand nm|- $chan]} {
if {($time == "")  && ($type == "0")} {
blacktools:tell $nick $host $hand $chan $chan1 l.1 none
return 0
}
if {($time == "") && ($type == "1")} {
blacktools:tell $nick $host $hand $chan $chan1 l.2 none
return 0
}
}
if {($time == "") && ($type == "0")} {
blacktools:tell $nick $host $hand $chan $chan1 l.3 none
return 0
}
if {($time == "") && ($type == "1")} {
blacktools:tell $nick $host $hand $chan $chan1 l.4 none
return 0
}

if {![validchan $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.novalidchan none
return 0
}

if {![onchan $botnick $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.notonchan none
return 0
}

if {![botisop $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.noop none
return 0
}

if {$time >= 300} {
blacktools:tell $nick $host $hand $chan $chan1 l.5 none
return 0
}
putserv "MODE $chan +$black(lmode)" ;utimer $time [list putquick "MODE $chan -$black(lmode)"]
blacktools:tell $nick $host $hand $chan $chan1 l.6 "$black(lmode) $time"
}

proc chatpublic {nick host hand chan arg} {
global botnick
*ctcp:CHAT $nick $host $hand $botnick CHAT $arg
blacktools:tell $nick $host $hand $chan $chan1 chat.1 none
} 

################################ ul ###################################

proc ul:process {nick host hand chan chan1} {
global black botnick
if {[matchattr $hand -|q $chan]} { blacktools:tell $nick $host $hand $chan $chan1 gl.suspend none
return 0
}

if {![validchan $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.novalidchan none
return 0
}

if {![onchan $botnick $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.notonchan none
return 0
}

if {![botisop $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.noop none
return 0
}
putquick "MODE $chan -$black(ulmodes)"
blacktools:tell $nick $host $hand $chan $chan1 ul.1 $black(ulmodes)
}


proc ulpublic {nick host hand chan arg} {
global black
set c [lindex [split $arg] 0]
set chan1 "$chan"
if {[regexp {^[&#]} $c] && [matchattr $hand nm|- $chan]} {
set chan "$c"
}
ul:process $nick $host $hand $chan $chan1
}

################################ say ##################################


proc saypublic {nick host hand chan arg} {
global black
set text [join [lrange [split $arg] 0 end]]
set c [lindex [split $arg] 0]
set type 0
set chan1 "$chan"
if {[regexp {^[&#]} $c] && [matchattr $hand nm|- $chan]} {
set chan "$c"
set text [join [lrange [split $arg] 1 end]]
}
say:process $nick $host $hand $chan $chan1 $text $type
}

proc say:process {nick host hand chan chan1 text type} {
global botnick black
	set char(p) [lindex $black(cmdchar) 0]
	set text [join $text]
if {[string match -nocase "none" "$char(p)"]} {
	set char(p) ""
} 
if {[matchattr $hand -|q $chan]} { blacktools:tell $nick $host $hand $chan $chan1 gl.suspend none
	return
}

if {![validchan $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.novalidchan none
	return
}

if {[matchattr $hand nm|- $chan]} {
if {($text == "")  && ($type == "0")} {
	blacktools:tell $nick $host $hand $chan $chan1 say.1 none
	return
}
if {($text == "") && ($type == "1")} {
	blacktools:tell $nick $host $hand $chan $chan1 say.2 none
	return
	}
}
if {($text == "") && ($type == "0")} {
	blacktools:tell $nick $host $hand $chan $chan1 say.3 none
	return
}
if {($text == "") && ($type == "1")} {
	blacktools:tell $nick $host $hand $chan $chan1 say.4 none
	return
}

if {![onchan $botnick $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.notonchan none
	return
}
	putquick "PRIVMSG $chan :$text"
}

################################ act ##################################

proc actpublic {nick host hand chan arg} {
global black
set text [join [lrange [split $arg] 0 end]]
set c [lindex [split $arg] 0]
set type 0
set chan1 "$chan"
if {[regexp {^[&#]} $c] && [matchattr $hand nm|- $chan]} {
set chan "$c"
set text [join [lrange [split $arg] 1 end]]
}
act:process $nick $host $hand $chan $chan1 $text $type
}

proc act:process {nick host hand chan chan1 text type} {
global botnick black
	set char(p) [lindex $black(cmdchar) 0]
	set text [join $text]
if {[string match -nocase "none" "$char(p)"]} {
	set char(p) ""
} 
if {[matchattr $hand -|q $chan]} { blacktools:tell $nick $host $hand $chan $chan1 gl.suspend none
	return
}
if {[matchattr $hand nm|- $chan]} {
if {($text == "")  && ($type == "0")} {
blacktools:tell $nick $host $hand $chan $chan1 act.1 none
	return
}
if {($text == "") && ($type == "1")} {
	blacktools:tell $nick $host $hand $chan $chan1 act.2 none
	return
	}
}
if {($text == "") && ($type == "0")} {
	blacktools:tell $nick $host $hand $chan $chan1 act.3 none
	return
}
if {($text == "") && ($type == "1")} {
	blacktools:tell $nick $host $hand $chan $chan1 act.4 none
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
	putquick "PRIVMSG $chan :\001ACTION $text\001"
}

############################## broadcast ##############################

proc broadcastpublic {nick host hand chan arg} {
global black
set text [join [lrange [split $arg] 0 end]]
set chan1 "$chan"
set char(p) [lindex $black(cmdchar) 0]
if {$text == ""} { 
blacktools:tell $nick $host $hand $chan $chan1 broadcast.1 none
return 0
}
broadcast:cmd:process $nick $host $hand $chan $chan1 $text
}

proc broadcast:cmd:process {nick host hand chan chan1 text} {
global botnick black
set text [join $text]
if {[matchattr $hand -|q $chan]} { blacktools:tell $nick $host $hand $chan $chan1 gl.suspend none
return 0
}
foreach c [channels] {
if {![channel get $c silent]} {
putquick "PRIVMSG $c :(BROADCAST) $text"
}
}
}

############################### check #################################

proc checkpublic {nick host hand chan arg} {
 global black
	set checked [lindex [split $arg] 0]
if {[regexp {^[&#]} $checked] && [matchattr $hand nm|- $chan]} {
	set chan "$checked"
	set checked [lindex [split $arg] 1]
}
	set chan1 "$chan"
if {$checked == ""} { blacktools:tell $nick $host $hand $chan $chan1 check.1 none
	return
}
	check:process $nick $host $hand $chan $chan1 $checked
}

proc check:process {nick host hand chan chan1 checked} {
global botnick black
	set char(p) [lindex $black(cmdchar) 0]
if {[string match -nocase "none" "$char(p)"]} {
	set char(p) ""
} 
	set handle [nick2hand $checked]
if {[matchattr $hand -|q $chan]} { 
	blacktools:tell $nick $host $hand $chan $chan1 gl.suspend none
	return
}
if {[matchattr $handle $black(exceptflags) $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.noban none
	return
}
if {[isbotnick $checked]} {
	return
}
if {![botisop $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.noop none
	return
}
if {![onchan $checked $chan]} { 
	blacktools:tell $nick $host $hand $chan $chan1 gl.usernotonchan $checked
	return
}
if {[onchan $checked $chan]} {
	set mask *!*@[lindex [split [getchanhost $checked $chan] "@"] 1] 
}
	set countz [getuser $hand XTRA check($chan)]
if {$countz == ""} { set countz 0 }
	set counts [expr $countz + 1]
	setuser $hand XTRA check($chan) $counts
if {[channel get $chan check-message] != ""} {
	set getmsg [channel get $chan check-message]
}
	set getlang [string tolower [getuser $hand XTRA OUTPUT_LANG]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
if {![info exists getmsg]} {
	set getmsg $black(say.$getlang.check.3)
}
	putquick "PRIVMSG $checked :$getmsg"
}

############################## version ################################

proc versionpublic {nick host hand chan arg} {
global botnick black
set chan1 "$chan"
version:process $nick $host $hand $chan $chan1
}

proc version:process {nick host hand chan chan1} {
global botnick black
blacktools:tell $nick $host $hand $chan $chan1 version.1 none
}

############################### cycle #################################

proc cycle:process {nick host hand chan chan1 reason} {
global black botnick
if {[matchattr $hand -|q $chan]} { blacktools:tell $nick $host $hand $chan $chan1 gl.suspend none
return 0
}

if {![validchan $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.novalidchan none
return 0
}

if {![onchan $botnick $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.notonchan none
return 0
}

if {$reason == ""} { set reason "No Reason" }
putquick "PART $chan :$reason"
utimer 5 [list putquick "JOIN $chan"]
}


proc cyclepublic {nick host hand chan arg} {
global black
set reason [join [lrange [split $arg] 0 end]]
set c [lindex [split $arg] 0]
set chan1 "$chan"
if {[regexp {^[&#]} $c] && [matchattr $hand nm|- $chan]} {
set chan "$c"
set reason [join [lrange [split $arg] 1 end]]
}
cycle:process $nick $host $hand $chan $chan1 $reason
}

################################ away #################################

proc awaypublic {nick host hand chan arg} {
global black
set chan1 "$chan"
set char(p) [lindex $black(cmdchar) 0]
if {[string match -nocase "none" "$char(p)"]} {
set char(p) ""
} 
set aw [join [lrange [split $arg] 0 end]]
if {$aw == "" } {blacktools:tell $nick $host $hand $chan $chan1 away.1 none
return 0
}
away:process $nick $host $hand $chan $chan1 $aw
}


proc away:process {nick host hand chan chan1 aw} {
global black botnick username
	set char(p) [lindex $black(cmdchar) 0]
	set wdir "scripts/BlackTools/FILES/$username.away.txt"
	set aw [join $aw]
if {[string equal -nocase "none" "$char(p)"]} {
	set char(p) ""
} 
if {[string equal -nocase "$aw" "off"]} { 
	blacktools:tell $nick $host $hand $chan $chan1 away.3 none
	putquick "AWAY :" 
	set type [open $wdir w]
	set none ""
	puts $type "$none"
	close $type
	return
} else {
	blacktools:tell $nick $host $hand $chan $chan1 away.4 $aw ; putquick "AWAY :$aw"
	set type [open $wdir w]
	puts $type "$aw"
	close $type
	}
}

proc setaway {my} {
global black username
	set wdir "scripts/BlackTools/FILES/$username.away.txt"
	set file [open $wdir r]
	set away [gets $file]
	close $file
if {$away == ""} {
 return
} else {
putserv "AWAY :"
putserv "AWAY :$away"
	}
}

################################### mode ######################################

proc modepublic {nick host hand chan arg} {
global black
set modes [lindex [split $arg] 0]
set chan1 "$chan"
set type 0
if {[regexp {^[&#]} $modes] && [matchattr $hand nm|- $chan]} {
set chan "$modes"
set modes [lindex [split $arg] 1]
}
mode:process $nick $host $hand $chan $chan1 $modes $type
}

proc mode:process {nick host hand chan chan1 modes type} {
global botnick black
set char(p) [lindex $black(cmdchar) 0]
if {[string match -nocase "none" "$char(p)"]} {
set char(p) ""
} 
if {[matchattr $hand -|q $chan]} { blacktools:tell $nick $host $hand $chan $chan1 gl.suspend none
return 0
}

if {[matchattr $hand nm|- $chan]} {
if {($modes == "")  && ($type == "0")} {
blacktools:tell $nick $host $hand $chan $chan1 mode.1 none
return 0
}
if {($modes == "") && ($type == "1")} {
blacktools:tell $nick $host $hand $chan $chan1 mode.2 none
return 0
}
}
if {($modes == "") && ($type == "0")} {
blacktools:tell $nick $host $hand $chan $chan1 mode.3 none
return 0
}
if {($modes == "") && ($type == "1")} {
blacktools:tell $nick $host $hand $chan $chan1 mode.4 none
return 0
}


if {![validchan $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.novalidchan none
return 0
}

if {![onchan $botnick $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.notonchan none
return 0
}

if {![botisop $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.noop none
return 0
}

if {![regexp {^[+ -]} $modes]} {
blacktools:tell $nick $host $hand $chan $chan1 mode.5 none
return 0
}
blacktools:tell $nick $host $hand $chan $chan1 mode.6 $modes
putserv "MODE $chan $modes"
}


################################## myset #############################

proc mysetpublic {nick host hand chan arg} {
global black
	set chan1 "$chan"	
	set flags [lindex [split $arg] 0]
	set type [lindex [split $arg] 1]
if {$type == ""} {
	blacktools:tell $nick $host $hand $chan $chan1 myset.3 none
	return
}
	myset:process $nick $host $hand $chan $chan1 $flags $type
}


proc myset:process {nick host hand chan chan1 flags typez} {
global black
switch -exact -- [string tolower $flags] {
lang {
if {![file exists "$black(dirname)/BlackTools/lang/BlackTools.[string tolower $typez].lang.tcl"]} {
	blacktools:tell $nick $host $hand $chan $chan1 myset.5 \002[string tolower $typez]\002
	return
}
	setuser $hand XTRA OUTPUT_LANG $typez
	blacktools:tell $nick $host $hand $chan $chan1 myset.1 $typez
	return
}

output {
if {[string match -nocase $typez "notice"]} {
	setuser $hand XTRA OUTPUT_TYPE 1
	blacktools:tell $nick $host $hand $chan $chan1 myset.2 $typez
	return
}
if {[string match -nocase $typez "chan"]} {
	setuser $hand XTRA OUTPUT_TYPE 0
	blacktools:tell $nick $host $hand $chan $chan1 myset.2 $typez
	return
			}
		}
	}
}

################################# set #################################

proc setpublic {nick host hand chan arg} {
global black
	set flags [lindex [split $arg] 0]
	set type [join [lrange [split $arg] 1 end]]
	set chan1 "$chan"
	set type1 0
if {[matchattr $hand nm|M $chan]} {
if {[regexp {^[&#]} $flags]} {
	set chan "$flags"
	set flags [lindex [split $arg] 1]
	set type [join [lrange [split $arg] 2 end]]
	}
}
if {[matchattr $hand nm]} {
if {[string equal -nocase $flags "global"]} {
	set chan "$flags"
	set flags [lindex [split $arg] 1]
	set type [join [lrange [split $arg] 2 end]]
foreach c [channels] {
	set:process $nick $host $hand $c $chan1 $flags $type $type1
			}
		return
	}
}
	set:process $nick $host $hand $chan $chan1 $flags $type $type1
}

proc set:process {nick host hand chan chan1 flags type type1} {
global botnick black
	set char(p) [lindex $black(cmdchar) 0]
	set flags [string tolower $flags]
	set type [string tolower $type]
if {[string match -nocase "none" "$char(p)"]} {
	set char(p) ""
} 
if {[matchattr $hand -|q $chan]} { 
	blacktools:tell $nick $host $hand $chan $chan1 gl.suspend none
	return
}

if {[matchattr $hand nm|- $chan]} {
if {($flags == "")  && ($type1 == "0")} {
	blacktools:tell $nick $host $hand $chan $chan1 set.1 none
	return
}
if {($flags == "") && ($type1 == "1")} {
	blacktools:tell $nick $host $hand $chan $chan1 set.2 none
	return
	}
}
if {($flags == "") && ($type1 == "0")} {
	blacktools:tell $nick $host $hand $chan $chan1 set.3 none
	return
}
if {($flags == "") && ($type1 == "1")} {
	blacktools:tell $nick $host $hand $chan $chan1 set.4 none
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

 if {$type == ""} {
set why [catch {channel set $chan $flags} error]
if {$why == "1"} { blacktools:tell $nick $host $hand $chan $chan1 set.5 $flags
	return
} else {
channel set $chan $flags ; blacktools:tell $nick $host $hand $chan $chan1 set.6 $flags	
	}
} else {
	set why [catch {channel set $chan $flags $type} error]
if {![matchattr $hand mn|- $chan]} {
if {[string match -nocase "backchan" $flags]} {
	return
	}
}
if {[string equal -nocase "vprotect" $flags]} {
if {![string equal -nocase "on" $type] && ![string equal -nocase "off" $type]} {
	blacktools:tell $nick $host $hand $chan $chan1 set.9 none
	return
	}
} 

if {[string equal -nocase "oprotect" $flags]} {
if {![string equal -nocase "on" $type] && ![string equal -nocase "off" $type]} {
	blacktools:tell $nick $host $hand $chan $chan1 set.10 none
	return
	}
}

if {[string equal -nocase "seen-method" $flags]} {
if {![string equal -nocase "notice" $type] && ![string equal -nocase "privmsg" $type]} {
	blacktools:tell $nick $host $hand $chan $chan1 set.11 none
	return
	}
}

if {[string equal -nocase "clonescan-action" $flags]} {
if {![string equal -nocase "message" $type] && ![string equal -nocase "ban" $type]} {
	blacktools:tell $nick $host $hand $chan $chan1 set.13 none
	return
	}	
}

if {[string equal -nocase "lang" $flags]} {
if {![file exists "$black(dirname)/BlackTools/lang/BlackTools.[string tolower $type].lang.tcl"]} {
	blacktools:tell $nick $host $hand $chan $chan1 myset.5 \002[string tolower $type]\002
	return
	}
}

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

proc ignorepublic {nick host hand chan arg} {
global black
	set chan1 "$chan"
	set what [lindex [split $arg] 0]
	set mask [lindex [split $arg] 1]
	set time [lindex [split $arg] 2]
	set reason [join [lrange [split $arg] 3 end]]
if {$what == ""} { blacktools:tell $nick $host $hand $chan $chan1 ignore.1 none
	return
}
	ignore:process $nick $host $hand $chan $chan1 $what $mask $time $reason
}


proc ignore:process {nick host hand chan chan1 what mask time reason} {
global botnick black
	set char(p) [lindex $black(cmdchar) 0]
if {[string match -nocase "none" "$char(p)"]} {
	set char(p) ""
} 
switch -exact -- [string tolower $what] {

list {
if {[llength [ignorelist]] == "0"} { blacktools:tell $nick $host $hand $chan $chan1 ignore.3 none
	return
}
foreach ig [ignorelist] {
	set hostig [lindex $ig 0]
	set byig [lindex $ig 4]
	set time [lindex $ig 2]
	set reasig [lindex $ig 1]
if {$time != "0"} {
	set bytime [clock format $time -format %D-%H:%M:%S]
} else { set bytime "-"}
	blacktools:tell $nick $host $hand $chan $chan1 ignore.4 "$hostig $byig $bytime $reasig" 
	}
}

add {

if {[isignore $mask]} {
	blacktools:tell $nick $host $hand $chan $chan1 ignore.5 "$mask"
	return
}

if {![regexp {^[0-9]} $time]} {
	set time "60"
}
if {$reason == ""} { set reason "No Reason" }
	newignore $mask $hand $reason $time
	blacktools:tell $nick $host $hand $chan $chan1 ignore.6 "$mask $time $reason"
}

delete {
if {$mask == ""} { blacktools:tell $nick $host $hand $chan $chan1 ignore.7 none
	return
}

if {[isignore $mask]} {
	killignore $mask
} else { blacktools:tell $nick $host $hand $chan $chan1 ignore.8 "$mask"
	return
} 
	blacktools:tell $nick $host $hand $chan $chan1 ignore.9 "$mask"
		}
	}
}


################################# show ################################

proc showpublic {nick host hand chan arg} {
global black
	set wich [lindex [split $arg] 0]
	set type 0
	set chan1 "$chan"
if {[regexp {^[&#]} $wich] && [matchattr $hand nm|- $chan]} {
	set chan "$wich"
	set wich [lindex [split $arg] 1]
}
	show:process $nick $host $hand $chan $chan1 $wich $type
}

proc show:process {nick host hand chan chan1 wich type} {
global black botnick
	set char(p) [lindex $black(cmdchar) 0]
if {[string match -nocase "none" "$char(p)"]} {
	set char(p) ""
} 
if {[matchattr $hand -|q $chan]} { blacktools:tell $nick $host $hand $chan $chan1 gl.suspend none
	return
}

if {[matchattr $hand nm|- $chan]} {
if {($wich == "")  && ($type == "0")} {
	blacktools:tell $nick $host $hand $chan $chan1 show.1 none
	return
}
if {($wich == "") && ($type == "1")} {
	blacktools:tell $nick $host $hand $chan $chan1 show.2 none
	return
	}
}
if {($wich == "") && ($type == "0")} {
	blacktools:tell $nick $host $hand $chan $chan1 show.3 none
	return
}
if {($wich == "") && ($type == "1")} {
	blacktools:tell $nick $host $hand $chan $chan1 show.4 none
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
	set why [catch {channel get $chan $wich} error]
if {$why == "1"} { blacktools:tell $nick $host $hand $chan $chan1 show.5 $wich
	return
} else {
	set replyinfo [channel get $chan $wich]
if {($replyinfo == "") || ($replyinfo == "0")} {
switch -exact -- [string tolower $wich] {

antipub-reason {
	set getlang [string tolower [channel get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
	set replyinfo $black(say.$getlang.antipub.1)
}

antilongtextmax {
	set replyinfo [channel get $chan antilongtextmax]
if {$replyinfo == "0"} {
	set replyinfo "$black(longchar)"
	}
}

joinflood {
	set replyinfo [channel get $chan joinflood]
if {$replyinfo == ""} {
	set replyinfo "4:5"
	}
}

chanflood {
	set replyinfo [channel get $chan chanflood]
if {$replyinfo == ""} {
	set replyinfo "4:5"
	}
}

idleopmax {
	set replyinfo [channel get $chan idleopmax]
if {$replyinfo == "0"} {
	set replyinfo "$black(idleopmax)"
	}
}

idlevoicemax {
	set replyinfo [channel get $chan idlevoicemax]
if {$replyinfo == "0"} {
	set replyinfo "$black(idlevoicemax)"
	}
}

private-bantime {
	set replyinfo "$black(privatebantime)"
}

private-reason {
	set getlang [string tolower [channel get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
	set replyinfo $black(say.$getlang.private.12)
}

antipub-bantime {
	set replyinfo "$black(antipubbantime)"
}

antinotice-bantime {
	set replyinfo "$black(antinoticebantime)"
}

antinotice-reason {
	set getlang [string tolower [channel get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
	set replyinfo $black(say.$getlang.antinotice.1)
}

antictcp-reason {
	set getlang [string tolower [channel get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
	set replyinfo $black(say.$getlang.antictcp.1)
}

antictcp-bantime {
	set replyinfo "$black(antictcpbantime)"
}

antibadword-bantime {
	set replyinfo "$black(antibadwordbantime)"
}

antibadword-reason {
	set getlang [string tolower [channel get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
	set replyinfo $black(say.$getlang.antibadword.1)
}

antilongtext-reason {
	set getlang [string tolower [channel get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
	set replyinfo $black(say.$getlang.antilongtext.1)
}

antilongtext-bantime {
	set replyinfo "$black(longbantime)"
}

antibadquitpart-reason {
	set getlang [string tolower [channel get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
	set replyinfo $black(say.$getlang.antibadquitpart.1)
}

antibadquitpart-bantime {
	set replyinfo "$black(badquitparttime)"
}

antijoinpart-reason {
	set getlang [string tolower [channel get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
	set replyinfo $black(say.$getlang.antijoinpart.1)
}

antijoinpart-bantime {
	set replyinfo "$black(joinpartbantime)"
}

antispam-bantime {
	set replyinfo "$black(spamban)"
}

antispam-reason {
	set getlang [string tolower [channel get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
	set replyinfo $black(say.$getlang.antispam.1)
}

antirepeat-reason {
	set getlang [string tolower [channel get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
	set replyinfo $black(say.$getlang.antirepeat.1)
}

antirepeat-setting {
set replyinfo "$black(repeats)"
}

antirepeat-bantime {
set replyinfo "$black(antirepeatbantime)"
}

anticolor-reason {
set getlang [string tolower [channel get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
set replyinfo $black(say.$getlang.anticolor.1)
}

anticolor-bantime {
set replyinfo "$black(anticolorbantime)"
}

antibold-reason {
set getlang [string tolower [channel get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
set replyinfo $black(say.$getlang.antibold.1)
}

antibold-bantime {
set replyinfo "$black(antiboldbantime)"
}

antiunderline-reason {
set getlang [string tolower [channel get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
set replyinfo $black(say.$getlang.antiunderline.1)
}

antiunderline-bantime {
set replyinfo "$black(antiunderlinebantime)"
}

anticaps-reason {
set getlang [string tolower [channel get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
set replyinfo $black(say.$getlang.anticaps.1)
}

anticaps-bantime {
set replyinfo "$black(anticapsbantime)"
}

badfullname-reason {
set getlang [string tolower [channel get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
set replyinfo $black(say.$getlang.badfullname.1)
}

badfullname-bantime {
set replyinfo "$black(badfbantime)"
}

badnick-reason {
set getlang [string tolower [channel get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
set replyinfo $black(say.$getlang.badnick.1)
}

badnick-bantime {
set replyinfo "$black(badnickbantime)"
}

badident-reason {
set getlang [string tolower [channel get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
set replyinfo $black(say.$getlang.badident.1)
}

badident-bantime {
set replyinfo "$black(badidentbantime)"
}

antichanflood-reason {
set getlang [string tolower [channel get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
set replyinfo $black(say.$getlang.antichanflood.1)
}

antichanflood-bantime {
set replyinfo "$black(antifloodchanbantime)"
}

badchan-reason {
set getlang [string tolower [channel get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
set replyinfo $black(say.$getlang.badchan.15)
}

badchan-bantime {
set replyinfo "$black(badcbantime)"
}

count-message {
set getlang [string tolower [channel get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
set replyinfo $black(say.$getlang.count.9)
}

seen-method {
	set getlang [string tolower [channel get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
	set replyinfo "NOTICE"
}
gag-reason {
	set getlang [string tolower [channel get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
	set replyinfo $black(say.$getlang.gag.6)
}

gag-time {
	set getlang [string tolower [channel get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
	set replyinfo $black(gag_time)
}

dr-reason {
set getlang [string tolower [channel get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
set replyinfo $black(say.$getlang.dr.5)
}

dr-bantime {
set replyinfo "$black(drtime)"
}

bot-reason {
set getlang [string tolower [channel get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
set replyinfo $black(say.$getlang.bot.5)
}

bot-bantime {
set replyinfo "$black(bottime)"
}

n-reason {
set getlang [string tolower [channel get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
set replyinfo $black(say.$getlang.n.5)
}

n-bantime {
set replyinfo "$black(ntime)"
}

id-reason {
set getlang [string tolower [channel get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
set replyinfo $black(say.$getlang.id.5)
}

id-bantime {
set replyinfo "$black(idtime)"
}

w-reason {
set getlang [string tolower [channel get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
set replyinfo $black(say.$getlang.w.5)

}

spam-reason {
set getlang [string tolower [channel get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
set replyinfo $black(say.$getlang.spam.5)
}

spam-bantime {
set replyinfo "$black(spamtime)"
}

bw-reason {
set getlang [string tolower [channel get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
set replyinfo $black(say.$getlang.bw.5)
}

bw-bantime {
set replyinfo "$black(bwtime)"
}

k-reason {
	set getlang [string tolower [channel get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
	set replyinfo $black(say.$getlang.k.5)
}

check-message {
	set getlang [string tolower [channel get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
	set replyinfo $black(say.$getlang.check.3)
}

b-reason {
	set getlang [string tolower [channel get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
	set replyinfo $black(say.$getlang.b.9)
}

b-bantime {
	set replyinfop "$black(btime)"
}

black-reason {
	set getlang [string tolower [channel get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
	set replyinfo $black(say.$getlang.black.5)
}

stick-reason {
	set getlang [string tolower [channel get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
	set replyinfo $black(say.$getlang.stick.5)
}

stick-bantime {
	set replyinfo "$black(dfstickbantime)"
}

d-reason {
	set getlang [string tolower [channel get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
	set replyinfo $black(say.$getlang.d.5)
}
d-bantime {
	set replyinfo "$black(dbtime)"
}

antispam-message {
	set getlang [string tolower [channel get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
	set replyinfo $black(say.$getlang.antispam.2)
}

clonescan-banreason {
	set getlang [string tolower [channel get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
	set replyinfo $black(say.$getlang.clonescan.5)
}

clonescan-bantime {
	set replyinfo $black(clonebtime)
}

clonescan-maxclone {
	set replyinfo $black(maxclone)
}

clonescan-action {
	set replyinfo "message"
}
				
			}
		}
blacktools:tell $nick $host $hand $chan $chan1 show.6 "$wich $replyinfo"
	}
}


############################## silence ################################

proc silencepublic {nick host hand chan arg} {
global black
set value [lindex [split $arg] 0]
set char(p) [lindex $black(cmdchar) 0]
if {[string match -nocase "none" "$char(p)"]} {
set char(p) ""
} 
set chan1 "$chan"
if {$value == ""} { blacktools:tell $nick $host $hand $chan $chan1 silence.1 none
return 0
}
silence:process $nick $host $hand $chan $chan1 $value
}

proc silence:process {nick host hand chan chan1 value} {
global botnick black
if {[matchattr $hand -|q $chan]} { blacktools:tell $nick $host $hand $chan $chan1 gl.suspend none
return 0
}

if {([regexp -nocase -- {(#[0-9]+|on|off)} $value tmp silents]) && (![regexp -nocase -- {\S#} $value])} {
 switch $silents {
on { blacktools:tell $nick $host $hand $chan $chan1 silence.3 none ; putquick "SILENCE +*!*@*"             
}
off { blacktools:tell $nick $host $hand $chan $chan1 silence.4 none ; putquick "SILENCE -*!*@*"            
}
}
}
}

############################## msg ####################################

proc msgpublic {nick host hand chan arg} {
global black
set nicks [lindex [split $arg] 0]
set chan1 "$chan"
set char(p) [lindex $black(cmdchar) 0]
if {[string match -nocase "none" "$char(p)"]} {
set char(p) ""
} 
set msg [join [lrange [split $arg] 1 end]]
if {[matchattr $hand -|q $chan]} { blacktools:tell $nick $host $hand $chan $chan1 gl.suspend none
return 0
}
if {$nicks == ""} {blacktools:tell $nick $host $hand $chan $chan1 msg.1 none
return 0
}
if {[isbotnick $nicks]} { 
return 0
}
putquick "PRIVMSG $nicks :$msg"
}


############################### reset #################################

proc resetpublic {nick host hand chan arg} {
global black
set dece [lindex [split $arg] 0]
set type 0
set chan1 "$chan"
if {[regexp {^[&#]} $dece] && [matchattr $hand nm|- $chan]} {
set chan "$dece"
set dece [lindex [split $arg] 1]
}
reset:process $nick $host $hand $chan $chan1 $dece $type
}



proc reset:process {nick host hand chan chan1 dece type} {
global botnick black
set char(p) [lindex $black(cmdchar) 0]
if {[string match -nocase "none" "$char(p)"]} {
set char(p) ""
} 
if {[matchattr $hand nm|- $chan]} {
if {($dece == "")  && ($type == "0")} {
blacktools:tell $nick $host $hand $chan $chan1 reset.1 none
return 0
}
if {($dece == "") && ($type == "1")} {
blacktools:tell $nick $host $hand $chan $chan1 reset.2 none
return 0
}
}
if {($dece == "") && ($type == "0")} {
blacktools:tell $nick $host $hand $chan $chan1 reset.3 none
return 0
}
if {($dece == "") && ($type == "1")} {
blacktools:tell $nick $host $hand $chan $chan1 reset.4 none
return 0
}


if {![validchan $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.novalidchan none
return 0
}

if {![onchan $botnick $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.notonchan none
return 0
}

if {[string match -nocase "all" "$dece"]} {
set emptyflag "antipub-reason antinotice-reason antictcp-reason antibadword-reason antilongtext-reason antijoinpart-reason antirepeat-reason antirepeat-setting antispam-reason anticolor-reason antibold-reason antiunderline-reason anticaps-reason badfullname-reason badnick-reason badident-reason antichanflood-reason chanflood joinflood private-reason dr-reason n-reason id-reason spam-reason w-reason bw-reason bot-reason badchan-reason count-message"
foreach eflag $emptyflag {
channel set $chan $eflag ""
}
set zeroflag "antinotice-bantime antipub-bantime antictcp-bantime antibadword-bantime antilongtext-bantime antijoinpart-bantime antispam-bantime idleopmax idlevoicemax antilongtextmax antirepeat-bantime anticolor-bantime antibold-bantime antiunderline-bantime anticaps-bantime badfullname-bantime badnick-bantime badident-bantime antichanflood-bantime private-bantime  dr-bantime n-bantime id-bantime spam-bantime bw-bantime bot-bantime kickcount"
foreach oflag $zeroflag {
channel set $chan $oflag 0
}
blacktools:tell $nick $host $hand $chan $chan1 reset.5 none
return 0
}
set why [catch {channel set $chan $dece ""} error]
if {$why == "1"} { blacktools:tell $nick $host $hand $chan $chan1 reset.6 $dece
} else {
channel set $chan $dece ""
blacktools:tell $nick $host $hand $chan $chan1 reset.7 $dece
}
}


################################### banlist ###################################

proc banlistpublic {nick host hand chan arg} {
global botnick black
	set user [lindex [split $arg] 0]
	set type 0
	set chan1 "$chan"
if {[regexp {^[&#]} $user] && [matchattr $hand nm|- $chan]} {
	set chan "$user"
	set user [lindex [split $arg] 1]
}
	banlist:process $nick $host $hand $chan $chan1 $user $type
}


proc banlist:process {nick host hand chan chan1 user type} {
global botnick black
	set i 0
	set char(p) [lindex $black(cmdchar) 0]
if {[string match -nocase "none" "$char(p)"]} {
	set char(p) ""
} 
if {[matchattr $hand nm|- $chan]} {
if {($user == "")  && ($type == "0")} {
	blacktools:tell $nick $host $hand $chan $chan1 banlist.1 none
	blacktools:tell $nick $host $hand $chan $chan1 banlist.2 none
	return
}
if {($user == "") && ($type == "1")} {
	blacktools:tell $nick $host $hand $chan $chan1 banlist.3 none
	blacktools:tell $nick $host $hand $chan $chan1 banlist.4 none
	return
	}
}
if {($user == "") && ($type == "0")} {
	blacktools:tell $nick $host $hand $chan $chan1 banlist.5 none	
	return
}
if {($user == "") && ($type == "1")} {
	blacktools:tell $nick $host $hand $chan $chan1 banlist.6 none
	return
}

if {[matchattr $hand nm|- $chan] && [string match -nocase "global" $user]} {

foreach ban [banlist] {
	set i [expr $i +1]
	set expire [clock format [lindex $ban 2] -format %D-%H:%M:%S]
	set create [clock format [lindex $ban 3] -format %D-%H:%M:%S]
	set fban [lindex $ban 0]
	set freason [lindex $ban 1]
	set fbywho [lindex $ban 5]
if {[lindex $ban 2] == 0} {
	set expire "Permanent"
}
	blacktools:tell $nick $host $hand $chan $chan1 banlist.9 none
	blacktools:tell $nick $host $hand $chan $chan1 banlist.10 "$fban $fbywho $create $expire $freason"
	set foundban 1
}
if {![info exists foundban]} {
	blacktools:tell $nick $host $hand $chan $chan1 banlist.7 none
} else { blacktools:tell $nick $host $hand $chan $chan1 banlist.8 none }
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

if {[onchan $user $chan] && ![validuser $user]} {
	set user [nick2hand $user]
}


if {![validuser $user] && (![string equal -nocase "-all" $user])} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomem none
	return
}


if {![matchattr $user nm|OASMN $chan] && (![string equal -nocase "-all" $user])} { blacktools:tell $nick $host $hand $chan $chan1 gl.noaccess none 
	return
}
foreach ban [banlist $chan] {
	set own [lindex $ban 5]
if {[string match -nocase $own $user] || [string equal -nocase $user "-all"]} {
	set i [expr $i +1]
	set expire [clock format [lindex $ban 2] -format %D-%H:%M:%S]
	set create [clock format [lindex $ban 3] -format %D-%H:%M:%S]
	set fban [lindex $ban 0]
	set freason [lindex $ban 1]
if {[lindex $ban 2] == 0} {
	set expire "Permanent"
}
if {[string equal -nocase "-all" $user]} {
	blacktools:tell $nick $host $hand $chan $chan1 banlist.13 $user
	blacktools:tell $nick $host $hand $chan $chan1 banlist.10 "$fban $own $create $expire $freason"
} else { 
	blacktools:tell $nick $host $hand $chan $chan1 banlist.11 $user
	blacktools:tell $nick $host $hand $chan $chan1 banlist.10 "$fban $own $create $expire $freason"
}
	set foundban 1
	}
}

if {![info exists foundban]} {
if {![string equal -nocase "-all" $user]} {
	blacktools:tell $nick $host $hand $chan $chan1 banlist.11 $user
} else { 
	blacktools:tell $nick $host $hand $chan $chan1 banlist.13 none
}	
	blacktools:tell $nick $host $hand $chan $chan1 banlist.7 $user
} else { 
	blacktools:tell $nick $host $hand $chan $chan1 banlist.8 $user }
}


############################## rehash #################################

proc rehashme {nick host hand arg} {
global black
blacktools:tell:prv $nick $host $hand rehash.1 none
 rehash
}

############################## VERSION ################################

proc blackreply {nick host hand dest key text} {
global ctcp-version
set {ctcp-version} "Using \002BlackTools 2.4\002 by \002BLaCkShaDoW\002"
}


############################## restart ################################

proc restartme {nick host hand arg} {
global black
blacktools:tell:prv $nick $host $hand restart.1 none
utimer 3 [list restart ]
}

############################### save #################################

proc saveme {nick host hand arg} {
global black
blacktools:tell:prv $nick $host $hand save.1 none
 save
}

############################### jump #################################

proc jumpme {nick host hand arg} {
global black
blacktools:tell:prv $nick $host $hand jump.1 none
 utimer 3 [list jump]
}

############################### die ###################################

proc dieme {nick host hand arg} {
global black
blacktools:tell:prv $nick $host $hand die.1 none
utimer 3 [list die "byeeee" ]
}


############################## nick ###################################

proc nickpublic {altnick host hand arg} {
global nick black
set getlang [string tolower [getuser $hand XTRA OUTPUT_LANG]]
set newnick [lindex [split $arg] 0]
if {$newnick == ""} { blacktools:tell:prv $nick $host $hand nick.2 none
return 0
}
blacktools:tell:prv $nick $host $hand nick.1 "$newnick"
set nick $newnick
}

proc nick:process {who newnick host hand chan} {
global black nick
set chan1 "$chan"
if {$newnick == ""} {
blacktools:tell $who $host $hand $chan $chan1 nick.2 $newnick
return 0
}
blacktools:tell $who $host $hand $chan $chan1 nick.1 $newnick
set nick $newnick
}

############################## addchan ################################

proc addchanpublic {nick host hand arg} {
global black
	set chans [lindex [split $arg] 0]
	set key [lindex [split $arg] 1]
if {$chans == ""} {blacktools:tell:prv $nick $host $hand addchan.1 none
	return
}

if {![regexp {^[&#]} $chans]} {	
	blacktools:tell:prv $nick $host $hand gl.novalidchan none
	return
} 

if {[validchan $chans]} {
	blacktools:tell:prv $nick $host $hand addchan.2 "$chans"
	return
} else {	
	channel add $chans
	addchan:stats $chans $hand $host
	blacktools:tell:prv $nick $host $hand addchan.3 "$chans"
if {$key != ""} {
	putquick "JOIN $chans :$key"
	channel set $chans chanmode "+ntk $key"
		}
	}
}

proc addchan:stats {chan hand host} {
global black botnick username
	set statsdir "scripts/BlackTools/FILES/$username.stats.txt"
	set k 0
	set found_it 0
	set time [unixtime]
	set file [open $statsdir "r"]
	set addfile "$chan ADDED $hand $host $time 0"
	set database [read -nonewline $file]
	close $file
	set data [split $database "\n"]
foreach line $data {
	set k [expr $k +1]
	set chanentry [lindex [split $line] 0]
	set addtype [lindex [split $line] 1]
if {[string equal -nocase "REMOVED" "$addtype"] && [string match -nocase $chanentry $chan]} { 
if {$line != ""} {
	set found_it 1
	set num [expr $k - 1]
	set delete [lreplace $data $num $num]
	set files [open $statsdir "w"]
	puts $files [join $delete "\n"]
	close $files
		}
	}
}	
	set file [open $statsdir "r"]
	set data [read -nonewline $file]
	close $file
if {$data == ""} {	
	set files [open $statsdir "w"]
	close $files
}
	set file [open $statsdir "a"]
	puts $file "$addfile"
	close $file
}

proc unsuspend:stats {chan hand host} {
global black botnick username
	set statsdir "scripts/BlackTools/FILES/$username.stats.txt"
	set k 0
	set found_it 0
	set time [unixtime]
	set file [open $statsdir "r"]
	set addfile "$chan ADDED $hand $host $time 0"
	set database [read -nonewline $file]
	close $file
	set data [split $database "\n"]
foreach line $data {
	set k [expr $k +1]
	set chanentry [lindex [split $line] 0]
	set addtype [lindex [split $line] 1]
if {[string equal -nocase "SUSPENDED" "$addtype"] && [string match -nocase $chanentry $chan]} { 
	set found_it 1
	set added [lindex [split $line] 5]
	set bywho [lindex [split $line] 6]
	set byhost [lindex [split $line] 7]
	set addfile "$chan ADDED $bywho $byhost $added 0"
if {$line != ""} {
	set num [expr $k - 1]
	set delete [lreplace $data $num $num]
	set files [open $statsdir "w"]
	puts $files [join $delete "\n"]
	close $files
		}
	}
}
	set file [open $statsdir "r"]
	set data [read -nonewline $file]
	close $file
if {$data == ""} {	
	set files [open $statsdir "w"]
	close $files
}
	set file [open $statsdir "a"]
	puts $file "$addfile"
	close $file

}	


proc suspend:stats {chan hand host reason} {
	global black username
	set found_it 0
	set statsdir "scripts/BlackTools/FILES/$username.stats.txt"
	set k 0
	set time [unixtime]
	set file [open $statsdir "r"]
	set database [read -nonewline $file]
	close $file
	set data [split $database "\n"]
	set addfile "$chan SUSPENDED $hand $host $time 0 0 none none"
foreach line $data {
	set k [expr $k +1]
	set chanentry [lindex [split $line] 0]
	set addtype [lindex [split $line] 1]
if {[string equal -nocase "ADDED" "$addtype"] && [string match -nocase $chanentry $chan]} {
	set found_it 1
	set added [lindex [split $line] 4]
	set bywho [lindex [split $line] 2]
	set byhost [lindex [split $line] 3]
	set addfile "$chan SUSPENDED $hand $host $time $added $bywho $byhost $reason"
if {$line != ""} {
	set num [expr $k - 1]
	set delete [lreplace $data $num $num]
	set files [open $statsdir "w"]
	puts $files [join $delete "\n"]
	close $files
		}
	}
}
	set file [open $statsdir "r"]
	set data [read -nonewline $file]
	close $file
if {$data == ""} {	
	set files [open $statsdir "w"]
	close $files
}
	set file [open $statsdir "a"]
	puts $file "$addfile"
	close $file
}

proc delchan:stats {chan hand host reason} {
global black botnick username
	set statsdir "scripts/BlackTools/FILES/$username.stats.txt"
	set found_it 0
	set k 0
	set time [unixtime]
	set file [open $statsdir "r"]
	set database [read -nonewline $file]
	close $file
	set data [split $database "\n"]
	set addfile "$chan REMOVED $hand $host $time 0 0 none none"
foreach line $data {
	set k [expr $k +1]
	set chanentry [lindex [split $line] 0]
	set addtype [lindex [split $line] 1]
if {[string equal -nocase "REMOVED" "$addtype"] && [string match -nocase $chanentry $chan]} {
if {$line != ""} {
	set found_it 1
	set num [expr $k - 1]
	set delete [lreplace $data $num $num]
	set files [open $statsdir "w"]
	puts $files [join $delete "\n"]
	close $files
	}
}
if {[string equal -nocase "SUSPENDED" "$addtype"] && [string match -nocase $chanentry $chan]} {
	set found_it 1
	set added [lindex [split $line] 5]
	set bywho [lindex [split $line] 6]
	set byhost [lindex [split $line] 7]
	set addfile "$chan REMOVED $hand $host $time $added $bywho $byhost $reason"
if {$line != ""} {
	set num [expr $k - 1]
	set delete [lreplace $data $num $num]
	set files [open $statsdir "w"]
	puts $files [join $delete "\n"]
	close $files
	}
	
}
if {[string equal -nocase "ADDED" "$addtype"] && [string match -nocase $chanentry $chan]} {
	set found_it 1
	set added [lindex [split $line] 4]
	set bywho [lindex [split $line] 2]
	set byhost [lindex [split $line] 3]
	set addfile "$chan REMOVED $hand $host $time $added $bywho $byhost $reason"
if {$line != ""} {
	set num [expr $k - 1]
	set delete [lreplace $data $num $num]
	set files [open $statsdir "w"]
	puts $files [join $delete "\n"]
	close $files
		}
	}
	if {($found_it == 0)} { 
if {[string match -nocase $chanentry $chan]} {
	if {$line != ""} {
	set num [expr $k - 1]
	set delete [lreplace $data $num $num]
	set files [open $statsdir "w"]
	puts $files [join $delete "\n"]
	close $files
			}
		}
	}
}
	set file [open $statsdir "r"]
	set data [read -nonewline $file]
	close $file
if {$data == ""} {	
	set files [open $statsdir "w"]
	close $files
}
	set file [open $statsdir "a"]
	puts $file "$addfile"
	close $file
}

############################## delchan ################################

proc delchanpublic {nick host hand arg} {
global black
	set chans [lindex [split $arg] 0]
	set reason [join [lrange [split $arg] 1 end]]
if {$chans == ""} {blacktools:tell:prv $nick $host $hand delchan.1 none
	return
}
if {![regexp {^[&#]} $chans]} {
	blacktools:tell:prv $nick $host $hand gl.novalidchan none	
	return
} 
if {![validchan $chans]} { blacktools:tell:prv $nick $host $hand delchan.2 $chans	
	return
}
if {$reason == ""} {
	blacktools:tell:prv $nick $host $hand delchan.1 none
	return
}
if {!($black(homechan) == "") && ![string equal -nocase $black(homechan) "#no_home_chan"]} {
if {[string equal -nocase $chans $black(homechan)]} {
	blacktools:tell:prv $nick $host $hand delchan.5 $chans
	return
	}
}
	delchan:stats $chans $hand $host $reason
	channel remove $chans
	blacktools:tell:prv $nick $host $hand delchan.3 $chans
}
############################## suspend ################################

proc suspendpublic {nick host hand arg} {
global black
	set chans [lindex [split $arg] 0]
	set reason [join [lrange [split $arg] 1 end]]

if {$chans == ""} {blacktools:tell:prv $nick $host $hand suspend.1 none
	return
}

if {![regexp {^[&#]} $chans]} {
blacktools:tell:prv $nick $host $hand gl.novalidchan none 
	return
}

if {![validchan $chans]} { blacktools:tell:prv $nick $host $hand suspend.2 $chans
	return
}

if {[channel get $chans inactive]} {
	blacktools:tell:prv $nick $host $hand suspend.3 $chans
	return
}
if {$reason == ""} {
	blacktools:tell:prv $nick $host $hand suspend.1 $chans
	return
}
	channel set $chans +inactive
	suspend:stats $chans $hand $host $reason
	blacktools:tell:prv $nick $host $hand suspend.4 $chans
}

############################# unsuspend ###############################

proc unsuspendpublic {nick host hand arg} {
global black
set chans [lindex [split $arg] 0]

if {$chans == ""} {blacktools:tell:prv $nick $host $hand unsuspend.1 none
return 0 
}

if {![regexp {^[&#]} $chans]} {
blacktools:tell:prv $nick $host $hand gl.novalidchan none
return 0
 }
 
if {![validchan $chans]} { blacktools:tell:prv $nick $host $hand unsuspend.2 $chans
return 0
}

if {![channel get $chans inactive]} {
blacktools:tell:prv $nick $host $hand unsuspend.3 $chans
return 0
 }
	unsuspend:stats $chans $hand $host
	channel set $chans -inactive
blacktools:tell:prv $nick $host $hand unsuspend.4 $chans
}

################################ op ###################################

proc oppublic {nick host hand arg} {
global black
	set chan [lindex [split $arg] 0]
	set nicks [lrange [split $arg] 1 end]
if {![validchan $chan]} {
	blacktools:tell:prv $nick $host $hand gl.nocmem $chan
}

if {[matchattr $hand -|q $chan]} { blacktools:tell:prv $nick $host $hand gl.suspend none
	return
}
if {$nicks == ""} { set nicks "$nick" }
if {[matchattr $hand nm|OASM $chan]} {
if {![regexp {^[&#]} $chan]} {
	blacktools:tell:prv $nick $host $hand gl.novalidchan none 
	return
} 
if {![botisop $chan]} { blacktools:tell:prv $nick $host $hand gl.noop none
	return
}

if {![validchan $chan]} { 
	blacktools:tell:prv $nick $host $hand op.1 $chan
	return
}

foreach nickz $nicks {
if {[isop $nickz $chan]} {
	blacktools:tell:prv $nick $host $hand op.2 $nickz
	return
}
putquick "MODE $chan +o $nickz"
		}
	}
}

############################### deop ##################################

proc deoppublic {nick host hand arg} {
global black
set chan [lindex [split $arg] 0]
set nicks [lrange [split $arg] 1 end]
if {![validchan $chan]} {
blacktools:tell:prv $nick $host $hand gl.nocmem $chan
}

if {[matchattr $hand -|q $chan]} { blacktools:tell:prv $nick $host $hand gl.suspend none
	return
}
if {$nicks == ""} { set nicks "$nick" }
if {[matchattr $hand nm|OASM $chan]} {
if {![regexp {^[&#]} $chan]} {
	blacktools:tell:prv $nick $host $hand gl.novalidchan none 
	return
} 
if {![botisop $chan]} { blacktools:tell:prv $nick $host $hand gl.noop none
	return
}

if {![validchan $chan]} { blacktools:tell:prv $nick $host $hand deop.1 $chan
	return
}

foreach nickz $nicks {
if {[onchan $nickz $chan]} {
putquick "MODE $chan -o $nickz"
			}
		}
	}
}

############################### voice #################################

proc voicepublic {nick host hand arg} {
global black
set chan [lindex [split $arg] 0]
set nicks [lrange [split $arg] 1 end]

if {![validchan $chan]} {
	blacktools:tell:prv $nick $host $hand gl.nocmem $chan
}

if {[matchattr $hand -|q $chan]} { blacktools:tell:prv $nick $host $hand gl.suspend none
	return
}
if {$nicks == ""} { set nicks "$nick" }
if {[matchattr $hand nm|OVASM $chan]} {
if {![regexp {^[&#]} $chan]} {
	blacktools:tell:prv $nick $host $hand gl.novalidchan none 
	return
} 
if {![botisop $chan]} { blacktools:tell:prv $nick $host $hand gl.noop none
	return
}

if {![validchan $chan]} { blacktools:tell:prv $nick $host $hand voice.1 $chan
	return
}
foreach nickz $nicks {
if {[onchan $nickz $chan]} {
if {[isvoice $nickz $chan]} { 
	blacktools:tell:prv $nick $host $hand voice.2 $nickz
	return
}
	putquick "MODE $chan +v $nickz"
			}
		}
	}
}

############################## devoice ################################

proc devoicepublic {nick host hand arg} {
global black
	set chan [lindex [split $arg] 0]
	set nicks [lrange [split $arg] 1 end]
if {![validchan $chan]} {
	blacktools:tell:prv $nick $host $hand gl.nocmem $chan
}

if {[matchattr $hand -|q $chan]} { blacktools:tell:prv $nick $host $hand gl.suspend none
	return
}
if {$nicks == ""} { set nicks "$nick" }
if {[matchattr $hand nm|OASM $chan]} {
if {![regexp {^[&#]} $chan]} {
	blacktools:tell:prv $nick $host $hand gl.novalidchan none 
	return
} 
if {![botisop $chan]} { blacktools:tell:prv $nick $host $hand gl.noop none
	return
}

if {![validchan $chan]} { blacktools:tell:prv $nick $host $hand devoice.1 $chan
	return 0
}

foreach nickz $nicks {
if {[onchan $nickz $chan]} {
	putquick "MODE $chan -v $nickz"
			}
		}
	}
}

############################## invite #################################

proc invitepublic {nick host hand arg} {
global black
	set chan [lindex [split $arg] 0]
	set replace(%chan%) $chan
if {![validchan $chan]} {
	blacktools:tell:prv $nick $host $hand gl.nocmem $chan
}
if {[matchattr $hand -|q $chan]} { blacktools:tell:prv $nick $host $hand gl.suspend none
	return
}
if {[matchattr $hand nm|OASM $chan]} {
if {$chan == ""} { blacktools:tell:prv $nick $host $hand invite.1 none
	return 
}
	putquick "INVITE $nick $chan"	
	set getlang [string tolower [getuser $hand XTRA OUTPUT_LANG]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
	set getmsg $black(say.$getlang.invite.2)
if {[info exists black(say.$getlang.invite.2)]} {
	set getmsg [string map [array get replace] $getmsg]
	putquick "PRIVMSG $nick :$getmsg"
		}
	}
}

##############################add ######################################

proc strip:all {str} {
  regsub -all -- {\003([0-9]{1,2}(,[0-9]{1,2})?)?|\017|\037|\002|\026|\006|\007} $str "" str
  return $str
}


proc check:handle {user nick host hand chan chan1} {
	global black
	set last_user $user
if {[validuser $user]} {
	return $user
}
	set user [string range $user 0 31]
if {[validuser $user]} {
	blacktools:tell $nick $host $hand $chan $chan1 add.17 "$last_user $user"
	return $user
}
	set user [string range $user 0 11]
if {[validuser $user]} {
	blacktools:tell $nick $host $hand $chan $chan1 add.17 "$last_user $user"
	return $user
}
	set user [string range $user 0 8]
if {[validuser $user]} {
	blacktools:tell $nick $host $hand $chan $chan1 add.17 "$last_user $user"
	return $user
	}
}

proc add:process {args time level hand host chan chan1 nick type} {
global black botnick
	set char(p) [lindex $black(cmdchar) 0]
if {[string match -nocase "none" "$char(p)"]} {
	set char(p) ""
} 
	set flags "nm|NMOSAV"
if {[matchattr $hand nm|- $chan]} {
if {($level == "")  && ($type == "0")} {
	blacktools:tell $nick $host $hand $chan $chan1 add.1 none
	return
}
if {($level == "") && ($type == "1")} {
	blacktools:tell $nick $host $hand $chan $chan1 add.2 none
	return
	}
}
if {($level == "") && ($type == "0")} {
	blacktools:tell $nick $host $hand $chan $chan1 add.3 none
	return
}
if {($level == "") && ($type == "1")} {
	blacktools:tell $nick $host $hand $chan $chan1 add.4 none
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
foreach user $args {
if {$user != ""} {
	set user [strip:all $user]
	set replace(%user%) $user
	set uhost [string map [array get replace] $black(hostadd)]
if {[userlist] != ""} {
foreach usr [userlist] {
	set hst [getuser $usr hosts]
foreach hhost $hst {
if {[string match -nocase $hhost $uhost] && (![string match -nocase $usr $user])} {
	blacktools:tell $nick $host $hand $chan $chan1 add.5 $usr
	set user $usr
			}
		}
	}
}
 
if {[matchattr $hand -|A $chan] && ($level == "manager")} {
	blacktools:tell $nick $host $hand $chan $chan1 add.6 none
	return
}
if {[matchattr $hand -|A $chan] && ($level == "admin")} {
	blacktools:tell $nick $host $hand $chan $chan1 add.7 none
	return
}
if {[matchattr $hand -|M $chan] && ($level == "manager")} {
	blacktools:tell $nick $host $hand $chan $chan1 add.8 none
	return
}
if {([regexp -nocase -- {(#[0-9]+|owner|manager|admin|senior|op|voice|protect)} $level tmp access]) && (![regexp -nocase -- {\S#} $level])} {
    switch $access {
       manager { 
	set flags "-|olM"
if {[validuser $user]} { 
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
	chattr $user -|-qolSOHAMV $chan
	chattr $user $flags $chan 
	setuser $user XTRA LASTMODIFBY $hand
	setuser $user XTRA LASTMODIFDATE $time
	blacktools:tell $nick $host $hand $chan $chan1 add.9 $user
} else {
	adduser $user $uhost
	set user [check:handle $user $nick $host $hand $chan $chan1]
	chattr $user -|-SOHAMV $chan
	chattr $user $flags $chan
	setuser $user XTRA LASTMODIFBY $hand
	setuser $user XTRA LASTMODIFDATE $time
	blacktools:tell $nick $host $hand $chan $chan1 add.10 "$user $uhost"
	blacktools:tell $nick $host $hand $chan $chan1 add.9 $user
	}
}
     admin {
	set flags "-|olA"
 if {[validuser $user]} { 
if {[matchattr $user -|M $chan] && [matchattr $hand -|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return
}
if {[matchattr $user -|M $chan] && [matchattr $hand -|A $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none	
	return
}
if {[matchattr $user m|- $chan] && [matchattr $hand -|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return
}
if {[matchattr $user m|- $chan] && [matchattr $hand -|A $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return
}
if {[matchattr $user m|- $chan] && [matchattr $hand m|- $chan] && (![matchattr $hand n|- $chan])} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return 
}
if {[matchattr $user -|A $chan] && [matchattr $hand -|A $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return
}
if {[matchattr $user n|- $chan] && [matchattr $hand -|A $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return
}
if {[matchattr $user n|- $chan] && [matchattr $hand -|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return
}
if {[matchattr $user n|- $chan] && [matchattr $hand n|- $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return
}
if {[matchattr $user n|- $chan] && [matchattr $hand m|- $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return
}
	chattr $user -|-qolSHOAMV $chan
	chattr $user $flags $chan 
	setuser $user XTRA LASTMODIFBY $hand
	setuser $user XTRA LASTMODIFDATE $time
	blacktools:tell $nick $host $hand $chan $chan1 add.11 $user
} else {
	adduser $user $uhost
	set user [check:handle $user $nick $host $hand $chan $chan1]
	chattr $user -|-qolSHOAMV $chan
	chattr $user $flags $chan 
	setuser $user XTRA LASTMODIFBY $hand
	setuser $user XTRA LASTMODIFDATE $time
	blacktools:tell $nick $host $hand $chan $chan1 add.10 "$user $uhost"
	blacktools:tell $nick $host $hand $chan $chan1 add.11 $user
	}
}

   senior {
  	set flags "-|olS"
if {[validuser $user]} {
if {[matchattr $user -|M $chan] && [matchattr $hand -|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return
}
if {[matchattr $user -|M $chan] && [matchattr $hand -|A $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return
}
if {[matchattr $user m|- $chan] && [matchattr $hand -|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return
}
if {[matchattr $user m|- $chan] && [matchattr $hand -|A $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return
}
if {[matchattr $user m|- $chan] && [matchattr $hand m|- $chan] && (![matchattr $hand n|- $chan])} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return 
}
if {[matchattr $user -|A $chan] && [matchattr $hand -|A $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return
}
if {[matchattr $user n|- $chan] && [matchattr $hand -|A $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return
}
if {[matchattr $user n|- $chan] && [matchattr $hand -|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none	
	return
}
if {[matchattr $user n|- $chan] && [matchattr $hand n|- $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return
}
if {[matchattr $user n|- $chan] && [matchattr $hand m|- $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return
}
	chattr $user -|-qolSHOAMV $chan
	chattr $user $flags $chan 
	setuser $user XTRA LASTMODIFBY $hand
	setuser $user XTRA LASTMODIFDATE $time
	blacktools:tell $nick $host $hand $chan $chan1 add.12 $user
} else {
	adduser $user $uhost
	set user [check:handle $user $nick $host $hand $chan $chan1]
	chattr $user -|-qolSHOAMV $chan
	chattr $user $flags $chan 
	setuser $user XTRA LASTMODIFBY $hand
	setuser $user XTRA LASTMODIFDATE $time
	blacktools:tell $nick $host $hand $chan $chan1 add.10 "$user $uhost"
	blacktools:tell $nick $host $hand $chan $chan1 add.12 $user
	}
}
owner {
	set flags "m|-"
if {[matchattr $hand n|- $chan]} {
if {[validuser $user]} { 
	chattr $user -|-qolSHOAMV $chan
	chattr $user $flags
	setuser $user XTRA LASTMODIFBY $hand
	setuser $user XTRA LASTMODIFDATE $time	
	blacktools:tell $nick $host $hand $chan $chan1 add.16 $user
} else {
	adduser $user $uhost
	set user [check:handle $user $nick $host $hand $chan $chan1]
	chattr $user -|-qolSHOAMV $chan
	chattr $user $flags 
	setuser $user XTRA LASTMODIFBY $hand
	setuser $user XTRA LASTMODIFDATE $time
	blacktools:tell $nick $host $hand $chan $chan1 add.10 "$user $uhost"
	blacktools:tell $nick $host $hand $chan $chan1 add.16 $user
		}
	}
}

op {
	set flags "-|olO"
if {[validuser $user]} { 
if {[matchattr $user -|M $chan] && [matchattr $hand -|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return
}
if {[matchattr $user -|M $chan] && [matchattr $hand -|A $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return
}
if {[matchattr $user m|- $chan] && [matchattr $hand -|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return  
}
if {[matchattr $user m|- $chan] && [matchattr $hand -|A $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return
}
if {[matchattr $user m|- $chan] && [matchattr $hand m|- $chan] && (![matchattr $hand n|- $chan])} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return 
}
if {[matchattr $user -|A $chan] && [matchattr $hand -|A $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return
}
if {[matchattr $user n|- $chan] && [matchattr $hand -|A $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return
}
if {[matchattr $user n|- $chan] && [matchattr $hand -|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return
}
if {[matchattr $user n|- $chan] && [matchattr $hand n|- $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return
}
if {[matchattr $user n|- $chan] && [matchattr $hand m|- $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return
}
	chattr $user -|-qolSHOAMV $chan
	chattr $user $flags $chan 
	setuser $user XTRA LASTMODIFBY $hand
	setuser $user XTRA LASTMODIFDATE $time
	blacktools:tell $nick $host $hand $chan $chan1 add.13 $user
} else {
	adduser $user $uhost
	set user [check:handle $user $nick $host $hand $chan $chan1]
	chattr $user -|-qolSHOAMV $chan
	chattr $user $flags $chan 
	setuser $user XTRA LASTMODIFBY $hand
	setuser $user XTRA LASTMODIFDATE $time
	blacktools:tell $nick $host $hand $chan $chan1 add.10 "$user $uhost"
	blacktools:tell $nick $host $hand $chan $chan1 add.13 $user
	}
}

protect {
	set flags "-|H"
if {[validuser $user]} { 
if {[matchattr $user -|M $chan] && [matchattr $hand -|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return 
}
if {[matchattr $user -|M $chan] && [matchattr $hand -|A $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return
}
if {[matchattr $user m|- $chan] && [matchattr $hand -|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none	
	return
}
if {[matchattr $user m|- $chan] && [matchattr $hand -|A $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return
}
if {[matchattr $user m|- $chan] && [matchattr $hand m|- $chan] && (![matchattr $hand n|- $chan])} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return 
}
if {[matchattr $user -|A $chan] && [matchattr $hand -|A $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return  
}
if {[matchattr $user n|- $chan] && [matchattr $hand -|A $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return 
}
if {[matchattr $user n|- $chan] && [matchattr $hand -|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return 
}
if {[matchattr $user n|- $chan] && [matchattr $hand n|- $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return 
}
if {[matchattr $user n|- $chan] && [matchattr $hand m|- $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return  
}
	chattr $user -|-qHolSOAMV $chan
	chattr $user $flags $chan 
	setuser $user XTRA LASTMODIFBY $hand	
	setuser $user XTRA LASTMODIFDATE $time
	blacktools:tell $nick $host $hand $chan $chan1 add.15 $user
} else {
	adduser $user $uhost
	set user [check:handle $user $nick $host $hand $chan $chan1]
	chattr $user -|-qolHSOAMV $chan
	chattr $user $flags $chan 
	setuser $user XTRA LASTMODIFBY $hand
	setuser $user XTRA LASTMODIFDATE $time
	blacktools:tell $nick $host $hand $chan $chan1 add.10 "$user $uhost"
	blacktools:tell $nick $host $hand $chan $chan1 add.15 $user
	}
}

 voice {
	set flags "-|olV"
if {[validuser $user]} { 	
if {[matchattr $user -|M $chan] && [matchattr $hand -|M $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return 
}
if {[matchattr $user -|M $chan] && [matchattr $hand -|A $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return 
}
if {[matchattr $user m|- $chan] && [matchattr $hand -|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return 
}
if {[matchattr $user m|- $chan] && [matchattr $hand -|A $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return 
}
if {[matchattr $user m|- $chan] && [matchattr $hand m|- $chan] && (![matchattr $hand n|- $chan])} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return 
}
if {[matchattr $user -|A $chan] && [matchattr $hand -|A $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return 
}
if {[matchattr $user n|- $chan] && [matchattr $hand -|A $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return 
}
if {[matchattr $user n|- $chan] && [matchattr $hand -|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return 
}
if {[matchattr $user n|- $chan] && [matchattr $hand n|- $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return 
}
if {[matchattr $user n|- $chan] && [matchattr $hand m|- $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return 
}
	chattr $user -|-qolSHOAMV $chan	
	chattr $user $flags $chan
	setuser $user XTRA LASTMODIFBY $hand
	setuser $user XTRA LASTMODIFDATE $time
	blacktools:tell $nick $host $hand $chan $chan1 add.14 $user
} else {
	adduser $user $uhost
	set user [check:handle $user $nick $host $hand $chan $chan1]
	chattr $user -|-qolSHOAMV $chan
	chattr $user $flags $chan 
	setuser $user XTRA LASTMODIFBY $hand
	setuser $user XTRA LASTMODIFDATE $time

	blacktools:tell $nick $host $hand $chan $chan1 add.10 "$user $uhost"
	blacktools:tell $nick $host $hand $chan $chan1 add.14 $user
						}
					}
				}
			}
		}
	}
}

########################## adduser ################################

proc adduserpublic {nick host hand chan arg} {
global black
	set level [lindex [split $arg] 0]
	set args [lrange [split $arg] 1 end]
	set c [lindex [split $arg] 1]
	set type 0
	set chan1 "$chan"
if {[regexp {^[&#]} $c] && [matchattr $hand nm|- $chan]} {
	set chan "$c"
	set args [lrange [split $arg] 2 end]
}
	adduser:process $nick $host $hand $chan $chan1 $args $level $type
}


proc adduser:process {nick host hand chan chan1 args level type} {
global black botnick
	set char(p) [lindex $black(cmdchar) 0]
	set args [join $args]
if {[string match -nocase "none" "$char(p)"]} {
	set char(p) ""
} 
	set time [ctime [unixtime]]
	set flags "nm|NMOSVA"
if {[matchattr $hand -|q $chan]} { blacktools:tell $nick $host $hand $chan $chan1 gl.suspend none
	return
}
if {[matchattr $hand nm|- $chan]} {
if {($level == "")  && ($type == "0")} {
blacktools:tell $nick $host $hand $chan $chan1 adduser.1 none
	return
}
if {($level == "") && ($type == "1")} {
blacktools:tell $nick $host $hand $chan $chan1 adduser.2 none
	return
	}
}
if {($level == "") && ($type == "0")} {
blacktools:tell $nick $host $hand $chan $chan1 adduser.3 none
	return
}
if {($level == "") && ($type == "1")} {
blacktools:tell $nick $host $hand $chan $chan1 adduser.4 none
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
foreach user $args {
if {$user != ""} {
	set user [strip:all $user]
if {![onchan $user $chan]} { 
	blacktools:tell $nick $host $hand $chan $chan1 gl.usernotonchan $user
	return
}
	set handle [nick2hand $user]
	set hosts [getchanhost $user $chan]
	set uhost "*!*@[lindex [split $hosts @] 1]"
if {[userlist] != ""} {
foreach usr [userlist] {
	set hst [getuser $usr hosts]
foreach hhost $hst {
if {[string match -nocase $hhost $uhost] && (![string match -nocase $usr $user])} {
	blacktools:tell $nick $host $hand $chan $chan1 add.5 "\002$usr\002"
	set user $usr
			}
		}
	}
}

if {[matchattr $hand -|A $chan] && ($level == "manager")} {
	blacktools:tell $nick $host $hand $chan $chan1 add.6 none
	return
}
if {[matchattr $hand -|A $chan] && ($level == "admin")} {
	blacktools:tell $nick $host $hand $chan $chan1 add.7 none
	return
}
if {[matchattr $hand -|M $chan] && ($level == "manager")} {
	blacktools:tell $nick $host $hand $chan $chan1 add.8 none
	return
}
if {([regexp -nocase -- {(#[0-9]+|owner|manager|admin|senior|op|voice|protect)} $level tmp access]) && (![regexp -nocase -- {\S#} $level])} {
    switch $access {
       manager { 
          set flags "-|olM"
if {[matchattr $handle m|- $chan] && [matchattr $hand -|M $chan]} { blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return 
}
if {[matchattr $handle -|M $chan] && [matchattr $hand -|M $chan]} { blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return
}
if {[matchattr $handle n|- $chan] && [matchattr $hand n|- $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return
}
if {[matchattr $handle m|- $chan] && [matchattr $hand m|- $chan] && (![matchattr $hand n|- $chan])} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return 
}
if {[matchattr $handle n|- $chan] && [matchattr $hand m|- $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return
}

if {[validuser $user]} { 
	chattr $user -|-qolSHOAMV $chan
	chattr $user $flags $chan 
	setuser $user XTRA LASTMODIFBY $hand
	setuser $user XTRA LASTMODIFDATE $time
	blacktools:tell $nick $host $hand $chan $chan1 add.9 $user
} else {
	adduser $user $uhost
	set user [check:handle $user $nick $host $hand $chan $chan1]
	chattr $user -|-SHOAMV $chan
	chattr $user $flags $chan
	setuser $user XTRA LASTMODIFBY $hand
	setuser $user XTRA LASTMODIFDATE $time
	blacktools:tell $nick $host $hand $chan $chan1 add.10 "$user $uhost"
	blacktools:tell $nick $host $hand $chan $chan1 add.9 $user
	}	
}
     admin {
      set flags "-|olA"
if {[matchattr $handle -|M $chan] && [matchattr $hand -|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return
}
if {[matchattr $handle -|M $chan] && [matchattr $hand -|A $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return 0 
}
if {[matchattr $handle m|- $chan] && [matchattr $hand -|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return
}
if {[matchattr $handle m|- $chan] && [matchattr $hand -|A $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return
}
if {[matchattr $handle m|- $chan] && [matchattr $hand m|- $chan] && (![matchattr $hand n|- $chan])} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return 
}
if {[matchattr $handle -|A $chan] && [matchattr $hand -|A $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return 
}
if {[matchattr $handle n|- $chan] && [matchattr $hand -|A $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return
}
if {[matchattr $handle n|- $chan] && [matchattr $hand -|M $chan]} {	
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return 
}
if {[matchattr $handle n|- $chan] && [matchattr $hand n|- $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return
}
if {[matchattr $handle n|- $chan] && [matchattr $hand m|- $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return
}
if {[validuser $user]} {
	chattr $user -|-qolSHOAMV $chan
	chattr $user $flags $chan 
	setuser $user XTRA LASTMODIFBY $hand
	setuser $user XTRA LASTMODIFDATE $time
	blacktools:tell $nick $host $hand $chan $chan1 add.11 $user
} else {
	adduser $user $uhost
	set user [check:handle $user $nick $host $hand $chan $chan1]
	chattr $user -|-qolSHOAMV $chan
	chattr $user $flags $chan 
	setuser $user XTRA LASTMODIFBY $hand
	setuser $user XTRA LASTMODIFDATE $time
	blacktools:tell $nick $host $hand $chan $chan1 add.10 "$user $uhost"
	blacktools:tell $nick $host $hand $chan $chan1 add.11 $user
}
}
   senior {
     set flags "-|olS"
if {[matchattr $handle -|M $chan] && [matchattr $hand -|M $chan]} {	
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return
}
if {[matchattr $handle -|M $chan] && [matchattr $hand -|A $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return
}
if {[matchattr $handle m|- $chan] && [matchattr $hand -|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return
}
if {[matchattr $handle m|- $chan] && [matchattr $hand -|A $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return
}
if {[matchattr $handle m|- $chan] && [matchattr $hand m|- $chan] && (![matchattr $hand n|- $chan])} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return 
}
if {[matchattr $handle -|A $chan] && [matchattr $hand -|A $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return 0 
}
if {[matchattr $handle n|- $chan] && [matchattr $hand -|A $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return
}
if {[matchattr $handle n|- $chan] && [matchattr $hand -|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return 
}
if {[matchattr $handle n|- $chan] && [matchattr $hand n|- $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return
}
if {[matchattr $handle n|- $chan] && [matchattr $hand m|- $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return
}
if {[validuser $user]} {
	chattr $user -|-qolSHOAMV $chan
	chattr $user $flags $chan 
	setuser $user XTRA LASTMODIFBY $hand
	setuser $user XTRA LASTMODIFDATE $time
	blacktools:tell $nick $host $hand $chan $chan1 add.12 $user
} else {
	adduser $user $uhost
	set user [check:handle $user $nick $host $hand $chan $chan1]
	chattr $user -|-qolSHOAMV $chan
	chattr $user $flags $chan 
	setuser $user XTRA LASTMODIFBY $hand
	setuser $user XTRA LASTMODIFDATE $time
	blacktools:tell $nick $host $hand $chan $chan1 add.10 "$user $uhost"
	blacktools:tell $nick $host $hand $chan $chan1 add.12 $user
	}
}
owner {
if {[matchattr $hand n|- $chan]} {
 set flags "m|-"
if {[validuser $user]} { 
	chattr $user -|-qolSHOAMV $chan
	chattr $user $flags
	setuser $user XTRA LASTMODIFBY $hand
	setuser $user XTRA LASTMODIFDATE $time
	blacktools:tell $nick $host $hand $chan $chan1 add.16 $user
} else {
	adduser $user $uhost
	set user [check:handle $user $nick $host $hand $chan $chan1]
	chattr $user -|-qolSHOAMV $chan
	chattr $user $flags 
	setuser $user XTRA LASTMODIFBY $hand
	setuser $user XTRA LASTMODIFDATE $time
	blacktools:tell $nick $host $hand $chan $chan1 add.10 "$user $uhost"
	blacktools:tell $nick $host $hand $chan $chan1 add.16 $user
		}
	}
}

op {
	set flags "-|olO"
if {[matchattr $handle -|M $chan] && [matchattr $hand -|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return
}
if {[matchattr $handle -|M $chan] && [matchattr $hand -|A $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return
}
if {[matchattr $handle m|- $chan] && [matchattr $hand -|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return
}
if {[matchattr $handle m|- $chan] && [matchattr $hand -|A $chan]} {	
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return
}
if {[matchattr $handle m|- $chan] && [matchattr $hand m|- $chan] && (![matchattr $hand n|- $chan])} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return 
}
if {[matchattr $handle -|A $chan] && [matchattr $hand -|A $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return 
}
if {[matchattr $handle n|- $chan] && [matchattr $hand -|A $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return
}
if {[matchattr $handle n|- $chan] && [matchattr $hand -|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return
}
if {[matchattr $handle n|- $chan] && [matchattr $hand n|- $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none	
	return
}
if {[matchattr $handle n|- $chan] && [matchattr $hand m|- $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return
}
if {[validuser $user]} { 
	chattr $user -|-qolSHOAMV $chan
	chattr $user $flags $chan 
	setuser $user XTRA LASTMODIFBY $hand
	setuser $user XTRA LASTMODIFDATE $time
	blacktools:tell $nick $host $hand $chan $chan1 add.13 $user
} else {
	adduser $user $uhost
	set user [check:handle $user $nick $host $hand $chan $chan1]
	chattr $user -|-qolSHOAMV $chan
	chattr $user $flags $chan 
	setuser $user XTRA LASTMODIFBY $hand
	setuser $user XTRA LASTMODIFDATE $time
	blacktools:tell $nick $host $hand $chan $chan1 add.10 "$user $uhost"
	blacktools:tell $nick $host $hand $chan $chan1 add.13 $user
	}
}

protect {
	set flags "-|H"
if {[matchattr $handle -|M $chan] && [matchattr $hand -|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return
}
if {[matchattr $handle -|M $chan] && [matchattr $hand -|A $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return
}
if {[matchattr $handle m|- $chan] && [matchattr $hand -|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return
}
if {[matchattr $handle m|- $chan] && [matchattr $hand -|A $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return
}
if {[matchattr $handle m|- $chan] && [matchattr $hand m|- $chan] && (![matchattr $hand n|- $chan])} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return 
}
if {[matchattr $handle -|A $chan] && [matchattr $hand -|A $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return
}
if {[matchattr $handle n|- $chan] && [matchattr $hand -|A $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return
}
if {[matchattr $handle n|- $chan] && [matchattr $hand -|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return
}
if {[matchattr $handle n|- $chan] && [matchattr $hand n|- $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return
}
if {[matchattr $handle n|- $chan] && [matchattr $hand m|- $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return
}
if {[validuser $user]} { 
	chattr $user -|-qolHSOAMV $chan
	chattr $user $flags $chan 
	setuser $user XTRA LASTMODIFBY $hand
	setuser $user XTRA LASTMODIFDATE $time
	blacktools:tell $nick $host $hand $chan $chan1 add.15 $user
} else {
	adduser $user $uhost
	set user [check:handle $user $nick $host $hand $chan $chan1]
	chattr $user -|-qolHSOAMV $chan
	chattr $user $flags $chan 
	setuser $user XTRA LASTMODIFBY $hand
	setuser $user XTRA LASTMODIFDATE $time
	blacktools:tell $nick $host $hand $chan $chan1 add.10 "$user $uhost"
	blacktools:tell $nick $host $hand $chan $chan1 add.15 $user
	}
}

 voice {
 set flags "-|olV"
if {[matchattr $handle -|M $chan] && [matchattr $hand -|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return
}
if {[matchattr $handle -|M $chan] && [matchattr $hand -|A $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return
}
if {[matchattr $handle m|- $chan] && [matchattr $hand -|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return 
}
if {[matchattr $handle m|- $chan] && [matchattr $hand -|A $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return
}
if {[matchattr $handle m|- $chan] && [matchattr $hand m|- $chan] && (![matchattr $hand n|- $chan])} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return 
}
if {[matchattr $handle -|A $chan] && [matchattr $hand -|A $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return 
}
if {[matchattr $handle n|- $chan] && [matchattr $hand -|A $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return 
}
if {[matchattr $handle n|- $chan] && [matchattr $hand -|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return
}
if {[matchattr $handle n|- $chan] && [matchattr $hand n|- $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return
}
if {[matchattr $handle n|- $chan] && [matchattr $hand m|- $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return
}
if {[validuser $user]} { 
	chattr $user -|-qolSHOAMV $chan
	chattr $user $flags $chan
	setuser $user XTRA LASTMODIFBY $hand
	setuser $user XTRA LASTMODIFDATE $time
	blacktools:tell $nick $host $hand $chan $chan1 add.14 $user
} else {
	adduser $user $uhost
	set user [check:handle $user $nick $host $hand $chan $chan1]
	chattr $user -|-qolSOAMV $chan
	chattr $user $flags $chan 
	setuser $user XTRA LASTMODIFBY $hand
	setuser $user XTRA LASTMODIFDATE $time
	blacktools:tell $nick $host $hand $chan $chan1 add.10 "$user $uhost"
	blacktools:tell $nick $host $hand $chan $chan1 add.14 $user
						}
					}
				}
			}
		}
	}
}

proc publicadd {nick host hand chan arg} {
global black
	set level [lindex [split $arg] 0]
	set time [ctime [unixtime]]
	set type 0
	set chan1 "$chan"
	set args [lrange [split $arg] 1 end]
	set c [lindex [split $arg] 1]
if {[regexp {^[&#]} $c] && [matchattr $hand nm|- $chan]} {
	set chan "$c"
	set args [lrange [split $arg] 2 end]
}
if {[matchattr $hand -|q $chan]} { 
	blacktools:tell $nick $host $hand $chan $chan1 gl.suspend none
	return
}
	add:process $args $time $level $hand $host $chan $chan1 $nick $type
}

############################## delacc ################################

proc delaccpublic {nick host hand chan arg} {
global black
	set args [lrange [split $arg] 0 end]
	set type 0
	set chan1 "$chan"
	set c [lindex [split $arg] 0]
if {[string equal -nocase "owner" $c] && [matchattr $hand n|- $chan]} {
	set args [lrange [split $arg] 1 end]
	delacc:owner $nick $host $hand $chan $chan1 $args $type
	return
}

if {[regexp {^[&#]} $c] && [matchattr $hand nm|- $chan]} {
	set chan "$c"
	set args [lrange [split $arg] 1 end]
}
	delacc:process $nick $host $hand $chan $chan1 $args $type
}

proc delacc:owner {nick host hand chan chan1 args type} {
	global black botnick
	set char(p) [lindex $black(cmdchar) 0]
if {[string match -nocase "none" "$char(p)"]} {
	set char(p) ""
} 

if {($args == "")  && ($type == "0")} {
	blacktools:tell $nick $host $hand $chan $chan1 delacc.6 none
	return
}
if {($args == "") && ($type == "1")} {	
	blacktools:tell $nick $host $hand $chan $chan1 delacc.7 none
	return
}

foreach user $args {
if {$user != ""} {
if {[onchan $user $chan] && ![validuser $user]} {
	set user [nick2hand $user]
}
if {[matchattr $user n|- $chan] && [matchattr $hand n|- $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return
}
if {![matchattr $user m]} {
	blacktools:tell $nick $host $hand $chan $chan1 delacc.9 none
	return
}

if {[validuser $user]} { 
	chattr $user -mjloptxag
	blacktools:tell $nick $host $hand $chan $chan1 delacc.8 $user
			} else { blacktools:tell $nick $host $hand $chan $chan1 gl.nomem none }
		}
	}		
}

proc delacc:process {nick host hand chan chan1 args type} {
global botnick black
	set char(p) [lindex $black(cmdchar) 0]
if {[string match -nocase "none" "$char(p)"]} {
	set char(p) ""
} 
if {[matchattr $hand -|q $chan]} { blacktools:tell $nick $host $hand $chan $chan1 gl.suspend none
	return
}
if {[matchattr $hand nm|- $chan]} {
if {($args == "")  && ($type == "0")} {
	blacktools:tell $nick $host $hand $chan $chan1 delacc.1 none
	return
}
if {($args == "") && ($type == "1")} {	
	blacktools:tell $nick $host $hand $chan $chan1 delacc.2 none
	return
	}
}
if {($args == "") && ($type == "0")} {
	blacktools:tell $nick $host $hand $chan $chan1 delacc.3 none
	return
}
if {($args == "") && ($type == "1")} {
	blacktools:tell $nick $host $hand $chan $chan1 delacc.4 none
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
foreach user $args {
if {$user != ""} {
if {[onchan $user $chan] && ![validuser $user]} {
	set user [nick2hand $user]
}
if {[matchattr $user -|M $chan] && [matchattr $hand -|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return
}
if {[matchattr $user -|M $chan] && [matchattr $hand -|A $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return
}
if {[matchattr $user m|- $chan] && [matchattr $hand -|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return
}
if {[matchattr $user m|- $chan] && [matchattr $hand m|- $chan] && (![matchattr $hand n|- $chan])} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return 
}
if {[matchattr $user m|- $chan] && [matchattr $hand -|A $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return
}
if {[matchattr $user -|A $chan] && [matchattr $hand -|A $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return
}
if {[matchattr $user n|- $chan] && [matchattr $hand -|A $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return
}
if {[matchattr $user n|- $chan] && [matchattr $hand -|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return
}
if {[matchattr $user n|- $chan] && [matchattr $hand n|- $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return
}
if {[matchattr $user n|- $chan] && [matchattr $hand m|- $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return
}
if {![matchattr $user nm|oHfgalSOAMV $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.noaccess none
	return
}

if {[validuser $user]} { 
	chattr $user -|-qolSgaOAMVHf $chan
	blacktools:tell $nick $host $hand $chan $chan1 delacc.5 $user
			} else { blacktools:tell $nick $host $hand $chan $chan1 gl.nomem none }
		}
	}
}

############################## del #####################################

proc delpublic {nick host hand chan arg} {
global black
	set args [lrange [split $arg] 0 end]
	set type 0
	set chan1 "$chan"	
	del:process $nick $host $hand $chan $chan1 $args $type
}

proc del:process {nick host hand chan chan1 args type} {
global botnick black
	set char(p) [lindex $black(cmdchar) 0]
if {[string match -nocase "none" "$char(p)"]} {
	set char(p) ""
} 
if {[matchattr $hand -|q $chan]} { blacktools:tell $nick $host $hand $chan $chan1 gl.suspend none
	return
}
if {($args == "") && ($type == "0")} {
	blacktools:tell $nick $host $hand $chan $chan1 del.1 none
	return
}
if {($args == "") && ($type == "1")} {
	blacktools:tell $nick $host $hand $chan $chan1 del.2 none
	return
}
foreach user $args {
if {$user != ""} {
if {[onchan $user $chan] && ![validuser $user]} {
	set user [nick2hand $user]
}

if {[matchattr $user -|M $chan] && [matchattr $hand -|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return
}
if {[matchattr $user -|M $chan] && [matchattr $hand -|A $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return
}
if {[matchattr $user m|- $chan] && [matchattr $hand -|M $chan]} {	
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return
}
if {[matchattr $user m|- $chan] && [matchattr $hand -|A $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return
}
if {[matchattr $user m|- $chan] && [matchattr $hand m|- $chan] && (![matchattr $hand n|- $chan])} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return 
}
if {[matchattr $user -|A $chan] && [matchattr $hand -|A $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return
}
if {[matchattr $user n|- $chan] && [matchattr $hand -|A $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return
}
if {[matchattr $user n|- $chan] && [matchattr $hand -|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return
}
if {[matchattr $user n|- $chan] && [matchattr $hand n|- $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return
}
if {[matchattr $user n|- $chan] && [matchattr $hand m|- $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return
}
if {[validuser $user]} { 
if {[matchattr $hand -|MA $chan]} {
foreach c [channels] {
	if {![string equal -nocase $c $chan]} {
	if {[matchattr $user nm|HAMOVSo $c]} {
	blacktools:tell $nick $host $hand $chan $chan1 del.4 $user
	return
			}
		}
	}
}
	deluser $user
	blacktools:tell $nick $host $hand $chan $chan1 del.3 $user
			} else { blacktools:tell $nick $host $hand $chan $chan1 gl.nomem none }
		}
	}
}

################################ addhost #############################

proc addhostpublic {nick host hand chan arg} {
global black
	set user [lindex [split $arg] 0]
	set type 0
	set chan1 "$chan"
	set hosts [lrange [split $arg] 1 end]
	addhost:process $nick $host $hand $chan $chan1 $user $hosts $type
}

proc addhost:process {nick host hand chan chan1 user hosts type} {


global black botnick
	set char(p) [lindex $black(cmdchar) 0]
if {[string match -nocase "none" "$char(p)"]} {
	set char(p) ""
} 
	set time [ctime [unixtime]]
if {[matchattr $hand -|q $chan]} { blacktools:tell $nick $host $hand $chan $chan1 gl.suspend none
	return
}

if {($user == "") && ($type == "0")} {
	blacktools:tell $nick $host $hand $chan $chan1 addhost.1 none
	return
}
if {($user == "") && ($type == "1")} {
	blacktools:tell $nick $host $hand $chan $chan1 addhost.2 none
	return
}

if {[onchan $user $chan] && ![validuser $user]} {
	set user [nick2hand $user]
}

if {[matchattr $user nm|- $chan] && [matchattr $hand nm|- $chan] && [string equal -nocase $hand $user]} {
	add:owner:host $nick $host $hand $chan $chan1 $user $hosts $type
	return
}

if {[matchattr $user -|M $chan] && [matchattr $hand -|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return
}
if {[matchattr $user -|M $chan] && [matchattr $hand -|A $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return
}
if {[matchattr $user m|- $chan] && [matchattr $hand -|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return 
}
if {[matchattr $user m|- $chan] && [matchattr $hand m|- $chan] && (![matchattr $hand n|- $chan])} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return
}
if {[matchattr $user m|- $chan] && [matchattr $hand -|A $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return
}
if {[matchattr $user -|A $chan] && [matchattr $hand -|A $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return
}
if {[matchattr $user n|- $chan] && [matchattr $hand -|A $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return
}
if {[matchattr $user n|- $chan] && [matchattr $hand -|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return
}
if {[matchattr $user n|- $chan] && [matchattr $hand n|- $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return
}
if {[matchattr $user n|- $chan] && [matchattr $hand m|- $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return 0 
}
if {[validuser $user]} {
	set hhost [getuser $user hosts]
foreach hhost $hhost {
if {[string match -nocase $hosts $hhost]} {
	blacktools:tell $nick $host $hand $chan $chan1 addhost.3 "$user $hosts"
	return
	}
}
	setuser $user HOSTS $hosts
	setuser $user XTRA LASTMODIFBY $hand
	setuser $user XTRA LASTMODIFDATE $time
	blacktools:tell $nick $host $hand $chan $chan1 addhost.4 "$user $hosts"
	} else { blacktools:tell $nick $host $hand $chan $chan1 gl.nomem none }
}

proc add:owner:host {nick host hand chan chan1 user hosts type} {
	global black
if {[validuser $user]} {
	set hhost [getuser $user hosts]
foreach hhost $hhost {
if {[string match -nocase $hosts $hhost]} {
	blacktools:tell $nick $host $hand $chan $chan1 addhost.3 "$user $hosts"
	return
	}
}
	setuser $user HOSTS $hosts
	blacktools:tell $nick $host $hand $chan $chan1 addhost.5 "$hosts"
	}		
}

############################### delhost ############################


proc delhostpuplic {nick host hand chan arg} {
global black
	set user [lindex [split $arg] 0]
	set type 0
	set chan1 "$chan"
	set hosts [lrange [split $arg] 1 end]
	delhost:process $nick $host $hand $chan $chan1 $user $hosts $type
}


proc delhost:process {nick host hand chan chan1 user hosts type} {
global black botnick
	set time [ctime [unixtime]]
	set char(p) [lindex $black(cmdchar) 0]
if {[string match -nocase "none" "$char(p)"]} {
	set char(p) ""
} 
if {[matchattr $hand -|q $chan]} { blacktools:tell $nick $host $hand $chan $chan1 gl.suspend none
	return
}
if {($user == "") && ($type == "0")} {
	blacktools:tell $nick $host $hand $chan $chan1 delhost.1 none
	return
}
if {($user == "") && ($type == "1")} {	
	blacktools:tell $nick $host $hand $chan $chan1 delhost.2 none
	return
}

if {[onchan $user $chan] && ![validuser $user]} {
	set user [nick2hand $user]
}

if {[matchattr $user nm|- $chan] && [matchattr $hand nm|- $chan] && [string equal -nocase $hand $user]} {
	del:owner:host $nick $host $hand $chan $chan1 $user $hosts $type
	return
}

if {[matchattr $user -|M $chan] && [matchattr $hand -|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return
}
if {[matchattr $user -|M $chan] && [matchattr $hand -|A $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return
}
if {[matchattr $user m|- $chan] && [matchattr $hand -|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return 
}
if {[matchattr $user m|- $chan] && [matchattr $hand -|A $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return
}
if {[matchattr $user m|- $chan] && [matchattr $hand m|- $chan] && (![matchattr $hand n|- $chan])} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return
}
if {[matchattr $user -|A $chan] && [matchattr $hand -|A $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return
}
if {[matchattr $user n|- $chan] && [matchattr $hand -|A $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return
}
if {[matchattr $user n|- $chan] && [matchattr $hand -|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return
}
if {[matchattr $user n|- $chan] && [matchattr $hand n|- $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return
}
if {[matchattr $user n|- $chan] && [matchattr $hand m|- $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return
}
if {[validuser $user]} {
	set hhost [getuser $user hosts]
foreach hhost $hhost {
if {[string match -nocase $hhost $hosts]} {
	set foundhost 1
	}
}
if {![info exists foundhost]} {
	blacktools:tell $nick $host $hand $chan $chan1 delhost.3 "$user $hosts"
	return
}
	delhost $user $hosts
	blacktools:tell $nick $host $hand $chan $chan1 delhost.4 "$user $hosts"
		} else { 
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomem none
	}
}


proc del:owner:host {nick host hand chan chan1 user hosts type} {
	global black
if {[validuser $user]} {
	set hhost [getuser $user hosts]
foreach hhost $hhost {
if {[string match -nocase $hhost $hosts]} {
	set foundhost 1
	}
}
if {![info exists foundhost]} {
	blacktools:tell $nick $host $hand $chan $chan1 delhost.3 "$user $hosts"
	return
}
	delhost $user $hosts
	blacktools:tell $nick $host $hand $chan $chan1 delhost.5 "$user $hosts"
		} else { 
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomem none
	}	
}


proc chuserpublic {nick host hand chan arg} {
global black
	set user [lindex [split $arg] 0]
	set type 0
	set chan1 "$chan"
	set chandle [lindex [split $arg] 1]
	chuser:process $nick $host $hand $chan $chan1 $user $chandle $type
}

proc chuser:process {nick host hand chan chan1 user chandle type} {
global botnick black
	set char(p) [lindex $black(cmdchar) 0]
if {[string match -nocase "none" "$char(p)"]} {
	set char(p) ""
} 
	set time [ctime [unixtime]]
if {[matchattr $hand -|q $chan]} { blacktools:tell $nick $host $hand $chan $chan1 gl.suspend none
	return
}

if {($user == "") && ($type == "0")} {
	blacktools:tell $nick $host $hand $chan $chan1 chuser.1 none
	return
}
if {($user == "") && ($type == "1")} {
	blacktools:tell $nick $host $hand $chan $chan1 chuser.2 none
	return
}

if {[onchan $user $chan] && ![validuser $user]} {
	set user [nick2hand $user]
}

if {[matchattr $user nm|- $chan] && [matchattr $hand nm|- $chan] && [string equal -nocase $hand $user]} {
	chuser:owner $nick $host $hand $chan $chan1 $user $chandle $type
	return
}

if {[matchattr $user -|M $chan] && [matchattr $hand -|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return
}
if {[matchattr $user -|M $chan] && [matchattr $hand -|A $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return
}
if {[matchattr $user m|- $chan] && [matchattr $hand -|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return
}
if {[matchattr $user m|- $chan] && [matchattr $hand m|- $chan] && (![matchattr $hand n|- $chan])} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return
}
if {[matchattr $user m|- $chan] && [matchattr $hand -|A $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return
}
if {[matchattr $user -|A $chan] && [matchattr $hand -|A $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return
}
if {[matchattr $user n|- $chan] && [matchattr $hand -|A $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return
}
if {[matchattr $user n|- $chan] && [matchattr $hand -|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return
}
if {[matchattr $user n|- $chan] && [matchattr $hand n|- $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return
}
if {[matchattr $user n|- $chan] && [matchattr $hand m|- $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return
}
if {[validuser $user]} {
	chhandle $user $chandle
	setuser $chandle XTRA LASTMODIFBY $hand
	setuser $chandle XTRA LASTMODIFDATE $time
	blacktools:tell $nick $host $hand $chan $chan1 chuser.3 "$user $chandle"
	} else {blacktools:tell $nick $host $hand $chan $chan1 gl.nomem none }
}


proc chuser:owner {nick host hand chan chan1 user chandle type} {
	global black
	chhandle $user $chandle
	set hand $chandle
	blacktools:tell $nick $host $hand $chan $chan1 chuser.4 "$chandle"
}

proc userlist:execute {hand host level chan chan1 nick type} {
global black botnick
	set char(p) [lindex $black(cmdchar) 0]
if {[string match -nocase "none" "$char(p)"]} {	
	set char(p) ""
} 
if {[matchattr $hand -|q $chan]} { blacktools:tell $nick $host $hand $chan $chan1 gl.suspend none
	return
}
if {[matchattr $hand nm|- $chan]} {
if {($level == "")  && ($type == "0")} {
	blacktools:tell $nick $host $hand $chan $chan1 userlist.1 none
	return
}
if {($level == "") && ($type == "1")} {	
	blacktools:tell $nick $host $hand $chan $chan1 userlist.2 none
	return
	}
}
if {($level == "") && ($type == "0")} {
	blacktools:tell $nick $host $hand $chan $chan1 userlist.3 none
	return
}
if {($level == "") && ($type == "1")} {
	blacktools:tell $nick $host $hand $chan $chan1 userlist.4 none
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
if {([regexp -nocase -- {(#[0-9]+|manager|protect|admin|senior|op|voice|all|owner|online|autoop|autovoice)} $level tmp access]) && (![regexp -nocase -- {\S#} $level])} {
    switch $access {
     manager {
    set flags "-|M"
    set numar [llength [userlist $flags $chan]]
    set list [userlist $flags $chan]
foreach user [wordwrap [join $list "  "] 250 ,] {
if {$list == ""} { set user "NONE" }
	blacktools:tell $nick $host $hand $chan $chan1 userlist.5 $numar
	blacktools:tell $nick $host $hand $chan $chan1 userlist.7 $user
	}
}

admin {
	set flags "-|A"
	set numar [llength [userlist $flags $chan]]
	set list [userlist $flags $chan]
foreach user [wordwrap [join $list " , "] 250 ,] {
if {$list == ""} { set user "NONE" }
	blacktools:tell $nick $host $hand $chan $chan1 userlist.8 $numar
	blacktools:tell $nick $host $hand $chan $chan1 userlist.7 $user
	}
}

senior {
set flags "-|S"
    set list [userlist $flags $chan]
    set numar [llength [userlist $flags $chan]]
foreach user [wordwrap [join $list " , "] 250 ,] {
if {$list == ""} { set user "NONE" }
	blacktools:tell $nick $host $hand $chan $chan1 userlist.10 $numar
	blacktools:tell $nick $host $hand $chan $chan1 userlist.7 $user
	}
}

protect {	
	set flags "-|H"
	set list [userlist $flags $chan]
    set numar [llength [userlist $flags $chan]]
foreach user [wordwrap [join $list " , "] 250 ,] {
if {$list == ""} { set user "NONE" }
	blacktools:tell $nick $host $hand $chan $chan1 userlist.12 $numar
	blacktools:tell $nick $host $hand $chan $chan1 userlist.7 $user
	}
}

op  {
set flags "-|O"
    set list [userlist $flags $chan]
    set numar [llength [userlist $flags $chan]]
foreach user [wordwrap [join $list " , "] 250 ,] {
if {$list == ""} { set user "NONE" }
	blacktools:tell $nick $host $hand $chan $chan1 userlist.14 $numar
	blacktools:tell $nick $host $hand $chan $chan1 userlist.7 $user
	}
}

owner {
if {[matchattr $hand nm|- $chan]} {
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
if {$listowner == ""} { set listowner "NONE" }
	blacktools:tell $nick $host $hand $chan $chan1 userlist.16 $listbossowner
	blacktools:tell $nick $host $hand $chan $chan1 userlist.17 $listowner
	}
}

voice {
set flags "-|V"
    set numar [llength [userlist $flags $chan]]
    set list [userlist $flags $chan]
foreach user [wordwrap [join $list " , "] 250 ,] {
if {$list == ""} { set user "NONE" }
	blacktools:tell $nick $host $hand $chan $chan1 userlist.18 $numar
	blacktools:tell $nick $host $hand $chan $chan1 userlist.7 $user
	}
}

autoop {
if {[matchattr $hand mn|- $chan]} {
set flags "-|a"
set all_flags "a|a"
set glob_flags "a|-"
    set list [userlist $all_flags $chan]
set numar [llength $list]	
	blacktools:tell $nick $host $hand $chan $chan1 userlist.22 $numar
foreach user $list {
if {[matchattr $user $glob_flags $chan]} {
	lappend userlist "$user\[GLOBAL\]"
	} else { lappend userlist $user }
}
foreach text [wordwrap [join $userlist " , "] 250 ,] {
	blacktools:tell $nick $host $hand $chan $chan1 userlist.7 "$text"
		}
	return
}

set flags "-|a"
set numar [llength [userlist $flags $chan]]
    set list [userlist $flags $chan]
foreach user [wordwrap [join $list " , "] 250 ,] {
if {$list == ""} { set user "NONE" }
	blacktools:tell $nick $host $hand $chan $chan1 userlist.22 $numar
	blacktools:tell $nick $host $hand $chan $chan1 userlist.7 $user
	}
}

autovoice {
if {[matchattr $hand mn|- $chan]} {
set flags "-|g"
set all_flags "g|g"
set glob_flags "g|-"
    set list [userlist $all_flags $chan]
set numar [llength $list]	
	blacktools:tell $nick $host $hand $chan $chan1 userlist.23 $numar
foreach user $list {
if {[matchattr $user $glob_flags $chan]} {
	lappend userlist "$user\[GLOBAL\]"
	} else { lappend userlist $user }
}
foreach text [wordwrap [join $userlist " , "] 250 ,] {
	blacktools:tell $nick $host $hand $chan $chan1 userlist.7 "$text"
		}
	return
}



	set flags "-|g"
set numar [llength [userlist $flags $chan]]
    set list [userlist $flags $chan]
foreach user [wordwrap [join $list " , "] 250 ,] {
if {$list == ""} { set user "NONE" }
	blacktools:tell $nick $host $hand $chan $chan1 userlist.23 $numar
	blacktools:tell $nick $host $hand $chan $chan1 userlist.7 $user
	}
}

all {
array set flgc [list]	
	set flags "-|MNHASVO"
	set list [userlist $flags $chan]
	set numar [llength [userlist $flags $chan]]
foreach user $list {
if {[matchattr $user -|H $chan]} {
	lappend flgc(PROTECT) $user
} elseif {[matchattr $user -|V $chan]} { 
	lappend flgc(VOICE) $user
} elseif {[matchattr $user -|O $chan]} {
	lappend flgc(OP) $user
} elseif {[matchattr $user -|S $chan]} {
	lappend flgc(SENIOR) $user
} elseif {[matchattr $user -|A $chan]} {
	lappend flgc(ADMINISTRATOR) $user
} elseif {[matchattr $user -|M $chan]} {
	lappend flgc(MANAGER) $user
	}
}

foreach flw [array names flgc] {
	lappend messall [join $flgc($flw) " , "] -> ($flw)
}
if {$list == ""} { set messall "NONE" }
	blacktools:tell $nick $host $hand $chan $chan1 userlist.20 $numar
foreach mes [wordwrap [join $messall] 250] {
	blacktools:tell $nick $host $hand $chan $chan1 userlist.7 $mes
				}
			}
online {
	array set flgc [list]
	set flags "-|MNHASVO"
	set users_online ""
	set numar 0
	
foreach n [chanlist $chan] {
	set handle [nick2hand $n]
if {[matchattr $handle $flags $chan]} {
	lappend users_online $handle
	}
}
	set numar [llength $users_online]
	
foreach user $users_online {
if {$user != ""} {
if {[matchattr $user -|H $chan]} {
	lappend flgc(PROTECT) $user
} elseif {[matchattr $user -|V $chan]} { 
	lappend flgc(VOICE) $user
} elseif {[matchattr $user -|O $chan]} {
	lappend flgc(OP) $user
} elseif {[matchattr $user -|S $chan]} {
	lappend flgc(SENIOR) $user
} elseif {[matchattr $user -|A $chan]} {
	lappend flgc(ADMINISTRATOR) $user
} elseif {[matchattr $user -|M $chan]} {
	lappend flgc(MANAGER) $user
		}
	}
}

foreach flw [array names flgc] {
	lappend messall [join $flgc($flw) " , "] -> ($flw)
}

if {$users_online == ""} { set messall "NONE" }
	blacktools:tell $nick $host $hand $chan $chan1 userlist.21 $numar
foreach mes [wordwrap [join $messall] 250] {
	blacktools:tell $nick $host $hand $chan $chan1 userlist.7 $mes
				}
			}						
		}
	}
}

proc wordwrap {str {len 100} {splitChr { }}} { 
   set out [set cur {}]; set i 0 
   foreach word [split [set str][unset str] $splitChr] { 
     if {[incr i [string len $word]]>$len} { 
         lappend out [join $cur $splitChr] 
         set cur [list $word] 
         set i [string len $word] 
      } { 
         lappend cur $word 
      } 
      incr i 
   } 
   lappend out [join $cur $splitChr] 
} 



proc publicuserlist {nick host hand chan arg} {
global black
set level [lindex [split $arg] 0]
set type 0
set chan1 "$chan"
if {[regexp {^[&#]} $level] && [matchattr $hand nm|- $chan]} {
set chan "$level"
set level [lindex [split $arg] 1]
} 
userlist:execute $hand $host $level $chan $chan1 $nick $type
}


############################### channels ########################

proc channelspublic {nick host hand chan arg} {
global botnick black
set chan1 "$chan"
channels:process $nick $host $hand $chan $chan1
}

proc channels:process {nick host hand chan chan1} {
global botnick black
	set num [llength [channels]]
	set minusers "5"
	array set status [list]
	set notonchan "(NoT on ChaN)"
	set notenough "(users < $minusers)"
	set suspended "(SUSPENDED)"
foreach c [channels] {
	set usersnumber [llength [chanlist $c]]
if {[channel get $c inactive]} {
	lappend status($c) "$c $suspended"
} elseif {![onchan $botnick $c]} {
	lappend status($c) "$c $notonchan"
} elseif {[onchan $botnick $c] && (![botisop $c])} {
	lappend status($c) "$c"
} elseif {[onchan $botnick $c] && ($usersnumber < $minusers)} {
	lappend status($c) "$c $notenough"
}
if {![info exists status($c)]} {
	lappend status($c) "@$c"
}
	lappend message "[join $status($c) ", "]"
}
	blacktools:tell $nick $host $hand $chan $chan1 channels.1 $num
foreach word [wordwrap [join $message] 350 ,] {
	blacktools:tell $nick $host $hand $chan $chan1 channels.2 $word
	}
}
############################### info ############################

proc infopublic {nick host hand chan arg} {
global black
	set user [lindex [split $arg] 0]
	set type 0
	set chan1 "$chan"
if {[regexp {^[&#]} $user] && [matchattr $hand nm|MASO $user] && ([lindex [split $arg] 1] == "")} {
	set chan $user
	stats:process $nick $host $hand $chan $chan1
	return
}

if {[regexp {^[&#]} $user] && [matchattr $hand nm|- $chan]} {
	set chan "$user"
	set user [lindex [split $arg] 1]
}
	info:process $nick $host $hand $chan $chan1 $user $type
}

proc info:process {nick host hand chan chan1 user type} {
global botnick black
	set char(p) [lindex $black(cmdchar) 0]
if {[string match -nocase "none" "$char(p)"]} {
	set char(p) ""
} 
	set time [ctime [unixtime]]
	array set flg [list]
if {[matchattr $hand nm|- $chan]} {
if {($user == "") && ($type == "0")} {
	blacktools:tell $nick $host $hand $chan $chan1 info.1 none
	return 
}
if {($user == "") && ($type == "1")} {
	blacktools:tell $nick $host $hand $chan $chan1 info.2 none
	return
	}
}
if {($user == "") && ($type == "0")} {
	blacktools:tell $nick $host $hand $chan $chan1 info.3 none
	return
}
if {($user == "") && ($type == "1")} {
	blacktools:tell $nick $host $hand $chan $chan1 info.4 none
	return
}
if {![validchan $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.novalidchan none
	return
}

if {[matchattr $hand -|q $chan]} { blacktools:tell $nick $host $hand $chan $chan1 gl.suspend none
	return
}

if {[onchan $user $chan] && ![validuser $user]} {
	set user [nick2hand $user]
}

if {![validuser $user]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.nomem none 
	return
}

if {[matchattr $hand nm|- $chan]} {
foreach c [channels] {
if {[matchattr $user -|H $c]} { 
	set fl "PROTECT"
	lappend flg($fl) $c
} elseif {[matchattr $user -|V $c]} { 
	set fl "VOICE"
	lappend flg($fl) $c
} elseif {[matchattr $user -|O $c]} { 
	set fl "OP" 
	lappend flg($fl) $c
} elseif {[matchattr $user -|S $c]} {
	set fl "SENIOR"
	lappend flg($fl) $c
} elseif {[matchattr $user -|A $c]} {
	set fl "ADMINISTRATOR" 
	lappend flg($fl) $c
} elseif {[matchattr $user -|M $c]} {
	set fl "MANAGER" 
	lappend flg($fl) $c 
	}
}
foreach cf [array names flg] {
lappend exit [join $flg($cf) ,] ($cf) |
	}
}

if {![matchattr $user nm|OgaAHSMNV $chan]} { blacktools:tell $nick $host $hand $chan $chan1 gl.noaccess none
if {![info exists exit]} { set exit "NONE"}
if {[matchattr $hand nm|- $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 info.5 "[join $exit]"
if {[getuser $user HOSTS] != ""} {
	set hosts [getuser $user hosts]
	blacktools:tell $nick $host $hand $chan $chan1 info.6 $hosts
}
	set lastseen [getuser $user LASTON $chan]
if {($lastseen == "0") || ($lastseen == "")} {
	set seened "NONE"
} else { set seened [ctime $lastseen] }
	blacktools:tell $nick $host $hand $chan $chan1 info.7 $seened
}
	return
}

	set getlang [string tolower [getuser $hand XTRA OUTPUT_LANG]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
	set suspendat "$black(say.$getlang.info.10)"
	set cflags [chattr $user | $chan]
	blacktools:tell $nick $host $hand $chan $chan1 info.8 $user
	blacktools:tell $nick $host $hand $chan $chan1 info.9 $time

	
	
if {[matchattr $user -|g $chan]} {
	set flags "AUTOVOICE"
}

if {[matchattr $user -|a $chan]} {
	set flags "AUTOOP"
}	

if {[matchattr $user g|- $chan]} {
	set flags "GLOBAL AUTOVOICE"
}

if {[matchattr $user a|- $chan]} {
	set flags "GLOBAL AUTOOP"
}	

if {[matchattr $user -|V $chan]} { set flags "VOICE" } elseif {[matchattr $user -|O $chan]} { set flags "OP" } elseif {[matchattr $user -|S $chan]} { set flags "SENIOR" } elseif {[matchattr $user -|A $chan]} { set flags "ADMINISTRATOR" } elseif {[matchattr $user -|H $chan]} { set flags "PROTECT"}
if {[matchattr $user n|- $chan]} { set flags "THE BOSS OWNER" } elseif {[matchattr $user m|- $chan]} { set flags "OWNER" } elseif {[matchattr $user -|M $chan]} { set flags "MANAGER" } elseif {$cflags == "-|-"} { blacktools:tell $nick $host $hand $chan $chan1 info.18 "NONE" } 

if {[matchattr $user -|g $chan]} {
if {[matchattr $user -|V $chan]} { set flags "VOICE+AUTOVOICE)" } elseif {[matchattr $user -|O $chan]} { set flags "OP+AUTOVOICE" } elseif {[matchattr $user -|S $chan]} { set flags "SENIOR+AUTOVOICE" } elseif {[matchattr $user -|A $chan]} { set flags "ADMINISTRATOR+AUTOVOICE" } elseif {[matchattr $user -|H $chan]} { set flags "PROTECT+AUTOVOICE"}
if {[matchattr $user -|M $chan]} { set flags "MANAGER+AUTOVOICE" } elseif {[matchattr $user m|- $chan]} { set flags "OWNER" } elseif {$cflags == "-|-"} { blacktools:tell $nick $host $hand $chan $chan1 info.18 "NONE" 
	return
	}
}

if {[matchattr $user -|a $chan]} {
if {[matchattr $user -|V $chan]} { set flags "VOICE+AUTOOP" } elseif {[matchattr $user -|O $chan]} { set flags "OP+AUTOOP" } elseif {[matchattr $user -|S $chan]} { set flags "SENIOR+AUTOOP" } elseif {[matchattr $user -|A $chan]} { set flags "ADMINISTRATOR+AUTOOP" } elseif {[matchattr $user -|H $chan]} { set flags "PROTECT+AUTOOP"}
if {[matchattr $user -|M $chan]} { set flags "MANAGER+AUTOOP" } elseif {[matchattr $user m|- $chan]} { set flags "OWNER" } elseif {$cflags == "-|-"} { blacktools:tell $nick $host $hand $chan $chan1 info.18 "NONE" 
	return
	}
}

if {[matchattr $user -|q $chan]} {
if {[matchattr $user -|V $chan]} { set flags "VOICE ($suspendat)" } elseif {[matchattr $user -|O $chan]} { set flags "OP ($suspendat)" } elseif {[matchattr $user -|S $chan]} { set flags "SENIOR ($suspendat)" } elseif {[matchattr $user -|A $chan]} { set flags "ADMINISTRATOR ($suspendat)" } elseif {[matchattr $user -|H $chan]} { set flags "PROTECT ($suspendat)"}
if {[matchattr $user -|M $chan]} { set flags "MANAGER ($suspendat)" } elseif {[matchattr $user m|- $chan]} { set flags "OWNER ($suspendat)" } elseif {$cflags == "-|-"} { blacktools:tell $nick $host $hand $chan $chan1 info.18 "NONE"
	return
	}
}
	blacktools:tell $nick $host $hand $chan $chan1 info.11 "$cflags $flags"
if {[getuser $user INFO] != ""} {
	blacktools:tell $nick $host $hand $chan $chan1 info.12 "[getuser $user INFO]"
}
	set date [getuser $user XTRA LASTMODIFDATE]
if {[matchattr $user n|- $chan]} { set date "No Date" }
if {$date == ""} { set date "No Date" }
	set lastt [getuser $user XTRA LASTMODIFBY]
 if {$lastt == ""} { set lastt "No info" }
 if {[matchattr $user n|- $chan]} { set lastt "NONE" }
	blacktools:tell $nick $host $hand $chan $chan1 info.13 "$lastt $date"
if {[getuser $user HOSTS] != ""} {
	set hosts [getuser $user hosts]
	blacktools:tell $nick $host $hand $chan $chan1 info.6 $hosts
}
if {![info exists exit]} { set exit "NONE"}
if {![matchattr $user nm|- $chan] && [matchattr $hand nm|- $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 info.5 "[join $exit]"
}
	set lastseen [getuser $user LASTON $chan]
if {($lastseen == "0") || ($lastseen == "")} { 
	blacktools:tell $nick $host $hand $chan $chan1 info.14 none
	blacktools:tell $nick $host $hand $chan $chan1 info.15 $user
	blacktools:tell $nick $host $hand $chan $chan1 info.16 none
	return
}
	set seened [ctime $lastseen]
	blacktools:tell $nick $host $hand $chan $chan1 info.17 $seened
	blacktools:tell $nick $host $hand $chan $chan1 info.15 $user
	blacktools:tell $nick $host $hand $chan $chan1 info.16 none
}

################################# s ###############################

proc spublic {nick host hand chan arg} {
global black
	set type 0
	set chan1 "$chan"
	set users [lindex [split $arg] 0]
if {[regexp {^[&#]} $users] && [matchattr $hand nm|- $chan]} {
	set chan "$users"
	set users [lindex [split $arg] 1]
}
	s:process $nick $host $hand $chan $chan1 $users $type
}

proc s:process {nick host hand chan chan1 users type} {
global botnick black
	set flags "-|q"
	set char(p) [lindex $black(cmdchar) 0]
if {[string match -nocase "none" "$char(p)"]} {
	set char(p) ""
} 
	set time [ctime [unixtime]]
if {[matchattr $hand -|q $chan]} { blacktools:tell $nick $host $hand $chan $chan1 gl.suspend none
	return
}

if {[matchattr $hand nm|- $chan]} {
if {($users == "")  && ($type == "0")} {
	blacktools:tell $nick $host $hand $chan $chan1 s.1 none
	return
}
if {($users == "") && ($type == "1")} {
	blacktools:tell $nick $host $hand $chan $chan1 s.2 none
	return
	}
}
if {($users == "") && ($type == "0")} {
	blacktools:tell $nick $host $hand $chan $chan1 s.3 none
	return
}
if {($users == "") && ($type == "1")} {
	blacktools:tell $nick $host $hand $chan $chan1 s.4 none
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
if {[matchattr $users -|q $chan]} { blacktools:tell $nick $host $hand $chan $chan1 s.5 $users
	return
}
if {![validuser $users]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomem none
	return
}
if {![matchattr $users nm|OASMNV $chan]} { blacktools:tell $nick $host $hand $chan $chan1 gl.noaccess none
	return
}

if {[matchattr $users -|M $chan] && [matchattr $hand -|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return
}
if {[matchattr $users -|M $chan] && [matchattr $hand -|A $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return
}
if {[matchattr $users m|- $chan] && [matchattr $hand -|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return
}
if {[matchattr $users m|- $chan] && [matchattr $hand m|- $chan] && (![matchattr $hand n|- $chan])} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return
}
if {[matchattr $users m|- $chan] && [matchattr $hand -|A $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return
}
if {[matchattr $users -|A $chan] && [matchattr $hand -|A $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return
}
if {[matchattr $users n|- $chan] && [matchattr $hand -|A $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none	
	return 
}
if {[matchattr $users n|- $chan] && [matchattr $hand -|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return
}
if {[matchattr $users n|- $chan] && [matchattr $hand n|- $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return
}
if {[matchattr $users n|- $chan] && [matchattr $hand m|- $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return
}
	chattr $users $flags $chan
	setuser $users XTRA LASTMODIFBY $hand
	setuser $users XTRA LASTMODIFDATE $time
	blacktools:tell $nick $host $hand $chan $chan1 s.6 $users
} 
################################## us ################################

proc uspublic {nick host hand chan arg} {
global black
	set type 0
	set chan1 "$chan"
	set users [lindex [split $arg] 0]
if {[regexp {^[&#]} $users] && [matchattr $hand nm|- $chan]} {
	set chan "$users"
	set users [lindex [split $arg] 1]
}
	us:process $nick $host $hand $chan $chan1 $users $type
}

proc us:process {nick host hand chan chan1 users type} {
global botnick black
	set flags "-|-q"
	set char(p) [lindex $black(cmdchar) 0]
if {[string match -nocase "none" "$char(p)"]} {
	set char(p) ""
} 
	set time [ctime [unixtime]]
if {[matchattr $hand -|q $chan]} { blacktools:tell $nick $host $hand $chan $chan1 gl.suspend none
	return
}
if {[matchattr $hand nm|- $chan]} {
if {($users == "")  && ($type == "0")} {
	blacktools:tell $nick $host $hand $chan $chan1 us.1 none
	return
}
if {($users == "") && ($type == "1")} {
	blacktools:tell $nick $host $hand $chan $chan1 us.2 none
	return
	}
}
if {($users == "") && ($type == "0")} {
	blacktools:tell $nick $host $hand $chan $chan1 us.3 none
	return
}
if {($users == "") && ($type == "1")} {
	blacktools:tell $nick $host $hand $chan $chan1 us.4 none
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
if {![validuser $users]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomem none
	return
}
if {![matchattr $users nm|OASMNV $chan]} { blacktools:tell $nick $host $hand $chan $chan1 gl.noaccess none
	return
}
if {![matchattr $users -|q $chan]} { blacktools:tell $nick $host $hand $chan $chan1 us.5 $users
	return
}

if {[matchattr $users -|M $chan] && [matchattr $hand -|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return 
}
if {[matchattr $users -|M $chan] && [matchattr $hand -|A $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return
}
if {[matchattr $users m|- $chan] && [matchattr $hand -|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return
}
if {[matchattr $users m|- $chan] && [matchattr $hand -|A $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return
}
if {[matchattr $users m|- $chan] && [matchattr $hand m|- $chan] && (![matchattr $hand n|- $chan])} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return
}
if {[matchattr $users -|A $chan] && [matchattr $hand -|A $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return
}
if {[matchattr $users n|- $chan] && [matchattr $hand -|A $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return
}
if {[matchattr $users n|- $chan] && [matchattr $hand -|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none	
	return 
}
if {[matchattr $users n|- $chan] && [matchattr $hand n|- $chan]} {	
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return
}
if {[matchattr $users n|- $chan] && [matchattr $hand m|- $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return
}

	setuser $users XTRA LASTMODIFBY $hand
	setuser $users XTRA LASTMODIFDATE $time
	chattr $users $flags $chan
	blacktools:tell $nick $host $hand $chan $chan1 us.6 $users
} 

############################## ping ##################################

proc pings {nick host hand chan arg} {
	putquick "PRIVMSG $nick :\001PING [expr {abs([clock clicks -milliseconds])}]\001"
	return
}

proc pingpublic {nick host hand dest key arg} {
global botnick black
	set ping [split $arg "."]
	set pingreply [lindex $ping 0]
if {[regexp -- {^-?[0-9]+$} $pingreply]} {
	set second "[expr {abs([expr [expr {abs([clock clicks -milliseconds])} - $pingreply] / 1000.000])}]"
	blacktools:tell:prv $nick $host $hand ping.1 $second
	}
}

############################### time ##################################

proc timepublic {nick host hand chan arg} {
global black
	set chan1 "$chan"	
	set time [ctime [unixtime]]
	blacktools:tell $nick $host $hand $chan $chan1 time.1 $time
}

################################### vers ###############################

proc verspublic {nick host hand chan arg} {
global black
	set why [lindex [split $arg] 0]
	set chan1 "$chan"
	set char(p) [lindex $black(cmdchar) 0]
if {[string match -nocase "none" "$char(p)"]} {
	set char(p) ""
} 
if {$why == ""} { blacktools:tell $nick $host $hand $chan $chan1 vers.1 none
	return
}
	vers:process $nick $host $hand $chan $chan1 $why
}

proc vers:process {nick host hand chan chan1 why} {
global botnick black
	set ::verschan $chan
	set ::versnick $nick
if {[matchattr $hand -|q $chan]} { blacktools:tell $nick $host $hand $chan $chan1 gl.suspend none
	return
}
if {![onchan $why $chan]} { blacktools:tell $nick $host $hand $chan $chan1 gl.notonchan $why
	return
}
	putserv "PRIVMSG $why :\001VERSION\001"
}


proc ctcpvers {nickname hostname handle dest key arg} {
global black
	set text [split $arg]
	set chan $::verschan
	set nick $::versnick
	blacktools:tell:prv $nick $hostname $handle vers.3 "$nickname $text"
}

################################### whois ###############################

proc whoispublic {nick host hand chan arg} {
global black
	set char(p) [lindex $black(cmdchar) 0]
if {[string match -nocase "none" "$char(p)"]} {
	set char(p) ""
} 
	set chan1 "$chan"
	set who [lindex [split $arg] 0]
if {$who == ""} { blacktools:tell $nick $host $hand $chan $chan1 whois.1 none
	return
}
	whois:process $nick $host $hand $chan $chan1 $who
}

proc whois:process {nick host hand chan chan1 who} {
global botnick black
	set ::wnick $nick
	set ::hand $hand
if {[matchattr $hand -|q $chan]} { blacktools:tell $nick $host $hand $chan $chan1 gl.suspend none
	return
}
	putquick "WHOIS $who $who"
	bind RAW - 311 winfo
	bind RAW - 319 wchannels
	bind RAW - 401 nonicks
	utimer 1 [list check:if:bind "winfo" "311"]
	utimer 1 [list check:if:bind "wchannels" "319"]
	utimer 1 [list check:if:bind "nonicks" "401"]
}

proc winfo { from keyword arguments } {
global black
	set hand $::hand
	set nick $::wnick
	set nickname [lindex [split $arguments] 1]
	set ident [lindex [split $arguments] 2]
	set host [lindex [split $arguments] 3]
	set realname [string range [join [lrange $arguments 5 end]] 1 end]
blacktools:tell:prv $nick hostname $hand whois.3 "$nickname host - *!*$ident@$host * $realname"
check:if:bind "winfo" "311"
}

proc wchannels { from keyword arguments } {
global black
	set hand $::hand
	set nick $::wnick
	set channels [string range [join [lrange $arguments 2 end]] 1 end]
	blacktools:tell:prv $nick hostname $hand whois.4 $channels
	check:if:bind "wchannels" "319"
}

proc nonicks { from keyword arguments } {
global black
	set hand $::hand
	set nick $::wnick
	blacktools:tell:prv $nick hostname $hand whois.5 none
	check:if:bind "nonicks" "401"
}

################################### clear ###############################

proc clearpublic {nick host hand chan arg} {
global black
	set why [lindex [split $arg] 0]
	set chan1 "$chan"
	set type 0
if {[regexp {^[&#]} $why] && [matchattr $hand nm|- $chan]} {
	set chan "$why"
	set why [lindex [split $arg] 1]
}
	clear:process $nick $host $hand $chan $chan1 $why $type
}

proc clear:process {nick host hand chan chan1 why type} {
global botnick black
	set char(p) [lindex $black(cmdchar) 0]
if {[string match -nocase "none" "$char(p)"]} {
	set char(p) ""
} 
if {[matchattr $hand -|q $chan]} { blacktools:tell $nick $host $hand $chan $chan1 gl.suspend none
	return
}
if {[matchattr $hand nm|- $chan]} {
if {($why == "")  && ($type == "0")} {
	blacktools:tell $nick $host $hand $chan $chan1 clear.1 none
	return
}
if {($why == "") && ($type == "1")} {	
	blacktools:tell $nick $host $hand $chan $chan1 clear.2 none
	return
	}
}
if {($why == "") && ($type == "0")} {
	blacktools:tell $nick $host $hand $chan $chan1 clear.3 none
	return
}
if {($why == "") && ($type == "1")} {
	blacktools:tell $nick $host $hand $chan $chan1 clear.4 none
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

if {([regexp -nocase -- {(#[0-9]+|banlist|userlist|settings|activ)} $why tmp cleanlist]) && (![regexp -nocase -- {\S#} $why])} {
    switch $cleanlist {
       userlist {
	set list [userlist -|AOSV $chan]
foreach user $list {
	chattr $user -|-AHOVS $chan
}
	blacktools:tell $nick $host $hand $chan $chan1 clear.5 none
}

activ {
	set counter 0
	set options "check($chan) id($chan) dr($chan) b($chan) spam($chan) n($chan) i($chan) Black($chan) w($chan) d($chan) k($chan) stick($chan) bw($chan) bot($chan)"

	foreach user [userlist "mn|HAMOVSo" $chan] {
	set counter [expr $counter + 1]
foreach op $options {
if {[getuser $user  XTRA $op] != "" || [getuser $user  XTRA $op] != 0} {
	setuser $user XTRA $op 0
		}
	}
}
	blacktools:tell $nick $host $hand $chan $chan1 clear.8 $counter
	return	
}

banlist {
	set i 0
foreach ban [banlist $chan] {
	set theban [lindex $ban 0]
if {[string match "*" $theban]} {
	set i [expr $i +1]
	killchanban $chan $theban
		}
	}
blacktools:tell $nick $host $hand $chan $chan1 clear.6 $i
}

settings {
	set settings "antipub topiclock antinotice antictcp antilongtext antibadword antijoinpart antispam antirepeat badquitpart anticolor antibold antiunderline anticaps badfullname badnick badident antijoinflood antichanflood xtools topicrefresh count antibadchan anunt limit refresh clonescan seen antidle antividle antididle autoop autovoice leave chanreport topwords xban protectop protectvoice dontop dontdeop private silent showtime showhandle showcount"	
	set counter 0
foreach setting $settings {
if {[channel get $chan $setting]} {
	set counter [expr $counter + 1]
	channel set $chan -$setting
					}
				}
	blacktools:tell $nick $host $hand $chan $chan1 clear.7 $counter
			}
		}
	}
}

proc autovonjoin {nick host hand chan} {
if {[channel get $chan autovoice]} {
pushmode $chan +v $nick
	}
}



proc autoponjoin {nick host hand chan} {
if {[channel get $chan autoop]} {
pushmode $chan +o $nick
	}
}

############################# auto #################################

proc auto:join {nick host hand chan} {
	global black
if {[matchattr $hand a|a $chan]} {
pushmode $chan +o $nick
}	

if {[matchattr $hand g|g $chan]} {
	pushmode $chan +v $nick
	}	
}


proc autopublic {nick host hand chan arg} { 
global black
	set type 0
	set chan1 "$chan"
	set user [lindex [split $arg] 1]
	set option [lindex [split $arg] 0]
	set global [lindex [split $arg] 2]
if {[regexp {^[&#]} $option] && [matchattr $hand nm|- $chan] && ![string equal -nocase $global "-global"]} {
	set chan "$option"
	set user [lindex [split $arg] 2]
	set option [lindex [split $arg] 1]
	set global [lindex [split $arg] 3]
}
	auto:process $nick $host $hand $chan $chan1 $user $option $global $type 
}

proc auto:process {nick host hand chan chan1 user option global type} {
	global black

if {[matchattr $hand nm|- $chan]} {
if {$type == "0"} {
if {![regexp {^[+ -]} $option]} {
	blacktools:tell $nick $host $hand $chan $chan1 auto.3 none
	return
}
if {$user == ""} {
	blacktools:tell $nick $host $hand $chan $chan1 auto.3 none
	return
}

} else {
	if {![regexp {^[+ -]} $option]} {
	blacktools:tell $nick $host $hand $chan $chan1 auto.4 none
	return
}
if {$user == ""} {
	blacktools:tell $nick $host $hand $chan $chan1 auto.4 none
	return
		}
	}
}
	
if {$type == "0"} {
if {![regexp {^[+ -]} $option]} {
	blacktools:tell $nick $host $hand $chan $chan1 auto.1 none
	return
}
if {$user == ""} {
	blacktools:tell $nick $host $hand $chan $chan1 auto.1 none
	return
}

} else {
if {![regexp {^[+ -]} $option]} {
	blacktools:tell $nick $host $hand $chan $chan1 auto.2 none
	return
}
if {$user == ""} {
	blacktools:tell $nick $host $hand $chan $chan1 auto.2 none
	return
	}
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

if {[matchattr $user nm|AM $chan] && [matchattr $hand nm|AM $chan] && [string equal -nocase $hand $user]} {
	auto:same $nick $host $hand $chan $chan1 $user $option $global $type
	return
}

if {[matchattr $user -|M $chan] && [matchattr $hand -|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return
}
if {[matchattr $user -|M $chan] && [matchattr $hand -|A $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return
}
if {[matchattr $user m|- $chan] && [matchattr $hand -|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return 
}
if {[matchattr $user m|- $chan] && [matchattr $hand m|- $chan] && (![matchattr $hand n|- $chan])} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return
}
if {[matchattr $user m|- $chan] && [matchattr $hand -|A $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return
}
if {[matchattr $user -|A $chan] && [matchattr $hand -|A $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return
}
if {[matchattr $user n|- $chan] && [matchattr $hand -|A $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return
}
if {[matchattr $user n|- $chan] && [matchattr $hand -|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return
}
if {[matchattr $user n|- $chan] && [matchattr $hand n|- $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return
}
if {[matchattr $user n|- $chan] && [matchattr $hand m|- $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
	return
	}	
}

if {[string equal -nocase "$global" "-global"] && [matchattr $hand nm|- $chan]} {

if {[string equal -nocase $option "+o"]} {
chattr $user +a
	blacktools:tell $nick $host $hand $chan $chan1 auto.12 $user
}

if {[string equal -nocase $option "-o"]} {
chattr $user -a
	blacktools:tell $nick $host $hand $chan $chan1 auto.20 $user
}

if {[string equal -nocase $option "+v"]} {
chattr $user +g
	blacktools:tell $nick $host $hand $chan $chan1 auto.13 $user
}

if {[string equal -nocase $option "-v"]} {
chattr $user -g
	blacktools:tell $nick $host $hand $chan $chan1 auto.21 $user
}
return
}

if {[string equal -nocase $option "+o"]} {
chattr $user -|a $chan
	blacktools:tell $nick $host $hand $chan $chan1 auto.10 $user
}

if {[string equal -nocase $option "-o"]} {
chattr $user -|-a $chan
	blacktools:tell $nick $host $hand $chan $chan1 auto.18 $user
}

if {[string equal -nocase $option "+v"]} {
chattr $user -|g $chan
	blacktools:tell $nick $host $hand $chan $chan1 auto.11 $user
}

if {[string equal -nocase $option "-v"]} {
chattr $user -|-g $chan
	blacktools:tell $nick $host $hand $chan $chan1 auto.19 $user
	}
}

proc auto:same {nick host hand chan chan1 user option global type} {
	global black

if {[string equal -nocase "$global" "-global"] && [matchattr $hand nm|- $chan]} {

if {[string equal -nocase $option "+o"]} {
chattr $user +a
	blacktools:tell $nick $host $hand $chan $chan1 auto.6 none
}

if {[string equal -nocase $option "-o"]} {
chattr $user -a
	blacktools:tell $nick $host $hand $chan $chan1 auto.14 none
}

if {[string equal -nocase $option "+v"]} {
chattr $user +g
	blacktools:tell $nick $host $hand $chan $chan1 auto.7 none
}

if {[string equal -nocase $option "-v"]} {
chattr $user -g
	blacktools:tell $nick $host $hand $chan $chan1 auto.15 none
}
	return
}	

if {[string equal -nocase $option "+o"]} {
chattr $user -|a $chan
	blacktools:tell $nick $host $hand $chan $chan1 auto.8 none
}

if {[string equal -nocase $option "-o"]} {
chattr $user -|-a $chan
	blacktools:tell $nick $host $hand $chan $chan1 auto.16 none
}

if {[string equal -nocase $option "+v"]} {
chattr $user -|g $chan
	blacktools:tell $nick $host $hand $chan $chan1 auto.9 none
}

if {[string equal -nocase $option "-v"]} {
chattr $user -|-g $chan
	blacktools:tell $nick $host $hand $chan $chan1 auto.17 none
	}
}



############################## activ ##################################

proc activpublic {nick host hand chan arg} { 
global black
	set type 0
	set chan1 "$chan"
	set user [lindex [split $arg] 0]
	set option [lindex [split $arg] 1]
if {[regexp {^[&#]} $user] && [matchattr $hand nm|- $chan]} {
	set chan "$user"
	set user [lindex [split $arg] 1]
	set option [lindex [split $arg] 2]
}
	activ:process $nick $host $hand $chan $chan1 $user $option $type
}

proc activ:process {nick host hand chan chan1 user option type} {
global botnick black
	set char(p) [lindex $black(cmdchar) 0]
if {[string match -nocase "none" "$char(p)"]} {
	set char(p) ""
} 
if {[matchattr $hand nm|- $chan]} {
if {($user == "")  && ($type == "0")} {
	blacktools:tell $nick $host $hand $chan $chan1 activ.1 none
	return
}
if {($user == "") && ($type == "1")} {
	blacktools:tell $nick $host $hand $chan $chan1 activ.2 none
	return
	}
}
if {($user == "") && ($type == "0")} {
	blacktools:tell $nick $host $hand $chan $chan1 activ.3 none
	return
}
if {($user == "") && ($type == "1")} {
	blacktools:tell $nick $host $hand $chan $chan1 activ.4 none
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

if {[matchattr $hand "mn|M" $chan]  && ($option != "")} {

if {(![string equal -nocase "-reset" $option])} {
	blacktools:tell $nick $host $hand $chan $chan1 activ.10 none
	return
}

if {![validuser $user]} { blacktools:tell $nick $host $hand $chan $chan1 gl.nomem none
	return
}

if {![matchattr $user mn|OAVMS $chan]} { blacktools:tell $nick $host $hand $chan $chan1 gl.noaccess none 
	return
}	
	set options "check($chan) id($chan) dr($chan) b($chan) spam($chan) n($chan) i($chan) Black($chan) w($chan) d($chan) k($chan) stick($chan) bw($chan) bot($chan)"
	set found_it 1
foreach op $options {
if {[getuser $user  XTRA $op] != "" || [getuser $user  XTRA $op] != 0} {
	setuser $user XTRA $op 0
		}
}
	blacktools:tell $nick $host $hand $chan $chan1 activ.11 $user
	return	
}

if {![validuser $user]} { blacktools:tell $nick $host $hand $chan $chan1 gl.nomem none
	return
}
if {![matchattr $user mn|OAVMS $chan]} { blacktools:tell $nick $host $hand $chan $chan1 gl.noaccess none 
	return
}
set dr [getuser $user XTRA DR($chan)]
set ban [getuser $user XTRA b($chan)]
set spam [getuser $user XTRA spam($chan)]
set badnick [getuser $user XTRA n($chan)]
set invite [getuser $user XTRA i($chan)]
set blacks [getuser $user XTRA Black($chan)]
set warn [getuser $user XTRA w($chan)]
set day [getuser $user XTRA d($chan)]
set kick [getuser $user XTRA k($chan)]
set stick [getuser $user XTRA stick($chan)]
set bw [getuser $user XTRA bw($chan)]
set bot [getuser $user XTRA bot($chan)]
set id [getuser $user XTRA id($chan)]
set check [getuser $user XTRA check($chan)]

if {$ban == ""} { set ban "0" }
if {$dr == ""} { set dr "0" }
if {$spam == ""} { set spam "0" }
if {$badnick == ""} { set badnick "0" }
if {$invite == ""} { set invite "0" }
if {$blacks == ""} { set blacks "0" }
if {$warn == ""} { set warn "0" }
if {$day == ""} { set day "0" }
if {$kick == ""} { set kick "0" }
if {$stick == ""} { set stick "0" }
if {$bw == ""} { set bw "0" }
if {$bot == ""} { set bot "0" }
if {$id == ""} { set id "0"}
if {$check == ""} { set check "0" }

if {[matchattr $user mn|AMS $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 activ.5 $user
	blacktools:tell $nick $host $hand $chan $chan1 activ.6 "- $char(p)dr - ($dr) | - $char(p)bot - ($bot) | - $char(p)b - ($ban) | - $char(p)spam - ($spam) | - $char(p)n - ($badnick) | - $char(p)i - ($invite) | - $char(p)black - ($blacks) | - $char(p)w - ($warn) | - $char(p)d - ($day) | - $char(p)k - ($kick) | - $char(p)stick - ($stick) | - $char(p)bw - ($bw) | - $char(p)id - ($id) | - $char(p)check - ($check) ."
	blacktools:tell $nick $host $hand $chan $chan1 activ.7 none
	return
}
if {[matchattr $user -|O $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 activ.8 $user
	blacktools:tell $nick $host $hand $chan $chan1 activ.6 "- $char(p)dr - ($dr) | - $char(p)bot - ($bot) | - $char(p)b - ($ban) | - $char(p)spam - ($spam) | - $char(p)n - ($badnick) | - $char(p)i - ($invite) | - $char(p)w - ($warn) | - $char(p)k - ($kick) | - $char(p)bw - ($bw) | - $char(p)id - ($id) | - $char(p)check - ($check) ."
	blacktools:tell $nick $host $hand $chan $chan1 activ.7 none
	return
}
if {[matchattr $user -|V $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 activ.9 $user
	blacktools:tell $nick $host $hand $chan $chan1 activ.6 "- $char(p)w - ($warn) | - $char(p)k - ($kick)"
	blacktools:tell $nick $host $hand $chan $chan1 activ.7 none
	return
	}
}


######################## cc (channel created) #######################

proc createdpublic { from keyword arguments } {
set hand $::hand
set nick $::ccnick
set date [lindex [split $arguments] 2]
set dates [ctime $date]
blacktools:tell:prv $nick host $hand cc.3 $dates
unbind RAW - 329 createdpublic
}

proc nocreatedpublic { from keyword arguments } {
set hand $::hand
set nick $::ccnick
blacktools:tell:prv $nick host $hand cc.4 none
unbind RAW - 403 nocreatedpublic

}

proc ccpublic {nick host hand chan arg} {
global black
set ::ccnick $nick
set ::hand $hand
set chan1 "$chan"
set c [lindex [split $arg] 0]
set char(p) [lindex $black(cmdchar) 0]
if {[string match -nocase "none" "$char(p)"]} {
set char(p) ""
} 
if {$c == ""} { blacktools:tell $nick $host $hand $chan $chan1 cc.1 none
return 0
}
if {![regexp {^[&#]} $c]} {
set c #$c
 } 

putquick "MODE $c"
bind raw - 329 createdpublic
bind raw - 403 nocreatedpublic
}



proc stats:process {nick host hand chan chan1} {
global botnick black username
	set statsdir "scripts/BlackTools/FILES/$username.stats.txt"
	set ops 0
	set numban 0
	set voices 0
	set numuser 0
	set getlang [string tolower [getuser $hand XTRA OUTPUT_LANG]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
	set time [unixtime]
	set file [open $statsdir "r"]
	set database [read -nonewline $file]
	set data [split $database "\n"]
foreach line $data {
	set c [lindex [split $line] 0]
	set type [lindex [split $line] 1]
if {[string match "ADDED" "$type"] && [string match -nocase $c $chan]} {
	set foundchan 1
	set chanadded 1
	set awho [lindex [split $line] 2]
	set ahost [lindex [split $line] 3]
	set a1time [lindex [split $line] 4]
if {[regexp {^[0-9]} $a1time]} { 
	set duration [duration [expr [unixtime] - $a1time]]
} else { set duration "NONE" }
if {[regexp {^[0-9]} $a1time]} {
	set atime [clock format $a1time -format %D-%H:%M:%S]
} else { set atime "NONE"}
	set replace(%ahost%) $ahost
	set replace(%atime%) $atime
	set replace(%duration%) $duration
	set replace(%awho%) $awho
	lappend mes "[string map [array get replace] $black(say.$getlang.stats.1)]" 
	lappend mes1 "[string map [array get replace] $black(say.$getlang.stats.2)]"
}
if {[string match "REMOVED" "$type"] && [string match -nocase $c $chan]} {
	set foundchan 1
	set chanremoved 1
	set rwho [lindex [split $line] 2]
	set rhost [lindex [split $line] 3]
	set rtime [lindex [split $line] 4]
	set a1time [lindex [split $line] 5]
if {[regexp {^[0-9]} $a1time]} { 
	set duration [duration [expr [unixtime] - $a1time]]
} else { set duration "NONE" }
if {[regexp {^[0-9]} $a1time]} {
	set atime [clock format $a1time -format %D-%H:%M:%S]
} else { set atime "NONE"}
if {[regexp {^[0-9]} $rtime]} {
	set rtime [clock format $rtime -format %D-%H:%M:%S]
} else { set rtime "NONE" }
	set awho [lindex [split $line] 6]
	set ahost [lindex [split $line] 7]
	set reason [lrange [split $line] 8 end]
	set replace(%ahost%) $ahost
	set replace(%atime%) $atime
	set replace(%rtime%) $rtime	
	set replace(%duration%) $duration
	set replace(%awho%) $awho
	set replace(%rwho%) $rwho
	set replace(%rhost%) $rhost
	set replace(%reason%) $reason
	lappend mes "[string map [array get replace] $black(say.$getlang.stats.1)]"
	lappend mes1 "[string map [array get replace] $black(say.$getlang.stats.3)]"
	lappend mes2 "[string map [array get replace] $black(say.$getlang.stats.4)]"
	lappend mes3 "[string map [array get replace] $black(say.$getlang.stats.14)]"
}

if {[string match "SUSPENDED" "$type"] && [string match -nocase $c $chan]} {
	set foundchan 1
	set chansuspended 1
	set rwho [lindex [split $line] 2]
	set rhost [lindex [split $line] 3]
	set rtime [lindex [split $line] 4]
	set a1time [lindex [split $line] 5]
if {[regexp {^[0-9]} $a1time]} { 
	set duration [duration [expr [unixtime] - $a1time]]
} else { set duration "NONE" }
if {[regexp {^[0-9]} $a1time]} {
	set atime [clock format $a1time -format %D-%H:%M:%S]
} else { set atime "NONE"}
if {[regexp {^[0-9]} $rtime]} {
	set rtime [clock format $rtime -format %D-%H:%M:%S]
} else { set rtime "NONE" }
	set awho [lindex [split $line] 6]
	set ahost [lindex [split $line] 7]
	set reason [lrange [split $line] 8 end]
	set replace(%ahost%) $ahost
	set replace(%atime%) $atime
	set replace(%stime%) $rtime	
	set replace(%duration%) $duration
	set replace(%awho%) $awho
	set replace(%swho%) $rwho
	set replace(%shost%) $rhost
	set replace(%reason%) $reason
	lappend mes "[string map [array get replace] $black(say.$getlang.stats.1)]"
	lappend mes1 "[string map [array get replace] $black(say.$getlang.stats.2)]"
	lappend mes2 "[string map [array get replace] $black(say.$getlang.stats.13)]"
	lappend mes3 "[string map [array get replace] $black(say.$getlang.stats.14)]"
	}
}
if {![info exists foundchan]} {
	blacktools:tell $nick $host $hand $chan $chan1 stats.5 none
	return
}
if {[validchan $chan]} {
if {[onchan $botnick $chan]} {
	set numban [llength [banlist $chan]]
	set numuser [llength [chanlist $chan]]
	foreach user [chanlist $chan] {
if {[isop $user $chan] && (![isvoice $user $chan])} {
	set ops [expr $ops +1]
}
if {[isvoice $user $chan]} {
	set voices [expr $voices +1]
			}
		}
	}
}

if {[info exists chanadded]} {
	blacktools:tell $nick $host $hand $chan $chan1 stats.6 none
	blacktools:tell $nick $host $hand $chan $chan1 stats.7 "[join $mes]"
if {[validchan $chan]} {
if {![onchan $botnick $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 stats.9 none 	
		} else {
	blacktools:tell $nick $host $hand $chan $chan1 stats.8 none
	}
} else { blacktools:tell $nick $host $hand $chan $chan1 stats.12 none }
	blacktools:tell $nick $host $hand $chan $chan1 stats.7 "[join $mes1]"
	blacktools:tell $nick $host $hand $chan $chan1 stats.10 "$numuser $ops $voices $numban"
	blacktools:tell $nick $host $hand $chan $chan1 stats.11 none
}

if {[info exists chanremoved]} {
	blacktools:tell $nick $host $hand $chan $chan1 stats.6 none
	blacktools:tell $nick $host $hand $chan $chan1 stats.7 "[join $mes]"	
	blacktools:tell $nick $host $hand $chan $chan1 stats.12 none
	blacktools:tell $nick $host $hand $chan $chan1 stats.7 "[join $mes1]"
	blacktools:tell $nick $host $hand $chan $chan1 stats.7 "[join $mes2]"
	blacktools:tell $nick $host $hand $chan $chan1 stats.7 "[join $mes3]"
	blacktools:tell $nick $host $hand $chan $chan1 stats.11 none
}
	
if {[info exists chansuspended]} {
if {$mes3 == ""} { set mes3 "NONE" }
	blacktools:tell $nick $host $hand $chan $chan1 stats.6 none
	blacktools:tell $nick $host $hand $chan $chan1 stats.7 "[join $mes]"
	blacktools:tell $nick $host $hand $chan $chan1 stats.12 none
	blacktools:tell $nick $host $hand $chan $chan1 stats.7 "[join $mes1]"
	blacktools:tell $nick $host $hand $chan $chan1 stats.7 "[join $mes2]"
	blacktools:tell $nick $host $hand $chan $chan1 stats.7 "[join $mes3]"
	blacktools:tell $nick $host $hand $chan $chan1 stats.11 none
	}	
}

####################### TopWords ####################################

proc topwordspublic {nick host hand chan arg} {
global black who username
set arg [split $arg]
if {![validchan $chan]} {
return 0
}
if {[channel get $chan topwords]} {
set lin 0
set wordsdir "logs/$username.$chan.words.db"
if {![file exists $wordsdir]} {
set file [open $wordsdir w]
close $file
}
set host "*!*@[lindex [split $host @] 1]"
set len($host) [llength $arg]
set words($host:$chan) $len($host)
if {[isbotnick $nick]} { return 0 }
set who "$chan $nick $host $words($host:$chan)"
set file [open $wordsdir "r"]
set database [read -nonewline $file]
close $file
set data [split $database "\n"]
foreach line $data {
set lin [expr $lin +1] 
set hhost [lindex [split $line] 2]
set hscore [lindex [split $line] 3]
set chanentry [lindex [split $line] 0]
if {[string match -nocase $hhost $host] && [string match -nocase $chanentry $chan]} {
lappend current($hhost:$chan) $hscore
set who "$chan $nick $hhost [expr $words($host:$chan) + $current($hhost:$chan)]"
if {$line != ""} {
set num [expr $lin - 1]
set delete [lreplace $data $num $num]
set files [open $wordsdir "w"]
puts $files [join $delete "\n"]
close $files
}
}
}
set file [open $wordsdir "r"]
set data [read -nonewline $file]
close $file
if {$data == ""} {
set files [open $wordsdir "w"]
close $files
}
set file [open $wordsdir "a"]
puts $file "$who"
close $file
}
}


################################## TOP ################################

proc toppublic {nick host hand chan arg} {
global black
set cmd [lindex [split $arg] 0]
set del [lindex [split $arg] 1]
set type 0
set chan1 "$chan"
if {[regexp {^[&#]} $cmd] && [matchattr $hand nm|- $chan]} {
set chan1 "$chan"
set chan "$cmd"
set cmd [lindex [split $arg] 1]
set del [lindex [split $arg] 2]
}
top:process $nick $host $hand $chan $chan1 $cmd $type $del
}


proc top:process {nick host hand chan chan1 cmd type del} {
global botnick black username
set max "20"
set i 0
set char(p) [lindex $black(cmdchar) 0]
if {[string match -nocase "none" "$char(p)"]} {
set char(p) ""
} 
set list [userlist nm|OSVAM $chan]
set wordsdir "logs/$username.$chan.words.db"
if {![file exists $wordsdir]} {
set file [open $wordsdir w]
close $file
}

if {[matchattr $hand nm|- $chan]} {
if {($cmd == "")  && ($type == "0")} {
blacktools:tell $nick $host $hand $chan $chan1 top.1 none
blacktools:tell $nick $host $hand $chan $chan1 top.2 none
return 0
}
if {($cmd == "") && ($type == "1")} {
blacktools:tell $nick $host $hand $chan $chan1 top.3 none
blacktools:tell $nick $host $hand $chan $chan1 top.4 none
return 0
}
}
if {($cmd == "") && ($type == "0")} {
blacktools:tell $nick $host $hand $chan $chan1 top.5 none
blacktools:tell $nick $host $hand $chan $chan1 top.6 none
return 0
}
if {($cmd == "") && ($type == "1")} {
blacktools:tell $nick $host $hand $chan $chan1 top.7 none
blacktools:tell $nick $host $hand $chan $chan1 top.8 none
return 0
}


if {![validchan $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.novalidchan none
return 0
}

if {![onchan $botnick $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.notonchan none
return 0
}


 
switch -exact -- [string tolower $cmd] {
       dr {
array set blacks [list] 
set list [userlist nm|OSVAM $chan] 
foreach user $list { 
 set b [getuser $user XTRA DR($chan)] 
 if {$b == ""} { set b 0 }
if {$b > 0} { 
 lappend blacks($b) $user
}
}

foreach blackq [lsort -integer -decreasing [array names blacks]] {
set i [expr $i +1]
lappend topblack - $i - : [join $blacks($blackq) ,] ($blackq) |
}
if {![info exists topblack]} { blacktools:tell $nick $host $hand $chan $chan1 top.9 none
return 0
}
blacktools:tell $nick $host $hand $chan $chan1 top.10 none
foreach txt [wordwrap [join $topblack " "] 300] {
blacktools:tell $nick $host $hand $chan $chan1 top.11 $txt
}
}

 b {
 
array set blacks [list] 
set list [userlist nm|OSVAM $chan] 
foreach user $list { 
 set b [getuser $user XTRA b($chan)] 
 if {$b == ""} { set b 0 }
if {$b > 0} { 
 lappend blacks($b) $user
}
}

foreach blackq [lsort -integer -decreasing [array names blacks]] {
set i [expr $i +1]
lappend topblack - $i - : [join $blacks($blackq) ,] ($blackq) |
}
if {![info exists topblack]} { blacktools:tell $nick $host $hand $chan $chan1 top.9 none
return 0
}
blacktools:tell $nick $host $hand $chan $chan1 top.12 none
foreach txt [wordwrap [join $topblack " "] 300] {
blacktools:tell $nick $host $hand $chan $chan1 top.11 $txt
}
}

bot {
 
array set blacks [list] 
set list [userlist nm|OSVAM $chan] 
foreach user $list { 
 set b [getuser $user XTRA bot($chan)] 
 if {$b == ""} { set b 0 }
if {$b > 0} { 
 lappend blacks($b) $user
}
}

foreach blackq [lsort -integer -decreasing [array names blacks]] {
set i [expr $i +1]
lappend topblack - $i - : [join $blacks($blackq) ,] ($blackq) |
}
if {![info exists topblack]} { blacktools:tell $nick $host $hand $chan $chan1 top.9 none
return 0
}
blacktools:tell $nick $host $hand $chan $chan1 top.13 none
foreach txt [wordwrap [join $topblack " "] 300] {
blacktools:tell $nick $host $hand $chan $chan1 top.11 $txt
}
}

bw {
 
array set blacks [list] 
set list [userlist nm|OSVAM $chan] 
foreach user $list { 
 set b [getuser $user XTRA bw($chan)] 
 if {$b == ""} { set b 0 }
if {$b > 0} { 
 lappend blacks($b) $user
}
}

foreach blackq [lsort -integer -decreasing [array names blacks]] {
set i [expr $i +1]
lappend topblack - $i - : [join $blacks($blackq) ,] ($blackq) |
}
if {![info exists topblack]} { blacktools:tell $nick $host $hand $chan $chan1 top.9 none
return 0
}
blacktools:tell $nick $host $hand $chan $chan1 top.14 none
foreach txt [wordwrap [join $topblack " "] 300] {
blacktools:tell $nick $host $hand $chan $chan1 top.11 $txt
}
}

black {
array set blacks [list] 
set list [userlist nm|OSVAM $chan] 
foreach user $list { 
 set b [getuser $user XTRA Black($chan)] 
 if {$b == ""} { set b 0 }
if {$b > 0} { 
 lappend blacks($b) $user
}
}

foreach blackq [lsort -integer -decreasing [array names blacks]] {
set i [expr $i +1]
lappend topblack - $i - : [join $blacks($blackq) ,] ($blackq) |
}
if {![info exists topblack]} { blacktools:tell $nick $host $hand $chan $chan1 top.9 none
return 0
}
blacktools:tell $nick $host $hand $chan $chan1 top.15 none
foreach txt [wordwrap [join $topblack " "] 300] {
blacktools:tell $nick $host $hand $chan $chan1 top.11 $txt
}
}


spam {
 
array set blacks [list] 
set list [userlist nm|OSVAM $chan] 
foreach user $list { 
 set b [getuser $user XTRA spam($chan)] 
 if {$b == ""} { set b 0 }
if {$b > 0} { 
 lappend blacks($b) $user
}
}

foreach blackq [lsort -integer -decreasing [array names blacks]] {
set i [expr $i +1]
lappend topblack - $i - : [join $blacks($blackq) ,] ($blackq) |
}
if {![info exists topblack]} { blacktools:tell $nick $host $hand $chan $chan1 top.9 none
return 0
}
blacktools:tell $nick $host $hand $chan $chan1 top.16 none
foreach txt [wordwrap [join $topblack " "] 300] {
blacktools:tell $nick $host $hand $chan $chan1 top.11 $txt
}
}

stick {
 
array set blacks [list] 
set list [userlist nm|OSVAM $chan] 
foreach user $list { 
 set b [getuser $user XTRA stick($chan)] 
 if {$b == ""} { set b 0 }
if {$b > 0} { 
 lappend blacks($b) $user
}
}

foreach blackq [lsort -integer -decreasing [array names blacks]] {
set i [expr $i +1]
lappend topblack - $i - : [join $blacks($blackq) ,] ($blackq) |
}
if {![info exists topblack]} { blacktools:tell $nick $host $hand $chan $chan1 top.9 none
return 0
}
blacktools:tell $nick $host $hand $chan $chan1 top.17 none
foreach txt [wordwrap [join $topblack " "] 300] {
blacktools:tell $nick $host $hand $chan $chan1 top.11 $txt
}
}

n {
 
array set blacks [list] 
set list [userlist nm|OSVAM $chan] 
foreach user $list { 
 set b [getuser $user XTRA n($chan)] 
 if {$b == ""} { set b 0 }
if {$b > 0} { 
 lappend blacks($b) $user
}
}

foreach blackq [lsort -integer -decreasing [array names blacks]] {
set i [expr $i +1]
lappend topblack - $i - : [join $blacks($blackq) ,] ($blackq) |
}
if {![info exists topblack]} { blacktools:tell $nick $host $hand $chan $chan1 top.9 none
return 0
}
blacktools:tell $nick $host $hand $chan $chan1 top.18 none
foreach txt [wordwrap [join $topblack " "] 300] {
blacktools:tell $nick $host $hand $chan $chan1 top.11 $txt
}
}


i {
 
array set blacks [list] 
set list [userlist nm|OSVAM $chan] 
foreach user $list { 
 set b [getuser $user XTRA i($chan)] 
 if {$b == ""} { set b 0 }
if {$b > 0} { 
 lappend blacks($b) $user
}
}

foreach blackq [lsort -integer -decreasing [array names blacks]] {
set i [expr $i +1]
lappend topblack - $i - : [join $blacks($blackq) ,] ($blackq) |
}
if {![info exists topblack]} { blacktools:tell $nick $host $hand $chan $chan1 top.9 none
return 0
}
blacktools:tell $nick $host $hand $chan $chan1 top.19 none
foreach txt [wordwrap [join $topblack " "] 300] {
blacktools:tell $nick $host $hand $chan $chan1 top.11 $txt
}
}

k {
 
array set blacks [list] 
set list [userlist nm|OSVAM $chan] 
foreach user $list { 
 set b [getuser $user XTRA k($chan)] 
 if {$b == ""} { set b 0 }
if {$b > 0} { 
 lappend blacks($b) $user
}
}

foreach blackq [lsort -integer -decreasing [array names blacks]] {
set i [expr $i +1]
lappend topblack - $i - : [join $blacks($blackq) ,] ($blackq) |
}
if {![info exists topblack]} { blacktools:tell $nick $host $hand $chan $chan1 top.9 none
return 0
}
blacktools:tell $nick $host $hand $chan $chan1 top.20 none
foreach txt [wordwrap [join $topblack " "] 300] {
blacktools:tell $nick $host $hand $chan $chan1 top.11 $txt
}
}

w {
 
array set blacks [list] 
set list [userlist nm|OSVAM $chan] 
foreach user $list { 
 set b [getuser $user XTRA w($chan)] 
 if {$b == ""} { set b 0 }
if {$b > 0} { 
 lappend blacks($b) $user
}
}

foreach blackq [lsort -integer -decreasing [array names blacks]] {
set i [expr $i +1]
lappend topblack - $i - : [join $blacks($blackq) ,] ($blackq) |
}
if {![info exists topblack]} { blacktools:tell $nick $host $hand $chan $chan1 top.9 none
return 0
}
blacktools:tell $nick $host $hand $chan $chan1 top.21 none
foreach txt [wordwrap [join $topblack " "] 300] {
blacktools:tell $nick $host $hand $chan $chan1 top.11 $txt
}
}

d {
 
array set blacks [list] 
set list [userlist nm|OSVAM $chan] 
foreach user $list { 
 set b [getuser $user XTRA d($chan)] 
 if {$b == ""} { set b 0 }
if {$b > 0} { 
 lappend blacks($b) $user
}
}

foreach blackq [lsort -integer -decreasing [array names blacks]] {
set i [expr $i +1]
lappend topblack - $i - : [join $blacks($blackq) ,] ($blackq) |
}
if {![info exists topblack]} { blacktools:tell $nick $host $hand $chan $chan1 top.9 none
return 0
}
blacktools:tell $nick $host $hand $chan $chan1 top.22 none
foreach txt [wordwrap [join $topblack " "] 300] {
blacktools:tell $nick $host $hand $chan $chan1 top.11 $txt
}
}

words {
array set topw [list]
if {![channel get $chan topwords]} {
blacktools:tell $nick $host $hand $chan $chan1 top.23 none
return 0
}
if {[string match -nocase $del "erase"] && [matchattr $hand nm|M $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 top.24 none
set file [open $wordsdir "w"]
close $file
return 0
}
set file [open $wordsdir "r"]
set database [read -nonewline $file]
close $file
if {$database == ""} { blacktools:tell $nick $host $hand $chan $chan1 top.9 none
return 0
}
set data [split $database "\n"]
foreach line $data {
set hhost [lindex [split $line] 2]
set hentry [lindex [split $line] 1]
set chanentry [lindex [split $line] 0]
set tw [lindex [split $line] 3]
if {[string match -nocase $chanentry $chan]} {
lappend topw($tw) $hentry
}
}
foreach twords [lsort -integer -decreasing [array names topw]] {
set i [expr $i +1]
if {!($i > $max)} {
lappend topwo - $i - : [join $topw($twords) ,] ($twords) |
}
}
if {![info exists topwo]} { blacktools:tell $nick $host $hand $chan $chan1 top.9 none
return 0
}
blacktools:tell $nick $host $hand $chan $chan1 top.25 $max
foreach txt [wordwrap [join $topwo " "] 300] {
blacktools:tell $nick $host $hand $chan $chan1 top.11 $txt
}
}

}
}

proc securepublic {nick host hand chan arg} {
global black
set what [lindex [split $arg] 0]
set type 0
set chan1 "$chan"
if {[regexp {^[&#]} $what] && [matchattr $hand nm|- $chan]} {
set chan "$what"
set what [lindex [split $arg] 1]
}
secure:process $nick $host $hand $chan $chan1 $what $type
}


proc secure:process {nick host hand chan chan1 what type} {
global botnick black
set char(p) [lindex $black(cmdchar) 0]
if {[string match -nocase "none" "$char(p)"]} {
set char(p) ""
} 
if {[matchattr $hand nm|- $chan]} {
if {($what == "")  && ($type == "0")} {
blacktools:tell $nick $host $hand $chan $chan1 secure.1 none
return 0
}
if {($what == "") && ($type == "1")} {
blacktools:tell $nick $host $hand $chan $chan1 secure.2 none
return 0
}
}
if {($what == "") && ($type == "0")} {
blacktools:tell $nick $host $hand $chan $chan1 secure.3 none
return 0
}
if {($what == "") && ($type == "1")} {
blacktools:tell $nick $host $hand $chan $chan1 secure.4 none
return 0
}


if {![validchan $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.novalidchan none
return 0
}

if {![onchan $botnick $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.notonchan none
return 0
}




if {[string match -nocase "$what" "on"]} {
set char(a) "+"
channel set $chan $char(a)antipub ; channel set $chan $char(a)antinotice ; channel set $chan $char(a)antictcp ; channel set $chan $char(a)antibadword ; channel set $chan $char(a)antibadword ; channel set $chan $char(a)antilongtext ; channel set $chan $char(a)badquitpart ; channel set $chan $char(a)antijoinpart ; channel set $chan $char(a)antispam ; channel set $chan $char(a)antirepeat ; channel set $chan $char(a)anticolor ; channel set $chan $char(a)antibold ; channel set $chan $char(a)antiunderline ; channel set $chan $char(a)anticaps ; channel set $chan $char(a)badnick ; channel set $chan $char(a)badfullname ; channel set $chan $char(a)antijoinflood ; channel set $chan $char(a)antichanflood ; channel set $chan $char(a)badident
blacktools:tell $nick $host $hand $chan $chan1 secure.5 none
}
if {[string match -nocase "$what" "off"]} {
set char(a) "-"
channel set $chan $char(a)antipub ; channel set $chan $char(a)antinotice ; channel set $chan $char(a)antictcp ; channel set $chan $char(a)antibadword ; channel set $chan $char(a)antibadword ; channel set $chan $char(a)antilongtext ; channel set $chan $char(a)badquitpart ; channel set $chan $char(a)antijoinpart ; channel set $chan $char(a)antispam ; channel set $chan $char(a)antirepeat ; channel set $chan $char(a)anticolor ; channel set $chan $char(a)antibold ; channel set $chan $char(a)antiunderline ; channel set $chan $char(a)anticaps ; channel set $chan $char(a)badnick ; channel set $chan $char(a)badfullname ; channel set $chan $char(a)antijoinflood ; channel set $chan $char(a)antichanflood ; channel set $chan $char(a)badident
blacktools:tell $nick $host $hand $chan $chan1 secure.6 none
}
}

proc hpublic {nick host hand chan arg} {
global black botnick
set chan1 "$chan"
set command [lindex [split $arg] 0]
h:process $nick $host $hand $chan $chan1 $command
}

proc unset:floodcmd {host chan} {
global count
if {[info exists count(floodcmd:$host:$chan)]} {
unset count(floodcmd:$host:$chan)
}
}

proc h:process {nick host hand chan chan1 command} {
global black botnick count
	set char(p) [lindex $black(cmdchar) 0]
	set number [scan $black(antiflood:cmd) %\[^:\]]
	set timer [scan $black(antiflood:cmd) %*\[^:\]:%s]
if {[string match -nocase "none" "$char(p)"]} {
set char(p) ""
}	

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
if {[string match "*count(floodcmd:$host:$chan)*" [join [lindex $tmr 1]]]} {
	killutimer [lindex $tmr 2]
	}
}
if {![info exists count(floodcmd:$host:$chan)]} { 
	set count(floodcmd:$host:$chan) 0 
}
	incr count(floodcmd:$host:$chan)
	utimer $timer [list unset:floodcmd $host $chan]

if {$count(floodcmd:$host:$chan) == "$number"} {
	blacktools:tell $nick $host $hand $chan $chan1 h.16 "30 h"
	set black(flood:activ:$host) 1
	utimer 30 [list unset black(flood:activ:$host)]
	return
}
	set replace(%chan%) $chan
	set replace(%char%) $char(p)
	set greeting [getuser $hand XTRA GREET]
	set chanlang [string tolower [channel get $chan lang]]
if {$chanlang == ""} { set chanlang "[string tolower $black(default_lang)]" }
if {$greeting == ""} {
if {[matchattr $hand n]} {
	putserv "PRIVMSG $nick :[string map [array get replace] $black(say.$chanlang.greeting.1)]"
	putserv "PRIVMSG $nick :[string map [array get replace] $black(say.$chanlang.greeting.2)]"
	putserv "PRIVMSG $nick :[string map [array get replace] $black(say.$chanlang.greeting.3)]"
	putserv "PRIVMSG $nick :[string map [array get replace] $black(say.$chanlang.greeting.5)]"
	putserv "PRIVMSG $nick :[string map [array get replace] $black(say.$chanlang.greeting.4)]"
	setuser $hand XTRA GREET 1
	return
}
	putserv "PRIVMSG $nick :[string map [array get replace] $black(say.$chanlang.greeting.1)]"
	putserv "PRIVMSG $nick :[string map [array get replace] $black(say.$chanlang.greeting.2)]"
	putserv "PRIVMSG $nick :[string map [array get replace] $black(say.$chanlang.greeting.3)]"
	putserv "PRIVMSG $nick :[string map [array get replace] $black(say.$chanlang.greeting.4)]"
	setuser $hand XTRA GREET 1
	return
}
	set getlang [string tolower [getuser $hand XTRA OUTPUT_LANG]]
	set replace(%char%) "$char(p)"
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
if {[matchattr $hand -|q $chan]} { blacktools:tell $nick $host $hand $chan $chan1 gl.suspend none
	return
}
if {$command == ""} {
if {[matchattr $hand n|- $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 h.1 none
	blacktools:tell $nick $host $hand $chan $chan1 h.2 none
	return
}
if {[matchattr $hand m|- $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 h.3 none
	blacktools:tell $nick $host $hand $chan $chan1 h.4 none
	return
}
if {[matchattr $hand -|V $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 h.5 none
	blacktools:tell $nick $host $hand $chan $chan1 h.6 none
	return
}
if {[matchattr $hand -|O $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 h.7 none	
	blacktools:tell $nick $host $hand $chan $chan1 h.8 none
	return
}
if {[matchattr $hand -|S $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 h.9 none	
	blacktools:tell $nick $host $hand $chan $chan1 h.10 none
	return
}
if {[matchattr $hand -|A $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 h.11 none
	blacktools:tell $nick $host $hand $chan $chan1 h.12 none
	return
}
if {[matchattr $hand -|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 h.13 none
	blacktools:tell $nick $host $hand $chan $chan1 h.14 none
	return
}
	return
}
switch -exact -- [string tolower $command] {

cmds {
if {[matchattr $hand -|V $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 cmdsvoice none
	blacktools:tell $nick $host $hand $chan $chan1 h.15 $black(say.$getlang.cmds_more_1)
	blacktools:tell $nick $host $hand $chan $chan1 hcommand.1 none
	return
}

if {[matchattr $hand -|O $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 h.15 [string map [array get replace] $black(say.$getlang.cmdsop)]
	blacktools:tell $nick $host $hand $chan $chan1 h.15 $black(say.$getlang.cmds_more)
	blacktools:tell $nick $host $hand $chan $chan1 hcommand.1 none
	return
}

if {[matchattr $hand -|S $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 h.15 [string map [array get replace] $black(say.$getlang.cmdsenior)]
	blacktools:tell $nick $host $hand $chan $chan1 h.15 $black(say.$getlang.cmds_more)	
	blacktools:tell $nick $host $hand $chan $chan1 hcommand.1 none
	return
}

if {[matchattr $hand -|A $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 h.15 [string map [array get replace] $black(say.$getlang.cmdadmin)]
	blacktools:tell $nick $host $hand $chan $chan1 h.15 $black(say.$getlang.cmds_more)
	blacktools:tell $nick $host $hand $chan $chan1 hcommand.1 none
	return
}

if {[matchattr $hand -|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 h.15 [string map [array get replace] $black(say.$getlang.cmdmanager)]
	blacktools:tell $nick $host $hand $chan $chan1 h.15 $black(say.$getlang.cmds_more)
	blacktools:tell $nick $host $hand $chan $chan1 hcommand.1 none
	return
}

if {[matchattr $hand n|- $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 h.15 [string map [array get replace] $black(say.$getlang.cmdbossowner)]
	blacktools:tell $nick $host $hand $chan $chan1 h.15 $black(say.$getlang.cmds_more)
	blacktools:tell $nick $host $hand $chan $chan1 hcommand.1 none
	return
}

if {[matchattr $hand m|- $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 h.15 [string map [array get replace] $black(say.$getlang.cmdowner)]
	blacktools:tell $nick $host $hand $chan $chan1 h.15 $black(say.$getlang.cmds_more)
	blacktools:tell $nick $host $hand $chan $chan1 hcommand.1 none
	return
	}
}

ban {

if {[matchattr $hand -|V $chan]} {
foreach txt [wordwrap [join [string map [array get replace] $black(say.$getlang.banvoice)] " "] 450] {
	blacktools:tell $nick $host $hand $chan $chan1 h.15 $txt
}
	blacktools:tell $nick $host $hand $chan $chan1 hcommand.1 none
	return
}

if {[matchattr $hand -|O $chan]} {
foreach txt [wordwrap [join [string map [array get replace] $black(say.$getlang.banop)] " "] 300] {
	blacktools:tell $nick $host $hand $chan $chan1 h.15 $txt
}
	blacktools:tell $nick $host $hand $chan $chan1 hcommand.1 none
	return
}

if {[matchattr $hand -|S $chan]} {
foreach txt [wordwrap [join [string map [array get replace] $black(say.$getlang.bansenior)] " "] 300] {
	blacktools:tell $nick $host $hand $chan $chan1 h.15 $txt
}
	blacktools:tell $nick $host $hand $chan $chan1 hcommand.1 none
	return
}

if {[matchattr $hand -|A $chan]} {
foreach txt [wordwrap [join [string map [array get replace] $black(say.$getlang.banadmin)] " "] 300] {
	blacktools:tell $nick $host $hand $chan $chan1 h.15 $txt
}
	blacktools:tell $nick $host $hand $chan $chan1 hcommand.1 none
	return
}

if {[matchattr $hand -|M $chan]} {
foreach txt [wordwrap [join [string map [array get replace] $black(say.$getlang.banmanager)] " "] 300] {
	blacktools:tell $nick $host $hand $chan $chan1 h.15 $txt
}
	blacktools:tell $nick $host $hand $chan $chan1 hcommand.1 none
	return
}

if {[matchattr $hand n|- $chan]} {
foreach txt [wordwrap [join [string map [array get replace] $black(say.$getlang.banbossowner)] " "] 440] {	
	blacktools:tell $nick $host $hand $chan $chan1 h.15 $txt
}
	blacktools:tell $nick $host $hand $chan $chan1 hcommand.1 none
	return
}

if {[matchattr $hand m|- $chan]} {
foreach txt [wordwrap [join [string map [array get replace] $black(say.$getlang.banowner)] " "] 440] {
	blacktools:tell $nick $host $hand $chan $chan1 h.15 $txt
}
	blacktools:tell $nick $host $hand $chan $chan1 hcommand.1 none
	return
	}
}

add {

if {[matchattr $hand -|A $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 addadmin none
	return
	blacktools:tell $nick $host $hand $chan $chan1 hcommand.1 none
}

if {[matchattr $hand -|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 addmanager none
	blacktools:tell $nick $host $hand $chan $chan1 hcommand.1 none
	return
}

if {[matchattr $hand n|- $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 addbossowner none
	blacktools:tell $nick $host $hand $chan $chan1 hcommand.1 none
	return
}

if {[matchattr $hand m|- $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 addowner none
	blacktools:tell $nick $host $hand $chan $chan1 hcommand.1 none
	return
	}
}

owner {
if {[matchattr $hand nm|- $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 howner none
	blacktools:tell $nick $host $hand $chan $chan1 howner_1 none
	blacktools:tell $nick $host $hand $chan $chan1 hcommand.1 none
	
	}
}

top {
if {[matchattr $hand nm|MASOV $chan]} {
if {[matchattr $hand nm|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 htop none
	blacktools:tell $nick $host $hand $chan $chan1 htop_1 none
return
}
	blacktools:tell $nick $host $hand $chan $chan1 htop none
	blacktools:tell $nick $host $hand $chan $chan1 htop_2 none
	}
}

blacktools {
if {[matchattr $hand nm|MAOS $chan]} {
if {[channel get $chan antipub]} { set pubstatus "+antipub" } else { set pubstatus "-antipub" }
if {[channel get $chan antinotice]} { set noticestatus "+antinotice" } else { set noticestatus "-antinotice" }
if {[channel get $chan antictcp]} { set ctcpstatus "+antictcp" } else { set ctcpstatus "-antictcp" }
if {[channel get $chan antibadword]} { set badwordstatus "+antibadword" } else { set badwordstatus "-antibadword" }
if {[channel get $chan antilongtext]} { set longtextstatus "+antilongtext" } else { set longtextstatus "-antilongtext" }
if {[channel get $chan badquitpart]} { set badquitpartstatus "+badquitpart" } else { set badquitpartstatus "-badquitpart" }
if {[channel get $chan antijoinpart]} { set joinpartstatus "+antijoinpart" } else { set joinpartstatus "-antijoinpart" }
if {[channel get $chan antispam]} { set antispamstatus "+antispam" } else { set antispamstatus "-antispam" }
if {[channel get $chan antirepeat]} { set repeatstatus "+antirepeat" } else { set repeatstatus "-antirepeat" }
if {[channel get $chan anticolor]} { set colorstatus "+anticolor" } else { set colorstatus "-anticolor" }
if {[channel get $chan antibold]} { set boldstatus "+antibold" } else { set boldstatus "-antibold" }
if {[channel get $chan antiunderline]} { set underlinestatus "+antiunderline" } else { set underlinestatus "-antiunderline" }
if {[channel get $chan anticaps]} { set capsstatus "+anticaps" } else { set capsstatus "-anticaps" }
if {[channel get $chan badnick]} { set nickstatus "+badnick" } else { set nickstatus "-badnick" }
if {[channel get $chan badfullname]} { set fullnamestatus "+badfullname" } else { set fullnamestatus "-badfullname" }
if {[channel get $chan autoop]} { set opstatus "+autoop" } else { set opstatus "-autoop" }
if {[channel get $chan autovoice]} { set voicestatus "+autovoice" } else { set voicestatus "-autovoice" }
if {[channel get $chan antijoinflood]} { set joinfloodstatus "+antijoinflood" } else { set joinfloodstatus "-antijoinflood" }
if {[channel get $chan antichanflood]} { set chanfloodstatus "+antichanflood" } else { set chanfloodstatus "-antichanflood" }
if {[channel get $chan badident]} { set badidentstatus "+badident" } else { set badidentstatus "-badident" }
if {[channel get $chan showtime]} { set showtimestatus "+showtime" } else { set showtimestatus "-showtime" }
if {[channel get $chan showhandle]} { set showhandlestatus "+showhandle" } else { set showhandlestatus "-showhandle" }
if {[channel get $chan showcount]} { set showhandlestatus "+showcount" } else { set showcountstatus "-showcount" }

set xbantime [channel get $chan xbantime]
if {$xbantime == "0"} { set xbantime 1 }
set xbanlevel [channel get $chan xbanlevel]
if {$xbanlevel == "0"} { set xbanlevel 100 }
set oprotect [channel get $chan oprotect]
if {$oprotect == ""} { set oprotect "ON" }
set vprotect [channel get $chan vprotect]
if {$vprotect == ""} { set vprotect "ON" }

if {[matchattr $hand -|AOS $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 hblacktools.1 "$pubstatus \002$noticestatus\002 $ctcpstatus \002$badwordstatus\002 $longtextstatus \002$badquitpartstatus\002 $joinpartstatus \002$antispamstatus\002 $repeatstatus \002$colorstatus\002 $boldstatus \002$underlinestatus\002 $capsstatus \002$nickstatus\002 $fullnamestatus \002$opstatus\002 $voicestatus \002$joinfloodstatus\002 $chanfloodstatus \002$badidentstatus\002 $showtimestatus \002$showhandlestatus\002 $showcountstatus \[\002xbantime\002 $xbantime\] \[\002xbanlevel\002 $xbanlevel\] \[\002oprotect\002 $oprotect\] \[\002vprotect\002 $vprotect\]."
return
}

blacktools:tell $nick $host $hand $chan $chan1 hblacktools.1 "$pubstatus \002$noticestatus\002 $ctcpstatus \002$badwordstatus\002 $longtextstatus \002$badquitpartstatus\002 $joinpartstatus \002$antispamstatus\002 $repeatstatus \002$colorstatus\002 $boldstatus \002$underlinestatus\002 $capsstatus \002$nickstatus\002 $fullnamestatus \002$opstatus\002 $voicestatus \002$joinfloodstatus\002 $chanfloodstatus \002$badidentstatus\002 $showtimestatus \002$showhandlestatus\002 $showcountstatus \[\002xbantime\002 $xbantime\] \[\002xbanlevel\002 $xbanlevel\] \[\002oprotect\002 $oprotect\] \[\002vprotect\002 $vprotect\]."
blacktools:tell $nick $host $hand $chan $chan1 hblacktools.2 none
blacktools:tell $nick $host $hand $chan $chan1 hblacktools.3 none	
	}
}

standard {
if {[matchattr $hand nm|MAOS $chan]} {

set blacktools_flags {
 antipub
 antinotice
 antictcp
 antilongtext
 antibadword
 antijoinpart
 antispam
 antirepeat
 badquitpart
 anticolor
 antibold
 antiunderline
 anticaps
 badfullname
 badnick
 badident
 antijoinflood
 antichanflood
 xtools
 topicrefresh
 count
 antibadchan
 anunt
 limit
 refresh
 clonescan
 seen
 antidle
 antividle
 antididle
 autoop
 autovoice
 leave
 chanreport
 topwords
 xban
 protectop
 protectvoice
 dontop
 dontdeop
 private
 silent
 showtime
 showhandle
 showcount
 next
 topiclock 
}

foreach info [channel info $chan] { 
if {[regexp {^[+ -]} $info]} {
	set trim_info [string trim $info {
"+"
"-"}]
if {[lsearch -exact $blacktools_flags $trim_info] == -1} {
if {[channel get $chan chanmode] != $info} {
 lappend flag_list $info
			}
		}
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

if {[matchattr $hand -|AOS $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 hstandard.1 none
	blacktools:tell $nick $host $hand $chan $chan1 hstandard.4 "flood-chan $floodchan flood-join $floodjoin flood-kick $floodkick flood-ctcp $floodctcp flood-nick $floodnick flood-deop $flooddeop ; bantime $bantime chanmode $chanmode"
foreach flag [wordwrap $flag_list 400] {
if {$flag != ""} {
	blacktools:tell $nick $host $hand $chan $chan1 hstandard.3 $flag
		}
	}
return
}

blacktools:tell $nick $host $hand $chan $chan1 hstandard.1 none
blacktools:tell $nick $host $hand $chan $chan1 hstandard.4 "flood-chan $floodchan flood-join $floodjoin flood-kick $floodkick flood-ctcp $floodctcp flood-nick $floodnick flood-deop $flooddeop ; bantime $bantime chanmode $chanmode"
foreach flag [wordwrap $flag_list 400] {
if {$flag != ""} {
	blacktools:tell $nick $host $hand $chan $chan1 hstandard.3 $flag
			}
		}
	blacktools:tell $nick $host $hand $chan $chan1 hstandard.5 none	
	}
}

chaninfo {
if {[matchattr $hand nm|MAOS $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 hchaninfo.1 none
blacktools:tell $nick $host $hand $chan $chan1 hchaninfo.2 none
blacktools:tell $nick $host $hand $chan $chan1 hchaninfo.3 none
blacktools:tell $nick $host $hand $chan $chan1 hchaninfo.4 none
blacktools:tell $nick $host $hand $chan $chan1 hchaninfo.5 none
blacktools:tell $nick $host $hand $chan $chan1 hchaninfo.6 none
	return
	}
if {[matchattr $hand -|V $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 hchaninfo.1 none
	blacktools:tell $nick $host $hand $chan $chan1 hchaninfo.7 none
	blacktools:tell $nick $host $hand $chan $chan1 hchaninfo.5 none
	blacktools:tell $nick $host $hand $chan $chan1 hchaninfo.6 none
	}
}

module {

set module_manager "\002TopicRefresh\002 Count \002XtoolS\002 BadChan \002Anunt\002 Limit \002CloneScan\002 Seen \002Greet\002 Leave \002Idle\002 Chanreport \002TopWords\002 Xban \002AntiTake\002 Private \002Next\002 AutoBroadcast \002AntiBotIdle\002 Language \002Topic\002 BadWordAdd \002AntipubExcept\002 TCL"

foreach mod  $module_manager {
switch [string tolower [antibadword:filter $mod]] {
topicrefresh {
if {[channel get $chan topicrefresh]} { set status "ON"} else { set status "OFF"}
lappend module_list "$mod\[$status\] |"
}
count {
if {[channel get $chan count]} { set status "ON"} else { set status "OFF"}
lappend module_list "$mod\[$status\] |"
}

xtools {
if {[channel get $chan xtools]} { set status "ON"} else { set status "OFF"}
lappend module_list "$mod\[$status\] |"
}

badchan {
if {[channel get $chan antibadchan]} { set status "ON"} else { set status "OFF"}
lappend module_list "$mod\[$status\] |"
	}
	
anunt {
if {[channel get $chan anunt]} { set status "ON"} else { set status "OFF"}
lappend module_list "$mod\[$status\] |"
	}

limit {
if {[channel get $chan limit]} { set status "ON"} else { set status "OFF"}
lappend module_list "$mod\[$status\] |"
}	
	
clonescan {
if {[channel get $chan clonescan]} { set status "ON"} else { set status "OFF"}
lappend module_list "$mod\[$status\] |"
}

seen {
if {[channel get $chan seen]} { set status "ON"} else { set status "OFF"}
lappend module_list "$mod\[$status\] |"
}

greet {
if {[channel get $chan greet]} { set status "ON"} else { set status "OFF"}
lappend module_list "$mod\[$status\] |"
}

leave {
if {[channel get $chan leave]} { set status "ON"} else { set status "OFF"}
lappend module_list "$mod\[$status\] |"
}

idle {
if {[channel get $chan antidle]} { set status "ON"} else { set status "OFF"}
if {[channel get $chan antididle]} { set statuso "ON"} else { set statuso "OFF"}
if {[channel get $chan antividle]} { set statusv "ON"} else { set statusv "OFF"}
lappend module_list "$mod\[$status\] (OP\[$statuso\] - VOICE\[$statusv\]) |"
}

chanreport {
if {[channel get $chan chanreport]} { set status "ON"} else { set status "OFF"}
lappend module_list "$mod\[$status\] |"
}

topwords {
if {[channel get $chan topwords]} { set status "ON"} else { set status "OFF"}
lappend module_list "$mod\[$status\] |"
}

xban {
if {[channel get $chan xban]} { set status "ON"} else { set status "OFF"}
lappend module_list "$mod\[$status\] |"
}

antitake {
if {[channel get $chan dontop] || [channel get $chan dontdeop]} { set status "ON"} else { set status "OFF"}
if {[channel get $chan dontop]} { set statusdo "ON"} else { set statusdo "OFF"}
if {[channel get $chan dontdeop]} { set statusde "ON"} else { set statusde "OFF"}
lappend module_list "$mod\[$status\] (DONTOP\[$statusdo\] - DONTDEOP\[$statusde\]) |"
}

private {
if {[channel get $chan private]} { set status "ON"} else { set status "OFF"}
lappend module_list "$mod\[$status\] |"
}

next {
if {[channel get $chan next]} { set status "ON"} else { set status "OFF"}
lappend module_list "$mod\[$status\] |"
}

language {
if {[channel get $chan lang] == ""} { 
set lang $black(default_lang) 
} else { set lang [channel get $chan lang] }
	lappend module_list "$mod\[[string toupper $lang]\] |"
}

antibotidle {
if {[matchattr $hand m|- $chan]} {
	set status "OFF"
foreach tmr [timers] {
if {[string match "*antibotidle:module*" [join [lindex $tmr 1]]]} {
	set status "ON"
	}
}
	lappend module_list "$mod\[$status\] |"
	}
}

autobroadcast {
if {[matchattr $hand m|- $chan]} {
	set status "OFF"
foreach tmr [timers] {
if {[string match "*broadcastpublic:show*" [join [lindex $tmr 1]]]} {
	set status "ON"
	}
}
	lappend module_list "$mod\[$status\] |"
	}
		}
	}
}

	lappend module_list "\002Topic\002 | BadWordAdd | \002AntipubExcept\002"

if {[matchattr $hand n|- $chan]} {
	lappend module_list "| TCL"
}

blacktools:tell $nick $host $hand $chan $chan1 hmodule.1 $module_list
blacktools:tell $nick $host $hand $chan $chan1 hmodule.3 none

		}	
	}
}

proc manpublic {nick host hand chan arg} {
	global black
	set command [lindex [split $arg] 0]
	set type 0
	set chan1 $chan
	man:process $nick $host $hand $chan $chan1 $type $command
}

proc man:process {nick host hand chan chan1 type command} {
	global black count
	set number [scan $black(antiflood:cmd) %\[^:\]]
	set timer [scan $black(antiflood:cmd) %*\[^:\]:%s]
	set char(p) [lindex $black(cmdchar) 0]
if {[info exists black(flood:activ:$host)]} {
foreach tmr [utimers] {
if {[string match "*black(flood:activ:$host)*" [join [lindex $tmr 1]]]} {
	set time [lindex $tmr 0]
	}
}
	blacktools:tell $nick $host $hand $chan $chan1 h.16 "$time man"
	return
}
	foreach tmr [utimers] {
if {[string match "*count(floodcmd:$host:$chan)*" [join [lindex $tmr 1]]]} {
	killutimer [lindex $tmr 2]
	}
}
if {![info exists count(floodcmd:$host:$chan)]} { 
	set count(floodcmd:$host:$chan) 0 
}
	incr count(floodcmd:$host:$chan)
	utimer $timer [list unset:floodcmd $host $chan]

if {$count(floodcmd:$host:$chan) == "$number"} {
	blacktools:tell $nick $host $hand $chan $chan1 h.16 "30 man"
	set black(flood:activ:$host) 1
	utimer 30 [list unset black(flood:activ:$host)]
	return
}	
	
if {$command == ""} {
if {$type == 0} {
	blacktools:tell $nick $host $hand $chan $chan1 man.1 none
	return
} else {
	blacktools:tell $nick $host $hand $chan $chan1 man.2 none
	return
	}
}

set command [string trim $command {
"+"
"-"
"."
"!"}]

switch [string tolower $command] {

man {
if {[matchattr $hand nm|MASOV $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.3 none
	blacktools:tell $nick $host $hand $chan $chan1 man.4 none
	}
}
h {
if {[matchattr $hand nm|MASOV $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.5 none
	blacktools:tell $nick $host $hand $chan $chan1 man.6 none
	blacktools:tell $nick $host $hand $chan $chan1 man.7 none
	}
}
v {
if {[matchattr $hand nm|MASOV $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.8 none
	blacktools:tell $nick $host $hand $chan $chan1 man.9 none
	}	
}

o {
if {[matchattr $hand nm|MASO $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.10 none
	blacktools:tell $nick $host $hand $chan $chan1 man.11 none
	}	
}

userlist {
if {[matchattr $hand nm|MASO $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.12 none
	blacktools:tell $nick $host $hand $chan $chan1 man.13 none
if {[matchattr $hand nm|MASO $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.15 none
} else { blacktools:tell $nick $host $hand $chan $chan1 man.14 none }
	}	
}

version {
if {[matchattr $hand nm|MASOV $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.16 none
	blacktools:tell $nick $host $hand $chan $chan1 man.17 none
	}	
}

info {
if {[matchattr $hand nm|MASOV $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.18 none
	blacktools:tell $nick $host $hand $chan $chan1 man.19 none
	}
}

ping {
if {[matchattr $hand nm|MASOV $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.20 none
	blacktools:tell $nick $host $hand $chan $chan1 man.21 none
	}
}

act {
if {[matchattr $hand nm|MAS $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.22 none
	blacktools:tell $nick $host $hand $chan $chan1 man.23 none
	}
}

t {
if {[matchattr $hand nm|MASOV $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.24 none
	blacktools:tell $nick $host $hand $chan $chan1 man.25 none
	blacktools:tell $nick $host $hand $chan $chan1 man.26 none
	}
}

l {
if {[matchattr $hand nm|MASOV $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.27 $black(lmode)
	blacktools:tell $nick $host $hand $chan $chan1 man.28 none
	}
}

ul {
if {[matchattr $hand nm|MASOV $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.29 $black(lmode)
	blacktools:tell $nick $host $hand $chan $chan1 man.30 none
	}
}

cycle {
if {[matchattr $hand nm|MASO $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.31 none
	blacktools:tell $nick $host $hand $chan $chan1 man.32 none
	}
}

mode {
if {[matchattr $hand nm|MASO $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.33 none
	blacktools:tell $nick $host $hand $chan $chan1 man.34 none
	}
}

i {
if {[matchattr $hand nm|MAVSO $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.35 none
	blacktools:tell $nick $host $hand $chan $chan1 man.36 none
	}
}

vers {
if {[matchattr $hand nm|MAVSO $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.37 none
	blacktools:tell $nick $host $hand $chan $chan1 man.38 none
	}
}

whois {
if {[matchattr $hand nm|MAVSO $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.39 none
	blacktools:tell $nick $host $hand $chan $chan1 man.40 none
	}
}

cc {
if {[matchattr $hand nm|MASO $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.41 none
	blacktools:tell $nick $host $hand $chan $chan1 man.42 none
	}
}

time {
if {[matchattr $hand nm|MASOV $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.43 none
	blacktools:tell $nick $host $hand $chan $chan1 man.44 none
	}
}

clear {
if {[matchattr $hand nm|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.45 none
	blacktools:tell $nick $host $hand $chan $chan1 man.46 none
	blacktools:tell $nick $host $hand $chan $chan1 man.47 none
	}	
}

op {
if {[matchattr $hand nm|MASO $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.48 none
	blacktools:tell $nick $host $hand $chan $chan1 man.49 none
	}
}

voice {
if {[matchattr $hand nm|MAVSO $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.50 none
	blacktools:tell $nick $host $hand $chan $chan1 man.51 none
	}
}

deop {
if {[matchattr $hand nm|MASO $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.52 none
	blacktools:tell $nick $host $hand $chan $chan1 man.53 none
	}
}

devoice {
if {[matchattr $hand nm|MAVSO $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.54 none
	blacktools:tell $nick $host $hand $chan $chan1 man.55 none
	}
}

k {
if {[matchattr $hand nm|MAVSO $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.56 none
	blacktools:tell $nick $host $hand $chan $chan1 man.57 none
	blacktools:tell $nick $host $hand $chan $chan1 man.58 none
	blacktools:tell $nick $host $hand $chan $chan1 man.59 none
	blacktools:tell $nick $host $hand $chan $chan1 man.60 none
	}
}

w {
if {[matchattr $hand nm|MAVSO $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.61 none
	blacktools:tell $nick $host $hand $chan $chan1 man.62 none
	blacktools:tell $nick $host $hand $chan $chan1 man.63 none
	blacktools:tell $nick $host $hand $chan $chan1 man.64 none
	blacktools:tell $nick $host $hand $chan $chan1 man.65 none
	}
}

check {
if {[matchattr $hand nm|MASO $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.66 none
	blacktools:tell $nick $host $hand $chan $chan1 man.67 none
	blacktools:tell $nick $host $hand $chan $chan1 man.68 none
	blacktools:tell $nick $host $hand $chan $chan1 man.69 none
	blacktools:tell $nick $host $hand $chan $chan1 man.70 none
	}
}

sb {
if {[matchattr $hand nm|MAVSO $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.71 none
if {[matchattr $hand nm|- $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.73 none
} else {
	blacktools:tell $nick $host $hand $chan $chan1 man.72 none
}
	blacktools:tell $nick $host $hand $chan $chan1 man.74 none
	}
}

id {
if {[matchattr $hand nm|MASO $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.75 none
	blacktools:tell $nick $host $hand $chan $chan1 man.76 none
	blacktools:tell $nick $host $hand $chan $chan1 man.77 none
	blacktools:tell $nick $host $hand $chan $chan1 man.78 none
	blacktools:tell $nick $host $hand $chan $chan1 man.79 none
	}
}

n {
if {[matchattr $hand nm|MASO $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.80 none
	blacktools:tell $nick $host $hand $chan $chan1 man.81 none
	blacktools:tell $nick $host $hand $chan $chan1 man.82 none
	blacktools:tell $nick $host $hand $chan $chan1 man.83 none
	blacktools:tell $nick $host $hand $chan $chan1 man.84 none
	}
}

spam {
if {[matchattr $hand nm|MASO $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.85 none
	blacktools:tell $nick $host $hand $chan $chan1 man.86 none
	blacktools:tell $nick $host $hand $chan $chan1 man.88 none
	blacktools:tell $nick $host $hand $chan $chan1 man.89 none
	blacktools:tell $nick $host $hand $chan $chan1 man.90 none
	}
}

dr {
if {[matchattr $hand nm|MASO $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.91 none
	blacktools:tell $nick $host $hand $chan $chan1 man.92 none
	blacktools:tell $nick $host $hand $chan $chan1 man.94 none
	blacktools:tell $nick $host $hand $chan $chan1 man.95 none
	blacktools:tell $nick $host $hand $chan $chan1 man.96 none
	}
}

b {
if {[matchattr $hand nm|MASO $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.97 none
if {[matchattr $hand nm|- $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.99 none
} else { blacktools:tell $nick $host $hand $chan $chan1 man.98 none }
	blacktools:tell $nick $host $hand $chan $chan1 man.101 none
	blacktools:tell $nick $host $hand $chan $chan1 man.102 none
	blacktools:tell $nick $host $hand $chan $chan1 man.103 none
	}
}

ub {
if {[matchattr $hand nm|MASO $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.104 none
if {[matchattr $hand nm|- $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.106 none
} else { blacktools:tell $nick $host $hand $chan $chan1 man.105 none }	
	blacktools:tell $nick $host $hand $chan $chan1 man.107 none
	}
}

d {
if {[matchattr $hand nm|MAS $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.108 none
	blacktools:tell $nick $host $hand $chan $chan1 man.109 non
	blacktools:tell $nick $host $hand $chan $chan1 man.111 none
	blacktools:tell $nick $host $hand $chan $chan1 man.112 none
	blacktools:tell $nick $host $hand $chan $chan1 man.113 none
	}
}

bot {
if {[matchattr $hand nm|MASO $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.114 none
	blacktools:tell $nick $host $hand $chan $chan1 man.115 none
	blacktools:tell $nick $host $hand $chan $chan1 man.117 none
	blacktools:tell $nick $host $hand $chan $chan1 man.118 none
	blacktools:tell $nick $host $hand $chan $chan1 man.119 none

	}
}

bw {
if {[matchattr $hand nm|MASO $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.120 none
	blacktools:tell $nick $host $hand $chan $chan1 man.121 none
	blacktools:tell $nick $host $hand $chan $chan1 man.123 none
	blacktools:tell $nick $host $hand $chan $chan1 man.124 none
	blacktools:tell $nick $host $hand $chan $chan1 man.125 none

	}
}

black {
if {[matchattr $hand nm|MAS $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.126 none
	blacktools:tell $nick $host $hand $chan $chan1 man.127 none
	blacktools:tell $nick $host $hand $chan $chan1 man.129 none
	blacktools:tell $nick $host $hand $chan $chan1 man.130 none
	blacktools:tell $nick $host $hand $chan $chan1 man.131 none

	}
}

stick {
if {[matchattr $hand nm|MAS $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.132 none
	blacktools:tell $nick $host $hand $chan $chan1 man.133 none
	blacktools:tell $nick $host $hand $chan $chan1 man.134 none
	blacktools:tell $nick $host $hand $chan $chan1 man.135 none
	blacktools:tell $nick $host $hand $chan $chan1 man.136 none

	}
}

gag {
if {[matchattr $hand nm|MASO $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.137 none
	blacktools:tell $nick $host $hand $chan $chan1 man.138 none
	blacktools:tell $nick $host $hand $chan $chan1 man.139 none
	blacktools:tell $nick $host $hand $chan $chan1 man.140 none
	blacktools:tell $nick $host $hand $chan $chan1 man.141 none
	}
}

ungag {
if {[matchattr $hand nm|MASO $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.159 none
	blacktools:tell $nick $host $hand $chan $chan1 man.160 none
	}
}

add {
if {[matchattr $hand nm|MA $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.142 "$black(chanserv) $black(hostadd)"
	blacktools:tell $nick $host $hand $chan $chan1 man.143 none
if {[matchattr $hand n| $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.144 none
} elseif {[matchattr $hand m| $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.145 none
} elseif {[matchattr $hand -|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.146 none
} elseif {[matchattr $hand -|A $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.147 none
		}
	}
}

adduser {
if {[matchattr $hand nm|MA $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.148 none
	blacktools:tell $nick $host $hand $chan $chan1 man.149 none
if {[matchattr $hand n| $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.150 none
} elseif {[matchattr $hand m| $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.151 none
} elseif {[matchattr $hand -|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.152 none
} elseif {[matchattr $hand -|A $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.153 none
		}
	}
}

delacc {
if {[matchattr $hand nm|MA $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.154 none
	blacktools:tell $nick $host $hand $chan $chan1 man.155 none
if {[matchattr $hand nm]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.156 none
		}
	}
}

del {
if {[matchattr $hand nm|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.157 none
	blacktools:tell $nick $host $hand $chan $chan1 man.158 none
	}	
}

banlist {
if {[matchattr $hand nm|MAOS $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.161 none
	if {[matchattr $hand nm]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.163 none
		} else {
	blacktools:tell $nick $host $hand $chan $chan1 man.162 none	
		}
	}
}

addhost {
if {[matchattr $hand nm|MA $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.164 none
	blacktools:tell $nick $host $hand $chan $chan1 man.165 none
	}
}

delhost {
if {[matchattr $hand nm|MA $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.166 none
	blacktools:tell $nick $host $hand $chan $chan1 man.167 none
	}
}

chuser {
if {[matchattr $hand nm|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.168 none
	blacktools:tell $nick $host $hand $chan $chan1 man.169 none
	}
}

s {
if {[matchattr $hand nm|MA $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.170 none
	blacktools:tell $nick $host $hand $chan $chan1 man.171 none
	}
}

us {
if {[matchattr $hand nm|MA $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.172 none
	blacktools:tell $nick $host $hand $chan $chan1 man.173 none
	}
}

auto {
if {[matchattr $hand nm|MA $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.174 none
	if {[matchattr $hand nm]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.177 none
	blacktools:tell $nick $host $hand $chan $chan1 man.178 none
		} else {
	blacktools:tell $nick $host $hand $chan $chan1 man.175 none
	blacktools:tell $nick $host $hand $chan $chan1 man.176 none	
		}
	}
}

antipub {
if {[matchattr $hand nm|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.179 none
	blacktools:tell $nick $host $hand $chan $chan1 man.180 none	
	blacktools:tell $nick $host $hand $chan $chan1 man.181 none
	blacktools:tell $nick $host $hand $chan $chan1 man.182 none
	blacktools:tell $nick $host $hand $chan $chan1 man.183 none	
	}	
}

antinotice {
if {[matchattr $hand nm|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.184 none
	blacktools:tell $nick $host $hand $chan $chan1 man.185 none	
	blacktools:tell $nick $host $hand $chan $chan1 man.186 none
	blacktools:tell $nick $host $hand $chan $chan1 man.187 none
	blacktools:tell $nick $host $hand $chan $chan1 man.188 none	
	}	
}

antictcp {
if {[matchattr $hand nm|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.189 none
	blacktools:tell $nick $host $hand $chan $chan1 man.190 none	
	blacktools:tell $nick $host $hand $chan $chan1 man.191 none
	blacktools:tell $nick $host $hand $chan $chan1 man.192 none
	blacktools:tell $nick $host $hand $chan $chan1 man.193 none	
	}	
}

antibadword {
if {[matchattr $hand nm|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.194 none
	blacktools:tell $nick $host $hand $chan $chan1 man.195 none	
	blacktools:tell $nick $host $hand $chan $chan1 man.196 none
	blacktools:tell $nick $host $hand $chan $chan1 man.197 none
	blacktools:tell $nick $host $hand $chan $chan1 man.198 none	
	}	
}

antilongtext {
if {[matchattr $hand nm|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.199 none
	blacktools:tell $nick $host $hand $chan $chan1 man.200 none	
	blacktools:tell $nick $host $hand $chan $chan1 man.201 none
	blacktools:tell $nick $host $hand $chan $chan1 man.202 none
	blacktools:tell $nick $host $hand $chan $chan1 man.203 none	
	}	
}

badquitpart {
if {[matchattr $hand nm|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.204 none
	blacktools:tell $nick $host $hand $chan $chan1 man.205 none	
	blacktools:tell $nick $host $hand $chan $chan1 man.206 none
	blacktools:tell $nick $host $hand $chan $chan1 man.207 none
	blacktools:tell $nick $host $hand $chan $chan1 man.208 none	
	}	
}

antijoinpart {
if {[matchattr $hand nm|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.209 none
	blacktools:tell $nick $host $hand $chan $chan1 man.210 none	
	blacktools:tell $nick $host $hand $chan $chan1 man.211 none
	blacktools:tell $nick $host $hand $chan $chan1 man.212 none
	blacktools:tell $nick $host $hand $chan $chan1 man.213 none	
	}	
}

antispam {
if {[matchattr $hand nm|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.214 none
	blacktools:tell $nick $host $hand $chan $chan1 man.215 none	
	blacktools:tell $nick $host $hand $chan $chan1 man.216 none
	blacktools:tell $nick $host $hand $chan $chan1 man.217 none
	blacktools:tell $nick $host $hand $chan $chan1 man.218 none	
	}	
}

antirepeat {
if {[matchattr $hand nm|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.219 none
	blacktools:tell $nick $host $hand $chan $chan1 man.220 none	
	blacktools:tell $nick $host $hand $chan $chan1 man.221 none
	blacktools:tell $nick $host $hand $chan $chan1 man.222 none
	blacktools:tell $nick $host $hand $chan $chan1 man.223 none	
	}	
}

anticolor {
if {[matchattr $hand nm|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.224 none
	blacktools:tell $nick $host $hand $chan $chan1 man.225 none	
	blacktools:tell $nick $host $hand $chan $chan1 man.226 none
	blacktools:tell $nick $host $hand $chan $chan1 man.227 none
	blacktools:tell $nick $host $hand $chan $chan1 man.228 none	
	}	
}

antibold {
if {[matchattr $hand nm|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.229 none
	blacktools:tell $nick $host $hand $chan $chan1 man.230 none	
	blacktools:tell $nick $host $hand $chan $chan1 man.231 none
	blacktools:tell $nick $host $hand $chan $chan1 man.232 none
	blacktools:tell $nick $host $hand $chan $chan1 man.233 none	
	}	
}

antiunderline {
if {[matchattr $hand nm|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.234 none
	blacktools:tell $nick $host $hand $chan $chan1 man.235 none	
	blacktools:tell $nick $host $hand $chan $chan1 man.236 none
	blacktools:tell $nick $host $hand $chan $chan1 man.237 none
	blacktools:tell $nick $host $hand $chan $chan1 man.238 none	
	}	
}

anticaps {
if {[matchattr $hand nm|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.239 none
	blacktools:tell $nick $host $hand $chan $chan1 man.240 none	
	blacktools:tell $nick $host $hand $chan $chan1 man.241 none
	blacktools:tell $nick $host $hand $chan $chan1 man.242 none
	blacktools:tell $nick $host $hand $chan $chan1 man.243 none	
	}	
}

badnick {
if {[matchattr $hand nm|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.244 none
	blacktools:tell $nick $host $hand $chan $chan1 man.245 none	
	blacktools:tell $nick $host $hand $chan $chan1 man.246 none
	blacktools:tell $nick $host $hand $chan $chan1 man.247 none
	blacktools:tell $nick $host $hand $chan $chan1 man.248 none	
	}	
}

badfullname {
if {[matchattr $hand nm|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.249 none
	blacktools:tell $nick $host $hand $chan $chan1 man.250 none	
	blacktools:tell $nick $host $hand $chan $chan1 man.251 none
	blacktools:tell $nick $host $hand $chan $chan1 man.252 none
	blacktools:tell $nick $host $hand $chan $chan1 man.253 none	
	}	
}

autoop {
if {[matchattr $hand nm|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.254 none
	blacktools:tell $nick $host $hand $chan $chan1 man.255 none
	}
}

autovoice {
if {[matchattr $hand nm|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.256 none
	blacktools:tell $nick $host $hand $chan $chan1 man.257 none
	}
}
antijoinflood {
if {[matchattr $hand nm|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.258 none
	blacktools:tell $nick $host $hand $chan $chan1 man.259 none
	blacktools:tell $nick $host $hand $chan $chan1 man.260 none
	blacktools:tell $nick $host $hand $chan $chan1 man.261 none
	blacktools:tell $nick $host $hand $chan $chan1 man.262 none
	}
}

antichanflood {
if {[matchattr $hand nm|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.263 none
	blacktools:tell $nick $host $hand $chan $chan1 man.264 none
	blacktools:tell $nick $host $hand $chan $chan1 man.265 none
	blacktools:tell $nick $host $hand $chan $chan1 man.266 none
	blacktools:tell $nick $host $hand $chan $chan1 man.267 none
	}
}

badident {
if {[matchattr $hand nm|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.268 none
	blacktools:tell $nick $host $hand $chan $chan1 man.269 none
	blacktools:tell $nick $host $hand $chan $chan1 man.270 none
	blacktools:tell $nick $host $hand $chan $chan1 man.271 none
	blacktools:tell $nick $host $hand $chan $chan1 man.272 none
	}
}

showtime {
if {[matchattr $hand nm|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.273 none
	blacktools:tell $nick $host $hand $chan $chan1 man.274 none
	}
}
 
showhandle {
if {[matchattr $hand nm|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.275 none
	blacktools:tell $nick $host $hand $chan $chan1 man.276 none
	}
}

showcount {
if {[matchattr $hand nm|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.277 none
	blacktools:tell $nick $host $hand $chan $chan1 man.278 none
	}
}

xbantime {
if {[matchattr $hand nm|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.279 none
	blacktools:tell $nick $host $hand $chan $chan1 man.280 none
	}
}

xbanlevel {
if {[matchattr $hand nm|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.281 none
	blacktools:tell $nick $host $hand $chan $chan1 man.282 none
	}
}

oprotect {
if {[matchattr $hand nm|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.283 none
	blacktools:tell $nick $host $hand $chan $chan1 man.284 none
	}
}

vprotect {
if {[matchattr $hand nm|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.285 none
	blacktools:tell $nick $host $hand $chan $chan1 man.286 none
	}
}

topicrefresh {
if {[matchattr $hand nm|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.287 none
	blacktools:tell $nick $host $hand $chan $chan1 man.288 none
	}
}

count {
if {[matchattr $hand nm|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.289 none
	blacktools:tell $nick $host $hand $chan $chan1 man.290 none
	blacktools:tell $nick $host $hand $chan $chan1 man.291 none
	blacktools:tell $nick $host $hand $chan $chan1 man.292 none
	blacktools:tell $nick $host $hand $chan $chan1 man.293 none
	blacktools:tell $nick $host $hand $chan $chan1 man.294 none
	}
}
xtools {
if {[matchattr $hand nm|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.295 none
	blacktools:tell $nick $host $hand $chan $chan1 man.296 none
	}
}

badchan {
if {[matchattr $hand nm|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.297 none
	blacktools:tell $nick $host $hand $chan $chan1 man.298 none

if {[matchattr $hand nm]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.299 none
	blacktools:tell $nick $host $hand $chan $chan1 man.301 none
		} else {
	blacktools:tell $nick $host $hand $chan $chan1 man.300 none
	blacktools:tell $nick $host $hand $chan $chan1 man.302 none	
		}
	blacktools:tell $nick $host $hand $chan $chan1 man.303 none	
	}
}

anunt {
if {[matchattr $hand nm|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.304 none
	blacktools:tell $nick $host $hand $chan $chan1 man.305 none
	blacktools:tell $nick $host $hand $chan $chan1 man.306 none
	blacktools:tell $nick $host $hand $chan $chan1 man.307 none		
	}
}

limit {
if {[matchattr $hand nm|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.308 none
	blacktools:tell $nick $host $hand $chan $chan1 man.309 none
	blacktools:tell $nick $host $hand $chan $chan1 man.310 none
	}
}

topic {
if {[matchattr $hand nm|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.311 none
	blacktools:tell $nick $host $hand $chan $chan1 man.312 none
	blacktools:tell $nick $host $hand $chan $chan1 man.313 none
	blacktools:tell $nick $host $hand $chan $chan1 man.313_1 none
	}
}

clonescan {
if {[matchattr $hand nm|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.314 none
	blacktools:tell $nick $host $hand $chan $chan1 man.315 none
	blacktools:tell $nick $host $hand $chan $chan1 man.316 none
	blacktools:tell $nick $host $hand $chan $chan1 man.317 none
	blacktools:tell $nick $host $hand $chan $chan1 man.318 none
	}
}

seen {
if {[matchattr $hand nm|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.319 none
	blacktools:tell $nick $host $hand $chan $chan1 man.320 none
	blacktools:tell $nick $host $hand $chan $chan1 man.321 none
	blacktools:tell $nick $host $hand $chan $chan1 man.322 none
	blacktools:tell $nick $host $hand $chan $chan1 man.323 none
}
}
	
greet {
if {[matchattr $hand nm|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.324 none
	blacktools:tell $nick $host $hand $chan $chan1 man.325 none
	blacktools:tell $nick $host $hand $chan $chan1 man.326 none
	blacktools:tell $nick $host $hand $chan $chan1 man.327 none
	blacktools:tell $nick $host $hand $chan $chan1 man.328 none
	}
}
	
leave {
if {[matchattr $hand nm|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.329 none
	blacktools:tell $nick $host $hand $chan $chan1 man.330 none
	blacktools:tell $nick $host $hand $chan $chan1 man.331 none
	blacktools:tell $nick $host $hand $chan $chan1 man.332 none
	blacktools:tell $nick $host $hand $chan $chan1 man.333 none
	}
}

idle {
if {[matchattr $hand nm|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.334 none
	blacktools:tell $nick $host $hand $chan $chan1 man.335 none
	blacktools:tell $nick $host $hand $chan $chan1 man.335_1 none
	blacktools:tell $nick $host $hand $chan $chan1 man.336 none
	blacktools:tell $nick $host $hand $chan $chan1 man.336_1 none
	}	
}	

chanreport {
if {[matchattr $hand nm|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.337 none
	blacktools:tell $nick $host $hand $chan $chan1 man.338 none
	blacktools:tell $nick $host $hand $chan $chan1 man.339 none
	blacktools:tell $nick $host $hand $chan $chan1 man.340 none
	}
}

topwords {
if {[matchattr $hand nm|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.341 none
	blacktools:tell $nick $host $hand $chan $chan1 man.342 none
	blacktools:tell $nick $host $hand $chan $chan1 man.343 none
	}
}
	
xban {
if {[matchattr $hand nm|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.344 none
	blacktools:tell $nick $host $hand $chan $chan1 man.345 none
	blacktools:tell $nick $host $hand $chan $chan1 man.346 none
	blacktools:tell $nick $host $hand $chan $chan1 man.347 none
	blacktools:tell $nick $host $hand $chan $chan1 man.348 none
	}
}

antitake {
if {[matchattr $hand nm|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.349 none
	blacktools:tell $nick $host $hand $chan $chan1 man.350 none
	}
}

private {
if {[matchattr $hand nm|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.351 none
	blacktools:tell $nick $host $hand $chan $chan1 man.352 none
	blacktools:tell $nick $host $hand $chan $chan1 man.353 none
	blacktools:tell $nick $host $hand $chan $chan1 man.353_1 none
	blacktools:tell $nick $host $hand $chan $chan1 man.353_2 none
	blacktools:tell $nick $host $hand $chan $chan1 man.353_3 none	
	}
}

autobroadcast {
if {[matchattr $hand nm|- $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.354 none
	blacktools:tell $nick $host $hand $chan $chan1 man.355 none
	blacktools:tell $nick $host $hand $chan $chan1 man.356 none
	blacktools:tell $nick $host $hand $chan $chan1 man.357 none	
	}
}

antibotidle {
if {[matchattr $hand nm|- $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.358 none
	blacktools:tell $nick $host $hand $chan $chan1 man.359 none
	}
}

language {
if {[matchattr $hand nm|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.360 none
	blacktools:tell $nick $host $hand $chan $chan1 man.361 none
	}
}

badwordadd {
if {[matchattr $hand nm|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.362 none
	blacktools:tell $nick $host $hand $chan $chan1 man.363 none
	}
}

antipubexcept {
if {[matchattr $hand nm|M $chan]} {	
	blacktools:tell $nick $host $hand $chan $chan1 man.364 none
	blacktools:tell $nick $host $hand $chan $chan1 man.365 none
	}
}

tcl {
if {[matchattr $hand n|- $chan]} {	
	blacktools:tell $nick $host $hand $chan $chan1 man.366 none
	blacktools:tell $nick $host $hand $chan $chan1 man.367 none
	}
}

next {
if {[matchattr $hand nm|M $chan]} {	
	blacktools:tell $nick $host $hand $chan $chan1 man.368 none
	blacktools:tell $nick $host $hand $chan $chan1 man.369 none
	blacktools:tell $nick $host $hand $chan $chan1 man.370 none
	blacktools:tell $nick $host $hand $chan $chan1 man.371 none
	blacktools:tell $nick $host $hand $chan $chan1 man.372 none
	blacktools:tell $nick $host $hand $chan $chan1 man.373 none
	}
}

uptime {
if {[matchattr $hand nm|- $chan]} {	
	blacktools:tell $nick $host $hand $chan $chan1 man.374 none
	blacktools:tell $nick $host $hand $chan $chan1 man.375 none
	}
}

status {
if {[matchattr $hand nm|- $chan]} {	
	blacktools:tell $nick $host $hand $chan $chan1 man.376 none
	blacktools:tell $nick $host $hand $chan $chan1 man.377 none
	}	
}

set {
if {[matchattr $hand nm|M $chan]} {	
	blacktools:tell $nick $host $hand $chan $chan1 man.378 none
	blacktools:tell $nick $host $hand $chan $chan1 man.379 none
if {[matchattr $hand nm|- $chan]} {	
	blacktools:tell $nick $host $hand $chan $chan1 man.380 none
} else { blacktools:tell $nick $host $hand $chan $chan1 man.381 none }
	}
}

away {
if {[matchattr $hand nm|- $chan]} {	
	blacktools:tell $nick $host $hand $chan $chan1 man.382 none
	blacktools:tell $nick $host $hand $chan $chan1 man.383 none	
	blacktools:tell $nick $host $hand $chan $chan1 man.384 none
	}
}

silence {
if {[matchattr $hand nm|- $chan]} {	
	blacktools:tell $nick $host $hand $chan $chan1 man.385 none
	blacktools:tell $nick $host $hand $chan $chan1 man.386 none
	}
}

jump {
if {[matchattr $hand nm|- $chan]} {	
	blacktools:tell $nick $host $hand $chan $chan1 man.387 none
	blacktools:tell $nick $host $hand $chan $chan1 man.388 none
	}
}

msg {
if {[matchattr $hand nm|- $chan]} {	
	blacktools:tell $nick $host $hand $chan $chan1 man.389 none
	blacktools:tell $nick $host $hand $chan $chan1 man.390 none
	}
}

broadcast {
if {[matchattr $hand nm|- $chan]} {	
	blacktools:tell $nick $host $hand $chan $chan1 man.391 none
	blacktools:tell $nick $host $hand $chan $chan1 man.392 none
	}
}

ignore {
if {[matchattr $hand nm|- $chan]} {	
	blacktools:tell $nick $host $hand $chan $chan1 man.393 none
	blacktools:tell $nick $host $hand $chan $chan1 man.394 none
	}
}

chat {
if {[matchattr $hand nm|- $chan]} {	
	blacktools:tell $nick $host $hand $chan $chan1 man.395 none
	blacktools:tell $nick $host $hand $chan $chan1 man.396 none
	}
}

login {
if {[matchattr $hand nm|- $chan]} {	
	blacktools:tell $nick $host $hand $chan $chan1 man.397 none
	blacktools:tell $nick $host $hand $chan $chan1 man.398 none
	}
}

channels {
if {[matchattr $hand nm|- $chan]} {	
	blacktools:tell $nick $host $hand $chan $chan1 man.399 none
	blacktools:tell $nick $host $hand $chan $chan1 man.400 none
	}
}

nick {
if {[matchattr $hand nm|- $chan]} {	
	blacktools:tell $nick $host $hand $chan $chan1 man.401 none
	blacktools:tell $nick $host $hand $chan $chan1 man.402 none
	}
}

restart {
if {[matchattr $hand nm|- $chan]} {	
	blacktools:tell $nick $host $hand $chan $chan1 man.403 none
	blacktools:tell $nick $host $hand $chan $chan1 man.404 none
	}
}

rehash {
if {[matchattr $hand nm|- $chan]} {	
	blacktools:tell $nick $host $hand $chan $chan1 man.405 none
	blacktools:tell $nick $host $hand $chan $chan1 man.406 none
	}
}

die {
if {[matchattr $hand nm|- $chan]} {	
	blacktools:tell $nick $host $hand $chan $chan1 man.407 none
	blacktools:tell $nick $host $hand $chan $chan1 man.408 none
	}
}

suspend {
if {[matchattr $hand nm|- $chan]} {	
	blacktools:tell $nick $host $hand $chan $chan1 man.409 none
	blacktools:tell $nick $host $hand $chan $chan1 man.410 none
	}
}

unsuspend {
if {[matchattr $hand nm|- $chan]} {	
	blacktools:tell $nick $host $hand $chan $chan1 man.411 none
	blacktools:tell $nick $host $hand $chan $chan1 man.412 none
	}
}

save {
if {[matchattr $hand nm|- $chan]} {	
	blacktools:tell $nick $host $hand $chan $chan1 man.413 none
	blacktools:tell $nick $host $hand $chan $chan1 man.414 none
	}
}

addchan {
if {[matchattr $hand nm|- $chan]} {	
	blacktools:tell $nick $host $hand $chan $chan1 man.415 none
	blacktools:tell $nick $host $hand $chan $chan1 man.416 none
	blacktools:tell $nick $host $hand $chan $chan1 man.417 none
	}
}

delchan {
if {[matchattr $hand nm|- $chan]} {	
	blacktools:tell $nick $host $hand $chan $chan1 man.418 none
	blacktools:tell $nick $host $hand $chan $chan1 man.419 none
	}
}

find {
if {[matchattr $hand nm|- $chan]} {	
	blacktools:tell $nick $host $hand $chan $chan1 man.420 none
	blacktools:tell $nick $host $hand $chan $chan1 man.421 none
	}
}

purge {
if {[matchattr $hand nm|- $chan]} {	
	blacktools:tell $nick $host $hand $chan $chan1 man.422 none
	blacktools:tell $nick $host $hand $chan $chan1 man.423 none
	}
}
		
addinfo {
if {[matchattr $hand nm|- $chan]} {	
	blacktools:tell $nick $host $hand $chan $chan1 man.424 none
	blacktools:tell $nick $host $hand $chan $chan1 man.425 none
	blacktools:tell $nick $host $hand $chan $chan1 man.426 none
	}
}

invite {
if {[matchattr $hand nm|- $chan]} {	
	blacktools:tell $nick $host $hand $chan $chan1 man.427 none
	blacktools:tell $nick $host $hand $chan $chan1 man.428 none
	}
}
		
	}
}	

proc comand:pubme {nick host hand chan arg} {
global botnick wordsdir sdir black seendir count server uptime {server-online}
set arg [split $arg]
set bnick [lindex [split $arg] 0]
set what [lindex [split $arg] 1]
if {([lsearch -exact [string tolower $bnick] [string tolower $botnick]] == 0)} {
switch -exact -- [string tolower $what] {

man {
if {[matchattr $hand nm|MASOV $chan]} {
	set command [lindex [split $arg] 2]
	set type 1
	set chan1 $chan
	man:process $nick $host $hand $chan $chan1 $type $command
	}
}

auto {
if {[matchattr $hand nm|MA $chan]} {
set type 0
	set chan1 "$chan"
	set user [lindex [split $arg] 3]
	set option [lindex [split $arg] 2]
	set global [lindex [split $arg] 4]
if {[regexp {^[&#]} $option] && [matchattr $hand nm|- $chan] && ![string equal -nocase $global "-global"]} {
	set chan "$option"
	set user [lindex [split $arg] 4]
	set option [lindex [split $arg] 3]
	set global [lindex [split $arg] 5]
}
	auto:process $nick $host $hand $chan $chan1 $user $option $global $type 
	}
}


antipub {
if {[matchattr $hand nm|M $chan]} {
	set type 1
	set chan1 "$chan"
	set why [lindex [split $arg] 2]
	set except [lrange [split $arg] 3 end]
if {[regexp {^[&#]} $why] && [matchattr $hand nm|- $chan]} {
	set chan "$why"
	set why [lindex [split $arg] 3]
	set except [lrange [split $arg] 4 end]
}
	antipub:module:process $nick $host $hand $chan $chan1 $why $except $type
	}
}

clear {
if {[matchattr $hand nm|M $chan]} {
	set why [lindex [split $arg] 2]
	set type 1
	set chan1 "$chan"
if {[regexp {^[&#]} $why] && [matchattr $hand nm|- $chan]} {
	set chan "$why"
	set why [lindex [split $arg] 3]
}
	clear:process $nick $host $hand $chan $chan1 $why $type
	}
}


private {
if {[matchattr $hand nm|M $chan]} {
set type 1
set chan1 "$chan"
set why [lindex [split $arg] 2]
set user [lindex [split $arg] 3]
set host [lindex [split $arg] 4]
if {[regexp {^[&#]} $why] && [matchattr $hand nm|- $chan]} {
set chan "$why"
set why [lindex [split $arg] 3]
set user [lindex [split $arg] 4]
set host [lindex [split $arg] 5]
}
private:process $nick $host $hand $chan $chan1 $why $user $host $type
}
}

tcl {
if {[matchattr $hand n|- $chan]} {
	set type 1
	set chan1 "$chan"
	set the_script [lindex [split $arg] 3]
	set who [lindex [split $arg] 2]
	tcl:process $nick $host $hand $chan $chan1 $type $the_script $who
	}
}

find {
if {[matchattr $hand nm|- $chan]} {
	set info [lindex [split $arg] 2]
	set type 1
	set chan1 "$chan"
	find:process $info $nick $hand $host $chan $chan1 $type
	}
}

login {
if {[matchattr $hand nm|- $chan]} {
putquick "$black(login)"
putquick "MODE $botnick :$black(xmod)"
blacktools:tell:prv $nick $host $hand login.1 $black(chanserv)
}
}

h {
if {[matchattr $hand nm|MSOAV $chan]} {
set chan1 "$chan"
set command [lindex [split $arg] 2]
h:process $nick $host $hand $chan $chan1 $command
}
}

secure {
if {[matchattr $hand nm|M $chan]} {
set what [lindex [split $arg] 2]
set type 1
set chan1 "$chan"
if {[regexp {^[&#]} $what] && [matchattr $hand nm|- $chan]} {
set chan "$what"
set what [lindex [split $arg] 3]
}
secure:process $nick $host $hand $chan $chan1 $what $type
}
}

ignore {
if {[matchattr $hand nm|- $chan]} {
set chan1 "$chan"
set what [lindex [split $arg] 2]
set mask [lindex [split $arg] 3]
set time [lindex [split $arg] 4]
set reason [join [lrange [split $arg] 5 end]]
if {$what == ""} { blacktools:tell $nick $host $hand $chan $chan1 ignore.2 none
return 0
}
ignore:process $nick $host $hand $chan $chan1 $what $mask $time $reason
}
}



idle {
if {[matchattr $hand nm|M $chan]} {
set char(p) [lindex $black(cmdchar) 0]
set flag "-|f"
set type1 1
set chan1 "$chan"
set why [lindex [split $arg] 2]
set type [lindex [split $arg] 3]
set user [lindex [split $arg] 3]
set host [lindex [split $arg] 4]
if {[regexp {^[&#]} $why] && [matchattr $hand nm|- $chan]} {
set chan "$why"
set why [lindex [split $arg] 3]
set type [lindex [split $arg] 4]
set user [lindex [split $arg] 4]
set host [lindex [split $arg] 5]
}
antidle:process $why $type $type1 $user $host $nick $hand $chan $chan1
}
}

version {
if {[matchattr $hand nm|MASOV $chan]} {
set chan1 "$chan"
version:process $nick $host $hand $chan $chan1
}
}

cc {
if {[matchattr $hand nm|MASO $chan]} {
set ::chan $chan
set chan1 "$chan"
set c [lindex [split $arg] 2]
if {$c == ""} { blacktools:tell $nick $host $hand $chan $chan1 cc.2 none
return 0
}
if {![regexp {^[&#]} $c]} {
set c #$c
 } 

putquick "MODE $c"
bind raw - 329 createdpublic
bind raw - 403 nocreatedpublic
}
}

activ {
if {[matchattr $hand nm|MASOV $chan]} {
	set type 1
	set chan1 "$chan"
	set user [lindex [split $arg] 2]
	set option [lindex [split $arg] 3]
if {[regexp {^[&#]} $user] && [matchattr $hand nm|- $chan]} {
set chan "$user"
set user [lindex [split $arg] 3]
set option [lindex [split $arg] 4]
}
	activ:process $nick $host $hand $chan $chan1 $user $option $type
	}
}

leave {
if {[matchattr $hand nm|M $chan]} {
set type 1
set chan1 "$chan"
set who [lindex [split $arg] 2]
set leave [join [lrange [split $arg] 3 end]]
set number [lindex [split $arg] 3]
if {[regexp {^[&#]} $who] && [matchattr $hand nm|M $who]} {
set chan "$who"
set who [lindex [split $arg] 3]
set leave [join [lrange [split $arg] 4 end]]
set number [lindex [split $arg] 4]
		}
leave:process $who $leave $number $type $nick $host $hand $chan $chan1
	}
}

greet {
if {[matchattr $hand nm|M $chan]} {
set who [lindex [split $arg] 2]
set type 1
set chan1 "$chan"
set greet [join [lrange [split $arg] 3 end]]
set number [lindex [split $arg] 3]
if {[regexp {^[&#]} $who] && [matchattr $hand nm|M $who]} {
set chan "$who"
set who [lindex [split $arg] 3]
set greet [join [lrange [split $arg] 4 end]]
set number [lindex [split $arg] 4]
		}
greet:process $who $greet $number $type $nick $host $hand $chan $chan1
	}
}

chat {
if {[matchattr $hand nm|- $chan]} {
*ctcp:CHAT $nick $host $hand $botnick CHAT $arg
blacktools:tell $nick $host $hand $chan $chan1 chat.1 none
} 
}

seen {
if {[matchattr $hand -|- $chan]} {
if {![channel get $chan seen]} {
return 0
}
set type 1
set wseen [lindex $arg 2]
set chan1 "$chan"
if {[regexp {^[&#]} $wseen] && [matchattr $hand nm|- $chan]} {
set chan1 "$chan"
set chan "$wseen"
set wseen [lindex $arg 3]
}
seen:process $nick $host $hand $chan $chan1 $wseen $type
}
}

topic {
if {[matchattr $hand nm|M $chan]} {
set nop [lindex [split $arg] 2]
set type 1
set chan1 "$chan"
set tp [join [lrange [split $arg] 3 end]]
set number [lindex [split $arg] 3]
if {[regexp {^[&#]} $nop] && [matchattr $hand nm|M $nop]} {
set chan "$nop"
set nop [lindex [split $arg] 3]
set tp [join [lrange [split $arg] 4 end]]
set number [lindex [split $arg] 4]
}
topic:process $nick $host $hand $chan $chan1 $nop $tp $number $type
}
}

limit {
if {[matchattr $hand nm|M $chan]} {
set why [lindex [split $arg] 2]
set lm [lindex [split $arg] 3]
set type 1
set chan1 "$chan"
if {[regexp {^[&#]} $why] && [matchattr $hand nm|- $chan]} {
set chan "$why"
set why [lindex [split $arg] 3]
set lm [lindex [split $arg] 4]
}
limit:process $nick $host $hand $chan $chan1 $why $lm $type
}
}

anunt {
if {[matchattr $hand nm|M $chan]} {
set type 1
set chan1 "$chan"
set who [lindex [split $arg] 2]
set message [join [lrange [split $arg] 3 end]]
set number [lindex [split $arg] 3]
if {[regexp {^[&#]} $who] && [matchattr $hand nm|M $who]} {
set chan "$who"
set who [lindex [split $arg] 3]
set message [join [lrange [split $arg] 4 end]]
set number [lindex [split $arg] 4]
}
anunt:process $nick $host $hand $chan $chan1 $who $message $number $type
	}
}

bt {
if {[matchattr $hand nm|- $chan]} {
set who [lindex [split $arg] 2]
set chan1 "$chan"
set message [join [lrange [split $arg] 3 end]]
set number [lindex [split $arg] 3]
if {$who == ""} { blacktools:tell $nick $host $hand $chan $chan1 autobroadcast.2 none
return 0
}
broadcast:process $nick $host $hand $chan $chan1 $who $message $number
}
}

badchan {
if {[matchattr $hand nm|M $chan]} {
	set why [lindex [split $arg] 2]
	set type1 0
	set chan1 "$chan"
	set bdchan [join [lindex [split $arg] 3]]
	set type [lindex [split $arg] 4]
	set reason [join [lrange [split $arg] 4 end]]
if {[string equal -nocase $why "list"] || [string equal -nocase $why "status"]} {
	set type [lindex [split $arg] 3]
}
if {[string equal -nocase $type "-global"]} {
	set reason [join [lrange [split $arg] 5 end]]
}
if {[regexp {^[&#]} $why] && [matchattr $hand nm|M $why]} {
	set chan "$why"
	set why [lindex [split $arg] 3]
	set bdchan [join [lindex [split $arg] 4]]
	set type [lindex [split $arg] 5]
	set reason [join [lrange [split $arg] 5 end]]

if {[string equal -nocase $why "list"] || [string equal -nocase $why "status"]} {

	set type [lindex [split $arg] 4]
}

if {[string equal -nocase $type "-global"]} {
	set reason [join [lrange [split $arg] 6 end]]
	}
}
	badchan:process $nick $host $hand $chan $chan1 $why $bdchan $type $type1 $reason
}
}

count {
if {[matchattr $hand nm|M $chan]} {
set why [lindex [split $arg] 2]
set type 1
set chan1 "$chan"
if {[regexp {^[&#]} $why] && [matchattr $hand nm|M $why]} {
set chan "$why"
set why [lindex [split $arg] 3]
}
count:process $nick $host $hand $chan $chan1 $why $type
}
}


whois {
if {[matchattr $hand nm|MAOS $chan]} {
set chan1 "$chan"
set who [lindex [split $arg] 2]
if {$who == ""} { blacktools:tell $nick $host $hand $chan $chan1 whois.2 none
return 0
}
whois:process $nick $host $hand $chan $chan1 $who
}
}

vers {
if {[matchattr $hand nm|MAOS $chan]} {
set chan1 "$chan"
set why [lindex [split $arg] 2]
if {$why == ""} { blacktools:tell $nick $host $hand $chan $chan1 vers.2 none
return 0
}
vers:process $nick $host $hand $chan $chan1 $why
}
}

time {
if {[matchattr $hand nm|MAOSV $chan]} {
set chan1 "$chan"
set time [ctime [unixtime]]
blacktools:tell $nick $host $hand $chan $chan1 time.1 $time
}
}

ping {
if {[matchattr $hand nm|MAOSV $chan]} {
putquick "PRIVMSG $nick :\001PING [expr {abs([clock clicks -milliseconds])}]\001"
return 0
}
}

us {
if {[matchattr $hand nm|MA $chan]} {
set type 1
set chan1 "$chan"
set users [lindex [split $arg] 2]
if {[regexp {^[&#]} $users] && [matchattr $hand nm|- $chan]} {
set chan "$users"
set users [lindex [split $arg] 3]
}
us:process $nick $host $hand $chan $chan1 $users $type
}
} 

s {
if {[matchattr $hand nm|MA $chan]} {
	set type 1
	set chan1 "$chan"
	set users [lindex [split $arg] 2]
if {[regexp {^[&#]} $users] && [matchattr $hand nm|- $chan]} {
	set chan "$users"
	set users [lindex [split $arg] 3]
		}
	s:process $nick $host $hand $chan $chan1 $users $type
	}
}

info {
if {[matchattr $hand nm|MASOV $chan]} {
set user [lindex [split $arg] 2]
set type 1
set chan1 "$chan"

if {[regexp {^[&#]} $user] && [matchattr $hand nm|MASO $user] && ([lindex [split $arg] 3] == "")} {
	set chan $user
	stats:process $nick $host $hand $chan $chan1
	return
}

if {[regexp {^[&#]} $user] && [matchattr $hand nm|- $chan]} {
set chan "$user"
set user [lindex [split $arg] 3]
}
info:process $nick $host $hand $chan $chan1 $user $type
}
}

channels {
if {[matchattr $hand nm|MASOV $chan]} {
set chan1 "$chan"
channels:process $nick $host $hand $chan $chan1
}
}


userlist {
if {[matchattr $hand nm|MASOV $chan]} {
set level [lindex [split $arg] 2]
set type 1
set chan1 "$chan"
if {[regexp {^[&#]} $level] && [matchattr $hand nm|- $chan]} {
set chan "$level"
set level [lindex [split $arg] 3]
} 
userlist:execute $hand $host $level $chan $chan1 $nick $type
}
}

chuser {
if {[matchattr $hand nm|M $chan]} {
set user [lindex [split $arg] 2]
set type 1
set chan1 "$chan"
set chandle [lindex [split $arg] 3]
chuser:process $nick $host $hand $chan $chan1 $user $chandle $type
	}
}


delhost {
if {[matchattr $hand nm|MA $chan]} {
set user [lindex [split $arg] 2]
set type 1
set chan1 "$chan"
set hosts [lrange [split $arg] 3 end]
delhost:process $nick $host $hand $chan $chan1 $user $hosts $type
}
}

botidle {
if {[matchattr $hand nm|M $chan]} {
set chan1 "$chan"
set what [lindex [split $arg] 2]
if {$what == ""} { blacktools:tell $nick $host $hand $chan $chan1 antibotidle.2 none
return 0
}
botidle:process $nick $host $hand $chan $chan1 $what
}
}

addhost {
if {[matchattr $hand nm|MA $chan]} {
set type 1
set chan1 "$chan"
set user [lindex [split $arg] 2]
set hosts [lrange [split $arg] 3 end]
addhost:process $nick $host $hand $chan $chan1 $user $hosts $type
}
}

del {
if {[matchattr $hand nm|M $chan]} {
set args [lrange [split $arg] 2 end]
set type 1
set chan1 "$chan"
del:process $nick $host $hand $chan $chan1 $args $type
}
}


delacc {
if {[matchattr $hand nm|MA $chan]} {
	set args [lrange [split $arg] 2 end]
	set type 1
	set chan1 "$chan"
	set c [lindex [split $arg] 2]
if {[string equal -nocase "owner" $c] && [matchattr $hand n|- $chan]} {
	set args [lrange [split $arg] 3 end]
	delacc:owner $nick $host $hand $chan $chan1 $args $type
	return
}
if {[regexp {^[&#]} $c] && [matchattr $hand nm|- $chan]} {
	set chan "$c"
	set args [lrange [split $arg] 3 end]
		}
	delacc:process $nick $host $hand $chan $chan1 $args $type
	}
}

adduser {
if {[matchattr $hand nm|MA $chan]} {
set chan1 "$chan"
set level [lindex [split $arg] 2]
set args [lrange [split $arg] 3 end]
set c [lindex [split $arg] 3]
set type 1
if {[regexp {^[&#]} $c] && [matchattr $hand nm|- $chan]} {
set chan "$c"
set args [lrange [split $arg] 4 end]
}
adduser:process $nick $host $hand $chan $chan1 $args $level $type
}
}

add {
if {[matchattr $hand nm|MA $chan]} {
set level [lindex [split $arg] 2]
set time [ctime [unixtime]]
set type 1
set chan1 "$chan"
set args [lrange [split $arg] 3 end]
set c [lindex [split $arg] 3]
if {[regexp {^[&#]} $c] && [matchattr $hand nm|- $chan]} {
set chan "$c"
set args [lrange [split $arg] 4 end]
}
if {[matchattr $hand -|q $chan]} { 
blacktools:tell $nick $host $hand $chan $chan1 gl.suspend none
return 0
}
add:process $args $time $level $hand $host $chan $chan1 $nick $type
}
}

unsuspend {
if {[matchattr $hand nm|- $chan]} {
	set chans [lindex [split $arg] 2]
	set chan1 "$chan"
if {$chans == ""} {blacktools:tell $nick $host $hand $chan $chan1 unsuspend.5 none
	return
}

if {![regexp {^[&#]} $chans]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.novalidchan none
	return
}
 
if {![validchan $chans]} { blacktools:tell $nick $host $hand $chan $chan1 unsuspend.2 $chans
	return
}

if {![channel get $chans inactive]} {
	blacktools:tell $nick $host $hand $chan $chan1 unsuspend.3 $chans
	return
}
	unsuspend:stats $chans $hand $host
	channel set $chans -inactive
	blacktools:tell $nick $host $hand $chan $chan1 unsuspend.4 $chans
	}
}

suspend {
if {[matchattr $hand nm|- $chan]} {
	set chans [lindex [split $arg] 2]
	set reason [join [lrange [split $arg] 3 end]]
	set chan1 "$chan"
if {$chans == ""} {blacktools:tell $nick $host $hand $chan $chan1 suspend.5 none
	return
}
if {![regexp {^[&#]} $chans]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.novalidchan none
	return
}
if {![validchan $chans]} { blacktools:tell $nick $host $hand $chan $chan1 suspend.2 $chans
	return
}

if { [channel get $chans inactive]} {
	blacktools:tell $nick $host $hand $chan $chan1 suspend.3 $chans 
	return
}
	
if {$reason == ""} {
	blacktools:tell $nick $host $hand $chan $chan1 suspend.1 $chans 
	return
}
	suspend:stats $chans $hand $host $reason
	channel set $chans +inactive	
	blacktools:tell $nick $host $hand $chan $chan1 suspend.4 $chans 
	}
}
delchan {
if {[matchattr $hand nm|- $chan]} {
	set chans [encoding convertto "utf-8" [lindex [split $arg] 2]]
	set chan1 "$chan"
	set reason [join [lrange [split $arg] 3 end]]
if {$chans == ""} {blacktools:tell $nick $host $hand $chan $chan1 delchan.4 none
	return
}
if {![regexp {^[&#]} $chans]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.novalidchan none 
	return
} 

if {![validchan $chans]} { blacktools:tell $nick $host $hand $chan $chan1 delchan.2 $chans
	return
}

if {$reason == ""} {
	blacktools:tell:prv $nick $host $hand delchan.4 none
	return
}

if {!($black(homechan) == "") && ![string equal -nocase $black(homechan) "#no_home_chan"]} {
if {[string equal -nocase $chans $black(homechan)]} {
	blacktools:tell:prv $nick $host $hand delchan.5 $chans
	return
	}
}
	channel remove $chans
	delchan:stats $chans $hand $host $reason
	blacktools:tell $nick $host $hand $chan $chan1 delchan.3 $chans
	}
}

addchan {
if {[matchattr $hand nm|- $chan]} {
	set chans [encoding convertto "utf-8" [lindex [split $arg] 2]]
	set key [lindex [split $arg] 3]
	set chan1 "$chan"
if {$chans == ""} {blacktools:tell $nick $host $hand $chan $chan1 addchan.4 none
	return
}

if {![regexp {^[&#]} $chans]} {	
	blacktools:tell $nick $host $hand $chan $chan1 gl.novalidchan none
	return
} 

if {[validchan $chans]} {
	blacktools:tell $nick $host $hand $chan $chan1 addchan.2 $chans
	return
} else {
	channel add $chans
	addchan:stats $chans $hand $host
	blacktools:tell $nick $host $hand $chan $chan1 addchan.3 $chans
if {$key != ""} {
	putquick "JOIN $chans :$key"
	channel set $chans chanmode "+ntk $key"
			}		
		}
	}
}

die {
if {[matchattr $hand nm|- $chan]} {
set chan1 "$chan"
blacktools:tell $nick $host $hand $chan $chan1 die.1 none
utimer 3 [list die "byeeee"]
}
}

jump {
if {[matchattr $hand nm|- $chan]} {
set chan1 "$chan"
set serv [lindex [split $arg] 2]
blacktools:tell $nick $host $hand $chan $chan1 jump.1 none
utimer 3 [list jump $serv]
}
}


save {
if {[matchattr $hand nm|- $chan]} {
set chan1 "$chan"
blacktools:tell $nick $host $hand $chan $chan1 save.1 none
 save
}
}

restart {
if {[matchattr $hand nm|- $chan]} {
set chan1 "$chan"
blacktools:tell $nick $host $hand $chan $chan1 restart.1 none
 utimer 3 [list restart]
}
}

rehash {
if {[matchattr $hand nm|- $chan]} {
set chan1 "$chan"
blacktools:tell $nick $host $hand $chan $chan1 rehash.1 none
 rehash
}
}

nick {
if {[matchattr $hand nm|- $chan]} {
set who "$nick"
set newnick [lindex [split $arg] 2]
nick:process $who $newnick $host $hand $chan
}
}



msg {
if {[matchattr $hand nm|- $chan]} {
	set nicks [lindex [split $arg] 2]
	set chan1 "$chan"
	set msg [join [lrange [split $arg] 3 end]]
if {[matchattr $hand -|q $chan]} { blacktools:tell $nick $host $hand $chan $chan1 gl.suspend none
	return
}
if {$nicks == ""} {blacktools:tell $nick $host $hand $chan $chan1 msg.2 none
	return
}
if {[isbotnick $nicks]} { 
	return 0
		}
putquick "PRIVMSG $nicks :$msg"
	}
}


silence {
if {[matchattr $hand nm|- $chan]} {
	set value [lindex [split $arg] 2]
	set chan1 "$chan"
if {$value == ""} { blacktools:tell $nick $host $hand $chan $chan1 silence.2 none
	return
		}
	silence:process $nick $host $hand $chan $chan1 $value
	}
}

set {
if {[matchattr $hand nm|M $chan]} {
	set flags [lindex [split $arg] 2]
	set type [join [lrange [split $arg] 3 end]]
	set type1 1
	set chan1 "$chan"
if {[regexp {^[&#]} $flags] && [matchattr $hand nm|M $flags]} {
	set chan "$flags"
	set flags [lindex [split $arg] 3]
	set type [join [lrange [split $arg] 4 end]]
}
if {[matchattr $hand mn]} {
if {[string equal -nocase "global" $flags]} {
	set chan "$flags"
	set flags [lindex [split $arg] 3]
	set type [join [lrange [split $arg] 4 end]]
	foreach c [channels] {
	set:process $nick $host $hand $c $chan1 $flags $type $type1	
		}
		return
	}
}
set:process $nick $host $hand $chan $chan1 $flags $type $type1
	}
}

mode {
if {[matchattr $hand nm|OSMA $chan]} {
	set modes [lindex [split $arg] 2]	
	set type 1
	set chan1 "$chan"
foreach c [channels] {
	set backchan [channel get $c backchan]
if {[string match -nocase $chan $backchan] && [channel get $c chanreport]} {
	set chan "$c"
	}
}
if {[regexp {^[&#]} $modes] && [matchattr $hand nm|- $chan]} {
	set chan "$modes"
	set modes [lindex [split $arg] 3]
		}
	mode:process $nick $host $hand $chan $chan1 $modes $type
	}
}

away {
if {[matchattr $hand nm|- $chan]} {
	set chan1 "$chan"
	set aw [join [lrange [split $arg] 2 end]]
if {$aw == "" } {blacktools:tell $nick $host $hand $chan $chan1 away.2 none
	return
		}
	away:process $nick $host $hand $chan $chan1 $aw	
	}
}

cycle {
if {[matchattr $hand nm|OSMA $chan]} {
	set reason [join [lrange [split $arg] 2 end]]
	set c [lindex [split $arg] 2]
	set chan1 "$chan"
if {[regexp {^[&#]} $c] && [matchattr $hand nm|- $chan]} {
	set chan "$c"
	set reason [join [lrange [split $arg] 3 end]]
		}
	cycle:process $nick $host $hand $chan $chan1 $reason
	}
}

purge {
if {[matchattr $hand nm|M $chan]} {
	set c [lindex [split $arg] 2]
	set reason [join [lrange [split $arg] 2 end]]
	set chan1 "$chan"
if {[regexp {^[&#]} $c] && [matchattr $hand nm|- $chan]} {
	set chan "$c"
	set reason [join [lrange [split $arg] 3 end]]
}
if {$reason == ""} {
	blacktools:tell $nick $host $hand $chan $chan1 purge.1 none
	return
}
	purge:process $nick $host $hand $chan $chan1 $reason
	}
}

check {
if {[matchattr $hand nm|OSMA $chan]} {
set checked [lindex [split $arg] 2]
if {[regexp {^[&#]} $checked] && [matchattr $hand nm|- $chan]} {
	set chan "$checked"
	set checked [lindex [split $arg] 3]
}
	set chan1 "$chan"
if {$checked == ""} { blacktools:tell $nick $host $hand $chan $chan1 check.1 none
	return
}
	check:process $nick $host $hand $chan $chan1 $checked
	}
}

broadcast {
if {[matchattr $hand nm|- $chan]} {
set chan1 "$chan"
set text [join [lrange [split $arg] 2 end]]
if {$text == ""} { 
blacktools:tell $nick $host $hand $chan $chan1 broadcast.2 none
return 0
}
broadcast:cmd:process $nick $host $hand $chan $chan1 $text
}
}

act {
if {[matchattr $hand nm|SMA $chan]} {
set text [join [lrange [split $arg] 2 end]]
set c [lindex [split $arg] 2]
set type 1
set chan1 "$chan"
if {[regexp {^[&#]} $c] && [matchattr $hand nm|- $chan]} {
set chan "$c"
set text [join [lrange [split $arg] 3 end]]
}
act:process $nick $host $hand $chan $chan1 $text $type
}
}


say {
if {[matchattr $hand nm|SMA $chan]} {
set text [join [lrange [split $arg] 2 end]]
set c [lindex [split $arg] 2]
set type 1
set chan1 "$chan"
if {[regexp {^[&#]} $c] && [matchattr $hand nm|- $chan]} {
set chan "$c"
set text [join [lrange [split $arg] 3 end]]
}
say:process $nick $host $hand $chan $chan1 $text $type
}
}

v {
if {[matchattr $hand nm|VOSMA $chan]} {
set voicex [lrange $arg 2 end]
set c [lindex [split $arg] 2]
set nick [split $nick]
set chan1 "$chan"
if {[regexp {^[&#]} $c] && [matchattr $hand nm|- $chan]} {
set chan "$c"
set voicex [lrange $arg 3 end]
}
v:process $nick $host $hand $chan $chan1 $voicex
}
}

o {
if {[matchattr $hand nm|OSMA $chan]} {
set opex [lrange $arg 2 end]
set c [lindex [split $arg] 2]
set nick [split $nick]
set chan1 "$chan"
if {[regexp {^[&#]} $c] && [matchattr $hand nm|- $chan]} {
set chan "$c"
set opex [lrange $arg 3 end]
}
o:process $nick $host $hand $chan $chan1 $opex
}
}

uptime {
if {[matchattr $hand nm|- $chan]} {
set chan1 "$chan"
set up [duration [expr [unixtime] - $uptime]]
set on [duration [expr [unixtime] - ${server-online}]]
blacktools:tell $nick $host $hand $chan $chan1 status.1 $up
blacktools:tell $nick $host $hand $chan $chan1 status.2 $server
blacktools:tell $nick $host $hand $chan $chan1 status.3 $on
}
}

status {
if {[matchattr $hand nm|- $chan]} {
set chan1 "$chan"
catch {exec uptime} shelluptime
set up [duration [expr [unixtime] - $uptime]]
set on [duration [expr [unixtime] - ${server-online}]]
blacktools:tell $nick $host $hand $chan $chan1 status.1 $up
blacktools:tell $nick $host $hand $chan $chan1 status.2 $server
blacktools:tell $nick $host $hand $chan $chan1 status.3 $on
blacktools:tell $nick $host $hand $chan $chan1 status.4 [channels]
blacktools:tell $nick $host $hand $chan $chan1 status.5 $shelluptime
}
}

t {
if {[matchattr $hand nm|VOSMA $chan]} {
set topics [join [lrange [split $arg] 2 end]]
set type 1
set chan1 "$chan"
if {[regexp {^[&#]} $topics] && [matchattr $hand nm|- $chan]} {
set chan "$topics"
set topics [join [lrange [split $arg] 3 end]]
}
t:process $nick $host $hand $chan $chan1 $topics $type
}
}

d {
if {[matchattr $hand nm|SMA $chan]} {
	set days [lindex [split $arg] 2]
	set dnick [lindex [split $arg] 3]
	set type 1
	set mask [lindex [split $arg] 3]
	set reason [join [lrange [split $arg] 4 end]]
	set handle [nick2hand $dnick]
	set chan1 "$chan"
foreach c [channels] {
	set backchan [channel get $c backchan]
if {[string match -nocase $chan $backchan] && [channel get $c chanreport]} {
	set chan "$c"
	}
}
if {[regexp {^[&#]} $days] && [matchattr $hand nm|- $chan]} {
	set chan "$days"
	set days [lindex [split $arg] 3]
	set mask [lindex [split $arg] 4]
	set dnick [lindex [split $arg] 4]
	set reason [join [lrange [split $arg] 5 end]]
if {![regexp {^[0-9]} $days]} {
	set mask [lindex [split $arg] 3]
	set dnick [lindex [split $arg] 3]
	set reason [join [lrange [split $arg] 4 end]]
	}	 
}
if {![regexp {^[0-9]} $days]} {
	set mask [lindex [split $arg] 2]
	set dnick [lindex [split $arg] 2]
	set reason [join [lrange [split $arg] 3 end]]
}
	set split_text [split $dnick ","]
if {$split_text != ""} {
foreach txt $split_text {
	d:process $txt $txt $days $reason $nick $hand $host $chan $chan1 $type
			}
		} else { d:process $dnick $mask $days $reason $nick $hand $host $chan $chan1 $type }
	}
}

sb {
if {[matchattr $hand nm|VOSMA $chan]} {
	set bhost [string tolower [lindex [split $arg] 2]]
	set what [lindex [split $arg] 3]
	set type 1
	set chan1 "$chan"
foreach c [channels] {
	set backchan [channel get $c backchan]
if {[string match -nocase $chan $backchan] && [channel get $c chanreport]} {
	set chan "$c"
	}
}
if {[regexp {^[&#]} $bhost] && [matchattr $hand nm|- $chan]} {
	set chan "$bhost"
	set bhost [string tolower [lindex [split $arg] 3]]
	set what [lindex [split $arg] 4]
}

if {$bhost != ""} {
if {(![regexp {\*} $bhost]) && ![onchan $bhost $chan]} {
if {[onchan $bhost $chan]} {
	set bhost "$nick![getchanhost $bhost $chan]"
	sb:process $bhost $what $nick $hand $host $chan $chan1 $type
	return
}
	putquick "WHOIS $bhost $bhost"
	set ::bhost $bhost
	set ::getnick $nick
	set ::hand $hand
	set ::host $host
	set ::chan $chan
	set ::chan1 $chan1
	set ::type $type
	set ::what $what
	bind RAW - 311 sb:get:host
}
if {[regexp {\*} $bhost]} {
	sb:process $bhost $what $nick $hand $host $chan $chan1 $type	
			}
		} else { sb:process $bhost $what $nick $hand $host $chan $chan1 $type }
	utimer 1 [list check:if:bind "sb:get:host" "311"]
	}
}

ub {
if {[matchattr $hand nm|OSMA $chan]} {
	set ban [lindex [split $arg] 2]
	set why [lindex [split $arg] 3]
	set type 1
	set chan1 "$chan"
foreach c [channels] {
	set backchan [channel get $c backchan]
if {[string match -nocase $chan $backchan] && [channel get $c chanreport]} {
	set chan "$c"
	}
}
if {[regexp {^[&#]} $ban] && [matchattr $hand nm|- $chan]} {
	set chan "$ban"
	set ban [lindex [split $arg] 3]
}
if {$ban != ""} {
if {(![regexp {\*} $ban]) && ![onchan $ban $chan]} {
if {[onchan $ban $chan]} {
	set ban "$nick![getchanhost $ban $chan]"
	ub:process $ban $why $nick $hand $host $chan $chan1 $type
	return
}
	putquick "WHOIS $ban $ban"
	set ::ban $ban
	set ::getnick $nick
	set ::hand $hand
	set ::host $host
	set ::chan $chan
	set ::chan1 $chan1
	set ::type $type
	set ::why $why
	bind RAW - 311 ub:get:host	
}
if {[regexp {\*} $ban]} {
	ub:process $ban $why $nick $hand $host $chan $chan1 $type
}
		} else { ub:process $ban $why $nick $hand $host $chan $chan1 $type }
	utimer 1 [list check:if:bind "ub:get:host" "311"]
	}
}

bw {
if {[matchattr $hand nm|OSMA $chan]} {
	set abuser [lindex [split $arg] 2]
	set mask [lindex [split $arg] 2]
	set type 1
	set chan1 "$chan"
	set handle [nick2hand $abuser]
foreach c [channels] {
	set backchan [channel get $c backchan]
if {[string match -nocase $chan $backchan] && [channel get $c chanreport]} {
	set chan "$c"
	}
}
if {[regexp {^[&#]} $abuser] && [matchattr $hand nm|- $chan]} {
	set chan "$abuser"
	set abuser [lindex [split $arg] 3]
	set mask [lindex [split $arg] 3]
}
set split_text [split $abuser ","]
if {$split_text != ""} {	
	foreach txt $split_text {
	bw:process $txt $txt $nick $hand $host $chan $chan1 $type
			}
		} else { bw:process $abuser $mask $nick $hand $host $chan $chan1 $type}
	}
}

stick {
if {[matchattr $hand nm|SMA $chan]} {
	set snick [lindex [split $arg] 2]
	set mask [lindex [split $arg] 2]
	set type 1
	set time [lindex [split $arg] 3]
	set reason [join [lrange [split $arg] 4 end]]
	set handle [nick2hand $snick]
	set list [userlist $black(exceptflags) $chan]
	set chan1 "$chan"
foreach c [channels] {
	set backchan [channel get $c backchan]
if {[string match -nocase $chan $backchan] && [channel get $c chanreport]} {
	set chan "$c"
	}
}
if {[regexp {^[&#]} $snick] && [matchattr $hand nm|- $chan]} {
	set chan "$snick"
	set time [lindex [split $arg] 4]
	set mask [lindex [split $arg] 3]
	set snick [lindex [split $arg] 3]
	set reason [join [lrange [split $arg] 5 end]]
if {![regexp {^[0-9]} $time]} {
	set reason [join [lrange [split $arg] 4 end]]
	}
}
if {![regexp {^[0-9]} $time]} {	
	set reason [join [lrange [split $arg] 3 end]]
}
	set split_text [split $snick ","]
if {$split_text != ""} {
foreach txt $split_text {
	stick:process $txt $txt $time $reason $nick $hand $host $chan $chan1 $type
			}
		} else { stick:process $snick $mask $time $reason $nick $hand $host $chan $chan1 $type }
	}
}

k {
if {[matchattr $hand nm|VOSMA $chan]} {
	set knick [lindex [split $arg] 2]
	set type 1
	set reason [join [lrange [split $arg] 3 end]]
	set handle [nick2hand $knick]
	set chan1 "$chan"
foreach c [channels] {
	set backchan [channel get $c backchan]
if {[string match -nocase $chan $backchan] && [channel get $c chanreport]} {
	set chan "$c"
	}
}
if {[regexp {^[&#]} $knick] && [matchattr $hand nm|- $chan]} {
	set chan "$knick"
	set knick [lindex [split $arg] 3]
	set reason [join [lrange [split $arg] 4 end]]
}
set split_text [split $knick ","]
if {$split_text != ""} {	
foreach txt $split_text {
	k:process $txt $nick $hand $host $reason $chan $chan1 $type
			}
		} else {k:process $knick $nick $hand $host $reason $chan $chan1 $type}
	}
}

spam {
if {[matchattr $hand nm|OSMA $chan]} {
	set spammer [lindex [split $arg] 2]
	set type 1
	set mask [lindex [split $arg] 2]
	set handle [nick2hand $spammer]
	set chan1 "$chan"
foreach c [channels] {
	set backchan [channel get $c backchan]
if {[string match -nocase $chan $backchan] && [channel get $c chanreport]} {
	set chan "$c"
	}
}
if {[regexp {^[&#]} $spammer] && [matchattr $hand nm|- $chan]} {
	set chan "$spammer"
	set spammer [lindex [split $arg] 2]
	set mask [lindex [split $arg] 2]
}
	set split_text [split $spammer ","]
if {$split_text != ""} {	
	foreach txt $split_text {
	spam:process $txt $txt $nick $hand $host $chan $chan1 $type
			}
		} else { spam:process $spammer $mask $nick $hand $host $chan $chan1 $type }
	}
}

w {
if {[matchattr $hand nm|OVSMA $chan]} {
	set wnick [lindex [split $arg] 2]
	set type 1
	set chan1 "$chan"
	set handle [nick2hand $wnick]
foreach c [channels] {
	set backchan [channel get $c backchan]
if {[string match -nocase $chan $backchan] && [channel get $c chanreport]} {
	set chan "$c"
	}
}
if {[regexp {^[&#]} $wnick] && [matchattr $hand nm|- $chan]} {	
	set chan "$wnick"
	set wnick [lindex [split $arg] 3]
}
	set split_text [split $wnick ","]
if {$split_text != ""} {	
	foreach txt $split_text {
	w:process $txt $nick $hand $host $chan $chan1 $type
			}
		} else { w:process $wnick $nick $hand $host $chan $chan1 $type }
	}
}

black {
if {[matchattr $hand nm|SMA $chan]} {
	set blnick [lindex [split $arg] 2]
	set mask [lindex [split $arg] 2]
	set type 1
	set reason [join [lrange [split $arg] 3 end]]
	set handle [nick2hand $blnick]
	set chan1 "$chan"
foreach c [channels] {
	set backchan [channel get $c backchan]
if {[string match -nocase $chan $backchan] && [channel get $c chanreport]} {
	set chan "$c"
	}
}
if {[regexp {^[&#]} $blnick] && [matchattr $hand nm|- $chan]} {
	set chan "$blnick"
	set blnick [lindex [split $arg] 3]
	set mask [lindex [split $arg] 3]
	set reason [join [lrange [split $arg] 4 end]]
}
	set split_text [split $blnick ","]
if {$split_text != ""} {	
	foreach txt $split_text {
	black:process $txt $nick $txt $hand $host $chan $chan1 $reason $type
			}
		} else { black:process $blnick $nick $mask $hand $host $chan $chan1 $reason $type }
	}
}

bl {
if {[matchattr $hand nm|SMA $chan]} {
	set blnick [lindex [split $arg] 2]
	set mask [lindex [split $arg] 2]
	set type 1
	set chan1 "$chan"
	set reason [join [lrange [split $arg] 3 end]]
	set handle [nick2hand $blnick]
foreach c [channels] {
	set backchan [channel get $c backchan]
if {[string match -nocase $chan $backchan] && [channel get $c chanreport]} {
	set chan "$c"
	}
}
if {[regexp {^[&#]} $blnick] && [matchattr $hand nm|- $chan]} {
	set chan "$blnick"
	set blnick [lindex [split $arg] 3]
	set mask [lindex [split $arg] 3]
	set reason [join [lrange [split $arg] 4 end]]
}
set split_text [split $blnick ","]
if {$split_text != ""} {	
	foreach txt $split_text {
	black:process $txt $nick $txt $hand $host $chan $chan1 $reason $type
			}
		} else { black:process $blnick $nick $mask $hand $host $chan $chan1 $reason $type }
	}
}

id {
if {[matchattr $hand nm|OSMA $chan]} {
	set idnick [lindex [split $arg] 2]
	set handle [nick2hand $idnick]
	set type 1
	set chan1 "$chan"
foreach c [channels] {
	set backchan [channel get $c backchan]
if {[string match -nocase $chan $backchan] && [channel get $c chanreport]} {
	set chan "$c"
	}
}
if {[regexp {^[&#]} $idnick] && [matchattr $hand nm|- $chan]} {
	set chan "$idnick"
	set idnick [lindex [split $arg] 3]
}
set split_text [split $idnick ","]
if {$split_text != ""} {
foreach txt $split_text {
	id:process $txt $nick $hand $host $chan $chan1 $type
			}
		} else { id:process $idnick $nick $hand $host $chan $chan1 $type }
	}
}

bot {
if {[matchattr $hand nm|OSMA $chan]} {
	set bot [lindex [split $arg] 2]
	set mask [lindex [split $arg] 2]
	set type 1
	set chan1 "$chan"
foreach c [channels] {
	set backchan [channel get $c backchan]
if {[string match -nocase $chan $backchan] && [channel get $c chanreport]} {
	set chan "$c"
	}
}
if {[regexp {^[&#]} $bot] && [matchattr $hand nm|- $chan]} {
	set chan "$bot"
	set bot [lindex [split $arg] 3]
	set mask [lindex [split $arg] 3]
}
	set split_text [split $bot ","]
foreach txt $split_text {
	bot:process $txt $txt $nick $hand $host $chan $chan1 $type
	}
if {$bot == ""} {
	bot:process $bot $bot $nick $hand $host $chan $chan1 $type
		}	
	}
}

dr {
if {[matchattr $hand nm|OSMA $chan]} {
	set drone [lindex [split $arg] 2]
	set mask [lindex [split $arg] 2]
	set type "1"
	set chan1 "$chan"
foreach c [channels] {
	set backchan [channel get $c backchan]
if {[string match -nocase $chan $backchan] && [channel get $c chanreport]} {
set chan "$c"
	}
}
if {[regexp {^[&#]} $drone] && [matchattr $hand nm|- $chan]} {
	set chan "$drone"
	set drone [lindex [split $arg] 3]
	set mask [lindex [split $arg] 3]
}
	set split_text [split $drone ","]
foreach txt $split_text {
	dr:process $txt $txt $nick $hand $host $chan $chan1 $type
		}
if {$drone == ""} {
	dr:process $drone $drone $nick $hand $host $chan $chan1 $type
		}
	}
}

b {
if {[matchattr $hand nm|OSMA $chan]} {
	set bnick [lindex [split $arg] 2]
	set mask [lindex [split $arg] 2]
	set time [lindex [split $arg] 3]
	set type 1
	set chan1 "$chan"
	set type1 [lindex [split $arg] 3]
	set type2 [lindex [split $arg] 4]
	set reason [join [lrange [split $arg] 4 end]] 
	set handle [nick2hand $bnick]
if {[string match -nocase "global" $type1] || [string match -nocase "global" $type2]  && [matchattr $hand nm|- $chan]} {
if {[string match -nocase $type1 "global"]} {
	set reason [join [lrange [split $arg] 4 end]]
}
if {[string match -nocase $type2 "global"]} {
	set reason [join [lrange [split $arg] 5 end]]
}

if {![regexp {^[0-9]} $time]} {
	set reason [join [lrange [split $arg] 4 end]]
}
	set split_text [split $bnick ","]
	foreach txt $split_text {
	b:global $txt $txt $time $nick $reason $hand $host $chan $chan1 $type1 $type2
	}
	return
}
	set chan1 "$chan"
foreach c [channels] {
	set backchan [channel get $c backchan]
if {[string match -nocase $chan $backchan] && [channel get $c chanreport]} {
	set chan "$c"
	}
}
if {[regexp {^[&#]} $bnick] && [matchattr $hand nm|- $chan]} {
	set chan "$bnick"
	set bnick [lindex [split $arg] 3]
	set mask [lindex [split $arg] 3]
	set time [lindex [split $arg] 4]
	set reason [join [lrange [split $arg] 5 end]]
if {![regexp {^[0-9]} $time]} {
	set reason [join [lrange [split $arg] 4 end]]
	}
}
if {![regexp {^[0-9]} $time]} {
	set reason [join [lrange [split $arg] 3 end]]
}
	set split_text [split $bnick ","]
	foreach txt $split_text {
	b:local $txt $txt $time $nick $reason $hand $host $chan $chan1 $type
	}
if {$bnick == ""} {
	b:local $bnick $bnick $time $nick $reason $hand $host $chan $chan1 $type
		}
	}
}

n {
if {[matchattr $hand nm|OSMA $chan]} {
	set bnick [lindex [split $arg] 2]
	set type 1
	set handle [nick2hand $bnick]
	set chan1 "$chan"
foreach c [channels] {
	set backchan [channel get $c backchan]
if {[string match -nocase $chan $backchan] && [channel get $c chanreport]} {
	set chan "$c"
	}
}
if {[regexp {^[&#]} $bnick] && [matchattr $hand nm|- $chan]} {
	set chan "$bnick"
	set bnick [lindex [split $arg] 3]
}
	set split_text [split $bnick ","]
if {$split_text != ""} {
foreach txt $split_text {
	n:process $txt $nick $hand $host $chan $chan1 $type
			}
		} else { n:process $bnick $nick $hand $host $chan $chan1 $type }
	}
}

ungag {
if {[matchattr $hand nm|OSMA $chan]} {
	set gagger [lindex [split $arg] 2]
	set type 1
	set chan1 "$chan"
foreach c [channels] {
	set backchan [channel get $c backchan]
if {[string match -nocase $chan $backchan] && [channel get $c chanreport]} {
	set chan "$c"
	}
}
if {[regexp {^[&#]} $gagger] && [matchattr $hand nm|- $chan]} {
	set chan "$gagger"
	set gagger [lindex [split $arg] 3]
}
	set split_text [split $gagger ","]
if {$split_text != ""} {
foreach txt $split_text {
	ungag:process $txt $nick $hand $host $chan $chan1 $type
			}
		} else { ungag:process $gagger $nick $hand $host $chan $chan1 $type }
	}
}

gag {
if {[matchattr $hand nm|OSMA $chan]} {
	set gagger [lindex [split $arg] 2]
	set time [lindex [split $arg] 3]
	set reason [lrange [split $arg] 4 end]
	set type 1
	set handle [nick2hand $gagger]
	set chan1 "$chan"
foreach c [channels] {
	set backchan [channel get $c backchan]
if {[string match -nocase $chan $backchan] && [channel get $c chanreport]} {
	set chan "$c"
	}
}
if {[regexp {^[&#]} $gagger] && [matchattr $hand nm|- $chan]} {
	set chan "$gagger"
	set gagger [lindex [split $arg] 3]
	set time [lindex [split $arg] 4]
	set reason [lrange [split $arg] 5 end]
}

if {![regexp {^[0-9]} $time]} {
	set reason [lrange [split $arg] 4 end]
	set time [channel get $chan gag-time]
if {$time == "0"} {
	set time $black(gag_time)
	}
}
	set split_text [split $gagger ","]
if {$split_text != ""} {
foreach txt $split_text {
	gag:process $txt $time $reason $nick $hand $host $chan $chan1 $type
			}
		} else { gag:process $gagger $time $reason $nick $hand $host $chan $chan1 $type }
	}
}

l {
if {[matchattr $hand nm|OSMA $chan]} {
set times [lindex [split $arg] 2]
set type 1
set chan1 "$chan"
if {[regexp {^[&#]} $times] && [matchattr $hand nm|- $chan]} {
set chan "$times"
set times [lindex [split $arg] 3]
}
l:process $nick $host $hand $chan $chan1 $times $type
}
}

ul {
if {[matchattr $hand nm|OSMA $chan]} {
set c [lindex [split $arg] 0]
set chan1 "$chan"
if {[regexp {^[&#]} $c] && [matchattr $hand nm|- $chan]} {

set chan "$c"
}
ul:process $nick $host $hand $chan $chan1
}
}

show {
if {[matchattr $hand nm|OSMA $chan]} {
set wich [lindex [split $arg] 2]
set type 1
set chan1 "$chan"
if {[regexp {^[&#]} $wich] && [matchattr $hand nm|- $chan]} {
set chan "$wich"
set wich [lindex [split $arg] 3]
}
show:process $nick $host $hand $chan $chan1 $wich $type
}
}

reset {
if {[matchattr $hand nm|M $chan]} {
set dece [lindex [split $arg] 2]
set type 1
set chan1 "$chan"
if {[regexp {^[&#]} $dece] && [matchattr $hand nm|- $chan]} {
set chan "$dece"
set dece [lindex [split $arg] 3]
}
reset:process $nick $host $hand $chan $chan1 $dece $type
}
}

clonescan {
if {[matchattr $hand nm|M $chan]} {
set c [lindex [split $arg] 2]
set type 1
set chan1 "$chan"
if {[regexp {^[&#]} $c] && [matchattr $hand nm|- $chan]} {
set chan "$c"
}
scanner:process $nick $host $hand $chan $chan1
}
}

top {
if {[matchattr $hand nm|AOSM $chan]} {
set cmd [lindex [split $arg] 2]
set del [lindex [split $arg] 3]
set type 1
set chan1 "$chan"
if {[regexp {^[&#]} $cmd] && [matchattr $hand nm|- $chan]} {
set chan "$cmd"
set cmd [lindex [split $arg] 3]
set del [lindex [split $arg] 4]
}
top:process $nick $host $hand $chan $chan1 $cmd $type $del
}
}

banlist {
if {[matchattr $hand nm|AOSM $chan]} {
set user [lindex [split $arg] 2]
set type 1
set chan1 "$chan"
if {[regexp {^[&#]} $user] && [matchattr $hand nm|- $chan]} {
set chan "$user"
set user [lindex [split $arg] 3]
}
banlist:process $nick $host $hand $chan $chan1 $user $type
}
}

myset {
if {[matchattr $hand nm|VAOSM $chan]} {
set chan1 "$chan"
set flags [lindex [split $arg] 2]
set type [lindex [split $arg] 3]
if {$type == ""} {
blacktools:tell $nick $host $hand $chan $chan1 myset.4 none
return 0
}
myset:process $nick $host $hand $chan $chan1 $flags $type
}
}

i {
if {[matchattr $hand nm|VAOSM $chan]} {
set type 1
set chan1 "$chan"
set inick [lrange [split $arg] 2 end]
set c [lindex [split $arg] 2]
if {[regexp {^[&#]} $c] && [matchattr $hand nm|- $chan]} {
set chan "$c"
set inick [join [lrange [split $arg] 3 end]]
}
i:process $nick $host $hand $chan $chan1 $inick $type
}
}

addinfo {
if {[matchattr $hand nm|VAOSM $chan]} {
set info [join [lrange [split $arg] 2 end]]
set chan1 "$chan"
if {[matchattr $hand -|q $chan]} { blacktools:tell $nick $host $hand $chan $chan1 gl.suspend none
return 0
}
if {$info == ""} { 
blacktools:tell $nick $host $hand $chan $chan1 addinfo.2 none
return 0
}
addinfo:process $nick $host $hand $chan $chan1 $info
}
}

badword {
if {[matchattr $hand nm|M $chan]} {
	set why [lindex [split $arg] 2]
	set type 1
	set chan1 "$chan"
	set bdword [lrange [split $arg] 3 end]
	set bdnumber [lindex [split $arg] 3]
if {[regexp {^[&#]} $why] && [matchattr $hand nm|- $chan]} {
	set chan "$why"
	set why [lindex [split $arg] 3]
	set bdnumber [lindex [split $arg] 4]
	set bdword [lrange [split $arg] 4 end]
		}
	antibadword:command:process $nick $host $hand $chan $chan1 $why $bdword $bdnumber $type
	}
}
next {
if {[matchattr $hand nm|MSAO $chan]} {
	set option [lindex [split $arg] 2]
	set chan1 $chan
foreach c [channels] {
	set backchan [channel get $c next-backchan]
if {[string match -nocase $chan $backchan] && [channel get $c next]} {
	set chan "$c"
			}
		}
		nextpublic:process $nick $host $hand $chan $chan1 $option
	}
}

helped {
if {[matchattr $hand nm|MSAO $chan]} {
	set user [lindex [split $arg] 2]
	set chan1 $chan
foreach c [channels] {
	set backchan [channel get $c next-backchan]
if {[string match -nocase $chan $backchan] && [channel get $c next]} {
	set chan "$c"
			}
		}
	helpedpublic:process $nick $host $hand $chan $chan1 $user
	}
}

noidle {
if {[matchattr $hand nm|MSAO $chan]} {
	set user [lindex [split $arg] 2]
	set chan1 $chan
foreach c [channels] {
	set backchan [channel get $c next-backchan]
if {[string match -nocase $chan $backchan] && [channel get $c next]} {
	set chan "$c"
			}
		}
	noidlepublic:process $nick $host $hand $chan $chan1 $user
	}
}

skip {
if {[matchattr $hand nm|MSAO $chan]} {
		set user [lindex [split $arg] 2]
		set chan1 $chan
foreach c [channels] {
	set backchan [channel get $c next-backchan]
if {[string match -nocase $chan $backchan] && [channel get $c next]} {
	set chan "$c"

			}
		}
	skippublic:process $nick $host $hand $chan $chan1 $user	
	}
}		
		}
	}
}

proc check:if:bind {bind type} {
	set found_it 0
	set binds [binds raw]
foreach b $binds {
	if {$bind == [lindex $b 4]} {
	unbind RAW - $type $bind
		}
	}
}

