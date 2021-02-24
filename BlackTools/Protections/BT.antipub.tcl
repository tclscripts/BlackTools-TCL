#########################################################################
##          BlackTools - The Ultimate Channel Control Script           ##
##                    One TCL. One smart Eggdrop                       ##
#########################################################################
##########################   ANTIPUB TCL   ##############################
#########################################################################
##						                       ##
##   BlackTools  : http://blacktools.tclscripts.net		       ##
##   Bugs report : http://www.tclscripts.net/	                       ##
##   GitHub page : https://github.com/tclscripts/BlackToolS-TCL	       ##
##   Online Help : irc://irc.undernet.org/tcl-help 	  	       ##
##                 #TCL-HELP / UnderNet                                ##
##                 You can ask in english or romanian                  ##
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
if {[matchattr $handle $black(exceptflags) $chan]} { return }
	set bl_protect [blacktools:protect $nick $chan]
if {$bl_protect == "1"} { return }
if {![botisop $chan] && ![setting:get $chan xonly]} { return }
	set text [check:except $text $chan $black(antipubword) $black(antipubexcept) "ANTIPUB"]
	set check_word [check:file:word $chan $text "ANTIPUB"]
if {$check_word != ""} {
	blacktools:banner:1 $nick "ANTIPUB:$check_word" $chan $host [get:banmethod "antipub" $chan] [link:chan:get $chan]
	return 1
	}
}

proc check:except {text chan type except prot} {
	global black
	set text [split $text]
	set counter_word 0
	set counter_except 0
	set found_it 0
	
foreach ex $except {
	set position [lsearch -exact [string tolower $text] [string tolower $ex]]
if {$position > -1} {
	set text [lreplace $text $position $position]
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
	set link [join [lrange [split $line] 3 end]]
foreach word $text {
if {[string equal -nocase $channel $chan] && [string equal -nocase $getype $prot] && [regexp {^[+]} $link] && [string match -nocase [string map {"+" ""} $link] $word]} {
	set position [lsearch -exact [string tolower $text] [string tolower $word]]
if {$position > -1} {
	set text [lreplace $text $position $position]
				}
			}
		}
	}
}
	return $text
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
