#########################################################################
##          BlackTools - The Ultimate Channel Control Script           ##
##                    One TCL. One smart Eggdrop                       ##
#########################################################################
##########################   ANTISPAM TCL   #############################
#########################################################################
##						                       ##
##   BlackTools  : http://blacktools.tclscripts.net	               ##
##   Bugs report : http://www.tclscripts.net/	                       ##
##   GitHub page : https://github.com/tclscripts/BlackToolS-TCL-script ##
##   Online Help : irc://irc.undernet.org/tcl-help 	               ##
##                 #TCL-HELP / UnderNet                                ##
##                 You can ask in english or romanian                  ##
##					                               ##
#########################################################################

proc antispam:protect {nick host hand arg} {
global botnick black
	set text [color:filter $arg]
	set text [antispam:except $text]
	set handle [nick2hand $nick]
	set found_spam ""
	set channels ""
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
	lappend channels $chans
if {[link:status $chans] == "1"} {
	foreach c [link:chan:get $chans] {
	lappend channels $c
					}
				}
			}
		}
	}
	if {$channels != ""} {
	antispam:act:ban [join $channels] 0 $nick $host $found_spam
	}
}

proc antispam:act:ban {channels num nick host found_spam} {
	global black
	set chan [join [lindex [split $channels] $num]]
	set inc 0
if {$chan == ""} {
	return
}
if {[onchan $nick $chan]} {
	blacktools:banner:2 $nick "ANTISPAM:$found_spam" $chan $chan $host "0"
	who:chan $chan
}
	set inc [expr $num + 1]
if {[lindex $channels $inc] != ""} {
	utimer 5 [list antispam:act:ban $channels $inc $nick $host $found_spam]
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
if {[setting:get $chan spamjoinmessage]} {
if {[matchattr $hand $black(exceptflags) $chan]} { return }
	set getmsg [setting:get $chan antispam-message]
if {$getmsg == ""} { 
	set getlang [string tolower [setting:get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
	set getmsg $black(say.$getlang.antispam.2)
}
	set replace(%nick%) $nick
	set replace(%chan%) $chan
	set text [black:color:set "" $getmsg]
	set reply [join $text]
	set reply [string map [array get replace] $reply]
	puthelp "PRIVMSG $nick :$reply"
		} 
	}
}

proc antispam:protect:cycle {channels} {
global black
	set chans ""
foreach chan $channels {
if {![channel get $chan inactive]} {
	lappend chans $chan
		}
	}
if {$chans != ""} {
	antispam:act $chans 0
	}
}

proc antispam:act {channels counter} {
	global black
	set notcycle 0
	set chan [join [lindex [split $channels] $counter]]
	set cc [expr $counter + 1]
if {[info exists black(lastaction:$chan)]} {
	set total_anunt 0
	set unixtime [unixtime]
if {[setting:get $chan antispam-scantime] != ""} {
	set return_time [time_return_minute [setting:get $chan antispam-scantime]]
} else {
	set return_time [time_return_minute $black(spamcycle)]
}
	set time [expr [expr [expr $return_time * $black(entry:shown)] * 60] + $unixtime]
if {[expr $unixtime - $black(lastaction:$chan)] > [expr $time - $unixtime]} {
	set notcycle 1
	}
} else { set notcycle 1 }
if {$notcycle != "1"} {
	set getlang [string tolower [setting:get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
	set reason $black(say.$getlang.antispam.3)
	set len [llength $reason] 
    set random [expr int(rand()*$len)] 
    set reason [lindex $reason $random]
	set text [black:color:set "" $reason]
	set reply [join $text]
	putserv "PART $chan :$reply"; putserv "JOIN $chan"
	}
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