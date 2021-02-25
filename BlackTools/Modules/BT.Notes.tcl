#########################################################################
##          BlackTools - The Ultimate Channel Control Script           ##
##                    One TCL. One smart Eggdrop                       ##
#########################################################################
#############################   NOTES TCL   #############################
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

proc note:process {nick host hand chan chan1 who note user_send note_send number type} {
	global black botnick
	set cmd_status [btcmd:status $chan $hand "note" 0]
if {$cmd_status == "1"} { 
	return 
} 
if {![setting:get $chan note] && ![matchattr $hand nmo]} {
	return
}
if {[matchattr $hand q]} { blacktools:tell $nick $host $hand $chan $chan1 gl.glsuspend none
	return
}
if {[matchattr $hand -|q $chan]} { blacktools:tell $nick $host $hand $chan $chan1 gl.suspend none
	return
}
	set getlang [string tolower [getuser $hand XTRA OUTPUT_LANG]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
switch $who {

list {
	set notes_total 0
	array set listlist [list]
	set timestamp [clock format [clock seconds] -format {%Y%m%d%H%M%S}]
	set temp "$black(tempdir)/list_temp.$timestamp"
	set file [open $black(notes_file) "r"]
while {[gets $file line] != -1} {
	set handle [lindex [split $line] 4]
	set readtype [lindex [split $line] 0]
if {[string equal -nocase $handle $hand] && [string equal -nocase $readtype "LIST"]} {
	set notes_total [expr $notes_total + 1]
	set num [lindex [split $line] 2]
	set readnote [lrange [split $line] 6 end]
if {[llength [lrange [split $line] 6 end]] > 7	} {
	set readnote [lrange [split $line] 6 13]
	set readnote "$readnote .."
}
	set encoded [encoding convertfrom utf-8 $readnote]
	lappend listlist($num) [join "$encoded"]
	}
}
	close $file
	set tempwrite [open $temp w]
foreach note [lsort -integer -increasing [array names listlist]] {
	puts $tempwrite [join "$note $listlist($note)"]
	}
	close $tempwrite
	set file [open $temp "r"]
	set w [read -nonewline $file]
	close $file
	set data [split $w "\n"]
	file delete $temp
if {$notes_total == "0"} {
	blacktools:tell $nick $host $hand $chan $chan1 notes.13 none
	return
}
	blacktools:tell $nick $host $hand $chan $chan1 notes.14 "$notes_total"
	module:getinfo $nick $host $hand $chan $chan1 $type $data "noteslist" "0" $number
}

inbox {
	set notes_read 0
	set notes_total 0
	set notes_unread ""
	array set inboxlist [list]
	set timestamp [clock format [clock seconds] -format {%Y%m%d%H%M%S}]
	set temp "$black(tempdir)/inbox_temp.$timestamp"
	set file [open $black(notes_file) "r"]
while {[gets $file line] != -1} {
	set handle [lindex [split $line] 4]
	set readtype [lindex [split $line] 0]
if {[string equal -nocase $handle $hand] && [string equal -nocase $readtype "INBOX"]} {
	set notes_total [expr $notes_total + 1]
	set num [lindex [split $line] 2]
	set readnote [lrange [split $line] 7 end]
	set readit [lindex [split $line] 3]
if {$readit == "0"} {
	set notes_read [expr $notes_read + 1]
	lappend notes_unread $num
}
if {[llength $readnote] > 7	} {
	set readnote [lrange [split $line] 7 14]
	set readnote "$readnote .."
}
	set encoded [encoding convertfrom utf-8 $readnote]
if {$readit == "0"} {
	lappend inboxlist($num) "$black(say.$getlang.notes.10) $encoded"
		} else {
	lappend inboxlist($num) "$black(say.$getlang.notes.9) $encoded"
		}
	}
}
	close $file
	set tempwrite [open $temp w]
foreach note [lsort -integer -increasing [array names inboxlist]] {
	puts $tempwrite [join "$note $inboxlist($note)"]
	}
	close $tempwrite
	set file [open $temp "r"]
	set w [read -nonewline $file]
	close $file
	set data [split $w "\n"]
	file delete $temp
if {$notes_unread != ""} {
	blacktools:tell $nick $host $hand $chan $chan1 notes.11 "$notes_read $notes_total $notes_unread"
} else {
	blacktools:tell $nick $host $hand $chan $chan1 notes.12 "$notes_read $notes_total"
}
if {$notes_total == "0"} {
	return
}
	module:getinfo $nick $host $hand $chan $chan1 $type $data "notesinbox" "0" $number
}

del {
if {[string equal -nocase $number "all"]} {
	set delall [notes:delall $hand]
	blacktools:tell $nick $host $hand $chan $chan1 notes.15 none
	return
}
	set status [notes:del $number $hand]
if {$status == "1"} {
	blacktools:tell $nick $host $hand $chan $chan1 notes.8 $number
	} else { blacktools:tell $nick $host $hand $chan $chan1 notes.4 $number 
	return
	}
}

read {
	if {![regexp {^[0-9]} $number]} {
	switch $type {
	0 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr "note"
	}
	1 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_nick "note"
	}
	2 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_priv "note"
		}
	}
	return
}
	set ret [find:note:num $number]
	set found_note 0
if {$ret == 0} { 
	blacktools:tell $nick $host $hand $chan $chan1 notes.4 $number
	return
}
	set file [open $black(notes_file) "r"]
while {[gets $file line] != -1} {
	set num [lindex [split $line] 2]
	set handle [lindex [split $line] 4]
if {[string equal -nocase $handle $hand] && [string equal -nocase $number $num]} {
	set found_note 1
	set readtype [lindex [split $line] 0]
	set time [lindex [split $line] 5]
	set time [clock format $time -format %D]
	set sender [lindex [split $line] 6]
if {[regexp {:} $sender]} {
	set sender [lindex [split $sender ":"] 0]
}
if {$readtype == "LIST"} {
	set readnote [lrange [split $line] 6 end]
} else {
	set readnote [lrange [split $line] 7 end]
}
	continue
	}
}
	close $file
if {$found_note == 0} { 
	blacktools:tell $nick $host $hand $chan $chan1 notes.4 $number
	return

}
	set split_note [split $readnote "~"]
if {$readtype == "LIST"} {
	blacktools:tell $nick $host $hand $chan $chan1 notes.5 "$number $readtype $time"
foreach line $split_note {
	set encoded [encoding convertfrom utf-8 $line]
	set text [black:color:set $botnick $encoded]
	blacktools:tell $nick $host $hand $chan $chan1 notes.6 "[join $text]"
	}
} else {
	blacktools:tell $nick $host $hand $chan $chan1 notes.7 "$number $readtype $sender $time"
foreach line $split_note {
	set encoded [encoding convertfrom utf-8 $line]
	set text [black:color:set $botnick $encoded]
	blacktools:tell $nick $host $hand $chan $chan1 notes.6 "[join $text]"
		}
	}
	notes:read $number $hand
}

