##########################################################
#
#			BLackToolS
#		      Protection TCL
#							
#				BLaCkShaDoW ProductionS
##########################################################

set black(antipub_file) "scripts/BlackTools/FILES/$username.antipub_except.txt"
set black(bad_saylist) "scripts/BlackTools/FILES/$username.bad_saylist.txt"

if {![file exists $black(antipub_file)]} {
	set file [open $black(antipub_file) w]
	close $file
}

if {![file exists $black(bad_saylist)]} {
	set file [open $black(bad_saylist) w]
	close $file
}

proc bad:add:word {chan host msg} {
	global black
	set counter 0
	set file [open $black(bad_saylist) r]
	set w [read -nonewline $file]
	close $file
	set data [split $w "\n"]
if {$w != ""} {
foreach line $data {
	set channel [lindex [split $line] 0]
	set hostmask [lindex [split $line] 1]
if {[string match -nocase $channel $chan] && [string equal -nocase $host $hostmask]} {
	set counter [expr $counter + 1]
		}
	}
for {set j 0} {$j < $counter} {incr j} {
	set file [open $black(bad_saylist) "r"]
	set database [read -nonewline $file]
	close $file
	set data [split $database "\n"]
	set i [lsearch -glob $data "$chan $host *"]
if {$i > -1} {
	set line [lindex $data $i]
	set delete [lreplace $data $i $i]
	set file [open $black(bad_saylist) "w"] 
	puts $file [join $delete "\n"]
	close $file	
	}
}
	set file [open $black(bad_saylist) "r"]
	set database [read -nonewline $file]
	close $file
if {$database == ""} {
	set file [open $black(bad_saylist) "w"]
	close $file
	}
}
	set file [open $black(bad_saylist) "a"]
	puts $file "$chan $host $msg"
	close $file
}


proc badword:autocheck {minute hour day month year} {
	global black
	set file [open $black(bad_saylist) r]
	set w [read -nonewline $file]
	close $file
	set data [split $w "\n"]
if {$w != ""} {
foreach line $data {
	set chan [lindex [split $line] 0]
	set hostmask [lindex [split $line] 1]
if {![validchan $chan]} {
	bad:del:word $chan $hostmask
} else {
if {![isban $hostmask $chan]} {
	bad:del:word $chan $hostmask		
				}
			}
		}
	}	
}

proc check:badword:unban {level chan message} { 
	global black
if {[string equal "*" $chan] && [string match -nocase "*No longer banning*" $message]} {
	set ban [lindex $message 3]
	set channel [lindex $message 5]	
	bad:del:word $channel $ban
	}
}

proc bad:del:word {chan host} {
	global black
	set counter 0
	set file [open $black(bad_saylist) r]
	set w [read -nonewline $file]
	close $file
	set data [split $w "\n"]
if {$w != ""} {
foreach line $data {
	set channel [lindex [split $line] 0]
	set hostmask [lindex [split $line] 1]
if {[string match -nocase $channel $chan] && [string equal -nocase $host $hostmask]} {
	set counter [expr $counter + 1]
		}
	}
for {set j 0} {$j < $counter} {incr j} {
	set file [open $black(bad_saylist) "r"]
	set database [read -nonewline $file]
	close $file
	set data [split $database "\n"]
	set i [lsearch -glob $data "$chan $host *"]
if {$i > -1} {
	set line [lindex $data $i]
	set delete [lreplace $data $i $i]
	set file [open $black(bad_saylist) "w"] 
	puts $file [join $delete "\n"]
	close $file	
	}
}
	set file [open $black(bad_saylist) "r"]
	set database [read -nonewline $file]
	close $file
if {$database == ""} {
	set file [open $black(bad_saylist) "w"]
	close $file
		}
	}
}


proc check:badword:entries {oldpath newpath} {
	global botnick
if {![file exists $newpath]} {
	set file [open $newpath w]
	close $file
}	
if {[file exists $oldpath]} {
	set file [open $oldpath r]
	set w [read -nonewline $file]
	close $file
if {$w != ""} {
	set data [split $w "\n"]
foreach entry $data {
	set file [open $newpath a]
	puts $file "$entry"
	close $file
}
	set file [open $oldpath w]
	close $file
		}
	}	
}
	set old_badword_dir "$username.bword.db"
	set new_badword_dir "scripts/BlackTools/FILES/$username.bword.txt"
	
	check:badword:entries $old_badword_dir $new_badword_dir

