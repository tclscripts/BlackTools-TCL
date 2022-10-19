##          BlackTools - The Ultimate Channel Control Script             ##
##                    One TCL. One smart Eggdrop                         ##
###########################################################################
#############################   BAN TCL   #################################
###########################################################################
##						       		         ##
##   BlackTools  : http://blacktools.tclscripts.net	   	         ##
##   Bugs report : http://www.tclscripts.net/	                         ##
##   GitHub page : https://github.com/tclscripts/BlackToolS-TCL		 ##
##   Online Help : irc://irc.undernet.org/tcl-help 	       	       	 ##
##                 #TCL-HELP / UnderNet        	                         ##
##                 You can ask in english or romanian                    ##
##					                                 ##	
###########################################################################

###
proc blacktools:banlist {chan} {
	global black
	set banlist [lsearch -all -inline $black(bans) "* [string tolower $chan] *"]
	return $banlist
}

###
proc blacktools:banlist:ban {chan} {
	global black
	set banlist [lsearch -all -inline $black(bans) "BAN * [string tolower $chan] *"]
	return $banlist
}

###
proc blacktools:banlist:regex {chan} {
	global black
	set banlist [lsearch -all -inline $black(bans) "REGEX * [string tolower $chan] *"]
	return $banlist
}

###
proc blacktools:gaglist {chan} {
	global black
	set banlist [lsearch -all -inline $black(bans) "GAG * [string tolower $chan] *"]
	return $banlist
}

###
proc blacktools:banlist:gl {} {
	global black
	set banlist [lsearch -all -inline $black(bans) "* GLOBAL *"]
	return $banlist
}

###
proc blacktools:banlist:all {} {
	global black
	set file [open $black(bans_file) r]
	set size [file size $black(bans_file)]
	set data [split [read $file $size] \n]
	close $file
	set banlist [lsearch -all -inline $data "*"]
}

###
proc blacktools:banlist:lastid {} {
	global black
if {$black(bans) != ""} {
foreach b $black(bans) {
	set id [lindex [split $b] 1]
	lappend ids $id
		}
	set sort [blacktools:quicksort [join $ids]]
	return [lindex $sort end]
	} else {return 0}
}

###
proc blacktools:quicksort {m} {
	lsort -integer $m
}

###
proc blacktools:sticky {host chan} {
	global black
	set bancheck [lsearch -all -inline $black(bans) "* [string tolower $chan] $host *"]
if {$bancheck != ""} {
	return [lindex [split $bancheck] 7]
	}
	return
}

###
proc blacktools:isgag {host chan} {
	global black
	set bancheck [lsearch -all -inline $black(bans) "GAG * [string tolower $chan] $host *"]
if {$bancheck != ""} {
	set expire [lindex [split $bancheck] 5]
	set dif [expr $expire - [unixtime]]
if {$dif > 0} {
	return 1
} else {
	return 0
		}
	} else {
	return 0
	}
}

###
proc blacktools:isregex {host chan} {
	global black
	set bancheck [lsearch -all -inline $black(bans) "REGEX * [string tolower $chan] $host *"]
if {$bancheck != ""} {
	set expire [lindex [split $bancheck] 5]
	set dif [expr $expire - [unixtime]]
if {$dif > 0} {
	return 1
} else {
	return 0
		}
	} else {
	return 0
	}
}

###
proc blacktools:isban {host chan} {
	global black
	set bancheck [lsearch -all -inline $black(bans) "BAN * [string tolower $chan] $host *"]
if {$bancheck != ""} {
	return 1
	} else {
	return 0
	}
}

###
proc blacktools:addban:gl {nick host hand chan bantime type sticky global reason id} {
	global black
	set chan1 $chan
	set sec_bantime [expr $bantime * 60]
	set unixtime [unixtime]
if {$bantime != "0"} {
	set bantime [expr $unixtime + $sec_bantime]
}
	set timestamp [clock format [clock seconds] -format {%Y%m%d%H%M%S}]
	set temp "$black(bans_file).new.$timestamp"
	set file [open $black(bans_file) r]
	set size [file size $black(bans_file)]
	set data [split [read $file $size] \n]
	close $file
	set tempwrite [open $temp w]
foreach line $data {
if {$line != ""} {
	set read_chan [lindex [split $line] 2]
	set read_host [lindex [split $line] 3]
if {$type != "REGEX"} {
	set real_read_host [string map [list \[ {\[} \] {\]} \\ {\\}] $read_host]
} else {set real_read_host $read_host}
if {([string match -nocase $host $real_read_host] || [string match -nocase $real_read_host $host] || [string equal -nocase $real_read_host $host]) && [string equal -nocase $chan "GLOBAL"]} { 
	continue
		} else {
	puts $tempwrite $line
		}
	}
}
	close $tempwrite
    file rename -force $temp $black(bans_file)
	blacktools:ban:put $nick $host $hand $chan $bantime $type $sticky $global $reason $id
}

###
proc blacktools:delban {host chan global gag} {
	global black
if {$global == "1"} {
	set chan "GLOBAL"
} else {
if {![validchan $chan]} {
	return
	}
}
if {$gag == "1"} {
	set timestamp [clock format [clock seconds] -format {%Y%m%d%H%M%S}]
	set temp "$black(bans_file).new.$timestamp"
	set tempwrite [open $temp w]
	set file [open $black(bans_file) r]
	set size [file size $black(bans_file)]
	set data [split [read $file $size] \n]
	close $file
foreach line $data {
if {$line != ""} {
	set read_type [lindex [split $line] 0]
	set read_chan [lindex [split $line] 2]
	set read_host [lindex [split $line] 3]
if {[string match -nocase $host $read_host] && [string equal -nocase $chan $read_chan] && [string equal -nocase "GAG" $read_type]} { 
	continue
} else {
	puts $tempwrite $line
		}	 
    }
}
	close $tempwrite
    file rename -force $temp $black(bans_file)
	set black(bans) [blacktools:banlist:all]
	return
}
	set timestamp [clock format [clock seconds] -format {%Y%m%d%H%M%S}]
	set temp "$black(bans_file).new.$timestamp"
	set tempwrite [open $temp w]
	set file [open $black(bans_file) r]
	set size [file size $black(bans_file)]
	set data [split [read $file $size] \n]
	close $file
foreach line $data {
if {$line != ""} {
	set read_chan [lindex [split $line] 2]
	set read_host [lindex [split $line] 3]
	set real_read_host [string map [list \[ {\[} \] {\]} \\ {\\}] $read_host]
if {([string match -nocase $host $real_read_host] || [string match -nocase $real_read_host $host]) && [string equal -nocase $chan $read_chan]} {
	continue
} else {
	puts $tempwrite $line
		}	 
    }
}
	close $tempwrite
    file rename -force $temp $black(bans_file)
	set black(bans) [blacktools:banlist:all]
}

