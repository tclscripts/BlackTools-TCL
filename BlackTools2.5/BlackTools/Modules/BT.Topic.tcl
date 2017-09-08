#########################################################################
##          BlackTools - The Ultimate Channel Control Script           ##
##                    One TCL. One smart Eggdrop                       ##
#########################################################################
#############################   TOPIC TCL   #############################
#########################################################################
##						                       ##
##     BlackTools  : http://blacktools.tclscripts.net	               ##
##     Bugs report : http://www.tclscripts.net/	                       ##
##     Online Help : irc://irc.undernet.org/tcl-help 	               ##
##                   #TCL-HELP / UnderNet                              ##
##                   You can ask in english or romanian                ##
##					                               ##
#########################################################################

proc topic:autotopic {nick host hand chan} {
	global black
if {![validchan $chan]} { return }
if {[setting:get $chan autotopic]} {
	utimer 5 [list  topic:join:act $chan]
	}
}

proc topic:join:act {chan} {
	global black
if {![botisop $chan]} {
	return
}
	set gettopic ""
	set file [open $black(join_file) r]
while {[gets $file line] != -1} {
	set read_modul [lindex [split $line] 0]
	set read_chan [lindex [split $line] 1]
if {[string equal -nocase $read_modul "topic"] && [string equal -nocase $chan $read_chan]} {	
	set read_msg [lrange [split $line] 2 end]
	set gettopic [encoding convertfrom utf-8 $read_msg]
	}
}
	close $file
if {$gettopic != ""} {
	set chantopic [topic $chan]
if {$chantopic != $gettopic} {
	set url [setting:get $chan url]
if {$url != ""} {
	putserv "TOPIC $chan :[join $gettopic] ($url)"
			} else { putserv "TOPIC $chan :[join $gettopic]" }
		}
	}
}

proc topic:return {chan} {
	global black
	set gettopic ""
	set file [open $black(join_file) r]
while {[gets $file line] != -1} {
	set read_modul [lindex [split $line] 0]
	set read_chan [lindex [split $line] 1]
if {[string equal -nocase $read_modul "topic"] && [string equal -nocase $chan $read_chan]} {	
	set read_msg [lrange [split $line] 2 end]
	set gettopic [encoding convertfrom utf-8 $read_msg]
		}
	}
	close $file
	return $gettopic
}

proc topicpublic {nick host hand chan arg} {
	global black lastbind
	set who [lindex [split $arg] 0]
	set modul "topic"
	set type 0
	set chan1 $chan
	set topic [join [lrange [split $arg] 1 end]]
if {[regexp {^[&#]} $who] && [matchattr $hand nmo|M $who]} {
	set chan $who
	set who [lindex [split $arg] 1]
	set topic [join [lrange [split $arg] 2 end]]
	}
	set return [blacktools:mychar $lastbind $hand]
if {$return == "0"} {
		return
}
	othermodule:process $nick $host $hand $chan $chan1 $who $topic $type $modul	
}

##############
#########################################################################
##   END                                                               ##
#########################################################################