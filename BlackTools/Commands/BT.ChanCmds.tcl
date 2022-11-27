#########################################################################
##          BlackTools - The Ultimate Channel Control Script           ##
##                    One TCL. One smart Eggdrop                       ##
#########################################################################
##########################   CHAN CMDS TCL   ############################
#########################################################################
##						                       ##
##   BlackTools  : http://blacktools.tclscripts.net	               ##
##   Bugs report : http://www.tclscripts.net/	                       ##
##   GitHub page : https://github.com/tclscripts/BlackToolS-TCL        ##
##   Online Help : irc://irc.undernet.org/tcl-help 	      	       ##
##                 #TCL-HELP / UnderNet                                ##
##                 You can ask in english or romanian                  ##
##					                               ##
#########################################################################

proc comand:chan {nick host hand chan arg} {
global botnick wordsdir sdir black seendir count server uptime {server-online} version lastbind
	set cmd_chan [lindex [split $arg] 0]
	set chan1 $chan
if {[isbotnick $nick]} { return }

	set split_cmd [split $cmd_chan ""]
	set char [lindex $split_cmd 0]
	set cmd [join [lrange $split_cmd 1 end] ""]
	set return [blacktools:mychar $char $hand]
if {$return == "0"} {
		return
}
switch [string tolower $cmd] {
vote {
	set type 0
	set word [lindex [split $arg] 1]
    set text [join [lrange [split $arg] 2 end]]
    set id [lindex [split $arg] 2]
	set opt [lindex [split $arg] 3]
	set vote_next [lindex [split $arg] 4]
	vote:process $nick $char $host $hand $chan $chan1 $type [list $word $text $id $opt $vote_next]
}

alias {
if {[matchattr $hand mno|MAO $chan]} {
	set chan1 $chan
	set type 0
	set what [lindex [split $arg] 1]
	set cmdf [lindex [split $arg] 2]
	set cmd_used [lindex [split $arg] 3]
	set text [join [lrange [split $arg] 4 end]]
	alias:process $nick $char $hand $chan $chan1 $type [list $what $cmdf $cmd_used $text]
	}
}

exempt {
if {[matchattr $hand mno|M $chan]} {
	set chan1 $chan
	set type 0
	set gl 0
	set ecmd [lindex [split $arg] 1]
	set ehost [lindex [split $arg] 2]
	set next [lindex [split $arg] 2]
	set tm [lindex [split $arg] 3]
	set global [lindex [split $arg] 4]
	set reason [join [lrange [split $arg] 5 end]]
	set return_time [time_return_minute $tm]
if {$return_time == "-1"} {
	set global [lindex [split $arg] 3]
	set reason [join [lrange [split $arg] 4 end]]
}
if {[regexp {^[&#]} $ecmd] && [matchattr $hand nmo|MAO $ecmd]} {
	set chan $ecmd
	set ecmd [lindex [split $arg] 2]
	set ehost [lindex [split $arg] 3]
	set next [lindex [split $arg] 3]
	set tm [lindex [split $arg] 4]
	set global [lindex [split $arg] 5]
	set reason [join [lrange [split $arg] 6 end]]
	set return_time [time_return_minute $tm]
if {$return_time == "-1"} {
	set global [lindex [split $arg] 4]
	set reason [join [lrange [split $arg] 5 end]]
}
if {[string equal -nocase "$global" "global"] && [matchattr $hand nmo]} {
	set gl 1
	set tm [lindex [split $arg] 4]
	set reason [join [lrange [split $arg] 6 end]]
	set return_time [time_return_minute $tm]
if {$return_time == "-1"} {
	set reason [join [lrange [split $arg] 5 end]]
			} 
	} else {
if {$return_time == "-1"} {
	set reason [join [lrange [split $arg] 4 end]]
	} else {
	set reason [join [lrange [split $arg] 5 end]]
		}
	}
} else {
if {[string equal -nocase "$global" "global"] && [matchattr $hand nm]} {
	set gl 1
	set tm [lindex [split $arg] 3]
	set reason [join [lrange [split $arg] 5 end]]
	set return_time [time_return_minute $tm]
if {$return_time == "-1"} {
	set reason [join [lrange [split $arg] 4 end]]
		} 
	} else {
if {$return_time == "-1"} {
	set reason [join [lrange [split $arg] 3 end]]
	} else {
	set reason [join [lrange [split $arg] 4 end]]
		}
	}
}
if {![regexp {[0-9]} $tm]} {
	set return_time $black(exempt:default_time)
}
	exempt:process $nick $char $hand $chan $chan1 $type $ecmd $ehost $return_time $reason $gl $next
	}
}

login {
if {[matchattr $hand mn]} {
	set chan1 $chan
	login:process $nick $host $hand $chan $chan1
	}
}

report {
	set type 0
	set w [lindex [split $arg] 1]
	set message [join [lrange [split $arg] 2 end]]
	set chan1 $chan
if {[regexp {^[&#]} $w]} {
	set chan $w
	set w [lindex [split $arg] 2]
	set message [join [lrange [split $arg] 3 end]]
}
if {[matchattr $hand mno|MAO $chan]} {
	return
}
	report:process $nick $char $host $hand $chan $chan1 $type $w $message
}

anunt {
if {[matchattr $hand nmo|M $chan]} {
	set type 0
	set chan1 "$chan"
	set who [lindex [split $arg] 1]
	set message [join [lrange [split $arg] 2 end]]
	set number [lindex [split $arg] 2]
if {[regexp {^[&#]} $who] && [matchattr $hand nmo|M $who]} {
	set chan $who
	set who [lindex [split $arg] 2]
	set message [join [lrange [split $arg] 3 end]]
	set number [lindex [split $arg] 3]
		}
	anunt:process $nick $char $hand $chan $chan1 $who $message $number $type
	}
}

link {
if {[matchattr $hand nm]} {
	set type 0
	set channels [join [lrange [split $arg] 1 end]]
	set what [lindex [split $arg] 1]
	set delchan [lindex [split $arg] 2]
	set chan1 $chan
	link:process $nick $char $hand $chan $chan1 $type $what $channels $delchan
	}
}

note {
if {[matchattr $hand nmo|MAOV $chan]} {
	set who [lindex [split $arg] 1]
	set note [join [lrange [split $arg] 1 end]]
	set number [lindex [split $arg] 2]
	set user_send [lindex [split $arg] 2]
	set note_send [join [lrange [split $arg] 3 end]]
	set type 0
	set chan1 $chan
	note:process $nick $char $hand $chan $chan1 $who $note $user_send $note_send $number $type
	}
}

q {
if {($black(quote:usage) == "1" && [matchattr $hand nmo|MAOV $chan]) || $black(quote:usage) == "0"} {
	set otherchan 0
	set who [lindex [split $arg] 1]
	set next [lindex [split $arg] 2]
	set quote [join [lrange [split $arg] 1 end]]
if {$who == "*"} {
	set who [lindex [split $arg] 2]
	set quote [join [lrange [split $arg] 1 end]]
}
if {[regexp {^[\[]} $who]} {
	set who [lindex [split $arg] 2]
	set quote [join [lrange [split $arg] 1 end]]
if {$who == "*"} {
	set who [lindex [split $arg] 3]
	set quote [join [lrange [split $arg] 1 end]]
	}
}
	set type 0
	set chan1 $chan
if {[regexp {^[&#]} $who] && [matchattr $hand nmo|AOMV $who]} {
	set otherchan 1
	set chan "$who"
	set who [lindex [split $arg] 2]
	set next [lindex [split $arg] 3]
	set quote [join [lrange [split $arg] 2 end]]
if {$who == "*"} {
	set who [lindex [split $arg] 3]
	set quote [join [lrange [split $arg] 2 end]]
}
if {[regexp {^[\[]} $who]} {
	set who [lindex [split $arg] 3]
	set quote [join [lrange [split $arg] 2 end]]
if {$who == "*"} {
	set who [lindex [split $arg] 4]
	set quote [join [lrange [split $arg] 2 end]]
		}
	}
}
if {$otherchan == "1"} {
	quote:process $nick "$char:chan" $hand $chan $chan1 $type $who $quote [lrange [split $arg] 2 end] $next
	} else {
	quote:process $nick "$char:chan" $hand $chan $chan1 $type $who $quote [lrange [split $arg] 1 end] $next
		}
	}
}

enable {
if {[matchattr $hand nmo|M $chan]} {
	set what [lindex [split $arg] 1]
	set user [lindex [split $arg] 2]
	set chan1 "$chan"
	set type 0
if {[regexp {^[&#]} $what] && [matchattr $hand nmo|M $what]} {
	set chan "$what"
	set what [lindex [split $arg] 2]
	set user [lindex [split $arg] 3]
}
	enable:process $nick $char $hand $chan $chan1 $type $what $user
	}
}

disable {
if {[matchattr $hand nmo|M $chan]} {
	set what [lindex [split $arg] 1]
	set user [lindex [split $arg] 2]
	set chan1 "$chan"
	set type 0
if {[regexp {^[&#]} $what] && [matchattr $hand nmo|M $what]} {
	set chan "$what"
	set what [lindex [split $arg] 2]
	set user [lindex [split $arg] 3]
}
	disable:process $nick $char $hand $chan $chan1 $type $what $user
	}
}

securemode {
if {[matchattr $hand nmo|M $chan]} {
	set type 0
	set chan1 "$chan"
	set why [lindex [split $arg] 1]
	set except [join [lrange [split $arg] 2 end]]
	set number [lindex [split $arg] 2]
if {[regexp {^[&#]} $why] && [matchattr $hand nmo|M $why]} {
	set chan "$why"
	set why [lindex [split $arg] 2]
	set except [join [lrange [split $arg] 3 end]]
	set number [lindex [split $arg] 3]
}
	prot:module:process $nick $char $hand $chan $chan1 $why $except $type $number "securemode"
	}
}

cp {
if {[matchattr $hand nm]} {
	set type 0
	set chan1 $chan
	set what [lindex [split $arg] 1]
	set from [lindex [split $arg] 2]
	set to [lindex [split $arg] 3]
	cp:process $nick $char $hand $chan $chan1 $type $what $from $to
	}
}

troll {
if {[matchattr $hand nmo|AOM $chan]} {
	set tr [lindex [split $arg] 1]
	set chan1 "$chan"
	set type 0
if {[regexp {^[&#]} $tr] && [matchattr $hand nmo|MAO $tr]} {
	set chan "$tr"
	set tr [lindex [split $arg] 2]
}
	userhost:act $tr $nick $hand $char $chan $chan1 $type "1440" "troll" "" "0"
	}
}

badhost {
if {[matchattr $hand nmo|M $chan]} {
	set type 0
	set chan1 "$chan"
	set why [lindex [split $arg] 1]
	set badh [join [lrange [split $arg] 2 end]]
	set number [lindex [split $arg] 2]
if {[regexp {^[&#]} $why] && [matchattr $hand nmo|M $why]} {
	set chan "$why"
	set why [lindex [split $arg] 2]
	set badh [join [lrange [split $arg] 3 end]]
	set number [lindex [split $arg] 3]
}
	prot:module:process $nick $char $hand $chan $chan1 $why $badh $type $number "badhost"
	}
}

antispam {
if {[matchattr $hand nmo|M $chan]} {
	set type 0
	set chan1 "$chan"
	set why [lindex [split $arg] 1]
	set antisp [join [lrange [split $arg] 2 end]]
	set number [lindex [split $arg] 2]
if {[regexp {^[&#]} $why] && [matchattr $hand nmo|M $why]} {
	set chan "$why"
	set why [lindex [split $arg] 2]
	set antisp [join [lrange [split $arg] 3 end]]
	set number [lindex [split $arg] 3]
}
	prot:module:process $nick $char $hand $chan $chan1 $why $antisp $type $number "antispam"
	}
}

badrealname {
if {[matchattr $hand nmo|M $chan]} {
	set type 0
	set chan1 "$chan"
	set why [lindex [split $arg] 1]
	set badf [join [lrange [split $arg] 2 end]]
	set number [lindex [split $arg] 2]
if {[regexp {^[&#]} $why] && [matchattr $hand nmo|M $why]} {
	set chan "$why"
	set why [lindex [split $arg] 2]
	set badf [join [lrange [split $arg] 3 end]]
	set number [lindex [split $arg] 3]
}
	prot:module:process $nick $char $hand $chan $chan1 $why $badf $type $number "badrealname"
	}
}

badquitpart {
if {[matchattr $hand nmo|M $chan]} {
	set type 0
	set chan1 "$chan"
	set why [lindex [split $arg] 1]
	set badq [join [lrange [split $arg] 2 end]]
	set number [lindex [split $arg] 2]
if {[regexp {^[&#]} $why] && [matchattr $hand nmo|M $why]} {
	set chan "$why"
	set why [lindex [split $arg] 2]
	set badq [join [lrange [split $arg] 3 end]]
	set number [lindex [split $arg] 3]
}
	prot:module:process $nick $char $hand $chan $chan1 $why $badq $type $number "badquitpart"
	}
}


badident {
if {[matchattr $hand nmo|M $chan]} {
	set type 0
	set chan1 "$chan"
	set why [lindex [split $arg] 1]
	set badi [join [lrange [split $arg] 2 end]]
	set number [lindex [split $arg] 2]
if {[regexp {^[&#]} $why] && [matchattr $hand nmo|M $why]} {
	set chan "$why"
	set why [lindex [split $arg] 2]
	set badi [join [lrange [split $arg] 3 end]]
	set number [lindex [split $arg] 3]
}
	prot:module:process $nick $char $hand $chan $chan1 $why $badi $type $number "badident"
	}
}


badnick {
if {[matchattr $hand nmo|M $chan]} {
	set type 0
	set chan1 "$chan"
	set why [lindex [split $arg] 1]
	set badn [join [lrange [split $arg] 2 end]]
	set number [lindex [split $arg] 2]
if {[regexp {^[&#]} $why] && [matchattr $hand nmo|M $why]} {
	set chan "$why"
	set why [lindex [split $arg] 2]
	set badn [join [lrange [split $arg] 3 end]]
	set number [lindex [split $arg] 3]
}
	prot:module:process $nick $char $hand $chan $chan1 $why $badn $type $number "badnick"
	}
}


badword {
if {[matchattr $hand nmo|M $chan]} {
	set type 0
	set chan1 "$chan"
	set why [lindex [split $arg] 1]
	set badw [join [lrange [split $arg] 2 end]]
	set number [lindex [split $arg] 2]
if {[regexp {^[&#]} $why] && [matchattr $hand nmo|M $why]} {
	set chan "$why"
	set why [lindex [split $arg] 2]
	set badw [join [lrange [split $arg] 3 end]]
	set number [lindex [split $arg] 3]
}
	prot:module:process $nick $char $hand $chan $chan1 $why $badw $type $number "badword"
	}
}


unset {
if {[matchattr $hand nmo|M $chan]} {
	set setting [lindex [split $arg] 1]
	set chan1 $chan
	set type 0
if {[regexp {^[&#]} $setting] && [matchattr $hand nmo|M $setting]} {
	set chan $setting
	set setting [lindex [split $arg] 2]
	}
if {[string equal -nocase $setting "global"] && [matchattr $hand nm]} {
	set setting [lindex [split $arg] 2]
foreach c [channels] {
	unset:process $nick $char $hand $c $chan1 $setting $type
			}
		return
	}
foreach c [channels] {
	set backchan [join [setting:get $c backchan]]
if {[string match -nocase $chan $backchan]} {
	set chan "$c"
	}
}
	unset:process $nick $char $hand $chan $chan1 $setting $type
	}
}

greet {
if {[matchattr $hand nmo|M $chan]} {
	set who [lindex [split $arg] 1]
	set modul "greet"
	set type 0
	set chan1 $chan
	set greet [join [lrange [split $arg] 2 end]]
if {[regexp {^[&#]} $who] && [matchattr $hand nmo|M $who]} {
	set chan $who
	set who [lindex [split $arg] 2]
	set greet [join [lrange [split $arg] 3 end]]
	}
	othermodule:process $nick $char $hand $chan $chan1 $who $greet $type $modul	
	}
}

leave {
if {[matchattr $hand nmo|M $chan]} {
	set who [lindex [split $arg] 1]
	set modul "leave"
	set type 0
	set chan1 $chan
	set leave [join [lrange [split $arg] 2 end]]
if {[regexp {^[&#]} $who] && [matchattr $hand nmo|M $who]} {
	set chan $who
	set who [lindex [split $arg] 2]
	set leave [join [lrange [split $arg] 3 end]]
	}
	othermodule:process $nick $char $hand $chan $chan1 $who $leave $type $modul		
	}
}

topic {
if {[matchattr $hand nmo|M $chan]} {
	set who [lindex [split $arg] 1]
	set modul "topic"
	set type 0
	set chan1 $chan
	set topic [join [lrange [split $arg] 2 end]]
if {[regexp {^[&#]} $who] && [matchattr $hand nmo|M $who]} {
	set chan $who
	set who [lindex [split $arg] 2]
	set topic [join [lrange [split $arg] 3 end]]
}
	othermodule:process $nick $char $hand $chan $chan1 $who $topic $type $modul	
	}
}

vr {
if {[matchattr $hand nmo|OMA $chan]} {
	set vr [lindex [split $arg] 1]
	set com [join [lrange [split $arg] 2 end]]
	set chan1 "$chan"
	set type 0
if {[regexp {^[&#]} $vr] && [matchattr $hand nmo|MAO $vr]} {
	set chan "$vr"
	set vr [lindex [split $arg] 2]
	set com [join [lrange [split $arg] 3 end]]
}
foreach c [channels] {
	set backchan [join [setting:get $c backchan]]
if {[string match -nocase $chan $backchan]} {
	set chan "$c"
	}
}
	userhost:act $vr $nick $hand $char $chan $chan1 $type $black(vr:bantime) "vr" "$com" "0"
	}
}

dr {
if {[matchattr $hand nmo|OMA $chan]} {
	set drone [lindex [split $arg] 1]
	set com [join [lrange [split $arg] 2 end]]
	set type 0
	set chan1 "$chan"
if {[regexp {^[&#]} $drone] && [matchattr $hand nmo|OMA $drone]} {
	set chan "$drone"
	set drone [lindex [split $arg] 2]
	set com [join [lrange [split $arg] 3 end]]
}
foreach c [channels] {
	set backchan [join [setting:get $c backchan]]
if {[string match -nocase $chan $backchan]} {
	set chan "$c"
	}
}
	userhost:act $drone $nick $hand $char $chan $chan1 $type $black(dr:bantime) "dr" "$com" "0"
	}
}

bot {
if {[matchattr $hand nmo|OMA $chan]} {
	set bot [lindex [split $arg] 1]
	set com [join [lrange [split $arg] 2 end]]
	set type 0
	set chan1 "$chan"
if {[regexp {^[&#]} $bot] && [matchattr $hand nmo|OMA $bot]} {
	set chan "$bot"
	set bot [lindex [split $arg] 2]
	set com [join [lrange [split $arg] 3 end]]
}
foreach c [channels] {
	set backchan [join [setting:get $c backchan]]
if {[string match -nocase $chan $backchan]} {
	set chan "$c"
	}
}
	userhost:act $bot $nick "$hand:bot" $char $chan $chan1 $type $black(bot:bantime) "bot" "$com" "0"
	}
}

n {
if {[matchattr $hand nmo|OMA $chan]} {
	set badnick [lindex [split $arg] 1]
	set com [join [lrange [split $arg] 2 end]]
	set type 0
	set chan1 "$chan"
if {[regexp {^[&#]} $badnick] && [matchattr $hand nmo|MAO $badnick]} {
	set chan "$badnick"
	set badnick [lindex [split $arg] 2]
	set com [join [lrange [split $arg] 3 end]]
}
if {[setting:get $chan nextshortcmd]} {
	nextpublic:process $nick $char $hand $chan $chan1 $badnick
	return
}
if {[regexp {\*} $badnick]} {
	blacktools:tell $nick $char $hand $chan $chan1 gl.instr "n"
	return
}
if {$badnick == ""} {
	blacktools:tell $nick $char $hand $chan $chan1 gl.instr "n"
	return
}
foreach c [channels] {
	set backchan [join [setting:get $c backchan]]
if {[string match -nocase $chan $backchan]} {
	set chan "$c"
	}
}
	bancmds:process $badnick $badnick $nick $hand $char $chan $chan1 $type $black(n:bantime) "n" "$com" "0"
	}
}

id {
if {[matchattr $hand nmo|OMA $chan]} {
	set badident [lindex [split $arg] 1]
	set com [join [lrange [split $arg] 2 end]]
	set handle [nick2hand $badident]
	set type 0
	set chan1 "$chan"
if {[regexp {^[&#]} $badident] && [matchattr $hand nmo|OMA $badident]} {
	set chan "$badident"
	set badident [lindex [split $arg] 2]
	set com [join [lrange [split $arg] 3 end]]
}
foreach c [channels] {
	set backchan [join [setting:get $c backchan]]
if {[string match -nocase $chan $backchan]} {
	set chan "$c"
	}
}
	userhost:act $badident $nick $hand $char $chan $chan1 $type $black(id:bantime) "id" "$com" "0"
	}
}

spam {
if {[matchattr $hand nmo|OMA $chan]} {
	set spammer [lindex [split $arg] 1]
	set com [join [lrange [split $arg] 2 end]]
	set type 0
	set chan1 "$chan"
if {[regexp {^[&#]} $spammer] && [matchattr $hand nmo|OMA $spammer]} {
	set chan "$spammer"
	set spammer [lindex [split $arg] 2]
	set com [join [lrange [split $arg] 3 end]]
}
foreach c [channels] {
	set backchan [join [setting:get $c backchan]]
if {[string match -nocase $chan $backchan]} {
	set chan "$c"
	}
}
	userhost:act $spammer $nick $hand $char $chan $chan1 $type $black(spam:bantime) "spam" "$com" "0"
	}
}

bw {
if {[matchattr $hand nmo|OMA $chan]} {
	set badw [lindex [split $arg] 1]
	set com [join [lrange [split $arg] 2 end]]
	set type 0
	set chan1 "$chan"
if {[regexp {^[&#]} $badw] && [matchattr $hand nmo|OMA $badw]} {
	set chan "$badw"
	set badw [lindex [split $arg] 2]
	set com [join [lrange [split $arg] 3 end]]
}
foreach c [channels] {
	set backchan [join [setting:get $c backchan]]
if {[string match -nocase $chan $backchan]} {
	set chan "$c"
	}
}
	userhost:act $badw $nick $hand $char $chan $chan1 $type $black(bw:bantime) "bw" "$com" "0"
	}
}

mb {
if {[matchattr $hand nmo|OMA $chan]} {
	set badd [lindex [split $arg] 1]
	set reason [join [lrange [split $arg] 2 end]]
	set type 0
	set chan1 "$chan"
if {[regexp {^[&#]} $badd] && [matchattr $hand nmo|OMA $badw]} {
	set chan "$badd"
	set badd [lindex [split $arg] 2]
	set reason [join [lrange [split $arg] 3 end]]
}
foreach c [channels] {
	set backchan [join [setting:get $c backchan]]
if {[string match -nocase $chan $backchan]} {
	set chan "$c"
	}
}
	userhost:act $badd $nick $hand $char $chan $chan1 $type $black(mb:bantime) "mb" $reason "0"
	}
}


black {
if {[matchattr $hand nmo|MA $chan]} {
	set blackb [lindex [split $arg] 1]
	set reason [join [lrange [split $arg] 2 end]]
	set type 0
	set chan1 "$chan"
if {[regexp {^[&#]} $blackb] && [matchattr $hand nmo|MA $blackb]} {
	set chan "$blackb"
	set blackb [lindex [split $arg] 2]
	set reason [join [lrange [split $arg] 3 end]]
}
foreach c [channels] {
	set backchan [join [setting:get $c backchan]]
if {[string match -nocase $chan $backchan]} {
	set chan "$c"
	}
}
	userhost:act $blackb $nick $hand $char $chan $chan1 $type "0" "black" $reason "0"
	}
}

bl {
if {[matchattr $hand nmo|MA $chan]} {
	set blackb [lindex [split $arg] 1]
	set reason [join [lrange [split $arg] 2 end]]
	set type 0
	set chan1 "$chan"
if {[regexp {^[&#]} $blackb] && [matchattr $hand nmo|MA $blackb]} {
	set chan "$blackb"
	set blackb [lindex [split $arg] 2]
	set reason [join [lrange [split $arg] 3 end]]
}
foreach c [channels] {
	set backchan [join [setting:get $c backchan]]
if {[string match -nocase $chan $backchan]} {
	set chan "$c"
	}
}
	userhost:act $blackb $nick $hand $char $chan $chan1 $type "0" "black" $reason "0"
	}
}

b {
if {[matchattr $hand nmo|OMA $chan]} {
	set no_time 0
	set type 0
	set gl 0
	set link 0
	set chan1 "$chan"
	set level ""
	set regex 0
	set b [lindex [split $arg] 1]
if {[string equal -nocase $b "-regex"]} {
	set regex 1
	set b [lindex [split $arg] [expr 1 + $regex]]
}
if {[setting:get $chan nextshortcmd]} {
	noidlepublic:process $nick $char $hand $chan $chan1 $b 0
	return
}
	set tm [lindex [split $arg] [expr 2 + $regex]]
	set global [lindex [split $arg] [expr 3 + $regex]]
	set reason [join [lrange [split $arg] [expr 4 + $regex] end]]
	set return_time [time_return_minute $tm]
if {$return_time == "-1"} {
	set global [lindex [split $arg] [expr 2 + $regex]]
	set reason [join [lrange [split $arg] [expr 3 + $regex] end]]
}
if {[regexp {^[&#]} $b] && [matchattr $hand nmo|MAO $b]} {
	set chan $b
	set b [lindex [split $arg] 2]
if {[string equal -nocase $b "-regex"]} {
	set regex 1
	set b [lindex [split $arg] [expr 2 + $regex]]	
}
	set tm [lindex [split $arg] [expr 3 + $regex]]
	set global [lindex [split $arg] [expr 4 + $regex]]
	set reason [join [lrange [split $arg] [expr 5 + $regex] end]]
	set return_time [time_return_minute $tm]
if {$return_time == "-1"} {
	set global [lindex [split $arg] [expr 3 + $regex]]
	set reason [join [lrange [split $arg] [expr 4 + $regex] end]]
}
if {[regexp {^[-]} $tm]} {
	set level [blacktools:check:levelban $hand $chan $tm]
	set reason [join [lrange [split $arg] [expr 5 + $regex] end]]
	set tm [lindex [split $arg] [expr 4 + $regex]]
	set return_time [time_return_minute $tm]
if {$return_time == "-1"} {
	set tm [lindex [split $arg] [expr 3 + $regex]]
	set reason [join [lrange [split $arg] [expr 4 + $regex] end]]
		} 
} elseif {[string equal -nocase "$global" "global"] && [matchattr $hand nm]} {
	set gl 1
	set tm [lindex [split $arg] [expr 3 + $regex]]
	set reason [join [lrange [split $arg] [expr 5 + $regex] end]]
	set return_time [time_return_minute $tm]
if {$return_time == "-1"} {
	set reason [join [lrange [split $arg] [expr 4 + $regex] end]]
			} 
	} else {
if {$return_time == "-1"} {
	set reason [join [lrange [split $arg] [expr 3 + $regex] end]]
	} else {
	set reason [join [lrange [split $arg] [expr 4 + $regex] end]]
		}
	}
} else {
if {[regexp {^[-]} $tm]} {
	set levelban 1
	set level [blacktools:check:levelban $hand $chan $tm]
	set reason [join [lrange [split $arg] [expr 4 + $regex] end]]
	set tm [lindex [split $arg] [expr 3 + $regex]]
	set return_time [time_return_minute $tm]
if {$return_time == "-1"} {
	set tm [lindex [split $arg] [expr 2 + $regex]]
	set reason [join [lrange [split $arg] [expr 3 + $regex] end]]
		} 
} elseif {[string equal -nocase "$global" "global"] && [matchattr $hand nm]} {
	set gl 1
	set tm [lindex [split $arg] [expr 2 + $regex]]
	set reason [join [lrange [split $arg] [expr 4 + $regex] end]]
	set return_time [time_return_minute $tm]
if {$return_time == "-1"} {
	set reason [join [lrange [split $arg] [expr 3 + $regex] end]]
			} 
} elseif {[string equal -nocase "$global" "link"] && [matchattr $hand nm]} {
	set link 1
	set tm [lindex [split $arg] [expr 2 + $regex]]
	set reason [join [lrange [split $arg] [expr 4 + $regex] end]]
	set return_time [time_return_minute $tm]
if {$return_time == "-1"} {
	set reason [join [lrange [split $arg] [expr 3 + $regex] end]]
			} 
	} else {
if {$return_time == "-1"} {
	set reason [join [lrange [split $arg] [expr 2 + $regex] end]]
	} else {
	set reason [join [lrange [split $arg] [expr 3 + $regex] end]]
		}
	}
}
	
if {($return_time > "20160" || $return_time == "0")  && [matchattr $hand -|O $chan]} {
	blacktools:tell $nick $char $hand $chan $chan1 b.6 none
	return
}
if {$return_time == "-1"} {
	set return_time $black(b:bantime)
}
if {[llength $level] > "1"} {
	blacktools:tell $nick $char $hand $chan $chan1 gl.invalidlevel [string map {"0" ""} $level]
	return
}
foreach c [channels] {
	set backchan [join [setting:get $c backchan]]
if {[string match -nocase $chan $backchan]} {
	set chan "$c"
	}
}
if {$regex == 1} {
	set check_regex [catch {regexp $b ""}]
if {$check_regex == 1} {
	blacktools:tell $nick $char $hand $chan $chan1 b.11 "$b"
	return
	}
}
if {$regex == 1} {
	set cmd [list "b" "REGEX"]
} else {
	set cmd "b"
}
if {$level != ""} {
	userhost:act $b $nick "$hand:$level" $char $chan $chan1 $type $return_time $cmd $reason $gl
} else {
if {$link == "1"} {
	userhost:act $b $nick $hand $char $chan $chan1 $type $return_time $cmd $reason "2"
	utimer 5 [list blacktools:link_ban [link:chan:get $chan] 0 $b $nick $hand $char $chan $chan1 $type $return_time $cmd $reason 2]
	return
}
	userhost:act $b $nick $hand $char $chan $chan1 $type $return_time $cmd $reason $gl
		}
	}
}

stick {
if {[matchattr $hand nmo|M $chan]} {
	set stickb [lindex [split $arg] 1]
	set tm [lindex [split $arg] 2]
	set return_time [time_return_minute $tm]
if {$return_time == "-1"} {
	set reason [join [lrange [split $arg] 2 end]]
} else {
	set tm [lindex [split $arg] 3]
	set reason [join [lrange [split $arg] 3 end]]
}
	set type 0
	set chan1 "$chan"
if {[regexp {^[&#]} $stickb] && [matchattr $hand nmo|MA $stickb]} {
	set chan "$stickb"
	set stickb [lindex [split $arg] 2]
	set tm [lindex [split $arg] 3]
	set return_time [time_return_minute $tm]
if {$return_time == "-1"} {
	set reason [join [lrange [split $arg] 3 end]]
} else {
	set tm [lindex [split $arg] 4]
	set reason [join [lrange [split $arg] 4 end]] 
	}
}
if {($return_time > "20160" || $return_time == "0")  && [matchattr $hand -|OS $stickb]} {
	blacktools:tell $nick $char $hand $chan $chan1 b.6 none
	return
}

if {$return_time == "-1"} {
	set return_time $black(stick:bantime)
}
foreach c [channels] {
	set backchan [join [setting:get $c backchan]]
if {[string match -nocase $chan $backchan]} {
	set chan "$c"
	}
}
	userhost:act $stickb $nick $hand $char $chan $chan1 $type $return_time "stick" $reason "0"
	}
}

ub {
if {[matchattr $hand nmo|MAO $chan]} {
	set ban [lindex [split $arg] 1]
	set regexp 0
if {[string equal -nocase $ban "-regex"]} {
	set regexp 1
}
	set ban [lindex [split $arg] [expr $regexp + 1]]
	set why [lindex [split $arg] [expr $regexp + 2]]
	set type 0
	set chan1 "$chan"
if {[regexp {^[&#]} $ban] && [matchattr $hand nmo|MAO $ban]} {
	set chan "$ban"
	set ban [lindex [split $arg] 2]
if {[string equal -nocase $ban "-regex"]} {
	set regexp 1
}
	set ban [lindex [split $arg] [expr $regexp + 2]]
	set why [lindex [split $arg] [expr $regexp + 3]]
}
if {[regexp {^[0-9]} $ban]} {
	set cmd "ub:id"
} else {
	set cmd "ub"
}
if {$regexp == "1"} {
	set cmd [list $cmd "REGEX"]
}
foreach c [channels] {
	set backchan [join [setting:get $c backchan]]
if {[string match -nocase $chan $backchan]} {
	set chan "$c"
	}
}
if {[string equal -nocase $why "global"] && [matchattr $hand nm]} {
	ub:process $ban $ban $nick $hand $char $chan $chan1 $type "1" $cmd "" "" ""
} elseif {[string equal -nocase $why "link"] && [matchattr $hand nm]} {
	ub:process $ban $ban $nick $hand $char $chan $chan1 $type "" $cmd "" "1" ""
} else {
	ub:process $ban $ban $nick $hand $char $chan $chan1 $type "" $cmd "" "" ""
		}
	}
}

sb {
if {[matchattr $hand nmo|VMAO $chan]} {
	set regexp 0
	set bhost [lindex [split $arg] 1]
if {[string equal -nocase $bhost "-regex"]} {
	set regexp 1
}
	set bhost [lindex [split $arg] [expr $regexp + 1]]
	set what [lindex [split $arg] [expr $regexp + 2]]
	set type 0
	set chan1 "$chan"
if {[regexp {^[&#]} $bhost] && [matchattr $hand nmo|MAO $bhost]} {
	set chan "$bhost"
	set bhost [lindex [split $arg] 2]
if {[string equal -nocase $bhost "-regex"]} {
	set regex 1
}
	set bhost [lindex [split $arg] [expr $regexp + 2]]
	set what [lindex [split $arg] [expr $regexp + 3]]
}
foreach c [channels] {
	set backchan [join [setting:get $c backchan]]
if {[string match -nocase $chan $backchan]} {
	set chan "$c"
	}
}
if {$bhost != ""} {
if {[regexp {^[0-9]} $bhost]} {
	sb:process $bhost $what $nick $hand $char $chan $chan1 $type "sb" "2"
	return
}
if {![validchan $chan]} {
	blacktools:tell $nick $char $hand $chan $chan1 gl.novalidchan none
	return
}
if {[onchan $bhost $chan]} {
	set bhost "$bhost![getchanhost $bhost $chan]"
	sb:process $bhost $what $nick $hand $char $chan $chan1 $type "sb" "1"
	return
}
if {$regexp == 1} {
	sb:process $bhost $what $nick $hand $char $chan $chan1 $type [list "sb" "REGEX"] "1"
	return
} elseif {[regexp {\*} $bhost]} {
	sb:process $bhost $what $nick $hand $char $chan $chan1 $type "sb" "1"
	return
}
	sb:process $bhost $what $nick $hand $char $chan $chan1 $type "sb" ""
		} else { sb:process $bhost $what $nick $hand $char $chan $chan1 $type "sb" ""}
	}
}

banlist {
if {[matchattr $hand nmo|AOM $chan]} {
	set user [lindex [split $arg] 1]
	set next [lindex [split $arg] 2]
	set type 0
	set chan1 "$chan"
if {[regexp {^[&#]} $user] && [matchattr $hand nmo|MASO $user]} {
	set chan "$user"
	set user [lindex [split $arg] 2]
	set next [lindex [split $arg] 3]
		}
foreach c [channels] {
	set backchan [join [setting:get $c backchan]]
if {[string match -nocase $chan $backchan]} {
	set chan "$c"
	}
}
	banlist:process $nick $char $hand $chan $chan1 $user $type "banlist" $next
	}
}

r {
if {[matchattr $hand nmo|MAO $chan]} {
	set c [lindex [split $arg] 1]
	set chan1 $chan
if {$c != "" && [matchattr $hand nmo|AMO $c]} {
	topic:refresh $nick $char $hand $c $chan1 $arg
	return
		}
	topic:refresh $nick $char $hand $chan $chan1 $arg
	}
}

man {
if {[matchattr $hand nmo|MAOV $chan]} {
	set command [lindex [split $arg] 1]
	set type 0
	set chan1 $chan
	man:process $nick $char $hand $chan $chan1 $type $command
	}
}

auto {
if {[matchattr $hand nmo|MA $chan]} {
	set type 0
	set chan1 "$chan"
	set option [lindex [split $arg] 1]
	set user [lindex [split $arg] 2]
	set global [lindex [split $arg] 3]
if {[regexp {^[&#]} $option] && [matchattr $hand nmo|MA $option] && ![string equal -nocase $global "global"]} {
	set chan "$option"
	set option [lindex [split $arg] 2]
	set user [lindex [split $arg] 3]
	set global [lindex [split $arg] 4]
		}
	auto:process $nick $char $hand $chan $chan1 $user $option $global $type 
	}
}

antipub {
if {[matchattr $hand nmo|M $chan]} {
	set type 0
	set chan1 "$chan"
	set why [lindex [split $arg] 1]
	set except [join [lrange [split $arg] 2 end]]
	set number [lindex [split $arg] 2]
if {[regexp {^[&#]} $why] && [matchattr $hand nmo|M $why]} {
	set chan "$why"
	set why [lindex [split $arg] 2]
	set except [join [lrange [split $arg] 3 end]]
	set number [lindex [split $arg] 3]
}
	prot:module:process $nick $char $hand $chan $chan1 $why $except $type $number "antipub"
	}
}

private {
if {[matchattr $hand nmo|M $chan]} {
	set type 0
	set chan1 "$chan"
	set why [lindex [split $arg] 1]
	set user [lindex [split $arg] 2]
	set uhost [lindex [split $arg] 3]
if {[regexp {^[&#]} $why] && [matchattr $hand nmo|M $chan]} {
	set chan "$why"
	set why [lindex [split $arg] 2]
	set user [lindex [split $arg] 3]
	set uhost [lindex [split $arg] 4]
		}
	private:process $nick $char $hand $chan $chan1 $why $user $uhost $type
	}
}

tcl {
if {[matchattr $hand n]} {
	set type 0
	set chan1 "$chan"
	set the_script [lindex [split $arg] 2]
	set who [lindex [split $arg] 1]
	tcl:process $nick $char $hand $chan $chan1 $type $the_script $who
	}
}

h {
if {[matchattr $hand nmo|MSOAV $chan]} {
	set chan1 "$chan"
	set type 0
	set command [lindex [split $arg] 1]
	
if {[setting:get $chan nextshortcmd]} {
	helpedpublic:process $nick $char $hand $chan $chan1 $command 0
	return
}
	h:process $nick $char $hand $chan $chan1 $command $type
	}
}

ignore {
if {[matchattr $hand nmo|M $chan]} {
	set chan1 "$chan"
	set type 0
	set what [lindex [split $arg] 1]
	set mask [lindex [split $arg] 2]
	set time [lindex [split $arg] 3]	
	set reason [join [lrange [split $arg] 4 end]]
if {![regexp {^[0-9]} $time]} {
	set reason [join [lrange [split $arg] 3 end]]
		}
	ignore:process $nick $char $hand $chan $chan1 $what $mask $time $reason $type
	}
}


idle {
if {[matchattr $hand nmo|M $chan]} {
	set type 0
	set chan1 "$chan"
	set why [lindex [split $arg] 1]
	set user [lindex [split $arg] 2]
	set host [lindex [split $arg] 3]
if {[regexp {^[&#]} $why] && [matchattr $hand nmo|- $why]} {
	set chan "$why"
	set why [lindex [split $arg] 2]
	set user [lindex [split $arg] 3]
	set host [lindex [split $arg] 4]
		}
	antidle:process $why $type $user $char $nick $hand $chan $chan1
	}
}

version {
if {[matchattr $hand nmo|MASOV $chan]} {
	set cmd_status [btcmd:status $chan $hand "version" 0]
	set text [lindex [split $arg] 1]
if {$cmd_status == "1"} { 
	return 
}
	set chan1 "$chan"
	version:process $nick $char $hand $chan $chan1 $text
	}
}

stats {
if {[matchattr $hand nmo|MA $chan]} {
	set type 0
	set chan1 "$chan"
	set user [lindex [split $arg] 1]
	set option [lindex [split $arg] 2]
if {[regexp {^[&#]} $user] && [matchattr $hand nmo|MAOV $user]} {
	set chan "$user"
	set user [lindex [split $arg] 2]
	set option [lindex [split $arg] 3]
}
	stats:process $nick $char $hand $chan $chan1 $user $option $type
	}
}

chat {
if {[matchattr $hand nm]} {
	set cmd_status [btcmd:status $chan $hand "chat" 0]
if {$cmd_status == "1"} { 
	return 
}
if {[matchattr $hand q]} { blacktools:tell $nick $host $hand $chan $chan1 gl.glsuspend none
	return
}
	set chan1 $chan
	*ctcp:CHAT $nick $char $hand $botnick CHAT $arg
	blacktools:tell $nick $char $hand $chan $chan1 chat.1 none
	} 
}

seen {
	set type 0
	set wseen [lindex [split $arg] 1]
	set chan1 "$chan"
if {[regexp {^[&#]} $wseen] && [matchattr $hand nmo|MAOV $wseen]} {
	set chan1 "$chan"
	set chan $wseen
	set wseen [lindex [split $arg] 2]
	seen:process $nick "$char:$host" $hand $chan $chan1 $wseen $type 0
} elseif {[string equal -nocase $wseen "global"] && [matchattr $hand nmo]} {
	set wseen [lindex [split $arg] 2]
	seen:process $nick "$char:$host" $hand $chan $chan1 $wseen $type 1	
} else {
	seen:process $nick "$char:$host" $hand $chan $chan1 $wseen $type 0
	}
}

limit {
if {[matchattr $hand nmo|M $chan]} {
	set why [lindex [split $arg] 1]
	set lm [lindex [split $arg] 2]
	set type 0
	set chan1 "$chan"
if {[regexp {^[&#]} $why] && [matchattr $hand nmo|M $why]} {
	set chan "$why"
	set why [lindex [split $arg] 2]
	set lm [lindex [split $arg] 3]
		}
	limit:process $nick $char $hand $chan $chan1 $why $lm $type
	}
}

bt {
if {[matchattr $hand nm]} {
	set chan1 "$chan"
	set type 0
	set who [lindex [split $arg] 1]
	set message [join [lrange [split $arg] 2 end]]
	set number [lindex [split $arg] 2]
	broadcast:process $nick $char $hand $chan $chan1 $who $message $number $type
	}
}

badchan {
if {[matchattr $hand nmo|M $chan]} {
	set why [lindex [split $arg] 1]
	set type1 0
	set chan1 "$chan"
	set bdchan [lindex [split $arg] 2]
	set type [lindex [split $arg] 3]
	set reason [join [lrange [split $arg] 3 end]]
if {[string equal -nocase $type "global"]} {
	set reason [join [lrange [split $arg] 4 end]]
}
if {[regexp {^[&#]} $why] && [matchattr $hand nmo|M $why]} {
	set chan "$why"
	set why [lindex [split $arg] 2]
	set bdchan [lindex [split $arg] 3]
	set type [lindex [split $arg] 4]
	set reason [join [lrange [split $arg] 4 end]]
if {[string equal -nocase $type "global"]} {
	set reason [join [lrange [split $arg] 5 end]]
	}
}
	badchan:process $nick $char $hand $chan $chan1 $why $bdchan $type1 $type $reason
	}
}

us {
if {[matchattr $hand nmo|MA $chan]} {
	set type 0
	set chan1 "$chan"
	set users [lindex [split $arg] 1]
if {[regexp {^[&#]} $users] && [matchattr $hand nmo|MA $users]} {
	set chan "$users"
	set users [lindex [split $arg] 2]
		}
	us:process $nick $char $hand $chan $chan1 $users $type
	}
} 

s {
if {[matchattr $hand nmo|MA $chan]} {
	set type 0
	set chan1 "$chan"
	set user [lindex [split $arg] 1]
	set suspend_time [lindex [split $arg] 2]
	set suspend_reason [join [lrange [split $arg] 3 end]]
if {![regexp {^[0-9]} $suspend_time]} {
	set suspend_reason [join [lrange [split $arg] 2 end]]
}
if {[regexp {^[&#]} $user] && [matchattr $hand nmo|MA $user]} {
	set chan "$user"
	set user [lindex [split $arg] 2]
	set suspend_time [lindex [split $arg] 3]
	set suspend_reason [join [lrange [split $arg] 4 end]]
if {![regexp {^[0-9]} $suspend_time]} {
	set suspend_reason [join [lrange [split $arg] 3 end]]
}
		}
	s:process $nick $char $hand $chan $chan1 $user $type $suspend_time $suspend_reason
	}
}

info {
if {[matchattr $hand nmo|MASOV $chan]} {
	set user [lindex [split $arg] 1]
	set type 0
	set chan1 "$chan"
if {[regexp {^[&#]} $user] && [matchattr $hand nmo|MASO $user] && ([lindex [split $arg] 2] == "")} {
	set chan $user
	info:process:chan $nick $char $hand $chan $chan1
	return
}

if {[regexp {^[&#]} $user] && [matchattr $hand nmo|MASOV $chan]} {
	set chan "$user"
	set user [lindex [split $arg] 2]
}
	info:process $nick $char $hand $chan $chan1 $user $type
	}
}

channels {
if {[matchattr $hand nmo]} {
	set chan1 "$chan"
	channels:process $nick $char $hand $chan $chan1
	}
}


userlist {
if {[matchattr $hand nmo|MASOV $chan]} {
	set level [lindex [split $arg] 1]
	set type 0
	set chan1 "$chan"
if {[regexp {^[&#]} $level] && [matchattr $hand nmo|MASOV $level]} {
	set chan "$level"
	set level [lindex [split $arg] 2]
if {![validchan $chan]} {
	blacktools:tell $nick $char $hand $chan $chan1 gl.novalidchan none
	return
	}
} 
	userlist:execute $hand $char $level $chan $chan1 $nick $type
	}
}

chuser {
if {[matchattr $hand nmo|M $chan]} {
	set user [lindex [split $arg] 1]
	set type 0	
	set chan1 "$chan"
	set chandle [lindex [split $arg] 2]
	chuser:process $nick $char $hand $chan $chan1 $user $chandle $type
	}
}


delhost {
if {[matchattr $hand nmo|MA $chan]} {
	set user [lindex [split $arg] 1]
	set type 0
	set chan1 "$chan"
	set hosts [lindex [split $arg] 2]
	delhost:process $nick $char $hand $chan $chan1 $user $hosts $type
	}
}

addhost {
if {[matchattr $hand nmo|MA $chan]} {
	set arg [strip:all $arg]
	set type 0
	set chan1 "$chan"
	set user [lindex [split $arg] 1]
	set hosts [lindex [split $arg] 2]
	addhost:process $nick $char $hand $chan $chan1 $user $hosts $type
	}
}

del {
if {[matchattr $hand nmo|M $chan]} {
	set args [lrange [split $arg] 1 end]
	set type 0
	set chan1 "$chan"
	del:process $nick $char $hand $chan $chan1 $args $type
	}
}


delacc {
if {[matchattr $hand nmo|MA $chan]} {
	set args [lrange [split $arg] 1 end]
	set type 0
	set chan1 "$chan"
	set c [lindex [split $arg] 1]
if {[regexp {^[&#]} $c] && [matchattr $hand nmo|AM $c]} {
	set chan "$c"
	set args [lrange [split $arg] 2 end]
}
foreach user $args {
	delacc:process $nick $char $hand $chan $chan1 $user $type
		}
	}
}

add {
if {[matchattr $hand nmo|MA $chan]} {
	set arg [strip:all $arg]
	set level [lindex [split $arg] 1]
	set type 0
	set chan1 "$chan"
	set args [lrange [split $arg] 2 end]
	set handle ""
	set uhost ""
if {[regexp {^[&#]} $level] && [matchattr $hand nmo|MA $level]} {
	set chan "$level"
	set level [lindex [split $arg] 2]
	set args [lrange [split $arg] 3 end]
}
if {$args != ""} {
if {[string equal -nocase $level [blacktools:getlevelname 9 $hand]]} {
	set user [lindex $args 0]
	set reason [join [lrange $args 1 end]]
if {$user != ""} {
if {[validchan $chan] && [onchan $user $chan]} {
	set handle [nick2hand $user]
	set hosts [getchanhost $user $chan]
	set uhost [return_mask $black(hostdefaultadd) $hosts $user]
	add:process $user $uhost $handle $level $hand $char $chan $chan1 $nick $type "add" $reason "ban"
} else {
if {![string is alnum $user]} {
	blacktools:tell $nick $char $hand $chan $chan1 add.18 none
	continue
}
	add:process $user $uhost $handle $level $hand $char $chan $chan1 $nick $type "add" $reason "ban"
		}
	}
	return
}

foreach user $args {
if {$user != ""} {
if {[validchan $chan] && [onchan $user $chan]} {
	set handle [nick2hand $user]
	set hosts [getchanhost $user $chan]
	set uhost [return_mask $black(hostdefaultadd) $hosts $user]
	add:process $user $uhost $handle $level $hand $char $chan $chan1 $nick $type "add" "" ""
	continue
} else {
if {![string is alnum $user]} {
	blacktools:tell $nick $char $hand $chan $chan1 add.18 none
	continue
}
	add:process $user $uhost $handle $level $hand $char $chan $chan1 $nick $type "add" "" ""
					}
				}
			}
		} else {  add:process "" $uhost $handle $level $hand $char $chan $chan1 $nick $type "add" "" "" }	
	}
}

unsuspend {
if {[matchattr $hand nmo]} {
	set cmd_status [btcmd:status $chan $hand "unsuspend" 0]
if {$cmd_status == "1"} { 
	return 
}
if {[matchattr $hand q]} { blacktools:tell $nick $host $hand $chan $chan1 gl.glsuspend none
	return
}
	set chans [lindex [split $arg] 1]
	set chan1 "$chan"
if {$chans == ""} {blacktools:tell $nick $char $hand $chan $chan1 gl.instr_nick "unsuspend"
	return
}

if {![regexp {^[&#]} $chans]} {
	blacktools:tell $nick $char $hand $chan $chan1 gl.novalidchan none
	return
}
 
if {![validchan $chans]} { blacktools:tell $nick $char $hand $chan $chan1 gl.novalidchan none
	return
}

if {![channel get $chans inactive]} {
	blacktools:tell $nick $char $hand $chan $chan1 unsuspend.3 $chans
	return
}
	channel set $chans -inactive
	blacktools:tell $nick $char $hand $chan $chan1 unsuspend.4 $chans
	}
}

suspend {
if {[matchattr $hand nmo]} {
	set cmd_status [btcmd:status $chan $hand "suspend" 0]
if {$cmd_status == "1"} { 
	return 
}
if {[matchattr $hand q]} { blacktools:tell $nick $host $hand $chan $chan1 gl.glsuspend none
	return
}
	set chans [lindex [split $arg] 1]
	set reason [join [lrange [split $arg] 2 end]]
	set chan1 "$chan"
if {$chans == ""} {blacktools:tell $nick $char $hand $chan $chan1 gl.instr_nick "suspend"
	return
}
if {![regexp {^[&#]} $chans]} {
	blacktools:tell $nick $char $hand $chan $chan1 gl.novalidchan none
	return
}
if {![validchan $chans]} { blacktools:tell $nick $char $hand $chan $chan1 gl.novalidchan none
	return
}

if {[channel get $chans inactive]} {
	blacktools:tell $nick $char $hand $chan $chan1 suspend.3 $chans 
	return
}
	channel set $chans +inactive
if {$reason == ""} { set reason "N/A" }
	suspendchan:note $hand $chans $reason
	blacktools:tell $nick $char $hand $chan $chan1 suspend.4 $chans 
	}
}

delchan {
if {[matchattr $hand nmo]} {
	set cmd_status [btcmd:status $chan $hand "delchan" 0]
if {$cmd_status == "1"} { 
	return 
}
if {[matchattr $hand q]} { blacktools:tell $nick $host $hand $chan $chan1 gl.glsuspend none
	return
}
	set chans [lindex [split $arg] 1]
	set reason [join [lrange [split $arg] 2 end]]
	set chan1 "$chan"
if {$chans == ""} {
	blacktools:tell $nick $char $hand $chan $chan1 gl.instr_nick "delchan"
	return
}
if {![regexp {^[&#]} $chans]} {
	blacktools:tell $nick $char $hand $chan $chan1 gl.novalidchan none 
	return
} 

if {![validchan $chans]} { blacktools:tell $nick $char $hand $chan $chan1 gl.novalidchan none
	return
}

	set getlang [string tolower [getuser $hand XTRA OUTPUT_LANG]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }

if {!($black(homechan) == "") && ![string equal -nocase $black(homechan) "#no_home_chan"]} {
if {[string equal -nocase $chans $black(homechan)]} {
	blacktools:tell $nick $char $hand $chan $chan1 delchan.5 $chans
	return
	}
}
	channel remove $chans
	delchan:all $chans
if {$reason == ""} { set reason "N/A" }
	delchan:note $hand $chans $reason
	blacktools:tell $nick $char $hand $chan $chan1 delchan.3 $chans
	}
}

addchan {
if {[matchattr $hand nmo]} {
	set cmd_status [btcmd:status $chan $hand "addchan" 0]
if {$cmd_status == "1"} { 
	return 
}
if {[matchattr $hand q]} { blacktools:tell $nick $host $hand $chan $chan1 gl.glsuspend none
	return
}
	set chans [lindex [split $arg] 1]
	set key [lindex [split $arg] 2]
	set chan1 $chan
if {$chans == ""} {
	blacktools:tell $nick $char $hand $chan $chan1 gl.instr_nick "addchan"
	return
}
if {![regexp {^[&#]} $chans]} {	
	blacktools:tell $nick $char $hand $chan $chan1 gl.novalidchan none
	return
} 

if {[validchan $chans]} {
	blacktools:tell $nick $char $hand $chan $chan1 addchan.2 $chans
	return
} else {
	channel add $chans
	blacktools:tell $nick $char $hand $chan $chan1 addchan.3 $chans
if {$key != ""} {
	putquick "JOIN $chans :$key"
	channel set $chans chanmode "+ntk $key"
			}		
		}
	}
}

die {
if {[matchattr $hand nm]} {
	set cmd_status [btcmd:status $chan $hand "die" 0]
if {$cmd_status == "1"} { 
	return 
}
if {[matchattr $hand q]} { blacktools:tell $nick $host $hand $chan $chan1 gl.glsuspend none
	return
}
	set chan1 "$chan"
	set reason [join [lrange [split $arg] 1 end]]
	set getlang [string tolower [getuser $hand XTRA OUTPUT_LANG]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
	blacktools:tell $nick $char $hand $chan $chan1 die.1 none
if {$reason == ""} {
	set text [black:color:set "" $black(say.$getlang.die.2)]
	set reply [join $text]
	set reason $reply
}
	utimer 3 [list die $reason]
	}
}

jump {
if {[matchattr $hand nm]} {
	set cmd_status [btcmd:status $chan $hand "jump" 0]
if {$cmd_status == "1"} { 
	return 
}
if {[matchattr $hand q]} { blacktools:tell $nick $host $hand $chan $chan1 gl.glsuspend none
	return
}
	set chan1 "$chan"
	set serv [lindex [split $arg] 1]
if {$serv == ""} {
	blacktools:tell $nick $char $hand $chan $chan1 jump.1 "..."
	utimer 3 [list jump]
} else {
	blacktools:tell $nick $char $hand $chan $chan1 jump.1 "\002$serv\002"
	utimer 3 [list jump $serv]
		}	
	}
}

save {
if {[matchattr $hand nm]} {
	set cmd_status [btcmd:status $chan $hand "save" 0]
if {$cmd_status == "1"} { 
	return 
}
if {[matchattr $hand q]} { blacktools:tell $nick $host $hand $chan $chan1 gl.glsuspend none
	return
}
	set chan1 "$chan"
	blacktools:tell $nick $char $hand $chan $chan1 save.1 none
	save
	}
}

restart {
if {[matchattr $hand nm]} {
	set cmd_status [btcmd:status $chan $hand "restart" 0]
if {$cmd_status == "1"} { 
	return 
}
if {[matchattr $hand q]} { blacktools:tell $nick $host $hand $chan $chan1 gl.glsuspend none
	return
}
	set chan1 "$chan"
	blacktools:tell $nick $char $hand $chan $chan1 restart.1 none
	utimer 3 [list restart]
	}
}

rehash {
if {[matchattr $hand nm]} {
	set cmd_status [btcmd:status $chan $hand "rehash" 0]
if {$cmd_status == "1"} { 
	return 
}
if {[matchattr $hand q]} { blacktools:tell $nick $host $hand $chan $chan1 gl.glsuspend none
	return
}
	set chan1 "$chan"
	blacktools:tell $nick $char $hand $chan $chan1 rehash.1 none
	rehash
	}
}

update {
if {[matchattr $hand n]} {
if {[matchattr $hand q]} { blacktools:tell $nick $host $hand $chan $chan1 gl.glsuspend none
	return
}
	set what [lindex [split $arg] 1]
	set option [lindex [split $arg] 2]
	set type 0
	update:process $nick $char $hand $chan $chan [list $what $option] $type
	}
}

nick {
if {[matchattr $hand nm]} {
	set thenick [lindex [split $arg] 1]
	set chan1 $chan
	set type 0
	tempnick:process $thenick $nick $char $hand $chan $chan1 $type
	}
}

msg {
if {[matchattr $hand nmo|- $chan]} {
	set who [lindex [split $arg] 1]	
	set chan1 "$chan"
	set type 0
	set msg [join [lrange [split $arg] 2 end]]
	msg:process $nick $char $hand $chan $chan1 $who $msg $type
	}
}

omsg {
if {[matchattr $hand nmo|OMA $chan]} {
	set who [lindex [split $arg] 1]	
	set chan1 "$chan"
	set type 0
	set msg [join [lrange [split $arg] 2 end]]
if {![regexp {^[&#]} $who] && ![string equal -nocase $who "all"]} {
	set msg [join [lrange [split $arg] 1 end]]
	set who $chan
}
	omsg:process $nick $char $hand $chan $chan1 $who $msg $type
	}
}

set {
if {[matchattr $hand nmo|M $chan]} {
	set flags [lindex [split $arg] 1]
	set type [join [lrange [split $arg] 2 end]]
	set type1 0
	set chan1 "$chan"
if {[regexp {^[&#]} $flags] && [matchattr $hand nmo|M $flags]} {
	set chan "$flags"
	set flags [lindex [split $arg] 2]
	set type [join [lrange [split $arg] 3 end]]
}
if {[matchattr $hand mn]} {
if {[string equal -nocase "global" $flags]} {
	set chan "$flags"
	set flags [lindex [split $arg] 2]
	set type [join [lrange [split $arg] 3 end]]
	foreach c [channels] {
	set:process $nick $char $hand $c $chan1 $flags $type $type1	
		}
		return
	}
}
foreach c [channels] {
	set backchan [join [setting:get $c backchan]]
if {[string match -nocase $chan $backchan]} {
	set chan "$c"
	}
}
	set:process $nick $char $hand $chan $chan1 $flags $type $type1
	}
}

mode {
if {[matchattr $hand nmo|OMA $chan]} {
	set modes [lindex [split $arg] 1]
	set hosts [lindex [split $arg] 2]
	set type 0
	set chan1 "$chan"
if {[regexp {^[&#]} $modes] && [matchattr $hand nmo|OMA $modes]} {
	set chan "$modes"
	set modes [lindex [split $arg] 2]
	set hosts [lindex [split $arg] 3]
		}
	mode:process $nick $char $hand $chan $chan1 $modes $type $hosts
	}
}

cycle {
if {[matchattr $hand nmo|OMA $chan]} {
	set reason [join [lrange [split $arg] 1 end]]	
	set c [lindex [split $arg] 1]
	set chan1 "$chan"
if {[regexp {^[&#]} $c] && [matchattr $hand nmo|OMA $c]} {
	set chan "$c"
	set reason [join [lrange [split $arg] 2 end]]
}
	cycle:process $nick $char $hand $chan $chan1 $reason
	}
}

purge {
if {[matchattr $hand -|M $chan]} {
	set c [lindex [split $arg] 1]
	set reason [join [lrange [split $arg] 1 end]]
	set chan1 "$chan"
if {[regexp {^[&#]} $c] && [matchattr $hand -|M $c]} {
	set chan "$c"
	set reason [join [lrange [split $arg] 2 end]]
}
if {$reason == ""} {
	blacktools:tell $nick $char $hand $chan $chan1 purge.1 none
	return
}
	purge:process $nick $char $hand $chan $chan1 $reason
	}
}

broadcast {
if {[matchattr $hand nm]} {
	set text [join [lrange [split $arg] 1 end]]	
	set chan1 "$chan"
	set type 0
	broadcast:cmd:process $nick $char $hand $chan $chan1 $text $type
	}
}

act {
if {[matchattr $hand nmo|MA $chan]} {
	set text [join [lrange [split $arg] 1 end]]
	set c [lindex [split $arg] 1]
	set type 0
	set chan1 "$chan"
if {[regexp {^[&#]} $c] && [matchattr $hand nmo|AM $c]} {
	set chan "$c"
	set text [join [lrange [split $arg] 2 end]]
}
	act:process $nick $char $hand $chan $chan1 $text $type
	}
}

say {
if {[matchattr $hand nmo|MA $chan]} {
	set text [join [lrange [split $arg] 1 end]]
	set c [lindex [split $arg] 1]
	set type 0
	set chan1 "$chan"
if {[regexp {^[&#]} $c] && [matchattr $hand nmo|MA $c]} {
	set chan "$c"
	set text [join [lrange [split $arg] 2 end]]
}
	say:process $nick $char $hand $chan $chan1 $text $type
	}
}

v {
if {[matchattr $hand nmo|VOMA $chan]} {
	set voicex [join [lrange [split $arg] 1 end]]
	set c [lindex [split $arg] 1]
	set chan1 "$chan"
if {[regexp {^[&#]} $c] && [matchattr $hand nmo|VOMA $c]} {
	set chan "$c"
	set voicex [join [lrange [split $arg] 2 end]]
}
	v:process $nick $char $hand $chan $chan1 $voicex
	}
}

ho {
if {[matchattr $hand nmo|OMA $chan]} {
	set hopex [join [lrange [split $arg] 1 end]]
	set c [lindex [split $arg] 1]
	set chan1 "$chan"
if {[regexp {^[&#]} $c] && [matchattr $hand nmo|OMA $c]} {
	set chan "$c"
	set hopex [join [lrange [split $arg] 2 end]]
		}
	ho:process $nick $char $hand $chan $chan1 $hopex
	}
}

o {
if {[matchattr $hand nmo|OMA $chan]} {
	set opex [join [lrange [split $arg] 1 end]]
	set c [lindex [split $arg] 1]
	set chan1 "$chan"
if {[regexp {^[&#]} $c] && [matchattr $hand nmo|OMA $c]} {
	set chan "$c"
	set opex [join [lrange [split $arg] 2 end]]
		}
	o:process $nick $char $hand $chan $chan1 $opex
	}
}

uptime {
if {[matchattr $hand nmo]} {
	set cmd_status [btcmd:status $chan $hand "uptime" 0]
if {$cmd_status == "1"} { 
	return 
}
	set getlang [string tolower [getuser $hand XTRA OUTPUT_LANG]]
if {[matchattr $hand q]} { blacktools:tell $nick $char $hand $chan $chan1 gl.glsuspend none
	return
}
if {[matchattr $hand -|q $chan]} { blacktools:tell $nick $char $hand $chan $chan1 gl.suspend none
	return
}
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
	set chan1 "$chan"
	set up [return_time_2 $getlang [expr [unixtime] - $uptime]]
	set on [return_time_2 $getlang [expr [unixtime] - ${server-online}]]
	catch {exec uptime} shelluptime
	set file [open $black(uptime_file) "r"]
	set data [read -nonewline $file]
	close $file
if {$data == ""} {
	set read_maxup "-"
	set read_maxon "-"
} else {
	set read_maxup [return_time_2 $getlang [lindex [split $data] 0]]
	set read_maxon [return_time_2 $getlang [lindex [split $data] 1]]
}
	blacktools:tell $nick $char $hand $chan $chan1 maxup.1 "$up $read_maxup"
	blacktools:tell $nick $char $hand $chan $chan1 maxon.1 "$on $read_maxon"
	blacktools:tell $nick $char $hand $chan $chan1 uptime.2 $shelluptime
	blacktools:tell $nick $char $hand $chan $chan1 uptime.3 $server
	}
}

status {
if {[matchattr $hand nmo|- $chan]} {
	status:process $nick $char $hand $chan
	}
}

t {
if {[matchattr $hand nmo|OMA $chan]} {
	set topics [join [lrange [split $arg] 1 end]]
	set c [lindex [split $arg] 1]
	set type 0
	set chan1 "$chan"
if {[regexp {^[&#]} $c] && [matchattr $hand nmo|OMA $c]} {
	set chan "$c"	
	set topics [join [lrange [split $arg] 2 end]]
		}
	t:process $nick $char $hand $chan $chan1 $topics $type
	}
}

k {
if {[matchattr $hand nmo|OMA $chan]} {
	set knick [lindex [split $arg] 1]
	set type 0
	set reason [join [lrange [split $arg] 2 end]]
	set handle [nick2hand $knick]
	set chan1 "$chan"
if {[regexp {^[&#]} $knick] && [matchattr $hand nmo|MAO $knick]} {
	set chan "$knick"
	set knick [lindex [split $arg] 2]
	set reason [join [lrange [split $arg] 3 end]]
}
foreach c [channels] {
	set backchan [join [setting:get $c backchan]]
if {[string match -nocase $chan $backchan]} {
	set chan "$c"
	}
}
if {$knick != ""} {
	k:process $knick $nick $hand $char $reason $chan $chan1 $type
		} else {k:process $knick $nick $hand $char $reason $chan $chan1 $type}
	}
}

w {
if {[matchattr $hand nmo|OMA $chan]} {
	set wnick [lindex [split $arg] 1]
	set type 0
	set handle [nick2hand $wnick]
	set chan1 "$chan"
if {[regexp {^[&#]} $wnick] && [matchattr $hand nmo|MAO $wnick]} {
	set chan "$wnick"
	set wnick [lindex [split $arg] 2]
}
foreach c [channels] {
	set backchan [join [setting:get $c backchan]]
if {[string match -nocase $chan $backchan]} {
	set chan "$c"
	}
}
if {$wnick != ""} {
	w:process $wnick $nick $hand $char $chan $chan1 $type
		} else { w:process $wnick $nick $hand $char $chan $chan1 $type }
	}
}

ungag {
if {[matchattr $hand nmo|OMA $chan]} {
	set gagger [lindex [split $arg] 1]
	set type 0
	set chan1 "$chan"
if {[regexp {^[&#]} $gagger] && [matchattr $hand nmo|MAO $gagger]} {
	set chan "$gagger"
	set gagger [lindex [split $arg] 2]
}

foreach c [channels] {
	set backchan [join [setting:get $c backchan]]
if {[string match -nocase $chan $backchan]} {
	set chan "$c"
	}
}

if {$gagger != ""} {
	ungag:process $gagger $nick $hand $char $chan $chan1 $type
		} else { ungag:process $gagger $nick $hand $char $chan $chan1 $type }
	}
}

gag {
if {[matchattr $hand nmo|OMA $chan]} {
	set gagger [lindex [split $arg] 1]
	set time [lindex [split $arg] 2]
	set reason [join [lrange [split $arg] 3 end]]
	set type 0
	set handle [nick2hand $gagger]
	set chan1 "$chan"
	set return_time [time_return_minute $time]

foreach c [channels] {
	set backchan [join [setting:get $c backchan]]
if {[string match -nocase $chan $backchan]} {
	set chan "$c"
	}
}
if {$return_time == "-1"} {
	set reason [lrange [split $arg] 2 end]
	set time [setting:get $chan gag-bantime]
if {$time == ""} {
	set time $black(gag:bantime)
	}
}
if {[regexp {^[&#]} $gagger] && [matchattr $hand nmo|MAO $gagger]} {
	set chan "$gagger"
	set gagger [lindex [split $arg] 2]
	set time [lindex [split $arg] 3]
	set reason [join [lrange [split $arg] 4 end]]
	set return_time [time_return_minute $time]
if {$return_time == "-1"} {
	set reason [lrange [split $arg] 3 end]
	set time [setting:get $chan gag-bantime]
if {$time == ""} {
	set time $black(gag:bantime)
		}
	}
}

if {$gagger != ""} {
	gag:process $gagger $time $reason $nick "$hand:GAG" $char $chan $chan1 $type
	} else { gag:process $gagger $time $reason $nick $hand $char $chan $chan1 $type }
	}
}

show {
if {[matchattr $hand nmo|M $chan]} {
	set wich [lindex [split $arg] 1]
	set type 0
	set chan1 "$chan"
if {[regexp {^[&#]} $wich] && [matchattr $hand nmo|M $wich]} {
	set chan "$wich"
	set wich [lindex [split $arg] 2]	
		}
foreach c [channels] {
	set backchan [join [setting:get $c backchan]]
if {[string match -nocase $chan $backchan]} {
	set chan "$c"
	}
}
	show:process $nick $char $hand $chan $chan1 $wich $type
	}
}

clonescan {
if {[matchattr $hand nmo|MAO $chan]} {
	set why [lindex [split $arg] 1]
	set type 0
if {[matchattr $hand nmo|M $chan] && ($why != "") && ![regexp {^[&#]} $why]} {
	set chan1 "$chan"
	set clone [join [lrange [split $arg] 2 end]]
	set number [lindex [split $arg] 2]
if {[regexp {^[&#]} $why]} {
	set chan "$why"
	set why [lindex [split $arg] 2]
	set clone [join [lrange [split $arg] 3 end]]
	set number [lindex [split $arg] 3]
}
	prot:module:process $nick $char $hand $chan $chan1 $why $clone $type $number "clonescan"
	return
}
	set c [lindex [split $arg] 1]
	set type 0
	set chan1 "$chan"
if {[regexp {^[&#]} $c] && [matchattr $hand nmo|M $c]} {
	set chan "$c"
}
	scanner:process $nick $char $hand $chan $chan1 $type
	}
}

topwords {
	set chan1 "$chan"
	set cmd ""
	set type 0
	set next [lindex [split $arg] 1]
if {[regexp {^[&#]} $next] && [matchattr $hand nmo|MAOV $next]} {
	set chan $next
	set next [lindex [split $arg] 2]
	switch $next {
reset {
if {[matchattr $hand nmo|M $chan]} {
	set next [lindex [split $arg] 3]
	set cmd "reset"
		}	
	}
total {
	set next [lindex [split $arg] 3]
	set cmd "total"
	}
week {
	set next [lindex [split $arg] 3]
	set cmd "week"
	}
add {
if {[matchattr $hand nmo|M $chan]} {
	set next [lindex [split $arg] 3]
	set cmd "add"
	}
}	
del {
if {[matchattr $hand nmo|M $chan]} {
	set next [lindex [split $arg] 3]
	set cmd "del"
		}	
	}
list {
if {[matchattr $hand nmo|M $chan]} {
	set next [lindex [split $arg] 3]
	set cmd "list"
	}	
}
default {
if {[matchattr $hand nmo|MAOV $next]} {
if {$next != "" && ![string equal -nocase $next "-next"]} {
	set cmd $next
	set next [lindex [split $arg] 3]
	switch $next {
	total {
	set cmd "total:$cmd"
	}
	week {
	set cmd "week:$cmd"
	}
	reset {
	set cmd "reset:$cmd"
					}
	default {
	set cmd "user:$cmd"
						}
					}
				}
			}
		}
	}
}
if {$cmd == ""} {
	switch $next {
reset {
if {[matchattr $hand nmo|M $chan]} {
	set next [lindex [split $arg] 2]
	set cmd "reset"
		}	
	}
total {
	set next [lindex [split $arg] 2]
	set cmd "total"
	}
week {
	set next [lindex [split $arg] 2]
	set cmd "week"
	}
add {
if {[matchattr $hand nmo|M $chan]} {
	set next [lindex [split $arg] 2]
	set cmd "add"
	}
}	
del {
if {[matchattr $hand nmo|M $chan]} {
	set next [lindex [split $arg] 2]
	set cmd "del"
		}	
	}
list {
if {[matchattr $hand nmo|M $chan]} {
	set next [lindex [split $arg] 2]
	set cmd "list"
	}	
}
default {
if {$next != "" && ![string equal -nocase $next "-next"]} {
if {[matchattr $hand nmo|MAOV $chan]} {
	set cmd $next
	set next [lindex [split $arg] 2]
	switch $next {
	total {
	set cmd "total:$cmd"
	}
	week {
	set cmd "week:$cmd"
	}
	reset {
	set cmd "reset:$cmd"
					}
	default {
	set cmd "user:$cmd"
						}
					}
				}
			}
		}
	}
}
	topwords:process $nick $char $hand $chan $chan1 $cmd $type $next
}

myset {
if {[matchattr $hand nmo|VAOM $chan]} {
	set arg [strip:all $arg]
	set type 0
	set chan1 "$chan"	
	set flags [lindex [split $arg] 1]
	set typez [lindex [split $arg] 2]
	set chan2 [lindex [split $arg] 3]
	set arg [join [lrange [split $arg] 2 end]]
	myset:process $nick $char $hand $chan $chan1 $flags $typez $type $chan2 $arg
	}
}

timer {
if {[matchattr $hand nm]} {
	set chan1 $chan
	set cmd [lindex [split $arg] 1]
	set pid [lindex [split $arg] 2]
	set timer_args [join [lrange [split $arg] 3 end]]
	set type 0
	timer:process $nick $char $hand $chan $chan1 $cmd $pid $timer_args $type
	}
}

i {
if {[matchattr $hand nmo|VAOM $chan]} {
	set type 0
	set chan1 "$chan"
	set inick [lindex [split $arg] 1]
if {[regexp {^[&#]} $inick] && [matchattr $hand nmo|VAOM $inick]} {
	set chan "$inick"
	set inick [lindex [split $arg] 2]
}
	i:process $nick $char $hand $chan $chan1 $inick $type
	}
}

badword {
if {[matchattr $hand nmo|M $chan]} {
	set why [lindex [split $arg] 1]
	set type 0
	set chan1 "$chan"
	set bdword [join [lrange [split $arg] 2 end]]
	set bdnumber [lindex [split $arg] 2]
if {[regexp {^[&#]} $why] && [matchattr $hand nmo|M $why]} {
	set chan "$why"
	set why [lindex [split $arg] 2]
	set bdnumber [lindex [split $arg] 3]
	set bdword [join [lrange [split $arg] 3 end]]
		}
	antibadword:command:process $nick $char $hand $chan $chan1 $why $bdword $bdnumber $type
	}
}

next {
if {[matchattr $hand nmo|MAO $chan]} {
	set option [lindex [split $arg] 1]
	set chan1 $chan
		nextpublic:process $nick $char $hand $chan $chan1 $option
	}
}

helped {
if {[matchattr $hand nmo|MAO $chan]} {
	set user [lindex [split $arg] 1]
	set chan1 $chan
	set type 0
	helpedpublic:process $nick $char $hand $chan $chan1 $user $type
	}
}

noidle {
if {[matchattr $hand nmo|MAO $chan]} {
	set user [lindex [split $arg] 1]
	set chan1 $chan
	set type 0
	noidlepublic:process $nick $char $hand $chan $chan1 $user $type
	}
}

skip {
if {[matchattr $hand nmo|MAO $chan]} {
	set user [lindex [split $arg] 1]
	set chan1 $chan
	set type 0
	skippublic:process $nick $char $hand $chan $chan1 $user	$type
			}
		}
default {
	set alias_check [blacktools:alias_check $hand $cmd]
if {$alias_check != 0} {
	set counter 0
	set text [lrange [split $arg] 1 end]
foreach a $text {
	incr counter
	set replace(%${counter}%) $a
}
	set replace(%chan%) $chan
	set text [string map [array get replace] $alias_check]
	regsub -all {%[0-9]%} $text "" text
	set text [join $text]
	comand:chan $nick $host $hand $chan "${char}$text"
			}
		}
	}
}

##############
#########################################################################
##   END                                                               ##
#########################################################################
