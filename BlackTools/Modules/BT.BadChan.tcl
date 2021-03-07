#########################################################################
##          BlackTools - The Ultimate Channel Control Script           ##
##                    One TCL. One smart Eggdrop                       ##
#########################################################################
###########################   BADCHAN TCL   #############################
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

bind RAW - 319 badchan:execute
bind RAW - 401 badchan:nosuchnick

###
proc badchanpublic:join {nick host hand chan} {
	global black badchan
if {![validchan $chan]} { return }
if {[setting:get $chan antibadchan]} {
if {[matchattr $hand $black(exceptflags) $chan]} {
	return
}
if {[isbotnick $nick]} { return }

if {(![botisop $chan]) && (![setting:get $chan xonly])} { return }
	set flood_protect [badchan:flood:prot $chan $host]
if {$flood_protect == "1"} {
	return
}
	set banmask [return_mask [return_host_num "badchan" $chan [getchanhost $nick $chan]] [getchanhost $nick $chan] $nick]
if {[info exists badchan(checkagain:$banmask:$chan)]} {return}
	putserv "WHOIS $nick"
	set ::badchan($nick) $chan
	set black(badchan:check:$nick:$chan) [list $chan $banmask]
	}
}

###
proc badchan:check:again {nick chan banmask} {
	global black badchan
	putserv "WHOIS $nick"
	set black(badchan:check:$nick:$chan) [list $chan $banmask]
	set ::badchan($nick) $chan
}

###
proc badchan:unset {nick chan banmask} {
	global black badchan
if {[info exists black(badchan:check:$nick:$chan)]} {
	unset black(badchan:check:$nick:$chan)
}
if {[info exists badchan(checkagain:$banmask:$chan)]} {
	unset badchan(checkagain:$banmask:$chan)
}
if {[info exists badchan($banmask:$chan)]} {
	unset badchan($banmask:$chan)
}
if {[info exists badchan(channels:$banmask:$chan)]} {
	unset badchan(channels:$banmask:$chan)
		}
if {[info exists black(badchan:check:$nick:$chan)]} {
	unset black(badchan:check:$nick:$chan)
	}
if {[info exists ::badchan($nick)]} {
	unset ::badchan($nick)
	}
}

###
proc badchan:nosuchnick {from keyword arguments} {
	global black badchan
	set nick [lindex [split $arguments] 1]
if {![info exists ::badchan($nick)]} {
	return
}
	set chan $::badchan($nick)
if {[info exists black(badchan:check:$nick:$chan)]} {
	set banmask [lindex $black(badchan:check:$nick:$chan) 1]
	badchan:unset $nick $chan $banmask
	}
}

