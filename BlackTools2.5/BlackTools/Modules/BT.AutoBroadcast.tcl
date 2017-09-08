#########################################################################
##          BlackTools - The Ultimate Channel Control Script           ##
##                    One TCL. One smart Eggdrop                       ##
#########################################################################
########################   AUTOBROADCAST TCL   ##########################
#########################################################################
##						                       ##
##     BlackTools  : http://blacktools.tclscripts.net	               ##
##     Bugs report : http://www.tclscripts.net/	                       ##
##     Online Help : irc://irc.undernet.org/tcl-help 	               ##
##                   #TCL-HELP / UnderNet                              ##
##                   You can ask in english or romanian                ##
##					                               ##
#########################################################################

proc broadcastpublic:module {nick host hand chan arg} {
global black sdir lastbind
	set chan1 "$chan"
	set type 0
	set who [lindex [split $arg] 0]
	set message [join [lrange [split $arg] 1 end]]
	set number [lindex [split $arg] 1]
	set return [blacktools:mychar $lastbind $hand]
if {$return == "0"} {
		return
}
	broadcast:process $nick $host $hand $chan $chan1 $who $message $number $type
}

proc broadcast:process {nick host hand chan chan1 who message number type} {
global botnick black username
	set cmd_status [btcmd:status $chan $hand "bt" 0]
if {$cmd_status == "1"} { 
	return 
}
if {[matchattr $hand q]} { blacktools:tell $nick $host $hand $chan $chan1 gl.glsuspend none
	return
}
if {[matchattr $hand -|q $chan]} { blacktools:tell $nick $host $hand $chan $chan1 gl.suspend none
	return
}
	set show_message $message
	set btnum 0
	set lin 0
	set temp_num 0
	set sdir $black(status_file)
if {$who == ""} {
switch $type {
	0 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr "bt"
	}
	1 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_nick "bt"
	}
	2 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_priv "bt"
		}
	}
	return
}

switch [string tolower $who] {

on {
	set type1 "broadcastpublic:show ON"
foreach tmr [timers] {
if {[string match "*broadcastpublic:show*" [join [lindex $tmr 1]]]} {
	blacktools:tell $nick $host $hand $chan $chan1 autobroadcast.3 none
	return
	}
}
	blacktools:tell $nick $host $hand $chan $chan1 autobroadcast.4 none
	set file [open $sdir "r"]
	set database [read -nonewline $file]
	close $file
	set data [split $database "\n"]
foreach line $data {
	set lin [expr $lin +1]
	set who [lindex  [split $line] 0]
	set stats [lindex [split $line] 1]
if {[string match -nocase "broadcastpublic:show" $who]} {
if {$line != ""} {
	set num [expr $lin - 1]
	set delete [lreplace $data $num $num]
	set files [open $sdir "w"]
	puts $files [join $delete "\n"]
	close $files
		}
	}
}
	set file [open $sdir "r"]
	set data [read -nonewline $file]
	close $file
if {$data == ""} {	
	set files [open $sdir "w"]
	close $files
}
	set file [open $sdir "a"]
	puts $file "$type1"
	close $file
	timer $black(bttime) broadcastpublic:show
	set broadcastpublic:show_running 1
}

off {
	blacktools:tell $nick $host $hand $chan $chan1 autobroadcast.5 none
	set type1 "broadcastpublic:show OFF"
foreach tmr [timers] {
if {[string match -nocase "*broadcastpublic:show*" [join [lindex $tmr 1]]]} {
	killtimer [lindex $tmr 2]
	}	
}
	set file [open $sdir "r"]
	set database [read -nonewline $file]
	close $file
	set data [split $database "\n"]
foreach line $data {
	set lin [expr $lin +1]
	set who [lindex  [split $line] 0]
	set stats [lindex [split $line] 1]
if {[string match -nocase "broadcastpublic:show" $who]} {
if {$line != ""} {
	set num [expr $lin - 1]
	set delete [lreplace $data $num $num]
	set files [open $sdir "w"]
	puts $files [join $delete "\n"]
	close $files
		}	
	}
}
	set file [open $sdir "r"]
	set data [read -nonewline $file]
	close $file
if {$data == ""} {
	set files [open $sdir "w"]
	close $files
}
	set file [open $sdir "a"]
	puts $file "$type1"
	close $file
if {[info exists broadcastpublic:show_running]} {
	unset broadcastpublic:show_running
	}
}

add {
if {$message == ""} {
switch $type {
	0 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr "bt"
	}
	1 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_nick "bt"
	}
	2 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_priv "bt"
		}
	}
	return
}

while {$temp_num == 0} {
	set get [find:num $btnum "-" "AUTOBROADCAST"]
if {$get == "$btnum"} {
	set btnum [expr $btnum + 1]
	} else { set temp_num 1 }
}

	set file [open $black(add_file) a]
	set encoded [encoding convertto utf-8 $message]
	puts $file "- AUTOBROADCAST $btnum $encoded"
	close $file
	blacktools:tell $nick $host $hand $chan $chan1 autobroadcast.6 $btnum
	blacktools:tell $nick $host $hand $chan $chan1 autobroadcast.1 $show_message
}

