#########################################################################
##          BlackTools - The Ultimate Channel Control Script           ##
##                    One TCL. One smart Eggdrop                       ##
#########################################################################
############################   ALIAS TCL   ##############################
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

###
proc alias:process {nick host hand chan chan1 type arg} {
global botnick black username
	set cmd_status [btcmd:status $chan $hand "alias" 0]
if {$cmd_status == "1"} { 
	return 
}
if {[matchattr $hand q]} { blacktools:tell_v2 $nick $host $hand $chan $chan1 gl.glsuspend none
	return
}
if {[matchattr $hand -|q $chan]} { blacktools:tell_v2 $nick $host $hand $chan $chan1 gl.suspend none
	return
}
    set what [lindex $arg 0]
    set cmd [lindex $arg 1]
    set cmd_used [lindex $arg 2]
    set text [lindex $arg 3]
    set text2 [join [lrange $arg 2 3]]
switch [string tolower $what] {
    add {
if {$cmd == ""} {
    blacktools:tell_v2 $nick $host $hand $chan $chan1 alias.1 none
    return
}
if {$cmd_used == ""} {
    blacktools:tell_v2 $nick $host $hand $chan $chan1 alias.1 none
    return
}
    set valid [blacktools:alias_valid $hand $cmd_used $chan]
if {$valid == 1} {
    set exists [blacktools:alias_check $hand $cmd]
if {$exists != 0} {
    blacktools:tell_v2 $nick $host $hand $chan $chan1 alias.3 [list $cmd $exists]
    return
} else {
if {$text == ""} {
    set text $cmd_used
} else {
    set text $text2
}
    blacktools:tell_v2 $nick $host $hand $chan $chan1 alias.4 [list $cmd $text]
    blacktools:alias_add $hand $cmd $text
}
    } else {
    blacktools:tell_v2 $nick $host $hand $chan $chan1 alias.2 [list $cmd_used]
    }
}
    del {
    set exists [blacktools:alias_check $hand $cmd]
if {$exists == 0} {
    blacktools:tell_v2 $nick $host $hand $chan $chan1 alias.5 [list $cmd]
    return
    }
    blacktools:alias_del $hand $cmd
    blacktools:tell_v2 $nick $host $hand $chan $chan1 alias.6 [list $cmd]
}
    default {
if {$type == "0"} {
	blacktools:tell_v2 $nick $host $hand $chan $chan1 gl.instr [list "alias"]
}
if {$type == "1"} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_nick [list "alias"]
}
if {$type == "2"} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_priv [list "alias"]
            }       
        }
    }
}

###
proc blacktools:alias_check {hand command} {
    global black
    set file [open $black(alias_file) r]
    set data [read -nonewline $file]
    close $file
    set found ""
    set split_data [split $data "\n"]
foreach line $split_data {
    set read_hand [lindex [split $line] 0]
    set read_cmd [lindex [split $line] 1]
if {[string equal -nocase $read_cmd $command] && [string equal -nocase $read_hand $hand]} {
    set found [lrange [split $line] 2 end]
    break
    }
}
if {$found == ""} {return 0} else {
    return $found
    }
}

###
proc blacktools:alias_get {hand chan} {
    global black
    set file [open $black(alias_file) r]
    set data [read -nonewline $file]
    close $file
    set split_data [split $data "\n"]
    set output ""
foreach line $split_data {
    set read_hand [lindex [split $line] 0]
if {[string equal -nocase $hand $read_hand]} {
    set cmd [lindex [split $line] 1]
    set cmd_used [lindex [split $line] 2]
    set rest [lrange [split $line] 2 end]
    set check_valid [blacktools:alias_valid $hand $cmd_used $chan]
if {$check_valid == 0} {continue}
   lappend output "[black:color 1 $hand $cmd] \[[black:color 6 $hand $rest]\]"
    }
}
if {$output == ""} {return 0} else {
    return [join $output " ; "]
    }
}

