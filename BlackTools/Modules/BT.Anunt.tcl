#########################################################################
##          BlackTools - The Ultimate Channel Control Script           ##
##                    One TCL. One smart Eggdrop                       ##
#########################################################################
########################   ANUNT/ADVERT TCL   ###########################
#########################################################################
##						                       ##
##   BlackTools  : http://blacktools.tclscripts.net	               ##
##   Bugs report : http://www.tclscripts.net/	                       ##
##   GitHub page : https://github.com/tclscripts/BlackToolS-TCL	       ##
##   Online Help : irc://irc.undernet.org/tcl-help 	               ##
##                 #TCL-HELP / UnderNet                                ##
##                 You can ask in english or romanian                  ##
##					                               ##
#########################################################################

proc anunt:process {nick host hand chan chan1 who message number type} {
global botnick black username
	set cmd_status [btcmd:status $chan $hand "anunt" 0]
if {$cmd_status == "1"} { 
	return 
}
	set show_message $message
	set num 0
	set temp_num 0
if {[matchattr $hand q]} { blacktools:tell $nick $host $hand $chan $chan1 gl.glsuspend none
	return
}
if {[matchattr $hand -|q $chan]} { blacktools:tell $nick $host $hand $chan $chan1 gl.suspend none
	return
}
if {$who == ""} {
if {$type == "0"} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr "anunt"
}
if {$type == "1"} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_nick "anunt"
}
if {$type == "2"} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_priv "anunt"
}
	return
}

if {![validchan $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.novalidchan none
	return
}
	switch [string tolower $who] {
on {
	setting:set $chan +anunt ""
	blacktools:tell $nick $host $hand $chan $chan1 anunt.3 none
if {[setting:get $chan anunt-showtime] != ""} {
	set time [setting:get $chan anunt-showtime]
		} else {
	set time $black(anunttime)
		}
	set scan_time [time_return_minute $time]
	set black(anunt:$chan:timer_start) $scan_time
}

off {
	setting:set $chan -anunt ""
	blacktools:tell $nick $host $hand $chan $chan1 anunt.4 none
if {[info exists black(anunt:$chan:timer_start)]} {
	unset black(anunt:$chan:timer_start)
	}
if {[info exists black(anunt:counter:$chan)]} {
	unset black(anunt:counter:$chan)
	}
}

add {
if {$message == ""} {
if {$type == "0"} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr "anunt"
}
if {$type == "1"} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_nick "anunt"
}
if {$type == "2"} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_priv "anunt"
}
	return
}
	
	while {$temp_num == 0} {
	set get [find:num $num $chan "ANUNT"]
if {$get == "$num"} {
	set num [expr $num + 1]
	} else { set temp_num 1 }
}
	set file [open $black(add_file) a]
	set encoded [encoding convertto utf-8 $message]
	set enc_chan [encoding convertto utf-8 $chan]
	puts $file "$enc_chan ANUNT $num $encoded"
	close $file
	blacktools:tell $nick $host $hand $chan $chan1 anunt.5 $num
	blacktools:tell $nick $host $hand $chan $chan1 anunt.1 $show_message
}
list {
	array set anuntlist [list]
	set timestamp [clock format [clock seconds] -format {%Y%m%d%H%M%S}]
	set temp "$black(tempdir)/anunt_temp.$timestamp"
	set file [open $black(add_file) r]
	set size [file size $black(add_file)]
	set data [split [read $file $size] \n]
	close $file
foreach line $data {
	set read_chan [lindex [split $line] 0]
	set enc_chan [encoding convertfrom utf-8 $read_chan]
	set read_type [lindex [split $line] 1]
if {[string match -nocase $enc_chan $chan] && [string match -nocase $read_type "ANUNT"]} {
	set msg_num [lindex [split $line] 2]
	set message [join [lrange [split $line] 3 end]]
lappend anuntlist($msg_num) $message
	}
}
	set tempwrite [open $temp w]
foreach msg [lsort -integer -increasing [array names anuntlist]] {
	puts $tempwrite "$msg [join $anuntlist($msg)]"
	}
	close $tempwrite
	set file [open $temp "r"]
	set w [read -nonewline $file]
	close $file
	set data [split $w "\n"]
	file delete $temp
	module:getinfo $nick $host $hand $chan $chan1 $type $data "anunt" "0" $number
}

