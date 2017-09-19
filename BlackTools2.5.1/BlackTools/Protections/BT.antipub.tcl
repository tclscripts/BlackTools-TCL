#########################################################################
##          BlackTools - The Ultimate Channel Control Script           ##
##                    One TCL. One smart Eggdrop                       ##
#########################################################################
##########################   ANTIPUB TCL   ##############################
#########################################################################
##						                       ##
##     BlackTools  : http://blacktools.tclscripts.net	               ##
##     Bugs report : http://www.tclscripts.net/	                       ##
##     Online Help : irc://irc.undernet.org/tcl-help 	               ##
##                   #TCL-HELP / UnderNet                              ##
##                   You can ask in english or romanian                ##
##					                               ##
#########################################################################

proc antipub:protect {nick host hand chan arg} {
global black botnick
	set text [color:filter [split $arg]]
	set found_pub 0
	set handle [nick2hand $nick]
	set found_pub ""
	set banword ""
if {![validchan $chan]} { return }
if {[setting:get $chan antipub]} {

if {[matchattr $handle $black(exceptflags) $chan]} { return }
	set bl_protect [blacktools:protect $nick $chan]
if {$bl_protect == "1"} { return }
if {![botisop $chan] && ![setting:get $chan xonly]} { return }
if {[check:except $text $chan $black(antipubword) $black(antipubexcept) "ANTIPUB-EXCEPT"] == "1"} { 
	return
}
	
foreach antipub [string tolower $black(antipubword)] {
if {[string match -nocase $antipub $text]} {
	set found_pub $antipub
			}
		}
if {$found_pub != ""} {
	blacktools:banner:1 $nick "ANTIPUB:$found_pub" $chan $host [get:banmethod "antipub" $chan] [link:chan:get $chan]
		}
	}
}

proc antipub:protect:me {nick host hand chan keyword arg} {
global black
	antipub:protect $nick $host $hand $chan $arg
}

proc check:except {text chan type except prot} {
	global black
	set text [split $text]
	set counter_word 0
	set counter_except 0
	set found_it 0
foreach w $type {
if {[string match -nocase $w $text]} {
	set found_it 1
	}
}
if {$found_it == 0} { return }
	
foreach except $except {
	set position [lsearch -exact [string tolower $text] [string tolower $except]]
if {$position > -1} {
	set text [lreplace $text $position $position]
	}	
}
	set file [open $black(add_file) "r"]
	set database [read -nonewline $file]
	close $file
	set data [split $database "\n"]

foreach line $data {
	set channel [lindex [split $line] 0]
	set getype [lindex [split $line] 1]
	set link [lrange [split $line] 3 end]
	
foreach word $text {
if {[string equal -nocase $channel $chan] && [string equal -nocase $getype $prot] && [string match -nocase $link $word]} {
	set position [lsearch -exact [string tolower $text] [string tolower $word]]
if {$position > -1} {
	set text [lreplace $text $position $position]
			}
		}
	}
}
	
foreach w $type {
if {[string match -nocase $w $text]} {
	return 0
		}
	}
	return 1
}

proc antipub:module {nick host hand chan arg} {
	global black lastbind
	set type 0
	set chan1 "$chan"
	set why [lindex [split $arg] 0]
	set except [join [lrange [split $arg] 1 end]]
	set number [lindex [split $arg] 1]
if {[regexp {^[&#]} $why] && [matchattr $hand nmo|M $why]} {
	set chan "$why"
	set why [lindex [split $arg] 1]
	set except [join [lrange [split $arg] 2 end]]
	set number [lindex [split $arg] 2]
}
	set return [blacktools:mychar $lastbind $hand]
if {$return == "0"} {
		return
}
	prot:module:process $nick $host $hand $chan $chan1 $why $except $type $number "antipub"
}

##############
#########################################################################
##   END                                                               ##
#########################################################################