send {
	set num_user 0
	set sent_user 0
	set invalid_user ""
if {$user_send == ""} {
	switch $type {
	0 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr "note"
	}
	1 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_nick "note"
	}
	2 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_priv "note"
		}
	}
	return
}
if {[llength [split $note_send]] == "0"} {
	switch $type {
	0 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr "note"
	}
	1 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_nick "note"
	}
	2 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_priv "note"
		}
	}
	return
}
	set split_usersend [split $user_send ","]
foreach user $split_usersend {
if {[onchan $user $chan] && ![validuser $user]} {
	set user [nick2hand $user]
}
	set num_user [expr $num_user + 1]
if {[validuser $user]} {
	set nonotes [getuser $user XTRA NO_NOTES]
if {$nonotes == ""} {
	set sent_user [expr $sent_user + 1]
	set black(notes:announce:$user) 1
	set return [notes:add $nick $host $user "DB" "INBOX" $note_send $hand 0]
	} else {
	lappend invalid_user $user\($black(say.$getlang.notes.17)\)
	}
		} else {
	lappend invalid_user $user
		}
	}
if {$invalid_user == ""} {
	blacktools:tell $nick $host $hand $chan $chan1 notes.2 "$sent_user $num_user"
	} else {
	blacktools:tell $nick $host $hand $chan $chan1 notes.3 "$sent_user $num_user $invalid_user"
	}
}

