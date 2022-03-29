#########################################################################
##          BlackTools - The Ultimate Channel Control Script           ##
##                    One TCL. One smart Eggdrop                       ##
#########################################################################
#########################   AutoUpdate TCL   ############################
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

set black(backup_dir) "scripts/BT.backup"
set black(log_file) "scripts/BT.update.log"
set black(actdir) "scripts"
set black(last_update_file) "scripts/BlackTools/temp/lastupdate.txt"

###
proc blacktools:check_addons {hand chan} {
    global black
if {[catch {package require http} no_http] != 0} {
    source $black(dirname)/BlackTools/Addons/http.tcl
    package require http
    }
if {[catch {package require tls} no_tls] != 0} {
    return 0
}
if {[catch {package require json} no_json] != 0} {
    source $black(dirname)/BlackTools/Addons/json.tcl
    package require json
    }
if {[catch {package require github} no_github] != 0} {
    source $black(dirname)/BlackTools/Addons/github.tcl
    package require github
    }
    return 1
}

###
proc blacktools:update_check {nick hand host chan type} {
    global black
if {$black(update_on) == 0} {
    blacktools:tell $nick $host $hand $chan $chan autoupdate.49 ""
    return
}
    set check_addons [blacktools:check_addons $hand $chan]
if {$check_addons == 0} {
     blacktools:update_put $hand $chan 1 [list "CHECK UPDATE"]
     return
}
    set status [blacktools:update_verify]
if {$status == -1} {
    blacktools:update_put $hand $chan 31 ""
    blacktools:tell $nick $host $hand $chan $chan autoupdate.31 ""
    return 0
}
    set data [split $status "\n"]
    set new_version [lindex [lindex $data 0] 1]
    set last_modify [lindex [lindex $data 1] 2]
    set status [lindex [lindex $data 2] 1]
    set size [lindex [lindex $data 3] 1]
    set check_update_byother [blacktools:lastupdate 1 $last_modify 0]
if {$check_update_byother == 1} {
    blacktools:tell_v2 $nick $host $hand $chan $chan autoupdate.47 [list [ctime $last_modify]]
    return
}
if {$black(vers) != $new_version} {
if {$type == 0} {
    blacktools:tell $nick $host $hand $chan $chan autoupdate.32 "$new_version"
} else {
    return [list $new_version $last_modify]
}
} elseif {$last_modify != $black(current_modif)} {
if {$type == 0} {
    blacktools:tell $nick $host $hand $chan $chan autoupdate.33 [ctime $last_modify]
}
    return [list $new_version $last_modify]
} else {
if {$type == 0} {
    blacktools:tell $nick $host $hand $chan $chan autoupdate.5 ""
        }
    return 0
    }
}

###
proc blacktools:update:timer {} {
    global black
if {$black(update_type) == 0} {
if {![info exists black(update_disabled)]} {
if {![info exists black(backup_update)]} {
    set update [catch {blacktools:update "" "" "" 1} error]
} else {
    blacktools:update_put "" "" 40 ""  
    }
} else {
    blacktools:update_put "" "" 27 [list [ctime [unixtime]]]
    blacktools:update_put "" "" 30 [list $black(update_disabled)]
    }
} else {
if {$black(update_note) == 1} {
if {![info exists black(update_disabled)]} {
    set check [blacktools:update_check "" "" "" "" 1]
if {$check != 0} {
    set found_version [lindex $check 0]
    set last_modif [lindex $check 1]
    blacktools:update:note $last_modif $found_version
            }
        }
    }
}
    timer [time_return_minute $black(update_time_check)] blacktools:update:timer 
}

