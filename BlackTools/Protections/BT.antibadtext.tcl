#########################################################################
##          BlackTools - The Ultimate Channel Control Script           ##
##                    One TCL. One smart Eggdrop                       ##
#########################################################################
########################   ANTIBADTEXT TCL   ############################
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

############################# AntiColor ################################

proc colortext:process {nick host hand chan arg type} {
	global black
if {![validchan $chan]} { return }
	set handle [nick2hand $nick]
if {![botisop $chan] && ![setting:get $chan xonly]} { return }
if {[matchattr $handle $black(exceptflags) $chan]} { return }
if {[isbotnick $nick]} { return }
	set bl_protect [blacktools:protect $nick $chan]
if {$bl_protect == "1"} { return }
switch $type {
anticolor {
	set textfind "\003" 
}

antibold  {
	set textfind "\002"
}

antiunderline {
	set textfind "\037"
	}	
}
if {$type == "anticolor" && $black(anticolor:specific_colors) != ""} {
	foreach c $black(anticolor:specific_colors) {
if {[string match "*$c*" $arg]} {
	blacktools:banner:1 $nick [string toupper "$type"] $chan $host [get:banmethod $type $chan] [link:chan:get $chan]	
	break
		}		
	}
	return
}
if {[string match "*$textfind*" $arg]} {
	blacktools:banner:1 $nick [string toupper "$type"] $chan $host [get:banmethod $type $chan] [link:chan:get $chan]	
	return 1	
	}	
}

proc anticolor:protect {nick host hand chan arg} {
	colortext:process $nick $host $hand $chan $arg "anticolor"
}

############################# AntiBold ################################

proc antibold:protect {nick host hand chan arg} {
	colortext:process $nick $host $hand $chan $arg "antibold"
}

############################ AntiUnderline ###############################

proc antiunderline:protect {nick host hand chan arg} {
	colortext:process $nick $host $hand $chan $arg "antiunderline"
}

############################## AntiCaps #################################

proc anticaps:protect {nick host hand chan arg} {
global black botnick
	set handle [nick2hand $nick]
	set found_caps 0
	set argz [split $arg]
if {![validchan $chan]} { return }
if {![botisop $chan] && ![setting:get $chan xonly]} { return }
if {[matchattr $handle $black(exceptflags) $chan]} { return }
	set bl_protect [blacktools:protect $nick $chan]
if {$bl_protect == "1"} { return }
if {[isbotnick $nick]} { return }
	set caps($nick:$host) 0
foreach a [split $arg] {
if {[onchan $a $chan]} {
	set search [lsearch -exact $argz $a]
	set argz [lreplace $argz $search $search]
	}
}
foreach word [split $argz {}] {
if [string match \[A-Z\] $word] {
	incr caps($nick:$host)
	}
}

if {$caps($nick:$host) == 0} {
  return
}

if {[string length $argz] < 20} {return}
	set capchar [string length $argz]
if {[expr 100 * $caps($nick:$host) / $capchar] > $black(anticapscount)} {
	set found_caps 1
}
if {$found_caps == "1"} {
	blacktools:banner:1 $nick "ANTICAPS" $chan $host [get:banmethod "anticaps" $chan] [link:chan:get $chan]	
	return 1	
	}
}


##############
#########################################################################
##   END                                                               ##
#########################################################################