###
proc badchan:execute {from keyword arguments} {
global botnick badchan black
	set cmd "badchan"
	set arguments [split $arguments]
	set nick [lindex $arguments 1]
if {![info exists ::badchan($nick)]} {
	return
}
	set chan $::badchan($nick)
	set file_found 0
	
if {[info exists black(badchan:check:$nick:$chan)]} {set banmask [lindex $black(badchan:check:$nick:$chan) 1]} else {return}
if {![validchan $chan]} {return}
if {![onchan $nick $chan]} {
	badchan:unset $nick $chan $banmask
	return
}
	set chan1 $chan
	set show_nick [lindex $arguments 1]
	set channels [string tolower [lrange $arguments 2 end]]
	set text [join [check:badchan:except $channels $chan]]
	set getlang [string tolower [setting:get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
	set bl_protect [blacktools:protect $nick $chan]
if {$bl_protect == "1"} { 
	badchan:unset $nick $chan $banmask
	return 
}
	set file [open $black(add_file) r]
	set size [file size $black(add_file)]
	set data [split [read $file $size] \n]
	close $file
foreach line $data {
	set mainchan [lindex [split $line] 0]
	set read_type [lindex [split $line] 1]
if {([string equal -nocase $chan $mainchan] || [string equal -nocase "GLOBAL" $mainchan]) && ([string equal -nocase $read_type "BADCHAN"] || [string equal -nocase $read_type "BADCHAN:REGEX"])} {
		set readchan [lindex [split $line] 3]
		set encoded [encoding convertfrom utf-8 $readchan]
foreach c $text {
	set ch [string trimleft $c ":~@+"]
if {[string match -nocase $encoded $ch] && [string equal -nocase $read_type "BADCHAN"]} {
	set file_found 1
	set reason [lrange [split $line] 4 end]
	set badchan($banmask:$chan) $reason
	set badchan(channels:$banmask:$chan) $ch
	break
} elseif {[string equal -nocase $read_type "BADCHAN:REGEX"]} {
if {[regexp "$readchan" $ch]} {
	set file_found 1
	set reason [lrange [split $line] 4 end]
	set badchan($banmask:$chan) $reason
	set badchan(channels:$banmask:$chan) $ch
	break
				}
			}
		}
	}
}
if {$file_found == "0"} {
foreach defchan $black(badcchannels) {
	set encoded [encoding convertfrom utf-8 $defchan]
foreach c $text {
	set ch [string trimleft $c ":@+"]
	set ch [check:except $ch $chan $black(badcchannels) $black(exceptchannels) "BADCHAN"]
if {[string match -nocase $encoded $ch]} {
	set badchan(channels:$banmask:$chan) $ch
	set badchan($banmask:$chan) $black(say.$getlang.badchan.5)
	break
			}
		}
	}
}
if {[info exists badchan($banmask:$chan)]} {
if {[string equal -nocase $badchan($banmask:$chan) $black(say.$getlang.badchan.5)]} {
if {[setting:get $chan badchan-reason] != ""} {
	set getreason [join [setting:get $chan badchan-reason]]
} else {
	set getreason $black(say.$getlang.badchan.5)
	}
} else {
	set getreason [join $badchan($banmask:$chan)]
}

if {[info exists badchan(checkagain:$banmask:$chan)]} {
if {[info exists badchan($banmask:$chan)]} {
	blacktools:banner:2 $nick "BADCHAN,[encoding convertto utf-8 $badchan(channels:$banmask:$chan)]" $chan $chan1 [getchanhost $nick $chan] "0" ""
	who:chan $chan
if {[setting:get $chan showbadchan]} {
	set replace(%nick%) $show_nick
	set replace(%chans%) $badchan(channels:$banmask:$chan)
	set mes [string map [array get replace] $black(say.$getlang.badchan.44)]
	putserv "NOTICE @$chan :$mes"
}
	badchan:unset $nick $chan $banmask
	return
}
	badchan:unset $nick $chan $banmask
	return
	}
}
if {[info exists badchan($banmask:$chan)]} {
if {[setting:get $chan badchan-bmethod] == "0" || [setting:get $chan badchan-bmethod] == ""} {
	set bmethod $black(badcbanmethod)
} else { set bmethod [setting:get $chan badchan-bmethod] }
if {$bmethod == "2"} {
	blacktools:banner:2 $nick "BADCHAN,[encoding convertto utf-8 $badchan(channels:$banmask:$chan)]" $chan $chan1 [getchanhost $nick $chan] "0" ""
	who:chan $chan
if {[setting:get $chan showbadchan]} {
	set replace(%nick%) $nick
	set replace(%chans%) $badchan(channels:$banmask:$chan)
	set text [black:color:set "" $black(say.$getlang.badchan.44)]
	set text [join $text]
	set mes [string map [array get replace] $text]
	putserv "NOTICE @$chan :$mes"
}
	badchan:unset $nick $chan $banmask
	return
}
	set replace(%badchans%) [join $badchan(channels:$banmask:$chan) ", "]
	set text [black:color:set "" $black(say.$getlang.badchan.40)]
	set reply [join $text]
if {[setting:get $chan badchan-banwait] == ""} {
	set wait_time $black(badcbanwait)
	utimer $black(badcbanwait) [list badchan:check:again $nick $chan $banmask]
} else {
	set wait_time [setting:get $chan badchan-banwait]
	utimer $wait_time [list badchan:check:again $nick $chan $banmask]
}
	set replace(%time%) $wait_time
	set message [string map [array get replace] $reply]
	putquick "PRIVMSG $nick :\[$chan\] $message"
	badchan:unset $nick $chan $banmask
	set badchan(checkagain:$banmask:$chan) 1
} else {
	badchan:unset $nick $chan $banmask
	}
}

###
proc badchan:getlist {nick host hand chan chan1 type next} {
	global black
	set userlang [getuser $hand XTRA OUTPUT_LANG]
if {$userlang == ""} { set userlang "[string tolower $black(default_lang)]" }
	set timestamp [clock format [clock seconds] -format {%Y%m%d%H%M%S}]
	set temp "$black(tempdir)/badchan_temp.$timestamp"
	array set badchanlist [list]
	set file [open $black(add_file) r]
	set size [file size $black(add_file)]
	set data [split [read $file $size] \n]
	close $file
foreach line $data {
	set read_chan [lindex [split $line] 0]
	set enc_chan [encoding convertfrom utf-8 $read_chan]
	set read_type [lindex [split $line] 1]
if {[string match -nocase $enc_chan $chan] && ([string match -nocase $read_type "BADCHAN"] || [string match -nocase $read_type "BADCHAN:REGEX"])} {
	set msg_num [lindex [split $line] 2]
	set bdchan [lindex [split $line] 3]
if {[regexp {^[+]} $bdchan]} {
	set text [black:color:set $hand $black(say.$userlang.gl.protexcept)]
	lappend badchanlist($msg_num) [string map {"+" ""} $bdchan] \[$text\]
} elseif {$read_type == "BADCHAN:REGEX"} {
	set text [black:color:set $hand $black(say.$userlang.badchan.46)]
	lappend badchanlist($msg_num) $bdchan \[$text\]
} else {
	lappend badchanlist($msg_num) $bdchan
		}
	}
}
	set tempwrite [open $temp w]
foreach msg [lsort -integer -increasing [array names badchanlist]] {
	puts $tempwrite "$msg [join $badchanlist($msg)]"
}
	close $tempwrite
	set file [open $temp r]
	set w [read -nonewline $file]
	close $file
	set data [split $w "\n"]
	file delete $temp
if {[string equal -nocase $chan "GLOBAL"]} {
	module:getinfo $nick $host $hand $chan $chan1 $type $data "badchan" "1" $next
	} else {
	module:getinfo $nick $host $hand $chan $chan1 $type $data "badchan" "0" $next
	}
}

###
proc badchan:delchan {nick host hand chan chan1 number} {
	global black

if {![regexp {^[0-9]} $number]} {
	if {$type == "0"} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr "badchan"
}
if {$type == "1"} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_nick "badchan"
}
	return
}
	set ret [badchan:exists $chan $number]
if {$ret == 0} {
	blacktools:tell $nick $host $hand $chan $chan1 badchan.17 $number
	return
}
	set timestamp [clock format [clock seconds] -format {%Y%m%d%H%M%S}]
	set temp "$black(tempdir)/badchan_temp.$timestamp"
	set file [open $black(add_file) r]
	set size [file size $black(add_file)]
	set data [split [read $file $size] \n]
	close $file
	set tempwrite [open $temp w]
foreach line $data {
if {$line != ""} {
	set read_num [lindex [split $line] 2]
	set read_chan [lindex [split $line] 0]
	set read_type [lindex [split $line] 1]
	set enc_chan [encoding convertfrom utf-8 $read_chan]
if {[string equal $number $read_num] && [string equal -nocase $chan $enc_chan] && ([string equal -nocase $read_type "BADCHAN"] || [string equal -nocase $read_type "BADCHAN:REGEX"])} {
	continue
} else {
	puts $tempwrite $line
		}
    }
}
	close $tempwrite
    file rename -force $temp $black(add_file)
if {[string equal -nocase $chan "GLOBAL"]} {
	blacktools:tell $nick $host $hand $chan $chan1 badchan.19 $number
} else {
	blacktools:tell $nick $host $hand $chan $chan1 badchan.18 $number
	}
}

