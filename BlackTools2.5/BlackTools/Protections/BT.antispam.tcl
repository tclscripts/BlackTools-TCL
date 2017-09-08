#########################################################################
##          BlackTools - The Ultimate Channel Control Script           ##
##                    One TCL. One smart Eggdrop                       ##
#########################################################################
##########################   ANTISPAM TCL   #############################
#########################################################################
##						                       ##
##     BlackTools  : http://blacktools.tclscripts.net	               ##
##     Bugs report : http://www.tclscripts.net/	                       ##
##     Online Help : irc://irc.undernet.org/tcl-help 	               ##
##                   #TCL-HELP / UnderNet                              ##
##                   You can ask in english or romanian                ##
##					                               ##
#########################################################################

proc antispam:protect {nick host hand arg} {
global botnick black
	set text [color:filter $arg]
	set text [antispam:except $text]
	set handle [nick2hand $nick]
	set found_spam ""
foreach spammer [string tolower $black(spamword)] { 
if {[string match -nocase $spammer $text]} {
	set found_spam $spammer
	}
}
if {$found_spam == ""} { return }
foreach chans [channels] {
	set chan1 $chans
if {![validchan $chans]} { return }
if {[matchattr $handle $black(exceptflags) $chans]} { return }
	set bl_protect [blacktools:protect $nick $chans]
if {$bl_protect == "1"} { return }
if {[setting:get $chans antispam]} {
if {[onchan $nick $chans]} {
if {![botisop $chans] && ![setting:get $chans xonly]} { return }
if {[isbotnick $nick]} { return }
	blacktools:banner:2 $nick "ANTISPAM:$found_spam" $chans $chan1 $host "0"
if {[link:status $chans] == "1"} {
	foreach c [link:chan:get $chans] {
	blacktools:banner:2 $nick "ANTISPAM:$found_spam" $c $c $host "1"
					}
				}
			}
		}
	}
}

proc antispam:except {text} {
	global black botnick
	set text [split $text]
foreach t $text {
if {[validchan $t] && [onchan $botnick $t] && [setting:get $t antispam]} {
	set position [lsearch -exact [string tolower $text] [string tolower $t]]
if {$position > -1} {
	set text [lreplace $text $position $position]
			}
		}
	}
	return $text
}

proc antispam:protect:msg {nick host hand chan} {
global black
if {![validchan $chan]} { return }
if {[setting:get $chan antispam]} {
if {[isbotnick $nick]} { return }
if {[info exists black(turnOnFlood:$chan)]} {
	return
}
	set handle [nick2hand $nick]
if {[setting:get $chan spamjoinmessage]} {
if {[matchattr $handle $black(exceptflags) $chan]} { return }
	set getmsg [setting:get $chan antispam-message]
if {$getmsg == ""} { 
	set getlang [string tolower [setting:get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
	set getmsg $black(say.$getlang.antispam.2)
}
	set replace(%nick%) $nick
	set replace(%chan%) $chan
	set spamsg [string map [array get replace] $getmsg]
	puthelp "PRIVMSG $nick :$spamsg"
		} 
	}
}

proc antispam:protect:cycle {} {
global black
	set channels ""
foreach chan [channels] {
if {![channel get $chan inactive]} {
if {[setting:get $chan antispam]} {
	lappend channels $chan
			}
		}
	}
if {$channels != ""} {
	antispam:act $channels 0
	set antispam_time [time_return_minute $black(spamcycle)]
	timer $antispam_time antispam:protect:cycle
	}
}

proc antispam:act {channels counter} {
	global black
	set chan [lindex $channels $counter]
	set cc [expr $counter + 1]
	set getlang [string tolower [setting:get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
	set reason $black(say.$getlang.antispam.3)
	set len [llength $reason] 
    set random [expr int(rand()*$len)] 
    set reason [lindex $reason $random] 
	putserv "PART $chan :$reason"; putserv "JOIN $chan"
if {[lindex $channels $cc] == ""} {
	return
	} else {
	utimer 10 [list antispam:act $channels $cc]
	}
}

##############
#########################################################################
##   END                                                               ##
#########################################################################