proc blacktools:banner:1 {banmask botnick chan reason mode timer bantime} {
global black
if {[channel get $chan xban]} {
set getcount [channel get $chan kickcount]
set getxtime [channel get $chan xbantime]
set getxlevel [channel get $chan xbanlevel]
if {$getxlevel == "0"} { set getxlevel "100"}
if {$getxtime == "0"} { set getxtime "1" }
set kcount [expr $getcount +1]
channel set $chan kickcount $kcount
if {[channel get $chan showcount]} {
set reason "$reason - $kcount -" 
} else {
set reason "$reason" 
}
putquick "MODE $chan +$mode" -next ;utimer $timer [list putquick "MODE $chan -$mode"]
putquick "PRIVMSG $black(chanserv) :ban $chan $banmask $getxtime $getxlevel $reason"
newchanban $chan $banmask $botnick $reason $bantime
if {![channel get $chan chanreport]} {
return 0
}
set backchan [channel get $chan backchan]
if {$backchan == ""} { 
return 0
}
if {!([validchan $backchan]) || !([onchan $botnick $backchan])} {
return 0
}
if {[info exists black($chan:anounce)]} {
return 0
}
set black($chan:anounce) 1
set getlang [string tolower [channel get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
set replace(%banmask%) $banmask
set replace(%bantime%) $bantime
set replace(%reason%) $reason
set replace(%chan%) $chan
puthelp "PRIVMSG $backchan :[string map [array get replace] $black(say.$getlang.reportchan)]"
} else {
set getcount [channel get $chan kickcount]
set kcount [expr $getcount +1]
channel set $chan kickcount $kcount
if {[channel get $chan showcount]} {
set reason "$reason - $kcount -" } else {
set reason "$reason" }
putquick "MODE $chan +$mode" -next ;utimer $timer [list putquick "MODE $chan -$mode"]
newchanban $chan $banmask $botnick $reason $bantime
if {![channel get $chan chanreport]} {
return 0
}
set backchan [channel get $chan backchan]
if {$backchan == ""} { 
return 0
}
if {!([validchan $backchan]) || !([onchan $botnick $backchan])} {
return 0
}
if {[info exists black($chan:anounce)]} {
return 0
}
set black($chan:anounce) 1
set getlang [string tolower [channel get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
set replace(%banmask%) $banmask
set replace(%bantime%) $bantime
set replace(%reason%) $reason
set replace(%chan%) $chan
puthelp "PRIVMSG $backchan :[string map [array get replace] $black(say.$getlang.reportchan)]"
}
utimer 5 [list unset black($chan:anounce)]
}

proc blacktools:banner:2 {banmask botnick chan reason bantime} {
global black
if {[channel get $chan xban]} {
set getcount [channel get $chan kickcount]
set getxtime [channel get $chan xbantime]
if {$getxtime == "0"} { set getxtime "1" }
set getxlevel [channel get $chan xbanlevel]
if {$getxlevel == "0"} { set getxlevel "100"}
set kcount [expr $getcount +1]
channel set $chan kickcount $kcount
if {[channel get $chan showcount]} {
set reason "$reason - $kcount -" 
} else {
set reason "$reason" 
}
putquick "PRIVMSG $black(chanserv) :ban $chan $banmask $getxtime $getxlevel $reason"
newchanban $chan $banmask $botnick $reason $bantime
if {![channel get $chan chanreport]} {
return 0
}
set backchan [channel get $chan backchan]
if {$backchan == ""} { 
return 0
}

if {!([validchan $backchan]) || !([onchan $botnick $backchan])} {
return 0
}

if {[info exists black($chan:anounce)]} {
return 0
}

set black($chan:anounce) 1
set getlang [string tolower [channel get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
set replace(%banmask%) $banmask
set replace(%bantime%) $bantime
set replace(%reason%) $reason
set replace(%chan%) $chan
puthelp "PRIVMSG $backchan :[string map [array get replace] $black(say.$getlang.reportchan)]"

} else {

set getcount [channel get $chan kickcount]
set kcount [expr $getcount +1]
channel set $chan kickcount $kcount
if {[channel get $chan showcount]} {
set reason "$reason - $kcount -" } else {
set reason "$reason" }
newchanban $chan $banmask $botnick $reason $bantime
if {![channel get $chan chanreport]} {
return 0
}
set backchan [channel get $chan backchan]
if {$backchan == ""} { 
return 0
}

if {!([validchan $backchan]) || !([onchan $botnick $backchan])} {
return 0
}
if {[info exists black($chan:anounce)]} {
return 0
}
set black($chan:anounce) 1
set getlang [string tolower [channel get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
set replace(%banmask%) $banmask
set replace(%bantime%) $bantime
set replace(%reason%) $reason
set replace(%chan%) $chan
puthelp "PRIVMSG $backchan :[string map [array get replace] $black(say.$getlang.reportchan)]"
}
utimer 5 [list unset black($chan:anounce)]
}

################################ antipub ###########################


proc antipub:filter {str} {
  regsub -all -- {\003([0-9]{1,2}(,[0-9]{1,2})?)?|\017|\037|\002|\026|\006|\007} $str "" str
  return $str
}

proc antipub:protect {nick host hand chan arg} {
global black botnick
	set text [antipub:filter [join [split $arg]]]
	set handle [nick2hand $nick]
	set find_pub 0
if {![validchan $chan]} { return }
if {[channel get $chan antipub]} {
if {[matchattr $handle $black(exceptflags) $chan]} { return }
if {![botisop $chan]} { return }
if {[antipub:protect:except $text $chan] == "1"} { 
	return 
}
	set getreason [channel get $chan antipub-reason]
if {$getreason == ""} { 
	set getlang [string tolower [channel get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
	set getreason $black(say.$getlang.antipub.1)
}
	set getbantime [channel get $chan antipub-bantime]
if {$getbantime == "0"} { set getbantime $black(antipubbantime) }
	set replace(%chan%) $chan
	set protectreason [string map [array get replace] $getreason]
	set reason "$protectreason"
	set banmask *!*@[lindex [split $host @] 1]
if {[channel get $chan vprotect] == ""}  { set vprotect ON } else { set vprotect [string toupper [channel get $chan vprotect]] }
if {[channel get $chan oprotect] == ""}  { set oprotect ON } else { set oprotect [string toupper [channel get $chan oprotect]] }
if {[isvoice $nick $chan] && [string equal -nocase $vprotect "ON"]} { return }
if {[isop $nick $chan] && [string equal -nocase $oprotect "ON"]} { return } 
foreach antipub [string tolower $black(antipubword)] {
if {[string match -nocase $antipub $arg]} {
	set find_pub 1
blacktools:banner:1 $banmask "ANTIPUB" $chan $reason $black(antipubmode) $black(antipubsecunde) $getbantime
			}
		}
if {$find_pub == "1"} {
	bad:add:word $chan $banmask $arg
		}
	}
}

proc antipub:protect:me {nick host hand chan keyword arg} {
global black
antipub:protect $nick $host $hand $chan $arg
}

proc antipub:protect:except {text chan} {
	global black
	set text [split $text]
	set counter_word 0
	set counter_except 0
	set found_pub 0


foreach antipub $black(antipubword) {
if {[string match -nocase $antipub $text]} {
	set found_pub 1
	}
}
if {$found_pub == 0} { return }
	
foreach except $black(antipubexcept) {
	set position [lsearch -exact [string tolower $text] [string tolower $except]]
if {$position > -1} {
	set text [lreplace $text $position $position]
	}	
}

	set file [open $black(antipub_file) "r"]
	set database [read -nonewline $file]
	close $file
	set data [split $database "\n"]

foreach line $data {
	set channel [lindex [split $line] 0]
	set link [lindex $line 1]
foreach word $text {
if {[string equal -nocase $channel $chan] && [string match -nocase $link $word]} {
	set position [lsearch -exact [string tolower $text] [string tolower $word]]
if {$position > -1} {
	set text [lreplace $text $position $position]
			}
		}
	}
}
	
foreach antipub $black(antipubword) {
if {[string match -nocase $antipub $text]} {
	return 0
		}
	}
	return 1
}

proc antipub:module {nick host hand chan arg} {
	global black
	set type 0
	set chan1 "$chan"
	set why [lindex [split $arg] 0]
	set except [lrange [split $arg] 1 end]
if {[regexp {^[&#]} $why] && [matchattr $hand nm|- $chan]} {
	set chan "$why"
	set why [lindex [split $arg] 1]
	set except [lrange [split $arg] 2 end]
}
	antipub:module:process $nick $host $hand $chan $chan1 $why $except $type
}

proc antipub:module:process {nick host hand chan chan1 why except type} {
	global black botnick
	set i 0
	set char(p) [lindex $black(cmdchar) 0]
if {[string match -nocase "none" "$char(p)"]} {
	set char(p) ""
} 
if {[matchattr $hand nm|- $chan]} {
if {($why == "") && ($type == "0")} {
	blacktools:tell $nick $host $hand $chan $chan1 antipub.2 none
	return
}
if {($why == "") && ($type == "1")} {
	blacktools:tell $nick $host $hand $chan $chan1 antipub.3 none
	return
	}
}
if {($why == "") && ($type == "0")} {
	blacktools:tell $nick $host $hand $chan $chan1 antipub.4 none
	return
}
if {($why == "") && ($type == "1")} {
	blacktools:tell $nick $host $hand $chan $chan1 antipub.5 none
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
	
switch -exact -- [string tolower $why] {

add {

if {$except == ""} {
	blacktools:tell $nick $host $hand $chan $chan1 antipub.9 none
	return
}
	set file [open $black(antipub_file) a]
	puts $file "$chan $except"
	blacktools:tell $nick $host $hand $chan $chan1 antipub.6 $except
	close $file
}

list {
	set counter 0
	set found_it 0
	set file [open $black(antipub_file) r]
	set database [read -nonewline $file]
	close $file
	set data [split $database "\n"]
	blacktools:tell $nick $host $hand $chan $chan1 antipub.7 none
foreach line $data {
	set channel [lindex [split $line] 0]
	set link [lindex [split $line] 1]

if {[string equal -nocase $channel $chan]} {
	set counter [expr $counter + 1]
	set found_it 1
	blacktools:tell $nick $host $hand $chan $chan1 antipub.8 "$counter.) $link"
		}	
	}
	if {$found_it == "0"} {	
	blacktools:tell $nick $host $hand $chan $chan1 antipub.10 none
	return
	}
}
del {
	set counter 0
if {$except == ""} {
blacktools:tell $nick $host $hand $chan $chan1 antipub.11 none
return
}
	set file [open $black(antipub_file) r]
	set database [read -nonewline $file]
	close $file
	set data [split $database "\n"]

foreach line $data {
		
	set channel [lindex [split $line] 0]
	set link [lindex [split $line] 1]
if {[string equal -nocase $channel $chan] && [string equal -nocase $except $link]} {
	set counter [expr $counter + 1]
	}
}	

for {set j 0} {$j < $counter} {incr j} {

	set file [open $black(antipub_file) "r"]
	set database [read -nonewline $file]
	close $file
	set data [split $database "\n"]
	set i [lsearch -glob $data "* $except"]

if {$i > -1} {
	set line [lindex $data $i]
	set delete [lreplace $data $i $i]
	set file [open $black(antipub_file) "w"] 
	puts $file [join $delete "\n"]
	close $file	
	}
}
	set file [open $black(antipub_file) "r"]
	set database [read -nonewline $file]
	close $file
if {$database == ""} {
	set file [open $black(antipub_file) "w"]
	close $file
			}
	blacktools:tell $nick $host $hand $chan $chan1 antipub.12 $counter
		}
	}		
}

############################### antinotice #############################

proc antinotice:protect {nick host hand arg chan} {
global black botnick
set handle [nick2hand $nick]
if {![validchan $chan]} { return 0 }
set getreason [channel get $chan antinotice-reason]
if {$getreason == ""} { 
set getlang [string tolower [channel get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
set getreason $black(say.$getlang.antinotice.1)
}
set getbantime [channel get $chan antinotice-bantime]
if {$getbantime == "0"} { set getbantime $black(antinoticebantime) }
set replace(%chan%) $chan
set protectreason [string map [array get replace] $getreason]
set banmask *!*@[lindex [split $host @] 1]
set reason "$protectreason"
if {![botisop $chan]} { return }
if {[matchattr $handle $black(exceptflags) $chan]} { return }
if {[channel get $chan vprotect] == ""}  { set vprotect ON } else { set vprotect [string toupper [channel get $chan vprotect]] }
if {[channel get $chan oprotect] == ""}  { set oprotect ON } else { set oprotect [string toupper [channel get $chan oprotect]] }
if {[isvoice $nick $chan] && [string equal -nocase $vprotect "ON"]} { return }
if {[isop $nick $chan] && [string equal -nocase $oprotect "ON"]} { return }
if {[isbotnick $nick]} { return }
if {$chan == $botnick} { return }
if { [channel get $chan antinotice] } {
blacktools:banner:1 $banmask $botnick $chan $reason $black(antinoticemode) $black(antinoticesecunde) $getbantime
}
}

############################## antictcp ################################


proc antictcp:protect {nick host hand chan keyword arg} {
global black botnick
set handle [nick2hand $nick]
if {![validchan $chan]} { return 0 }
set getreason [channel get $chan antictcp-reason]
if {$getreason == ""} { 
set getlang [string tolower [channel get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
set getreason $black(say.$getlang.antictcp.1)
}
set getbantime [channel get $chan antictcp-bantime]
if {$getbantime == "0"} { set getbantime $black(antictcpbantime) }
set replace(%chan%) $chan
set protectreason [string map [array get replace] $getreason]
set reason "$protectreason"
set banmask *!*@[lindex [split $host @] 1]
if {[string equal -nocase "action" $keyword] || [string equal -nocase "chat" $keyword]} {return 0}
if {![botisop $chan]} { return 0 }
if {[matchattr $handle $black(exceptflags) $chan]} { return}
if {[channel get $chan vprotect] == ""}  { set vprotect ON } else { set vprotect [string toupper [channel get $chan vprotect]] }
if {[channel get $chan oprotect] == ""}  { set oprotect ON } else { set oprotect [string toupper [channel get $chan oprotect]] }
if {[isvoice $nick $chan] && [string equal -nocase $vprotect "ON"]} { return }
if {[isop $nick $chan] && [string equal -nocase $oprotect "ON"]} { return }
if {[isbotnick $nick]} { return }
if { [channel get $chan antictcp] } {
blacktools:banner:1 $banmask $botnick $chan $reason $black(antictcpmode) $black(antictcpsecunde) $getbantime
}
}

############################## antibadword ################################

proc antibadword:filter {str} {
  regsub -all -- {\003([0-9]{1,2}(,[0-9]{1,2})?)?|\017|\037|\002|\026|\006|\007} $str "" str
  return $str
}


proc antibadword:protect {nick host hand chan arg} {
global black botnick username
	set bwordir "scripts/BlackTools/FILES/$username.bword.txt"
	set handle [nick2hand $nick]
	set found_word 0
if {![validchan $chan]} { return }
	set getreason [channel get $chan antibadword-reason]
if {$getreason == ""} { 
	set getlang [string tolower [channel get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
	set getreason $black(say.$getlang.antibadword.1)
}
	set getbantime [channel get $chan antibadword-bantime]
if {$getbantime == "0"} { set getbantime $black(antibadwordbantime) }
	set replace(%chan%) $chan
	set protectreason [string map [array get replace] $getreason]
	set text [antibadword:filter $arg]
	set reason "$protectreason"
	set banmask *!*@[lindex [split $host @] 1]
if {![botisop $chan]} { return }
if {[matchattr $handle $black(exceptflags) $chan]} { return }
if {[channel get $chan vprotect] == ""}  { set vprotect ON } else { set vprotect [string toupper [channel get $chan vprotect]] }
if {[channel get $chan oprotect] == ""}  { set oprotect ON } else { set oprotect [string toupper [channel get $chan oprotect]] }
if {[isvoice $nick $chan] && [string equal -nocase $vprotect "ON"]} { return }
if {[isop $nick $chan] && [string equal -nocase $oprotect "ON"]} { return }
if {[isbotnick $nick]} { return }
if {[channel get $chan antibadword]} {
	set file [open $bwordir "r"]
	set data [read -nonewline $file]
	close $file
	set lines [split $data "\n"]
foreach word $lines {
	set c [lindex [split $word] 0]
	set w [lrange [split $word] 1 end]
if {[string match -nocase $c $chan]} { 
if {[string match -nocase $w $text]} {
	set found_word 1
	blacktools:banner:2 $banmask "BADWORD" $chan $reason $getbantime
		}
	}
}
foreach antibadword [string tolower $black(antibadword)] {
if {[string match -nocase $antibadword $text]} {
	set found_word 1
	blacktools:banner:2 $banmask "BADWORD" $chan $reason $getbantime
			}
		}
	if {$found_word == 1} {
	bad:add:word $chan $banmask $arg
		}
	}
}

proc antibadword:protect:me {nick host hand chan keyword arg} {
global black
antibadword:protect $nick $host $hand $chan $arg
}

################################ badword ##################################

proc antibadword:command:public {nick host hand chan arg} {
global black botnick
	set why [lindex [split $arg] 0]
	set type 0
	set chan1 "$chan"
	set bdword [lrange [split $arg] 1 end]
	set bdnumber [lindex [split $arg] 1]
if {[regexp {^[&#]} $why] && [matchattr $hand nm|- $chan]} {
	set chan "$why"
	set why [lindex [split $arg] 1]
	set bdnumber [lindex [split $arg] 2]
	set bdword [lrange [split $arg] 2 end]
}
	antibadword:command:process $nick $host $hand $chan $chan1 $why $bdword $bdnumber $type
}

proc antibadword:command:process {nick host hand chan chan1 why bdword bdnumber type} {
global black botnick username
	set bwordir "scripts/BlackTools/FILES/$username.bword.txt"
	set i 0
	set foundchan 0
	set char(p) [lindex $black(cmdchar) 0]
if {[string match -nocase "none" "$char(p)"]} {
	set char(p) ""
} 
if {[matchattr $hand nm|- $chan]} {
if {($why == "") && ($type == "0")} {
	blacktools:tell $nick $host $hand $chan $chan1 badword.1 none
	return
}
if {($why == "") && ($type == "1")} {
	blacktools:tell $nick $host $hand $chan $chan1 badword.2 none
	return
	}
}
if {($why == "") && ($type == "0")} {
	blacktools:tell $nick $host $hand $chan $chan1 badword.3 none
	return
}
if {($why == "") && ($type == "1")} {
	blacktools:tell $nick $host $hand $chan $chan1 badword.4 none
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
switch -exact -- [string tolower $why] {

add {
	set file [open $bwordir a]
	puts $file "$chan $bdword"
	close $file
	blacktools:tell $nick $host $hand $chan $chan1 badword.5 $bdword
}

list {
	set file [open $bwordir "r"]
	set why [read -nonewline $file]
	close $file
	set data [split $why "\n"]
if {$why == ""} { 
	blacktools:tell $nick $host $hand $chan $chan1 badword.6 none
	blacktools:tell $nick $host $hand $chan $chan1 badword.7 none
	return
}
	blacktools:tell $nick $host $hand $chan $chan1 badword.6 none
foreach word $data {
	set c [lindex [split $word] 0]
	set word [lrange [split $word] 1 end]
if {[string match -nocase $chan $c]} {
	set foundchan 1
	set i [expr $i +1]
	blacktools:tell $nick $host $hand $chan $chan1 badword.8 " $i . $word"
		}
	}
	if {$foundchan == 0} {
	blacktools:tell $nick $host $hand $chan $chan1 badword.7 none
	}
}

del {
if {![regexp {^[0-9]} $bdnumber]} {
	blacktools:tell $nick $host $hand $chan $chan1 badword.9 $bdword
	return
}
	set file [open $bwordir "r"]
	set data [read -nonewline $file]
	close $file
	set lines [split $data "\n"]
foreach word $lines {
	set c [lindex [split $word] 0]
if {[string match -nocase $c $chan]} { 
	set i [expr $bdnumber - 1]
	set delete [lreplace $lines $i $i]
	set file [open $bwordir "w"]
	puts $file [join $delete "\n"]
	close $file
	}
}
	set file [open $bwordir "r"]
	set data [read -nonewline $file]
	close $file
if {$data == ""} {
	set files [open $bwordir "w"]
	close $files
}
	blacktools:tell $nick $host $hand $chan $chan1 badword.10 $bdnumber
		}
	}
}

############################## AntiLongText ################################

proc antilongtext:protect {nick uhost hand chan arg} {
global black botnick
	set handle [nick2hand $nick]
if {![validchan $chan]} { return }
	set getreason [channel get $chan antilongtext-reason]
if {$getreason == ""} { 
set getlang [string tolower [channel get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
set getreason $black(say.$getlang.antilongtext.1)
}
set getbantime [channel get $chan antilongtext-bantime]
if {$getbantime == "0"} { set getbantime $black(longbantime) }
set getlongchar [channel get $chan antilongtextmax]
if {$getlongchar == "0"} { set getlongchar "$black(longchar)" }
set replace(%chan%) $chan
set protectreason [string map [array get replace] $getreason]
set banmask "*!*@[lindex [split $uhost @] 1]"
set reason "$protectreason"
if {[matchattr $handle $black(exceptflags) $chan]} { return }
if {![botisop $chan]} { return 0 }
if {[channel get $chan vprotect] == ""}  { set vprotect ON } else { set vprotect [string toupper [channel get $chan vprotect]] }
if {[channel get $chan oprotect] == ""}  { set oprotect ON } else { set oprotect [string toupper [channel get $chan oprotect]] }
if {[isvoice $nick $chan] && [string equal -nocase $vprotect "ON"]} { return }
if {[isop $nick $chan] && [string equal -nocase $oprotect "ON"]} { return }
if {[isbotnick $nick]} { return } 
if {[string length $arg] >= $getlongchar} {
if {[channel get $chan antilongtext]} {
blacktools:banner:1 $banmask $botnick $chan $reason $black(longmode) $black(longtimemode) $getbantime
}
}
}

proc antilongtext:protect:me {nick host hand chan keyword arg} {
global black
antilongtext:protect $nick $host $hand $chan $arg
}

############################ AntiBAdQuitPart ##############################

set black(badcolors) {

"*\x03*"
"*\037*"
"*\002*"

}

proc antipubpart:protect {nick host hand chan arg} {
global botnick black
set handle [nick2hand $nick]
if {![validchan $chan]} { return 0 }
set getreason [channel get $chan antibadquitpart-reason]
if {$getreason == ""} { 
set getlang [string tolower [channel get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
set getreason $black(say.$getlang.antibadquitpart.1)
}
set getbantime [channel get $chan antibadquitpart-bantime]
if {$getbantime == "0"} { set getbantime $black(badquitparttime) }
set replace(%chan%) $chan
set protectreason [string map [array get replace] $getreason]
set banmask "*!*@[lindex [split $host @] 1]"
set reason "$protectreason"
if {[channel get $chan badquitpart]} {
foreach word $black(badquitpartwords) {
if {![botisop $chan]} { return }
if {[matchattr $handle $black(exceptflags) $chan]} { return }
if {[channel get $chan vprotect] == ""}  { set vprotect ON } else { set vprotect [string toupper [channel get $chan vprotect]] }
if {[channel get $chan oprotect] == ""}  { set oprotect ON } else { set oprotect [string toupper [channel get $chan oprotect]] }
if {[isvoice $nick $chan] && [string equal -nocase $vprotect "ON"]} { return }
if {[isop $nick $chan] && [string equal -nocase $oprotect "ON"]} { return }
if {[isbotnick $nick]} { return }
if {[string match -nocase $word $arg]} {
blacktools:banner:2 $banmask $botnick $chan $reason $getbantime
}
}
}
}

proc antipubsign:protect {nick host hand chan arg} {
antipubpart:protect $nick $host $hand $chan $arg
}


proc anticolorpart:protect {nick host hand chan arg} {
global botnick black
set handle [nick2hand $nick]
if {![validchan $chan]} { return }
set getreason [channel get $chan antibadquitpart-reason]
if {$getreason == ""} {
set getlang [string tolower [channel get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
set getreason $black(say.$getlang.antibadquitpart.1)
}
set getbantime [channel get $chan antibadquitpart-bantime]
if {$getbantime == "0"} { set getbantime $black(badquitparttime) }
set replace(%chan%) $chan
set protectreason [string map [array get replace] $getreason]
set banmask "*!*@[lindex [split $host @] 1]"
set reason "$protectreason"
if {[channel get $chan badquitpart]} {
foreach color $black(badcolors) {
if {![botisop $chan]} { return }
if {[matchattr $handle $black(exceptflags) $chan]} { return }
if {[channel get $chan vprotect] == ""}  { set vprotect ON } else { set vprotect [string toupper [channel get $chan vprotect]] }
if {[channel get $chan oprotect] == ""}  { set oprotect ON } else { set oprotect [string toupper [channel get $chan oprotect]] }
if {[isvoice $nick $chan] && [string equal -nocase $vprotect "ON"]} { return }
if {[isop $nick $chan] && [string equal -nocase $oprotect "ON"]} { return }
if {[isbotnick $nick]} { return }
if {($black(badquitpartcolour) == "1") && [string match -nocase $color $arg]} {
blacktools:banner:2 $banmask $botnick $chan $reason $getbantime
}
}
}
}

proc anticolorquit:protect {nick host hand chan arg} {
anticolorpart:protect $nick $host $hand $chan $arg
}

########################### AntiJoinPart #############################

proc antijoinpart:protect {nick host hand chan arg} {
global black botnick
set handle [nick2hand $nick]
if {![validchan $chan]} { return }
set getreason [channel get $chan antijoinpart-reason]
if {$getreason == ""} {
set getlang [string tolower [channel get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
set getreason $black(say.$getlang.antijoinpart.1)
}
set getbantime [channel get $chan antijoinpart-bantime]
if {$getbantime == "0"} { set getbantime $black(joinpartbantime) }
set replace(%chan%) $chan
set protectreason [string map [array get replace] $getreason]
set banmask "*!*@[lindex [split $host @] 1]"
set reason "$protectreason"
if {[matchattr $handle $black(exceptflags) $chan]} { return 0 }
if {[isbotnick $nick]} { return }
if {$chan == $botnick} { return }
if {[channel get $chan antijoinpart]} {
if {[getchanjoin $nick $chan] >= [expr {[clock seconds]-$black(joinparttime)}]} {
blacktools:banner:1 $banmask $botnick $chan $reason $black(joinpartmode) $black(joinparttimemode) $getbantime
}
}
}

proc spam:filter {str} {
  regsub -all -- {\003([0-9]{1,2}(,[0-9]{1,2})?)?|\017|\037|\002|\026|\006|\007} $str "" str
  return $str
}

############################# AntiSpam ##############################

proc antispam:protect {nick uhost hand arg} {
global botnick black
	set text [spam:filter $arg]
	set handle [nick2hand $nick]
foreach spammer [string tolower $black(spamword)] { 
if {[string match -nocase $spammer $arg]} {
foreach chans [channels] {
	if {![validchan $chans]} { return }
	set getreason [channel get $chans antispam-reason]
if {$getreason == ""} {
	set getlang [string tolower [channel get $chans lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
	set getreason $black(say.$getlang.antispam.1)
}
	set getbantime [channel get $chans antispam-bantime]
if {$getbantime == "0"} { set getbantime $black(spamban) }
if {[onchan $nick $chans]} {
if {[channel get $chans antispam]} {
if {![botisop $chans]} { return }
if {[isbotnick $nick]} { return }
	set banmask *!*@[lindex [split $uhost @] 1]
	set replace(%chan%) $chans
	set protectreason [string map [array get replace] $getreason]
	set reason "$protectreason"
if {[matchattr $handle $black(exceptflags) $chans]} { return 0 }
if {[channel get $chans vprotect] == ""}  { set vprotect ON } else { set vprotect [string toupper [channel get $chans vprotect]] }
if {[channel get $chans oprotect] == ""}  { set oprotect ON } else { set oprotect [string toupper [channel get $chans oprotect]] }
if {[isvoice $nick $chans] && [string equal -nocase $vprotect "ON"]} { return }
if {[isop $nick $chans] && [string equal -nocase $oprotect "ON"]} { return }
	blacktools:banner:2 $banmask $botnick $chans $reason $getbantime
					}	
				}
			}
		}
	}
}
proc antispam:protect:msg {nick host hand chan } {
global black
if {![validchan $chan]} { return }
if {[channel get $chan antispam]} {
if {[isbotnick $nick]} { return }
if {[info exists black(turnOnFlood:$chan)]} {
	return
}
	set handle [nick2hand $nick]
if {$black(spamreq) == "1"} {
if {[matchattr $handle $black(exceptflags) $chan]} { return }
	set getmsg [channel get $chan antispam-message]
if {$getmsg == ""} { 
	set getlang [string tolower [channel get $chan lang]]
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


proc antispam:protect:cycle {min hour day mon year} {
global black
if {([scan $min %d]+([scan $hour %d]*60)) % $black(spamcycle) == 0} { 
foreach chan [channels] {
if {![channel get $chan inactive]} {
if {[channel get $chan antispam]} {
	putserv "PART $chan :$black(spammsgcycle)"; putserv "JOIN $chan"
				}
			}
		}
	}
}

############################## AntiRepeat ###############################

proc antirepeat:protect {nick host hand chan arg} {
global black botnick count
	set arg [antipub:filter [join [split $arg]]]
	set handle [nick2hand $nick]
if {![validchan $chan]} { return }
if {[channel get $chan antirepeat]} {
if {![botisop $chan]} { return }
if {[matchattr $handle $black(exceptflags) $chan]} { return }
if {[isbotnick $nick]} { return }
	set getreason [channel get $chan antirepeat-reason]
if {$getreason == ""} { 
	set getlang [string tolower [channel get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
	set getreason $black(say.$getlang.antirepeat.1)
}
	set getbantime [channel get $chan antirepeat-bantime]
if {$getbantime == "0"} { set getbantime $black(antirepeatbantime) }
	set replace(%chan%) $chan
	set protectreason [string map [array get replace] $getreason]
	set reason "$protectreason"
	set repeatset [channel get $chan antirepeat-setting]
if {$repeatset == ""} { set repeatset "$black(repeats)" }
	set number [scan $repeatset %\[^:\]]
	set time [scan $repeatset %*\[^:\]:%s]
	set banmask *!*@[lindex [split $host @] 1]
foreach tmr [utimers] {
if {[string match "*count(repeat:$host:$chan:$arg)*" [join [lindex $tmr 1]]]} {
	killutimer [lindex $tmr 2]
	}	
}
if {[channel get $chan vprotect] == ""}  { set vprotect ON } else { set vprotect [string toupper [channel get $chan vprotect]] }
if {[channel get $chan oprotect] == ""}  { set oprotect ON } else { set oprotect [string toupper [channel get $chan oprotect]] }
if {[isvoice $nick $chan] && [string equal -nocase $vprotect "ON"]} { return }
if {[isop $nick $chan] && [string equal -nocase $oprotect "ON"]} { return }

if {![info exists count(repeat:$host:$chan:$arg)]} { 
	set count(repeat:$host:$chan:$arg) 0 
}

if {![info exists count(repeat:$host:$chan)]} { 
	set count(repeat:$host:$chan) 0 
}

	incr count(repeat:$host:$chan:$arg)
	utimer $time [list unset count(repeat:$host:$chan:$arg)]

if {$count(repeat:$host:$chan:$arg) >= $number} {
if {$black(antirepeattype) == "0"} { set count(repeat:$host:$chan) 2 } 
incr count(repeat:$host:$chan)
if {$count(repeat:$host:$chan) == 1} {
set getcount [channel get $chan kickcount]
set kcount [expr $getcount +1]
channel set $chan kickcount $kcount
if {[channel get $chan showcount]} {
set reason "$reason - $kcount -" 
} else {
set reason "$reason" 
}
putquick "KICK $chan $nick :$reason"
}
if {$count(repeat:$host:$chan) >= 2} {
blacktools:banner:2 $banmask $botnick $chan $reason $getbantime
unset count(repeat:$host:$chan)
			}
		}
	}
}


proc antirepeat:protect:me {nick host hand chan keyword arg} {
antirepeat:protect $nick $host $hand $chan $arg
}


############################# AntiColor ################################

proc anticolor:protect {nick host hand chan arg} {
global black botnick count
set arg [join [split $arg]]
if {![validchan $chan]} { return }
set getreason [channel get $chan anticolor-reason]
if {$getreason == ""} { 
set getlang [string tolower [channel get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
set getreason $black(say.$getlang.anticolor.1)
}
set getbantime [channel get $chan anticolor-bantime]
if {$getbantime == "0"} { set getbantime $black(anticolorbantime) }
set replace(%chan%) $chan
set protectreason [string map [array get replace] $getreason]
set reason "$protectreason"
set banmask *!*@[lindex [split $host @] 1]
set handle [nick2hand $nick]
if {[channel get $chan anticolor]} {
if {[channel get $chan vprotect] == ""}  { set vprotect ON } else { set vprotect [string toupper [channel get $chan vprotect]] }
if {[channel get $chan oprotect] == ""}  { set oprotect ON } else { set oprotect [string toupper [channel get $chan oprotect]] }
if {[isvoice $nick $chan] && [string equal -nocase $vprotect "ON"]} { return }
if {[isop $nick $chan] && [string equal -nocase $oprotect "ON"]} { return }
if {![botisop $chan]} { return }
if {[matchattr $handle $black(exceptflags) $chan]} { return }
if {[isbotnick $nick]} { return }
if {![info exists count(color:$host:$chan)]} { 
set count(color:$host:$chan) 0 
}
if {[string match *\003* $arg]} {
incr count(color:$host:$chan)
if {$black(anticolortype) == "0" } { set count(color:$host:$chan) 2 }
if {$count(color:$host:$chan) == 1} {
set getcount [channel get $chan kickcount]
set kcount [expr $getcount +1]
channel set $chan kickcount $kcount
if {[channel get $chan showcount]} {
set reason "$reason - $kcount -" 
} else {
set reason "$reason" 
}
putquick "KICK $chan $nick :$reason"
}
if {$count(color:$host:$chan) == 2} {
blacktools:banner:2 $banmask $botnick $chan $reason $getbantime
unset count(color:$host:$chan)
			}
		}
	}
}

proc anticolor:protect:me {nick host hand chan keyword arg} {
anticolor:protect $nick $host $hand $chan $arg
}

############################# AntiBold ################################

proc antibold:protect {nick host hand chan arg} {
global black botnick count
set arg [split $arg]
if {![validchan $chan]} { return }
set getreason [channel get $chan antibold-reason]
if {$getreason == ""} { 
set getlang [string tolower [channel get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
set getreason $black(say.$getlang.antibold.1)
}
set getbantime [channel get $chan antibold-bantime]
if {$getbantime == "0"} { set getbantime $black(antiboldbantime) }
set replace(%chan%) $chan
set protectreason [string map [array get replace] $getreason]
set reason "$protectreason"
set banmask *!*@[lindex [split $host @] 1]
set handle [nick2hand $nick]
if {[channel get $chan antibold]} {
if {[channel get $chan vprotect] == ""}  { set vprotect ON } else { set vprotect [string toupper [channel get $chan vprotect]] }
if {[channel get $chan oprotect] == ""}  { set oprotect ON } else { set oprotect [string toupper [channel get $chan oprotect]] }
if {[isvoice $nick $chan] && [string equal -nocase $vprotect "ON"]} { return }
if {[isop $nick $chan] && [string equal -nocase $oprotect "ON"]} { return }
if {![botisop $chan]} { return }
if {[matchattr $handle $black(exceptflags) $chan]} { return }
if {[isbotnick $nick]} { return }
if {![info exists count(bold:$host:$chan)]} { 
set count(bold:$host:$chan) 0 
}
if {[string match *\002* $arg]} {
incr count(bold:$host:$chan)
if {$black(antiboldtype) == "0" } { set count(bold:$host:$chan) 2 }
if {$count(bold:$host:$chan) == 1} {
set getcount [channel get $chan kickcount]
set kcount [expr $getcount +1]
channel set $chan kickcount $kcount
if {[channel get $chan showcount]} {
set reason "$reason - $kcount -" 
} else {
set reason "$reason" 
}
putquick "KICK $chan $nick :$reason"
}
if {$count(bold:$host:$chan) == 2} {
blacktools:banner:2 $banmask $botnick $chan $reason $getbantime
unset count(bold:$host:$chan)
			}
		}
	}
}

proc antibold:protect:me {nick host hand chan keyword arg} {
antibold:protect $nick $host $hand $chan $arg
}

############################ AntiUnderline ###############################

proc antiunderline:protect {nick host hand chan arg} {
global black botnick count
set arg [split $arg]
if {![validchan $chan]} { return }
set getreason [channel get $chan antiunderline-reason]
if {$getreason == ""} { 
set getlang [string tolower [channel get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
set getreason $black(say.$getlang.antiunderline.1)
}
set getbantime [channel get $chan antiunderline-bantime]
if {$getbantime == "0"} { set getbantime $black(antiunderlinebantime) }
set replace(%chan%) $chan
set protectreason [string map [array get replace] $getreason]
set reason "$protectreason"
set banmask *!*@[lindex [split $host @] 1]
set handle [nick2hand $nick]
if {[channel get $chan antiunderline]} {
if {[channel get $chan vprotect] == ""}  { set vprotect ON } else { set vprotect [string toupper [channel get $chan vprotect]] }
if {[channel get $chan oprotect] == ""}  { set oprotect ON } else { set oprotect [string toupper [channel get $chan oprotect]] }
if {[isvoice $nick $chan] && [string equal -nocase $vprotect "ON"]} { return }
if {[isop $nick $chan] && [string equal -nocase $oprotect "ON"]} { return }
if {![botisop $chan]} { return }
if {[matchattr $handle $black(exceptflags) $chan]} { return }
if {[isbotnick $nick]} { return }
if {![info exists count(underline:$host:$chan)]} { 
set count(underline:$host:$chan) 0 
}
if {[string match *\037* $arg]} {
incr count(underline:$host:$chan)
if {$black(antiunderlinetype) == "0" } { set count(underline:$host:$chan) 2 }
if {$count(underline:$host:$chan) == 1} {
set getcount [channel get $chan kickcount]
set kcount [expr $getcount +1]
channel set $chan kickcount $kcount
if {[channel get $chan showcount]} {
set reason "$reason - $kcount -" 
} else {
set reason "$reason" 
}
putquick "KICK $chan $nick :$reason"
}
if {$count(underline:$host:$chan) == 2} {
blacktools:banner:2 $banmask $botnick $chan $reason $getbantime
unset count(underline:$host:$chan)
			}
		}
	}
}

proc antiunderline:protect:me {nick host hand chan keyword arg} {
antiunderline:protect $nick $host $hand $chan $arg
}

############################## AntiCaps #################################

proc anticaps:protect {nick host hand chan arg} {
global black botnick count
set handle [nick2hand $nick]
if {![validchan $chan]} { return }
set getreason [channel get $chan anticaps-reason]
if {$getreason == ""} { 
set getlang [string tolower [channel get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
set getreason $black(say.$getlang.anticaps.1)
}
set getbantime [channel get $chan anticaps-bantime]
if {$getbantime == "0"} { set getbantime $black(anticapsbantime) }
set replace(%chan%) $chan
set protectreason [string map [array get replace] $getreason]
set reason "$protectreason"
set banmask *!*@[lindex [split $host @] 1]
if {![info exists count(caps:$host:$chan)]} { 
set count(caps:$host:$chan) 0 
}
if {[channel get $chan anticaps]} {
if {[channel get $chan vprotect] == ""}  { set vprotect ON } else { set vprotect [string toupper [channel get $chan vprotect]] }
if {[channel get $chan oprotect] == ""}  { set oprotect ON } else { set oprotect [string toupper [channel get $chan oprotect]] }
if {[isvoice $nick $chan] && [string equal -nocase $vprotect "ON"]} { return }
if {[isop $nick $chan] && [string equal -nocase $oprotect "ON"]} { return }
if {![botisop $chan]} { return }
if {[matchattr $handle $black(exceptflags) $chan]} { return }
if {[isbotnick $nick]} { return }
set caps($nick:$host) 0
foreach word [split $arg {}] {
if [string match \[A-Z\] $word] {
incr caps($nick:$host)
}

}

if {$caps($nick:$host) == 0} {
  return 0
}
  if {[string length $arg] < 20} {return 0}
  set capchar [string length $arg]
  set number $caps($nick:$host)/$capchar
  if {[expr 100 * $caps($nick:$host) / $capchar] > $black(anticapscount)} {
incr count(caps:$host:$chan)
if {$black(anticapstype) == "0" } { set count(caps:$host:$chan) 2 }
if {$count(caps:$host:$chan) == 1} {
set getcount [channel get $chan kickcount]
set kcount [expr $getcount +1]
channel set $chan kickcount $kcount
if {[channel get $chan showcount]} {
set reason "$reason - $kcount -" 
} else {
set reason "$reason" 
}
putquick "KICK $chan $nick :$reason"
}
if {$count(caps:$host:$chan) == 2} {
blacktools:banner:2 $banmask $botnick $chan $reason $getbantime
unset count(caps:$host:$chan)
			}
		}
	}
}

proc anticaps:protect:me {nick host hand chan keyword arg} {
anticaps:protect $nick $host $hand $chan $arg
}

################################ BadIdent #################################

proc badident:protect:join {nick host hand chan} {
global black botnick
if {![validchan $chan]} { return }
set getreason [channel get $chan badident-reason]
if {$getreason == ""} { 
set getlang [string tolower [channel get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
set getreason $black(say.$getlang.badident.1)
}
set getbantime [channel get $chan badident-bantime]
if {$getbantime == "0"} { set getbantime $black(badidentbantime) }
set replace(%chan%) $chan
set protectreason [string map [array get replace] $getreason]
set reason "$protectreason"
set ident "[string trimleft [string tolower [lindex [split $host "@"] 0]] "~"]"
set banmask "*!*$ident@*"
if {![validchan $chan]} { return }
if {[channel get $chan badident]} {
if {![botisop $chan]} { return }
if {[channel get $chan vprotect] == ""}  { set vprotect ON } else { set vprotect [string toupper [channel get $chan vprotect]] }
if {[channel get $chan oprotect] == ""}  { set oprotect ON } else { set oprotect [string toupper [channel get $chan oprotect]] }
if {[isvoice $nick $chan] && [string equal -nocase $vprotect "ON"]} { return }
if {[isop $nick $chan] && [string equal -nocase $oprotect "ON"]} { return }
if {[matchattr $hand $black(exceptflags) $chan]} { return 0 }
foreach bit $black(badidentwords) {
if {[string match -nocase $bit $ident]} {
blacktools:banner:2 $banmask $botnick $chan $reason $getbantime
			}
		}
	}
}


############################## BadFullname ###############################

proc badfullname:protect:join {nick host hand chan} {
global botnick black
set ::cchan $chan
set ::nnick $nick
set ::hhost $host
set handle [nick2hand $nick]
if { [channel get $chan badfullname] } {
if {![botisop $chan]} { return }
if {[channel get $chan vprotect] == ""}  { set vprotect ON } else { set vprotect [string toupper [channel get $chan vprotect]] }
if {[channel get $chan oprotect] == ""}  { set oprotect ON } else { set oprotect [string toupper [channel get $chan oprotect]] }
if {[isvoice $nick $chan] && [string equal -nocase $vprotect "ON"]} { return }
if {[isop $nick $chan] && [string equal -nocase $oprotect "ON"]} { return }
if {[matchattr $handle $black(exceptflags) $chan]} { return }
if {[onchan $nick $chan]} {
putquick "WHOIS $nick $nick"
bind RAW - 311 badfullname:protect
}
}
}

proc badfullname:protect { from keyword arguments } {
global botnick black
set chan $::cchan
set nick $::nnick
set host $::hhost
set getreason [channel get $chan badfullname-reason]
if {$getreason == ""} { 
set getlang [string tolower [channel get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
set getreason $black(say.$getlang.badfullname.1)
}
set getbantime [channel get $chan badfullname-bantime]
if {$getbantime == "0"} { set getbantime $black(badfbantime) }
set replace(%chan%) $chan
set protectreason [string map [array get replace] $getreason]
set reason "$protectreason"
set fullname [string range [join [lrange $arguments 5 end]] 1 end]
if {[onchan $nick $chan]} {
set banmask *!*@[lindex [split [getchanhost $nick $chan] "@"] 1] 
}
  foreach realname $black(badfwords) {
if {[string match -nocase $realname $fullname]} {
blacktools:banner:2 $banmask $botnick $chan $reason $getbantime
}
}
unbind RAW - 311 badfullname:protect
}

################################ BadNick #################################

proc badnick:protect:join {nick host hand chan} {
global black botnick
	set handle [nick2hand $nick]
if {![validchan $chan]} { return 0 }
	set getreason [channel get $chan badnick-reason]
if {$getreason == ""} { 
	set getlang [string tolower [channel get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
	set getreason $black(say.$getlang.badnick.1)
}
	set getbantime [channel get $chan badnick-bantime]
if {$getbantime == "0"} { set getbantime $black(badnickbantime) }
	set replace(%chan%) $chan
	set protectreason [string map [array get replace] $getreason]
	set reason "$protectreason"
	set banmask "$nick*!*@*"
if {![validchan $chan]} { return 0 }
if {[channel get $chan badnick]} {
if {![botisop $chan]} { return 0 }
if {[channel get $chan vprotect] == ""}  { set vprotect ON } else { set vprotect [string toupper [channel get $chan vprotect]] }
if {[channel get $chan oprotect] == ""}  { set oprotect ON } else { set oprotect [string toupper [channel get $chan oprotect]] }
if {[isvoice $nick $chan] && [string equal -nocase $vprotect "ON"]} { return }
if {[isop $nick $chan] && [string equal -nocase $oprotect "ON"]} { return }
if {[matchattr $handle $black(exceptflags) $chan]} { return 0 }
foreach badnick [string tolower $black(badnickwords)] {
if {[string match $badnick [string tolower $nick]]} {
	blacktools:banner:2 $banmask $botnick $chan $reason $getbantime
			}
		}
	}
}

proc badnick:protect:change {nick host hand chan newnick} {
global black botnick
	set handle [nick2hand $nick]
if {![validchan $chan]} { return 0 }
	set getreason [channel get $chan badnick-reason]
if {$getreason == ""} { 
	set getlang [string tolower [channel get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
	set getreason $black(say.$getlang.badnick.1)
}
	set getbantime [channel get $chan badnick-bantime]
if {$getbantime == "0"} { set getbantime $black(badnickbantime) }
	set replace(%chan%) $chan
	set protectreason [string map [array get replace] $getreason]
	set reason "$protectreason"
	set banmask "$newnick*!*@*"
if {![validchan $chan]} { return 0 }
if {[channel get $chan badnick]} {
if {![botisop $chan]} { return 0 }
if {[channel get $chan vprotect] == ""}  { set vprotect ON } else { set vprotect [string toupper [channel get $chan vprotect]] }
if {[channel get $chan oprotect] == ""}  { set oprotect ON } else { set oprotect [string toupper [channel get $chan oprotect]] }
if {[isvoice $nick $chan] && [string equal -nocase $vprotect "ON"]} { return }
if {[isop $nick $chan] && [string equal -nocase $oprotect "ON"]} { return }
if {[matchattr $handle $black(exceptflags) $chan]} { return 0 }
foreach badnick [string tolower $black(badnickwords)] {
if {[string match $badnick [string tolower $newnick]]} {
	blacktools:banner:2 $banmask $botnick $chan $reason $getbantime	
			}
		}
	}
}

########################### AntiJoinFlood ################################

proc joinflood:unlock {chan} {
	global black
	putquick "MODE $chan -$black(modes)"
	unset black(floodjoin:on:$chan)	
}

proc joinflood:protect {nick host hand chan} {
global black count
if {[channel get $chan antijoinflood]} {
	set getset [channel get $chan joinflood]
	if {$getset == ""} { set getset "4:5" }
	set number [scan $getset %\[^:\]]
	set time [scan $getset %*\[^:\]:%s]
	set replace(%chan%) $chan
foreach tmr [utimers] {
if {[string match "*count(joinflood:$chan)*" [join [lindex $tmr 1]]]} {
	killutimer [lindex $tmr 2]
	}
}

if {[info exists black(floodjoin:on:$chan)]} {
	return
}

if {![info exists count(joinflood:$chan)]} { 
	set count(joinflood:$chan) 0 
}
	incr count(joinflood:$chan)
utimer $time [list unset count(joinflood:$chan)]
if {$count(joinflood:$chan) >= "$number"} {
if {![botisop $chan]} { return 0 }
	set black(floodjoin:on:$chan) 1
	putquick "MODE $chan +$black(modes)" ; utimer $black(nomodetime) [list joinflood:unlock $chan]
if {$black(fjoinhow) == "1"} {
	set getlang [string tolower [channel get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
	set getmessage $black(say.$getlang.antijoinflood.1)
	set message [string map [array get replace] $getmessage]
	puthelp "NOTICE @$chan :$message"
			}
		}
	}
}

########################### User Protection ################################

proc protectpublic {nick host hand chan args} {
global black
	set bans [lindex $args 1]
if {![botisop $chan]} { return 0 }
if {$bans == "*!*@*"} { putquick "MODE $chan -b $bans"
	return
}
	set list [userlist $black(exceptflags) $chan]
foreach user $list {
	set hosts [getuser $user hosts]
foreach host $hosts {
if {[string match -nocase $bans $host]} {
	putquick "MODE $chan -b $bans"
if {[onchan $black(chanserv) $chan]} {
	putquick "PRIVMSG $black(chanserv) :unban $chan $bans"
				}
			}
		}
	}
}

############################## AntiChanFlood ###############################

proc antifloodchan:protect {nick host hand chan arg} {
global black botnick count
	set arg [split $arg]
if {![validchan $chan]} { return 0 }
	set getreason [channel get $chan antichanflood-reason]
if {$getreason == ""} { 
	set getlang [string tolower [channel get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
	set getreason $black(say.$getlang.antichanflood.1)
}
	set getbantime [channel get $chan antichanflood-bantime]
if {$getbantime == "0"} { set getbantime $black(antifloodchanbantime) }
	set replace(%chan%) $chan
	set getset [channel get $chan chanflood]
if {$getset == ""} { set getset "4:5" }
	set protectreason [string map [array get replace] $getreason]
	set reason "$protectreason"
	set number [scan $getset %\[^:\]]
	set time [scan $getset %*\[^:\]:%s]
	set banmask *!*@[lindex [split $host @] 1]
	set handle [nick2hand $nick]
foreach tmr [utimers] {
if {[string match "*count(repeat:$host:$chan:flood)*" [join [lindex $tmr 1]]]} {
	killutimer [lindex $tmr 2]
	}
}
if {[channel get $chan antichanflood]} {
if {[channel get $chan vprotect] == ""}  { set vprotect ON } else { set vprotect [string toupper [channel get $chan vprotect]] }
if {[channel get $chan oprotect] == ""}  { set oprotect ON } else { set oprotect [string toupper [channel get $chan oprotect]] }
if {[isvoice $nick $chan] && [string equal -nocase $vprotect "ON"]} { return }
if {[isop $nick $chan] && [string equal -nocase $oprotect "ON"]} { return }
if {![botisop $chan]} { return 0 }
if {[matchattr $handle $black(exceptflags) $chan]} { return 0 }
if {[isbotnick $nick]} { return 0 }

if {![info exists count(repeat:$host:$chan:flood)]} { 
	set count(repeat:$host:$chan:flood) 0 
}

if {![info exists count(repeat:$host:$chan)]} { 
	set count(repeat:$host:$chan) 0 
}
	incr count(repeat:$host:$chan:flood)
	utimer $time [list unset count(repeat:$host:$chan:flood)]
if {$count(repeat:$host:$chan:flood) >= $number} {
if {$black(antifloodchantype) == "0"} { set count(repeat:$host:$chan) 2 } 
	incr count(repeat:$host:$chan)
if {$count(repeat:$host:$chan) == 1} {
set getcount [channel get $chan kickcount]
set kcount [expr $getcount +1]
	channel set $chan kickcount $kcount
if {[channel get $chan showcount]} {
	set reason "$reason - $kcount -" 
} else {
	set reason "$reason" 
}
	putquick "KICK $chan $nick :$reason"
}
if {$count(repeat:$host:$chan) >= 2} {
	blacktools:banner:2 $banmask $botnick $chan $reason $getbantime
	unset count(repeat:$host:$chan)
			}
		}
	}
}

proc antifloodchan:protect:me {nick host hand chan keyword arg} {
antirepeat:protect $nick $host $hand $chan $arg
}