###
proc badchan:exists {chan num} {
	global black
	set found_it 0
	set file [open $black(add_file) r]
while {[gets $file line] != -1} {
	set read_chan [lindex [split $line] 0]
	set read_type [lindex [split $line] 1]
	set read_num [lindex [split $line] 2]
	set enc_chan [encoding convertfrom utf-8 $read_chan]
if {[string equal -nocase $enc_chan $chan] && ([string equal -nocase $read_type "BADCHAN"] || [string equal -nocase $read_type "BADCHAN:REGEX"]) && [string equal $read_num $num]} {
	set found_it 1
	break
		}
	}
	close $file
	return $found_it
}

###
proc badchan:find:num {chan} {
	global black
	set nums ""
	set file [open $black(add_file) r]
while {[gets $file line] != -1} {
	set read_chan [lindex [split $line] 0]
	set read_type [lindex [split $line] 1]
	set read_num [lindex [split $line] 2]
	set enc_chan [encoding convertfrom utf-8 $read_chan]
if {[string equal -nocase $enc_chan $chan] && ([string equal -nocase $read_type "BADCHAN"] || [string equal -nocase $read_type "BADCHAN:REGEX"])} {
	lappend nums $read_num
	}
}
	close $file
if {$nums != ""} {
	set sort [blacktools:quicksort [join $nums]]
	return [expr [lindex $sort end] + 1]
} else {
	return 1
	}
}