list {
	array set btlist [list]
	set timestamp [clock format [clock seconds] -format {%Y%m%d%H%M%S}]
	set temp "$black(tempdir)/bt_temp.$timestamp"
	set file [open $black(add_file) "r"]
	set w [read -nonewline $file]
	close $file
	set data [split $w "\n"]
if {$data == ""} { blacktools:tell $nick $host $hand $chan $chan1 autobroadcast.8 none
	return
}
foreach line $data {
	set read_type [lindex [split $line] 1]
if {[string equal -nocase $read_type "AUTOBROADCAST"]} {
	set msg_num [lindex [split $line] 2]
	set message [join [lrange [split $line] 3 end]]
lappend btlist($msg_num) $message
	}	
}
	set tempwrite [open $temp "w"]
foreach msg [lsort -integer -increasing [array names btlist]] {
	puts $tempwrite "$msg [join $btlist($msg)]"
}
	close $tempwrite
	set file [open $temp "r"]
	set w [read -nonewline $file]
	close $file
	set data [split $w "\n"]
	file delete $temp
	module:getinfo $nick $host $hand $chan $chan1 $type $data "autobroadcast" "0" $number
}

del {

if {![regexp {^[0-9]} $number]} {
switch $type {
	0 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr "bt"
	}
	1 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_nick "bt"
	}
	2 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_priv "bt"
		}
	}
	return
}
	set ret [find:num $number "-" "AUTOBROADCAST"]
if {$ret == 0} { 
	blacktools:tell $nick $host $hand $chan $chan1 autobroadcast.2 $number
	return
}
	set file [open $black(add_file) "r"]
	set timestamp [clock format [clock seconds] -format {%Y%m%d%H%M%S}]
	set temp "$black(tempdir)/bt_temp.$timestamp"
	set tempwrite [open $temp w]
while {[gets $file line] != -1} {
	set read_num [lindex [split $line] 2]
	set read_type [lindex [split $line] 1]
if {[string equal $number $read_num] && [string equal $read_type "AUTOBROADCAST"]} { 
	continue
} else {
	puts $tempwrite $line
		}	 
    }
	close $tempwrite
	close $file
    file rename -force $temp $black(add_file)
	blacktools:tell $nick $host $hand $chan $chan1 autobroadcast.11 $number		
		}
	}
}

proc broadcastpublic:show {} {
global black
if {![info exists black(broadcast:count)]} {
	set black(broadcast:count) 0
}
	set channels ""
	set line ""
	set file [open $black(add_file) "r"]
	set timestamp [clock format [clock seconds] -format {%Y%m%d%H%M%S}]
	set temp "$black(tempdir)/bt_temp.$timestamp"
	set tempwrite [open $temp w]
while {[gets $file line] != -1} {
	set read_type [lindex [split $line] 1]
if {[string equal $read_type "AUTOBROADCAST"]} { 
	set read_message [lrange [split $line] 3 end]
	puts $tempwrite $read_message
	}
}
	close $tempwrite
	close $file	

	set file [open $temp "r"]
	set w [read -nonewline $file]
	close $file
	set data [split $w "\n"]
	
if {$data != ""} {
	set line [lindex $data $black(broadcast:count)]
	
if {$line == ""} {
	set black(broadcast:count) 0
	set line [lindex $data $black(broadcast:count)]
}
	set black(broadcast:count) [expr $black(broadcast:count) +1]
	
foreach chan [channels] {
if {[validchan $chan] && [isdynamic $chan] && (![setting:get $chan silent])} {
	lappend channels $chan
			}
		}
	} else { file delete $temp }
	file delete $temp
if {$channels != "" && $line != ""} {
		broadcast:act $channels 0 $line
}
	timer $black(bttime) broadcastpublic:show
}

proc broadcast:act {channels counter line} {
	global black
	set split_line [split $line "~"]
	set chan [lindex $channels $counter]
	set cc [expr $counter + 1]
	set notshow 0
if {$chan != ""} {
if {[info exists black(lastaction:$chan)]} {
	set unixtime [unixtime]
	set return_time [time_return_minute $black(bttime)]
	set time [expr [expr [expr $return_time * $black(entry:shown)] * 60] + $unixtime]
if {[expr $unixtime - $black(lastaction:$chan)] > [expr $time - $unixtime]} {
	set notshow 1
	}
}
if {$notshow == "0"} {
foreach mes $split_line {
	set message [join [lrange [split $mes] 0 end]]
	set encoded [encoding convertfrom utf-8 $message]
if {$black(bthow) == "1"} {
	puthelp "PRIVMSG $chan :\001ACTION [join $encoded]\001"
} else { 
	puthelp "PRIVMSG $chan :[join $encoded]"
			}
		}
	}
}

if {[lindex $channels $cc] == ""} {
	return 
	} else {
	utimer 5 [list broadcast:act $channels $cc $line]
	}
}

##############
#########################################################################
##   END                                                               ##
#########################################################################