###
proc blacktools:update:note {num version} {
    global black botnick
 	set time [unixtime]
foreach user [userlist n] {
	set nonotes [getuser $user XTRA NO_NOTES]
if {$nonotes == ""} {
    set check_note [blacktools:update_note_check $user $num]
if {$check_note == 1} {continue}
	set getlang [string tolower [getuser $user XTRA OUTPUT_LANG]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
	set black(notes:announce:$user) 1
    set replace(%msg.1%) $version
	set replace(%msg.2%) [ctime $num]
	set text [black:color:set $botnick $black(say.$getlang.autoupdate.43)]
    set text [string map [array get replace] $text]
	notes:add $botnick "" $user "DB" "INBOX" $text "AUTOUPDATE:$num" 0
	    }
    }
}

###
proc blacktools:update_note_check {hand num} {
    global black
    set found_it 0
    set file [open $black(notes_file) "r"]
while {[gets $file line] != -1} {
    set handle [lindex [split $line] 4]
if {[string equal -nocase $handle $hand]} {
    set sender [lindex [split $line] 6]
    set split_send [split $sender ":"]
    set last_update [lindex $split_send 1]
    set sender [lindex $split_send 0]
if {[string equal -nocase $sender "AUTOUPDATE"] && [string equal -nocase $num $last_update]} {
    set found_it 1
    break
            }
        }
    }
    close $file
    return $found_it
}

###
proc blacktools:update {hand host chan type} {
    global black
if {$black(update_on) == 0} {
    blacktools:tell $hand $host $hand $chan $chan autoupdate.49 ""
    return
}
if {[info exists black(backup_update)]} {
    blacktools:update_put $hand $chan 29 ""
    return 0
}
    set error_b ""
    set file [open $black(log_file) w]
    close $file
    blacktools:update_put $hand $chan 27 [list [ctime [unixtime]]]
    blacktools:update_put $hand $chan 28 ""
    set check_addons [blacktools:check_addons $hand $chan]
if {$check_addons == 0} {
     blacktools:update_put $hand $chan 1 [list "UPDATE"]
     return
}
    set status [blacktools:update_verify]
if {$status == -1} {
    blacktools:update_put $hand $chan 2 ""
    return 0
}
    set data [split $status "\n"]
    set new_version [lindex [lindex $data 0] 1]
    set last_modify [lindex [lindex $data 1] 2]
    set status [lindex [lindex $data 2] 1]
    set size [lindex [lindex $data 3] 1]
    set black(download_size) $size
if {$status == 1} {set black(finish_action) 1} else {set black(finish_action) 0}

if {$type == 0} {
    set black(update_from) 0
} else {
    set black(update_from) 1
}
    set check_update_byother [blacktools:lastupdate 1 $last_modify 0]
 if {$check_update_byother == 1} {
    blacktools:update_put $hand $chan 48 [list [ctime $last_modify]]
    blacktools:finish_config $hand $chan $last_modify $status
    return
}
if {$black(vers) != $new_version} {
    blacktools:update_put $hand $chan 3 [list $new_version]   
} elseif {$last_modify != $black(current_modif)} {
    blacktools:update_put $hand $chan 4 [list $black(vers)]
} else {
    blacktools:update_put $hand $chan 5 ""
    unset black(update_from)
    unset black(finish_action)
    return 0
}
if {![file isdirectory $black(backup_dir)]} {
if {[catch {file mkdir $black(backup_dir)} error] != 0} {
    blacktools:update_put $hand $chan 6 [list $error]
     return 0
    }
}

if {[file exists $black(backup_dir)/$black(tclname)]} {
    blacktools:update_put "" "" 7 ""
    file delete -force $black(backup_dir)/BlackTools
    file delete -force $black(backup_dir)/$black(tclname)
}
if {[catch {file copy -force "$black(dirname)/BlackTools" $black(backup_dir)} error_b] == 0} {
    blacktools:update_put "" "" 8 ""
} else {
    blacktools:update_put $hand $chan 9 [list $error_b]
    file delete -force $black(backup_dir)
    return 0
}

if {[catch {file copy -force $black(tclconfig) $black(backup_dir)} error_b] != 0} {
    blacktools:update_put $hand $chan 10 ""
    file delete -force $black(backup_dir)
    return 0
} else {
    blacktools:update_put "" "" 11 ""
}
    set black(update_hand) $hand
    set black(update_version) $new_version
    set black(update_last_modify) $last_modify
    set black(update_chan) $chan
blacktools:every 1000 {
if {[file isdirectory "$black(backup_dir)/BlackTools"]} {
    set after_file_num [blacktools:size "$black(backup_dir)/BlackTools"]
    set current_file_num [blacktools:size "$black(actdir)/BlackTools"]
if {$current_file_num == $after_file_num} {
    blacktools:update_backup
    break
            }
        }
    }
}

###
proc blacktools:finish_config {hand chan lastmodif status} {
    global black
    set update_old_data [blacktools:update_data 0 ""]
    set update_new_data [blacktools:update_getconfig]
    set restore_config [blacktools:update_restore $update_old_data $update_new_data]
    set newdata [lindex $restore_config 0]
    set num_var [lindex $restore_config 1]
if {$num_var > 0} {
    set newdata [blacktools:update_data 1 $newdata]
    blacktools:update_put $hand $chan 19 [list $num_var]
} else {
    blacktools:update_put $hand $chan 20 ""
    }
if {$black(finish_action) == 0} {
    rehash
    setaway "none"
    } else {
if {$black(update_from) == 0} {
    rehash
    setaway "none"
    blacktools:update_put $hand $chan 45 ""
        } else {
    blacktools:update_put $hand $chan 46 ""
    utimer 10 [list restart]
        }
    }
    unset black(update_from)
    unset black(finish_action)
    blacktools:lastupdate 0 $lastmodif 0
}

###
proc blacktools:update_backup {} {
    global black
    set hand $black(update_hand)
    set new_version $black(update_version)
    set last_modify $black(update_last_modify)
    set chan $black(update_chan)
    set black(backup_update) 1
    set black(start_update) [unixtime]
    set black(update_file_saved) [llength [glob -nocomplain -directory "$black(dirname)/BlackTools/FILES" "*.txt"]]
if {[file isdirectory "$black(dirname)/BlackTools/FILES/TOPWORDS"]} {
    set black(update_file_topwords) 1
    set black(update_file_saved) [expr $black(update_file_saved) + [llength [glob -nocomplain -directory "$black(dirname)/BlackTools/FILES/TOPWORDS" "*.txt"]]]
}
    blacktools:update_put "" "" 12 ""
    blacktools:update_put "" "" 13 ""
    blacktools:update_put "" "" 14 ""
    blacktools:update_put $hand $chan 15 [list $new_version [ctime $last_modify]]
    blacktools:backup_run $hand $chan $new_version $last_modify
    unset black(update_version)
    unset black(update_hand)
    unset black(update_chan)
}

###
proc blacktools:backup_run {hand chan new_version last_modify} {
    global black config
    set black(update_old_data) [blacktools:update_data 0 ""]
    set bt_file "$black(dirname)/$black(tclname)"
    set file [open $bt_file r]
    set data [read -nonewline $file]
    close $file
    set regexp_var2 "set black\\(dirname\\) \"(.*?)\""
    regexp -nocase $regexp_var2 $data found_line
    regexp -nocase $regexp_var2 $data -> found
    set found_line [string map [list $black(dirname) $black(backup_dir)] $found_line]
    regsub $regexp_var2 $data $found_line data
    blacktools:update_data 1 $data
    
    set file [open $config r]
    set data [read -nonewline $file]
    close $file
    set reg "source $black(dirname)/$black(tclname)"
    set black(restore_config_file) $black(tclname)
    set timestamp [clock format [clock seconds] -format {%Y%m%d%H%M%S}]
    set black(old_config_file) "BlackTools.${timestamp}.tcl"
    regsub $reg $data "source $black(dirname)/$black(old_config_file)" data
    set file [open $config w]
    puts $file $data
    close $file
    file rename -force "$black(dirname)/$black(tclname)" "$black(dirname)/$black(old_config_file)"
    utimer 5 [list blacktools:update_start_download $hand $chan $new_version $last_modify]
}

###
proc blacktools:size {dir} {
    set files [glob-r $dir]
    set total 0
foreach f $files {
    set size [file size $f]
    set total [expr $size + $total]
    }
    return $total
}

###
proc blacktools:update_start_download {hand chan new_version last_modify} {
    global black
    rehash
    set black(update_hand) $hand
    set black(update_chan) $chan
    file delete -force "$black(actdir)/BlackTools"
    ::github::github update tclscripts BlackTools-TCL $black(actdir)
    blacktools:every 1000 {
if {[file isdirectory $black(actdir)/BlackTools]} {
    set size [llength [glob-r "$black(actdir)/BlackTools"]]
if {$size == $black(download_size)} {
    blacktools:update_start_restore
    break
            }
        }
    }
}
###
#https://wiki.tcl-lang.org/page/glob
proc glob-r {{dir .}} {
    set res {}
    foreach i [lsort [glob -nocomplain -dir $dir *]] {
        if {[file type $i] eq {directory}} {
            eval lappend res [glob-r $i]
        } else {
            lappend res $i
        }
    }
    set res
} ;# RS

###
proc blacktools:update_unsetflag {} {
    global black
if {[info exists black(backup_update)]} {
    unset black(backup_update)
    }
}

###
proc blacktools:update_start_restore {} {
    global black
    set hand $black(update_hand)
    set chan $black(update_chan)
    set userlang [blacktools:update_userlang $hand]
if {![file isdirectory "$black(actdir)/BlackTools"]} {
    blacktools:update_put $hand $chan 16 ""
    file delete -force $black(backup_dir)
    blacktools:update_unsetflag
    return
} elseif {![file exists "$black(actdir)/$black(tclname)"]} {
    blacktools:update_put $hand $chan 16 ""
    file delete -force $black(backup_dir)
    blacktools:update_unsetflag
    return
}
    set end_download [unixtime]
    set dif [expr $end_download - $black(start_update)]
    blacktools:update_put "" "" 17 [list [return_time $userlang $dif]]
    set newdata [blacktools:update_data 0 ""]
    blacktools:update_put $hand $chan 18 ""
    set restore_config [blacktools:update_restore $black(update_old_data) $newdata]
    unset black(update_old_data)
    set newdata [lindex $restore_config 0]
    set num_var [lindex $restore_config 1]
if {$num_var > 0} {
    set newdata [blacktools:update_data 1 $newdata]
    blacktools:update_put $hand $chan 19 [list $num_var]
} else {
    blacktools:update_put "" "" 20 ""
}
    blacktools:update_put $hand $chan 21 ""
    blacktools:update_restore_files
blacktools:every 1000 {
    set info_files_num [llength [glob -nocomplain -directory "$black(actdir)/BlackTools/FILES" "*.txt"]]
if {[file isdirectory "$black(actdir)/BlackTools/FILES/TOPWORDS"]} {
    set info_files_topwords [llength [glob -nocomplain -directory "$black(actdir)/BlackTools/FILES/TOPWORDS" "*.txt"]]
    set info_files_num [expr $info_files_num + $info_files_topwords]
}
if {$info_files_num == $black(update_file_saved)} {
    blacktools:update_end $info_files_num
    break
        }
    }
}

###
proc blacktools:update_end {num} {
    global black config
    set hand $black(update_hand)
    set chan $black(update_chan)
if {$num == 0} {
    blacktools:update_put "" "" 22 ""
} else {
    blacktools:update_put $hand $chan 23 [list $num]
}
    set file [open $config r]
    set data [read -nonewline $file]
    close $file
    set split_data [split $data "\n"]
    blacktools:config_write $split_data 0 $hand $chan "" [llength $split_data]
}


###
proc blacktools:config_write {sdata num hand chan data total} {
    global black config
    set line [lindex $sdata $num]
if {[string match -nocase "*/$black(old_config_file)" $line]} {
    lappend data "source $black(actdir)/$black(restore_config_file)"
} else {
    lappend data $line
}
    set counter [expr $num + 1]
if {$counter <= $total} {
    blacktools:config_write $sdata $counter $hand $chan $data $total
} else {
    set file [open $config w]
    puts $file [join $data "\n"]
    close $file
    set userlang [blacktools:update_userlang $hand]
    set end_update [unixtime]
    set dif [expr $end_update - $black(start_update)]
    unset black(update_hand)
    unset black(update_chan)
    blacktools:update_unsetflag
    blacktools:update_put $hand $chan 24 [list [return_time $userlang $dif]]
    blacktools:update_put $hand $chan 25 [list $black(backup_dir) $black(log_file)]
    blacktools:update_put $hand $chan 26 ""
    unset black(update_file_saved)
    file delete -force "$black(actdir)/$black(old_config_file)"
    utimer 5 [list blacktools:update_rehash $hand $chan]
    }
}

###
proc blacktools:update_rehash {hand chan} {
    global black
if {$black(finish_action) == 0} {
    rehash
    utimer 5 [list setaway "none"]
    } else {
if {$black(update_from) == 0} {
    rehash
    utimer 5 [list setaway "none"]
    blacktools:update_put $hand $chan 45 ""
        } else {
    blacktools:update_put $hand $chan 46 ""
    utimer 10 [list restart]
        }
    }
    blacktools:lastupdate 0 $black(update_last_modify) 1
    unset black(update_last_modify)
    unset black(finish_action)
    unset black(update_from)
    unset black(download_size)
    unset black(old_config_file)
    unset black(start_update)
    unset black(restore_config_file)
}

###
proc blacktools:lastupdate {type lastmodif new} {
    global black botnick
if {$type == 0} {
if {$new == 1} {
     set file [open $black(last_update_file) w]
    puts $file "$botnick $lastmodif"
    close $file
    return
}
if {![file exists $black(last_update_file)]} {
    set file [open $black(last_update_file) w]
    puts $file "$botnick $lastmodif"
    close $file
} else {
    set file [open $black(last_update_file) a]
    puts $file "$botnick $lastmodif"
    close $file
    }
} else {
if {![file exists $black(last_update_file)]} {
    return 0
}
    set file [open $black(last_update_file) r]
    set data [read -nonewline $file]
    close $file
if {[lsearch -nocase [split $data "\n"] "$botnick $lastmodif"] > -1} {
    return 0
    } elseif {[lsearch -nocase [split $data "\n"] "* $lastmodif"] > -1} {
    return 1     
        }
    }
}


###
proc blacktools:update_restore_files {} {
    global black
    set files ""
    set counter 0
    set files [glob -nocomplain -directory "$black(backup_dir)/BlackTools/FILES" "*.txt"]
if {![file isdirectory "$black(actdir)/BlackTools/FILES"]} {
    file mkdir "$black(actdir)/BlackTools/FILES"
}
foreach f $files {
    incr counter
    set filename [file tail $f]
    file copy -force $f "$black(actdir)/BlackTools/FILES/$filename"
}

if {[info exists black(update_file_topwords)]} {
if {![file isdirectory "$black(actdir)/BlackTools/FILES/TOPWORDS"]} {
    file mkdir "$black(actdir)/BlackTools/FILES/TOPWORDS"
}
    set topwords_files [glob -nocomplain -directory "$black(backup_dir)/BlackTools/FILES/TOPWORDS" "*.txt"]
foreach f $topwords_files {
    incr counter
    set filename [file tail $f]
    file copy -force $f "$black(actdir)/BlackTools/FILES/TOPWORDS/$filename"
    }
    unset black(update_file_topwords)
}
    return $counter
}

###
proc blacktools:update_set_time {num type} {
    global black
    set bt_file "$black(dirname)/$black(tclname)"
    set file [open $bt_file r]
    set data [read -nonewline $file]
    close $file
    set regexp_var2 "set black\\(update_time_check\\) \"(.*?)\""
    regexp -nocase $regexp_var2 $data -> found
if {$type == 0} {
    return $found
} else {
    regexp -nocase $regexp_var2 $data found_line
    set found_line [string map [list $found $num] $found_line]
    regsub $regexp_var2 $data $found_line data
    blacktools:update_data 1 $data
    }
}


###
proc blacktools:update_on_off {type} {
    global black
    set regexp_var2 "set black\\(update_type\\) \"(.*?)\""
    set bt_file "$black(dirname)/$black(tclname)"
    set file [open $bt_file r]
    set data [read -nonewline $file]
    close $file
    regexp -nocase $regexp_var2 $data found_line
    regexp -nocase $regexp_var2 $data -> found
if {$type == 0 && $found == 0} {
    return 0
}
if {$type == 1 && $found == 1} {
    return 1
}
    switch $type {
        0 {
    set found_line [string map {"1" "0"} $found_line]
    regsub $regexp_var2 $data $found_line data
    blacktools:update_data 1 $data
    return 2
        }
        1 {
    set found_line [string map {"0" "1"} $found_line]
    regsub $regexp_var2 $data $found_line data
    blacktools:update_data 1 $data
    return 3    
        }
    }
}

###
proc blacktools:update_restore {data newdata} {
    global black
    set current_data $newdata
    set variables [regexp -all -inline  {set black\((.+?)\)} $data]
    regsub -all {set black\((.+?)\)} $variables "" variables
    set var_nomodif "name author vers site"
    set var_counter 0
foreach var $variables {
if {$var == ""} {continue}
if {[lsearch -nocase $var_nomodif $var] > -1} {continue}
    set regexp_var "set black\\($var\\) \\{(.*?)\\}"
    set regexp_var2 "set black\\($var\\) \"(.*?)\""
    regexp -nocase $regexp_var $data found_old
    regexp -nocase $regexp_var2 $data found_old_2
if {[info exists found_old]} {
    set found_old [concat $found_old]
    regexp -nocase $regexp_var $newdata found_new
if {[info exists found_new]} {
if {[string equal -nocase $found_old $found_new]} {continue}
    incr var_counter
    regsub $regexp_var $current_data $found_old current_data
    unset found_new
     }
    unset found_old
    }
}

foreach var $variables {
if {$var == ""} {continue}
if {[lsearch -nocase $var_nomodif $var] > -1} {continue}
    set regexp_var2 "set black\\($var\\) \"(.*?)\""
    regexp -nocase $regexp_var2 $data found_old_2
if {[info exists found_old_2]} {
    set found_old_2 [concat $found_old_2]
    regexp -nocase $regexp_var2 $newdata found_new_2
if {[info exists found_new_2]} {
if {[string equal -nocase $found_old_2 $found_new_2]} {continue}
if {[string equal -nocase "default_away" $var] && [string match -nocase "*www.TCLScripts.Net*" $found_old_2]} {continue}
    incr var_counter
    regsub $regexp_var2 $current_data $found_old_2 current_data
    unset found_new_2
        }
    unset found_old_2
     }
}
    return [list $current_data $var_counter]
}

###
proc blacktools:update_data {type data} {
    global black
    set bt_file "$black(dirname)/$black(tclname)"
if {![file exists $bt_file]} {
    return 0
}
if {$type == 0} {
    set file [open $bt_file r]
    set data [read -nonewline $file]
    close $file
    return $data
} else {
    set file [open $bt_file w]
    puts $file $data
    close $file
    }
}

###
proc blacktools:update_getconfig {} {
    global black
    set link "https://raw.githubusercontent.com/tclscripts/BlackTools-TCL/master/BlackTools.tcl"
    http::register https 443 [list ::tls::socket -tls1 true]
    set ipq [http::config -useragent "lynx"]
	set error [catch {set ipq [::http::geturl $link -timeout 10000]} eror]
	set status [::http::status $ipq]
if {$status != "ok"} {
	::http::cleanup $ipq
	return -1
}
	set getipq [::http::data $ipq]
	::http::cleanup $ipq
	return $getipq
}

###
proc blacktools:update_verify {} {
    global black
    set link "https://raw.githubusercontent.com/tclscripts/BlackTools-TCL/master/VERSION"
    http::register https 443 [list ::tls::socket -tls1 true]
    set ipq [http::config -useragent "lynx"]
	set error [catch {set ipq [::http::geturl $link -timeout 10000]} eror]
	set status [::http::status $ipq]
if {$status != "ok"} {
	::http::cleanup $ipq
	return -1
}
	set getipq [::http::data $ipq]
	::http::cleanup $ipq
	return $getipq
}

###
proc blacktools:update_userlang {nick} {
    global black
if {$nick == ""} {return [string tolower $black(default_lang)]}
    set hand [nick2hand $nick]
    set userlang [string tolower [getuser $hand XTRA OUTPUT_LANG]]
if {$userlang == ""} { set userlang "[string tolower $black(default_lang)]" }
    return $userlang
}

###
proc blacktools:update_put {nick chan num var} {
    global black
    set counter 0
foreach v $var {
    incr counter
    set replace(%msg.${counter}%) $v
}
if {$nick != "" && $chan != ""} {
    set hand [nick2hand $nick]
    set getmethod [getuser $hand XTRA OUTPUT_TYPE]
    set userlang [string tolower [getuser $hand XTRA OUTPUT_LANG]]
if {$userlang == ""} { set userlang "[string tolower $black(default_lang)]" }
if {$getmethod == ""} { set getmethod "0" }
    set text [black:color:set "" $black(say.${userlang}.autoupdate.${num})]
    set reply [join $text]
    set reply [string map [array get replace] $reply]
    switch $getmethod {
	0 {
	putserv "NOTICE $nick :$reply"
}
	1 {
	putserv "PRIVMSG $chan :$reply"	
}
	2 {
	putserv "PRIVMSG $nick :$reply"
		}
	}
} else {
    set lang [string tolower $black(default_lang)]
    set text [black:color:set "" $black(say.${lang}.autoupdate.${num})]
    set reply [join $text]
    set reply [string map [array get replace] $reply]
}
    putlog "\[BT\] $reply"
    set file [open $black(log_file) a]
    puts $file $reply
    close $file
}

###
#https://wiki.tcl-lang.org/page/every
proc blacktools:every {interval script} {
    global everyIds
    if {$interval eq {cancel}} {
        after cancel $everyIds($script)
        return
    }
    set everyIds($script) [after $interval [namespace code [info level 0]]]
    set rc [catch {uplevel #0 $script} result]
    if {$rc == [catch break]} {
        after cancel $everyIds($script)
        set rc 0
    } elseif {$rc == [catch continue]} {
        # Ignore - just consume the return code
        set rc 0
    }
    # TODO: Need better handling of errorInfo etc...
    return -code $rc $result
}