###
proc badchan:process {nick host hand chan chan1 why bdchan type1 type reason} {
	global botnick black
	set cmd_status [btcmd:status $chan $hand "badchan" 0]
if {$cmd_status == "1"} {
	return
}
if {[matchattr $hand q]} { blacktools:tell $nick $host $hand $chan $chan1 gl.glsuspend none
	return
}
if {[matchattr $hand -|q $chan]} { blacktools:tell $nick $host $hand $chan $chan1 gl.suspend none
	return
}
	set show_bdchan $bdchan
	set cmd "badchan"
	set getlang [string tolower [setting:get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }

switch $why {
	on {
	setting:set $chan +antibadchan ""
	blacktools:tell $nick $host $hand $chan $chan1 badchan.6 none
	if {[setting:get $chan badchan-scantime] != ""} {
	set time [setting:get $chan badchan-scantime]
		} else {
	set time $black(badchan:scantime)
		}
	set scan_time [time_return_minute $time]
	set black(badchan:$chan:timer_start) $scan_time
}

off {
	setting:set $chan -antibadchan ""
	blacktools:tell $nick $host $hand $chan $chan1 badchan.8 none
if {[info exists black(badchan:$chan:timer_start)]} {
	unset black(badchan:$chan:timer_start)
	}
if {[info exists black(badchan:counter:$chan)]} {
	unset black(badchan:counter:$chan)
	}
}
regex {
if {![validchan $chan] && ![string equal -nocase $type "global"]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.novalidchan none
	return
}
if {![regexp {^[&#]} $bdchan]} {
switch $type1 {
	0 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr "badchan"
	}
	1 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_nick "badchan"
	}
	2 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_priv "badchan"
		}
	}
	return
}
	set findchan [prot:findbadchan $chan $bdchan]
if {$findchan == "1"} {
	blacktools:tell $nick $host $hand $chan $chan1 badchan.1 $show_bdchan
	return
}
if {$reason == ""} {
	set reason "$black(say.$getlang.badchan.5)"
}
	set reason [join [encoding convertto utf-8 $reason]]
if {[matchattr $hand mn] && [string equal -nocase $type "global"]} {
	set findchan [prot:findbadchan "GLOBAL" $bdchan]
if {$findchan == "1"} {
	blacktools:tell $nick $host $hand $chan $chan1 badchan.42 $show_bdchan
	return
}
	set num [badchan:find:num "GLOBAL"]
	set file [open $black(add_file) a]
	puts $file "GLOBAL BADCHAN:REGEX $num $bdchan $reason"
	close $file
	blacktools:tell $nick $host $hand $chan $chan1 badchan.47  "$show_bdchan $num"
	return
}
	set num [badchan:find:num $chan]
	set encoded [encoding convertto utf-8 $bdchan]
	set enc_chan [encoding convertto utf-8 $chan]
	set file [open $black(add_file) a]
	puts $file "$enc_chan BADCHAN:REGEX $num $encoded $reason"
	close $file
	blacktools:tell $nick $host $hand $chan $chan1 badchan.48  "$bdchan $num"
}

add {
if {![validchan $chan] && ![string equal -nocase $type "global"]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.novalidchan none
	return
}
if {![regexp {^[+&#]} $bdchan]} {
switch $type1 {
	0 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr "badchan"
	}
	1 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_nick "badchan"
	}
	2 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_priv "badchan"
		}
	}
	return
}
	set findchan [prot:findbadchan $chan $bdchan]
if {$findchan == "1"} {
	blacktools:tell $nick $host $hand $chan $chan1 badchan.1 $show_bdchan
	return
}

if {$reason == ""} {
	set reason "$black(say.$getlang.badchan.5)"
}
	set reason [join [encoding convertto utf-8 $reason]]
if {[matchattr $hand mn] && [string equal -nocase $type "global"]} {
	set findchan [prot:findbadchan "GLOBAL" $bdchan]
if {$findchan == "1"} {
	blacktools:tell $nick $host $hand $chan $chan1 badchan.42 $show_bdchan
	return
}
	set num [badchan:find:num "GLOBAL"]
	set file [open $black(add_file) a]
	puts $file "GLOBAL BADCHAN $num $bdchan $reason"
	close $file
	blacktools:tell $nick $host $hand $chan $chan1 badchan.11  "$show_bdchan $num"
	return
}
	set num [badchan:find:num $chan]
	set encoded [encoding convertto utf-8 $bdchan]
	set enc_chan [encoding convertto utf-8 $chan]
	set file [open $black(add_file) a]
	puts $file "$enc_chan BADCHAN $num $encoded $reason"
	close $file
if {[regexp {^[+]} $bdchan]} {
	blacktools:tell $nick $host $hand $chan $chan1 badchan.45  "[string map {"+" ""} $bdchan] $num"
} else {
	blacktools:tell $nick $host $hand $chan $chan1 badchan.12  "$bdchan $num"
	}
}

list {
if {![validchan $chan] && ![string equal -nocase $bdchan "global"]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.novalidchan none
	return
}
if {[string equal -nocase $bdchan "global"] && [matchattr $hand nm]} {
	badchan:getlist $nick $host $hand "GLOBAL" $chan1 $type1 $type
	return
	}
	badchan:getlist $nick $host $hand $chan $chan1 $type1 $bdchan
}

del {
if {![validchan $chan] && ![string equal -nocase $type "global"]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.novalidchan none
	return
}
if {![regexp {^[0-9]} $bdchan]} {
switch $type1 {
	0 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr "badchan"
	}
	1 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_nick "badchan"
	}
	2 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_priv "badchan"
		}
	}
	return
}
if {[string equal -nocase $type "global"] && [matchattr $hand nm]} {
	badchan:delchan $nick $host $hand "GLOBAL" $chan1 $bdchan
	return
}
	badchan:delchan $nick $host $hand $chan $chan1 $bdchan
}

