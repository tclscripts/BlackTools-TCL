#########################################################################
##          BlackTools - The Ultimate Channel Control Script           ##
##                    One TCL. One smart Eggdrop                       ##
#########################################################################
###################   EXCESSIVE CHARACTERS  TCL   #######################
#########################################################################
##                                                                   ##
##   BlackTools  : http://blacktools.tclscripts.net                  ##
##   Bugs report : http://www.tclscripts.net/                        ##
##   GitHub page : https://github.com/tclscripts/BlackToolS-TCL      ##
##   Online Help : irc://irc.undernet.org/tcl-help                   ##
##                 #TCL-HELP / UnderNet                              ##
##                 You can ask in english or romanian                ##
##                                                                   ##
#########################################################################

proc excessivecharacters:protect {nick host hand chan arg} {
    global black botnick
    if {![validchan $chan]} { return }
    set handle [nick2hand $nick]
    if {[matchattr $handle $black(exceptflags) $chan]} { return }
    if {![botisop $chan] && ![setting:get $chan xonly]} { return }
    set bl_protect [blacktools:protect $nick $chan]
    if {$bl_protect == "1"} { return }
    if {[isbotnick $nick]} { return }
    set getmaxexcessive [setting:get $chan excessivecharactersmax]
    if {$getmaxexcessive == ""} { set getmaxexcessive "$black(excessivecharacters:max)" }
    if {[regexp {(.)\1{$getmaxexcessive,}} $arg]} {
        blacktools:banner:1 $nick "EXCESSIVECHARACTERS" $chan $host [get:banmethod "excessivecharacters" $chan] [link:chan:get $chan]
        return 1    
    }
}
