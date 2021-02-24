#########################################################################
##          BlackTools - The Ultimate Channel Control Script           ##
##                    One TCL. One smart Eggdrop                       ##
#########################################################################
#############################   TOPIC TCL   #############################
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

proc topic:get {chan} {
	global black
	set getline ""
	set file [open $black(join_file) r]
while {[gets $file line] != -1} {
	set read_modul [lindex [split $line] 0]
	set read_chan [lindex [split $line] 1]
if {[string equal -nocase $read_modul "TOPIC"] && [string equal -nocase $chan $read_chan]} {	
	set read_msg [join [lrange [split $line] 2 end]]
	set getline [encoding convertfrom utf-8 $read_msg]
	continue
		}
	}
	close $file
	return $getline
}

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
	set url [join [setting:get $chan url]]
if {$url != ""} {
	set chantopic [string map [list "($url)" ""] $chantopic]
}
if {![string equal -nocase [concat [color:filter $chantopic]] [concat [color:filter $gettopic]]]} {
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

##############
#########################################################################
##   END                                                               ##
#########################################################################
