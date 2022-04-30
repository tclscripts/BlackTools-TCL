#########################################################################
##          BlackTools - The Ultimate Channel Control Script           ##
##                    One TCL. One smart Eggdrop                       ##
#########################################################################
###########################   CLONESCAN TCL   ###########################
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

proc scanner:process {nick host hand chan chan1 type} {
global botnick black
	set cmd_status [btcmd:status $chan $hand "clonescan" 0]
if {$cmd_status == "1"} { 
	return 
}
	array set clones [list]
	if {$chan == ""} {
switch $type {
	0 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr "clonescan"
	}
	1 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_nick "clonescan"
	}
	2 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_priv "clonescan"
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
	blacktools:tell $nick $host $hand $chan $chan1 clonescan.11 none
	clonescan:act $chan $nick $host $hand $chan1 0 0
}

proc clonescan:timer {chans} {
	global black
	set type 1
foreach chan $chans {
if {[validchan $chan]} {
	lappend channels $chan
		}
	}
if {$channels != ""} {
	clonescan:act $channels "nick" "" "" "chan1" $type 0
	}
}

proc clonescan:act {channels nick h hand chan1 type counter} {
	global black
	set chan [lindex $channels $counter]
	set cc [expr $counter + 1]
	set found_clones 0
	set found_mask ""
	set theclones ""
	array set clones [list]
if {$chan != ""} {
	set replace(%chan%) $chan
	set getlang [string tolower [setting:get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
if {[setting:get $chan clonescan-maxclone] == "0" || [setting:get $chan clonescan-maxclone] == ""} {
	set maxclone $black(maxclone)
} else { set maxclone [setting:get $chan clonescan-maxclone] }
if {$maxclone < "2"} { return }
foreach user [chanlist $chan] {
	set host [string tolower [lindex [split [getchanhost $user $chan] @] 1]]
	set findword [prot:findword $chan "CLONESCAN-EXCEPT" $host]
if {$findword == "1"} {
	continue
}
if {[string match "*undernet.org*" $host]} {
	continue
}

	set replace(%host%) $host
	lappend clones($host) $user
}
foreach clone [array names clones] {
	set userlist [join $clones($clone)]
if {[llength [split $userlist]] >= $maxclone} {
	set found_clones 1
	lappend found_mask $clone
	lappend theclones $clones($clone)
if {$type == "0"} {
	blacktools:tell $nick $h $hand $chan $chan1 clonescan.10 "[llength [split $userlist]] $clone [join $clones($clone) ", "]"
		}
	}
}
if {$found_clones == "1"} {
if {$type == "1"} {
	set replace(%msg.1%) [llength [split $theclones]]
	set replace(%msg.2%) $found_mask
	set replace(%msg.7%) [join $theclones " ,"]
	set replace(%chan%) $chan
	set text [black:color:set "" $black(say.$getlang.clonescan.10)]
	set message [string map [array get replace] $text]
	putserv "NOTICE @$chan :$message"
foreach m $found_mask {
	set mask "*!*@$m"
	blacktools:banner:2 $nick "CLONESCAN" $chan $chan1 $mask "0" ""
}
	who:chan $chan
		}
	}
}

if {([lindex $channels $cc] != "") && ($type == "1")} {
	utimer 5 [list clonescan:act $channels $nick $h $hand $chan1 $type $cc]
		}
if {($type == "0") && ($found_clones == "0")} {
	blacktools:tell $nick $h $hand $chan $chan1 clonescan.2 none
	}
}

##############
#########################################################################
##   END                                                               ##
#########################################################################
