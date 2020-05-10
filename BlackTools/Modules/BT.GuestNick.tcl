#########################################################################
##          BlackTools - The Ultimate Channel Control Script           ##
##                    One TCL. One smart Eggdrop                       ##
#########################################################################
###########################   GUESTNICK TCL   ###########################
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

proc guestnick:process {nick host hand chan chan1 who gnick type number modul} {
	global black
	set num 0
	set temp_num 0
	set cmd_status [btcmd:status $chan $hand "guestnick" 0]
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

switch $who {

	on {
	setting:set $chan +guestnick ""
	blacktools:tell $nick $host $hand $chan $chan1 guestnick.1 none
}
	off {
	setting:set $chan -guestnick ""
	blacktools:tell $nick $host $hand $chan $chan1 guestnick.2 none
}
	add {
if {$gnick == ""} {
switch $type {
	0 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr "guestnick"
	}
	1 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_nick "guestnick"
	}
	2 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_priv "guestnick"
		}
	}
	return
}

	set findword [prot:findword $chan "GUESTNICK" $gnick]
if {$findword == "1"} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.wordexists $gnick
	return
}

while {$temp_num == 0} {
	set get [find:num $num $chan "GUESTNICK"]
if {$get == "$num"} {
	set num [expr $num + 1]
	} else { set temp_num 1 }
}
	set file [open $black(add_file) a]
	set enc_chan [encoding convertto utf-8 $chan]
	puts $file "$enc_chan GUESTNICK $num $gnick"
	close $file
	blacktools:tell $nick $host $hand $chan $chan1 guestnick.3 "$gnick $num"
}
del {

if {![regexp {^[0-9]} $number]} {
switch $type {
	0 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr "guestnick"
	}
	1 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_nick "guestnick"
	}
	2 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_priv "guestnick"
		}
	}
	return
}
	set ret [find:num $number $chan "GUESTNICK"]
if {$ret == 0} { 
	blacktools:tell $nick $host $hand $chan $chan1 guestnick.5 $number
	return
}
	set file [open $black(add_file) "r"]
	set timestamp [clock format [clock seconds] -format {%Y%m%d%H%M%S}]
	set temp "$black(tempdir)/bt_temp.$timestamp"
	set tempwrite [open $temp w]
while {[gets $file line] != -1} {
	set read_num [lindex [split $line] 2]
	set read_type [lindex [split $line] 1]
	set read_chan [lindex [split $line] 0]
	set enc_chan [encoding convertfrom utf-8 $read_chan]
if {[string equal $number $read_num] && [string equal $read_type "GUESTNICK"] && [string equal $enc_chan $chan]} { 
	continue
} else {
	puts $tempwrite $line
		}	 
    }
	close $tempwrite
	close $file
    file rename -force $temp $black(add_file)
	blacktools:tell $nick $host $hand $chan $chan1 guestnick.4 $number		
}

list {
	array set nicklist [list]
	set timestamp [clock format [clock seconds] -format {%Y%m%d%H%M%S}]
	set temp "$black(tempdir)/nick_temp.$timestamp"
	set file [open $black(add_file) "r"]
	set w [read -nonewline $file]
	close $file
	set data [split $w "\n"]
foreach line $data {
	set read_chan [lindex [split $line] 0]
	set enc_chan [encoding convertfrom utf-8 $read_chan]
	set read_type [lindex [split $line] 1]
if {[string match -nocase $enc_chan $chan] && [string match -nocase $read_type "GUESTNICK"]} {
	set msg_num [lindex [split $line] 2]
	set message [lrange [split $line] 3 end]
lappend nicklist($msg_num) $message
	}
}
	set tempwrite [open $temp w]
foreach msg [lsort -integer -increasing [array names nicklist]] {
	puts $tempwrite "$msg [join $nicklist($msg)]"
	}
	close $tempwrite
	set file [open $temp "r"]
	set w [read -nonewline $file]
	close $file
	set data [split $w "\n"]
	file delete $temp
	module:getinfo $nick $host $hand $chan $chan1 $type $data "guestnick" "0" $number
		}
default {
switch $type {
	0 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr "guestnick"
	}
	1 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_nick "guestnick"
	}
	2 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_priv "guestnick"
				}
			}
		}		
	}	
}

proc guestnick:module {nick host hand chan} {
	global black
if {![validchan $chan]} {
		return
}
if {[setting:get $chan guestnick]} {
if {[info exists black(turnOnFlood:$chan)]} {
	return
}
	set getlang [string tolower [setting:get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
	set method [setting:get $chan guestnick-msgmethod]
if {$method == ""} {
	set method $black(guestnick:msgmethod)
}
	set file [open $black(add_file) r]
while {[gets $file line] != -1} {
	set read_chan [lindex [split $line] 0]
	set read_type [lindex [split $line] 1]
	set read_msg [lrange [split $line] 3 end]
if {[string equal -nocase $read_chan $chan] && [string equal -nocase $read_type "GUESTNICK"] && [string match -nocase $read_msg $nick]} {
	set replace(%nick%) $nick
	set replace(%chan%) $chan
	set message [setting:get $chan guestnick-message]
if {$message == ""} {
	set message $black(say.$getlang.guestnick.10)
}
	set text [black:color:set "" $message]
	set reply [join $text]
	set message [string map [array get replace] $reply]
	switch [string tolower $method] {
	chan {
	putserv "PRIVMSG $chan :$message"
	}	
	privmsg {
	putserv "PRIVMSG $nick :$message"
	}
	notice {
	putserv "NOTICE $nick :$message"
	}
				}
			}
		}
	close $file
	}
}

##############
#########################################################################
##   END                                                               ##
#########################################################################