###
proc blacktools:alias_valid {hand cmd chan} {
    set cmds_op "alias note q troll vr dr bot n id spam bw mb b ub sb banlist r man h version seen info userlist mode cycle ho o t k w ungag gag clonescan myset i next helped noidle skip"
    set cmds_admin "alias note q troll vr dr bot n id spam bw mb black bl b ub sb banlist r man auto h ignore version stats seen us s info userlist delhost delacc add omsg mode cycle say v ho o t k w ungag gag clonescan topwords myset i next helped noidle skip"
    set cmds_manager "alias exempt anunt note q enable disable securemode troll guestnick badhost antispam badrealname badquitpart badident badnick badword unset greet leave topic vr dr n id spam bw mb black bl b stick ub sb banlist r man auto antipub private h ignore idle version stats seen limit badchan us s info userlist chuser delhost addhost del delacc add omsg set mode cycle purge act say v ho o t k w ungag gag show clonescan topwords myset i badword next helped noidle skip"
    set cmds_master "alias exempt anunt anunt note q enable disable securemode troll guestnick badhost antispam badrealname badquitpart badident badnick badword unset greet leave topic vr dr n id spam bw mb black bl b stick ub sb banlist r man auto antipub private h ignore idle version stats seen limit badchan us s info channels userlist chuser delhost addhost del delacc add unsuspend suspend delchan addchan msg omsg set mode cycle act say v ho o uptime status t k w gag show clonescan topwords myset i badword next helped noidle skip"
    set cmds_owner "alias exempt login anunt link note q enable disable securemode cp troll guestnick badhost antispam badrealname badquitpart badident badnick badword unset greet leave topic vr dr n id spam bw mb black bl b stick ub sb banlist r man auto antipub private h ignore idle version stats chat seen limit bt badchan us s info channels userlist chuser delhost addhost del delacc add unsuspend suspend delchan addchan die jump save restart rehash nick msg omsg set mode cycle broadcast act say v ho o uptime status t k w ungag gag show clonescan topwords myset timer i badword next helped noidle skip" 
    set cmds_boss "alias exempt login anunt link note q enable disable securemode cp troll guestnick badhost antispam badrealname badquitpart badident badnick badword unset greet leave topic vr dr n id spam bw mb black bl b stick ub sb banlist r man auto antipub private tcl h ignore idle version stats chat seen limit bt badchan us s info channels userlist chuser delhost addhost del delacc add unsuspend suspend delchan addchan die jump save restart rehash update nick msg omsg set mode cycle broadcast act say v ho o uptime status t k w ungag gag show clonescan topwords myset timer i badword next helped noidle skip"
if {[matchattr $hand n]} {
if {[lsearch -nocase $cmds_boss $cmd] > -1} {
    return 1
        } else {return 0}
    } elseif {[matchattr $hand m]} {
if {[lsearch -nocase $cmds_owner $cmd] > -1} {
    return 1
        } else {return 0}    
    } elseif {[matchattr $hand o]} {
 if {[lsearch -nocase $cmds_master $cmd] > -1} {
    return 1
        } else {return 0}    
    } elseif {[matchattr $hand -|M $chan]} {
if {[lsearch -nocase $cmds_manager $cmd] > -1} {
    return 1
        } else {return 0}         
    } elseif {[matchattr $hand -|A $chan]} {
if {[lsearch -nocase $cmds_admin $cmd] > -1} {
    return 1
        } else {return 0} 
    } elseif {[matchattr $hand -|O $chan]} {
if {[lsearch -nocase $cmds_op $cmd] > -1} {
    return 1
        } else {return 0} 
    }
}

###
proc blacktools:alias_add {hand command text} {
    global black
    set file [open $black(alias_file) a]
    puts $file "$hand $command $text"
    close $file
    return 1
}

###
proc blacktools:alias_del {hand command} {
    global black
    set file [open $black(alias_file) "r"]
	set timestamp [clock format [clock seconds] -format {%Y%m%d%H%M%S}]
	set temp "$black(tempdir)/notes_temp.$timestamp"
	set tempwrite [open $temp w]
while {[gets $file line] != -1} {
    set read_hand [lindex [split $line] 0]
    set read_cmd [lindex [split $line] 1]
if {[string equal -nocase $read_hand $hand] && [string equal -nocase $read_cmd $command]} {
    continue
} else {
    puts $tempwrite $line
    }
}
    close $tempwrite
	close $file
    file rename -force $temp $black(alias_file)
    return 1
}