###
proc blacktools:addban {nick host hand chan chan1 bantime type sticky global reason notfound cmd type banned prv id} {
	global black botnick
	chanserv:ignore_remove
	set rcmd [lindex $cmd 0]
	set regex [lindex $cmd 1]
	set read_num 0
	set split_hand [split $hand ":"]
	set gethand [lindex $split_hand 0]
	set gettype [lindex $split_hand 1]
if {$gettype == ""} {
	set hand [string map {":" ""} $hand]
} else {
	set length_type [llength [split $gettype]]
if {$length_type > 1} {
	set gettype [string map {" " "%"} $gettype]
	}
	set hand "$gethand:$gettype"
}
	set sec_bantime [expr $bantime * 60]
	set unixtime [unixtime]
	set accdenied 0
	set xban 0
	set getcount [setting:get $chan kickcount]
	set show_reason $reason
if {$bantime != "0"} {
	set bantime [expr $unixtime + $sec_bantime]
}
if {![string equal -nocase $gethand "BADCHAN"] && ![string equal -nocase $gethand "badident"] && ![string equal -nocase $gethand "badnick"] && ![string equal -nocase $gethand "antibadquitpart"] && ![string equal -nocase $gethand "antichanflood"] && ![string equal -nocase $gethand "antispam"] && ![string equal -nocase $gethand "badhost"] && ![string equal -nocase $gethand "inviteban"] && ![string equal -nocase $gethand "private"] && ![string equal -nocase $gethand "clonescan"] && ![string equal -nocase $gethand "noproxy"]} {
	set show_reason [blacktools:setreason $chan $reason $gethand $bantime $getcount "0" $id]
}
	set timestamp [clock format [clock seconds] -format {%Y%m%d%H%M%S}]
	set temp "$black(bans_file).new.$timestamp"
	set file [open $black(bans_file) r]
	set size [file size $black(bans_file)]
	set data [split [read $file $size] \n]
	close $file
	set tempwrite [open $temp w]
foreach line $data {
if {$line != ""} {
	set read_chan [lindex [split $line] 2]
	set read_host [lindex [split $line] 3]
if {$regex != "REGEX"} {
	set real_read_host [string map [list \[ {\[} \] {\]} \\ {\\}] $read_host]
} else {set real_read_host $read_host}
if {([string match -nocase $host $real_read_host] || [string match -nocase $real_read_host $host] || [string equal -nocase $real_read_host $host]) && [string equal -nocase $chan $read_chan]} { 
	set read_num [lindex [split $line] 1]
	set read_time [lindex [split $line] 5]
	set read_stick [lindex [split $line] 7]
	set bywho [lindex [split $line] 4]
	set split_bywho [split $bywho ":"]
	set level [lindex $split_bywho 1]
if {![string equal -nocase $gethand "BADCHAN"] && ![string equal -nocase $gethand "badident"] && ![string equal -nocase $gethand "badnick"] && ![string equal -nocase $gethand "antibadquitpart"] && ![string equal -nocase $gethand "antichanflood"] && ![string equal -nocase $gethand "badrealname"] && ![string equal -nocase $gethand "antispam"] && ![string equal -nocase $gethand "badhost"] && ![string equal -nocase $gethand "inviteban"] && ![string equal -nocase $gethand "private"] && ![string equal -nocase $gethand "clonescan"] && ![string equal -nocase $gethand "noproxy"]} {
	set show_reason [blacktools:setreason $chan $reason $gethand $read_time $getcount "0" $id]
}
	set check [blacktools:check:levelub $gethand $chan $level]
if {$check == "-1"} {
	puts $tempwrite $line
	set accdenied 1
	continue
}
if {[matchattr $gethand -|O $chan] && ($read_time == "0")} {
	puts $tempwrite $line
	set accdenied 1
	continue
}
if {[matchattr $gethand -|OAS $chan] && ($read_stick == "1")} {
	puts $tempwrite $line
	set accdenied 1
	continue
}	
	continue
} else {
	puts $tempwrite $line
		}	 
    }
}
	close $tempwrite
    file rename -force $temp $black(bans_file)
if {$read_num != "0"} {
	set id $read_num
}
if {$accdenied == "0"} {
if {$rcmd == "b" && $type != "gl"} {
if {$prv != "prv"} {
	set prv ""
}
if {$regex == "REGEX"} {
	blacktools:tell $nick $prv $hand $chan $chan1 b.12 $id
} elseif {$regex != "REGEX" && [setting:get $chan xonly]} {
	blacktools:tell $nick $prv $hand $chan $chan1 b.14 $id
} else {
	blacktools:tell $nick $prv $hand $chan $chan1 b.7 $id	
	}
}
if {$notfound == "1"} {
if {[setting:get $chan xonly]} {
	set xban 1
	set getxtime [setting:get $chan xbantime]
	set getxlevel [setting:get $chan xbanlevel]
if {$getxtime == ""} {
	set getxtime $black(chanserv:bantime)
}
if {$getxlevel == ""} {
	set getxlevel $black(chanserv:banlevel)
	}
}
	set show_reason [blacktools:rem_comment_ban $show_reason]
if {[onchan $black(chanserv) $chan] && $xban == "1" && $regex != "REGEX"} {
if {$rcmd == "stick"} {
	putquick "MODE $chan +b $host"
			}
	putquick "PRIVMSG $black(chanserv) :ban $chan $host $getxtime $getxlevel $show_reason"
		} else {
if {$regex != "REGEX"} {
	putquick "MODE $chan +b $host"
		}
	}
}
	blacktools:ban:put $nick $host $hand $chan $bantime $type $sticky $global $reason $id
		} else {
	blacktools:tell $nick $host $hand $chan $chan1 gl.nobanlevel "$host"
	}
}

###
proc blacktools:ban:put {nick host hand chan bantime type sticky global reason id} {
	global black
	set is_comment 0
	set file [open $black(bans_file) "a"]
if {[lsearch -exact -nocase $reason "-comment"] > -1} {
	set is_comment 1
	set split_it [wsplit $reason "-comment"]
	set comment [concat [lindex $split_it 1]]
	set reason [concat [lindex $split_it 0]]
} elseif {[lsearch -exact -nocase $reason "-com"] > -1} {
	set is_comment 1
	set split_it [wsplit $reason "-com"]
	set comment [concat [lindex $split_it 1]]
	set reason [concat [lindex $split_it 0]]
} elseif {[lsearch -exact -nocase $reason "-c"] > -1} {
	set is_comment 1
	set split_it [wsplit $reason "-c"]
	set comment [concat [lindex $split_it 1]]
	set reason [concat [lindex $split_it 0]]
}
	set created [unixtime]
if {$is_comment == "1"} {
if {$global == "1"} {
	puts $file "$type $id GLOBAL $host $hand $bantime $created $sticky $global $reason%C%$comment"
} else {
	puts $file "$type $id [string tolower $chan] $host $hand $bantime $created $sticky $global $reason%C%$comment"
	}
} else {
if {$global == "1"} {
	puts $file "$type $id GLOBAL $host $hand $bantime $created $sticky $global $reason"
} else {
	puts $file "$type $id [string tolower $chan] $host $hand $bantime $created $sticky $global $reason"
	}
}
	close $file
	blacktools:ub:setlast $bantime
	set black(bans) [blacktools:banlist:all]
}

