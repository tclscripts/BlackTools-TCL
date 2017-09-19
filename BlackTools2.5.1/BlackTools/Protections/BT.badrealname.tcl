#########################################################################
##          BlackTools - The Ultimate Channel Control Script           ##
##                    One TCL. One smart Eggdrop                       ##
#########################################################################
#########################   BADREALNAME TCL   ###########################
#########################################################################
##						                       ##
##     BlackTools  : http://blacktools.tclscripts.net	               ##
##     Bugs report : http://www.tclscripts.net/	                       ##
##     Online Help : irc://irc.undernet.org/tcl-help 	               ##
##                   #TCL-HELP / UnderNet                              ##
##                   You can ask in english or romanian                ##
##					                               ##
#########################################################################

proc badrealname:protect:join {nick host hand chan} {
global botnick black
	set ::cchan $chan
	set ::nnick $nick
	set ::hhost $host
	set handle [nick2hand $nick]
if {[setting:get $chan badrealname]} {
if {[isbotnick $nick]} {
	return
}
if {![botisop $chan] && ![setting:get $chan xonly]} { return }
if {[matchattr $handle $black(exceptflags) $chan]} { return }
if {[onchan $nick $chan]} {
	putquick "WHOIS $nick"
	bind RAW - 311 badrealname:protect
		}
	}
}

proc badrealname:protect { from keyword arguments } {
global botnick black
	set chan $::cchan
	set nick $::nnick	
	set host $::hhost
	set chan1 $chan
	set found_realname ""
	set fullname [string range [join [lrange $arguments 5 end]] 1 end]
	set check_word [check:file:word $chan $fullname "badrealname"]
if {$check_word != "0"} {
	set found_realname $check_word
}
  foreach realname $black(badfwords) {
if {[string match -nocase $realname $fullname]} {
	set found_realname $realname
	}
}
if {$found_realname != ""} {
	blacktools:banner:2 $nick "badrealname:$found_realname" $chan $chan1 $host "0"
if {[link:status $chan] == "1"} {
	foreach c [link:chan:get $chan] {
	blacktools:banner:2 $nick "badrealname:$found_realname" $c $c $host "1"
		}
	}	
}
	unbind RAW - 311 badrealname:protect
}

proc badrealname:module {nick host hand chan arg} {
	global black lastbind
	set type 0
	set chan1 "$chan"
	set why [lindex [split $arg] 0]
	set badf [join [lrange [split $arg] 1 end]]
	set number [lindex [split $arg] 1]
if {[regexp {^[&#]} $why] && [matchattr $hand nmo|M $why]} {
	set chan "$why"
	set why [lindex [split $arg] 1]
	set badf [join [lrange [split $arg] 2 end]]
	set number [lindex [split $arg] 2]
}
	set return [blacktools:mychar $lastbind $hand]
if {$return == "0"} {
		return
}
	prot:module:process $nick $host $hand $chan $chan1 $why $badf $type $number "badrealname"
}

##############
#########################################################################
##   END                                                               ##
#########################################################################