default {
switch $type1 {
	0 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr "badchan"
	}
	1 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_nick "badchan"
	}
	2 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_priv "badchan"
		}
	}
	return
		}
	}
}

###
proc prot:findbadchan {chan word} {
	global black
	set found_it 0
	set file [open $black(add_file) r]
	set size [file size $black(add_file)]
	set data [split [read $file $size] \n]
	close $file
foreach line $data {
	set read_chan [lindex [split $line] 0]
	set enc_chan [encoding convertfrom utf-8 $read_chan]
	set read_type [lindex [split $line] 1]
	set b [lindex [split $line] 3]
	set enc_bchan [encoding convertfrom utf-8 $b]
if {[string match -nocase $enc_chan $chan] && ([string match -nocase $read_type "BADCHAN"] || [string match -nocase $read_type "BADCHAN:REGEX"]) && [string equal -nocase $word $enc_bchan] && ![regexp {^[+]} $read_chan] && ![regexp {^[+]} $word]} {
	set found_it 1
		} elseif {[string match -nocase $enc_chan $chan] && [string match -nocase $read_type "BADCHAN"] && [string equal -nocase $word $enc_bchan] && [regexp {^[+]} $read_chan] && [regexp {^[+]} $word]} {
	set found_it 1
		}
	}
	return $found_it
}

###
proc badchan:flood:prot {chan host} {
	global badchan black
	set number [scan $black(badchan:join:seconds) %\[^:\]]
	set timer [scan $black(badchan:join:seconds) %*\[^:\]:%s]
if {[info exists badchan(flood:$host:$chan:act)]} {
	return 1
}
foreach tmr [utimers] {
if {[string match "*badchan:remove:flood $host $chan*" [join [lindex $tmr 1]]]} {
	killutimer [lindex $tmr 2]
	}
}
if {![info exists badchan(flood:$host:$chan)]} {
	set badchan(flood:$host:$chan) 0
}
	incr badchan(flood:$host:$chan)
	utimer $timer [list badchan:remove:flood $host $chan]
if {$badchan(flood:$host:$chan) >= $number} {
	set badchan(flood:$host:$chan:act) 1
	utimer [expr $black(badchan:floodprot:time) * 60] [list badchan:expire:flood $host $chan]
	return 1
	} else {
	return 0
	}
}

###
proc badchan:remove:flood {host chan} {
	global badchan
if {[info exists badchan(flood:$host:$chan)]} {
	unset badchan(flood:$host:$chan)
	}
}

