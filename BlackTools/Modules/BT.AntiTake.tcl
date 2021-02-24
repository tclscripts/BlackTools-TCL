#########################################################################
##          BlackTools - The Ultimate Channel Control Script           ##
##                    One TCL. One smart Eggdrop                       ##
#########################################################################
##########################   ANTITAKE TCL   #############################
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

proc dontdeoppublic {nick host hand chan args} {
global black botnick
	set dnick [lindex $args 1]
	set handle [nick2hand $nick]
if {[setting:get $chan dontdeop] } {
if {[string match -nocase $nick $botnick]} {
	return
}
if {![matchattr $handle $black(exceptflags) $chan]} {
	putquick "MODE $chan -o $nick"
	putquick "MODE $chan +o $dnick"
	set getlang [string tolower [setting:get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
	set text [black:color:set "" $black(say.$getlang.antitake.1)]
	set text [join $text]
	puthelp "NOTICE $nick :$text"
		}
	}
}
 
proc dontoppublic {nick host hand chan args} {
global black botnick
	set onick [lindex $args 1]
	set handle [nick2hand $nick]
if {[setting:get $chan dontop]} {
if {[string match -nocase $nick $botnick]} { 
	return
}
if {[string match -nocase $onick $botnick]} {
	return
}
if {![matchattr $handle $black(exceptflags) $chan]} {
	putquick "MODE $chan -o $nick"
	putquick "MODE $chan -o $onick"
	set getlang [string tolower [setting:get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
	set text [black:color:set "" $black(say.$getlang.antitake.2)]
	set text [join $text]
	puthelp "NOTICE $nick :$text"
		}
	}
}

##############
#########################################################################
##   END                                                               ##
#########################################################################
