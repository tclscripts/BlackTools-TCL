#########################################################################
##          BlackTools - The Ultimate Channel Control Script           ##
##                    One TCL. One smart Eggdrop                       ##
#########################################################################
########################   ANTIBADWORD TCL   ############################
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

proc antibadword:protect {nick host hand chan arg} {
global black botnick username
	if {![validchan $chan]} { return }
	set handle [nick2hand $nick]
	set found_word ""
	set text [color:filter [split $arg]]
	set split_check ""
	set get_pers ""
if {![validchan $chan]} { return }
if {![botisop $chan] && ![setting:get $chan xonly]} { return }
if {[matchattr $handle $black(exceptflags) $chan]} { return }
	set bl_protect [blacktools:protect $nick $chan]
if {$bl_protect == "1"} { return }
if {[isbotnick $nick]} { return }
	set text [check:except $text $chan $black(antibadword) $black(except_badwords) "BADWORD"]
	set check_word [check:file:word $chan $text "BADWORD"]
if {$check_word != ""} {
if {[regexp {[:]} $check_word]} {
	set split_check [split $check_word ":"]
	set check_word [join [lindex $split_check 0]]
	set get_pers [lindex $split_check 1]
}
if {$get_pers != ""} {
	blacktools:banner:1 $nick "ANTIBADWORD:$check_word" $chan $host [get:banmethod "antibadword:$get_pers" $chan] [link:chan:get $chan]
} else {
	blacktools:banner:1 $nick "ANTIBADWORD:$check_word" $chan $host [get:banmethod "antibadword" $chan] [link:chan:get $chan]
}	
	return 1
	}
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