###
proc badchan:expire:flood {host chan} {
	global badchan
if {[info exists badchan(flood:$host:$chan:act)]} {
	unset badchan(flood:$host:$chan:act)
	}
}

###
proc badchan:scantimer {channels} {
	global black badchan
	set badchanscan_list ""
foreach chan $channels {
if {[validchan $chan]} {
foreach nick [chanlist $chan] {
	set host [getchanhost $nick $chan]
	set hand [nick2hand $nick]
if {[isbotnick $nick]} { continue  }
if {[matchattr $hand $black(exceptflags) $chan]} {
	continue
}
if {[info exists badchan(flood:$host:$chan:act)]} {
	continue
}
	set banmask [return_mask [return_host_num "badchan" $chan $host] $host $nick]
if {[info exists badchan(checkagain:$banmask:$chan)]} {continue}
	set bl_protect [blacktools:protect $nick $chan]
if {$bl_protect == "1"} { continue }
	set position [lsearch -exact [string tolower $badchanscan_list] "[string tolower $nick]:[string tolower $chan]:$banmask"]
if {$position < 0} {
	lappend badchanscan_list "$nick:$chan:$banmask"
				}
			}
		}
	}
if {$badchanscan_list != ""} {
	badchan:scan $badchanscan_list
	}
}

###
proc badchan:scan {badchanlist} {
	global black badchan
if {![info exists black(badchan:scan:counter)]} {
	set black(badchan:scan:counter) 0
}
	set person [lindex $badchanlist $black(badchan:scan:counter)]
if {$person == ""} {
	unset black(badchan:scan:counter)
	return
}
	incr black(badchan:scan:counter)
	set split_person [split $person ":"]
	set nick [lindex $split_person 0]
	set chan [lindex $split_person 1]
	set banmask [lindex $split_person 2]
if {![info exists black(badchan:check:$nick:$chan)]} {
	set black(badchan:check:$nick:$chan) [list $chan $banmask]
	putserv "WHOIS $nick"
	set ::badchan($nick) $chan
}
	utimer 10 [list badchan:scan $badchanlist]
}

###
proc badchan:nickchange {nick host hand chan newnick} {
	global badchan
	set found_time 0
	set current_time ""
foreach tmr [utimers] {
if {[string match -nocase "*badchan:check:again $nick $chan*" [join [lindex $tmr 1]]]} {
	set current_time [get:timer:time $nick $chan]
	set found_time 1
killutimer [lindex $tmr 2]
	}
}
if {$found_time == "1"} {
	utimer $current_time [list badchan:check:again $newnick $chan]
	}
}

###
proc get:timer:time {nick chan} {
	global black
	set time_left 0
foreach tmr [utimers] {
if {[string match -nocase "*badchan:check:again $nick $chan*" [join [lindex $tmr 1]]]} {
	set time_left [lindex $tmr 0]
	}
}
	return $time_left
}

###
proc check:badchan:except {text chan} {
	global black
	set counter_word 0
	set counter_except 0
	set found_it 0
foreach word $text {
	set w [string trimleft $word ":@+"]
foreach ex $black(exceptchannels) {
if {[string match -nocase $ex $w] || [string match -nocase $w $ex]} {
	set position [lsearch -exact [string tolower $text] [string tolower $word]]
if {$position > -1} {
	set text [lreplace $text $position $position]
			}
		}
	}
}
	set file [open $black(add_file) r]
	set size [file size $black(add_file)]
	set data [split [read $file $size] \n]
	close $file
foreach line $data {
if {$line != ""} {
	set channel [lindex [split $line] 0]
	set getype [lindex [split $line] 1]
	set badchan [lindex [split $line] 3]
if {[string equal -nocase "BADCHAN" $getype] && [regexp {^[+]} $badchan]} {
if {[string equal -nocase $channel $chan] } {
	set badchan [string map {"+" ""} $badchan]
foreach word $text {
	set w [string trimleft $word ":@+"]
if {[string match -nocase $badchan $w] || [string match -nocase $w $badchan]} {
	set position [lsearch -exact [string tolower $text] [string tolower $word]]
if {$position > -1} {
	set text [lreplace $text $position $position]
						}
					}
				}
			}
		}
	}
}
	return $text
}

##############
#########################################################################
##   END                                                               ##
#########################################################################
