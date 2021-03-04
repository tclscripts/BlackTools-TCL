#########################################################################
##          BlackTools - The Ultimate Channel Control Script           ##
##                    One TCL. One smart Eggdrop                       ##
#########################################################################
#############################   GAG TCL   ###############################
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

proc gag:process {gagger time reason nick hand host chan chan1 type} {
global botnick black
	set cmd_status [btcmd:status $chan $hand "gag" 0]
if {$cmd_status == "1"} {
	return 
}
if {[matchattr $hand q]} { blacktools:tell $nick $host $hand $chan $chan1 gl.glsuspend none
	return
}
if {[matchattr $hand -|q $chan]} { blacktools:tell $nick $host $hand $chan $chan1 gl.suspend none
	return
}
	set split_hand [split $hand ":"]
	set gethand [lindex $split_hand 0]
	set getlang [string tolower [setting:get $chan lang]]
	set return_time [time_return_minute $time]
	set counter 0
	set num 0
	set temp_num 0
	set cmd "gag"
	set show_gagger $gagger
	set show_reason $reason
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
	set handle [nick2hand $gagger]
if {$gagger == ""} {
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
if {![validchan $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.novalidchan none
	return
}
if {![onchan $botnick $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.notonchan none
	return
}

if {[matchattr $handle $black(exceptflags) $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.noban none
	return
}

if {[isbotnick $gagger]} {
	return
}

if {![botisop $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.noop none
	return
}

if {[isop $gagger $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.hasop none
	return
}
if {[onchan $gagger $chan]} {
    set mask [return_mask [return_host_num $cmd $chan [getchanhost $gagger $chan]] [getchanhost $gagger $chan] $gagger] 
} else { 
	set mask ""
}

if {[blacktools:isban $mask $chan] == "1"} {
	blacktools:tell $nick $host $hand $chan $chan1 gag.4 $show_gagger
	return
}
if {[blacktools:isgag $mask $chan] == "1"} {
	blacktools:tell $nick $host $hand $chan $chan1 gag.3 $show_gagger
	return
}
	set split_hand [split $hand ":"]
	set handle [lindex $split_hand 0]
	set type [lindex $split_hand 1]
if {($return_time > "20160" || $return_time == "0")  && [matchattr $handle -|O $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gag.7 none
	return
}
if {$return_time == "-1"} {
	set return_time $black(gag_time)
}
	set return_time [time_return_minute $return_time]
	
if {$mask == ""} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.usernotonchan $show_gagger
	return
}

if {$show_reason == ""} {
	set getreason [setting:get $chan gag-reason]
if {$getreason == ""} {
	set show_reason $black(say.$getlang.gag.6)
	} else {
	set show_reason $getreason
	}
}

if {[isvoice $gagger $chan]} {
	pushmode $chan -v $gagger
}
	set getlang [string tolower [setting:get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
	set replace(%chan%) $chan
	set replace(%time%) [return_time $getlang [expr [expr [unixtime] + [expr $return_time * 60]] - [unixtime]]]
	set replace(%gagger%) $gagger
	set text1 [black:color:set "" $black(say.$getlang.gag.10)]
	set text2 [black:color:set "" $black(say.$getlang.gag.11)]
	set reply1 [join $text1]
	set reply2 [join $text2]
	set gag_user_message [string map [array get replace] $reply1]
	set gag_chan_message [string map [array get replace] $reply2]
	putserv "PRIVMSG $chan :$gag_chan_message"
	putserv "PRIVMSG $gagger :$gag_user_message"
	pushmode $chan +b $mask
	set num [blacktools:ban:find_id]
	blacktools:addban $nick $mask $hand $chan $chan1 $return_time "GAG" "0" "0" $show_reason "0" "" "" "" 0 $num

	set backchan [join [setting:get $chan backchan]]
if {$backchan == ""} { 
	return
}
if {!([validchan $backchan]) || !([onchan $botnick $backchan])} {
	return
}
	set bantime [time_return_minute $return_time]
	set bantime [expr $bantime * 60]
	set expire [return_time_2 $getlang $bantime]
if {$reason == ""} { set reason "N/A" }	
	set replace(%banmask%) $mask
	set replace(%bantime%) $expire
	set replace(%reason%) $reason
	set replace(%chan%) $chan
	set replace(%nick%) $gethand
	set text [black:color:set "" $black(say.$getlang.reportchan.2)]
	set reply [join $text]
	puthelp "PRIVMSG $backchan :[string map [array get replace] $reply]"
}

proc gag:part {nick host hand chan arg} {
	global black
if {![validchan $chan]} {
	return
}
	set uhost "$nick![getchanhost $nick $chan]"
	gag:leave $nick $uhost $chan
}

proc gag:split {nick host hand chan args} {
	global black
if {![validchan $chan]} {
	return
}
	set uhost "$nick![getchanhost $nick $chan]"
	gag:leave $nick $uhost $chan
}

proc gag:kick {nick host hand chan kicked reason} {
	global black
if {![validchan $chan]} {
	return
}
	set uhost "$kicked![getchanhost $kicked $chan]"
	gag:leave $kicked $uhost $chan
}

proc gag:leave {nick host chan} {
	global black
if {![validchan $chan]} {
	return
}
	foreach g [blacktools:gaglist $chan] {
	set read_host [lindex [split $g] 3]
if {[string match -nocase $read_host $host]} {
		pushmode $chan -b $read_host
		}
	}
}

################################# ungag ###############################

proc ungag:process {gagger nick hand host chan chan1 type} {
	global black botnick
	set cmd_status [btcmd:status $chan $hand "ungag" 0]
if {$cmd_status == "1"} { 
	return 
}
if {[matchattr $hand q]} { blacktools:tell $nick $host $hand $chan $chan1 gl.glsuspend none
	return
}
if {[matchattr $hand -|q $chan]} { blacktools:tell $nick $host $hand $chan $chan1 gl.suspend none
	return
}
	set show_gagger $gagger
	set getlang [string tolower [setting:get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
if {$gagger == ""} {
switch $type {
	0 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr "ungag"
	}
	1 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_nick "ungag"
	}
	2 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_priv "ungag"
		}
	}
	return 0
}

if {![validchan $chan]} {
	return
}
if {[onchan $gagger $chan]} {
	 set mask [return_mask [return_host_num "gag" $chan [getchanhost $gagger $chan]] [getchanhost $gagger $chan] $gagger] 
} else {
	blacktools:tell $nick $host $hand $chan $chan1 gl.usernotonchan $show_gagger
	return
}

if {[blacktools:isgag $mask $chan] == "0"} {
	blacktools:tell $nick $host $hand $chan $chan1 ungag.5 $show_gagger
	return
} else {
	blacktools:delban $mask $chan "0" "1"
if {[ischanban $mask $chan]} {
	pushmode $chan -b $mask
}
	set replace(%chan%) $chan
	set replace(%gagger%) $gagger
	set textgagger [black:color:set "" $black(say.$getlang.ungag.7)]
	set textchan [black:color:set "" $black(say.$getlang.ungag.8)]
	set reply1 [join $textgagger]
	set reply2 [join $textchan]
	set ungag_user_message [string map [array get replace] $reply1]
	set ungag_chan_message [string map [array get replace] $reply2]

	putserv "PRIVMSG $gagger :$ungag_user_message"
	putserv "PRIVMSG $chan :$ungag_chan_message"
	set backchan [join [setting:get $chan backchan]]
if {$backchan == ""} { 
	return
}
if {!([validchan $backchan]) || !([onchan $botnick $backchan])} {
	return
}
	set replace(%banmask%) $mask
	set replace(%chan%) $chan
	set replace(%nick%) $hand
	set text [black:color:set "" $black(say.$getlang.reportchan.4)]
	set reply [join $text]
	puthelp "PRIVMSG $backchan :[string map [array get replace] $reply]"
	}
}

proc gag:reban {nick host hand chan args} {
global black
	set bans [lindex $args 1]
if {![botisop $chan]} { return }
	set check_gag [blacktools:isgag $bans $chan]
if {$check_gag == "1"} {
foreach user [chanlist $chan] {
	set gethost "$nick![getchanhost $user $chan]"
if {[string match -nocase $gethost $bans] || [string match -nocase $bans $gethost]} {
	pushmode $chan +b $bans
			}
		}
	}
}

##############
#########################################################################
##   END                                                               ##
#########################################################################