default {
if {$who == ""} {
	set notes_read 0
	set notes_total 0
	set notes_unread ""
		array set inboxlist [list]
	set timestamp [clock format [clock seconds] -format {%Y%m%d%H%M%S}]
	set temp "$black(tempdir)/inbox_temp.$timestamp"
	set file [open $black(notes_file) "r"]
while {[gets $file line] != -1} {
	set handle [lindex [split $line] 4]
	set readtype [lindex [split $line] 0]
if {[string equal -nocase $handle $hand] && [string equal -nocase $readtype "INBOX"]} {
	set notes_total [expr $notes_total + 1]
	set num [lindex [split $line] 2]
	set readnote [lrange [split $line] 7 end]
	set readit [lindex [split $line] 3]
if {$readit == "0"} {
	set notes_read [expr $notes_read + 1]
	lappend notes_unread $num
		}
	}
}
	close $file
if {$notes_unread != ""} {
	blacktools:tell $nick $host $hand $chan $chan1 notes.11 "$notes_read $notes_total $notes_unread"
	blacktools:tell $nick $host $hand $chan $chan1 notesinbox.13 "none"
} else {
	blacktools:tell $nick $host $hand $chan $chan1 notes.12 "$notes_read $notes_total"
}
	return
}
	set return [notes:add $nick $host $hand "DB" "LIST" $note "" 0]
	blacktools:tell $nick $host $hand $chan $chan1 notes.1 $return
		}
	}
}

proc notes:del {num hand} {
	global black
	set found_it 0
	set file [open $black(notes_file) "r"]
	set timestamp [clock format [clock seconds] -format {%Y%m%d%H%M%S}]
	set temp "$black(tempdir)/notes_temp.$timestamp"
	set tempwrite [open $temp w]
while {[gets $file line] != -1} {
	set read_num [lindex [split $line] 2]
	set handle [lindex [split $line] 4]
if {[string equal $num $read_num] && [string equal $handle $hand]} {
	set found_it 1
	continue
} else {
	puts $tempwrite $line
		}	 
    }
	close $tempwrite
	close $file
    file rename -force $temp $black(notes_file)
	
	return $found_it
}

proc notes:delall {hand} {
	global black
	set found_it 0
	set file [open $black(notes_file) "r"]
	set timestamp [clock format [clock seconds] -format {%Y%m%d%H%M%S}]
	set temp "$black(tempdir)/notes_temp.$timestamp"
	set tempwrite [open $temp w]
while {[gets $file line] != -1} {
	set type [lindex [split $line] 0]
	set handle [lindex [split $line] 4]
if {[string equal $handle $hand] && [string equal $type "INBOX"]} {
	set found_it [expr $found_it + 1]
	continue
} else {
	puts $tempwrite $line
		}	 
    }
	close $tempwrite
	close $file
    file rename -force $temp $black(notes_file)
	return $found_it
}

proc notes:read {num hand} {
	global black
	set read_it 0
	set file [open $black(notes_file) "r"]
	set timestamp [clock format [clock seconds] -format {%Y%m%d%H%M%S}]
	set temp "$black(tempdir)/notes_temp.$timestamp"
	set tempwrite [open $temp w]
while {[gets $file line] != -1} {
	set read_num [lindex [split $line] 2]
	set handle [lindex [split $line] 4]
	set read_type [lindex [split $line] 0]
	set readit [lindex [split $line] 3]
if {[string equal $num $read_num] && [string equal $handle $hand] && [string equal -nocase $read_type "INBOX"] && ($readit == "0")} {
	set db [lindex [split $line] 1]
	set readtype [lindex [split $line] 0]
	set readnum [lindex [split $line] 2]
	set read_it 1
	set time [lindex [split $line] 5]
	set readhandle [lindex [split $line] 4]
	set readsender [lindex [split $line] 6]
	set readnote [join [lrange [split $line] 7 end]]
	continue
} else {
	puts $tempwrite $line
		}	 
    }
	close $tempwrite
	close $file
    file rename -force $temp $black(notes_file)
if {$read_it == "1"} {	
	set file [open $black(notes_file) "a"]
	puts $file "$readtype $db $readnum $read_it $readhandle $time $readsender $readnote"
	close $file
}
	return $read_it
}

