#########################################################################
##          BlackTools - The Ultimate Channel Control Script           ##
##                    One TCL. One smart Eggdrop                       ##
#########################################################################
###########################   CHANLINK TCL   ############################
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

proc link:process {nick host hand chan chan1 type what channels delchan} {
	global black
	
if {$what == ""} {
		switch $type {
	0 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr "link"
	}
	1 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_nick "link"
	}
	2 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_priv "link"
		}
	}
}

switch $what {

list {
	set return [link:show]
if {$return == "0"} {
	blacktools:tell $nick $host $hand $chan $chan1 chanlink.5 none
	return
}
	blacktools:tell $nick $host $hand $chan $chan1 chanlink.3 [join $return]
}

reset {
	link:reset
	blacktools:tell $nick $host $hand $chan $chan1 chanlink.2 none
}

all {
	link:set $what
	blacktools:tell $nick $host $hand $chan $chan1 chanlink.4 none
}

del {
if {![validchan $delchan]} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.novalidchan none
	return
}
	set return [link:del $delchan]
if {$return == "1"} {
	blacktools:tell $nick $host $hand $chan $chan1 chanlink.7 $delchan
	} else {
	blacktools:tell $nick $host $hand $chan $chan1 chanlink.8 $delchan
	}
}

default {
	set return [link:set $channels]
	set split_return [split $return ":"]
	set validchan [lindex $split_return 0]
	set notvalid [lindex $split_return 1]
if {$validchan != ""} {
	blacktools:tell $nick $host $hand $chan $chan1 chanlink.1 [join $validchan]
	}
if {$notvalid != ""} {
	blacktools:tell $nick $host $hand $chan $chan1 chanlink.6 [join $notvalid]
			}
		}
	}
}

proc link:show {} {
	global black botnick
	set return [link:get]
if {$return == ""} {
	return 0
	}
	return $return
}

proc link:set {channels} {
	global black botnick
	set validchan ""
	set notvalid ""
if {[string equal -nocase $channels "all"]} {
	foreach chan [channels] {
if {[setting:get $chan chanlink] == "0"} {
	setting:set $chan +chanlink ""
		}
	}
	return 1
}
foreach chan $channels {
if {[validchan $chan]} {
	lappend validchan $chan
if {[setting:get $chan chanlink] == "0"} {
	setting:set $chan +chanlink ""
		}
	} else {
	lappend notvalid $chan
	}
}
	return "$validchan:$notvalid"
}

proc link:reset {} {
	global black botnick
	foreach chan [channels] {
if {[setting:get $chan chanlink]} {
	setting:set $chan -chanlink ""
		}
	}
}

proc link:del {chan} {
	global black
if {[setting:get $chan chanlink]} {
	setting:set $chan -chanlink ""
	return 1
	} else {	
	return 0
	}
}

proc link:get {} {
	global black botnick
	set channels ""
foreach chan [channels] {
if {[setting:get $chan chanlink]} {
	lappend channels $chan
		}
	}
	return $channels
}

proc link:status {chan} {
	global black
if {[setting:get $chan chanlink]} {
	return 1
	} else {
	return 0
	}
}

proc link:chan:get {readchan} {
	global black
	set channels ""
	set readchan [string tolower $readchan]
if {[setting:get $readchan chanlink] == "0"} {
	return ""
}
	foreach chan [string tolower [channels]] {
if {[setting:get $chan chanlink]} {	
if {$readchan != $chan} {
	lappend channels $chan
			}
		}
	}
	return $channels
}

##############
#########################################################################
##   END                                                               ##
#########################################################################
