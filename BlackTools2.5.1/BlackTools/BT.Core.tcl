###########################################################################
##             BlackTools - The Ultimate Channel Control Script          ##
##                       One TCL. One smart Eggdrop                      ##
###########################################################################
###############################   CORE TCL   ##############################
###########################################################################
##						                         ##
##   BlackTools  : http://blacktools.tclscripts.net	                 ##
##   Bugs report : http://www.tclscripts.net/	                         ##
##   Online Help : irc://irc.undernet.org/tcl-help 	                 ##
##                 #TCL-HELP / UnderNet                                  ##
##                 You can ask in english or romanian                    ##
##					                                 ##
###########################################################################

########################## Default protection flags #######################

set black(exceptflags) "nmo|HAagMOVSo"
set black(accessflags) "nmo|MAO"
set black(localflags) "-|MAOV"
set black(glflags) "nmo"
set black(tclconfig) "$black(dirname)/BlackTools.tcl"
set black(tempdir) "$black(dirname)/BlackTools/temp"

############################### Information files ############################

set black(files_file) "$black(dirname)/BlackTools/FILES"

if {![file exists $black(files_file)]} {
	file mkdir $black(files_file)
}

if {![file exists $black(tempdir)]} {
	file mkdir $black(tempdir)
}

set black(s_file) "$black(dirname)/BlackTools/FILES/$username.suspend.txt"
set black(status_file) "$black(dirname)/BlackTools/FILES/$username.status.txt"
set black(seen_file) "$black(dirname)/BlackTools/FILES/$username.seen_db.txt"
set black(seen_details) "scripts/BlackTools/FILES/$username.seen_details.txt"
set black(uptime_file) "$black(dirname)/BlackTools/FILES/$username.uptime.txt"
set black(bans_file) "$black(dirname)/BlackTools/FILES/$username.bans.txt"
set black(join_file) "$black(dirname)/BlackTools/FILES/$username.othermodule.txt"
set black(extra_file) "$black(dirname)/BlackTools/FILES/$username.flags.txt"
set black(add_file) "$black(dirname)/BlackTools/FILES/$username.extra.txt"
set black(topwords_file) "$black(dirname)/BlackTools/FILES/$username.topwords.txt"
set black(quote_file) "$black(dirname)/BlackTools/FILES/$username.quote.txt"
set black(notes_file) "$black(dirname)/BlackTools/FILES/$username.notes.txt"
set black(temp_banner) "$black(dirname)/BlackTools/temp/banner"
set black(temp_motd) "$black(dirname)/BlackTools/temp/motd"

if {[file isdirectory "text"]} {
if {[file exists "text/motd"] && [file exists "text/banner"]} {
if {[file exists $black(temp_banner)] && [file exists $black(temp_motd)]} {
	file rename -force $black(temp_banner) "text/banner"
	file rename -force $black(temp_motd) "text/motd"
	file delete -force $black(temp_banner)
	file delete -force $black(temp_motd)
	
		}
	}
}

if {![file exists $black(uptime_file)]} {
	set file [open $black(uptime_file) w]
	close $file
}

if {![file exists $black(quote_file)]} {
	set file [open $black(quote_file) w]
	close $file
}

if {![file exists $black(topwords_file)]} {
	set file [open $black(topwords_file) w]
	close $file
}

if {![file exists $black(seen_details)]} {
	set file [open $black(seen_details) w]
	close $file
}

if {![file exists $black(seen_file)]} {
	set file [open $black(seen_file) w]
	close $file
}

if {![file exists $black(s_file)]} {
	set file [open $black(s_file) w]
	close $file
}

if {![file exists $black(bans_file)]} {
	set file [open $black(bans_file) w]
	close $file
}

if {![file exists $black(join_file)]} {
	set file [open $black(join_file) w]
	close $file
}

if {![file exists $black(extra_file)]} {
	set file [open $black(extra_file) w]
	close $file
}

if {![file exists $black(add_file)]} {
	set file [open $black(add_file) w]
	close $file
}
if {![file exists $black(notes_file)]} {
	set file [open $black(notes_file) w]
	close $file
}
if {![file exists $black(status_file)]} {
	set file [open $black(status_file) w]
	close $file
}

########################### mychar ############################

proc blacktools:mychar {char hand} {
	global black
	set getchar [getuser $hand XTRA MYCHAR]
if {[lsearch -exact $black(cmdchar) $char] < 0} {
if {[string equal -nocase $getchar "none"]} {
	return 1
	}
}
if {($getchar == "") && ([lsearch -exact $black(cmdchar) $char] > 0)} {
	return 2
}

if {$getchar != ""} {
if {[string equal -nocase $char $getchar]} {
	return 1
	}
	return 0
}
if {[lsearch -exact $black(cmdchar) $char] < 0} {
	return 0
	}
}

########################### define colors #####################

proc black:color {num hand text} {
	global black
if {[validuser $hand]} {
	set getcolor [string tolower [getuser $hand XTRA OUTPUT_COLORS]]
} else {
	set getcolor ""
}
if {$getcolor == ""} { set getcolor "[string tolower $black(default_colors)]" }	
	set color1 [lindex $getcolor 0]
	set color2 [lindex $getcolor 1]
	set color3 [lindex $getcolor 2]
	set color4 [lindex $getcolor 3]
	set show_text ""
	foreach txt [split $text] {
switch $num {
	1 {
	lappend show_text [blacktools:getcolor $color2 $txt]
	}
	2 {
	lappend show_text [blacktools:getcolor $color1 $txt]
	}
	5 {
	lappend show_text [blacktools:getcolor $color3 $txt]
	}
	4 {
	lappend show_text [blacktools:getcolor $color4 $txt]
			}
	6 {
if {[string match "<*>" $txt]} {
	lappend show_text [blacktools:getcolor $color4 $txt]
				} else {
	lappend show_text $txt			
				}
			}
		}
	}
	return $show_text
}
	
proc blacktools:getcolor {color text} {
	global black
if {![info exists black(color_inc)]} {
	set black(color_inc) 0
}
switch $color {
	black {
	return "\00301$text\003"
}
	bold {
	return "\002$text\002"
	}
	red {
	return "\00304$text\003"
	}
	blue {
	return "\00312$text\003"
	}
	green {
	return "\00303$text\003"
	}
	yellow {
	return "\00308$text\003"
		}
	orange {
	return "\00307$text\003"	
	}
	cyan {
	return "\00310$text\003"
	}
	grey {
	return "\00314$text\003"
}
	brown {
	return "\00305$text\003"
		}
	purple {
	return "\00306$text\003"
		}
	pink {
	return "\00313$text\003"	
		}
	underline {
	return "\037$text\037"
			}
		}
	return $text
}

proc black:color:set {hand arg} {
	global black
	set text ""
if {[validuser $hand]} {
	set getcolor [string tolower [getuser $hand XTRA OUTPUT_COLORS]]
} else {
	set getcolor ""
}

if {$getcolor == ""} { set getcolor "[string tolower $black(default_colors)]" }	
	set color1 [lindex $getcolor 0]
	set color2 [lindex $getcolor 1]
	set color3 [lindex $getcolor 2]
	set color4 [lindex $getcolor 3]
	
	foreach txt [split $arg] {
if {[string match "<*>" $txt]} {
	lappend text [blacktools:getcolor $color4 $txt]
} elseif {[string match *%chan%* $txt] || [string match *\001* $txt]} {
	set rpc [string map {"\001" ""} $txt]
	lappend text [blacktools:getcolor $color2 $rpc]
} elseif {[string match *\002* $txt]} {
	set rpc [string map {"\002" ""} $txt]
	lappend text [blacktools:getcolor $color1 $rpc]
} elseif {[string match *\005* $txt]} {
	set rpc [string map {"\005" ""} $txt]
	lappend text [blacktools:getcolor $color3 $rpc]
} elseif {[string match *\004* $txt]} {
	set rpc [string map {"\004" ""} $txt]
	lappend text [blacktools:getcolor $color4 $rpc]
} else {
	lappend text $txt
	}
}
	return [join $text]
}
########################### Extra Settings ####################

set black(extra_str) {
	antipub-reason badhost-reason antinotice-reason antictcp-reason antibadword-reason 
	antilongtext-reason antibadquitpart-reason antijoinpart-reason 
	antispam-reason antispam-message antirepeat-reason anticolor-reason antibold-reason
	antiunderline-reason anticaps-reason nickflood-reason badrealname-reason badnick-reason badident-reason
	antichanflood-reason private-reason clonescan-reason dr-reason vr-reason n-reason expirebans
	b-reason id-reason mb-reason w-reason w-message spam-reason bw-reason bot-reason gag-reason stick-reason troll-reason
	k-reason black-reason next-reason antipub-bantime badhost-bantime antinotice-bantime antictcp-bantime 
	antibadword-bantime antilongtext-bantime antibadquitpart-bantime antijoinpart-bantime 
	antispam-bantime antirepeat-bantime anticolor-bantime antibold-bantime antiunderline-bantime 
	anticaps-bantime badrealname-bantime badnick-bantime badident-bantime antichanflood-bantime 
	joinflood chanflood private-bantime antilongtextmax antirepeat-setting idlevoicemax clonescan-maxclone
	idleopmax idlehalfopmax kickcount xbantime xbanlevel limit-default nickflood-bantime clonescan-bantime backchan
	dr-bantime vr-bantime n-bantime b-bantime id-bantime spam-bantime bw-bantime mb-bantime
	bot-bantime gag-bantime b-bantime stick-bantime d-bantime badchan-bantime badchan-bmethod badchan-reason
	joincount jointime lang next-bantime greet-method leave-method url antipub-warn antinotice-warn
	antictcp-warn antibadword-warn antilongtext-warn antijoinpart-warn antirepeat-warn anticolor-warn
	antibold-warn antiunderline-warn anticaps-warn antichanflood-warn nickflood-warn nickflood-repeat
    antipub-banmethod antinotice-banmethod antictcp-banmethod antibadword-banmethod
    antilongtext-banmethod antijoinpart-banmethod antirepeat-banmethod anticolor-banmethod antibold-banmethod
	antiunderline-banmethod anticaps-banmethod nickflood-banmethod antichanflood-banmethod banmethod banmask
	antipub-banmask badhost-banmask antinotice-banmask antictcp-banmask antibadword-banmask 
	antilongtext-banmask antibadquitpart-banmask antijoinpart-banmask n-banmask
	antispam-banmask antispam-banmask antirepeat-banmask anticolor-banmask antibold-banmask
	antiunderline-banmask anticaps-banmask nickflood-banmask badrealname-banmask badnick-banmask
	antichanflood-banmask private-banmask dr-banmask vr-banmask stick-banmask badident-banmask
	b-banmask id-banmask spam-banmask bw-banmask bot-banmask gag-banmask black-banmask next-banmask guestnick-msgmethod
	guestnick-message voiceonmsg-linenum voiceonmsg-idletime inviteban-reason inviteban-bantime
}

set black(extra_flag) {
	antipub antinotice antictcp antilongtext antibadword antijoinpart antispam spamjoinmessage antirepeat
	antibadquitpart anticolor antibold antiunderline anticaps badrealname badnick badident
	antijoinflood antichanflood xtools antibadchan anunt limit clonescan seen autoop showbadchan showtroll
	autovoice leave topwords dontop dontdeop private silent quote note reportnick invisible forward
	showhandle showid showcount showtime showurl next voiceonmsg autotopic greet xonly nologged
	idleop idlehalfop idlevoice vprotect oprotect hoprotect quitpartcolor badhost nickflood guestnick seenreply seenlastmsg
	accessonly voiceme onlyonmode securemode strictsecured clonescan nextshortcmd inviteban quoteofday chanlink
}

set black(validcmds) "o omsg v ho man version mode cycle say act i activ t myset h r msg add adduser set userlist info delacc del auto chuser s us addhost delhost b black stick dr bot n id spam bw mb vr gag ungag troll ub sb banlist banstats k w purge set unset show ignore enable disable addchan delchan suspend unsuspend channels die jump save rehash nick uptime status cp chat next noidle skip helped anunt bt idle limit seen clonescan egg badchan securemode private tcl guestnick greet broadcast leave topic timer topwords next q note"

########################## BackChan ############################