proc notes:add {nick host handle chan type note sender read} {
	global black
	set type [string toupper $type]
	set temp_num 0
	set num 0
	set time [unixtime]
	
	while {$temp_num == 0} {
	set get [find:note:num $num]
if {$get == "$num"} {
	set num [expr $num + 1]
	} else { set temp_num 1 }
}
	set file [open $black(notes_file) a]
	set encoded [encoding convertto utf-8 $note]
if {$type == "LIST"} {
	puts $file "$type $chan $num $read $handle $time $encoded"
}
if {$type == "INBOX"} {
	puts $file "$type $chan $num $read $handle $time $sender $encoded"
}
	close $file
	return $num
}

proc notes:announce:pub {nick host hand chan arg} {
	global black
	set found_access 0
	set hand [nick2hand $nick]
foreach c [channels] {
if {[matchattr $hand nmo|MAOV $c]} {
	set found_access 1
	}
}
if {$found_access == "1"} {

if {[info exists black(notes:announce:$hand)]} {
if {$black(notes:announce:$hand) == "0"} {
	return
	}
} else { return }
	set chan1 $chan
	set notes_read 0
	set notes_total 0
	set notes_unread ""
	array set inboxlist [list]
	set timestamp [clock format [clock seconds] -format {%Y%m%d%H%M%S}]
	set temp "$black(tempdir)/inbox_temp.$timestamp"
	set file [open $black(notes_file) "r"]
while {[gets $file line] != -1} {
	set handle [lindex [split $line] 4]
	set readtype [lindex [split $line] 0]
if {[string equal -nocase $handle $hand] && [string equal -nocase $readtype "INBOX"]} {
	set notes_total [expr $notes_total + 1]
	set num [lindex [split $line] 2]
	set readnote [join [lrange [split $line] 7 end]]
	set readit [lindex [split $line] 3]
if {$readit == "0"} {
	set notes_read [expr $notes_read + 1]
	lappend notes_unread $num
		}
	}
}
	close $file
if {$notes_unread != ""} {
	blacktools:tell $nick $host $hand $chan $chan1 notes.11 "$notes_read $notes_total $notes_unread"
	blacktools:tell $nick $host $hand $chan $chan1 notes.16 "none"
	set black(notes:announce:$hand) 0
		}
	}
}

proc notes:announce {nick host hand chan} {
	global black
	set hand [nick2hand $nick]
if {[matchattr $hand nmo|AOVM $chan]} {
if {[info exists black(notes:announce:$hand)]} {
	if {$black(notes:announce:$hand) == "0"} {
	return
	}
} else { return }
	set chan1 $chan
	set notes_read 0
	set notes_total 0
	set notes_unread ""
	array set inboxlist [list]
	set timestamp [clock format [clock seconds] -format {%Y%m%d%H%M%S}]
	set temp "$black(tempdir)/inbox_temp.$timestamp"
	set file [open $black(notes_file) "r"]
while {[gets $file line] != -1} {
	set handle [lindex [split $line] 4]
	set readtype [lindex [split $line] 0]
if {[string equal -nocase $handle $hand] && [string equal -nocase $readtype "INBOX"]} {
	set notes_total [expr $notes_total + 1]
	set num [lindex [split $line] 2]
	set readnote [lrange [split $line] 7 end]
	set readit [lindex [split $line] 3]
if {$readit == "0"} {
	set notes_read [expr $notes_read + 1]
	lappend notes_unread $num
		}
	}
}
	close $file
if {$notes_unread != ""} {
	blacktools:tell $nick $host $hand $chan $chan1 notes.11 "$notes_read $notes_total $notes_unread"
	blacktools:tell $nick $host $hand $chan $chan1 notes.16 "none"
	set black(notes:announce:$hand) 0
		}
	}
}

##############
#########################################################################
##   END                                                               ##
#########################################################################