###
proc blacktools:autounban {} {
	global black
	chanserv:ignore_remove
	set found_expired 0
foreach b $black(bans) {
	set read_time [lindex [split $b] 5]
if {$read_time == "0"} { continue }
if {[expr $read_time - [unixtime]] <= 0} {
	set read_host [lindex [split $b] 3]
	set real_read_host [string map [list \[ {\[} \] {\]} \\ {\\}] $read_host]
	set read_type [lindex [split $b] 0]
	set read_chan [lindex [split $b] 2]
	set read_tr [lindex [split $b] 7]
	blacktools:auto:remove $real_read_host $read_chan
	set found_expired 1
if {![validchan $read_chan]} {
if {[string equal -nocase $read_chan "GLOBAL"]} {
	foreach chan [channels] {
if {[ischanban $read_host $chan]} {
if {[setting:get $chan xonly] && [onchan $black(chanserv)]} {
	putquick "PRIVMSG $black(chanserv) :unban $chan $read_host"
			} else {
	pushmode $chan -b $read_host		
			}
		}
	}
}
	continue
} else { set chan $read_chan }
if {[botisop $chan]} {
	set getlang [string tolower [setting:get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
if {[ischanban $read_host $chan]} {
if {[string equal -nocase $read_type "GAG"]} {
foreach user [chanlist $chan] {
	set uhost "$user![getchanhost $user $chan]"
if {[string match -nocase $real_read_host $uhost]} {
	set replace(%nick%) $user
	set replace(%chan%) $chan
	set text [black:color:set "" $black(say.$getlang.gag.5)]
	set reply [join $text]
	puthelp "PRIVMSG $chan :[string map [array get replace] $reply]"
			}
		}
	}
	pushmode $chan -b $read_host
	}
}
if {$read_tr == "2"} {
	troll:del $read_host $chan
}

if {[setting:get $chan xonly] && [onchan $black(chanserv)]} {
	putquick "PRIVMSG $black(chanserv) :unban $chan $read_host"
			}
		}
	}

if {$found_expired == 1} {
	set black(bans) [blacktools:banlist:all]
}
	set lastban [blacktools:getlastban]
if {$lastban == "-1"} {
if {[info exists black(lastban)]} {
	unset black(lastban)
	}
	return
}
	set black(lastban) $lastban
foreach tmr [utimers] {
if {[string match "*blacktools:autounban*" [join [lindex $tmr 1]]]} {
	killutimer [lindex $tmr 2]
		}
	}
	utimer $black(lastban) [list blacktools:autounban]
}

###
proc blacktools:join:autoban {nick host vhost hand chan fullhost realname} {
	global black
	set hand [nick2hand $nick]
	set foundblacktools_ban 0
	set specified_bmask ""
	set rest_host [lindex [split $fullhost @] 0]
if {$host == ""} {set fulldns $fullhost} else {set fulldns "$rest_host@$host"}
	chanserv:ignore_remove
	set getlang [string tolower [setting:get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
	set xban 0
	set getcount [setting:get $chan kickcount]
if {![botisop $chan] && ![setting:get $chan xonly]} {
	return
}
if {[setting:get $chan xonly]} {
	set xban 1
	set getxtime [setting:get $chan xbantime]
	set getxlevel [setting:get $chan xbanlevel]
if {$getxtime == ""} {
	set getxtime $black(chanserv:bantime)
}
if {$getxlevel == ""} {
	set getxlevel $black(chanserv:banlevel)
	}
}
	set foundgl 0
	set getcount [setting:get $chan kickcount]
if {[validuser $hand]} {
if {[matchattr $hand $black(banflag)]} {
	set hosts [getuser $hand hosts]
	set cidr 0
foreach h $hosts {
if {[regexp {[/]} $h]} {
	set read_ip [lindex [split $h @] 1]
	set theip [lindex [split $fullhost @] 1]
	set cidr_ip [ipcidr $read_ip $theip]
if {$cidr_ip == "1"} {
	set read_rest_ip [lindex [split $h @] 0]
	set read_theip [lindex [split $fullhost @] 0]
if {[string match -nocase $read_rest_ip $read_theip] || [string match -nocase $read_theip $read_rest_ip]} {
	set cidr 1
			}
		}
	}
}
if {[string match -nocase $h $fullhost] || [string match -nocase $h $fulldns] || $cidr == "1"} {
	set check_except [blacktools:ban:chanexempt $fullhost $fulldns $chan]
if {$check_except == "0"} {
	add:ban $h [join [getuser $hand XTRA BLACK_REASON]]
				}
			}
		}
	}
	set llength_banlist [llength $black(bans)]
for {set i $llength_banlist} { $i >= 0 } { decr i } {
	set b [lindex $black(bans) $i]
	set cidr 0
	set type [lindex [split $b] 0]
	set read_chan [lindex [split $b] 2]
	set read_host [lindex [split $b] 3]
if {[string equal -nocase $type "REGEX"] && [string equal -nocase $read_chan $chan]} {
if {[regexp {[/]} $read_host]} {
	set a ""
	regexp {/(.*)} $read_host a
if {$a != ""} {
	set split_a [split $a "/"]
if {[regexp {[0-9]} [lindex $split_a 1]]} {
	set specified_bmask [lindex $split_a 1]
} elseif {[regexp {[0-9]} [lindex $split_a 2]]} {
	set specified_bmask [lindex $split_a 2]
}
if {$specified_bmask != ""} {
	regsub "/$specified_bmask" $read_host "" read_host
	}
}
	set rfullhost "$fullhost/$realname"
	set rfulldns "$fulldns/$realname"
} else {
	set rfullhost "$fullhost"
	set rfulldns "$fulldns"
}
if {[regexp "$read_host" $rfullhost] || [regexp "$read_host" $rfulldns]} {
if {[matchattr $hand $black(exceptflags) $chan]} {
	break
}
	set check_except [blacktools:ban:chanexempt $fullhost $fulldns $chan]
if {$check_except == "1"} {
	break
}
if {$specified_bmask != ""} {
	set mask [return_mask $specified_bmask $fullhost $nick]
} else {
	set mask [return_mask [return_host_num "b" $chan $fullhost] $fullhost $nick]
}
	set foundblacktools_ban 1
	set num [lindex [split $b] 1]
	set read_reason [join [lrange [split $b] 9 end]]
	set read_reason [blacktools:rem_comment $read_reason]
	set read_reason [encoding convertfrom utf-8 $read_reason]
	set expire [lindex [split $b] 5]
	set read_handle [split [lindex [split $b] 4] ":"]
	set gethand [lindex [split $read_handle] 0]
	set show_reason [blacktools:setreason $chan $read_reason $read_handle $expire $getcount "2" $num]
if {$expire == "0"} {
	set show_reason [blacktools:bl:setreason $chan $read_reason $read_handle $expire $getcount "0" $num]
if {[setting:get $chan showhandle]} {
if {![string equal -nocase $gethand "BADCHAN"] && ![string equal -nocase $gethand "badident"] && ![string equal -nocase $gethand "badnick"] && ![string equal -nocase $gethand "antibadquitpart"] && ![string equal -nocase $gethand "antichanflood"] && ![string equal -nocase $gethand "badrealname"] && ![string equal -nocase $gethand "antispam"] && ![string equal -nocase $gethand "badhost"] && ![string equal -nocase $gethand "antipub"] && ![string equal -nocase $gethand "antijoinflood"] && ![string equal -nocase $gethand "antinotice"] && ![string equal -nocase $gethand "antictcp"] && ![string equal -nocase $gethand "antirepeat"] && ![string equal -nocase $gethand "antibold"] && ![string equal -nocase $gethand "anticolor"] && ![string equal -nocase $gethand "antiunderline"] && ![string equal -nocase $gethand "antilongtext"] && ![string equal -nocase $gethand "antibadword"] && ![string equal -nocase $gethand "anticaps"] && ![string equal -nocase $gethand "nickflood"] && ![string equal -nocase $gethand "inviteban"] && ![string equal -nocase $gethand "private"] && ![string equal -nocase $gethand "clonescan"] && ![string equal -nocase $gethand "repetitivechars"] && ![string equal -nocase $gethand "noproxy"]} {
	set show_reason "\[BT\] \[$gethand\] (REGEX) blacklisted -- ($black(say.$getlang.gl.reason): $show_reason)"
} else {
		set show_reason "\[BT\] (REGEX) blacklisted -- ($black(say.$getlang.gl.reason): $show_reason)"
	}
} else {
	set show_reason "\[BT\] (REGEX) blacklisted -- ($black(say.$getlang.gl.reason): $show_reason)"
	}
}
if {[onchan $black(chanserv) $chan] && $xban == "1"} {
	putquick "PRIVMSG $black(chanserv) :ban $chan $mask $getxtime $getxlevel $show_reason"
} else {
	putquick "MODE $chan +b $mask"
	putquick "KICK $chan $nick :$show_reason"
		}
	break
	}
}
if {[string equal -nocase $type "BAN"] && ![string equal -nocase $read_chan "GLOBAL"] && [string equal -nocase $read_chan $chan]} {
	set read_host [lindex [split $b] 3]
	set real_read_host [string map [list \[ {\[} \] {\]} \\ {\\}] $read_host]
if {[regexp {[/]} $real_read_host]} {
	set read_ip [lindex [split $real_read_host @] 1]
	set theip [lindex [split $fullhost @] 1]
	set theip_dns [lindex [split $fulldns @] 1]
	set cidr_ip [ipcidr $read_ip $theip]
	set cidr_ip_dns [ipcidr $read_ip $theip_dns]
if {$cidr_ip == "1" || $cidr_ip_dns == "1"} {
	set read_rest_ip [lindex [split $fullhost @] 0]
	set read_theip [lindex [split $real_read_host @] 0]
if {[string match -nocase $read_rest_ip $read_theip] || [string match -nocase $read_theip $read_rest_ip]} {
	set cidr 1
		}
	}
}
if {([string match -nocase $fulldns $real_read_host] || [string match -nocase $real_read_host $fulldns]) || ([string match -nocase $fullhost $real_read_host] || [string match -nocase $real_read_host $fullhost]) || ($cidr == "1")} {
	set check_except [blacktools:ban:chanexempt $fullhost $fulldns $chan]
if {$check_except == "1"} {
	break
}
	set foundblacktools_ban 1
	set num [lindex [split $b] 1]
	set read_reason [join [lrange [split $b] 9 end]]
	set read_reason [encoding convertfrom utf-8 $read_reason]
	set expire [lindex [split $b] 5]
	set read_handle [split [lindex [split $b] 4] ":"]
	set gethand [lindex [split $read_handle] 0]

	set show_reason [blacktools:setreason $chan $read_reason $read_handle $expire $getcount "0" $num]
if {$expire == "0"} {
	set show_reason [blacktools:bl:setreason $chan $read_reason $read_handle $expire $getcount "0" $num]
if {[setting:get $chan showhandle]} {
if {![string equal -nocase $gethand "BADCHAN"] && ![string equal -nocase $gethand "badident"] && ![string equal -nocase $gethand "badnick"] && ![string equal -nocase $gethand "antibadquitpart"] && ![string equal -nocase $gethand "antichanflood"] && ![string equal -nocase $gethand "badrealname"] && ![string equal -nocase $gethand "antispam"] && ![string equal -nocase $gethand "badhost"] && ![string equal -nocase $gethand "antipub"] && ![string equal -nocase $gethand "antijoinflood"] && ![string equal -nocase $gethand "antinotice"] && ![string equal -nocase $gethand "antictcp"] && ![string equal -nocase $gethand "antirepeat"] && ![string equal -nocase $gethand "antibold"] && ![string equal -nocase $gethand "anticolor"] && ![string equal -nocase $gethand "antiunderline"] && ![string equal -nocase $gethand "antilongtext"] && ![string equal -nocase $gethand "antibadword"] && ![string equal -nocase $gethand "anticaps"] && ![string equal -nocase $gethand "nickflood"] && ![string equal -nocase $gethand "inviteban"] && ![string equal -nocase $gethand "private"] && ![string equal -nocase $gethand "clonescan"] && ![string equal -nocase $gethand "repetitivechars"] && ![string equal -nocase $gethand "noproxy"]} {
	set show_reason "\[BT\] \[$gethand\] blacklisted -- ($black(say.$getlang.gl.reason): $show_reason)" 
} else {
		set show_reason "\[BT\] blacklisted -- ($black(say.$getlang.gl.reason): $show_reason)" 
	}
} else {
	set show_reason "\[BT\] blacklisted -- ($black(say.$getlang.gl.reason): $show_reason)"
	}
}
if {[onchan $black(chanserv) $chan] && $xban == "1"} {
	putquick "PRIVMSG $black(chanserv) :ban $chan $read_host $getxtime $getxlevel $show_reason"
		} else {
	putquick "MODE $chan +b $read_host"
	putquick "KICK $chan $nick :$show_reason"
			}
		break
	}
}
if {[string equal -nocase $read_chan "GLOBAL"]} {
	set cidr 0
	set read_host [lindex [split $b] 3]
	set real_read_host [string map [list \[ {\[} \] {\]} \\ {\\}] $read_host]

if {[string equal -nocase $type "REGEX"]} {
if {[regexp {[/]} $read_host]} {
	set a ""
	regexp {/(.*)} $read_host a
if {$a != ""} {
	set split_a [split $a "/"]
if {[regexp {[0-9]} [lindex $split_a 1]]} {
	set specified_bmask [lindex $split_a 1]
} elseif {[regexp {[0-9]} [lindex $split_a 2]]} {
	set specified_bmask [lindex $split_a 2]
}
if {$specified_bmask != ""} {
	regsub "/$specified_bmask" $read_host "" read_host
	}
}
	set rfullhost "$fullhost/$realname"
	set rfulldns "$fulldns/$realname"
} else {
	set rfullhost "$fullhost"
	set rfulldns "$fulldns"
}
if {[regexp "$read_host" $rfullhost] || [regexp "$read_host" $rfulldns]} {
	set check_except [blacktools:ban:exempt $fullhost]
if {$check_except == "1"} {
	break
}
if {$specified_bmask != ""} {
	set mask [return_mask $specified_bmask $fullhost $nick]
} else {
	set mask [return_mask $black(b:banmask) $fullhost $nick]
}
	set foundblacktools_ban 1
	set num [lindex [split $b] 1]
	set read_reason [join [lrange [split $b] 9 end]]
	set read_reason [encoding convertfrom utf-8 $read_reason]
	set expire [lindex [split $b] 5]
	set read_handle [lindex [split $b] 4]
	set show_reason [blacktools:setreason $chan $read_reason $read_handle $expire "" "3" $num]
if {$expire == "0"} {
	set show_reason [blacktools:bl:setreason $chan $read_reason $read_handle $expire $getcount "0" $num]
if {[setting:get $chan showhandle]} {
	set show_reason "\[BT\] \[$read_handle\] (GLOBAL) (REGEX) blacklisted -- ($black(say.$getlang.gl.reason): $show_reason)" 
} else {
	set show_reason "\[BT\] (GLOBAL) (REGEX) blacklisted -- ($black(say.$getlang.gl.reason): $show_reason)"
	}
}
if {[onchan $black(chanserv) $chan] && $xban == "1"} {
	putquick "PRIVMSG $black(chanserv) :ban $chan $mask $getxtime $getxlevel $show_reason"
		} else {
	putquick "MODE $chan +b $mask"
	putquick "KICK $chan $nick :$show_reason"
		}
	break
	}
}
if {[regexp {[/]} $real_read_host]} {
	set read_ip [lindex [split $real_read_host @] 1]
	set theip [lindex [split $fullhost @] 1]
	set theip_dns [lindex [split $fulldns @] 1]
	set cidr_ip [ipcidr $read_ip $theip]
	set cidr_ip_dns [ipcidr $read_ip $theip_dns]
if {$cidr_ip == "1" || $cidr_ip_dns == "1"} {
	set read_rest_ip [lindex [split $fullhost @] 0]
	set read_theip [lindex [split $real_read_host @] 0]
if {[string match -nocase $read_rest_ip $read_theip] || [string match -nocase $read_theip $read_rest_ip]} {
	set cidr 1
		}
	}
}
if {([string match -nocase $fullhost $real_read_host] || [string match -nocase $real_read_host $fullhost]) || ($cidr == "1")} {
	set check_except [blacktools:ban:exempt $fullhost]
if {$check_except == "1"} {
	break
}
	set foundblacktools_ban 1
	set num [lindex [split $b] 1]
	set read_reason [join [lrange [split $b] 9 end]]
	set read_reason [encoding convertfrom utf-8 $read_reason]
	set expire [lindex [split $b] 5]
	set read_handle [lindex [split $b] 4]
	set show_reason [blacktools:setreason $chan $read_reason $read_handle $expire "" "1" $num]
if {$expire == "0"} {
	set show_reason [blacktools:bl:setreason $chan $read_reason $read_handle $expire $getcount "0" $num]
if {[setting:get $chan showhandle]} {
	set show_reason "\[BT\] \[$read_handle\] (GLOBAL) blacklisted -- ($black(say.$getlang.gl.reason): $show_reason)" 
} else {
	set show_reason "\[BT\] (GLOBAL) blacklisted -- ($black(say.$getlang.gl.reason): $show_reason)"
	}
}
if {[onchan $black(chanserv) $chan] && $xban == "1"} {
	putquick "PRIVMSG $black(chanserv) :ban $chan $read_host $getxtime $getxlevel $show_reason"
		} else {
	putquick "MODE $chan +b $read_host"
	putquick "KICK $chan $nick :$show_reason"
			}
		break
	}
}
if {[string equal -nocase $type "GAG"] && [string equal -nocase $read_chan $chan]} {
	set read_host [lindex [split $b] 3]
	set real_read_host [string map [list \[ {\[} \] {\]} \\ {\\}] $read_host]
if {([string match -nocase $fulldns $real_read_host] || [string match -nocase $real_read_host $fulldns]) || ([string match -nocase $fullhost $real_read_host] || [string match -nocase $real_read_host $fullhost])} {
if {[ischanban $read_host $chan]} {
	continue
}
	set expire [lindex [split $b] 5]
	set read_time [return_time $getlang [expr $expire - [unixtime]]]
	set replace(%minute%) $read_time
	set replace(%gag%) $nick
	pushmode $chan +b $read_host
if {[isop $nick $chan]} {
	pushmode $chan -o $nick
}
if {[isvoice $nick $chan]} {
	pushmode $chan -v $nick
}
	set text [black:color:set "" $black(say.$getlang.gag.1)]
	set reply [join $text]
	set reply [string map [array get replace] $reply]
	putquick "PRIVMSG $chan :$reply"
	break
		}
	}
}

if {$foundblacktools_ban == 0} {
foreach ban [banlist] {
if {[string match -nocase [string tolower [lindex $ban 0]] $host]} {
	set foundgl 1
	set reason [lindex [split $ban] 1]
	set expire [lindex [split $ban] 2]
	set reason [join [lindex [split $ban] 1]]
	set bywho [lindex [split $ban] 5]
	set show_reason [blacktools:setreason $chan $reason $bywho $expire "" "1" "0"]
if {[onchan $black(chanserv) $chan] && $xban == "1"} {
	putquick "PRIVMSG $black(chanserv) :ban $chan [lindex $ban 0] $getxtime $getxlevel $show_reason"
		} else {
	putquick "MODE $chan +b [lindex $ban 0]"
	putquick "KICK $chan $nick :$show_reason"
		}
		break
	}
}
if {$foundgl == "0"} {
foreach ban [banlist $chan] {
if {[string match -nocase [string tolower [lindex $ban 0]] $host]} {
	set reason [lindex $ban 1]
	set expire [lindex $ban 2]
	set reason [join [split [lindex $ban 1]]]
	set bywho [split [lindex $ban 5]]
	set show_reason [blacktools:setreason $chan $reason $bywho $expire $getcount "0" "0"]
if {[onchan $black(chanserv) $chan] && $xban == "1"} {
	putquick "PRIVMSG $black(chanserv) :ban $chan [lindex $ban 0] $getxtime $getxlevel $show_reason"
} else {
	putquick "MODE $chan +b [lindex $ban 0]"
	putquick "KICK $chan $nick :$show_reason"
					}
					break
				}
			}
		}		
	}
}

###
proc blacktools:auto:remove {host chan} {
	global black
	set timestamp [clock format [clock seconds] -format {%Y%m%d%H%M%S}]
	set temp "$black(bans_file).new.$timestamp"
	set tempwrite [open $temp w]
	set file [open $black(bans_file) r]
	set size [file size $black(bans_file)]
	set data [split [read $file $size] \n]
	close $file
foreach line $data {
	set read_host [lindex [split $line] 3]
	set read_chan [lindex [split $line] 2]
	set real_read_host [string map [list \[ {\[} \] {\]} \\ {\\}] $read_host]
if {([string match -nocase $host $real_read_host] || [string equal -nocase $host $real_read_host]) && [string equal -nocase $read_chan $chan]} {
	continue
} else {
	puts $tempwrite $line
		}	 
    }
	close $tempwrite
    file rename -force $temp $black(bans_file)
}

###
proc blacktools:join:ban {nick host hand chan} {
	global black
if {[isbotnick $nick]} {
foreach tmr [utimers] {
if {[string match "*who:chan $chan*" [join [lindex $tmr 1]]]} {
	killutimer [lindex $tmr 2]
			}	
		}
	utimer 5 [list who:chan $chan]
foreach b [blacktools:banlist:ban $chan] {
	set read_host [lindex [split $b] 3]
	set real_read_host [string map [list \[ {\[} \] {\]} \\ {\\}] $read_host]
	set sticky [lindex [split $b] 7]
if {$sticky == "1"} {
if {![ischanban $read_host $chan]} {
	utimer 5 [list pushmode $chan +b $read_host]
				}
			}
		}	
	}
}

###
proc blacktools:auto:ban_act {nick uhost vhost chan realname} {
	global black botnick
	set rest_host [lindex [split $uhost @] 0]
	set found_ban 0
	set fulldns "$rest_host@$vhost"
	set specified_bmask ""
if {$vhost == ""} { set fulldns $uhost}
	set xban 0
	set getcount [setting:get $chan kickcount]
	set getlang [string tolower [setting:get $chan lang]]
	chanserv:ignore_remove
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
if {![botisop $chan] && ![setting:get $chan xonly]} {
	return
}
if {[setting:get $chan xonly]} {
	set xban 1
	set getxtime [setting:get $chan xbantime]
	set getxlevel [setting:get $chan xbanlevel]
if {$getxtime == ""} {
	set getxtime $black(chanserv:bantime)
}
if {$getxlevel == ""} {
	set getxlevel $black(chanserv:banlevel)
	}
}
	set handle [nick2hand $nick]
if {$handle != "*"} { 
if {[validuser $handle]} {
if {[matchattr $handle B]} {
	set hosts [getuser $handle hosts]
	set cidr 0
foreach h $hosts {
if {[regexp {[/]} $h]} {
	set read_ip [lindex [split $h @] 1]
	set theip [lindex [split $uhost @] 1]
	set cidr_ip [ipcidr $read_ip $theip]
if {$cidr_ip == "1"} {
	set read_rest_ip [lindex [split $h @] 0]
	set read_theip [lindex [split $uhost @] 0]
if {[string match -nocase $read_rest_ip $read_theip] || [string match -nocase $read_theip $read_rest_ip]} {
	set cidr 1
		}
	}
}
if {[string match -nocase $h $uhost] || [string match -nocase $h $fulldns] || $cidr == "1"} {
	set check_except [blacktools:ban:chanexempt $uhost $fulldns $chan]
if {$check_except == "0"} {
	add:ban $h [join [getuser $handle XTRA BLACK_REASON]]
	set found_ban 1
					}
				}
			}
		}
	}
}
if {$found_ban == "1"} {
	return
}
	set llength_banlist [llength $black(bans)]
for {set i $llength_banlist} { $i >= 0 } { decr i } {
	set b [lindex $black(bans) $i]
	set cidr 0
	set type [lindex [split $b] 0]
	set read_chan [lindex [split $b] 2]
if {[string equal -nocase $type "REGEX"] && [string equal -nocase $read_chan $chan]} {
	set read_host [lindex [split $b] 3]
if {[regexp {[/]} $read_host]} {
	set a ""
	regexp {/(.*)} $read_host a
if {$a != ""} {
	set split_a [split $a "/"]
if {[regexp {[0-9]} [lindex $split_a 1]]} {
	set specified_bmask [lindex $split_a 1]
} elseif {[regexp {[0-9]} [lindex $split_a 2]]} {
	set specified_bmask [lindex $split_a 2]
}
if {$specified_bmask != ""} {
	regsub "/$specified_bmask" $read_host "" read_host
	}
}
	set rfullhost "$uhost/$realname"
	set rfulldns "$fulldns/$realname"
} else {
	set rfullhost "$uhost"
	set rfulldns "$fulldns"
}
if {[regexp "$read_host" $rfullhost] || [regexp "$read_host" $rfulldns]} {
if {[matchattr $handle $black(exceptflags) $chan]} {
	continue
}
	set check_except [blacktools:ban:chanexempt $uhost $fulldns $chan]
if {$check_except == "1"} {
	break
}
if {$specified_bmask != ""} {
	set mask [return_mask $specified_bmask $uhost $nick]
} else {
	set mask [return_mask [return_host_num "b" $chan $uhost] $uhost $nick]
}
	set num [lindex [split $b] 1]
	set read_reason [join [lrange [split $b] 9 end]]
	set read_reason [blacktools:rem_comment $read_reason]
	set read_reason [encoding convertfrom utf-8 $read_reason]
	set expire [lindex [split $b] 5]
	set read_handle [split [lindex [split $b] 4] ":"]
	set gethand [lindex [split $read_handle] 0]
	set show_reason [blacktools:setreason $chan $read_reason $read_handle $expire $getcount "2" $num]
if {$expire == "0"} {
	set show_reason [blacktools:bl:setreason $chan $read_reason $read_handle $expire $getcount "0" $num]
if {[setting:get $chan showhandle]} {
if {![string equal -nocase $gethand "BADCHAN"] && ![string equal -nocase $gethand "badident"] && ![string equal -nocase $gethand "badnick"] && ![string equal -nocase $gethand "antibadquitpart"] && ![string equal -nocase $gethand "antichanflood"] && ![string equal -nocase $gethand "badrealname"] && ![string equal -nocase $gethand "antispam"] && ![string equal -nocase $gethand "badhost"] && ![string equal -nocase $gethand "antipub"] && ![string equal -nocase $gethand "antijoinflood"] && ![string equal -nocase $gethand "antinotice"] && ![string equal -nocase $gethand "antictcp"] && ![string equal -nocase $gethand "antirepeat"] && ![string equal -nocase $gethand "antibold"] && ![string equal -nocase $gethand "anticolor"] && ![string equal -nocase $gethand "antiunderline"] && ![string equal -nocase $gethand "antilongtext"] && ![string equal -nocase $gethand "antibadword"] && ![string equal -nocase $gethand "anticaps"] && ![string equal -nocase $gethand "nickflood"] && ![string equal -nocase $gethand "inviteban"] && ![string equal -nocase $gethand "private"] && ![string equal -nocase $gethand "clonescan"] && ![string equal -nocase $gethand "repetitivechars"] && ![string equal -nocase $gethand "noproxy"]} {
	set show_reason "\[BT\] \[$gethand\] (REGEX) blacklisted -- ($black(say.$getlang.gl.reason): $show_reason)"
} else {
		set show_reason "\[BT\] (REGEX) blacklisted -- ($black(say.$getlang.gl.reason): $show_reason)"
	}
} else {
	set show_reason "\[BT\] (REGEX) blacklisted -- ($black(say.$getlang.gl.reason): $show_reason)"
	}
}
if {[onchan $black(chanserv) $chan] && $xban == "1"} {
	putquick "PRIVMSG $black(chanserv) :ban $chan $mask $getxtime $getxlevel $show_reason"
} else {
	putquick "MODE $chan +b $mask"
	putquick "KICK $chan $nick :$show_reason"
		}
	break
	}
}
if {[string equal -nocase $type "BAN"] && ![string equal -nocase $read_chan "GLOBAL"] && [string equal -nocase $read_chan $chan]} {
	set read_host [lindex [split $b] 3]
	set real_read_host [string map [list \[ {\[} \] {\]} \\ {\\}] $read_host]
if {[regexp {[/]} $real_read_host]} {
	set read_ip [lindex [split $real_read_host @] 1]
	set theip [lindex [split $uhost @] 1]
	set theip_dns [lindex [split $fulldns @] 1]
	set cidr_ip [ipcidr $read_ip $theip]
	set cidr_dns [ipcidr $read_ip $theip_dns]
if {$cidr_ip == "1" || $cidr_dns == "1"} {
	set read_rest_ip [lindex [split $uhost @] 0]
	set read_theip [lindex [split $real_read_host @] 0]
if {[string match -nocase $read_rest_ip $read_theip] || [string match -nocase $read_theip $read_rest_ip]} {
	set cidr 1
		}
	}
}
if {([string match -nocase $real_read_host $uhost] || [string match -nocase $uhost $real_read_host]) || ([string match -nocase $real_read_host $fulldns] || [string match -nocase $fulldns $real_read_host]) || ($cidr == "1")} {
	set check_except [blacktools:ban:chanexempt $uhost $fulldns $chan]
if {$check_except == "1"} {
	break
}
	set num [lindex [split $b] 1]
	set read_reason [join [lrange [split $b] 9 end]]
	set read_reason [blacktools:rem_comment $read_reason]
	set read_reason [encoding convertfrom utf-8 $read_reason]
	set expire [lindex [split $b] 5]
	set read_handle [split [lindex [split $b] 4] ":"]
	set gethand [lindex [split $read_handle] 0]
	set show_reason [blacktools:setreason $chan $read_reason $read_handle $expire $getcount "0" $num]
if {$expire == "0"} {
	set show_reason [blacktools:bl:setreason $chan $read_reason $read_handle $expire $getcount "0" $num]
if {[setting:get $chan showhandle]} {
if {![string equal -nocase $gethand "BADCHAN"] && ![string equal -nocase $gethand "badident"] && ![string equal -nocase $gethand "badnick"] && ![string equal -nocase $gethand "antibadquitpart"] && ![string equal -nocase $gethand "antichanflood"] && ![string equal -nocase $gethand "badrealname"] && ![string equal -nocase $gethand "antispam"] && ![string equal -nocase $gethand "badhost"] && ![string equal -nocase $gethand "antipub"] && ![string equal -nocase $gethand "antijoinflood"] && ![string equal -nocase $gethand "antinotice"] && ![string equal -nocase $gethand "antictcp"] && ![string equal -nocase $gethand "antirepeat"] && ![string equal -nocase $gethand "antibold"] && ![string equal -nocase $gethand "anticolor"] && ![string equal -nocase $gethand "antiunderline"] && ![string equal -nocase $gethand "antilongtext"] && ![string equal -nocase $gethand "antibadword"] && ![string equal -nocase $gethand "anticaps"] && ![string equal -nocase $gethand "nickflood"] && ![string equal -nocase $gethand "inviteban"] && ![string equal -nocase $gethand "private"] && ![string equal -nocase $gethand "clonescan"] && ![string equal -nocase $gethand "repetitivechars"] && ![string equal -nocase $gethand "noproxy"]} {
	set show_reason "\[BT\] \[$gethand\] blacklisted -- ($black(say.$getlang.gl.reason): $show_reason)"
} else {
		set show_reason "\[BT\] blacklisted -- ($black(say.$getlang.gl.reason): $show_reason)"
	}
} else {
	set show_reason "\[BT\] blacklisted -- ($black(say.$getlang.gl.reason): $show_reason)"
	}
}
if {[onchan $black(chanserv) $chan] && $xban == "1"} {
	putquick "PRIVMSG $black(chanserv) :ban $chan $read_host $getxtime $getxlevel $show_reason"
} else {
	putquick "MODE $chan +b $read_host"
	putquick "KICK $chan $nick :$show_reason"
		}
		break
	}
}
if {[string equal -nocase $read_chan "GLOBAL"]} {
	set cidr 0
	set read_host [lindex [split $b] 3]
	set real_read_host [string map [list \[ {\[} \] {\]} \\ {\\}] $read_host]
if {[string equal -nocase $type "REGEX"]} {
if {[regexp {[/]} $read_host]} {
	set a ""
	regexp {/(.*)} $read_host a
if {$a != ""} {
	set split_a [split $a "/"]
if {[regexp {[0-9]} [lindex $split_a 1]]} {
	set specified_bmask [lindex $split_a 1]
} elseif {[regexp {[0-9]} [lindex $split_a 2]]} {
	set specified_bmask [lindex $split_a 2]
}
if {$specified_bmask != ""} {
	regsub "/$specified_bmask" $read_host "" read_host
	}
}
	set rfullhost "$uhost/$realname"
	set rfulldns "$fulldns/$realname"
} else {
	set rfullhost "$uhost"
	set rfulldns "$fulldns"
}
if {[regexp "$read_host" $rfullhost] || [regexp "$read_host" $rfulldns]} {
	set check_except [blacktools:ban:exempt $uhost]
if {$check_except == "1"} {
	break
}
if {$specified_bmask != ""} {
	set mask [return_mask $specified_bmask $uhost $nick]
} else {
	set mask [return_mask $black(b:banmask) $uhost $nick]
}
	set num [lindex [split $b] 1]
	set read_reason [join [lrange [split $b] 9 end]]
	set read_reason [blacktools:rem_comment $read_reason]
	set read_reason [encoding convertfrom utf-8 $read_reason]
	set expire [lindex [split $b] 5]
	set read_handle [lindex [split $b] 4]
	set read_handle [lindex [split $b] 4]
	set gethand [lindex [split $read_handle] 0]
	set show_reason [blacktools:setreason $chan $read_reason $read_handle $expire "" "3" $num]
if {$expire == "0"} {
	set show_reason [blacktools:bl:setreason $chan $read_reason $read_handle $expire $getcount "0" $num]
if {[setting:get $chan showhandle]} {
	set show_reason "\[BT\] \[$gethand\] (GLOBAL) (REGEXP) blacklisted -- ($black(say.$getlang.gl.reason): $read_reason)" 
} else {
	set show_reason "\[BT\] (GLOBAL) (REGEXP) blacklisted -- ($black(say.$getlang.gl.reason): $read_reason)"
	}
}
if {[onchan $black(chanserv) $chan] && $xban == "1"} {
	putquick "PRIVMSG $black(chanserv) :ban $chan $mask $getxtime $getxlevel $show_reason"
} else {
	putquick "MODE $chan +b $mask"
	putquick "KICK $chan $nick :$show_reason"
		}
	break
	}
}
if {[regexp {[/]} $real_read_host]} {
	set read_ip [lindex [split $real_read_host @] 1]
	set theip [lindex [split $uhost @] 1]
	set theip_dns [lindex [split $fulldns @] 1]
	set cidr_ip [ipcidr $read_ip $theip]
	set cidr_dns [ipcidr $read_ip $theip_dns]
if {$cidr_ip == "1" || $cidr_dns == "1"} {
	set read_rest_ip [lindex [split $uhost @] 0]
	set read_theip [lindex [split $real_read_host @] 0]
if {[string match -nocase $read_rest_ip $read_theip] || [string match -nocase $read_theip $read_rest_ip]} {
	set cidr 1
		}
	}
}
if {[string match -nocase $real_read_host $uhost] || [string match -nocase $uhost $real_read_host] || ($cidr == "1")} {
	set check_except [blacktools:ban:exempt $uhost]
if {$check_except == "1"} {
	break
}
	set num [lindex [split $b] 1]
	set read_reason [join [lrange [split $b] 9 end]]
	set read_reason [blacktools:rem_comment $read_reason]
	set read_reason [encoding convertfrom utf-8 $read_reason]
	set expire [lindex [split $b] 5]
	set read_handle [lindex [split $b] 4]
	set read_handle [lindex [split $b] 4]
	set gethand [lindex [split $read_handle] 0]
	set show_reason [blacktools:setreason $chan $read_reason $read_handle $expire "" "1" $num]
if {$expire == "0"} {
	set show_reason [blacktools:bl:setreason $chan $read_reason $read_handle $expire $getcount "0" $num]
if {[setting:get $chan showhandle]} {
	set show_reason "\[BT\] \[$gethand\] (GLOBAL) blacklisted -- ($black(say.$getlang.gl.reason): $read_reason)" 
} else {
	set show_reason "\[BT\] (GLOBAL) blacklisted -- ($black(say.$getlang.gl.reason): $read_reason)"
	}
}
if {[onchan $black(chanserv) $chan] && $xban == "1"} {
	putquick "PRIVMSG $black(chanserv) :ban $chan $read_host $getxtime $getxlevel $show_reason"
} else {
	putquick "MODE $chan +b $read_host"
	putquick "KICK $chan $nick :$show_reason"
		}
	break
	}
}
if {[string equal -nocase $type "GAG"] && [string equal -nocase $read_chan $chan]} {
	set read_host [lindex [split $b] 3]
	set real_read_host [string map [list \[ {\[} \] {\]} \\ {\\}] $read_host]
if {[string match -nocase $real_read_host $uhost]} {
if {[ischanban $read_host $chan]} {
	continue
}
	set num [lindex [split $b] 1]
	set expire [lindex [split $b] 5]
	set read_time [return_time $getlang [expr $expire - [unixtime]]]
	set replace(%minute%) $read_time
	set replace(%gag%) $nick
if {[isop $nick $chan]} {
	pushmode $chan -o $nick
}
if {[isvoice $nick $chan]} {
	pushmode $chan -v $nick
}
	pushmode $chan +b $read_host
	set text [black:color:set "" $black(say.$getlang.gag.1)]
	set reply [join $text]
	puthelp "PRIVMSG $chan :[string map [array get replace] $reply]"
	break
			}
		}
	}
}

###
proc blacktools:mode:ban {nick host hand chan mod who} {
	global black
if {$mod == "-b"} {
foreach b [blacktools:banlist:ban $chan] {
	set read_host [lindex [split $b] 3]
	set real_read_host [string map [list \[ {\[} \] {\]} \\ {\\}] $read_host]
if {[string match -nocase $real_read_host $who]} {
	set sticky [lindex [split $b] 7]
if {$sticky == "1"} {
	pushmode $chan +b $who
			}
	break
		}
	}
}
	
if {$mod == "+o"} {
if {[isbotnick $who]} {
foreach b [blacktools:banlist:ban $chan] {
	set read_host [lindex [split $b] 3]
	set real_read_host [string map [list \[ {\[} \] {\]} \\ {\\}] $read_host]
	set sticky [lindex [split $b] 7]
if {$sticky == "1"} {
if {![ischanban $read_host $chan]} {
	pushmode $chan +b $read_host
					}
				}
			}
	mode:who:chan $chan
		}
	}	
}

###
proc blacktools:chnick:ban {nick host hand chan newnick} {
	global botnick black
if {[validchan $chan]} {
	set bhost "$newnick![getchanhost $newnick $chan]"
	blacktools:auto:ban $newnick $bhost $chan ""
	}
}
