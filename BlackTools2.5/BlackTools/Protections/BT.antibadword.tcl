#########################################################################
##          BlackTools - The Ultimate Channel Control Script           ##
##                    One TCL. One smart Eggdrop                       ##
#########################################################################
########################   ANTIBADWORD TCL   ############################
#########################################################################
##						                       ##
##     BlackTools  : http://blacktools.tclscripts.net	               ##
##     Bugs report : http://www.tclscripts.net/	                       ##
##     Online Help : irc://irc.undernet.org/tcl-help 	               ##
##                   #TCL-HELP / UnderNet                              ##
##                   You can ask in english or romanian                ##
##					                               ##
#########################################################################

proc antibadword:protect {nick host hand chan arg} {
global black botnick username
	if {![validchan $chan]} { return }
if {[setting:get $chan antibadword]} {
	set handle [nick2hand $nick]
	set found_word ""
	set matchword ""
	set text [split $arg]
if {![validchan $chan]} { return }
if {![botisop $chan] && ![setting:get $chan xonly]} { return }
if {[matchattr $handle $black(exceptflags) $chan]} { return }
	set bl_protect [blacktools:protect $nick $chan]
if {$bl_protect == "1"} { return }
if {[isbotnick $nick]} { return }
	set check_word [check:file:word $chan $text "BADWORD"]
if {$check_word != ""} {
	blacktools:banner:1 $nick "ANTIBADWORD:$check_word" $chan $host [get:banmethod "antibadword" $chan] [link:chan:get $chan]
	return
}
foreach antibadword [string tolower $black(antibadword)] {
if {[string match -nocase $antibadword $text]} {
	set found_word $antibadword
			}
		}
if {$found_word != ""} {
	blacktools:banner:1 $nick "ANTIBADWORD:$found_word" $chan $host [get:banmethod "antibadword" $chan] [link:chan:get $chan]		
		}
	}
}

proc antibadword:protect:me {nick host hand chan keyword arg} {
global black
antibadword:protect $nick $host $hand $chan $arg
}

proc badword:module {nick host hand chan arg} {
	global black lastbind
	set type 0
	set chan1 "$chan"
	set why [lindex [split $arg] 0]
	set badw [join [lrange [split $arg] 1 end]]
	set number [lindex [split $arg] 1]
if {[regexp {^[&#]} $why] && [matchattr $hand nmo|M $why]} {
	set chan "$why"
	set why [lindex [split $arg] 1]
	set badw [join [lrange [split $arg] 2 end]]
	set number [lindex [split $arg] 2]
}
	set return [blacktools:mychar $lastbind $hand]
if {$return == "0"} {
		return
}
	prot:module:process $nick $host $hand $chan $chan1 $why $badw $type $number "badword"
}

##############
#########################################################################
##   END                                                               ##
#########################################################################