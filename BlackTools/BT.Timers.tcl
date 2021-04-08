#########################################################################
##          BlackTools - The Ultimate Channel Control Script           ##
##                    One TCL. One smart Eggdrop                       ##
#########################################################################
###########################  LOCAL TIMERS  ##############################
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

proc blacktools:timers:load {chan} {
	global black
if {[validchan $chan]} {
#badchan
if {[setting:get $chan antibadchan]} {
if {![info exists black(badchan:$chan:timer_start)]} {
if {[setting:get $chan badchan-scantime] != ""} {
	set time [setting:get $chan badchan-scantime]
		} else {
	set time $black(badchan:scantime)
		}
	set scan_time [time_return_minute $time]
	set black(badchan:$chan:timer_start) $scan_time
			}
		}
#end

#clonescan
if {[setting:get $chan clonescan]} {
if {![info exists black(clonescan:$chan:timer_start)]} {
if {[setting:get $chan clonescan-scantime] != ""} {
	set time [setting:get $chan clonescan-scantime]
		} else {
	set time $black(clonescantime)
		}
	set scan_time [time_return_minute $time]
	set black(clonescan:$chan:timer_start) $scan_time
				}
			}
#end

#antispam
if {[setting:get $chan antispam]} {
if {![info exists black(antispam:$chan:timer_start)]} {
if {[setting:get $chan antispam-scantime] != ""} {
	set time [setting:get $chan antispam-scantime]
		} else {
	set time $black(spamcycle)
		}
	set scan_time [time_return_minute $time]
	set black(antispam:$chan:timer_start) $scan_time
				}
			}
#end

#anunt
if {[setting:get $chan anunt]} {
if {![info exists black(anunt:$chan:timer_start)]} {
if {[setting:get $chan anunt-showtime] != ""} {
	set time [setting:get $chan anunt-showtime]
		} else {
	set time $black(anunttime)
		}
	set scan_time [time_return_minute $time]
	set black(anunt:$chan:timer_start) $scan_time
			}
		}
#end

#idle
if {[setting:get $chan idleop] || [setting:get $chan idlevoice] || [setting:get $chan idlehalfop]} {
if {![info exists black(idle:$chan:timer_start)]} {
if {[setting:get $chan idle-scantime] != ""} {
	set time [setting:get $chan idle-scantime]
		} else {
	set time $black(idleinterval)
		}
	set scan_time [time_return_minute $time]
	set black(idle:$chan:timer_start) $scan_time
			}
		}
#end

#VoiceOnMsg
if {[setting:get $chan voiceonmsg]} {
if {![info exists black(voiceonmsg:$chan:timer_start)]} {
	set black(voiceonmsg:$chan:timer_start) 1
		}
	}
#end


#Limit
if {[setting:get $chan limit]} {
if {![info exists black(limit:$chan:timer_start)]} {
	set black(limit:$chan:timer_start) 1
			}
		}
#end

#TopWords
if {[setting:get $chan topwords]} {
if {![info exists black(topwords:$chan:timer_start)]} {
	set black(topwords:$chan:timer_start) 1
			}
		}
#end

#quote
if {[setting:get $chan quoteofday]} {
if {![info exists black(quote:$chan:timer_start)]} {
if {[setting:get $chan quote-showtime] != ""} {
	set time [setting:get $chan quote-showtime]
		} else {
	set time $black(quote:msgtime)
		}
	set scan_time [time_return_minute $time]
	set black(quote:$chan:timer_start) $scan_time
			}
		}
#end
}

#Auto Unsuspend
set status [s:status]
if {$status == "1"} {
if {![info exists black(s:timer_start)]} {
	set black(s:timer_start) 1
	}
}
#end

#BanMethod Remove

if {![info exists black(banmethod_rem:timer_start)]} {
	set black(banmethod_rem:timer_start) [time_return_minute $black(banmethod_memory_time)]
}

#end

#AutoBroadcast

if {[broadcast:check]} {
if {![info exists black(broadcast:timer_start)]} {
	set scan_time [time_return_minute $black(bttime)]
	set black(broadcast:timer_start) $scan_time
		}
	}
#end
}

