#########################################################################
##          BlackTools - The Ultimate Channel Control Script           ##
##                    One TCL. One smart Eggdrop                       ##
#########################################################################
########################   ANTIBADTEXT TCL   ############################
#########################################################################
##						                       ##
##     BlackTools  : http://blacktools.tclscripts.net	               ##
##     Bugs report : http://www.tclscripts.net/	                       ##
##     Online Help : irc://irc.undernet.org/tcl-help 	               ##
##                   #TCL-HELP / UnderNet                              ##
##                   You can ask in english or romanian                ##
##					                               ##
#########################################################################

############################# AntiColor ################################

proc colortext:process {nick host hand chan arg type} {
	global black
if {![validchan $chan]} { return }
if {[setting:get $chan $type]} {
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
if {[string match "*$textfind*" $arg]} {
	blacktools:banner:1 $nick [string toupper "$type"] $chan $host [get:banmethod $type $chan] [link:chan:get $chan]	
		}
	}	
}

proc anticolor:protect {nick host hand chan arg} {
	colortext:process $nick $host $hand $chan $arg "anticolor"
}

proc anticolor:protect:me {nick host hand chan keyword arg} {
	colortext:process $nick $host $hand $chan $arg "anticolor"
}

############################# AntiBold ################################

proc antibold:protect {nick host hand chan arg} {
	colortext:process $nick $host $hand $chan $arg "antibold"
}

proc antibold:protect:me {nick host hand chan keyword arg} {
	colortext:process $nick $host $hand $chan $arg "antibold"
}

############################ AntiUnderline ###############################

proc antiunderline:protect {nick host hand chan arg} {
	colortext:process $nick $host $hand $chan $arg "antiunderline"
}

proc antiunderline:protect:me {nick host hand chan keyword arg} {
	colortext:process $nick $host $hand $chan $arg "antiunderline"
}

############################## AntiCaps #################################

proc anticaps:protect {nick host hand chan arg} {
global black botnick
	set handle [nick2hand $nick]
	set found_caps 0
if {![validchan $chan]} { return }
if {[setting:get $chan anticaps]} {
if {![botisop $chan] && ![setting:get $chan xonly]} { return }
if {[matchattr $handle $black(exceptflags) $chan]} { return }
	set bl_protect [blacktools:protect $nick $chan]
if {$bl_protect == "1"} { return }
if {[isbotnick $nick]} { return }
	set caps($nick:$host) 0
foreach word [split $arg {}] {
if [string match \[A-Z\] $word] {
	incr caps($nick:$host)
	}
}

if {$caps($nick:$host) == 0} {
  return
}

if {[string length $arg] < 20} {return}
	set capchar [string length $arg]
if {[expr 100 * $caps($nick:$host) / $capchar] > $black(anticapscount)} {
	set found_caps 1
}
if {$found_caps == "1"} {
	blacktools:banner:1 $nick "ANTICAPS" $chan $host [get:banmethod "anticaps" $chan] [link:chan:get $chan]	
		}
	}
}

proc anticaps:protect:me {nick host hand chan keyword arg} {
	anticaps:protect $nick $host $hand $chan $arg
}

##############
#########################################################################
##   END                                                               ##
#########################################################################