del {
	
if {![regexp {^[0-9]} $number]} {
if {$type == "0"} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr "anunt"
}
if {$type == "1"} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_nick "anunt"
}
if {$type == "2"} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_priv "anunt"
}
	return
}
	set ret [find:num $number $chan "ANUNT"]
if {$ret == 0} { 
	blacktools:tell $nick $host $hand $chan $chan1 anunt.13 $number
	return
}
	set file [open $black(add_file) "r"]
	set timestamp [clock format [clock seconds] -format {%Y%m%d%H%M%S}]
	set temp "$black(tempdir)/anunt_temp.$timestamp"
	set tempwrite [open $temp w]
while {[gets $file line] != -1} {
	set read_num [lindex [split $line] 2]
	set read_chan [lindex [split $line] 0]
	set enc_chan [encoding convertfrom utf-8 $read_chan]
	set read_type [lindex [split $line] 1]
if {[string equal $number $read_num] && [string equal -nocase $enc_chan $chan] && [string equal -nocase $read_type "ANUNT"]} {
	continue
} else {
	puts $tempwrite $line
		}	 
    }
	close $tempwrite
	close $file
    file rename -force $temp $black(add_file)

	blacktools:tell $nick $host $hand $chan $chan1 anunt.10 $number
		}
	}
}

proc anuntpublic:show {chans} {
global black
	set channels ""
foreach chan $chans {
if {[validchan $chan]} {
	lappend channels $chan
	}
}
if {$channels != ""} {
		anunt:time $channels 0
	}
}

proc anunt:time {channels counter} {
	global black
	set chan [lindex $channels $counter]
	set cc [expr $counter + 1]
if {$chan != ""} {
	anunt:show $chan
} 
if {[lindex $channels $cc] == ""} {
	return
} else {
	anunt:time $channels $cc
	}
}

proc anunt:show {chan} {
	global black botnick
	set replace(%botnick%) $botnick
	set replace(%chan%) $chan
if {[info exists black(lastaction:$chan)]} {
	set total_anunt 0
	set unixtime [unixtime]
if {[setting:get $chan anunt-showtime] != ""} {
	set return_time [time_return_minute [setting:get $chan anunt-showtime]]
} else {
	set return_time [time_return_minute $black(anunttime)]
}
	set time [expr [expr [expr $return_time * $black(entry:shown)] * 60] + $unixtime]
if {[expr $unixtime - $black(lastaction:$chan)] > [expr $time - $unixtime]} {
	return
	}
} else { return }
	set timestamp [clock format [clock seconds] -format {%Y%m%d%H%M%S}]
	set temp_dir "$black(tempdir)/anunt_temp.$timestamp"
if {![file exists $temp_dir]} {
	set file [open $temp_dir w]
	close $file
}
	set file [open $black(add_file) r]
	set size [file size $black(add_file)]
	set data [split [read $file $size] \n]
	close $file
if {$data != ""} {
	set file [open $temp_dir "a"]
foreach line $data {
	set read_chan [lindex [split $line] 0]
	set enc_chan [encoding convertfrom utf-8 $read_chan]
	set read_type [lindex [split $line] 1]
if {[string match -nocase $enc_chan $chan] && [string match -nocase $read_type "ANUNT"]} {
	puts $file [lrange [split $line] 3 end]
	set total_anunt [expr $total_anunt + 1]
		}
	}
	close $file
}
	set file [open $temp_dir "r"]
	set data [read -nonewline $file]
	close $file
if {$data != ""} {

if {![info exists black(anuntshow:$chan)]} {
	set black(anuntshow:$chan) 0
}
	set lines [split $data "\n"]
	set line [lindex $lines $black(anuntshow:$chan)]
	
if {$line == ""} { 
	set black(anuntshow:$chan) 0
	set line [lindex $lines $black(anuntshow:$chan)]
}
	set split_line [split $line "~"]
	set black(anuntshow:$chan) [expr $black(anuntshow:$chan) + 1]
foreach mes $split_line {
	set mes [string map [array get replace] $mes]
	set encoded [encoding convertfrom utf-8 $mes]
	
if {$black(anunthow) == "1"} {
	puthelp "PRIVMSG $chan :\001ACTION \[$black(anuntshow:$chan)/$total_anunt\] [join $encoded]\001"
} else { 
	puthelp "PRIVMSG $chan :\[$black(anuntshow:$chan)/$total_anunt\] [join $encoded]"
			}
		}
	}
	file delete $temp_dir
}

##############
#########################################################################
##   END                                                               ##
#########################################################################