#AutoUpdate Check
if {$black(update_on) != 0} {
if {![info exists black(update_check_start)]} {
	timer $black(update_time_check) blacktools:update:timer
	set black(update_check_start) 1
	}
}

#run by minute

proc blacktools:timers:runtime {} {
	global black botnick
	set badchan_channels ""
	set clonescan_channels ""
	set antispam_channels ""
	set anunt_channels ""
	set idle_channels ""
	set voiceonmsg_channels ""
	set limit_channels ""
	set quote_channels ""
	set voiceme_channels ""
	set topwords_channels ""
if {$black(antibotidle_status) == 1} {
	putserv "PRIVMSG ${botnick}\:X :none"
}

foreach chan [channels] {

#badchan

if {[info exists black(badchan:$chan:timer_start)]} {
if {[setting:get $chan antibadchan]} {
if {$black(badchan:$chan:timer_start) == "0"} {
if {[setting:get $chan badchan-scantime] != ""} {
	set time [setting:get $chan badchan-scantime]
		} else {
	set time $black(badchan:scantime)
		}
	set scan_time [time_return_minute $time]
	set black(badchan:$chan:timer_start) $scan_time
}
if {![info exists black(badchan:counter:$chan)]} {
	set black(badchan:counter:$chan) 0
}
	set black(badchan:counter:$chan) [expr $black(badchan:counter:$chan) + 1]
if {$black(badchan:counter:$chan) > $black(badchan:$chan:timer_start)} {
	set black(badchan:counter:$chan) 0
				} elseif {$black(badchan:$chan:timer_start) < $black(badchan:counter:$chan)} {
	set black(badchan:counter:$chan) 0
				} elseif {$black(badchan:counter:$chan) == $black(badchan:$chan:timer_start)} {
	lappend badchan_channels $chan
	set black(badchan:counter:$chan) 0
			}
		}
	}
#end

#clonescan
if {[info exists black(clonescan:$chan:timer_start)]} {
if {[setting:get $chan clonescan]} {
if {$black(clonescan:$chan:timer_start) == "0"} {
if {[setting:get $chan clonescan-scantime] != ""} {
	set time [setting:get $chan clonescan-scantime]
		} else {
	set time $black(clonescantime)
		}
	set scan_time [time_return_minute $time]
	set black(clonescan:$chan:timer_start) $scan_time
}
if {![info exists black(clonescan:counter:$chan)]} {
	set black(clonescan:counter:$chan) 0
}
	set black(clonescan:counter:$chan) [expr $black(clonescan:counter:$chan) + 1]
if {$black(clonescan:counter:$chan) > $black(clonescan:$chan:timer_start)} {
	set black(clonescan:counter:$chan) 0
				} elseif {$black(clonescan:$chan:timer_start) < $black(clonescan:counter:$chan)} {
	set black(clonescan:counter:$chan) 0
				} elseif {$black(clonescan:counter:$chan) == $black(clonescan:$chan:timer_start)} {
	lappend clonescan_channels $chan
	set black(clonescan:counter:$chan) 0
			}
		}
	}
#end

#antispam
if {[info exists black(antispam:$chan:timer_start)]} {
if {[setting:get $chan antispam]} {
if {$black(antispam:$chan:timer_start) == "0"} {
if {[setting:get $chan antispam-scantime] != ""} {
	set time [setting:get $chan antispam-scantime]
		} else {
	set time $black(spamcycle)
		}
	set scan_time [time_return_minute $time]
	set black(antispam:$chan:timer_start) $scan_time
}
if {![info exists black(antispam:counter:$chan)]} {
	set black(antispam:counter:$chan) 0
}
	set black(antispam:counter:$chan) [expr $black(antispam:counter:$chan) + 1]
if {$black(antispam:counter:$chan) > $black(antispam:$chan:timer_start)} {
	set black(antispam:counter:$chan) 0
				} elseif {$black(antispam:$chan:timer_start) < $black(antispam:counter:$chan)} {
	set black(antispam:counter:$chan) 0
				} elseif {$black(antispam:counter:$chan) == $black(antispam:$chan:timer_start)} {
	lappend antispam_channels $chan
	set black(antispam:counter:$chan) 0
			}
		}
	}
#end

#anunt
if {[info exists black(anunt:$chan:timer_start)]} {
if {[setting:get $chan anunt]} {
if {$black(anunt:$chan:timer_start) == "0"} {
if {[setting:get $chan anunt-showtime] != ""} {
	set time [setting:get $chan anunt-showtime]
		} else {
	set time $black(anunttime)
		}
	set scan_time [time_return_minute $time]
	set black(anunt:$chan:timer_start) $scan_time
}
if {![info exists black(anunt:counter:$chan)]} {
	set black(anunt:counter:$chan) 0
}
	set black(anunt:counter:$chan) [expr $black(anunt:counter:$chan) + 1]
if {$black(anunt:counter:$chan) > $black(anunt:$chan:timer_start)} {
	set black(anunt:counter:$chan) 0
				} elseif {$black(anunt:$chan:timer_start) < $black(anunt:counter:$chan)} {
	set black(anunt:counter:$chan) 0
				} elseif {$black(anunt:counter:$chan) == $black(anunt:$chan:timer_start)} {
	lappend anunt_channels $chan
	set black(anunt:counter:$chan) 0
			}
		}
	}
#end

#Quote
if {[info exists black(quote:$chan:timer_start)]} {
if {[setting:get $chan quoteofday]} {
if {$black(quote:$chan:timer_start) == "0"} {
if {[setting:get $chan quote-showtime] != ""} {
	set time [setting:get $chan quote-showtime]
		} else {
	set time $black(quote:msgtime)
		}
	set scan_time [time_return_minute $time]
	set black(quote:$chan:timer_start) $scan_time
}
if {![info exists black(quote:counter:$chan)]} {
	set black(quote:counter:$chan) 0
}
	set black(quote:counter:$chan) [expr $black(quote:counter:$chan) + 1]
if {$black(quote:counter:$chan) > $black(quote:$chan:timer_start)} {
	set black(quote:counter:$chan) 0
				} elseif {$black(quote:$chan:timer_start) < $black(quote:counter:$chan)} {
	set black(quote:counter:$chan) 0
				} elseif {$black(quote:counter:$chan) == $black(quote:$chan:timer_start)} {
	lappend quote_channels $chan
	set black(quote:counter:$chan) 0
			}
		}
	}
#end


#voiceme

if {[info exists black(voiceme:$chan:timer_start)]} {
if {$black(voiceme:$chan:timer_start) == "0"} {
if {[setting:get $chan voiceme-showtime] != ""} {
	set time [setting:get $chan voiceme-showtime]
		} else {
	set time $black(voiceme:msgtime)
		}
	set scan_time [time_return_minute $time]
	set black(voiceme:$chan:timer_start) $scan_time
}
if {![info exists black(voiceme:counter:$chan)]} {
	set black(voiceme:counter:$chan) 0
}
	set black(voiceme:counter:$chan) [expr $black(voiceme:counter:$chan) + 1]
	
if {$black(voiceme:counter:$chan) > $black(voiceme:$chan:timer_start)} {
	set black(voiceme:counter:$chan) 0
				} elseif {$black(voiceme:$chan:timer_start) < $black(voiceme:counter:$chan)} {
	set black(voiceme:counter:$chan) 0
				} elseif {$black(voiceme:counter:$chan) == $black(voiceme:$chan:timer_start)} {
	lappend voiceme_channels $chan
	set black(voiceme:counter:$chan) 0
		}
	}
#


#VoiceOnMsg
if {[info exists black(voiceonmsg:$chan:timer_start)]} {
if {[setting:get $chan voiceonmsg]} {
	lappend voiceonmsg_channels $chan
	}
}
#end

#Limit
if {[info exists black(limit:$chan:timer_start)]} {
if {[setting:get $chan limit]} {
	lappend limit_channels $chan
	}
}
#end

#TopWOrds
if {[info exists black(topwords:$chan:timer_start)]} {
if {[setting:get $chan topwords]} {
	lappend topwords_channels $chan
	}
}
#end

#idle
if {[info exists black(idle:$chan:timer_start)]} {
	set options {idleop idlevoice idlehalfop}
	set idle_activ 0
foreach option $options {
	if {[setting:get $chan $option]} {
	set idle_activ 1
	}
}
if {$idle_activ == "1"} {
if {$black(idle:$chan:timer_start) == "0"} {
if {[setting:get $chan idle-scantime] != ""} {
	set time [setting:get $chan idle-scantime]
		} else {
	set time $black(idleinterval)
		}
	set scan_time [time_return_minute $time]
	set black(idle:$chan:timer_start) $scan_time
}
if {![info exists black(idle:counter:$chan)]} {
	set black(idle:counter:$chan) 0
}
	set black(idle:counter:$chan) [expr $black(idle:counter:$chan) + 1]
if {$black(idle:counter:$chan) > $black(idle:$chan:timer_start)} {
	set black(idle:counter:$chan) 0
				} elseif {$black(idle:$chan:timer_start) < $black(idle:counter:$chan)} {
	set black(idle:counter:$chan) 0
				} elseif {$black(idle:counter:$chan) == $black(idle:$chan:timer_start)} {
	lappend idle_channels $chan
	set black(idle:counter:$chan) 0
			}
		}
	}
#end

}
	
#banmethod remove

if {[info exists black(banmethod_rem:timer_start)]} {
if {![info exists black(banmethod_rem:counter)]} {
	set black(banmethod_rem:counter) 0
}
	set black(banmethod_rem:counter) [expr $black(banmethod_rem:counter) + 1]
if {$black(banmethod_rem:counter) > $black(banmethod_rem:timer_start)} {
	set black(banmethod_rem:counter) 0
	} elseif {$black(banmethod_rem:timer_start) < $black(banmethod_rem:counter)} {
	set black(broadcast:counter) 0
				} elseif {$black(banmethod_rem:counter) == $black(banmethod_rem:timer_start)} {
	set black(banmethod_rem:counter) 0
	banmethod_memory:autoremove
	}
}

#end
	
#Auto Unsuspend
if {[info exists black(s:timer_start)]} {
	s:process:timer
}
#end
	
#AutoBroadcast

if {[info exists black(broadcast:timer_start)]} {
if {![info exists black(broadcast:counter)]} {
	set black(broadcast:counter) 0
}	
	set black(broadcast:counter) [expr $black(broadcast:counter) + 1]
if {$black(broadcast:counter) > $black(broadcast:timer_start)} {
	set black(broadcast:counter) 0
	} elseif {$black(broadcast:timer_start) < $black(broadcast:counter)} {
	set black(broadcast:counter) 0
				} elseif {$black(broadcast:counter) == $black(broadcast:timer_start)} {
	set black(broadcast:counter) 0
	broadcastpublic:show
	}
}

#Away Check
if {![info exists black(away:timer_start)]} {
	set black(away:timer_start) 720
}
if {![info exists black(counter:away)]} {
	set black(counter:away) 0
}
	set black(counter:away) [expr $black(counter:away) + 1]
if {$black(counter:away) > $black(away:timer_start)} {
	set black(counter:away) 0
				} elseif {$black(away:timer_start) < $black(counter:away)} {
	set black(counter:away) 0
				} elseif {$black(counter:away) == $black(away:timer_start)} {
	set black(counter:away) 0
	away:timer
}
#end

if {$badchan_channels != ""} {
	badchan:scantimer [join $badchan_channels]
}

if {$clonescan_channels != ""} {
	clonescan:timer [join $clonescan_channels]
}
if {$antispam_channels != ""} {
	antispam:protect:cycle [join $antispam_channels]
}
if {$anunt_channels != ""} {
	anuntpublic:show [join $anunt_channels]
}
if {$idle_channels != ""} {
	antidle:module [join $idle_channels]
}
if {$voiceonmsg_channels != ""} {
	voiceonmsg:timer [join $voiceonmsg_channels]
}
if {$limit_channels != ""} {
	limit:timer [join $limit_channels]
}

if {$quote_channels != ""} {
	quote:announce [join $quote_channels]
}

if {$voiceme_channels != ""} {
	voiceme:showmsg_timer [join $voiceme_channels]
}

if {$topwords_channels != ""} {
	topwords:save:channels [join $topwords_channels]
}
	timer 1 blacktools:timers:runtime
}

#################
###########################################################################
##   END                                                                 ##
###########################################################################
