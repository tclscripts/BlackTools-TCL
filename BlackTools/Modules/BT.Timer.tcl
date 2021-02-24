#########################################################################
##          BlackTools - The Ultimate Channel Control Script           ##
##                    One TCL. One smart Eggdrop                       ##
#########################################################################
#############################   TIMER TCL   #############################
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

proc timer:process {nick host hand chan chan1 cmd pid timer_args type} {
	global black
	set counter 0
if {[matchattr $hand q]} { blacktools:tell $nick $host $hand $chan $chan1 gl.glsuspend none
	return
}
if {[matchattr $hand -|q $chan]} { blacktools:tell $nick $host $hand $chan $chan1 gl.suspend none
	return
}
if {$cmd == ""} {
switch $type {
	0 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr "timer"
	}
	1 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_nick "timer"
	}
	2 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_priv "timer"
		}
	}
	return
}
switch [string tolower $cmd] {
	list {
	blacktools:tell $nick $host $hand $chan $chan1 timer.1 none
foreach tmr [timers] {
	set counter [expr $counter + 1]
	set time [lindex $tmr 0]
	set process [join [lindex $tmr 1]]
	set pid [lindex $tmr 2]
	blacktools:tell $nick $host $hand $chan $chan1 timer.2 "$counter $pid $time $process"
		}
foreach tmr [utimers] {
	set counter [expr $counter + 1]
	set time [lindex $tmr 0]
	set process [join [lindex $tmr 1]]
	set pid [lindex $tmr 2]
	blacktools:tell $nick $host $hand $chan $chan1 timer.3 "$counter $pid $time $process"
			}
	blacktools:tell $nick $host $hand $chan $chan1 timer.4 none		
		}
		
kill {
	set found_pid 0
if {$pid == ""} {
switch $type {
	0 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr "timer"
	}
	1 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_nick "timer"
	}
	2 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_priv "timer"
		}
	}
	return
}

foreach tmr [timers] {
	set getpid [lindex $tmr 2]
if {[string equal -nocase $getpid $pid]} {
	set found_pid 1
	killtimer $getpid
	break
				}
			}
foreach tmr [utimers] {
	set getpid [lindex $tmr 2]
if {[string equal -nocase $getpid $pid]} {
	set found_pid 1
	killutimer $getpid
	break
				}
			}
if {$found_pid == "1"} {
	blacktools:tell $nick $host $hand $chan $chan1 timer.5 $pid
			} else {
	blacktools:tell $nick $host $hand $chan $chan1 timer.6 $pid
		}
	}
start {		
	set return_time [time_return_minute $pid]
	set found_timer 0
if {$timer_args == "" || $return_time == "-1"} {
switch $type {
	0 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr "timer"
	}
	1 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_nick "timer"
	}
	2 {
	blacktools:tell $nick $host $hand $chan $chan1 gl.instr_priv "timer"
		}
	}
	return
}

foreach tm [timers] {
	set process [join [lindex $tm 1]]
if {[string equal -nocase $process [lindex [split $timer_args] 0]]} {
	set found_timer 1
	}
}
if {$found_timer == "1"} {
	blacktools:tell $nick $host $hand $chan $chan1 timer.8 none
	return
}
	set check_timer [timer $return_time $timer_args]
	blacktools:tell $nick $host $hand $chan $chan1 timer.7 $check_timer
		}
	}
}

##############
#########################################################################
##   END                                                               ##
#########################################################################