proc blacktools:backchan:verify {nick host hand chan} {
	global black botnick
	set isbackchan ""
if {![botisop $chan]} {
	return
}
	set getlang [string tolower [setting:get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
foreach c [channels] {
	set backchan [join [setting:get $c backchan]]
if {[string equal -nocase $backchan $chan]} {
	set isbackchan $c
	}
}
	
if {$isbackchan != ""} {
	set gethost "$nick!$host"
foreach b [blacktools:banlist:ban $isbackchan] {
	set read_host [lindex [split $b] 3]
	set real_read_host [string map [list \[ {\[} \] {\]} \? {\?} \\ {\\}] $read_host]	
if {[string match -nocase $real_read_host $gethost] || [string match -nocase $gethost $real_read_host]} {
	set replace(%msg.1%) $gethost
	set replace(%chan%) $isbackchan
	set replace(%msg.2%) $read_host
	set text [black:color:set $botnick $black(say.$getlang.backchan.1)]
	putserv "NOTICE @$chan :[string map [array get replace] $text]"
			}
		}
	}		
}

########################## AutoInvite ##########################

proc autoinvite:kick {nick host hand chan kicked reason} {
	global black
	set handle [nick2hand $kicked]
if {[matchattr $handle $black(exceptflags) $chan]} {
	set getinvite [string tolower [getuser $handle XTRA AUTOINVITE]]
if {($getinvite == "") || ($getinvite == "0")} { return } else {
	putserv "INVITE $kicked $chan"
		}
	}
}

############################# Flood Protection ############################

proc msg:flood:protection {nick host hand arg} {
	global black botnick
	set user [nick2hand $nick]
	set chan1 $nick
	set number [scan $black(msg:flood) %\[^:\]]
	set timer [scan $black(msg:flood) %*\[^:\]:%s]
	
	foreach tmr [utimers] {
if {[string match "*black(antiflood:$host:prot)*" [join [lindex $tmr 1]]]} {
	killutimer [lindex $tmr 2]
	}
}

if {![info exists black(antiflood:$host:prot)]} {
	set black(antiflood:$host:prot) 0
}
	set black(antiflood:$host:prot) [expr $black(antiflood:$host:prot) + 1]
	utimer $timer [list unset  black(antiflood:$host:prot)]
if {$black(antiflood:$host:prot) >= $number} {
if {[validuser $user]} {
	newignore "*!$host" $botnick "\[BT\] MSG FLOOD PROTECTION" $black(msg:flood:ignore_access)
	blacktools:tell $nick "PRIV" $hand "" $chan1 antiflood.1 "$black(msg:flood:ignore_access)"
	blacktools:tell:dcc antiflood.2 "$host \[BT\] MSG FLOOD PROTECTION"
			} else {
	newignore "*!$host" $botnick "\[BT\] MSG FLOOD PROTECTION" $black(msg:flood:ignore_others)
	blacktools:tell:dcc antiflood.2 "$host \[BT\] MSG FLOOD PROTECTION"
		}
	}
}

proc notc:flood:protection {nick host hand text dest} {
	global black botnick
	set number [scan $black(notice:flood) %\[^:\]]
	set timer [scan $black(notice:flood) %*\[^:\]:%s]
if {$nick == $black(chanserv)} {
	return
}
if {![isbotnick $dest]} {
	return
}	
foreach tmr [utimers] {
if {[string match "*black(antiflood:$host:notc)*" [join [lindex $tmr 1]]]} {
	killutimer [lindex $tmr 2]
	}
}

if {![info exists black(antiflood:$host:notc)]} {
	set black(antiflood:$host:notc) 0
}
	set black(antiflood:$host:notc) [expr $black(antiflood:$host:notc) + 1]
	utimer $timer [list unset  black(antiflood:$host:notc)]
if {$black(antiflood:$host:notc) >= $number} {
	newignore "*!$host" $botnick "\[BT\] NOTICE FLOOD PROTECTION" $black(notice:flood:notc_time)
	blacktools:tell:dcc antiflood.2 "$host \[BT\] NOTICE FLOOD PROTECTION"
	}
}

##################################### Time return ################################

proc time_return_minute {the_time} {
	global black
	set minutes ""
if {[regexp {^[0-9]} $the_time] && ![regexp {[A-Za-z]} $the_time]} {
	return $the_time
}

if {![regexp {^[0-9](.*)[A-Za-z]} $the_time]} {
	return -1
}
regsub -all {[A-Za-z]} $the_time "" number
regsub -all {[0-9]} $the_time "" type
	
switch [string tolower $type] {
	d {
	set minutes [expr $number * 1440]
	}
	m {
	set minutes "$number"
	}
	h {
	set minutes [expr $number * 60]
	}
	default {
	return -1
		}
	}
	return "$minutes"
}

############################## Check Timer ################################

#CloneScan Timer
if {![info exists clonescan_running]} {
	set clonescan_time [time_return_minute $black(clonescantime)]
	timer $clonescan_time clonescan:timer
	set clonescan_running 1
}

#BadChan timer

if {![info exists badchanscan_running]} {
	set bscan_time [time_return_minute $black(badchan:scantime)]
	timer $bscan_time badchan:scantimer
	set badchanscan_running 1
}

#Antispam timer

if {![info exists antispam_running]} {
	set antispam_time [time_return_minute $black(spamcycle)]
	timer $antispam_time antispam:protect:cycle
	set antispam_running 1
}

#Anunt timer
if {![info exists anunt_running]} {
	set anunt_time [time_return_minute $black(anunttime)]
	timer $anunt_time anuntpublic:show	
	set anunt_running 1
}

#Quote announce

if {![info exists quote_running]} {
	set quote_time [time_return_minute $black(quote:msgtime)]
	timer $quote_time quote:announce
	set quote_running 1
}

#AntiIdle Timer

if {![info exists idlewhois_running]} { 
	set idle_time [time_return_minute $black(idleinterval)]
	timer $idle_time antidle:module	
	set idlewhois_running 1
}

#Away Timer
if {![info exists awaytimer_running]} { 
	timer 360 away:timer
	set awaytimer_running 1
}

#Secured Timer
if {![info exists securedtimer_running]} {
	utimer 30 [list securemode:timer]
	set securedtimer_running 1
}
#Limit Timer
if {![info exists limit_running]} {
	timer 1 limit:timer
	set limit_running 1
}

#VoiceOnMsg Timer
if {![info exists voiceonmsg_running]} {
	timer 1 voiceonmsg:timer
	set voiceonmsg_running 1
}

#s check timer

if {![info exists scheck_running]} {
	timer 1 s:process:timer
	set scheck_running 1
}

#AutoBroadcast Timer
if {![info exists broadcastpublic_running]} {
	set file [open $black(status_file) "r"]
	set database [read -nonewline $file]
	close $file
	set data [split $database "\n"]
if {$data != ""} {
foreach line $data {
	set type [lindex [split $line] 0]
	set stats [lindex [split $line] 1]
if {($type == "broadcastpublic:show") && ($stats == "ON")} {
	set bt_time [time_return_minute $black(bttime)]
	timer $bt_time broadcastpublic:show
	set broadcastpublic_running 1
			}
		}
	}
}

################################ check access ################################

proc check:access {nick host hand chan chan1 users} {
global black
	
if {[matchattr $users -|M $chan] && [matchattr $hand -|M $chan]} {
	return 1
} elseif {[matchattr $users -|M $chan] && [matchattr $hand -|A $chan]} {
	return 1
} elseif {[matchattr $users m|- $chan] && [matchattr $hand -|M $chan]} {
	return 1
} elseif {[matchattr $users m|- $chan] && [matchattr $hand m|- $chan] && (![matchattr $hand n|- $chan])} {
	return 1
} elseif {[matchattr $users m|- $chan] && [matchattr $hand -|A $chan]} {
	return 1
} elseif {[matchattr $users -|A $chan] && [matchattr $hand -|A $chan]} {
	return 1
} elseif {[matchattr $users n|- $chan] && [matchattr $hand -|A $chan]} {
	return 1
} elseif {[matchattr $users n|- $chan] && [matchattr $hand -|M $chan]} {
	return 1
} elseif {[matchattr $users n|- $chan] && [matchattr $hand n|- $chan]} {
	return 1
} elseif {[matchattr $users n|- $chan] && [matchattr $hand m|- $chan]} {
	return 1
} elseif {[matchattr $users o|- $chan] && [matchattr $hand o|- $chan] && (![matchattr $hand nm|- $chan])} {
	return 1
} elseif {[matchattr $users o|- $chan] && [matchattr $hand o|- $chan] && (![matchattr $hand m|- $chan])} {
	return 1
} elseif {[matchattr $users o|- $chan] && [matchattr $hand -|M $chan]} {
	return 1
} elseif {[matchattr $users m|- $chan] && [matchattr $hand o|- $chan] && (![matchattr $hand n|- $chan])} {
	return 1
} elseif {[matchattr $users n|- $chan] && [matchattr $hand o|- $chan] && (![matchattr $hand n|- $chan])} {
	return 1
} elseif {[matchattr $users m|- $chan] && [matchattr $hand o|- $chan] && (![matchattr $hand m|- $chan])} {
	return 1
} elseif {[matchattr $users n|- $chan] && [matchattr $hand o|- $chan] && (![matchattr $hand m|- $chan])} {
	return 1
} elseif {[matchattr $users o|- $chan] && [matchattr $hand -|A $chan]} {
	return 1
	}
	return 0
}

proc check:global {hand} {
	global black
if {[matchattr $hand n]} {
	return [blacktools:getlevelname 1 $hand]
} elseif {[matchattr $hand m]} {
	return [blacktools:getlevelname 2 $hand]
	} elseif {[matchattr $hand o]} {
	return [blacktools:getlevelname 8 $hand]
	}
	return 0
}

################################ Away set ####################################

proc setaway {myaway} {
global black
	set away [config:getinfo $black(tclconfig) "set black(default_away) \"*\""]
	set away [string map [list {\"} \" {\[} \[ {\]} \] {\?} \? {\\} \\] $away]
	
if {$away == "" || $away == "i_have_no_away"} {
	return 0
} else {
putserv "AWAY :"
putserv "AWAY :$away"
	return 1
	}
}

proc away:timer {} {
	global black
	set away_status [setaway "none"]
if {$away_status == "1"} {
	timer 60 away:timer
	}
}

############################### Config save ##################################

proc config:save {f text_find text_replace} {
	set timestamp [clock format [clock seconds] -format {%Y%m%d%H%M%S}]
	set file_temp "temp.$timestamp"
	set found_it 0

if {![file exists $file_temp]} {
	set file [open $file_temp w]
	close $file
}
	set file [open $f r]
	set w [read -nonewline $file]
	close $file
	set data [split $w "\n"]
	set file2 [open $file_temp a]
foreach line $data {
if {[string match -nocase $text_find $line]} {
	set found_it 1	
	puts $file2 $text_replace
} else {
	puts $file2 $line
	}
}
	close $file2

if {$found_it == "1"} {
	file delete $f
	file rename $file_temp $f
	
	} else {
	file delete $file_temp
	return 0
	}

if {[file exists $file_temp]} {
	file delete $file_temp
	return 0
	}
}

proc config:getinfo {f text_find} {
	set file [open $f r]
	while {[gets $file line] != -1} {
if {[string match -nocase $text_find $line]} {
	set found_line $line
	continue
	}
}
	close $file
if {![info exists found_line]} {
	return 0
} else {
	regexp {\"((.*)\")(.*)} $found_line line
	set line [string map { "\"" ""} $line]
	return $line
	}
}

############################### Ban Methods ##################################

proc blacktools:banner:1 {nick bot chan host method linkchans} {
global black botnick
	set num 0
	set temp_num 0
	set split_hand [split $bot ":"]
	set hand [string tolower [lindex $split_hand 0]]
	set said [lindex $split_hand 1]
	set banmask [return_mask [return_host_num $hand $chan] $host $nick]
	set finduser [finduser $banmask]
if {$finduser != "*"} {
if {[matchattr $finduser $black(exceptflags) $chan]} {
	return
	}
}
if {![botisop $chan] && ![setting:get $chan xonly]} {
	return
}
	set getcount [setting:get $chan kickcount]
	set kcount [expr $getcount +1]
	setting:set $chan kickcount $kcount
	
	set xban 0
while {$temp_num == 0} {
	set get [blacktools:ban:find_id $num]
if {$get == "$num"} {
	set num [expr $num + 1]
	} else { set temp_num 1 }
}
	set xonly [blacktools:getxonly $chan]
	set bantime [blacktools:getbantime $chan $hand]
	set show_reason [blacktools:getreason $chan $hand 0 $num]
	set reason [blacktools:getreason $chan $hand 1 $num]
	blacktools:ban:method $nick $chan $banmask $hand $show_reason $bantime $method $xban $xonly $reason $said $linkchans $num
}

proc blacktools:getxonly {chan} {
	global black
if {[setting:get $chan xonly] && [onchan $black(chanserv) $chan]} {
	return 1
	}
	return 0
}

proc blacktools:getbantime {chan hand} {
	global black
	set bantime [setting:get $chan $hand-bantime]
if {$bantime == ""} { set bantime $black($hand:bantime) }
	set checkbantime [time_return_minute $bantime]
if {$checkbantime == "-1"} {
	set bantime $bantime
} else {
	set bantime [time_return_minute $bantime]
	}
	return $bantime
}

proc blacktools:getreason {chan hand type id} {
	global black badchan
	set split_hand [split $hand ":"]
	set hand [lindex $split_hand 0]
	set bantime [setting:get $chan $hand-bantime]
if {$bantime == ""} { set bantime $black($hand:bantime) }
	set checkbantime [time_return_minute $bantime]
if {$checkbantime == "-1"} {
	set bantime $bantime
} else {
	set bantime [time_return_minute $bantime]
}
	set reason_time [expr [unixtime] + [expr $bantime * 60]]
if {[string equal -nocase $hand "NEXT"]} {
	set getreason [setting:get $chan $hand-noidlereason]
} else {
	set getreason [setting:get $chan $hand-reason]
}
if {$getreason == ""} { 
	set getlang [string tolower [setting:get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
if {[string equal -nocase $hand "NEXT"]} {
	set getreason $black(say.$getlang.$hand.5)
} else {
	set getreason $black(say.$getlang.$hand.1)
	}
}

if {[string equal -nocase $hand "BADCHAN"]} {
	set banmask [lindex $split_hand 1]
if {[string equal -nocase $badchan($banmask:$chan) $black(say.$getlang.$hand.5)]} {
if {[setting:get $chan $hand-reason] != ""} {
	set getreason [join [setting:get $chan $hand-reason]]
} else {
	set getreason $black(say.$getlang.badchan.5)
	}
} else {
	set getreason [join $badchan($banmask:$chan)]
	}
}
	set replace(%chan%) $chan
	set reason [string map [array get replace] $getreason]
	set thereason [encoding convertfrom utf-8 $reason]
	set getcount [setting:get $chan kickcount]
	set show_reason $thereason
if {[setting:get $chan showid]} {
	set show_reason "$show_reason \[id: $id\]"
}
if {[setting:get $chan showtime] && $bantime != "0"} {
	set show_reason "$show_reason \[bantime: [return_reason_time [expr $reason_time - [unixtime]]]\]"
} else {
	set show_reason "$show_reason"
}

if {[setting:get $chan showurl] && [setting:get $chan url] != "" && $bantime != "0"} {
		set show_reason "$show_reason - [setting:get $chan url]"
}
if {[setting:get $chan showcount]} {
	set show_reason "$show_reason - $getcount -"
}

if {$type == "1"} {
	return $thereason
}
	return $show_reason
}

proc blacktools:banner:2 {nick bot chan chan1 host link} {
global black botnick
	set xban 0
	set num 0
	set temp_num 0
	set split_hand [split $bot ":"]
	set hand [string tolower [lindex $split_hand 0]]
	set banmask [return_mask [return_host_num $hand $chan] $host $nick]
	set finduser [finduser $banmask]
	set said [lindex $split_hand 1]
if {$finduser != "*"} {
if {[matchattr $finduser $black(exceptflags) $chan]} {
	return
	}
}
if {![botisop $chan] && ![setting:get $chan xonly]} {
	return
}
if {[setting:get $chan xonly]} {
	set xban 1
	set getxtime [setting:get $chan xbantime]
	set getxlevel [setting:get $chan xbanlevel]
if {$getxtime == ""} {
	set getxtime $black(chanserv:bantime)
}
if {$getxlevel == ""} {
	set getxlevel $black(chanserv:banlevel)
	}
}

while {$temp_num == 0} {
	set get [blacktools:ban:find_id $num]
if {$get == "$num"} {
	set num [expr $num + 1]
	} else { set temp_num 1 }
}
	set getcount [setting:get $chan kickcount]
	set kcount [expr $getcount +1]
	setting:set $chan kickcount $kcount
	set getcount [setting:get $chan kickcount]
	
	set bantime [blacktools:getbantime $chan $hand]
if {[string equal -nocase $hand "badchan"]} {
	set show_reason [blacktools:getreason $chan "$hand:$banmask" 0 $num]
	set thereason [blacktools:getreason $chan "$hand:$banmask" 1 $num]
} else {
	set show_reason [blacktools:getreason $chan $hand 0 $num]
	set thereason [blacktools:getreason $chan $hand 1 $num]
}
if {$botnick == "CLONESCAN"} {
	set banmask $host
	set clone [string map {"*!*@" ""} $banmask]
	set replace(%clone%) $clone
	set thereason [string map [array get replace] $thereason]
	set show_reason [string map [array get replace] $show_reason]
}
	blacktools:addban $nick $banmask $botnick $chan $chan1 $bantime "BAN" "0" "0" $thereason "0" "" "" "" 0 $num

if {[onchan $black(chanserv) $chan] && $xban == "1"} {
	putserv "PRIVMSG $black(chanserv) :ban $chan $banmask $getxtime $getxlevel $show_reason"
} else {
	putquick "WHO :$chan"
	set ::thechan $chan
	bind RAW - 352 get:chanlist
	bind RAW - 315 end:chanlist
}
if {$link == "0"} {
	set backchan [join [setting:get $chan backchan]]
if {$backchan == ""} {
	return
}
if {!([validchan $backchan]) || !([onchan $botnick $backchan])} {
	return
}
if {[info exists black($chan:anounce)]} {
	return
}
	set black($chan:anounce) 1
	set getlang [string tolower [setting:get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
if {$show_reason == ""} { set show_reason "N/A" }
	set bantime [time_return_minute $bantime]
	set bantime [expr $bantime * 60]
	set expire [return_time_2 $getlang $bantime]
	set replace(%banmask%) $banmask
	set replace(%bantime%) $expire
	set replace(%reason%) $show_reason
	set replace(%chan%) $chan
	set replace(%nick%) $botnick
	set text [black:color:set "" $black(say.$getlang.reportchan.1)]
	set reply [join $text]
	set reply [string map [array get replace] $reply]
	puthelp "PRIVMSG $backchan :$reply"
	utimer 5 [list unset black($chan:anounce)]
	}
}

proc blacktools:banner:3 {mask hand chan chan1 reason bantime type sticky cmd nick banned prv} {
global black botnick
	chanserv:ignore_remove
	set validhost 0
	set finduser [finduser $mask]
if {$finduser != "*"} {
if {[matchattr $finduser $black(exceptflags) $chan]} {
	return
	}
}

if {[string match -nocase "*!*" $mask] && [string match -nocase "*@*" $mask]} {
	set validhost 1
	set thereason [encoding convertto utf-8 $reason]
	set replace(%chan%) $chan
	set replace(%botnick%) $botnick
	set thereason [string map [array get replace] $thereason]
	set reason [string map [array get replace] $reason]
	set show_bantime $bantime
	set split_hand [split $hand ":"]
	set gethand [lindex $split_hand 0]
	set found 1
	set bl 0
	set xban 0
	set num 0
	set temp_num 0
	set checkbantime [time_return_minute $bantime]
if {$checkbantime == "-1"} {
	set bantime $bantime
} else {
	set bantime [time_return_minute $bantime]
}
	set getlang [string tolower [setting:get $chan lang]]
	set getmethod [getuser $gethand XTRA OUTPUT_TYPE]
	set userlang [getuser $gethand XTRA OUTPUT_LANG]
if {$userlang == ""} { set userlang "[string tolower $black(default_lang)]" }
if {$getmethod == ""} { set getmethod "0" }
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }

if {$type == ""} {
if {![botisop $chan] && ![setting:get $chan xonly]} {
	blacktools:tell $nick "" $hand $chan $chan1 gl.noop none
	return
	}
}
if {$bantime == "-1"} {
	blacktools:tell $nick "" $hand $chan $chan1 gl.instr "$cmd"
	return
}

if {$cmd == "b" && $type == "gl"} {
if {$prv == "prv"} {
	blacktools:tell $nick $prv $hand $chan $chan1 b.8 none
	} else {
	blacktools:tell $nick "" $hand $chan $chan1 b.8 none
	}
}

while {$temp_num == 0} {
	set get [blacktools:ban:find_id $num]
if {$get == "$num"} {
	set num [expr $num + 1]
	} else { set temp_num 1 }
}

	set current_time [unixtime]
	set reason_time [expr $current_time + [expr $bantime * 60]]
	set getcount [setting:get $chan kickcount]
	set kcount [expr $getcount +1]
	setting:set $chan kickcount $kcount
	set getcount [setting:get $chan kickcount]
if {$type == "gl"} {
	set bantype "BANS(GLOBAL)"
} elseif {$type == "link"} {
	set bantype "BANS($chan)"
 } else { set bantype $type }
	set counts [getuser $gethand XTRA $bantype]
if {$counts == ""} { set counts 0 }
	set counts [expr $counts + 1]
	setuser $gethand XTRA $bantype $counts
	set counts [getuser $gethand XTRA BANS_TODAY($chan)]
if {$counts == ""} { set counts 0 }
	set counts [expr $counts + 1]
	setuser $gethand XTRA BANS_TODAY($chan) $counts
if {$bantime == "0"} {
	set bl 1
}
if {$type != "gl"} {
if {[setting:get $chan showhandle]} {
if {$bl == "1"} {
	set show_reason "\[BT\] ($gethand) blacklisted -- $black(say.$getlang.gl.reason): $reason"
} else {
	set show_reason "($gethand) $reason"
	}
} else {
if {$bl == "1"} {
	set show_reason "\[BT\] blacklisted -- $black(say.$getlang.gl.reason): $reason"
} else {
	set show_reason "$reason"
	}
}
if {[setting:get $chan showid] && ($cmd != "bot")} {
	set show_reason "$show_reason \[id: $num\]"	
}
if {[setting:get $chan showtime] && ($bantime != "0") && ($cmd != "bot")} {
	set show_reason "$show_reason \[bantime: [return_reason_time [expr $reason_time - [unixtime]]]\]"
}

if {[setting:get $chan showurl] && ([setting:get $chan url] != "") && ($bantime != "0") && ($cmd != "bot")} {
		set show_reason "$show_reason - [setting:get $chan url]"
}
if {[setting:get $chan showcount] && ($cmd != "bot")} {
	set show_reason "$show_reason - $kcount -"
}
	
if {[setting:get $chan xonly]} {
	set xban 1
	set getxtime [setting:get $chan xbantime]
	set getxlevel [setting:get $chan xbanlevel]
if {$getxtime == ""} {
	set getxtime $black(chanserv:bantime)
}
if {$getxlevel == ""} {
	set getxlevel $black(chanserv:banlevel)
	}
}
	
if {![onchan $banned $chan]} {
foreach user [chanlist $chan] {
	set gethost "$user![getchanhost $user $chan]"
	set real_host [string map [list \[ {\[} \] {\]} \? {\?} \\ {\\}] $gethost]
if {[string match -nocase $mask $real_host] || [string match -nocase $real_host $mask]} {
	set found 0
if {[onchan $black(chanserv) $chan] && $xban == "1"} {
	putquick "PRIVMSG $black(chanserv) :ban $chan $mask $getxtime $getxlevel $show_reason"
		} else {
	putquick "MODE $chan +b $mask"
	putserv "KICK $chan $user :$show_reason"
}
	continue
	}
}
if {[onchan $black(chanserv) $chan] && $xban == "1"} {
	set replace(%msg.1%) $mask
	set replace(%msg.2%) $black(chanserv)
	set text [black:color:set "" $black(say.$getlang.gl.xonlyban)]
	set reply [join $text]
	set reply [string map [array get replace] $reply]
if {$prv == "prv"} {
	putserv "PRIVMSG $nick :$reply"
} else {

	switch $getmethod {
	0 {
	putserv "NOTICE $nick :$reply"
}
	1 {
	putserv "PRIVMSG $chan1 :$reply"	
}
	2 {
	putserv "PRIVMSG $nick :$reply"
			}
		}
	}
}
if {$found == "1"} {
if {[onchan $black(chanserv) $chan] && $xban == "1"} {
	putquick "PRIVMSG $black(chanserv) :ban $chan $mask $getxtime $getxlevel $show_reason"
		} else {
	putquick "MODE $chan +b $mask"
		}
	}
} else {
if {[onchan $black(chanserv) $chan] && $xban == "1"} {
	putquick "PRIVMSG $black(chanserv) :ban $chan $mask $getxtime $getxlevel $show_reason"
		} else {
	putquick "MODE $chan +b $mask"
	putserv "KICK $chan $banned :$show_reason"
		}
	}
}

if {$type == "gl"} {
	blacktools:addban:gl $nick $mask $hand "GLOBAL" $bantime "BAN" "0" "1" $thereason $num
	blacktools:global:ban [channels] 0 $mask $gethand $reason $bantime $reason_time $num $bl
} else {
if {$sticky == "1"} {
	blacktools:addban $nick $mask $hand $chan $chan1 $bantime "BAN" "1" "0" $thereason $found $cmd $type $banned $prv $num
} elseif {$sticky == "2"} {
	blacktools:addban $nick $mask $hand $chan $chan1 $bantime "BAN" "2" "0" $thereason $found $cmd $type $banned $prv $num
	troll:add $banned $mask $chan
} elseif {$sticky == "3"} {
	blacktools:addban $nick $mask $hand $chan $chan1 $bantime "BAN" "3" "0" $thereason $found $cmd $type $banned $prv $num
} else {
	blacktools:addban $nick $mask $hand $chan $chan1 $bantime "BAN" "0" "0" $thereason $found $cmd $type $banned $prv $num
	}
}

if {$type != "gl"} {
	set backchan [join [setting:get $chan backchan]]
if {$backchan == ""} { 
	return
}
if {!([validchan $backchan]) || !([onchan $botnick $backchan])} {
	return
}
if {$reason == ""} { set reason "N/A" }

	set bantime [time_return_minute $bantime]
	set bantime [expr $bantime * 60]
	set expire [return_time_2 $getlang $bantime]
	
	set replace(%banmask%) $mask
	set replace(%bantime%) $expire
	set replace(%reason%) $reason
	set replace(%chan%) $chan
	set replace(%nick%) $gethand
	set text [black:color:set "" $black(say.$getlang.reportchan.1)]
	set reply [join $text]
	set reply [string map [array get replace] $reply]
	puthelp "PRIVMSG $backchan :$reply"
		}
	}
if {$validhost == "0"} {
if {$prv == "prv"} {
	blacktools:tell $nick "prv" $hand $chan $chan1 b.10 $mask
		} else {
	blacktools:tell $nick "" $hand $chan $chan1 b.10 $mask	
		}
	}
}

proc blacktools:global:ban {channels num mask gethand reason bantime reason_time id bl} {
	global black
	set chan [lindex $channels $num]
	set getlang [string tolower [setting:get $chan lang]]
	set xban 0
if {[setting:get $chan xonly]} {
	set xban 1
	set getxtime [setting:get $chan xbantime]
	set getxlevel [setting:get $chan xbanlevel]
if {$getxtime == ""} {
	set getxtime $black(chanserv:bantime)
}
if {$getxlevel == ""} {
	set getxlevel $black(chanserv:banlevel)
	}
}
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
if {[setting:get $chan showhandle]} {
if {$bl == "1"} {
	set show_reason "\[BT\] ($gethand) blacklisted -- $black(say.$getlang.gl.reason): $reason"
} else {
	set show_reason "($gethand) $reason"
	}
} else {
if {$bl == "1"} {
	set show_reason "\[BT\] blacklisted -- $black(say.$getlang.gl.reason): $reason"
} else {
	set show_reason "$reason"
	}
 }

if {[setting:get $chan showid]} {
	set show_reason "$show_reason \[id: $id\]"	
}
if {[setting:get $chan showtime] && $bantime != "0"} {
	set show_reason "$show_reason \[bantime: [return_reason_time [expr $reason_time - [unixtime]]]\]"
}
foreach user [chanlist $chan] {
	set gethost "$user![getchanhost $user $chan]"
	set real_host [string map [list \[ {\[} \] {\]} \? {\?} \\ {\\}] $gethost]
if {[string match -nocase $mask $real_host] || [string match -nocase $real_host $mask]} {
if {[onchan $black(chanserv) $chan] && $xban == "1"} {
	putquick "PRIVMSG $black(chanserv) :ban $chan $mask $getxtime $getxlevel $show_reason"
} else {
	putquick "MODE $chan +b $mask"
	putserv "KICK $chan $user :$show_reason"
		}
	}
}
	set incnum [expr $num + 1]
if {[lindex $channels $incnum] != ""} {
	blacktools:global:ban $channels $incnum $mask $gethand $reason $bantime $reason_time $id $bl
	}
}

proc blacktools:ban:method {nick chan host type reason bantime option xban xonly thereason said linkchans id} {
	global black
if {![info exists black(banmethod:memory)]} {
	set black(banmethod:memory) ""
}
switch [string tolower $type] {

antipub {
	set chanmode "1"
	banmethod_action $nick $chan $host $type $reason $bantime $xban $xonly $chanmode $option $black(antipubmode) $black(antipubsecunde) "antipub" $thereason $said $linkchans $id
}

antinotice {
	set chanmode "1"
	banmethod_action $nick $chan $host $type $reason $bantime $xban $xonly $chanmode $option $black(antinoticemode) $black(antinoticesecunde) "antinotice" $thereason $said $linkchans $id
}


antictcp {
	set chanmode "1"
	banmethod_action $nick $chan $host $type $reason $bantime $xban $xonly $chanmode $option $black(antictcpmode) $black(antictcpsecunde) "antictcp" $thereason $said $linkchans $id
}

antibadword {
	set chanmode "0"
	banmethod_action $nick $chan $host $type $reason $bantime $xban $xonly $chanmode $option "0" "0" "antibadword" $thereason $said $linkchans $id
}

antilongtext {
	set chanmode "1"
	banmethod_action $nick $chan $host $type $reason $bantime $xban $xonly $chanmode $option $black(longmode) $black(longtimemode) "antilongtext" $thereason $said $linkchans $id
}

antijoinpart {
	set chanmode "1"
	banmethod_action $nick $chan $host $type $reason $bantime $xban $xonly $chanmode $option $black(joinpartmode) $black(joinparttimemode) "antijoinpart" $thereason $said $linkchans $id
} 

antirepeat {
	set chanmode "0"
	banmethod_action $nick $chan $host $type $reason $bantime $xban $xonly $chanmode $option "0" "0" "antirepeat" $thereason $said $linkchans $id
}

anticolor {
	set chanmode "0"
	banmethod_action $nick $chan $host $type $reason $bantime $xban $xonly $chanmode $option "0" "0" "anticolor" $thereason $said $linkchans $id
}

antibold {
	set chanmode "0"
	banmethod_action $nick $chan $host $type $reason $bantime $xban $xonly $chanmode $option "0" "0" "antibold" $thereason $said $linkchans $id
}

antiunderline {
	set chanmode "0"
	banmethod_action $nick $chan $host $type $reason $bantime $xban $xonly $chanmode $option "0" "0" "antiunderline" $thereason $said $linkchans $id
}

anticaps {
	set chanmode "0"
	banmethod_action $nick $chan $host $type $reason $bantime $xban $xonly $chanmode $option "0" "0" "anticaps" $thereason $said $linkchans $id
}

antichanflood {
	set chanmode "1"
	banmethod_action $nick $chan $host $type $reason $bantime $xban $xonly $chanmode $option $black(antichanflood:chanmode) $black(antichanflood:chanmodetime) "antichanflood" $thereason $said $linkchans $id
		}
nickflood {
	set chanmode "0"
	banmethod_action $nick $chan $host $type $reason $bantime $xban $xonly $chanmode $option "0" "0" "nickflood" $thereason $said $linkchans $id
		}
	}
}

proc banmethod_action {nick chan host type reason bantime xban xonly mode banmethod chanmode_type chanmode_time variable_name thereason said linkchans id} {
	global black
		chanserv:ignore_remove
if {$variable_name == "nickflood"} {
	set nick $said
	set said ""
}
	set num 0
	set temp_num 0
	set get_count ""
	set time [unixtime]
	set getlang [string tolower [setting:get $chan lang]]
if {![info exists black($variable_name:type_count:$host:$chan)]} {
	set black($variable_name:type_count:$host:$chan) $time:0
} else {
	set time_split [split $black($variable_name:type_count:$host:$chan) ":"]
	set get_time [lindex $time_split 0]
	set get_count [lindex $time_split 1]
	set get_count [expr $get_count + 1]
	set black($variable_name:type_count:$host:$chan) $get_time:$get_count
}
	set time_split [split $black($variable_name:type_count:$host:$chan) ":"]
	set get_time [lindex $time_split 0]
	set get_count [lindex $time_split 1]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
	set warnmsg [setting:get $chan $variable_name-warn]
if {$warnmsg == ""} {
	set warnmsg $black(say.$getlang.$variable_name.2)
}
	set warnmsg [encoding convertfrom utf-8 $warnmsg]
	set replace(%chan%) $chan
	set replace(%nick%) $nick
	set warnmsg [string map [array get replace] $warnmsg]
switch $banmethod {

	1 {
	putserv "PRIVMSG $chan :\[WARN\] $nick - $warnmsg"
	banmethod_memory:remove $host $chan $variable_name
}
	2 { 
if {$xonly == "1"} {
	putserv "PRIVMSG $black(chanserv) :kick $chan $nick $warnmsg"
	return
}
	putserv "KICK $chan $nick :\[WARN\] $warnmsg"	
	banmethod_memory:remove $host $chan $variable_name
}
	3 {
	banmethod_action:ban $nick $chan $host $reason $xban $xonly $bantime
	blacktools:addban $nick $host "$type:$said" $chan "" $bantime "BAN" "0" "0" $thereason "0" "" "" "" 0 $id
if {$linkchans != ""} {
foreach c $linkchans {
	while {$temp_num == 0} {
	set get [blacktools:ban:find_id $num]
if {$get == "$num"} {
	set num [expr $num + 1]
	} else { set temp_num 1 }
}
	set getcount [setting:get $c kickcount]
	set kcount [expr $getcount +1]
	setting:set $c kickcount $kcount
	set xban 0
	set xonly [blacktools:getxonly $c]
	set bantime [blacktools:getbantime $c $variable_name]
	set reason [blacktools:getreason $c $variable_name 0 $num]
	set thereason [blacktools:getreason $c $variable_name 1 $num]
	banmethod_action:ban $nick $c $host $reason $xban $xonly $bantime
	blacktools:addban $nick $host "$type:$said" $c "" $bantime "BAN" "0" "0" $thereason "0" "" "" "" 0 $num
	}
}
if {$mode == "1"} {
	set current_modes [getchanmode $chan]
	set putmode ""
	set chanmodes [string map {"+" ""} [split [lindex $current_modes 0] ""]]
foreach mod [split $chanmode_type ""] {
if {[lsearch $chanmodes $mod] < 0} {
	lappend putmode $mod
	}
}
if {$putmode != ""} {
	putserv "MODE $chan +$putmode" -next ;utimer $chanmode_time [list putserv "MODE $chan -$putmode"]
		}
	}
	banmethod_memory:remove $host $chan $variable_name
}
	4 {
if {$get_count == "0"} {
	putserv "PRIVMSG $chan :\[WARN\] $nick - $warnmsg"
	banmethod_memory:add $host
} else {
if {$xonly == "1"} {
	putserv "PRIVMSG $black(chanserv) :kick $chan $nick $warnmsg"
	banmethod_memory:remove $host $chan $variable_name
	return
}
if {[onchan $nick $chan]} {
	putserv "KICK $chan $nick :\[WARN\] $warnmsg"
}
	banmethod_memory:remove $host $chan $variable_name
	}
}
	5 {
if {$get_count == "0"} {
	putserv "PRIVMSG $chan :\[WARN\] $nick - $warnmsg"
	banmethod_memory:add $host
}
if {$get_count == "1"} {
if {$xonly == "1"} {
	putserv "PRIVMSG $black(chanserv) :kick $chan $nick $warnmsg"
	return
}
	putserv "KICK $chan $nick :\[WARN\] $warnmsg"
}
if {$get_count >= "2"} {
	banmethod_action:ban $nick $chan $host $reason $xban $xonly $bantime
	blacktools:addban $nick $host "$type:$said" $chan "" $bantime "BAN" "0" "0" $thereason "0" "" "" "" 0 $id
if {$linkchans != ""} {
foreach c $linkchans {
	while {$temp_num == 0} {
	set get [blacktools:ban:find_id $num]
if {$get == "$num"} {
	set num [expr $num + 1]
	} else { set temp_num 1 }
}
	set getcount [setting:get $c kickcount]
	set kcount [expr $getcount +1]
	setting:set $c kickcount $kcount
	set xban 0
	set xonly [blacktools:getxonly $c]
	set bantime [blacktools:getbantime $c $variable_name]
	set reason [blacktools:getreason $c $variable_name 0 $num]
	set thereason [blacktools:getreason $c $variable_name 1 $num]
	banmethod_action:ban $nick $c $host $reason $xban $xonly $bantime
	blacktools:addban $nick $host "$type:$said" $c "" $bantime "BAN" "0" "0" $thereason "0" "" "" "" 0 $num
	}
}
if {$mode == "1"} {
	set current_modes [getchanmode $chan]
	set putmode ""
	set chanmodes [string map {"+" ""} [split [lindex $current_modes 0] ""]]
foreach mod [split $chanmode_type ""] {
if {[lsearch $chanmodes $mod] < 0} {
	lappend putmode $mod
	}
}
if {$putmode != ""} {
	putserv "MODE $chan +$putmode" -next ;utimer $chanmode_time [list putserv "MODE $chan -$putmode"]
			}
		}
	banmethod_memory:remove $host $chan $variable_name
	}
}
	6 {
if {$get_count == "0"} {
if {$xonly == "1"} {
	putserv "PRIVMSG $black(chanserv) :kick $chan $nick $warnmsg"
	return
}
	putserv "KICK $chan $nick :\[WARN\] $warnmsg"
	banmethod_memory:add $host
} else {
	banmethod_action:ban $nick $chan $host $reason $xban $xonly $bantime
	blacktools:addban $nick $host "$type:$said" $chan "" $bantime "BAN" "0" "0" $thereason "0" "" "" "" 0 $id
if {$linkchans != ""} {
foreach c $linkchans {
	while {$temp_num == 0} {
	set get [blacktools:ban:find_id $num]
if {$get == "$num"} {
	set num [expr $num + 1]
	} else { set temp_num 1 }
}
	set getcount [setting:get $c kickcount]
	set kcount [expr $getcount +1]
	setting:set $c kickcount $kcount
	set xban 0
	set xonly [blacktools:getxonly $c]
	set bantime [blacktools:getbantime $c $variable_name]
	set reason [blacktools:getreason $c $variable_name 0 $num]
	set thereason [blacktools:getreason $c $variable_name 1 $num]
	banmethod_action:ban $nick $c $host $reason $xban $xonly $bantime
	blacktools:addban $nick $host "$type:$said" $c "" $bantime "BAN" "0" "0" $thereason "0" "" "" "" 0 $num
	}
}
if {$mode == "1"} {
	set current_modes [getchanmode $chan]
	set putmode ""
	set chanmodes [string map {"+" ""} [split [lindex $current_modes 0] ""]]
foreach mod [split $chanmode_type ""] {
if {[lsearch $chanmodes $mod] < 0} {
	lappend putmode $mod
	}
}
if {$putmode != ""} {
	putserv "MODE $chan +$putmode" -next ;utimer $chanmode_time [list putserv "MODE $chan -$putmode"]
					}
				}
	banmethod_memory:remove $host $chan $variable_name
			}	
		}
	7 {
if {$get_count == "0"} {
if {[onchan $nick $chan]} {
	set black($variable_name:type_count:$host:$chan) $time:0
	putserv "PRIVMSG $chan :\[WARN\] $nick - $warnmsg"
	banmethod_memory:add $host
	}
} else {
	banmethod_action:ban $nick $chan $host $reason $xban $xonly $bantime
	blacktools:addban $nick $host "$type:$said" $chan "" $bantime "BAN" "0" "0" $thereason "0" "" "" "" 0 $id
if {$linkchans != ""} {
foreach c $linkchans {
	while {$temp_num == 0} {
	set get [blacktools:ban:find_id $num]
if {$get == "$num"} {
	set num [expr $num + 1]
	} else { set temp_num 1 }
}
	set getcount [setting:get $c kickcount]
	set kcount [expr $getcount +1]
	setting:set $c kickcount $kcount
	set xban 0
	set xonly [blacktools:getxonly $c]
	set bantime [blacktools:getbantime $c $variable_name]
	set reason [blacktools:getreason $c $variable_name 0 $num]
	set thereason [blacktools:getreason $c $variable_name 1 $num]
	banmethod_action:ban $nick $c $host $reason $xban $xonly $bantime
	blacktools:addban $nick $host "$type:$said" $c "" $bantime "BAN" "0" "0" $thereason "0" "" "" "" 0 $num
	}
}
if {$mode == "1"} {
	set current_modes [getchanmode $chan]
	set putmode ""
	set chanmodes [string map {"+" ""} [split [lindex $current_modes 0] ""]]
foreach mod [split $chanmode_type ""] {
if {[lsearch $chanmodes $mod] < 0} {
	lappend putmode $mod
	}
}
if {$putmode != ""} {
	putserv "MODE $chan +$putmode" -next ;utimer $chanmode_time [list putserv "MODE $chan -$putmode"]
					}
				}
	banmethod_memory:remove $host $chan $variable_name
			}
		}
	}
}

proc banmethod_memory:add {host} {
	global black
if {[info exists black(banmethod:memory)]} {
if {[lsearch -exact [string tolower $black(banmethod:memory)]  [string tolower $host]] < 0} {
	lappend black(banmethod:memory) $black(banmethod:memory) $host
		}
	}
}

proc banmethod_memory:remove {host chan variable_name} {
	global black
if {[info exists black($variable_name:type_count:$host:$chan)]} {
	unset black($variable_name:type_count:$host:$chan)
	}
}

proc banmethod_memory:autoremove {minute hour day month year} {
	global black
if {[info exists black(banmethod:memory)]} {
	set split_out [split $black(banmethod:memory)]
	foreach chan [channels] {
	foreach host $split_out {
if {[info exists black(antipub:type_count:$host:$chan)]} {
	unset black(antipub:type_count:$host:$chan)		
				}
if {[info exists black(antinotice:type_count:$host:$chan)]} {
	unset black(antinotice:type_count:$host:$chan)		
				}
if {[info exists black(antictcp:type_count:$host:$chan)]} {
	unset black(antictcp:type_count:$host:$chan)		
				}
if {[info exists black(antibadword:type_count:$host:$chan)]} {
	unset black(antibadword:type_count:$host:$chan)		
				}
if {[info exists black(antilongtext:type_count:$host:$chan)]} {
	unset black(antilongtext:type_count:$host:$chan)		
				}
if {[info exists black(antijoinpart:type_count:$host:$chan)]} {
	unset black(antijoinpart:type_count:$host:$chan)		
				}
if {[info exists black(antirepeat:type_count:$host:$chan)]} {
	unset black(antirepeat:type_count:$host:$chan)		
				}
if {[info exists black(anticolor:type_count:$host:$chan)]} {
	unset black(anticolor:type_count:$host:$chan)		
				}
if {[info exists black(antibold:type_count:$host:$chan)]} {
	unset black(antibold:type_count:$host:$chan)		
				}
if {[info exists black(antiunderline:type_count:$host:$chan)]} {
	unset black(antiunderline:type_count:$host:$chan)		
				}
if {[info exists black(anticaps:type_count:$host:$chan)]} {
	unset black(anticaps:type_count:$host:$chan)		
				}
if {[info exists black(antichanflood:type_count:$host:$chan)]} {
	unset black(antichanflood:type_count:$host:$chan)		
				}
if {[info exists black(nickflood:type_count:$host:$chan)]} {
	unset black(nickflood:type_count:$host:$chan)		
				}				
if {[lsearch -exact [string tolower $black(banmethod:memory)]  [string tolower $host]] > -1} {
	set position [lsearch -exact [string tolower $black(banmethod:memory)] [string tolower $host]]
	set black(banmethod:memory) [lreplace $black(banmethod:memory) $position $position]
				}
			}
		}
	}
}

proc banmethod_action:ban {nick chan host reason xban xonly bantime} {
	global black botnick
		chanserv:ignore_remove
if {$xonly == "1"} {
	set getxtime [setting:get $chan xbantime]
	set getxlevel [setting:get $chan xbanlevel]
if {$getxlevel == ""} { set getxlevel $black(chanserv:banlevel)}
if {$getxtime == ""} { set getxtime $black(chanserv:bantime) }
	putserv "PRIVMSG $black(chanserv) :ban $chan $host $getxtime $getxlevel $reason"
} else {
	putserv "MODE $chan +b $host"
	puthelp "KICK $chan $nick :$reason"
foreach user [chanlist $chan] {
	set gethost "$user![getchanhost $user $chan]"
if {[string match -nocase $host $gethost] || [string match -nocase $gethost $host]} {
	putserv "KICK $chan $user :$reason"
		}
	}
}
	set backchan [join [setting:get $chan backchan]]
if {$backchan == ""} {
	return
}
if {!([validchan $backchan]) || !([onchan $botnick $backchan])} {
	return
}
if {[info exists black($chan:anounce)]} {
	return
}
	
	set black($chan:anounce) 1
	set getlang [string tolower [setting:get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
if {$reason == ""} { set reason "N/A" }
	set bantime [time_return_minute $bantime]
	set bantime [expr $bantime * 60]
	set expire [return_time_2 $getlang $bantime]
	set replace(%banmask%) $host
	set replace(%bantime%) $expire
	set replace(%reason%) $reason
	set replace(%chan%) $chan
	set replace(%nick%) $botnick
	set text [black:color:set "" $black(say.$getlang.reportchan.1)]
	set reply [join $text]
	set reply [string map [array get replace] $reply]
	puthelp "PRIVMSG $backchan :$reply"
	utimer 5 [list unset black($chan:anounce)]
}

########################### User Protection ################################

proc protectpublic {nick host hand chan args} {
global black
	set bans [lindex $args 1]
if {![botisop $chan] && ![setting:get $chan xonly]} {
	return
}
if {$bans == "*!*@*"} { putserv "MODE $chan -b $bans"
	return
}
	chanserv:ignore_remove
	set list [userlist $black(exceptflags) $chan]
foreach user $list {
	set hosts [getuser $user hosts]
foreach host $hosts {
if {[string match -nocase $bans $host]} {
if {[onchan $black(chanserv) $chan] && ([setting:get $chan xtools] || [setting:get $chan xonly])} {
	putquick "PRIVMSG $black(chanserv) :unban $chan $bans"
				} else {
	putserv "MODE $chan -b $bans"
				}
			}
		}
	}
}

########################### Text Wrapper ##################################

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

proc h:wrap {str {len 100} {splitChr {;}}} { 
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
   lappend out [concat [join $cur $splitChr]]
}

   
##################################Auto User Expire ################################

proc user:autoexpire {minute hour day month year} {
	global black
	set counter 0
	set max_time [expr 86400 * $black(user_expire_time)]
foreach user [userlist] {
if {[matchattr $user mno]} {
	continue
}
	set laston [getuser $user laston]
if {$laston == ""} {
	set laston [getuser $user XTRA created]
} else {
	set laston [lindex $laston 0]
}
	set user_time [expr [unixtime] - $laston]
if {$user_time > $max_time} {
	set counter [expr $counter + 1]
	deluser $user
	}
}
	blacktools:tell:dcc userexpire.1 "$counter"
}


################################# Message output ################################

proc blacktools:tell:h  {nick host hand chan chan1 type arg} {
	global black botnick lastbind
	set split_hand [split $hand ":"]
	set gethand [lindex $split_hand 0]
	set replace(%botnick%) $botnick
	set split_lastbind [split $lastbind ""]
	set charbind [lindex $split_lastbind 0]
	set text ""
if {[lsearch -exact $black(cmdchar) $charbind] < 0} {
	set charbind ""
}
if {[string equal $lastbind "*"]} { set charbind "" }
if {[string equal -nocase "**" $lastbind]} { set charbind "$botnick " }
if {[string equal -nocase "***" $lastbind]} { set charbind "$host" }
	set replace(%msg.1%) [lindex [split $arg] 0]
	set replace(%msg.2%) [lindex [split $arg] 1]
	set replace(%msg.3%) [lindex [split $arg] 2]
	set replace(%char%) $charbind
	set replace(%chan%) $chan
	set replace(%msg%) [join [lrange [split $arg] 0 end]]
	set replace(%msg.set%) [join [lrange [split $arg] 1 end]]
	set replace(%bind%) $lastbind
if {[validuser $hand]} {
	set getlang [string tolower [getuser $hand XTRA OUTPUT_LANG]]
	set getmethod [getuser $hand XTRA OUTPUT_TYPE]
} else {
	set getlang ""
	set getmethod ""
}
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
if {$getmethod == ""} { set getmethod $black(default_output) }
	set text [black:color:set $gethand $black(say.$getlang.$type)]
	set text [join $text]
	set reply [string map [array get replace] $text]
foreach w [wordwrap $reply 440] {
if {[string equal -nocase $host "prv"]} {
	putserv "PRIVMSG $nick :$w"
	return
}
switch $getmethod {
	0 {
	putserv "NOTICE $nick :$w"
}
	1 {
	putserv "PRIVMSG $chan1 :$w"
}
	2 {
	putserv "PRIVMSG $nick :$w"
			}
		}
	} 
}

proc blacktools:tell {nick host hand chan chan1 type arg} {
global black botnick lastbind
	set split_hand [split $hand ":"]
	set gethand [lindex $split_hand 0]
	set replace(%botnick%) $botnick
	set split_lastbind [split $lastbind ""]
	set charbind [lindex $split_lastbind 0]
if {[lsearch -exact $black(cmdchar) $charbind] < 0} {
	set charbind ""
}
	set firstchar [lindex $black(cmdchar) 0]
if {[string equal $lastbind "*"]} { set charbind "" }
if {[string equal -nocase "**" $lastbind]} { set charbind "$botnick " }
if {[string equal -nocase "***" $lastbind]} { 
	set split_host [split $host ":"]
if {[lindex $split_host 1] == "chan"} {
	set host [lindex $split_host 1]
	set charbind [lindex $split_host 0]
	} else {
	set charbind "$host"
	}
}
if {$charbind == ""} {
	set charbind $firstchar
if {[validuser $hand]} {
	set getchar [getuser $hand XTRA MYCHAR]
if {$getchar != ""} {
	set charbind $getchar
		}
	}
}
	set replace(%char%) $charbind
	set replace(%firstchar%) $firstchar
	set replace(%chan%) $chan
	set replace(%msg%) [join [lrange [split $arg] 0 end]]
	set replace(%msg.set%) [join [lrange [split $arg] 1 end]]
	set replace(%msg.1%) [lindex [split $arg] 0]
	set replace(%msg.2%) [lindex [split $arg] 1]
	set replace(%msg.3%) [lindex [split $arg] 2]
	set replace(%msg.4%) [lindex [split $arg] 3]
	set replace(%msg.5%) [lrange [split $arg] 4 end]
	set replace(%msg.6%) [lrange [split $arg] 3 end]
	set replace(%msg.7%) [lrange [split $arg] 2 end]
	set replace(%msg.8%) [join [lrange [split $arg] 1 end]]
	set replace(%msg.9%) [join [lrange [split $arg] 3 end]]
	set replace(%msg.10%) [join [lrange [split $arg] 4 end]]
	set replace(%msg.11%) [join [lrange [split $arg] 5 end]]
	set replace(%msg.12%) [lindex [split $arg] 4]
	set replace(%msg.13%) [lindex [split $arg] 5]
	set replace(%msg.14%) [join [lrange [split $arg] 6 end]]
	set replace(%msg.15%) [lindex [split $arg] 6]
	set replace(%msg.16%) [join [lrange [split $arg] 7 end]]
	set replace(%msg.17%) [lindex [split $arg] 7]
	set replace(%msg.18%) [join [lrange [split $arg] 2 end]]
	set replace(%msg.19%) [lindex [split $arg] 8]
	set replace(%msg.20%) [join [lrange [split $arg] 8 end]]
	
	set replace(%bind%) $lastbind
if {[validuser $gethand]} {
	set getlang [string tolower [getuser $gethand XTRA OUTPUT_LANG]]
	set getmethod [getuser $gethand XTRA OUTPUT_TYPE]
} else {
	set getlang ""
	set getmethod ""
}
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
if {$getmethod == ""} { set getmethod $black(default_output) }	
	set text [black:color:set $gethand $black(say.$getlang.$type)]

	set text [join $text]
	set reply [string map [array get replace] $text]
	set reply [string map [list {\"} \" {\[} \[ {\]} \] {\?} \? {\\} \\] $reply]
if {[string equal -nocase $host "prv"]} {
	putserv "PRIVMSG $nick :$reply"
	return
}
if {[string equal -nocase $host "chan"]} {
	putserv "PRIVMSG $chan1 :$reply"
	return
}
switch $getmethod {
	0 {
	putserv "NOTICE $nick :$reply"
}
	1 {
	putserv "PRIVMSG $chan1 :$reply"
}
	2 {
	putserv "PRIVMSG $nick :$reply"
		}
	}
}

proc blacktools:tell:cmd {nick host hand chan chan1 prv type reply} {
	global black
	set text ""
if {[validuser $hand]} {
	set getcolor [string tolower [getuser $hand XTRA OUTPUT_COLORS]]
} else {
	set getcolor ""
}
	if {$getcolor == ""} { set getcolor "[string tolower $black(default_colors)]" }	
	set color1 [lindex $getcolor 0]
	set color2 [lindex $getcolor 1]
	set color3 [lindex $getcolor 2]
	set color4 [lindex $getcolor 3]
foreach txt $reply {
if {[string match "*<*" $txt] || [string match "*>*" $txt]} {
	lappend text [blacktools:getcolor $color2 $txt]
} elseif {[string match *%chan%* $txt] || [string match *\001* $txt]} {
	set rpc [string map {"\001" ""} $txt]
	lappend text [blacktools:getcolor $color2 $rpc]
} elseif {[string match *\002* $txt]} {
	set rpc [string map {"\002" ""} $txt]
	lappend text [blacktools:getcolor $color1 $rpc]
} elseif {[string match *\005* $txt]} {
	set rpc [string map {"\005" ""} $txt]
	lappend text [blacktools:getcolor $color3 $rpc]
} elseif {[string match *\004* $txt]} {
	set rpc [string map {"\004" ""} $txt]
	lappend text [blacktools:getcolor $color4 $rpc]
} else {
	lappend text $txt
	}  	
}
if {$prv == "1"} {
	putserv "PRIVMSG $nick :[join $text]"
	return
}
	switch $type {
	0 {
	putserv "NOTICE $nick :[join $text]"
}
	1 {
	putserv "PRIVMSG $chan1 :[join $text]"	
}
	2 {
	putserv "PRIVMSG $nick :[join $text]"
		}
	}
}

proc blacktools:tell:dcc {type arg} {
	global black botnick

	set replace(%botnick%) $botnick
	set replace(%msg%) [join [lrange $arg 0 end]]
	set replace(%msg.set%) [join [lrange $arg 1 end]]
	set replace(%msg.1%) [lindex $arg 0]
	set replace(%msg.2%) [lindex $arg 1]
	set replace(%msg.3%) [lindex $arg 2]
	set replace(%msg.4%) [lindex $arg 3]
	set replace(%msg.5%) [lrange $arg 4 end]
	set replace(%msg.6%) [lrange $arg 3 end]
	set replace(%msg.7%) [lrange $arg 2 end]
	set replace(%msg.8%) [join [lrange $arg 1 end]]
	set replace(%msg.9%) [join [lrange $arg 3 end]]
	set replace(%msg.10%) [join [lrange $arg 4 end]]
	set getlang [string tolower $black(default_lang)]
if {[info exists black(say.$getlang.$type)]} {
	set text [black:color:set "" $black(say.$getlang.$type)]
	set text [join $text]
	set reply [string map [array get replace] $text]
	putlog "$reply"
	}
}

############################## Channel Key Need ##################################

proc keyneed {chan type} {
	global black
if {![validchan $chan]} {
	return
}
if {$type == "key"} {
if {![regexp {k} [channel get $chan chanmode]]} {
	return	
} else {
	set the_key [lindex [split [channel get $chan chanmode]] 1]
if {$the_key == ""} { return }
	putserv "JOIN $chan :$the_key"
		}
	}
}

############################### Check valid nickname #############################

proc check:validnickname {from keyword arguments } {
global nick config
	set lastnick $::lastnick
	set error [config:save $config "set nick \"*\"" "set nick \"$lastnick\""]
	unbind RAW - 432 check:validnickname
}

proc check:chanserv {from keyword arguments } {
global black
	set black(notlogged) 1
	unbind RAW - 401 check:chanserv
}

####################### check expired seen entries #########################

proc seen:entry:delete {minute hour day month year} {
	global black username
	set timestamp [clock format [clock seconds] -format {%Y%m%d%H%M%S}]
	set temp "$black(tempdir)/seen_temp.$timestamp"
	set file [open $black(seen_file) "r"]
	set tempwrite [open $temp w]
	set counter 0
while {[gets $file line] != -1} {
	set tm [lindex [split $line] 4]
	set read_days [expr [expr [expr [expr [unixtime] - $tm] / 60]] / 1440]
if {$read_days >= $black(seen:expire:time)} {
	set counter [expr $counter + 1]
	continue
		} else {
		puts $tempwrite $line
		} 
	}
	close $tempwrite
	close $file
    file rename -force $temp $black(seen_file)

	set file [open $black(seen_details) "r"]
	set tempwrite [open $temp w]
while {[gets $file line] != -1} {
	set tm [lindex [split $line] 4]
	set read_days [expr [expr [expr [expr [unixtime] - $tm] / 60]] / 1440]
if {$read_days >= $black(seen:expire:time)} {
	set counter [expr $counter + 1]
	continue
		} else {
		puts $tempwrite $line
		} 
	}
	close $tempwrite
	close $file
    file rename -force $temp $black(seen_details)

}

########################### check expired notes ############################

proc notes:autoexpire {minute hour day month year} {
	global black
	set counter 0
	set file [open $black(notes_file) "r"]
	set timestamp [clock format [clock seconds] -format {%Y%m%d%H%M%S}]
	set temp "$black(tempdir)/notes_temp.$timestamp"
	set tempwrite [open $temp w]
	set counter 0
while {[gets $file line] != -1} {
	set read_type [lindex [split $line] 0]
if {[string equal -nocase $read_type "INBOX"]} {
	set read_user [lindex [split $line] 4]
foreach user [userlist] {
if {[info exists black(notes:announce:$user)]} {
	unset black(notes:announce:$user)
}
if {[string equal -nocase $user $read_user]} {
	set tm [lindex [split $line] 5]
	set read_days [expr [expr [expr [expr [unixtime] - $tm] / 60]] / 1440]
	set expiretime [string tolower [getuser $user XTRA NOTE_EXPIRE]]
if {$expiretime == ""} { set expiretime $black(notes:expiretime) }
if {$read_days >= $expiretime} {
	continue
		} else {
		puts $tempwrite $line
				}
			}
		} 
	} else {
		puts $tempwrite $line
	}
}
	close $tempwrite
	close $file
    file rename -force $temp $black(notes_file)
}

###################### delete notes on user remove ###############

proc notes:remove:ondelete {user} {
	global black
	set file [open $black(notes_file) "r"]
	set timestamp [clock format [clock seconds] -format {%Y%m%d%H%M%S}]
	set temp "$black(tempdir)/notes_temp.$timestamp"
	set tempwrite [open $temp w]
while {[gets $file line] != -1} {
	set read_user [lindex [split $line] 4]
if {[string equal -nocase $user $read_user]} {
	continue
	} else {
		puts $tempwrite $line
		}
	}
	close $tempwrite
	close $file
    file rename -force $temp $black(notes_file)
if {[info exists black(notes:announce:$user)]} {
	unset black(notes:announce:$user)
	}
}


########################## Strip codes ###########################

proc strip:all {str} {
  regsub -all -- {\003([0-9]{1,2}(,[0-9]{1,2})?)?|\017|\037|\002|\026|\006|\007} $str "" str
  return $str
}

######################## Check add handle #######################

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

######################## return time ###########################

proc return_time_2 {getlang get_time} {
	global black
	set seconds [expr $get_time % 60]
	set days [expr $get_time/86400]
	set hours [expr [expr $get_time/3600] % 24];
	set minutes [expr [expr $get_time / 60] % 60]

if {[string length $hours] == "1"} {
	set hours "0$hours"
}
if {[string length $minutes] == "1"} {
	set minutes "0$minutes"
}
if {[string length $seconds] == "1"} {
	set seconds "0$seconds"
}

	set output "$days $black(say.$getlang.timeout.4), $hours:$minutes:$seconds"
if {$get_time <= 0} {
return 0
} else {
return $output
	}
}

proc return_reason_time {get_time} {
	global black
	set m "m"
	set d "d"
	set h "h"
	set s "s"
	set days [expr $get_time/86400]
	set hours [expr [expr $get_time/3600] % 24];
	set minutes [expr [expr $get_time / 60] % 60]
	set seconds [expr $get_time % 60]
if {$days == "0"} {
if {$hours == "0"} {
if {$seconds > 0} {
	return "$minutes$m:$seconds$s"
} else { return "$minutes$m" }
		} else { 
if {$minutes > 0} {
	return "$hours$h:$minutes$m"
} else { return "$hours$h" }
}
	} else { 
if {$hours > 0} {
return "$days$d:$hours$h" 
		} else { return "$days$d" } 
	}
}

proc return_time {getlang get_time} {
	global black
if {$get_time >= 31536000} {
	set yearsfull [expr $get_time/31536000]
	set years [expr int($yearsfull)]
	set yearssub [expr 31536000*$years]
	set totalday [expr $get_time - $yearssub]
	}
if {$get_time < 31536000} {
	set totalday $get_time
	set years 0
	}
if {$totalday >= 86400} {
	set daysfull [expr $totalday/86400]
	set days [expr int($daysfull)]
	set dayssub [expr 86400*$days]
	set totalhour [expr $totalday - $dayssub]
	}
if {$totalday < 86400} {
	set totalhour $totalday
	set days 0
	}
if {$totalhour >= 3600} {
	set hoursfull [expr $totalhour/3600]
	set hours [expr int($hoursfull)]
	set hourssub [expr 3600*$hours]
	set totalmin [expr $totalhour - $hourssub]
	}
if {$totalhour < 3600} {
	set totalmin $totalhour
	set hours 0
	}
if {$totalmin >= 60} {
	set minsfull [expr $totalmin/60]
	set mins [expr int($minsfull)]
	}
if {$totalmin < 60} {
	set mins 0
	}
if {$years < 1} {
	set yearstext ""
} elseif {$years == 1} {
	set yearstext "$years $black(say.$getlang.timeout.1) "} {
	set yearstext "$years $black(say.$getlang.timeout.2) "
}
if {$days < 1} {
	set daystext ""
} elseif {$days == 1} {
	set daystext "$days $black(say.$getlang.timeout.3) "
} else {
	set daystext "$days $black(say.$getlang.timeout.4) "
}
if {$hours < 1} {
	set hourstext ""
} elseif {$hours == 1} {
	set hourstext "$hours $black(say.$getlang.timeout.5) "
} else {
	set hourstext "$hours $black(say.$getlang.timeout.6) "
}
if {$mins < 1} {
	set minstext ""
} elseif {$mins == 1} {
	set minstext "$mins $black(say.$getlang.timeout.7)"
} else {
	set minstext "$mins $black(say.$getlang.timeout.8)"
}
	set output $yearstext$daystext$hourstext$minstext
if {$get_time < 60} {
set output "$get_time $black(say.$getlang.timeout.9)"
}
	return $output
}

############################## login check ##############################


proc black:login:yes {nick host hand text {dest ""}} {
	global black
if {$nick == $black(chanserv)} {
	set lang [string tolower $black(default_lang)]
if {[info exists black(logged)]} { return }
	set black(logged) 1
	blacktools:tell:dcc login.5 ""
	}
}

proc black:login:no:failed {nick host hand text {dest ""}} {
	global black
if {$nick == $black(chanserv)} {
	set black(notlogged:failed) 1
	set black(notlogged) 1
	blacktools:tell:dcc login.4 ""
	}		
}

proc black:login:max {nick host hand text {dest ""}} {
	global black
if {$nick == $black(chanserv)} {
	set black(notlogged:failed) 1
	set black(notlogged) 1
	blacktools:tell:dcc login.6 ""
	}		
}

proc black:login:no:user {nick host hand text {dest ""}} {
	global black
if {$nick == $black(chanserv)} {
	set black(notlogged:failed) 1
	set black(notlogged) 1
	blacktools:tell:dcc login.7 ""
	}		
}

proc black:login:no:invalid {nick host hand text {dest ""}} {
	global black
if {$nick == $black(chanserv)} {
	set black(notlogged:invalid) 1
	set black(notlogged) 1
	blacktools:tell:dcc login.8 ""
	}
}

proc timer:login:check {min hour day mon year} {
	global black
if {$black(autologin) == "0"} {
	return
}
if {[info exists black(logged)]} { return }
if {[info exists black(notlogged)] } {
	loginpublic my
	}
}

########################## user suspend process check ###############

proc s:remove:ondelete {user} {
	global black
	set file [open $black(s_file) "r"]
	set timestamp [clock format [clock seconds] -format {%Y%m%d%H%M%S}]
	set temp "$black(tempdir)/s_temp.$timestamp"
	set tempwrite [open $temp w]
while {[gets $file line] != -1} {
	set read_user [lindex [split $line] 1]
if {[string equal -nocase $user $read_user]} {
	continue
	} else {
		puts $tempwrite $line
		}
	}
	close $tempwrite
	close $file
    file rename -force $temp $black(s_file)
}

proc s:process:timer {} {
	global black

	set file [open $black(s_file) "r"]
	set database [read -nonewline $file]
	close $file
	set data [split $database "\n"]
	set counter 0
if {$database == ""} {
	return
}
foreach line $data {
	set tm [lindex [split $line] 2]
if {[duration [expr $tm - [unixtime]]] == "0 seconds"} {
	lappend expire_list $tm	
	}
}

if {[info exists expire_list]} {
	suspend:delete:action $expire_list
	unset expire_list
	}
	timer 1 s:process:timer
}

proc suspend:delete:action {expire_list} {
	global black username
	set flags "-|-q"
	set gl_flags "-q"
foreach tm $expire_list {
if {$tm != ""} {
	set file [open $black(s_file) "r"]
	set database [read -nonewline $file]
	close $file
	set data [split $database "\n"]
	set i [lsearch -glob $data "* $tm *"]
if {$i > -1} {
	set line [lindex $data $i]
	set suspend_chan [lindex [split $line] 0]
	set suspend_user [lindex [split $line] 1]
if {[string equal -nocase $suspend_chan "GLOBAL"]} {
if {$suspend_user != "" && $suspend_chan != ""} {
	chattr $suspend_user $gl_flags
}
} else {
if {$suspend_user != "" && $suspend_chan != ""} {
	chattr $suspend_user $flags $suspend_chan
	}
}
	set delete [lreplace $data $i $i]
	set file [open $black(s_file) "w"] 
	puts $file [join $delete "\n"]
	close $file	
			}
		}
	}
	set file [open $black(s_file) "r"]
	set data [read -nonewline $file]
	close $file
if {$data == ""} {
	set file [open $black(s_file) "w"]
	close $file
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


############################# no option ########################

proc check_option {nick host hand chan chan1 type type1 cmd} {
	global black
	if {$cmd == ""} { set cmd "set" }
if {$type == ""} {
switch $type1 {
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

	return 1
}

########################### join count ########################


proc join:count {nick host hand chan} {
	global black botnick
if {[string equal -nocase $nick $botnick]} {
if {[info exists black(abuse:$chan)]} {
	unset black(abuse:$chan)
	}
if {[info exists black(abuse:count:$chan)]} {
	unset black(abuse:count:$chan)
	}
}
	set jointime [setting:get $chan jointime]
if {$jointime == ""} {
	setting:set $chan jointime [unixtime]
}
	set current [setting:get $chan joincount]
if {$current == ""} { set current 0 }
	set current [expr $current + 1]
	setting:set $chan joincount $current
}

######################## Chan Flood Protection #######################

proc flood:join:protection {nick host hand chan} {
	global black
if {[setting:get $chan greet] || [setting:get $chan antijoinflood] || [setting:get $chan guestnick] || [setting:get $chan antispam]} {
	set joinflood [setting:get $chan joinflood]
if {$joinflood == ""} {set joinflood $black(joinflood:protect)}
	set number [scan $joinflood %\[^:\]]
	set time [scan $joinflood %*\[^:\]:%s]
	
	foreach tmr [utimers] {
if {[string match "*black(countflood:join:$chan)*" [join [lindex $tmr 1]]]} {
	killutimer [lindex $tmr 2]
	}
}

if {[info exists black(turnOnFlood:$chan)]} {
	return
}

if {![info exists black(countflood:join:$chan)]} { 
	set black(countflood:join:$chan) 0 
}
	set black(countflood:join:$chan) [expr $black(countflood:join:$chan) + 1]
	utimer $time [list remove:flood:join $chan]

if {$black(countflood:join:$chan) >= $number} {
	set black(turnOnFlood:$chan) 1
	utimer 60 [list unset black(turnOnFlood:$chan)]
	return
		}
	}	
}

proc remove:flood:host {host chan} {
	global black
if {[info exists black(countflood:$host:$chan)]} {
unset black(countflood:$host:$chan)
	}
}

proc remove:flood:join {chan} {
	global black
if {[info exists black(countflood:join:$chan)]} {
	unset black(countflood:join:$chan)
	}
}

proc remove:seenflood:host {the_host chan} {
	global black
if {[info exists black(flood:$the_host:$chan)]} {
	unset black(flood:$the_host:$chan)
	}	
}

########################## max uptime ######################

proc maxuptime {min hour day mon year} {
	global black uptime {server-online}
if {![file exists $black(uptime_file)]} {
	set file [open $black(uptime_file) w]
	close $file
}
	set online [expr [unixtime] - ${server-online}]
	set read_uptime [expr [unixtime] - $uptime]
	set file [open $black(uptime_file) "r"]
	set data [read -nonewline $file]
	set get_uptime 0
	set get_online 0
	close $file
	
	set get_uptime [lindex $data 0]
	set get_online [lindex $data 1]

if {$read_uptime > $get_uptime} {
	set add_uptime $read_uptime
} else {
	set add_uptime $get_uptime
}
if {${server-online} != "0"} {
if {$online > $get_online} {
	set add_online $online
} else {
	set add_online $get_online
}
} else {
	set add_online $get_online
}
	set file [open $black(uptime_file) "w"] 
	puts $file "$add_uptime $add_online"
	close $file
}

############################## VERSION ################################

proc blackreply {nick host hand dest key text} {
global ctcp-version black
set {ctcp-version} "Using \002$black(name) $black(vers)\002 by \002$black(author)\002"
}

########################### Return Mask ##############################

proc return_mask {type uhost user} {
	global black
	set ident "[string tolower [lindex [split $uhost "@"] 0]]"
	set host "[lindex [split $uhost @] 1]"
switch $type {

1 {
	return "*!*@$host"
}

2 {
	return "*!$ident@$host"
}

3 {
	return "$user!$ident@$host"
}
4 {
	return "$user!*@*"
}
5 {
	return "*!$ident@*"
		}
	}
}

########################### Return USERHOST Mask ####################

proc ub:get:host {from keyword arguments} {
	global black
	set hosts [lindex [split $arguments] 1]
	set hostname [lindex [split $hosts "="] 1]
	regsub {^[-+]} $hostname "" mask
	set nickname [lindex [split $hosts "="] 0]
	regsub {^:} $nickname "" nick
	set fullmask "$nick!$mask"
	set user $::uuser
	set mask $fullmask
	set nick $::unick
	set hand $::uhand
	set host $::uhost
	set chan $::uchan
	set chan1 $::uchan1
	set type $::utype
	set gl $::ugl
	set cmd $::ucmd
	set link $::ulink
if {$hosts == ":"} {
	set mask $user
}
	
if {[string equal -nocase $gl "1"] && [matchattr $hand nm]} {
	ub:process $user $mask $nick $hand $host $chan $chan1 $type "1" $cmd "1" ""
} elseif {[string equal -nocase $link "1"] && [matchattr $hand nm]} {
	ub:process $user $mask $nick $hand $host $chan $chan1 $type "" "ub" "1" "1"
} else {
	ub:process $user $mask $nick $hand $host $chan $chan1 $type "" $cmd "1" ""
	}	
	
	check:if:bind "ub:get:host" "302"
}

proc sb:get:host {from keyword arguments} {
	global black
	set hosts [lindex [split $arguments] 1]
	set hostname [lindex [split $hosts "="] 1]
	regsub {^[-+]} $hostname "" mask
	set nickname [lindex [split $hosts "="] 0]
	regsub {^:} $nickname "" nick
	set fullmask "$nick!$mask"
	set what $::suser
	set bhost $fullmask
	set nick $::snick
	set hand $::shand
	set host $::shost
	set chan $::schan
	set chan1 $::schan1
	set type $::stype
	set cmd $::scmd
if {$hosts == ":"} {
	set bhost "-"
}
	sb:process $bhost $what $nick $hand $host $chan $chan1 $type "sb" "1"
	check:if:bind "sb:get:host" "302"
}

proc userhost:get:host {from keyword arguments} {
	global black
	set hosts [lindex [split $arguments] 1]
	set hostname [lindex [split $hosts "="] 1]
	regsub {^[-+]} $hostname "" mask
	set nick $::bnick
	set txt $::getnick
	set hand $::userhand
	set host $::userhost
	set chan $::userchan
	set chan1 $::userchan1
	set type $::usertype
	set bantime $::userbantime
	set cmd $::usercmd
	set rs $::userrs
	set gl $::usergl
if {$hosts == ":"} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.usernotexist $txt
} else {
	bancmds:process $txt $mask $nick $hand $host $chan $chan1 $type $bantime $cmd $rs $gl
	}
	check:if:bind "userhost:get:host" "302"
}

proc userhost:act {why nick hand host chan chan1 type bantime cmd rs gl} {
	global black
	set split_hand [split $hand ":"]
	set gethand [lindex $split_hand 0]
	set cmd_status [btcmd:status $chan $gethand $cmd 0]
	set yes_whois 0
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

if {[validchan $chan] && ![onchan $why $chan] && $gl != "1"} {
	set yes_whois 1
}
if {$gl == "1"} {
	set yes_whois 1
}

if {$cmd != "troll"} {
if {(![regexp {\*} $why]) && $yes_whois == "1"} {
	putserv "USERHOST :$why"
	bind RAW - 302 userhost:get:host
	set ::bnick $nick
	set ::getnick $why
	set ::userhand $hand
	set ::userhost $host
	set ::userchan $chan
	set ::userchan1 $chan1
	set ::usertype $type
	set ::userbantime $bantime
	set ::usercmd $cmd
	set ::userrs $rs
	set ::usergl $gl
	return
	}
}
	bancmds:process $why $why $nick $hand $host $chan $chan1 $type $bantime $cmd $rs $gl	
}

########################### bancmds return host #######################

proc return_host_num {cmd chan} {
	global black
if {$cmd == "b:gl"} {
	return [get:banmask "$cmd" $chan]
}
switch [string tolower $cmd] {

topwords {
	return [get:mask "topwords" $chan]
}

hello {
	return [get:mask "hello" $chan]
}

troll {
	return [get:banmask "troll" $chan]
}

dr {
	return [get:banmask "dr" $chan]
}

vr {
	return [get:banmask "vr" $chan]
}

bot {

	return [get:banmask "bot" $chan]
}

n {
	return [get:banmask "n" $chan]
}

id {
	return [get:banmask "id" $chan]
}

mb {
	return "5"
}

spam {
	return [get:banmask "spam" $chan]
}

bw {
	return [get:banmask "bw" $chan]
}
black {
	return [get:banmask "black" $chan]
}

b {
	return [get:banmask "b" $chan]
}
stick {
	return [get:banmask "stick" $chan]
}

gag {
	return [get:banmask "gag" $chan]
}

badchan {
	return [get:banmask "badchan" $chan]
}

antipub {
	return [get:banmask "antipub" $chan]
}

inviteban {
	return [get:banmask "inviteban" $chan]
}

antinotice {
	return [get:banmask "antinotice" $chan]
}

antictcp {
	return [get:banmask "antictcp" $chan]
}

antibadword {
	return [get:banmask "antibadword" $chan]
}

antilongtext {
	return [get:banmask "antilongtext" $chan]
}

antibadquitpart {
	return [get:banmask "antibadquitpart" $chan] 
}
antijoinpart {
	return [get:banmask "antijoinpart" $chan]
}
antispam {
	return [get:banmask "antispam" $chan]
}
antirepeat {
	return [get:banmask "antirepeat" $chan]
}
anticolor {
	return [get:banmask "anticolor" $chan]
}
antibold {
	return [get:banmask "antibold" $chan]
}

antiunderline {
	return [get:banmask "antiunderline" $chan]
}

anticaps {
	return [get:banmask "anticaps" $chan]
}

badrealname {
	return [get:banmask "badrealname" $chan]
		}
badnick {
	return [get:banmask "badnick" $chan]
}

badident {
	return [get:banmask "badident" $chan]
}

next {
	return [get:banmask "next" $chan]
}

private {
	return [get:banmask "private" $chan]
}

antichanflood {
	return [get:banmask "antichanflood" $chan]
		}
badhost {
	return [get:banmask "badhost" $chan]
}
nickflood {
	return [get:banmask "nickflood" $chan]
		}
	}
}

########################## bancmds process ###########################

proc bancmds:process {user mask nick hand host chan chan1 type bantime cmd rs gl} {
	global black botnick
	set split_hand [split $hand ":"]
	set gethand [lindex $split_hand 0]
	set cmd_status [btcmd:status $chan $gethand $cmd 0]
if {$cmd_status == "1"} { 
	return
}
	set show_user $user
	set handle [nick2hand $user]
if {[matchattr $gethand q]} { blacktools:tell $nick $host $hand $chan $chan1 gl.glsuspend none
	return
}
if {[matchattr $gethand -|q $chan]} { blacktools:tell $nick $host $hand $chan $chan1 gl.suspend none
	return
}
if {![validchan $chan] && $gl == "0"} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.novalidchan none
	return
}

if {$gl != "1"} {
	set massban [check:massban $mask $chan]
if {$massban == "1"} {
	blacktools:tell $nick $host $hand $chan $chan1 b.9 none
	return
	}
}

if {[isbotnick $user]} {
	return
}
if {$gl != "1"} {
if {![onchan $botnick $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.notonchan none
	return
	}
}
if {$gl != "1"} {
if {[matchattr $handle $black(exceptflags) $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.noban none
	return
	}
} else {
	if {[matchattr $handle $black(glflags)]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.noban none
	return
	}
}

if {$rs != ""} {
	set getreason $rs
} else {
	set getreason [setting:get $chan $cmd-reason]
}

if {$getreason == ""} {
	set getlang [string tolower [setting:get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
	set getreason $black(say.$getlang.$cmd.5)
	
if {$cmd == "b"} {
	set len [llength $getreason] 
    set random [expr int(rand()*$len)] 
    set getreason [lindex $getreason $random]
	}
}

if {![string equal -nocase "$cmd" "black"] && ![string equal -nocase "$cmd" "troll"] && ![string equal -nocase "$cmd" "b"]} {
	set getbantime [setting:get $chan $cmd-bantime]
} else { set getbantime 0 }

if {[string equal -nocase "$cmd" "b"] || [string equal -nocase "$cmd" "stick"]} {
if {[time_return_minute $bantime] == [time_return_minute $black($cmd:bantime)]} {
	set setbantime [time_return_minute [setting:get $chan $cmd-bantime]]
if {$setbantime == "-1"} {
	set getbantime $bantime
		} else {
	set getbantime $setbantime
		}
	} else { set getbantime "" }
}
	
if {$getbantime == ""} { 
	set getbantime $bantime
}

if {$cmd == "troll"} {
	set getbantime $bantime
}

if {$gl != "1"} {
if {![onchan $user $chan] && $cmd == "troll"} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.usernotonchan $show_user
	return
	}
if {[regexp {\*} $mask] && $cmd == "mb"} {
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
	return
	}
}

if {$gl != "1"} {
if {[onchan $user $chan]} {
	set mask [return_mask [return_host_num $cmd $chan] [getchanhost $user $chan] $user]
} elseif {![regexp {\*} $mask]} {
	set mask [return_mask [return_host_num $cmd $chan] $mask $user]
}
} else {
if {![regexp {\*} $mask]} {
	set mask [return_mask [return_host_num "b:gl" $chan] $mask $user]
	}
}

if {$gl != "1"} {
	set list [userlist $black(exceptflags) $chan]
foreach u $list {
 set hosts [getuser $u hosts]
foreach h $hosts {
if {[string match -nocase "$mask" $h]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.noban none
	return
			}	
		}
	}
if {$cmd == "stick"} {
	blacktools:banner:3 $mask $hand $chan $chan1 $getreason $getbantime BANS($chan) "1" $cmd $nick $user $host
	return
	} 
if {$cmd == "troll"} {
	blacktools:banner:3 $mask $hand $chan $chan1 $getreason $getbantime BANS($chan) "2" $cmd $nick $user $host
	return
	}
if {$cmd == "bot" && [onchan $user $chan]} {
	set getreason "$getreason - $black(say.$getlang.$cmd.8)"
	blacktools:banner:3 $mask $hand $chan $chan1 $getreason $getbantime BANS($chan) "3" $cmd $nick $user $host
	return
	}
	blacktools:banner:3 $mask $hand $chan $chan1 $getreason $getbantime BANS($chan) "" $cmd $nick $user $host
} elseif {$gl == "2"} {
	blacktools:banner:3 $mask $hand $chan $chan1 $getreason $getbantime "link" "" $cmd $nick $user $host
} elseif {$gl == "1"} {
	blacktools:banner:3 $mask $hand $chan $chan1 $getreason $getbantime "gl" "" $cmd $nick $user $host
	}
}

proc check:massban {host chan} {
	global black
	set totuser [llength [chanlist $chan]]
	set counter 0
foreach user [chanlist $chan] {
	set gethost "$user![getchanhost $user $chan]"
if {[string match -nocase $host $gethost]} {
	set counter [expr $counter + 1]
	}
}
if {[expr 100 * $counter / $totuser] > 80} {
	return 1
}
	return 0
}


################################## Reason TimeBan #############################

proc reason:details:module {nick host hand chan} {
global botnick black
	set foundblacktools_ban 0
	set host "$nick!$host"
if {![validchan $chan]} {
	return
}
	chanserv:ignore_remove
	set getlang [string tolower [setting:get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
	set xban 0
	set bl 0
	set getcount [setting:get $chan kickcount]
if {![botisop $chan] && ![setting:get $chan xonly]} {
	return
}
if {[setting:get $chan xonly]} {
	set xban 1
	set getxtime [setting:get $chan xbantime]
	set getxlevel [setting:get $chan xbanlevel]
if {$getxtime == ""} {
	set getxtime $black(chanserv:bantime)
}
if {$getxlevel == ""} {
	set getxlevel $black(chanserv:banlevel)
	}
}
	set foundgl 0
	set getcount [setting:get $chan kickcount]
foreach b [blacktools:banlist:ban $chan] {
	set type [lindex [split $b] 0]
	set read_chan [lindex [split $b] 2]
	set read_host [lindex [split $b] 3]
	set real_read_host [string map [list \[ {\[} \] {\]} \? {\?} \\ {\\}] $read_host]
if {[string match -nocase $host $real_read_host] || [string match -nocase $real_read_host $host]} {
	set foundblacktools_ban 1
	set num [lindex [split $b] 1]
	set read_reason [join [lrange [split $b] 9 end]]
	set read_reason [encoding convertfrom utf-8 $read_reason]
	set expire [lindex [split $b] 5]
	set read_handle [lindex [split $b] 4]
	set gethand [lindex [split $read_handle] 0]
if {$expire == "0"} {
	set bl 1
}
	set show_reason [blacktools:setreason $chan $read_reason $read_handle $expire $getcount "0" $num]
if {$bl == "1"} {
if {[setting:get $chan showhandle]} {
	set show_reason "\[BT\] ($gethand) blacklisted -- $black(say.$getlang.gl.reason): $read_reason" 
} else {
	set show_reason "\[BT\] blacklisted -- $black(say.$getlang.gl.reason): $read_reason"
	}
if {[setting:get $chan showid]} {
	set show_reason "$show_reason \[id: $num\]"	
	}
}
if {[onchan $black(chanserv) $chan] && $xban == "1"} {
	putquick "PRIVMSG $black(chanserv) :ban $chan $read_host $getxtime $getxlevel $show_reason"
		} else {
	putquick "MODE $chan +b $read_host"
	putserv "KICK $chan $nick :$show_reason"
			}
		continue
	}
}

foreach b [blacktools:banlist:gl] {
	set read_host [lindex [split $b] 3]
	set real_read_host [string map [list \[ {\[} \] {\]} \? {\?} \\ {\\}] $read_host]
if {[string match -nocase $host $real_read_host] || [string match -nocase $real_read_host $host]} {
	set foundblacktools_ban 1
	set num [lindex [split $b] 1]
	set read_reason [join [lrange [split $b] 9 end]]
	set read_reason [encoding convertfrom utf-8 $read_reason]
	set expire [lindex [split $b] 5]
	set read_handle [lindex [split $b] 4]
	set show_reason [blacktools:setreason $chan $read_reason $read_handle $expire "" "1" $num]
if {$expire == "0"} {
	set bl 1
}
if {$bl == "1"} {
if {[setting:get $chan showhandle]} {
	set show_reason "\[BT\] ($read_handle) blacklisted -- $black(say.$getlang.gl.reason): $read_reason" 
} else {
	set show_reason "\[BT\] blacklisted -- $black(say.$getlang.gl.reason): $read_reason"
	}
if {[setting:get $chan showid]} {
	set show_reason "$show_reason \[id: $num\]"	
	}
}
if {[onchan $black(chanserv) $chan] && $xban == "1"} {
	putquick "PRIVMSG $black(chanserv) :ban $chan $read_host $getxtime $getxlevel $show_reason"
		} else {
	putquick "MODE $chan +b $read_host"
	putserv "KICK $chan $nick :$show_reason"
			}
		continue
	}
}

foreach b [blacktools:gaglist $chan] {
	set read_host [lindex [split $b] 3]
	set real_read_host [string map [list \[ {\[} \] {\]} \? {\?} \\ {\\}] $read_host]
if {[string match -nocase $host $real_read_host] || [string match -nocase $real_read_host $host]} {
if {[ischanban $read_host $chan]} {
	continue
}
	set expire [lindex [split $b] 5]
	set read_time [return_time $getlang [expr $expire - [unixtime]]]
	set replace(%minute%) $read_time
	set replace(%gag%) $nick
	pushmode $chan +b $read_host
if {[isop $nick $chan]} {
	pushmode $chan -o $nick
}
if {[isvoice $nick $chan]} {
	pushmode $chan -v $nick
}
	putserv "PRIVMSG $chan :[string map [array get replace] $black(say.$getlang.gag.1)]"
	}
	continue
}

if {$foundblacktools_ban == 0} {
foreach ban [banlist] {
if {[string match -nocase [string tolower [lindex $ban 0]] $host]} {
	set foundgl 1
	set reason [lindex [split $ban] 1]
	set expire [lindex [split $ban] 2]
	set reason [join [lindex [split $ban] 1]]
	set bywho [lindex [split $ban] 5]
	set show_reason [blacktools:setreason $chan $reason $bywho $expire "" "1" "0"]
if {[onchan $black(chanserv) $chan] && $xban == "1"} {
	putquick "PRIVMSG $black(chanserv) :ban $chan [lindex $ban 0] $getxtime $getxlevel $show_reason"
		} else {
	putquick "MODE $chan +b [lindex $ban 0]"
	putserv "KICK $chan $nick :$show_reason"
		}
	}
	continue
}

if {$foundgl == "0"} {
foreach ban [banlist $chan] {
if {[string match -nocase [string tolower [lindex $ban 0]] $host]} {
	set reason [lindex $ban 1]
	set expire [lindex $ban 2]
	set reason [join [split [lindex $ban 1]]]
	set bywho [split [lindex $ban 5]]
	set show_reason [blacktools:setreason $chan $reason $bywho $expire $getcount "0" "0"]
if {[onchan $black(chanserv) $chan] && $xban == "1"} {
	putquick "PRIVMSG $black(chanserv) :ban $chan [lindex $ban 0] $getxtime $getxlevel $show_reason"
} else {
	putquick "MODE $chan +b [lindex $ban 0]"
	putserv "KICK $chan $nick :$show_reason"
					}
				}
				continue
			}
		}		
	}
}

############################ Ban Procedure #########################
proc blacktools:auto:remove {host chan} {
	global black
	set file [open $black(bans_file) "r"]
	set timestamp [clock format [clock seconds] -format {%Y%m%d%H%M%S}]
	set temp "$black(bans_file).new.$timestamp"
	set tempwrite [open $temp w]
while {[gets $file line] != -1} {
	set read_host [lindex [split $line] 3]
	set read_chan [lindex [split $line] 2]
	set real_read_host [string map [list \[ {\[} \] {\]} \? {\?} \\ {\\}] $read_host]
if {[string match -nocase $host $real_read_host] && [string equal -nocase $read_chan $chan]} {
	continue
} else {
	puts $tempwrite $line
		}	 
    }
	close $tempwrite
	close $file
    file rename -force $temp $black(bans_file)
}

proc blacktools:delban {host chan global gag} {
	global black

if {$global == "1"} {
	set chan "GLOBAL"
} else {
if {![validchan $chan]} {
	return
	}
}
if {$gag == "1"} {
	set file [open $black(bans_file) "r"]
	set timestamp [clock format [clock seconds] -format {%Y%m%d%H%M%S}]
	set temp "$black(bans_file).new.$timestamp"
	set tempwrite [open $temp w]
while {[gets $file line] != -1} {
	set read_type [lindex [split $line] 0]
	set read_chan [lindex [split $line] 2]
	set read_host [lindex [split $line] 3]
if {[string match -nocase $host $read_host] && [string equal -nocase $chan $read_chan] && [string equal -nocase "GAG" $read_type]} { 
	continue
} else {
	puts $tempwrite $line
		}	 
    }
	close $tempwrite
	close $file
    file rename -force $temp $black(bans_file)
return
}
	set file [open $black(bans_file) "r"]
	set timestamp [clock format [clock seconds] -format {%Y%m%d%H%M%S}]
	set temp "$black(bans_file).new.$timestamp"
	set tempwrite [open $temp w]
while {[gets $file line] != -1} {
	set read_chan [lindex [split $line] 2]
	set read_host [lindex [split $line] 3]
	set real_read_host [string map [list \[ {\[} \] {\]} \? {\?} \\ {\\}] $read_host]
if {[string equal -nocase $host $real_read_host] && [string equal -nocase $chan $read_chan]} {
	continue
} else {
	puts $tempwrite $line
		}	 
    }
	close $tempwrite
	close $file
    file rename -force $temp $black(bans_file)
}

proc blacktools:banlist {chan} {
	global black
	set file [open $black(bans_file) "r"]
	set w [read -nonewline $file]
	close $file
	set data [split $w "\n"]
	set banlist [lsearch -all -inline $data "* [string tolower $chan] *"]
	return $banlist
}

proc blacktools:banlist:ban {chan} {
	global black
	set file [open $black(bans_file) "r"]
	set w [read -nonewline $file]
	close $file
	set data [split $w "\n"]
	set banlist [lsearch -all -inline $data "BAN * [string tolower $chan] *"]
	return $banlist
}

proc blacktools:gaglist {chan} {
	global black
	set file [open $black(bans_file) "r"]
	set w [read -nonewline $file]
	close $file
	set data [split $w "\n"]
	set banlist [lsearch -all -inline $data "GAG * [string tolower $chan] *"]
	return $banlist
}


proc blacktools:banlist:gl {} {
	global black
	set file [open $black(bans_file) "r"]
	set w [read -nonewline $file]
	close $file
	set data [split $w "\n"]
	set banlist [lsearch -all -inline $data "* GLOBAL *"]
	return $banlist
}

proc blacktools:banlist:all {} {
	global black
	set file [open $black(bans_file) "r"]
	set w [read -nonewline $file]
	close $file
	set data [split $w "\n"]
	set banlist [lsearch -all -inline $data "*"]
	return $banlist
}

proc blacktools:sticky {host chan} {
	global black
	set file [open $black(bans_file) "r"]
	set w [read -nonewline $file]
	close $file
	set data [split $w "\n"]
	set bancheck [lsearch -all -inline $data "* [string tolower $chan] [string tolower $host] *"]
if {$bancheck != ""} {
	return [lindex [split $bancheck] 7]
	}
	return
}

proc blacktools:isban {host chan} {
	global black
	set file [open $black(bans_file) "r"]
	set w [read -nonewline $file]
	close $file
	set data [split $w "\n"]
	set bancheck [lsearch -all -inline $data "BAN * [string tolower $chan] [string tolower $host] *"]
if {$bancheck != ""} {
	return 1
	} else {
	return 0
	}
}

proc blacktools:isgag {host chan} {
	global black
	set file [open $black(bans_file) "r"]
	set w [read -nonewline $file]
	close $file
	set data [split $w "\n"]
	set bancheck [lsearch -all -inline $data "GAG * [string tolower $chan] [string tolower $host] *"]
if {$bancheck != ""} {
	return 1
	} else {
	return 0
	}
}

proc blacktools:addban:gl {nick host hand chan bantime type sticky global reason id} {
	global black
	set chan1 $chan
	set sec_bantime [expr $bantime * 60]
	set unixtime [unixtime]
if {$bantime != "0"} {
	set bantime [expr $unixtime + $sec_bantime]
}
	set file [open $black(bans_file) "r"]
	set timestamp [clock format [clock seconds] -format {%Y%m%d%H%M%S}]
	set temp "$black(bans_file).new.$timestamp"
	set tempwrite [open $temp w]
while {[gets $file line] != -1} {
	set read_gl [lindex [split $line] 2]
	set read_host [lindex [split $line] 3]	
	set real_read_host [string map [list \[ {\[} \] {\]} \? {\?} \\ {\\}] $read_host]
if {[string match -nocase $host $real_read_host] && [string equal -nocase "GLOBAL" $read_gl]} { 	
	continue
} else {
	puts $tempwrite $line
		}	 
    }
	close $tempwrite
	close $file
    file rename -force $temp $black(bans_file)
	blacktools:ban:put $nick $host $hand $chan $bantime $type $sticky $global $reason $id
}

proc blacktools:addban {nick host hand chan chan1 bantime type sticky global reason notfound cmd type banned prv id} {
	global black botnick
	chanserv:ignore_remove
	set split_hand [split $hand ":"]
	set gethand [lindex $split_hand 0]
	set gettype [lindex $split_hand 1]
if {$gettype == ""} {
	set hand [string map {":" ""} $hand]
} else {
	set length_hand [llength [split $hand]]
if {$length_hand > 1} {
	set hand [string map {" " "%"} $hand]
	}
}
	set sec_bantime [expr $bantime * 60]
	set unixtime [unixtime]
	set accdenied 0
	set xban 0
	set getcount [setting:get $chan kickcount]
	set show_reason $reason
if {$bantime != "0"} {
	set bantime [expr $unixtime + $sec_bantime]
}
if {![string equal -nocase $gethand "BADCHAN"] && ![string equal -nocase $gethand "badident"] && ![string equal -nocase $gethand "badnick"] && ![string equal -nocase $gethand "antibadquitpart"] && ![string equal -nocase $gethand "antichanflood"] && ![string equal -nocase $gethand "antispam"] && ![string equal -nocase $gethand "badhost"] && ![string equal -nocase $gethand "inviteban"]} {
	set show_reason [blacktools:setreason $chan $reason $gethand $bantime $getcount "0" $id]
}
	set file [open $black(bans_file) "r"]
	set timestamp [clock format [clock seconds] -format {%Y%m%d%H%M%S}]
	set temp "$black(bans_file).new.$timestamp"
	set tempwrite [open $temp w]
while {[gets $file line] != -1} {
	set read_chan [lindex [split $line] 2]
	set read_host [lindex [split $line] 3]
	set real_read_host [string map [list \[ {\[} \] {\]} \? {\?} \\ {\\}] $read_host]
if {([string match -nocase $host $real_read_host] || [string match -nocase $real_read_host $host]) && [string equal -nocase $chan $read_chan]} { 
	set read_time [lindex [split $line] 5]
	set read_stick [lindex [split $line] 7]
	set bywho [lindex [split $line] 4]
	set split_bywho [split $bywho ":"]
	set level [lindex $split_bywho 1]
if {![string equal -nocase $gethand "BADCHAN"] && ![string equal -nocase $gethand "badident"] && ![string equal -nocase $gethand "badnick"] && ![string equal -nocase $gethand "antibadquitpart"] && ![string equal -nocase $gethand "antichanflood"] && ![string equal -nocase $gethand "badrealname"] && ![string equal -nocase $gethand "antispam"] && ![string equal -nocase $gethand "badhost"] && ![string equal -nocase $gethand "inviteban"] } {
	set show_reason [blacktools:setreason $chan $reason $gethand $read_time $getcount "0" $id]
}
	set check [blacktools:check:levelub $gethand $chan $level]
if {$check == "-1"} {
	puts $tempwrite $line
	set accdenied 1
	continue
}
if {[matchattr $gethand -|O $chan] && ($read_time == "0")} {
	puts $tempwrite $line
	set accdenied 1
	continue
}
if {[matchattr $gethand -|OAS $chan] && ($read_stick == "1")} {
	puts $tempwrite $line
	set accdenied 1
	continue
}	
	continue
} else {
	puts $tempwrite $line
		}	 
    }
	close $tempwrite
	close $file
    file rename -force $temp $black(bans_file)
if {$accdenied == "0"} {
if {$cmd == "b" && $type != "gl"} {
if {![setting:get $chan xonly]} {
if {$prv == "prv"} {
	blacktools:tell $nick $prv $hand $chan $chan1 b.7 none
} else {
	blacktools:tell $nick "" $hand $chan $chan1 b.7 none
		}
	}
}
if {$notfound == "1"} {
if {[setting:get $chan xonly]} {
	set xban 1
	set getxtime [setting:get $chan xbantime]
	set getxlevel [setting:get $chan xbanlevel]
if {$getxtime == ""} {
	set getxtime $black(chanserv:bantime)
}
if {$getxlevel == ""} {
	set getxlevel $black(chanserv:banlevel)
	}
}
if {[onchan $black(chanserv) $chan] && $xban == "1"} {
	putquick "PRIVMSG $black(chanserv) :ban $chan $host $getxtime $getxlevel $show_reason"
		} else {
	pushmode $chan +b $host
	}
}
	blacktools:ban:put $nick $host $hand $chan $bantime $type $sticky $global $reason $id
} else {
	blacktools:tell $nick $host $hand $chan $chan1 gl.noban none
	}
}

proc blacktools:ban:put {nick host hand chan bantime type sticky global reason id} {
	global black
	set file [open $black(bans_file) "a"]
	set created [unixtime]
if {$global == "1"} {
	puts $file "$type $id GLOBAL $host $hand $bantime $created $sticky $global $reason"
} else {
	puts $file "$type $id [string tolower $chan] $host $hand $bantime $created $sticky $global $reason"
}
	close $file	
}

proc blacktools:join:ban {nick host hand chan} {
	global black
if {[isbotnick $nick]} {
foreach tmr [utimers] {
if {[string match "*who:chan $chan*" [join [lindex $tmr 1]]]} {
	killutimer [lindex $tmr 2]
			}	
		}
	utimer 5 [list who:chan $chan]
	}
foreach b [blacktools:banlist:ban $chan] {
	set read_host [lindex [split $b] 3]
	set real_read_host [string map [list \[ {\[} \] {\]} \? {\?} \\ {\\}] $read_host]
	set sticky [lindex [split $b] 7]
if {$sticky == "1"} {
	utimer 5 [list pushmode $chan +b $read_host]
		}			
	}
}

proc who:chan {chan} {
	global black
if {![botisop $chan]} {
	return
}
	putquick "WHO :$chan"
	set ::thechan $chan
	bind RAW - 352 get:chanlist
	bind RAW - 315 end:chanlist
}

proc mode:who:chan {chan} {
	global black
	putquick "WHO :$chan"
	set ::thechan $chan
	bind RAW - 352 get:chanlist
	bind RAW - 315 end:chanlist
}


proc get:chanlist {from keyword arguments} {
	global black
	set chan [lindex [split $arguments] 1]
	set ident [lindex [split $arguments] 2]
	set host [lindex [split $arguments] 3]
	set nick [lindex [split $arguments] 5]
	set thechan $::thechan
	set uhost "$nick!$ident@$host"
if {[string equal -nocase $thechan $chan]} {
	blacktools:auto:ban $nick $uhost $thechan
	}
}

proc end:chanlist {from keyword arguments} {
	global black
	unbind RAW - 352 get:chanlist
	unbind RAW - 315 end:chanlist
}

proc blacktools:auto:ban {nick uhost chan} {
	global black
	set xban 0
	set bl 0
	set getcount [setting:get $chan kickcount]
	set getlang [string tolower [setting:get $chan lang]]
	chanserv:ignore_remove
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
if {![botisop $chan] && ![setting:get $chan xonly]} {
	return
}
if {[setting:get $chan xonly]} {
	set xban 1
	set getxtime [setting:get $chan xbantime]
	set getxlevel [setting:get $chan xbanlevel]
if {$getxtime == ""} {
	set getxtime $black(chanserv:bantime)
}
if {$getxlevel == ""} {
	set getxlevel $black(chanserv:banlevel)
	}
}

foreach b [blacktools:banlist:ban $chan] {
	set type [lindex [split $b] 0]
	set read_chan [lindex [split $b] 2]
	set read_host [lindex [split $b] 3]
	set real_read_host [string map [list \[ {\[} \] {\]} \? {\?} \\ {\\}] $read_host]
if {[string match -nocase $real_read_host $uhost]} {
	set num [lindex [split $b] 1]
	set read_reason [join [lrange [split $b] 9 end]]
	set read_reason [encoding convertfrom utf-8 $read_reason]
	set expire [lindex [split $b] 5]
if {$expire == "0"} {
	set bl 1
}
	set read_handle [lindex [split $b] 4]
	set gethand [lindex [split $read_handle] 0]
	set show_reason [blacktools:setreason $chan $read_reason $read_handle $expire $getcount "0" $num]
if {$bl == "1"} {
if {[setting:get $chan showhandle]} {
	set show_reason "\[BT\] ($gethand) blacklisted -- $black(say.$getlang.gl.reason): $read_reason" 
} else {
	set show_reason "\[BT\] blacklisted -- $black(say.$getlang.gl.reason): $read_reason"
	}
if {[setting:get $chan showid]} {
	set show_reason "$show_reason \[id: $num\]"	
	}
}

if {[onchan $black(chanserv) $chan] && $xban == "1"} {
	putquick "PRIVMSG $black(chanserv) :ban $chan $read_host $getxtime $getxlevel $show_reason"
} else {
	pushmode $chan +b $read_host
	puthelp "KICK $chan $nick :$show_reason"
		}
		continue
	}
}
foreach b [blacktools:banlist:gl] {
	set read_host [lindex [split $b] 3]
	set real_read_host [string map [list \[ {\[} \] {\]} \? {\?} \\ {\\}] $read_host]
if {[string match -nocase $real_read_host $uhost]} {
	set num [lindex [split $b] 1]
	set read_reason [join [lrange [split $b] 9 end]]
	set read_reason [encoding convertfrom utf-8 $read_reason]
	set expire [lindex [split $b] 5]
	set read_handle [lindex [split $b] 4]
	set read_handle [lindex [split $b] 4]
	set gethand [lindex [split $read_handle] 0]
if {$expire == "0"} {
	set bl 1
}
	set show_reason [blacktools:setreason $chan $read_reason $read_handle $expire "" "1" $num]
if {$bl == "1"} {
if {[setting:get $chan showhandle]} {
	set show_reason "\[BT\] ($gethand) blacklisted -- $black(say.$getlang.gl.reason): $read_reason" 
} else {
	set show_reason "\[BT\] blacklisted -- $black(say.$getlang.gl.reason): $read_reason"
	}
if {[setting:get $chan showid]} {
	set show_reason "$show_reason \[id: $num\]"	
	}
}
if {[onchan $black(chanserv) $chan] && $xban == "1"} {
	putquick "PRIVMSG $black(chanserv) :ban $chan $read_host $getxtime $getxlevel $show_reason"
} else {
	pushmode $chan +b $read_host
	puthelp "KICK $chan $nick :$show_reason"
			}
			continue
		}
	}
foreach b [blacktools:gaglist $chan] {
	set read_host [lindex [split $b] 3]
	set real_read_host [string map [list \[ {\[} \] {\]} \? {\?} \\ {\\}] $read_host]
if {[string match -nocase $real_read_host $uhost]} {
if {[ischanban $read_host $chan]} {
	continue
}
	set num [lindex [split $b] 1]
	set expire [lindex [split $b] 5]
	set read_time [return_time $getlang [expr $expire - [unixtime]]]
	set replace(%minute%) $read_time
	set replace(%gag%) $nick
if {[isop $nick $chan]} {
	pushmode $chan -o $nick
}
if {[isvoice $nick $chan]} {
	pushmode $chan -v $nick
}
	pushmode $chan +b $read_host
	set text [black:color:set "" $black(say.$getlang.gag.1)]
	set reply [join $text]
	puthelp "PRIVMSG $chan :[string map [array get replace] $reply]"
	continue
		}
	}	
}

proc blacktools:mode:ban {nick host hand chan mod who} {
	global black
if {$mod == "-b"} {
	foreach b [blacktools:banlist:ban $chan] {
	set read_host [lindex [split $b] 3]
	set real_read_host [string map [list \[ {\[} \] {\]} \? {\?} \\ {\\}] $read_host]
if {[string match -nocase $real_read_host $who]} {
	set sticky [lindex [split $b] 7]
if {$sticky == "1"} {
	pushmode $chan +b $who
			}
		}
	}
}
	
if {$mod == "+o"} {
if {[isbotnick $who]} {
foreach b [blacktools:banlist:ban $chan] {
	set read_host [lindex [split $b] 3]
	set real_read_host [string map [list \[ {\[} \] {\]} \? {\?} \\ {\\}] $read_host]
	set sticky [lindex [split $b] 7]
if {$sticky == "1"} {
if {![ischanban $read_host $chan]} {
	pushmode $chan +b $read_host
					}
				}
			}
	mode:who:chan $chan
		}
	}	
}

proc blacktools:chnick:ban {nick host hand chan newnick} {
	global botnick black
if {[onchan $botnick $chan]} {
	set bhost "$newnick![getchanhost $newnick $chan]"
	blacktools:auto:ban $newnick $bhost $chan
	}
}

proc blacktools:autounban {minute hour day month year} {
	global black
	chanserv:ignore_remove

foreach b [blacktools:banlist:all] {
	set read_time [lindex [split $b] 5]
if {$read_time == "0"} { continue }
if {[duration [expr $read_time - [unixtime]]] == "0 seconds"} {
	set read_host [lindex [split $b] 3]
	set real_read_host [string map [list \[ {\[} \] {\]} \? {\?} \\ {\\}] $read_host]
	set read_type [lindex [split $b] 0]
	set read_chan [lindex [split $b] 2]
	set read_tr [lindex [split $b] 7]
	blacktools:auto:remove $real_read_host $read_chan
foreach chan [channels] {
if {[string equal -nocase $chan $read_chan]} {
	set getlang [string tolower [setting:get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
if {[ischanban $read_host $chan]} {
if {[string equal -nocase $read_type "GAG"]} {
foreach user [chanlist $chan] {
	set uhost "$user![getchanhost $user $chan]"
if {[string match -nocase $real_read_host $uhost]} {
	set replace(%nick%) $user
	set replace(%chan%) $chan
	set text [black:color:set "" $black(say.$getlang.gag.5)]
	set reply [join $text]
	puthelp "PRIVMSG $chan :[string map [array get replace] $reply]"
			}
		}
	}
}
	pushmode $chan -b $read_host
if {$read_tr == "2"} {
	troll:del $read_host $chan
	}
}
if {[setting:get $chan xonly]} {
	putquick "PRIVMSG $black(chanserv) :unban $chan $read_host"
				}
			}
		}
	}
}

proc blacktools:setreason {chan reason bywho expire kcount gl id} {
	global black
	set split_hand [split $bywho ":"]
	set gethand [lindex $split_hand 0]
	set cmd [lindex $split_hand 1]
if {$expire != "0"} {
	set expire [return_reason_time [expr $expire - [unixtime]]]
}
if {$gl == "0"} {
if {![string equal -nocase $gethand "BADCHAN"] && ![string equal -nocase $gethand "badident"] && ![string equal -nocase $gethand "badnick"] && ![string equal -nocase $gethand "antibadquitpart"] && ![string equal -nocase $gethand "antichanflood"] && ![string equal -nocase $gethand "badrealname"] && ![string equal -nocase $gethand "antispam"] && ![string equal -nocase $gethand "badhost"] && ![string equal -nocase $gethand "antipub"] && ![string equal -nocase $gethand "antinotice"] && ![string equal -nocase $gethand "antictcp"] && ![string equal -nocase $gethand "antirepeat"] && ![string equal -nocase $gethand "antibold"] && ![string equal -nocase $gethand "anticolor"] && ![string equal -nocase $gethand "antiunderline"] && ![string equal -nocase $gethand "antilongtext"] && ![string equal -nocase $gethand "antibadword"] && ![string equal -nocase $gethand "antijoinpart"] && ![string equal -nocase $gethand "anticaps"] && ![string equal -nocase $gethand "nickflood"] && ![string equal -nocase $gethand "inviteban"]} {
if {[setting:get $chan showhandle]} {
	set show_reason "($gethand) $reason"
} else { set show_reason "$reason" }
} else {
	set show_reason "$reason"
}

if {[setting:get $chan showid] && ($cmd != "bot")} {
	set show_reason "$show_reason \[id: $id\]"
}	

if {[setting:get $chan showtime] && ($expire != "0") && ($cmd != "bot")} {
	set show_reason "$show_reason \[bantime: $expire\]"
}

if {[setting:get $chan showurl] && ([setting:get $chan url] != "") && ($cmd != "bot")} {
		set show_reason "$show_reason - [setting:get $chan url]"
}
if {[setting:get $chan showcount] && ($cmd != "bot")} {
	set show_reason "$show_reason - $kcount -"
}
	} else {
if {[setting:get $chan showhandle]} {
	set show_reason "($bywho) $reason"
} else { set show_reason "$reason" }

if {[setting:get $chan showtime] && ($expire != "0")} {
	set show_reason "$show_reason \[bantime: $expire\]"
}

if {[setting:get $chan showid]} {
	set show_reason "$show_reason \[id: $id\]"
		}		
	}
	return $show_reason
}

proc blacktools:check:levelban {hand chan level} {
	global black
	set level [string map {"-" ""} $level]
	set levels ""
if {[matchattr $hand nm]} {
	set levels "[string tolower [blacktools:getlevelname 2 $hand]] [string tolower [blacktools:getlevelname 3 $hand]] [string tolower [blacktools:getlevelname 4 $hand]] [string tolower [blacktools:getlevelname 5 $hand]] [string tolower [blacktools:getlevelname 8 $hand]]"	
	set split_levels [split $levels " "]
foreach l $split_levels {
	if {[string equal -nocase $l $level]} {
	return $l
		}
	}
}
if {[matchattr $hand o]} {
	set levels "[string tolower [blacktools:getlevelname 3 $hand]] [string tolower [blacktools:getlevelname 4 $hand]] [string tolower [blacktools:getlevelname 5 $hand]] [string tolower [blacktools:getlevelname 8 $hand]]"	
	set split_levels [split $levels " "]
foreach l $split_levels {
	if {[string equal -nocase $l $level]} {
	return $l
		}
	}
}
if {[matchattr $hand -|M $chan]} {
	set levels "[string tolower [blacktools:getlevelname 3 $hand]] [string tolower [blacktools:getlevelname 4 $hand]] [string tolower [blacktools:getlevelname 5 $hand]]"	
	set split_levels [split $levels " "]
foreach l $split_levels {
	if {[string equal -nocase $l $level]} {
	return $l
		}
	}
}
if {[matchattr $hand -|A $chan]} {
	set levels "[string tolower [blacktools:getlevelname 4 $hand]] [string tolower [blacktools:getlevelname 5 $hand]]"	
	set split_levels [split $levels " "]
foreach l $split_levels {
	if {[string equal -nocase $l $level]} {
	return $l
		}
	}
}
if {[matchattr $hand -|O $chan]} {
	set levels "[string tolower [blacktools:getlevelname 5 $hand]]"	
	set split_levels [split $levels " "]
foreach l $split_levels {
	if {[string equal -nocase $l $level]} {
	return $l
		}
	}
}
	return "0 [join [string toupper $levels] ", "]"
}


proc blacktools:check:levelub {hand chan level} {
	global black
	set getlevel ""
if {[string equal -nocase $level [blacktools:getlevelname 2 $hand]] || [string equal -nocase $level [blacktools:getlevelname 3 $hand]] || [string equal -nocase $level [blacktools:getlevelname 4 $hand]] || [string equal -nocase $level [blacktools:getlevelname 5 $hand]] || [string equal -nocase $level [blacktools:getlevelname 8 $hand]]} {
if {[matchattr $hand nm]} {
	set getlevel [blacktools:getlevelname 2 $hand]
} elseif {[matchattr $hand o]} {
	set getlevel [blacktools:getlevelname 8 $hand]
} elseif {[matchattr $hand -|M $chan]} {
	set getlevel [blacktools:getlevelname 3 $hand]
} elseif {[matchattr $hand -|A $chan]} {
	set getlevel [blacktools:getlevelname 4 $hand]
} elseif {[matchattr $hand -|O $chan]} {
	set getlevel [blacktools:getlevelname 5 $hand]
}
	
if {[string equal -nocase $getlevel [blacktools:getlevelname 2 $hand]]} {
if {[string equal -nocase $level [blacktools:getlevelname 2 $hand]] || [string equal -nocase $level [blacktools:getlevelname 3 $hand]] || [string equal -nocase $level [blacktools:getlevelname 4 $hand]] || [string equal -nocase $level [blacktools:getlevelname 5 $hand]] || [string equal -nocase $level [blacktools:getlevelname 8 $hand]]} {
	return 1
	}
}

if {[string equal -nocase $getlevel [blacktools:getlevelname 8 $hand]]} {
if {[string equal -nocase $level [blacktools:getlevelname 3 $hand]] || [string equal -nocase $level [blacktools:getlevelname 4 $hand]] || [string equal -nocase $level [blacktools:getlevelname 5 $hand]] || [string equal -nocase $level [blacktools:getlevelname 8 $hand]]} {
	return 1
	}
}

if {[string equal -nocase $getlevel [blacktools:getlevelname 3 $hand]]} {
if {[string equal -nocase $level [blacktools:getlevelname 3 $hand]] || [string equal -nocase $level [blacktools:getlevelname 4 $hand]] || [string equal -nocase $level [blacktools:getlevelname 5 $hand]]} {
	return 1
	}
}

if {[string equal -nocase $getlevel [blacktools:getlevelname 4 $hand]]} {
if {[string equal -nocase $level [blacktools:getlevelname 4 $hand]] || [string equal -nocase $level [blacktools:getlevelname 5 $hand]]} {
	return 1
	}
}

if {[string equal -nocase $getlevel [blacktools:getlevelname 5 $hand]]} {
if {[string equal -nocase $level [blacktools:getlevelname 5 $hand]]} {
	return 1
			}
		}
} else { return 0 }
	return -1
}

################################### Login ###############################

proc loginpublic:start {} {
global black botnick
if {$black(autologin) == "0"} {
	return
}
if {[info exists black(logged)]} {
	putlog "\[BT\] Still logged.."
	return
}
	chanserv:ignore_remove
if {[info exists black(notlogged:invalid)]} {
	unset black(notlogged:invalid)
}
if {[info exists black(notlogged:failed)]} {
	unset black(notlogged:failed)
}

if {[info exists black(notlogged)]} {
	unset black(notlogged)
}
	putserv "PRIVMSG $black(hostchanserv) :login $black(username) $black(password)"
	putserv "PRIVMSG $black(hostchanserv) :set lang EN"
   	putserv "MODE $botnick :$black(xmod)"
	bind RAW - 401 check:chanserv
}

proc loginpublic {my} {
   global botnick black
if {$black(autologin) == "0"} {
	return
}
	chanserv:ignore_remove
if {[info exists black(logged)]} {
	unset black(logged)
}

if {[info exists black(notlogged)]} {
	unset black(notlogged)
}
	putserv "PRIVMSG $black(hostchanserv) :login $black(username) $black(password)"
   	putserv "MODE $botnick :$black(xmod)"
	bind RAW - 401 check:chanserv
}

########################## show line output ##########################

proc module:getinfo {nick host hand chan chan1 type text modul gl next} {
	global black
	set remain 0
	set split_modul [split $modul ":"]
	set themodul [lindex $split_modul 0]
if {$themodul == "topwords" || $themodul == "topbans"} {
	set maxentries "10"
} else {
	set maxentries $black(modul:nr:entries)
}
	set getlang [string tolower [getuser $hand XTRA OUTPUT_LANG]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
	set getmethod [getuser $hand XTRA OUTPUT_TYPE]
if {$getmethod == ""} { set getmethod $black(default_output) }
if {[string equal -nocase $next "-next"]} {
if {[info exists black($modul:more:$chan:$hand)]} {
if {$black($modul:more:$chan:$hand) >= $maxentries} {
for {set i $black($modul:show:$chan:$hand)} { $i < [expr $black($modul:show:$chan:$hand) + $maxentries] } { incr i } {
	set current_text [lindex $text $i]
if {$themodul == "topwords" || $themodul == "topbans"} {
if {$current_text != ""} {
	set nr_text [lindex [split $current_text] 0]
	set read_nick [lindex [split $current_text] 1]
	set counter [lindex [split $current_text] 2]
	lappend top $read_nick:$nr_text:$counter
}
} else {
	show:modul:info $nick $host $hand $chan $chan1 $current_text $modul $remain
	}
}
if {$themodul == "topwords" || $themodul == "topbans"} {
	show:modul:info $nick $host $hand $chan $chan1 $top $modul $remain
}
	set black($modul:more:$chan:$hand) [expr $black($modul:more:$chan:$hand) - $maxentries]
if {$host == "prv"} {
	modul:remain $nick $host $hand $black($modul:more:$chan:$hand) $chan $chan1 $getmethod $modul $gl "1"
} else {
	modul:remain $nick $host $hand $black($modul:more:$chan:$hand) $chan $chan1 $getmethod $modul $gl "0"
}
	set black($modul:show:$chan:$hand) [expr $black($modul:show:$chan:$hand) + $maxentries]
	} else {
if {$black($modul:more:$chan:$hand) < 1} {
	return
}
for {set i $black($modul:show:$chan:$hand)} { $i <= [expr $black($modul:show:$chan:$hand) +  $black($modul:more:$chan:$hand)]} { incr i } {
	set current_text [lindex $text $i]
if {$themodul == "topwords" || $themodul == "topbans"} {
if {$current_text != ""} {
	set nr_text [lindex [split $current_text] 0]
	set read_nick [lindex [split $current_text] 1]
	set counter [lindex [split $current_text] 2]
	lappend top $read_nick:$nr_text:$counter
}
} else {
	show:modul:info $nick $host $hand $chan $chan1 $current_text $modul $remain
	}
}
if {$themodul == "topwords" || $themodul == "topbans"} {
	show:modul:info $nick $host $hand $chan $chan1 $top $modul $remain
}
	set black($modul:more:$chan:$hand) [expr $black($modul:more:$chan:$hand) - $black($modul:show:$chan:$hand)]
	}
	foreach tmr [utimers] {
if {[string match -nocase "*module:getinfo:unset:more $chan $hand*" [join [lindex $tmr 1]]]} {
	killutimer [lindex $tmr 2]
		}
	}
	utimer 30 [list module:getinfo:unset:more $chan $hand $modul]
if {$black($modul:more:$chan:$hand) < 1} {
switch $themodul {
badchan {
	blacktools:tell $nick $host $hand $chan $chan1 $modul.4 none
			}
notesinbox {
	blacktools:tell $nick $host $hand $chan $chan1 $modul.13 none
}
noteslist {
	blacktools:tell $nick $host $hand $chan $chan1 $modul.13 none
}
anunt {
	blacktools:tell $nick $host $hand $chan $chan1 $modul.2 none 
			}
quote {
	blacktools:tell $nick $host $hand $chan $chan1 $modul.2 none 
			}
guestnick {
	blacktools:tell $nick $host $hand $chan $chan1 $modul.9 none
}
autobroadcast {
	blacktools:tell $nick $host $hand $chan $chan1 $modul.10 none 
			}
topwords {

}
topbans {

}
badword {
	blacktools:tell $nick $host $hand $chan $chan1 antibadword.3 none 
}
badquitpart {
	blacktools:tell $nick $host $hand $chan $chan1 antibadquitpart.3 none 
}

default {
	blacktools:tell $nick $host $hand $chan $chan1 $themodul.3 none 
			}
		}
	}
}	
	return
}
switch $themodul {
badchan {
if {$gl == "1"} {
	blacktools:tell $nick $host $hand $chan $chan1 $modul.15 none
} else {
	blacktools:tell $nick $host $hand $chan $chan1 $modul.14 none
		}	
	}
anunt {
	blacktools:tell $nick $host $hand $chan $chan1 $modul.8 none 
	}
notesinbox {
	
	}
noteslist {

}
quote {
	blacktools:tell $nick $host $hand $chan $chan1 $modul.8 none 
			}
guestnick {
	blacktools:tell $nick $host $hand $chan $chan1 $modul.7 none 
}
autobroadcast {
	blacktools:tell $nick $host $hand $chan $chan1 $modul.9 none
	}
topwords {
	
	}
topbans {

}
badword {
	blacktools:tell $nick $host $hand $chan $chan1 antibadword.7 none 
}
badquitpart {
	blacktools:tell $nick $host $hand $chan $chan1 antibadquitpart.7 none 
}

default {
	blacktools:tell $nick $host $hand $chan $chan1 $themodul.7 none
	}
}
	set black($modul:ltext:$chan:$hand) [llength $text]
	set black($modul:show:$chan:$hand) 0
if {$black($modul:ltext:$chan:$hand) > $maxentries} {

	set black($modul:more:$chan:$hand) [expr $black($modul:ltext:$chan:$hand) - $maxentries]
	for {set i 0} { $i < $maxentries } { incr i } {
	set current_text [lindex $text $i]
if {$themodul == "topwords" || $themodul == "topbans"} {
if {$current_text != ""} {
	set nr_text [lindex [split $current_text] 0]
	set read_nick [lindex [split $current_text] 1]
	set counter [lindex [split $current_text] 2]
	lappend top $read_nick:$nr_text:$counter
	}
} else {
	show:modul:info $nick $host $hand $chan $chan1 $current_text $modul $remain
	}
}

if {$themodul == "topwords" || $themodul == "topbans"} {
if {$black($modul:more:$chan:$hand) > 0} {
	set remain 1
} 
	show:modul:info $nick $host $hand $chan $chan1 $top $modul $remain
}
	set black($modul:show:$chan:$hand) [expr $black($modul:show:$chan:$hand) + $maxentries]
if {$black($modul:more:$chan:$hand) > 0} {
if {$host == "prv"} {
	modul:remain $nick $host $hand $black($modul:more:$chan:$hand) $chan $chan1 $getmethod $modul $gl "1"
	} else {
	modul:remain $nick $host $hand $black($modul:more:$chan:$hand) $chan $chan1 $getmethod $modul $gl "0"
	}
}
	foreach tmr [utimers] {
if {[string match -nocase "*module:getinfo:unset:more $chan $hand*" [join [lindex $tmr 1]]]} {
	killutimer [lindex $tmr 2]
		}
	}
	utimer 60 [list module:getinfo:unset:more $chan $hand $modul]
} else {
for {set i 0} { $i < $maxentries } { incr i } {
	set current_text [lindex $text $i]
if {$themodul == "topwords" || $themodul == "topbans"} {
if {$current_text != ""} {
	set nr_text [lindex [split $current_text] 0]
	set read_nick [lindex [split $current_text] 1]
	set counter [lindex [split $current_text] 2]
	lappend top $read_nick:$nr_text:$counter
}
} else {
	show:modul:info $nick $host $hand $chan $chan1 $current_text $modul $remain
	}
}
if {$themodul == "topwords" || $themodul == "topbans"} {
	show:modul:info $nick $host $hand $chan $chan1 $top $modul $remain
}	
switch $themodul {

badchan {
	blacktools:tell $nick $host $hand $chan $chan1 $modul.4 none
	}
anunt {
	blacktools:tell $nick $host $hand $chan $chan1 $modul.2 none 
			}
notesinbox {
	blacktools:tell $nick $host $hand $chan $chan1 $modul.13 none
}
noteslist {
	blacktools:tell $nick $host $hand $chan $chan1 $modul.13 none
}
quote {
	blacktools:tell $nick $host $hand $chan $chan1 $modul.2 none 
			}
guestnick {
	blacktools:tell $nick $host $hand $chan $chan1 $modul.9 none
}
autobroadcast {
	blacktools:tell $nick $host $hand $chan $chan1 $modul.10 none 
			}
topwords {

}
topbans {

}
badword {
	blacktools:tell $nick $host $hand $chan $chan1 antibadword.3 none 
}
badquitpart {
	blacktools:tell $nick $host $hand $chan $chan1 antibadquitpart.3 none 
}

default {
	blacktools:tell $nick $host $hand $chan $chan1 $themodul.3 none 
			}						
		}		
	}
}

proc module:getinfo:unset:more {chan hand modul} {
	global black
if {[info exists black($modul:more:$chan:$hand)]} {
	unset black($modul:more:$chan:$hand)
}
if {[info exists black($modul:ltext:$chan:$hand)]} {
	unset black($modul:ltext:$chan:$hand)
	}
if {[info exists black($modul:show:$chan:$hand)]} {
	unset black($modul:show:$chan:$hand)
	}
}

proc show:modul:info {nick host hand chan chan1 text modul remain} {
	global black lastbind
	set split_modul [split $modul ":"]
	set themodul [lindex $split_modul 0]
	set total [lindex $split_modul 1]
	set otherchan 0
if {$chan != $chan1} {
	set otherchan 1
}
if {$text == ""} { return }
	set getlang [string tolower [getuser $hand XTRA OUTPUT_LANG]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
if {$themodul == "topwords" || $themodul == "topbans"} {
foreach entry $text {
	set split_entry [split $entry ":"]
	set nickname [lindex $split_entry 1]
	set word_count [lindex $split_entry 0]
	set place [lindex $split_entry 2]
	lappend top "\002#$place\002. $nickname ($word_count)"
}
if {$remain == "1"} {
	set split_lastbind [split $lastbind ""]
	set charbind [lindex $split_lastbind 0]
if {[lsearch -exact $black(cmdchar) $charbind] < 0} {
	set charbind ""
}
	set replace(%char%) $charbind
	set replace(%chan%) $chan
if {$total == "total"} {
if {$otherchan == "1"} {
	set others [string map [array get replace] $black(say.$getlang.$themodul.12)]
} else {
	set others [string map [array get replace] $black(say.$getlang.$themodul.11)]
}
} else {
if {$otherchan == "1"} {
	set others [string map [array get replace] $black(say.$getlang.$themodul.13)]
	} else {
	set others [string map [array get replace] $black(say.$getlang.$themodul.9)]
	}
}
if {$total == "total"} {
	blacktools:tell $nick $host $hand $chan $chan1 $themodul.1 "[join $top] $others"
} else {
	blacktools:tell $nick $host $hand $chan $chan1 $themodul.2 "[join $top] $others"
}
} else {
if {$total == "total"} {
	blacktools:tell $nick $host $hand $chan $chan1 $themodul.1 "[join $top]"
	} else {
	blacktools:tell $nick $host $hand $chan $chan1 $themodul.2 "[join $top]"
	}
}
	return
}
	set num [lindex [split $text] 0]
	set gettext [join [lrange [split $text] 1 end]]
	set encoded [encoding convertfrom utf-8 $gettext]
	blacktools:tell $nick $host $hand $chan $chan1 gl.showline "$num [join $encoded]"
}

proc modul:remain {nick host hand count chan chan1 type modul gl prv} {
	global black lastbind botnick
	set otherchan 0
if {$chan != $chan1} {
	set otherchan 1
}
if {$count == "0"} { return }
	set split_modul [split $modul ":"]
	set themodul [lindex $split_modul 0]
	set getlang [string tolower [getuser $hand XTRA OUTPUT_LANG]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
	set firstchar [lindex $black(cmdchar) 0]
if {[string equal $lastbind "*"]} { 
	set charbind "prv" } elseif {[string equal -nocase "**" $lastbind]} { set charbind "$botnick " 
} elseif {[string equal -nocase "***" $lastbind]} { 
	set split_host [split $host ":"]
if {[lindex $split_host 1] == "chan"} {
	set host [lindex $split_host 1]
	set charbind [lindex $split_host 0]
	} else {
	set charbind "$host"
	}
}
if {$charbind == ""} {
	set charbind $firstchar
if {[validuser $hand]} {
	set getchar [getuser $hand XTRA MYCHAR]
if {$getchar != ""} {
	set charbind $getchar
		}
	}
}
if {$charbind == "prv"} { set charbind "" }
	set replace(%char%) $charbind
	set replace(%counter%) $count
	set replace(%chan%) $chan
switch [string tolower $themodul] {
badchan {
if {$otherchan == "1" || $prv == "1"} {
	set msg $black(say.$getlang.$modul.41)
} else {
	set msg $black(say.$getlang.$modul.3)
	}
if {$gl == "1"} {
	set msg $black(say.$getlang.$modul.2)
	} 
}
anunt {
if {$otherchan == "1" || $prv == "1"} {
	set msg $black(say.$getlang.$modul.14)
} else {
	set msg $black(say.$getlang.$modul.9)
	}
}

notesinbox {
if {$otherchan == "1" || $prv == "1"} {
	set msg $black(say.$getlang.$modul.16)
} else {
	set msg $black(say.$getlang.$modul.15)
	}
}

noteslist {
if {$otherchan == "1" || $prv == "1"} {
	set msg $black(say.$getlang.$modul.16)
} else {
	set msg $black(say.$getlang.$modul.15)
	}
}

quote {
if {$otherchan == "1" || $prv == "1"} {
	set msg $black(say.$getlang.$modul.14)
} else {
	set msg $black(say.$getlang.$modul.9)
	}
}
topwords {
	set msg ""
	}
topbans {
	set msg ""
}
guestnick {
if {$otherchan == "1" || $prv == "1"} {
	set msg $black(say.$getlang.$modul.11)
	} else {
	set msg $black(say.$getlang.$modul.8)
	}
}
autobroadcast {
	set msg $black(say.$getlang.$modul.12)
	}
badword {
if {$otherchan == "1" || $prv == "1"} {
	set msg $black(say.$getlang.antibadword.9) 
	} else {
	set msg $black(say.$getlang.antibadword.8)
	}
}
badquitpart {
if {$otherchan == "1" || $prv == "1"} {
	set msg $black(say.$getlang.antibadquitpart.9)
	} else {
	set msg $black(say.$getlang.antibadquitpart.8)
	}
}
default {
if {$otherchan == "1" || $prv == "1"} {
	set msg $black(say.$getlang.$themodul.9)
	} else {
	set msg $black(say.$getlang.$themodul.8)
		}
	}
}
if {$msg == ""} {
	return
} 
	blacktools:tell:cmd $nick "" $hand $chan $chan1 $prv $type [string map [array get replace] $msg]
}

########################## Other Module Process ######################

proc othermodule:process {nick host hand chan chan1 who msg type modul} {
	global black botnick
	set cmd_status [btcmd:status $chan $hand $modul 0]
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

if {![validchan $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr $modul
	return
}

if {![onchan $botnick $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.notonchan none
	return
}

switch $who {
	on {
if {[string equal -nocase $modul "topic"]} {
	return
}
	blacktools:tell $nick $host $hand $chan $chan1 $modul.2 none
	setting:set $chan +$modul ""
	
	}
	off {
if {[string equal -nocase $modul "topic"]} {
	return
}
	blacktools:tell $nick $host $hand $chan $chan1 $modul.3 none
	setting:set $chan -$modul ""
	}
	
	set {
if {![string equal -nocase $modul "topic"]} {
if {$msg == ""} {
switch $type {
	0 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr $modul
	}
	1 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_nick $modul
	}
	2 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_priv $modul
			}
		}
		return
	}
}

if {[string equal -nocase $modul "topic"]} {
		set thetopic [topic $chan]
		set url [setting:get $chan url]
if {$msg == ""} {
if {$url != ""} {
	set gettopic [string map [list "([color:filter $url])" ""] [color:filter  $thetopic]]
}
	set msg $gettopic
}
if {$msg == ""} {
	blacktools:tell $nick $host $hand $chan $chan1 topic.2 none
	return
	}
if {$thetopic != $msg} {
	blacktools:tell $nick $host $hand $chan $chan1 topic.1 $msg
	
if {$url != ""} {
	putserv "TOPIC $chan :$msg ($url)"
			} else { putserv "TOPIC $chan :$msg" }
} else {
	blacktools:tell $nick $host $hand $chan $chan1 topic.3 $msg
	}
	msg:add $msg $chan $modul
	return
}
	msg:add $msg $chan $modul
	blacktools:tell $nick $host $hand $chan $chan1 $modul.1 $msg
}
show {
	set getline ""
	set file [open $black(join_file) r]
while {[gets $file line] != -1} {
	set read_modul [lindex [split $line] 0]
	set read_chan [lindex [split $line] 1]
if {[string equal -nocase $read_modul $modul] && [string equal -nocase $chan $read_chan]} {	
	set read_msg [lrange [split $line] 2 end]
	set getline [encoding convertfrom utf-8 $read_msg]
	continue
		}
	}
	close $file
	blacktools:tell $nick $host $hand $chan $chan1 show.6 "$modul $getline"
}

default {
switch $type {
	0 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr $modul
	}
	1 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_nick $modul
	}
	2 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_priv $modul
				}
			}
		}
	}
}

proc msg:add {msg chan modul} {
	global black
	set msg [encoding convertto utf-8 $msg]
	set timestamp [clock format [clock seconds] -format {%Y%m%d%H%M%S}]
	set temp "$black(tempdir)/othermodule_temp.$timestamp"
	set file [open $black(join_file) r]
	set tempwrite [open $temp w]
while {[gets $file line] != -1} {
	set read_modul [lindex [split $line] 0]
	set read_chan [lindex [split $line] 1]
	set enc_chan [encoding convertfrom utf-8 $read_chan]
if {[string equal -nocase $read_modul $modul] && [string equal -nocase $chan $enc_chan]} { 
	continue
} else {
	puts $tempwrite $line
		}	 
    }
	close $tempwrite
	close $file
    file rename -force $temp $black(join_file)
	
	set file [open $black(join_file) a]
	set enc_chan [encoding convertto utf-8 $chan]
	puts $file "[string toupper $modul] $enc_chan $msg"
	close $file
}

######################### Channel Remove Data ####################

proc delchan:all {chan} {
	global black
if {$black(chanremove_all) == "0"} {
	return
}
	set getfiles [getall:files]
	set split_files [split $getfiles " "]
foreach f $split_files {
	set file [open $f r]
	set w [read -nonewline $file]
	close $file
	set data [split $w "\n"]
	set i [lsearch -all -inline $data "*#*"]
foreach line $i {
if {[regexp {^[&#]} [lindex [split $line] 0]]} {
	set c [lindex [split $line] 0]
} elseif {[regexp {^[&#]} [lindex [split $line] 1]]} {
	set c [lindex [split $line] 1]
} elseif {[regexp {^[&#]} [lindex [split $line] 2]]} {
	set c [lindex [split $line] 2]
}
	set encoded [encoding convertfrom utf-8 $c]
if {[string equal -nocase $encoded $chan]} {
	remove:chan $encoded $f
			}
		}
	}
}

proc getall:files {} {
	global black
	return "$black(s_file) $black(seen_file) $black(seen_details) $black(bans_file) $black(join_file) $black(extra_file)"
}

proc remove:chan:timer {minute hour day month year} {
	global black
if {$black(chanremove_all) == "0"} {
	return
}
	set c ""
	set getfiles [getall:files]
	set split_files [split $getfiles " "]
foreach f $split_files {
	set file [open $f r]
	set w [read -nonewline $file]
	close $file
	set data [split $w "\n"]
	set i [lsearch -all -inline $data "*#*"]
foreach line $i {
if {[regexp {^[&#]} [lindex [split $line] 0]]} {
	set chan [lindex [split $line] 0]
} elseif {[regexp {^[&#]} [lindex [split $line] 1]]} {
	set chan [lindex [split $line] 1]
} elseif {[regexp {^[&#]} [lindex [split $line] 2]]} {
	set chan [lindex [split $line] 2]
}
	set encoded [encoding convertfrom utf-8 $chan]
if {![validchan $encoded]} {
	remove:chan $chan $f
			}
		}
	}
}

proc remove:chan {chan f} {
	global black
	set timestamp [clock format [clock seconds] -format {%Y%m%d%H%M%S}]
	set temp "$black(tempdir)/removechan_temp.$timestamp"
	set file [open $f r]
	set tempwrite [open $temp w]
	set c ""
while {[gets $file line] != -1} {
if {[regexp {^[&#]} [lindex [split $line] 0]]} {
	set c [lindex [split $line] 0]
} elseif {[regexp {^[&#]} [lindex [split $line] 1]]} {
	set c [lindex [split $line] 1]
} elseif {[regexp {^[&#]} [lindex [split $line] 2]]} {
	set c [lindex [split $line] 2]
}
	set encoded [encoding convertfrom utf-8 $c]
if {[string equal -nocase $chan $encoded]} {
	continue
} else {
	puts $tempwrite $line
		}	 
    }
	close $tempwrite
	close $file
    file rename -force $temp $f	
}

########################### Extra settings ########################

proc btcmd:global:set {hand cmd type} {
	global black
	if {[lsearch -exact $black(validcmds) $cmd] < 0} {
	return 2
}
if {[string equal -nocase "enable" $cmd]} {
	return 3
}
	set timestamp [clock format [clock seconds] -format {%Y%m%d%H%M%S}]
	set temp "$black(tempdir)/add_file_temp.$timestamp"
	set file [open $black(add_file) r]
	set tempwrite [open $temp w]
	set cmd_found 0
	set disable_type 0
while {[gets $file line] != -1} {
	set c [lindex [split $line] 0]
	set gettype [lindex [split $line] 1]
	set comp [lindex [split $line] 2]
if {[string equal -nocase $c "global"] && [string equal -nocase $gettype $cmd]} {
	set cmd_found 1
	continue
} else {
	puts $tempwrite $line
		}	 
    }
	close $tempwrite
	close $file
    file rename -force $temp $black(add_file)
if {$type == "1"} {
	set file [open $black(add_file) a]
	puts $file "DISABLE GLOBAL [string toupper $cmd] $type"
	close $file
	}
	return $cmd_found
}

proc btcmd:gl:status {cmd} {
	global black
	set file [open $black(add_file) r]
	set cmd_found 0
while {[gets $file line] != -1} {
	set disable [lindex [split $line] 0]
	set c [lindex [split $line] 1]
	set gettype [lindex [split $line] 2]
if {[string equal -nocase $disable "disable"] && [string equal -nocase $c "global"] && [string equal -nocase $gettype $cmd]} {
	set cmd_found 1
	continue
		}
	}
	close $file
	return $cmd_found
}

proc btcmd:status {chan hand cmd menureply} {
	global black
	set cmd_found 0
	set access ""
	set split_hand [split $hand ":"]
	set hand [lindex $split_hand 0]
if {[matchattr $hand -|M $chan]} {
	set access "MANAGER"
} elseif {[matchattr $hand n]} {
	set access "BOSS"
} elseif {[matchattr $hand m]} {
	set access "OWNER"
} elseif {[matchattr $hand o]} {
	set access "MASTER"
}
if {$menureply == "1"} {
	set file [open $black(add_file) r]
while {[gets $file line] != -1} {
	set disable [lindex [split $line] 0]
	set c [lindex [split $line] 1]
	set gettype [lindex [split $line] 2]
	set disable_level [lindex [split $line] 3]
if {[string equal -nocase $disable "disable"] && [string equal -nocase $c "global"] && [string equal -nocase $gettype $cmd]} {
	set cmd_found 1
	continue
}
if {[string equal -nocase $disable "disable"] && [string equal -nocase $c $chan] && [string equal -nocase $gettype $cmd]} {

switch $access {

MANAGER {
if {$disable_level == "OWNER"} {
	set cmd_found 1
}
if {$disable_level == "BOSS"} {
	set cmd_found 1
}
if {$disable_level == "MANAGER"} {
	set cmd_found 1
	}
if {$disable_level == "MASTER"} {
	set cmd_found 1
	}	
}

OWNER {
if {$disable_level == "BOSS"} {
	set cmd_found 1
}
if {$disable_level == "OWNER"} {
	set cmd_found 1
	}
}

MASTER {
if {$disable_level == "BOSS"} {
	set cmd_found 1
}
if {$disable_level == "OWNER"} {
	set cmd_found 1
}
if {$disable_level == "MASTER"} {
	set cmd_found 1
	}	
}

BOSS {
if {$disable_level == "BOSS"} {
	set cmd_found 1
				}
			}
default {
	set cmd_found 1
			}
		}	
	}
}
	close $file
	return $cmd_found
}
	set file [open $black(add_file) r]
while {[gets $file line] != -1} {
	set disable [lindex [split $line] 0]
	set c [lindex [split $line] 1]
	set gettype [lindex [split $line] 2]
	set disable_level [lindex [split $line] 3]
if {[string equal -nocase $disable "disable"] && [string equal -nocase $c "global"] && [string equal -nocase $gettype $cmd]} {
	set cmd_found 1
	continue
}
if {[string equal -nocase $disable "disable"] && [string equal -nocase $c $chan] && [string equal -nocase $gettype $cmd]} {
switch $access {

MANAGER {
if {$disable_level == "OWNER"} {
	set cmd_found 1
	}
if {$disable_level == "BOSS"} {
	set cmd_found 1
	}
if {$disable_level == "MANAGER"} {
	set cmd_found 1
	}
if {$disable_level == "MASTER"} {
	set cmd_found 1
	}
}

OWNER {
if {$disable_level == "BOSS"} {
	set cmd_found 1
	}
if {$disable_level == "OWNER"} {
	set cmd_found 1
	}
}
MASTER {
if {$disable_level == "BOSS"} {
	set cmd_found 1
	}
if {$disable_level == "OWNER"} {
	set cmd_found 1
	}
if {$disable_level == "MASTER"} {
	set cmd_found 1
	}
}

BOSS {
if {$disable_level == "BOSS"} {
	set cmd_found 1
				}
			}
default {
	set cmd_found 1
			}
		}
	}
}
if {$cmd_found == "0"} {
	set user_cmd_status [getuser $hand XTRA $cmd\($chan\)]
if {$user_cmd_status == "OFF"} {
	set cmd_found 1
	}
}
	close $file
	return $cmd_found
}

proc btcmd:set:user {nick host hand chan chan1 user cmd type} {
	global black
if {[lsearch -exact $black(validcmds) $cmd] < 0} {
	return 2
}
	set show_user $user
if {![validuser $user]} {
if {[onchan $user $chan]} {
	set handle [nick2hand $user]
if {![validuser $handle]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomem none
	return
			}
		}
	blacktools:tell $nick $host $hand $chan $chan1 gl.nomem none
	return
}

	set status [getuser $user XTRA $cmd\($chan\)]
switch $type {
1 {
if {$status == "OFF"} {
	blacktools:tell $nick $host $hand $chan $chan1 disable.5 "$cmd $show_user"
	return
}
	setuser $user XTRA $cmd\($chan\) OFF
	blacktools:tell $nick $host $hand $chan $chan1 disable.4 "$cmd $show_user"
}

0 {
if {$status == "OFF"} {
	setuser $user XTRA $cmd\($chan\)
	blacktools:tell $nick $host $hand $chan $chan1 enable.4 "$cmd $show_user"
	return
			}
	blacktools:tell $nick $host $hand $chan $chan1 enable.5 "$cmd $show_user"
		}
	}
}
proc btcmd:getlevel {chan cmd} {
	global black
	set file [open $black(add_file) r]
	set found_level ""
while {[gets $file line] != -1} {
	set disable [lindex [split $line] 0]
	set c [lindex [split $line] 1]
	set gettype [lindex [split $line] 2]
if {[string equal -nocase $disable "disable"] && [string equal -nocase $c $chan] && [string equal -nocase $gettype $cmd]} {
	set comp [lindex [split $line] 3]
	set found_level $comp
		}
	}
	close $file
	return $found_level
}

proc btcmd:set {chan hand cmd type} {
	global black
if {[lsearch -exact $black(validcmds) $cmd] < 0} {
	return 2
}
if {[string equal -nocase "enable" $cmd]} {
	return 3
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
	set timestamp [clock format [clock seconds] -format {%Y%m%d%H%M%S}]
	set temp "$black(tempdir)/add_file_temp.$timestamp"
	set file [open $black(add_file) r]
	set tempwrite [open $temp w]
	set cmd_found 0
	set disable_type 0
while {[gets $file line] != -1} {
	set disable [lindex [split $line] 0]
	set c [lindex [split $line] 1]
	set gettype [lindex [split $line] 2]
	set comp [lindex [split $line] 3]
if {[string equal -nocase $disable "disable"] && [string equal -nocase $c $chan] && [string equal -nocase $gettype $cmd]} {
	set cmd_found 1
	continue
} else {
	puts $tempwrite $line
		}	 
    }
	close $tempwrite
	close $file
    file rename -force $temp $black(add_file)

if {$type == "1"} {
	set file [open $black(add_file) a]
	puts $file "DISABLE $chan [string toupper $cmd] $access"
	close $file
	}
	return $cmd_found
}

proc setting:set {chan setting msg} {
	global black
	set getsetting [string map {
	"+" ""
	"-" ""} $setting]
	set timestamp [clock format [clock seconds] -format {%Y%m%d%H%M%S}]
	set temp "$black(tempdir)/extra_temp.$timestamp"
	set file [open $black(extra_file) r]
	set tempwrite [open $temp w]
while {[gets $file line] != -1} {
	set c [lindex [split $line] 0]
	set gettype [lindex [split $line] 1]
	set comp [lindex [split $line] 2]
	set comp [string map {
	"+" ""
	"-" ""} $comp]
if {[string equal -nocase $c $chan] && [string equal -nocase $gettype "XTRA"] && [string equal -nocase $comp $getsetting]} {
	continue
} else {
	puts $tempwrite $line
		}	 
    }
	close $tempwrite
	close $file
    file rename -force $temp $black(extra_file)
if {[regexp {^[-]} $setting]} {
	return
}
	set file [open $black(extra_file) a]
if {[regexp {^[+]} $setting]} {
	puts $file "$chan XTRA [string toupper $setting]"
} else {
	puts $file "$chan XTRA [string toupper $setting] $msg"
}
	close $file
}

proc setting:exists {setting} {
	global black
	set found_it 0
if {[regexp {^[+-]} $setting]} {
	set setting [string map {
	"+" ""
	"-" ""} $setting]
}
if {[lsearch -exact [string tolower $black(extra_flag)] [string tolower $setting]] > -1} {
	set found_it 1
} elseif {[lsearch -exact [string tolower $black(extra_str)] [string tolower $setting]] > -1} {
	set found_it 2
}
	return $found_it
}

proc setting:status {chan setting msg} {
	global black
	set status 0
if {[regexp {^[+-]} $setting]} {
	set file [open $black(extra_file) r]
while {[gets $file line] != -1} {
	set c [lindex [split $line] 0]
	set gettype [lindex [split $line] 1]
	set comp [lindex [split $line] 2]
	set comp_map [string map {
	"+" ""
	"-" ""} $comp]
	set setting [string map {
	"+" ""
	"-" ""} $setting]
if {[string equal -nocase $c $chan] && [string equal -nocase $gettype "XTRA"] && [string equal -nocase $comp_map $setting]} {
if {[regexp {^[+]} $comp]} {
	set status 1
				}
			}
		}
	close $file
	return $status
}
	set file [open $black(extra_file) r]
while {[gets $file line] != -1} {
	set c [lindex [split $line] 0]
	set gettype [lindex [split $line] 1]
	set comp [lindex [split $line] 2]
	set getmsg [lrange [split $line] 3 end]
if {![regexp {^[+-]} $comp]} {
if {[string equal -nocase $c $chan] && [string equal -nocase $gettype "XTRA"] && [string equal -nocase $comp $setting] && [string equal -nocase $msg $getmsg]} {
	set status 1
		}
	}
}
	close $file
	return $status
}

proc setting:get {chan setting} {
	global black
	set flag_setting 0
	set found_it 0
	set return ""
	set file [open $black(extra_file) r]
	set setting_exists [setting:exists $setting]
	set setting [string map {
	"+" ""
	"-" ""} $setting]
if {$setting_exists == "1"} {
	set flag_setting 1
}
while {[gets $file line] != -1} {
	set c [lindex [split $line] 0]
	set gettype [lindex [split $line] 1]
	set comp [lindex [split $line] 2]
	set getsetting [string map {
	"+" ""
	"-" ""} $comp]
if {[string equal -nocase $c $chan] && [string equal -nocase $gettype "XTRA"] && [string equal -nocase $getsetting $setting]} {
	set found_it 1
	set getmsg [lrange [split $line] 3 end]
if {$flag_setting == "0"} {	
	set return $getmsg
} else {
if {[regexp {^[+]} $comp]} {
	set return 1		
					}
if {[regexp {^[-]} $comp]} {
	set return 0		
				}			
			}
		}
	}
if {($found_it == "0") && ($flag_setting == "1")} {
	set return 0
}
	close $file
	return $return
}

proc get:flags {chan} {
	global black
	set all ""
	set file [open $black(extra_file) r]
while {[gets $file line] != -1} {
	set c [lindex [split $line] 0]
	set gettype [lindex [split $line] 1]
	set comp [lindex [split $line] 2]
if {[string equal -nocase $chan $c]} {
if {[regexp {^[+]} $comp]} {
	lappend all $comp
			}	 
		}
	}
	close $file
	return $all
}

proc get:str {chan} {
	global black
	set all ""
	set file [open $black(extra_file) r]
while {[gets $file line] != -1} {
	set c [lindex [split $line] 0]
	set gettype [lindex [split $line] 1]
	set comp [lindex [split $line] 2]
	set why [lrange [split $line] 3 end]
if {[string equal -nocase $chan $c]} {
if {[regexp {^[+-]} $comp]} {
	continue
			} else {
	lappend all $comp:$why
			}			
		}
	}
	close $file
	return $all
}

proc blacktools:flag:exists {chan setting} {
	global black
	set flag_exists 0
	set file [open $black(extra_file) r]
while {[gets $file line] != -1} {
	set c [lindex [split $line] 0]
	set comp [lindex [split $line] 2]
if {[regexp {^[+-]} $comp]} {
	set comp [string map {"+" ""
						   "-" ""} $comp]
}	
if {[regexp {^[+-]} $setting]} {
	set setting [string map {"+" ""
						   "-" ""} $setting]
}
if {[string equal -nocase $c $chan]} {
if {[string equal -nocase $setting $comp]} {
	set flag_exists 1
			}
		}
	}
	close $file
	return $flag_exists
}

proc blacktools:ban:exists {mask chan} {
	global black
	set ban_exists 0
foreach b [blacktools:banlist $chan] {
	set read_host [lindex [split $b] 3]
	set real_read_host [string map [list \[ {\[} \] {\]} \? {\?} \\ {\\}] $read_host]
if {[string equal -nocase $real_read_host $mask]} {
	set ban_exists 1
	continue
		}
	}
	return $ban_exists
}

proc blacktools:protect {nick chan} {
	global black
	
if {[isop $nick $chan]} {
	set oprotect [string tolower [setting:get $chan oprotect]]
if {$oprotect == "1"} {
	return 1
	}
}
if {[isvoice $nick $chan]} {
	set vprotect [string tolower [setting:get $chan vprotect]]
if {$vprotect == "1"} {
	return 1
	}
}
if {[ishalfop $nick $chan]} {
	set hoprotect [string tolower [setting:get $chan hoprotect]]
if {$hoprotect == "1"} {
	return 1
		}
	}
	return 0
}

######################### bad quitpart colors ################

set black(badcolors) {
"*\x03*"
"*\037*"
"*\002*"
}

###################### protect color filter ##################

proc color:filter {str} {
  regsub -all -- {\003([0-9]{1,2}(,[0-9]{1,2})?)?|\017|\037|\002|\026|\006|\007} $str "" str
  return $str
}

###################### add extra (badwords, excepts) ##########

proc addextra:find:num {chan type num} {
	global black
	set ret 0
	set file [open $black(add_file) r]
while {[gets $file line] != -1} {
	set read_chan [lindex [split $line] 0]
	set read_type [lindex [split $line] 1]
	set read_num [lindex [split $line] 2]
	set enc_chan [encoding convertfrom utf-8 $read_chan]
if {[string equal -nocase $enc_chan $chan] && [string equal -nocase $read_type $type]} {
if {$read_num == "$num"} {
	set ret $read_num
			}
		}
	}
	close $file
	return $ret
}

proc blacktools:ban:find_id {id} {
	global black
	set ret 0
foreach b [blacktools:banlist:all] {	
	set read_num [lindex [split $b] 1]	
if {$read_num == "$id"} {
	set ret $read_num
	}
}
	return $ret
}

proc check:file:word {chan text type} {
	global black
	set found_word ""
	set file [open $black(add_file) "r"]
while {[gets $file line] != -1} {
	set c [lindex [split $line] 0]
	set t [lindex [split $line] 1]
	set w [lrange [split $line] 3 end]
if {[string match -nocase $c $chan] && [string match -nocase $w $text] && [string match -nocase $t $type]} { 
	set found_word $w	
		}
	}
	close $file
	return $found_word
}

proc get:banmethod {cmd chan} {
	global black
if {![validchan $chan]} { return }
	set get [setting:get $chan $cmd-banmethod]
if {$get != ""} { 	
	return $get
		} else {
	set get [setting:get $chan banmethod]
if {$get != ""} { 
	return $get
} else {
		return $black($cmd:banmethod)
		}
	}
}

proc get:banmask {cmd chan} {
	global black
if {$cmd == "b:gl"} {
	return $black($cmd:banmask)
}
if {![validchan $chan]} { return }
	set get [setting:get $chan $cmd-banmask]
if {$get != ""} { 	
	return $get
		} else {
	set get [setting:get $chan banmask]
if {$get != ""} { 
	return $get
} else {
		return $black($cmd:banmask)
		}
	}
}

proc get:mask {cmd chan} {
	global black
if {$cmd == "hello"} {
	return $black($cmd:mask)
}
if {![validchan $chan]} { return }
	set get [setting:get $chan $cmd-mask]
if {$get != ""} { 	
	return $get
		} else {
	set get [setting:get $chan mask]
if {$get != ""} { 
	return $get
} else {
		return $black($cmd:mask)
		}
	}
}

proc find:num {num chan type} {
	global black
	set ret 0
	set file [open $black(add_file) r]
while {[gets $file line] != -1} {
	set read_chan [lindex [split $line] 0]
	set read_type [lindex [split $line] 1]
	set read_num [lindex [split $line] 2]
	set enc_chan [encoding convertfrom utf-8 $read_chan]
if {[string equal -nocase $enc_chan $chan] && [string equal -nocase $read_type $type]} {
if {$read_num == "$num"} {
	set ret $read_num
			}	
		}
	}
	close $file
	return $ret
}

proc find:q:num {num chan} {
	global black
	set ret 0
	set file [open $black(quote_file) r]
while {[gets $file line] != -1} {
	set read_chan [lindex [split $line] 0]
	set read_num [lindex [split $line] 2]
	set enc_chan [encoding convertfrom utf-8 $read_chan]
if {[string equal -nocase $enc_chan $chan]} {
if {$read_num == "$num"} {
	set ret $read_num
			}	
		}
	}
	close $file
	return $ret
}

proc find:note:num {num} {
	global black
	set ret 0
	set file [open $black(notes_file) r]
while {[gets $file line] != -1} {
	set read_num [lindex [split $line] 2]
if {$read_num == "$num"} {
	set ret $read_num
		}	
	}
	close $file
	return $ret	
}

####################### troll announce #######################

proc troll:add {banned mask chan} {
	global black
	set found_it 0
if {![info exists black(troll:$chan)]} {	
	set black(troll:$chan) ""
}
foreach troll $black(troll:$chan) {
	set troll_split [split $troll ":"]
	set nick [lindex $troll_split 0]
	set host [lindex $troll_split 1]
if {[string equal -nocase $banned $nick]} {
	set found_it 1
	continue
	}
}
if {$found_it == "1"} { return }
if {[lsearch -exact [string tolower $black(troll:$chan)]  [string tolower $banned:$mask]] > -1} {
	return
}
	lappend black(troll:$chan) $banned:$mask
}

proc troll:del {mask chan} {
	global black
if {![info exists black(troll:$chan)]} {	
	return
}
if {$black(troll:$chan) == ""} {	
	return
}
foreach troll $black(troll:$chan) {
	set troll_split [split $troll ":"]
	set nick [lindex $troll_split 0]
	set host [lindex $troll_split 1]
if {[string equal -nocase $host $mask]} {
if {[lsearch -exact [string tolower $black(troll:$chan)]  [string tolower $nick:$host]] > -1} {
	set position [lsearch -exact [string tolower $black(troll:$chan)] [string tolower $nick:$host]]
	set black(troll:$chan) [lreplace $black(troll:$chan) $position $position]
			}	
		}
	}
}

proc troll:show {nick host hand chan} {
	global black
if {![setting:get $chan showtroll]} {
	return
}
if {[info exists black(turnOnFlood:$chan)]} {
	return
}
if {![info exists black(troll:$chan)]} {	
	return
}
if {$black(troll:$chan) == ""} {
	return
}
if {[matchattr $hand $black(exceptflags) $chan]} {
	set lang [setting:get $chan lang]
if {$lang == ""} { set lang [string tolower $black(default_lang)] }
	set trolls ""
foreach troll $black(troll:$chan) {
	set troll_split [split $troll ":"]
	set tr [lindex $troll_split 0]
	lappend trolls $tr
}
	set replace(%msg%) $trolls
	set replace(%chan%) $chan
	putserv "NOTICE $nick :[join [string map [array get replace] $black(say.$lang.troll.6)]]"
	}
}

######################## BoT set code ###################

proc bot:setcode {} {
	global black
	set schars "` ! \" % ' & \[ \] ! / ; \ * ^ % $ \#"
	set alphabet "a b c d e f g h i j k l m n o p q r s t u v w x y z"
	set numbers "0 1 2 3 4 5 6 7 8 9"
	set code ""
for {set i 0} { $i < 1 } { incr i} {
	lappend code "[lindex [split $schars] [rand 7]] "
}
for {set i 0} { $i < 2 } { incr i} {
	lappend code [lindex $alphabet [rand 26]]
}
for {set j 0} { $j < 3 } { incr j} {
	lappend code [lindex $numbers [rand 10]]
}
for {set i 0} { $i < 1 } { incr i} {
	lappend code " [lindex [split $schars] [rand 7]]"
}
	return [join $code ""]
}

################ Bans - KICKS Day Reset ##################

proc bans:day:reset {minute hour day month year} {
	global black

foreach user [userlist] {
	foreach chan [channels] {
	set counts [getuser $user XTRA BANS_TODAY($chan)]
	set counts_k [getuser $user XTRA KICKS_TODAY($chan)]
if {$counts == "" || $counts == "0"} { 
	continue
 } else {
	setuser $user XTRA BANS_TODAY($chan) 0
	}
if {$counts_k == "" || $counts_k == "0"} {
	continue
			} else {
	setuser $user XTRA KICKS_TODAY($chan) 0
			}			
		}			
	}
}

##################### voiceme logged #####################

proc voiceme:logged {from keyword arguments} {
	global black
	set nick $::vnick
	set chan $::vchan
	set hand $::vhand
	set host $::vhost
	set chan1 $chan
if {[string match -nocase "*is logged*" $arguments] || [string match -nocase "*is authed*" $arguments]} {
if {[setting:get $chan xonly] && [onchan $black(chanserv) $chan]} {	
	putserv "PRIVMSG $black(chanserv) :voice $chan $nick"
	blacktools:tell $nick "prv" $hand $chan $chan1 voiceme.3 none
		} else {
	putserv "MODE $chan +v $nick"
	blacktools:tell $nick "prv" $hand $chan $chan1 voiceme.3 none
		}
	}
	unbind RAW - 330 voiceme:logged
}

proc voiceme:identified {from keyword arguments} {
	global black
	set nick $::vnick
	set chan $::vchan
	set hand $::vhand
	set chan1 $chan
if {[string match -nocase "*has identified*" $arguments]} {
	putserv "MODE $chan +v $nick"
	blacktools:tell $nick "prv" $hand $chan $chan1 voiceme.3 none
	}
	unbind RAW - 307 voiceme:identified
}

################################# reban ######################

proc rebanpublic {nick host hand chan} {
global black
if {[setting:get $chan xtools]} {
	chanserv:ignore_remove
	set host "$nick![getchanhost $nick $chan]"
	set getxtime [setting:get $chan xbantime]
	set getxlevel [setting:get $chan xbanlevel]
if {$getxlevel == ""} { set getxlevel $black(chanserv:banlevel) } 
if {$getxtime == ""} { set getxtime $black(chanserv:bantime) }
foreach ban [banlist $chan] {
	set reason [lindex $ban 1]
if {[string match -nocase [string tolower [lindex $ban 0]] $host]} {
	putquick "PRIVMSG $black(chanserv) :ban $chan [lindex $ban 0] $getxtime $getxlevel $reason"
			}
		}
	}
}

######################### XTOOLS ##########################

proc toolspublic {chan type} {
global botnick black
if {![setting:get $chan xtools]} {
	return
}
if {[info exists black(notlogged)]} {
	return
}
	chanserv:ignore_remove
if {$type == "op"} {
if  {![onchan "$black(chanserv)" $chan] && ![botisop $chan]} {
	return
}
	putquick "PRIVMSG $black(chanserv) :unban $chan $botnick"
	putquick "PRIVMSG $black(chanserv) :op $chan $botnick"
	return
}
if {$type == "unban"} {
	putquick "PRIVMSG $black(chanserv) :unban $chan $botnick"
	return
}
if {$type == "invite" || $type == "limit"} {
	putquick "PRIVMSG $black(chanserv) :invite $chan $botnick"
	return
	}
if {$type == "key"} {
	putquick "PRIVMSG $black(chanserv) :invite $chan $botnick"
	return
	}
}

######################### ABUSE #########################

proc abuse:ban:note {from keyword arguments} {
	global black botnick
	set chan [lindex [split $arguments] 1]
if {[setting:get $chan invisible]} {
	return
}
	abuse:suspend $chan
if {[info exists black(abuse:$chan)]} {
	return
	}
	set replace(%chan%) $chan
	set time [unixtime]
foreach user [userlist nm] {
	set getlang [string tolower [getuser $user XTRA OUTPUT_LANG]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
	set black(notes:announce:$user) 1
	set file [open $black(notes_file) a]
	puts $file "INBOX $chan [get:abuse:num] 0 $user $time $botnick [string map [array get replace]  $black(say.$getlang.abuse.2)]"
	close $file
}
	set black(abuse:$chan) 1
	blacktools:tell:dcc abuse.1 "$chan"
}

proc abuse:key:note {from keyword arguments} {
	global black botnick
	set chan [lindex [split $arguments] 1]
if {[setting:get $chan invisible]} {
	return
}
	abuse:suspend $chan
if {[info exists black(abuse:$chan)]} {
	return
	}
	set replace(%chan%) $chan
	set time [unixtime]
foreach user [userlist nm] {
	set getlang [string tolower [getuser $user XTRA OUTPUT_LANG]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
	set black(notes:announce:$user) 1
	set file [open $black(notes_file) a]
	puts $file "INBOX $chan [get:abuse:num] 0 $user $time $botnick [string map [array get replace]  $black(say.$getlang.abuse.6)]"
	close $file
}
	set black(abuse:$chan) 3
	blacktools:tell:dcc abuse.5 "$chan"
}

proc abuse:inviteonly:note {from keyword arguments} {
	global black botnick
	set chan [lindex [split $arguments] 1]
if {[setting:get $chan invisible]} {
	return
}
	abuse:suspend $chan
if {[info exists black(abuse:$chan)]} {
	return
	}
	set replace(%chan%) $chan
	set time [unixtime]
foreach user [userlist nm] {
	set getlang [string tolower [getuser $user XTRA OUTPUT_LANG]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
	set black(notes:announce:$user) 1
	set file [open $black(notes_file) a]
	puts $file "INBOX $chan [get:abuse:num] 0 $user $time $botnick [string map [array get replace]  $black(say.$getlang.abuse.4)]"
	close $file
}
	set black(abuse:$chan) 2
	blacktools:tell:dcc abuse.3 "$chan"
}

proc abuse:restricted:note {from keyword arguments} {
	global black botnick
	set chan [lindex [split $arguments] 1]
if {[setting:get $chan invisible]} {
	return
}
	abuse:suspend $chan
if {[info exists black(abuse:$chan)]} {
	return
	}
	set replace(%chan%) $chan
	set time [unixtime]
foreach user [userlist nm] {
set getlang [string tolower [getuser $user XTRA OUTPUT_LANG]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
	set black(notes:announce:$user) 1
	set file [open $black(notes_file) a]
	puts $file "INBOX $chan [get:abuse:num] 0 $user $time $botnick [string map [array get replace]  $black(say.$getlang.abuse.11)]"
	close $file
}
	set black(abuse:$chan) 5
	blacktools:tell:dcc abuse.12 "$chan"
}

proc abuse:channelfull:note {from keyword arguments} {
	global black botnick
	set chan [lindex [split $arguments] 1]
if {[setting:get $chan invisible]} {
	return
}
	abuse:suspend $chan
if {[info exists black(abuse:$chan)]} {
	return
}
	set replace(%chan%) $chan
	set time [unixtime]
foreach user [userlist nm] {
	set getlang [string tolower [getuser $user XTRA OUTPUT_LANG]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
	set black(notes:announce:$user) 1
	set file [open $black(notes_file) a]
	puts $file "INBOX $chan [get:abuse:num] 0 $user $time $botnick [string map [array get replace]  $black(say.$getlang.abuse.8)]"
	close $file
}
	set black(abuse:$chan) 4
	blacktools:tell:dcc abuse.7 "$chan"
}

proc delchan:note {hand chan reason} {
	global black botnick
	set replace(%chan%) $chan
	set replace(%reason%) $reason
	set replace(%hand%) $hand
	set time [unixtime]
foreach user [userlist n] {
if {$user != $hand} {
	set getlang [string tolower [getuser $user XTRA OUTPUT_LANG]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
	set black(notes:announce:$user) 1
	set file [open $black(notes_file) a]
	puts $file "INBOX $chan [get:abuse:num] 0 $user $time $botnick [string map [array get replace]  $black(say.$getlang.delchan.1)]"
	close $file
		}
	}
}

proc suspendchan:note {hand chan reason} {
	global black botnick
	set replace(%chan%) $chan
	set replace(%reason%) $reason
	set replace(%hand%) $hand
	set time [unixtime]
foreach user [userlist n] {
if {$user != $hand} {
	set getlang [string tolower [getuser $user XTRA OUTPUT_LANG]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
	set black(notes:announce:$user) 1
	set file [open $black(notes_file) a]
	puts $file "INBOX $chan [get:abuse:num] 0 $user $time $botnick [string map [array get replace]  $black(say.$getlang.suspend.2)]"
	close $file
		}
	}
}

proc get:abuse:num {} {
	global black
	set temp_num 0
	set num 0
while {$temp_num == 0} {
	set get [find:note:num $num]
if {$get == "$num"} {
	set num [expr $num + 1]
	} else { set temp_num 1 }
}	
	return $num
}

proc abuse:suspend {chan} {
	global black botnick
if {![info exists black(abuse:count:$chan)]} {
	set black(abuse:count:$chan) 0
	}
	incr black(abuse:count:$chan)
if {$black(abuse:count:$chan) >= 30} {
	channel set $chan +inactive
	unset black(abuse:count:$chan)
	blacktools:tell:dcc abuse.9 "$chan"
	set replace(%msg.1%) $chan
	set time [unixtime]
foreach user [userlist nm] {
	set getlang [string tolower [getuser $user XTRA OUTPUT_LANG]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
	set file [open $black(notes_file) a]
	puts $file "INBOX $chan [get:abuse:num] 0 $user $time $botnick [string map [array get replace]  $black(say.$getlang.abuse.10)]"
	close $file
		}
	}
}

################### CTCP VERSION REPLY ######################

proc ctcpvers {nickname hostname handle dest key arg} {
global black
	set text [split $arg]
	set chan $::verschan
	set chan1 $chan
	set nick $::versnick
	blacktools:tell $nick "" [nick2hand $nick] $chan $chan1 vers.3 "$nickname $text"
}

######################## AutoVoice ########################

proc autovonjoin {nick host hand chan} {
if {[setting:get $chan autovoice]} {
pushmode $chan +v $nick
	}
}

######################## AutoOp ########################

proc autoponjoin {nick host hand chan} {
if {[setting:get $chan autoop]} {
pushmode $chan +o $nick
	}
}

######################## h flood #######################

proc unset:floodcmd {host chan} {
global count
if {[info exists count(floodcmd:$host:$chan)]} {
	unset count(floodcmd:$host:$chan)
	}
}

######################## get level #####################

proc blacktools:getlevelname {num hand} {
	global black
	set split_hand [split $hand ":"]
	set handle [lindex $split_hand 0]
if {[validuser $handle]} {
	set getlang [string tolower [getuser $handle XTRA OUTPUT_LANG]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
} else { set getlang "[string tolower $black(default_lang)]" }
switch $num {
	1 {
	return $black(say.$getlang.level.1)
	}
	
	2 {
	return $black(say.$getlang.level.2)
	}
	
	3 {
	return $black(say.$getlang.level.3)
	}
	
	4 {
	return $black(say.$getlang.level.4)
	}
	
	5 {
	return $black(say.$getlang.level.5)
	}
	
	6 {
	return $black(say.$getlang.level.6)
	}
	7 {
	return $black(say.$getlang.level.7)
		}
	8 {
	return $black(say.$getlang.level.8)
		}
	}		
}

############################ hello #########################

proc blacktools:hello {nick host hand} {
	global black botnick
if {[validuser $nick]} { return }
	set mask [return_mask [return_host_num "hello" none] $host $nick]
	set time [unixtime]
	set getlang "[string tolower $black(default_lang)]"
	adduser $nick $mask
	adduser $nick "-telnet!*@*"
	chattr $nick "n|-"
	setuser $nick XTRA CHANMODIF(GLOBAL) $time:$botnick
	save
	blacktools:tell $nick "prv" $hand "" "" hello.1 $black(say.$getlang.level.1)
	blacktools:tell $nick "prv" $hand "" "" hello.2 "$nick $black(name) $black(vers)"
	blacktools:tell $nick "prv" $hand "" "" hello.3 "$mask"
	blacktools:tell $nick "prv" $hand "" "" hello.4 none
}

######################## chanserv ignore ###################

proc chanserv:ignore_remove {} {
	global black
if {[info exists black(chanserv:ignore_host)]} {
if {[isignore $black(chanserv:ignore_host)]} {
	killignore $black(chanserv:ignore_host)
		}
	}
}


####################### getlastaction #######################

proc blacktools:getlastaction:join {nick host hand chan} {
	global black
if {[isbotnick $nick]} {
	return
}
	set found_timer 0
	set gettime [unixtime]
if {[setting:get $chan anunt]} {
	set black(lastaction:$chan) $gettime
	} else {
foreach tmr [timers] {
if {[string match -nocase "*broadcastpublic:show*" [join [lindex $tmr 1]]]} {
	set found_timer 1
	}	
}
if {$found_timer == "1"} {
	set black(lastaction:$chan) $gettime
		}
	}
}

proc blacktools:getlastaction:part {nick host hand chan arg} {
	global black
	blacktools:getlastaction:join $nick $host $hand $chan	
}

proc blacktools:getlastaction:sign {nick host hand chan arg} {
	global black
	blacktools:getlastaction:join $nick $host $hand $chan	
}

proc blacktools:getlastaction:kick {nick host hand chan kicked reason} {
	global black
	blacktools:getlastaction:join $nick $host $hand $chan	
}

proc blacktools:getlastaction:text {nick host hand chan arg} {
	global black
	blacktools:getlastaction:join $nick $host $hand $chan
}

proc blacktools:getlastaction:me {nick host hand chan keyword arg} {
	global black
	blacktools:getlastaction:join $nick $host $hand $chan
}

proc blacktools:getlastaction:split {nick host hand chan args} {
	global black
	blacktools:getlastaction:join $nick $host $hand $chan
}

proc blacktools:getlastaction:ban {nick host hand chan args} {
	global black
	blacktools:getlastaction:join $nick $host $hand $chan
}


########################### protection list #####################

proc prot:module:process {nick host hand chan chan1 why except type number type1} {
	global black botnick
	set cmd_status [btcmd:status $chan $hand $type1 0]
if {$cmd_status == "1"} {
	return 
}
	set num 0
	set temp_num 0
	set show_except $except
	set line1 [string toupper $type1]
if {[string equal -nocase $type1 "antipub"]} {
	set line1 "ANTIPUB-EXCEPT"
}
if {[string equal -nocase $type1 "badquitpart"]} {
	set line1 "BADQUITPART-EXCEPT"
}
if {[string equal -nocase $type1 "securemode"]} {
	set line1 "SECUREMODE-EXCEPT"
}
if {[string equal -nocase $type1 "clonescan"]} {
	set line1 "CLONESCAN-EXCEPT"
}

if {$why == ""} {
switch $type {
	0 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr $type1
	}
	1 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_nick $type1
	}
	2 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_priv $type1
		}
	}
	return
}

if {![validchan $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.novalidchan none
	return
}
switch -exact -- [string tolower $why] {

add {
if {$except == ""} {
if {$type == "0"} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr "$type1"
}
if {$type == "1"} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_nick "$type1"
}
if {$type == "2"} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_priv "$type1"	
}
	return
}
		while {$temp_num == 0} {
	set get [addextra:find:num $chan $line1 $num]
if {$get == "$num"} {
	set num [expr $num + 1]
	} else { set temp_num 1 }
}
	set findword [prot:findword $chan $line1 $except]
if {$findword == "1"} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.wordexists $show_except
	return
}
	set enc_chan [encoding convertto utf-8 $chan]
	set file [open $black(add_file) a]
	puts $file "$enc_chan $line1 $num $except"
	blacktools:tell $nick $host $hand $chan $chan1 $type1.6 "$num $show_except" 
	close $file
}

list {
	array set protlist [list]
	set timestamp [clock format [clock seconds] -format {%Y%m%d%H%M%S}]
	set temp "$black(tempdir)/prot_temp.$timestamp"
	set file [open $black(add_file) "r"]
	set w [read -nonewline $file]
	close $file
	set data [split $w "\n"]
foreach line $data {
	set read_chan [lindex [split $line] 0]
	set enc_chan [encoding convertfrom utf-8 $read_chan]
	set type [lindex [split $line] 1]
if {[string match -nocase $enc_chan $chan] && [string match -nocase $line1 $type]} {
	set msg_num [lindex [split $line] 2]
	set except [lrange [split $line] 3 end]
lappend protlist($msg_num) $except
	}
}
	set tempwrite [open $temp w]
foreach msg [lsort -integer -increasing [array names protlist]] {
	puts $tempwrite "$msg [join $protlist($msg)]"
	}
	close $tempwrite
	set file [open $temp "r"]
	set w [read -nonewline $file]
	close $file
	set data [split $w "\n"]
	file delete $temp
	module:getinfo $nick $host $hand $chan $chan1 $type $data "$type1" "0" $number
}

del {
if {![regexp {^[0-9]} $number]} {
if {$type == "0"} {	
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr "$type1"
}
if {$type == "1"} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_nick "$type1"	
}
if {$type == "2"} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_priv "$type1"	
}
	return
}
	set ret [addextra:find:num $chan $line1 $number]
if {$ret == 0} { 
	blacktools:tell $nick $host $hand $chan $chan1 $type1.4 $number
	return
}
	set file [open $black(add_file) "r"]
	set timestamp [clock format [clock seconds] -format {%Y%m%d%H%M%S}]
	set temp "$black(tempdir)/prot_temp.$timestamp"
	set tempwrite [open $temp w]
while {[gets $file line] != -1} {
	set read_num [lindex [split $line] 2]
	set read_type [lindex [split $line] 1]
	set read_chan [lindex [split $line] 0]
	set enc_chan [encoding convertfrom utf-8 $read_chan]
if {[string equal $number $read_num] && [string equal -nocase $enc_chan $chan] && [string equal -nocase $read_type $line1]} {
	continue
} else {
	puts $tempwrite $line
		}	 
    }
	close $tempwrite
	close $file
    file rename -force $temp $black(add_file)

	blacktools:tell $nick $host $hand $chan $chan1 $type1.5 $number
		}
default {
if {$type == "0"} {	
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr "$type1"
}
if {$type == "1"} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_nick "$type1"	
	}
}
	}		
}

proc prot:findword {chan type word} {
	global black
	set found_it 0
	set file [open $black(add_file) "r"]
	set w [read -nonewline $file]
	close $file
	set data [split $w "\n"]
foreach line $data {
	set read_chan [lindex [split $line] 0]
	set enc_chan [encoding convertfrom utf-8 $read_chan]
	set t [lindex [split $line] 1]
	set w [lrange [split $line] 3 end]
if {[string match -nocase $enc_chan $chan] && [string match -nocase $t $type] && [string match -nocase $word $w]} {
	set found_it 1
		}
	}
	return $found_it
}

################################# forward ################################

proc forward:redirect {nick host hand arg} {
	global black
	set message [join [lrange [split $arg] 0 end]]
if {![validuser $hand]} {
	foreach chan [channels] {
if {[setting:get $chan forward]} {
	blacktools:tell $nick "chan" $hand $chan $chan forward.1 "$nick $message"
			}
		}
	}
}

################################# expirebans ##############################

proc blacktools:expirebans {min hour day mon year} {
	global black
	set channels ""
foreach chan [channels] {
if {[channel get $chan ban-time] != "0"} {
	continue
}
if {[setting:get $chan expirebans] == "0"} {
	continue
}
	lappend channels $chan
	}
if {$channels != ""} {
	blacktools:expire:chan $channels 0
	}
}

proc blacktools:expire:chan {channels num} {
	global black
	set chan [lindex $channels $num]
	set gettime [setting:get $chan expirebans]
if {$gettime == ""} {
	set gettime $black(default:bantime)
		}
if {$gettime == "0"} { return }
	set gettime [time_return_minute $gettime]
	set seconds [expr $gettime * 60]
	set unixtime [unixtime]
	set banlist [chanbans $chan]
	set maxtime [expr $unixtime + $seconds]
foreach ban $banlist {
if {[blacktools:sticky [lindex $ban 0] $chan] == 1} {
	continue
}
if {[isbansticky [lindex $ban 0] $chan]} {
	continue
}
	set chanstime [expr $unixtime + [lindex $ban 2]]
if {$maxtime <= $chanstime} {
	pushmode $chan -b [lindex $ban 0]
		}
	}
	set nextc [expr $num + 1]
if {[lindex $channels $nextc] != ""} {
	blacktools:expire:chan $channels $nextc
	}
}


#################
###########################################################################
##   END                                                                 ##
###########################################################################