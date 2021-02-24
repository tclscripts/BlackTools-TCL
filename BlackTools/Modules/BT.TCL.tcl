#########################################################################
##          BlackTools - The Ultimate Channel Control Script           ##
##                    One TCL. One smart Eggdrop                       ##
#########################################################################
###############################   TCL   #################################
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

proc tcl:process {nick host hand chan chan1 type the_script who} {
	global black config
	set cmd_status [btcmd:status $chan $hand "tcl" 0]
if {$cmd_status == "1"} { 
	return 
}
	set current_tcl ""
	set tcl_exists 0

if {$who == ""} {
if {$type == "0"} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr "tcl"
}
if {$type == "1"} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_nick "tcl"
}
if {$type == "2"} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_priv "tcl"
}
	return
}

switch $who {

wget {
if {$the_script == ""} {
if {$type == "0"} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr "tcl"
}
if {$type == "1"} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_nick "tcl"
}
if {$type == "2"} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_priv "tcl"
}
	return
}

if {![string match -nocase "*.tcl" $the_script]} {
if {$type == "0"} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr "tcl"
}
if {$type == "1"} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_nick "tcl"
}
if {$type == "2"} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_priv "tcl"
}
	return
}
	set split_thescript [split $the_script "/"]
foreach s $split_thescript {
if {[string match -nocase "*.tcl" $s]} {
if {[check:if:valid $s] == "1"} {
	set current_tcl $s
	set tcl_exists 1
		} else {
	set current_tcl $s
		}
	}
}

if {$tcl_exists == "1"} {
	blacktools:tell $nick $host $hand $chan $chan1 tcl.21 $s
	return
}
	set wget [catch {exec wget $the_script -P $black(dirname)/ 2>/dev/null} wget_stat]
if {[string match -nocase "*exited abnormally*" $wget_stat]} {
	blacktools:tell $nick $host $hand $chan $chan1 tcl.19 $current_tcl
	return
	}
	putserv "PRIVMSG $chan :$wget_stat"
	blacktools:tell $nick $host $hand $chan $chan1 tcl.20 $current_tcl
}
	
load {
if {$the_script == ""} {
if {$type == "0"} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr "tcl"
}
if {$type == "1"} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_nick "tcl"
}
if {$type == "2"} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_priv "tcl"
}
	return
}
	set black(tcl_load) [catch {source "$black(dirname)/$the_script"} black(tcl_load_error)]
	
if {$black(tcl_load) == "1"} {
	blacktools:tell $nick $host $hand $chan $chan1 tcl.3 "$the_script [split $black(tcl_load_error)]"
	return
}
	set file [open "$config" r]
	set w [read -nonewline $file]
	close $file
	set counter -1
	set data [split $w "\n"]
	set tcl_position -1
	set found_it 0
foreach line $data {
if {[string match -nocase "source $black(dirname)/*" $line]} {
	set the_split [split $line "/"]
	set script [lindex $the_split 1]
if {[string equal -nocase $script $the_script]} {
	set found_it 1
		}		
	}
}
if {$found_it == 1} {
	blacktools:tell $nick $host $hand $chan $chan1 tcl.4 $the_script
	return
}
	set file [open "$config" a]
	puts $file "source $black(dirname)/$the_script"
	close $file
	rehash
	blacktools:tell $nick $host $hand $chan $chan1 tcl.5 $the_script

}
unload {
if {$the_script == ""} {
if {$type == "0"} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr "tcl"
}
if {$type == "1"} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_nick "tcl"
}
if {$type == "2"} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_priv "tcl"
}
	return
}
if {[string match -nocase "*BlackTools*" $the_script]} {
	blacktools:tell $nick $host $hand $chan $chan1 tcl.18 none
	return
}

	set file [open "$config" r]
	set w [read -nonewline $file]
	close $file
	set counter -1
	set data [split $w "\n"]
	set tcl_position -1
	set found_it 0
foreach line $data {
	set counter [expr $counter + 1]
if {[string match -nocase "*source $black(dirname)/*" $line]} {
	set the_split [split $line "/"]
	set script [lindex $the_split 1]
if {[string equal -nocase $script $the_script]} {
	set found_it 1
	set tcl_position $counter
			}	
		}
	}
if {$found_it == 0} {
	blacktools:tell $nick $host $hand $chan $chan1 tcl.7 $the_script
	return
}

	set delete [lreplace $data $tcl_position $tcl_position]
	set file [open "$config" "w"] 
	puts $file [join $delete "\n"]
	close $file
	rehash
	blacktools:tell $nick $host $hand $chan $chan1 tcl.8 [split $the_script]
}

list {
	set the_files [glob -directory $black(dirname) "*.tcl"]
	set current_tcl ""
	set counter 0
	set found_tcl 0
	set timestamp [clock format [clock seconds] -format {%Y%m%d%H%M%S}]
	set temp "$black(tempdir)/tcl_temp.$timestamp"
	array set tcllist [list]
	set num_l 1
	set num 0
foreach file $the_files {
	set split_file [split $file "/"]
	set the_file [lindex $split_file 1]
if {[string match -nocase "*.tcl" $the_file]} {
	set found_tcl 1
}
	set status [check:if:load $the_file]
if {$status == "1"} {
	lappend tcllist(1) $the_file
	} else {
	lappend tcllist(2) $the_file
	}
	unset status
}

if {$found_tcl == "0"} {
	blacktools:tell $nick $host $hand $chan $chan1 tcl.2 "tcl"
	return
}

	set tempwrite [open $temp w]
foreach n [lsort -integer -increasing [array names tcllist]] {
foreach tcl $tcllist($n) {
	set counter [expr $counter + 1]
if {$n == "1"} {
	puts $tempwrite "$counter \002$tcl\002"
	} elseif {$n == "2"} {
	puts $tempwrite "$counter $tcl"
		}
	}
}
	close $tempwrite
	
	set file [open $temp "r"]
	set w [read -nonewline $file]
	close $file
	set data [split $w "\n"]
	file delete $temp
	module:getinfo $nick $host $hand $chan $chan1 $type $data "tcl" "0" $the_script
	}
info {
if {$the_script == ""} {
if {$type == "0"} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr "tcl"
}
if {$type == "1"} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_nick "tcl"
}
if {$type == "2"} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_priv "tcl"
}
	return
}
	set status_valid [check:if:valid $the_script]
	set status [check:if:load $the_script]
if {$status_valid == "0"} {
	blacktools:tell $nick $host $hand $chan $chan1 tcl.12 $the_script
	return
	}
if {$status == "0"} {
	blacktools:tell $nick $host $hand $chan $chan1 tcl.13 $the_script
} else {
	blacktools:tell $nick $host $hand $chan $chan1 tcl.14 $the_script
			}
		}
default {
if {$type == "0"} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr "tcl"
}
if {$type == "1"} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_nick "tcl"
}
if {$type == "2"} {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_priv "tcl"
}
	return
		}
	}
}

proc check:if:valid {tcl} {
	global black
	set the_files [glob -directory $black(dirname) "*.tcl"]
	foreach file $the_files {
	set split_file [split $file "/"]
	set the_file [lindex $split_file 1]
if {[string equal -nocase $tcl $the_file]} {
	return 1
	}
}
	return 0
}

proc check:if:load {tcl} {
	global black config
	set file [open "$config" r]
	set w [read -nonewline $file]
	close $file
	set data [split $w "\n"]
	set return [lsearch -all -inline $data "source scripts/$tcl"]
if {$return != ""} {
	return 1
} else {
	return 0
	}
}

##############
#########################################################################
##   END                                                               ##
#########################################################################
