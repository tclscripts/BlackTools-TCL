#########################################################################
##          BlackTools - The Ultimate Channel Control Script           ##
##                    One TCL. One smart Eggdrop                       ##
#########################################################################
###########################   MANUAL TCL   ##############################
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

proc man:process {nick host hand chan chan1 type command} {
	global black
	set cmd_status [btcmd:status $chan $hand "man" 0]
if {$cmd_status == "1"} { 
	return
}
	set getlang [string tolower [getuser $hand XTRA OUTPUT_LANG]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
	set number [scan $black(antiflood:cmd) %\[^:\]]
	set timer [scan $black(antiflood:cmd) %*\[^:\]:%s]
if {[info exists black(flood:activ:$host)]} {
foreach tmr [utimers] {
if {[string match "*black(flood:activ:$host)*" [join [lindex $tmr 1]]]} {
	set time [lindex $tmr 0]
	}
}
	blacktools:tell $nick $host $hand $chan $chan1 h.16 "$time man"
	return
}
	foreach tmr [utimers] {
if {[string match "*black(floodcmd:$host:$chan)*" [join [lindex $tmr 1]]]} {
	killutimer [lindex $tmr 2]
	}
}
if {![info exists black(floodcmd:$host:$chan)]} { 
	set black(floodcmd:$host:$chan) 0 
}
	incr black(floodcmd:$host:$chan)
	utimer $timer [list unset black(floodcmd:$host:$chan)]

if {$black(floodcmd:$host:$chan) == "$number"} {
	blacktools:tell $nick $host $hand $chan $chan1 h.16 "30 man"
	set black(flood:activ:$host) 1
	utimer 30 [list unset black(flood:activ:$host)]
	return
}	
	
if {$command == ""} {
switch $type {
	0 {
	blacktools:tell $nick $host $hand $chan $chan1 man.1 none
	}
	
	1 {
	blacktools:tell $nick $host $hand $chan $chan1 man.2 none
	}
	
	2 {
	blacktools:tell $nick $host $hand $chan $chan1 man.2_1 none
		}
	}
	return
}
if {[regexp {[+-]} $command]} {
		set command [string map {"+" ""
								 "-" ""	} $command]
}
switch [string tolower $command] {

man {
if {[matchattr $hand nmo|MAOV $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.3 none
	blacktools:tell $nick $host $hand $chan $chan1 man.4 none
	blacktools:tell $nick $host $hand $chan $chan1 man.4_1 none
	blacktools:tell $nick $host $hand $chan $chan1 man.5 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}

h {
if {[matchattr $hand nmo|MAOV $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.6 none
	blacktools:tell $nick $host $hand $chan $chan1 man.7 none
	blacktools:tell $nick $host $hand $chan $chan1 man.8 none
	blacktools:tell $nick $host $hand $chan $chan1 man.9 none
	blacktools:tell $nick $host $hand $chan $chan1 man.10 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}

v {
if {[matchattr $hand nmo|MAOV $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.11 none
	blacktools:tell $nick $host $hand $chan $chan1 man.12 none
	blacktools:tell $nick $host $hand $chan $chan1 man.13 none
	blacktools:tell $nick $host $hand $chan $chan1 man.14 none
	blacktools:tell $nick $host $hand $chan $chan1 man.15 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}	
}

o {
if {[matchattr $hand nmo|MAO $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.16 none
	blacktools:tell $nick $host $hand $chan $chan1 man.17 none
	blacktools:tell $nick $host $hand $chan $chan1 man.18 none
	blacktools:tell $nick $host $hand $chan $chan1 man.19 none
	blacktools:tell $nick $host $hand $chan $chan1 man.20 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}	
}

ho {
if {[matchattr $hand nmo|MAOV $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.882 none
	blacktools:tell $nick $host $hand $chan $chan1 man.882_1 none
	blacktools:tell $nick $host $hand $chan $chan1 man.883 none
	blacktools:tell $nick $host $hand $chan $chan1 man.884 none
	blacktools:tell $nick $host $hand $chan $chan1 man.884_5 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}

userlist {
if {[matchattr $hand nmo|MAO $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.22 none
	blacktools:tell $nick $host $hand $chan $chan1 man.23 none
	blacktools:tell $nick $host $hand $chan $chan1 man.24 none
if {[matchattr $hand nmo|- $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.27 "$black(say.$getlang.level.7) $black(say.$getlang.level.6) $black(say.$getlang.level.5) $black(say.$getlang.level.4) $black(say.$getlang.level.3) $black(say.$getlang.level.8) $black(say.$getlang.level.2)"
} else {
	blacktools:tell $nick $host $hand $chan $chan1 man.26 "$black(say.$getlang.level.7) $black(say.$getlang.level.6) $black(say.$getlang.level.5) $black(say.$getlang.level.4) $black(say.$getlang.level.3)"
		}
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}

version {
if {[matchattr $hand nmo|MAOV $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.28 none
	blacktools:tell $nick $host $hand $chan $chan1 man.29 none
	blacktools:tell $nick $host $hand $chan $chan1 man.30 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}	
}

info {
if {[matchattr $hand nmo|MAOV $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.31 none
	blacktools:tell $nick $host $hand $chan $chan1 man.32 none
	blacktools:tell $nick $host $hand $chan $chan1 man.33 none
	blacktools:tell $nick $host $hand $chan $chan1 man.34 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}

act {
if {[matchattr $hand nmo|MA $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.35 none
	blacktools:tell $nick $host $hand $chan $chan1 man.36 none
	blacktools:tell $nick $host $hand $chan $chan1 man.37 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}

t {
if {[matchattr $hand nmo|MAO $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.38 none
	blacktools:tell $nick $host $hand $chan $chan1 man.39 none
	blacktools:tell $nick $host $hand $chan $chan1 man.40 none
if {[matchattr $hand nmo|M]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.41 none
		}
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}

cycle {
if {[matchattr $hand nmo|MAO $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.42 none
	blacktools:tell $nick $host $hand $chan $chan1 man.43 none
	blacktools:tell $nick $host $hand $chan $chan1 man.44 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}

mode {
if {[matchattr $hand nmo|MAO $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.45 none
	blacktools:tell $nick $host $hand $chan $chan1 man.46 none
	blacktools:tell $nick $host $hand $chan $chan1 man.47 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}

i {
if {[matchattr $hand nmo|MAVO $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.48 none
	blacktools:tell $nick $host $hand $chan $chan1 man.49 none
	blacktools:tell $nick $host $hand $chan $chan1 man.50 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}

k {
if {[matchattr $hand nmo|MAVO $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.62 none
	blacktools:tell $nick $host $hand $chan $chan1 man.63 none
	blacktools:tell $nick $host $hand $chan $chan1 man.64 none
if {[matchattr $hand nmo|M]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.65 none
		}
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}

w {
if {[matchattr $hand nmo|MAO $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.66 none
	blacktools:tell $nick $host $hand $chan $chan1 man.67 none
	blacktools:tell $nick $host $hand $chan $chan1 man.68 none
if {[matchattr $hand nmo|M]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.69 none
		}
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}

sb {
if {[matchattr $hand nmo|MAVO $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.74 none
	blacktools:tell $nick $host $hand $chan $chan1 man.75 none
if {[matchattr $hand nmo]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.77 none
} else {
	blacktools:tell $nick $host $hand $chan $chan1 man.76 none
	}
	blacktools:tell $nick $host $hand $chan $chan1 man.78 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}

id {
if {[matchattr $hand nmo|MAO $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.79 none
	blacktools:tell $nick $host $hand $chan $chan1 man.80 none
	blacktools:tell $nick $host $hand $chan $chan1 man.81 none
if {[matchattr $hand nmo|M]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.82 none
		}
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}

n {
if {[matchattr $hand nmo|MAO $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.83 none
	blacktools:tell $nick $host $hand $chan $chan1 man.84 none
	blacktools:tell $nick $host $hand $chan $chan1 man.85 none
if {[matchattr $hand nmo|M]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.86 none
		}
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}

spam {
if {[matchattr $hand nmo|MAO $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.87 none
	blacktools:tell $nick $host $hand $chan $chan1 man.88 none
	blacktools:tell $nick $host $hand $chan $chan1 man.89 none
if {[matchattr $hand nmo|M]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.90 none
		}
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}

dr {
if {[matchattr $hand nmo|MAO $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.91 none
	blacktools:tell $nick $host $hand $chan $chan1 man.92 none
	blacktools:tell $nick $host $hand $chan $chan1 man.93 none
if {[matchattr $hand nmo|M]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.94 none
		}
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}

b {
if {[matchattr $hand nmo|MAO $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.95 none
	blacktools:tell $nick $host $hand $chan $chan1 man.96 none
	blacktools:tell $nick $host $hand $chan $chan1 man.97 none
if {[matchattr $hand nmo]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.99 none
	blacktools:tell $nick $host $hand $chan $chan1 man.100_1 none
	blacktools:tell $nick $host $hand $chan $chan1 man.98_1 none 
	blacktools:tell $nick $host $hand $chan $chan1 man.100 none
} else { 
	blacktools:tell $nick $host $hand $chan $chan1 man.98 none
	blacktools:tell $nick $host $hand $chan $chan1 man.100_1 none
	blacktools:tell $nick $host $hand $chan $chan1 man.98_1 none 
	}
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}

ub {
if {[matchattr $hand nmo|MAO $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.101 none
	blacktools:tell $nick $host $hand $chan $chan1 man.102 none
if {[matchattr $hand nmo]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.104 none
} else { 
	blacktools:tell $nick $host $hand $chan $chan1 man.103 none 
	}
	blacktools:tell $nick $host $hand $chan $chan1 man.105 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}

bot {
if {[matchattr $hand nmo|MAO $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.106 none
	blacktools:tell $nick $host $hand $chan $chan1 man.107 none
	blacktools:tell $nick $host $hand $chan $chan1 man.108 none
if {[matchattr $hand nmo|M]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.109 none
		}
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}

bw {
if {[matchattr $hand nmo|MAO $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.110 none
	blacktools:tell $nick $host $hand $chan $chan1 man.111 none
	blacktools:tell $nick $host $hand $chan $chan1 man.112 none
if {[matchattr $hand nmo|M]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.113 none
		}
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}

black {
if {[matchattr $hand nmo|MA $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.114 none
	blacktools:tell $nick $host $hand $chan $chan1 man.115 none
	blacktools:tell $nick $host $hand $chan $chan1 man.116 none
	blacktools:tell $nick $host $hand $chan $chan1 man.116_1 none
if {[matchattr $hand nmo|M]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.117 none
		}
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}

stick {
if {[matchattr $hand nmo|MA $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.118 none
	blacktools:tell $nick $host $hand $chan $chan1 man.118_1 none
	blacktools:tell $nick $host $hand $chan $chan1 man.119 none
	blacktools:tell $nick $host $hand $chan $chan1 man.120 none
	blacktools:tell $nick $host $hand $chan $chan1 man.120_1 none
if {[matchattr $hand nmo|M]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.121 none
		}
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}

gag {
if {[matchattr $hand nmo|MAO $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.122 none
	blacktools:tell $nick $host $hand $chan $chan1 man.122_1 none
	blacktools:tell $nick $host $hand $chan $chan1 man.123 none
	blacktools:tell $nick $host $hand $chan $chan1 man.124 none
if {[matchattr $hand nmo|M]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.125 none
		}
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}

ungag {
if {[matchattr $hand nmo|MAOV $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.149 none
	blacktools:tell $nick $host $hand $chan $chan1 man.150 none
	blacktools:tell $nick $host $hand $chan $chan1 man.151 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}

add {
if {[matchattr $hand nmo|MA $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.126 "$black(chanserv) $black(hostadd)"
	blacktools:tell $nick $host $hand $chan $chan1 man.127 none
	blacktools:tell $nick $host $hand $chan $chan1 man.128 none
	blacktools:tell $nick $host $hand $chan $chan1 man.134 none
	blacktools:tell $nick $host $hand $chan $chan1 man.135 none
if {[matchattr $hand n]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.27 "$black(say.$getlang.level.7) $black(say.$getlang.level.6) $black(say.$getlang.level.5) $black(say.$getlang.level.4) $black(say.$getlang.level.3) $black(say.$getlang.level.8) $black(say.$getlang.level.2)"
} elseif {[matchattr $hand m]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.26 "$black(say.$getlang.level.7) $black(say.$getlang.level.6) $black(say.$getlang.level.5) $black(say.$getlang.level.4) $black(say.$getlang.level.3) $black(say.$getlang.level.8)" 
		} elseif {[matchattr $hand o]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.26 "$black(say.$getlang.level.7) $black(say.$getlang.level.6) $black(say.$getlang.level.5) $black(say.$getlang.level.4) $black(say.$getlang.level.3)" 
	} elseif {[matchattr $hand -|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.25 "$black(say.$getlang.level.7) $black(say.$getlang.level.6) $black(say.$getlang.level.5) $black(say.$getlang.level.4)"	
		} elseif {[matchattr $hand -|A $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.28_1 "$black(say.$getlang.level.7) $black(say.$getlang.level.6) $black(say.$getlang.level.5)"	
		}
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}

adduser {
if {[matchattr $hand nmo|MAOV $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.136 none
	}	
}


delacc {
if {[matchattr $hand nmo|MA $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.142 none
	blacktools:tell $nick $host $hand $chan $chan1 man.142_1 none
	blacktools:tell $nick $host $hand $chan $chan1 man.143 none
	blacktools:tell $nick $host $hand $chan $chan1 man.144 none
if {[matchattr $hand nm]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.145 none
		}
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}

del {
if {[matchattr $hand nmo|- $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.146 none
	blacktools:tell $nick $host $hand $chan $chan1 man.147 none
	blacktools:tell $nick $host $hand $chan $chan1 man.148 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}	
}

banlist {
if {[matchattr $hand nmo|MAO $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.152 none
	blacktools:tell $nick $host $hand $chan $chan1 man.153 none
if {[matchattr $hand nm]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.155 none
} else {
	blacktools:tell $nick $host $hand $chan $chan1 man.154 none	
		}
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}

addhost {
if {[matchattr $hand nmo|MA $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.156 none
	blacktools:tell $nick $host $hand $chan $chan1 man.157 none
	blacktools:tell $nick $host $hand $chan $chan1 man.158 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}

delhost {
if {[matchattr $hand nmo|MA $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.159 none
	blacktools:tell $nick $host $hand $chan $chan1 man.160 none
	blacktools:tell $nick $host $hand $chan $chan1 man.161 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}

chuser {
if {[matchattr $hand nmo|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.162 none
	blacktools:tell $nick $host $hand $chan $chan1 man.163 none
	blacktools:tell $nick $host $hand $chan $chan1 man.164 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}

s {
if {[matchattr $hand nmo|MA $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.165 none
	blacktools:tell $nick $host $hand $chan $chan1 man.165_1 none
	blacktools:tell $nick $host $hand $chan $chan1 man.165_2 none
	blacktools:tell $nick $host $hand $chan $chan1 man.166 none
	blacktools:tell $nick $host $hand $chan $chan1 man.167 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}

us {
if {[matchattr $hand nmo|MA $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.168 none
	blacktools:tell $nick $host $hand $chan $chan1 man.168_1 none
	blacktools:tell $nick $host $hand $chan $chan1 man.169 none
	blacktools:tell $nick $host $hand $chan $chan1 man.170 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}

auto {
if {[matchattr $hand nmo|MA $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.171 none
	blacktools:tell $nick $host $hand $chan $chan1 man.172 none
if {[matchattr $hand nm]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.176 none
	blacktools:tell $nick $host $hand $chan $chan1 man.175 none
} else {
	blacktools:tell $nick $host $hand $chan $chan1 man.174 none
	blacktools:tell $nick $host $hand $chan $chan1 man.173 none	
		}
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}

antipub {
if {[matchattr $hand nmo|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.177 none
	blacktools:tell $nick $host $hand $chan $chan1 man.178 none
	blacktools:tell $nick $host $hand $chan $chan1 man.179 none
	blacktools:tell $nick $host $hand $chan $chan1 man.180 none
	blacktools:tell $nick $host $hand $chan $chan1 man.180_1 none
	blacktools:tell $nick $host $hand $chan $chan1 man.181 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}	
}

antinotice {
if {[matchattr $hand nmo|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.183 none
	blacktools:tell $nick $host $hand $chan $chan1 man.184 none
	blacktools:tell $nick $host $hand $chan $chan1 man.185 none
	blacktools:tell $nick $host $hand $chan $chan1 man.186 none
	blacktools:tell $nick $host $hand $chan $chan1 man.187 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}	
}

antictcp {
if {[matchattr $hand nmo|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.188 none
	blacktools:tell $nick $host $hand $chan $chan1 man.189 none
	blacktools:tell $nick $host $hand $chan $chan1 man.190 none
	blacktools:tell $nick $host $hand $chan $chan1 man.191 none
	blacktools:tell $nick $host $hand $chan $chan1 man.192 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}	
}

antibadword {
if {[matchattr $hand nmo|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.193 none
	blacktools:tell $nick $host $hand $chan $chan1 man.194 none
	blacktools:tell $nick $host $hand $chan $chan1 man.195 none
	blacktools:tell $nick $host $hand $chan $chan1 man.196 none
	blacktools:tell $nick $host $hand $chan $chan1 man.197 none
	blacktools:tell $nick $host $hand $chan $chan1 man.198 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}	
}

antilongtext {
if {[matchattr $hand nmo|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.199 none
	blacktools:tell $nick $host $hand $chan $chan1 man.200 none
	blacktools:tell $nick $host $hand $chan $chan1 man.201 none
	blacktools:tell $nick $host $hand $chan $chan1 man.202 none
	blacktools:tell $nick $host $hand $chan $chan1 man.203 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}	
}

badquitpart {
if {[matchattr $hand nmo|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.204 none
	blacktools:tell $nick $host $hand $chan $chan1 man.205 none
	blacktools:tell $nick $host $hand $chan $chan1 man.206 none
	blacktools:tell $nick $host $hand $chan $chan1 man.207 none
	blacktools:tell $nick $host $hand $chan $chan1 man.208 none
	blacktools:tell $nick $host $hand $chan $chan1 man.209 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}	
}

quitpartcolor {
if {[matchattr $hand nmo|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.1203 none
	blacktools:tell $nick $host $hand $chan $chan1 man.1204 none
	blacktools:tell $nick $host $hand $chan $chan1 man.1205 none
	blacktools:tell $nick $host $hand $chan $chan1 man.1206 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}	
}

omsg {
if {[matchattr $hand nmo|MAO $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.1207 none
	blacktools:tell $nick $host $hand $chan $chan1 man.1208 none
	blacktools:tell $nick $host $hand $chan $chan1 man.1209 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}	
}

showbadchan {
if {[matchattr $hand nmo|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.1210 none
	blacktools:tell $nick $host $hand $chan $chan1 man.1211 none
	blacktools:tell $nick $host $hand $chan $chan1 man.1212 none
	blacktools:tell $nick $host $hand $chan $chan1 man.1213 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}	
}

showtroll {
if {[matchattr $hand nmo|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.1214 none
	blacktools:tell $nick $host $hand $chan $chan1 man.1215 none
	blacktools:tell $nick $host $hand $chan $chan1 man.1216 none
	blacktools:tell $nick $host $hand $chan $chan1 man.1217 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}	
}

forward {
if {[matchattr $hand n|- $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.1218 none
	blacktools:tell $nick $host $hand $chan $chan1 man.1219 none
	blacktools:tell $nick $host $hand $chan $chan1 man.1220 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}	
}

expirebans {
if {[matchattr $hand nmo|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.1221 none
	blacktools:tell $nick $host $hand $chan $chan1 man.1222 none
	blacktools:tell $nick $host $hand $chan $chan1 man.1223 none
	blacktools:tell $nick $host $hand $chan $chan1 man.1224 none
	blacktools:tell $nick $host $hand $chan $chan1 man.1225 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}	
}

mb {
if {[matchattr $hand nmo|MAO $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.1226 none
	blacktools:tell $nick $host $hand $chan $chan1 man.1227 none
	blacktools:tell $nick $host $hand $chan $chan1 man.1228 none
if {[matchattr $hand nm]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.1229 none
		}
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}	
}

antibadquitpart {
if {[matchattr $hand nmo|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.204 none
	blacktools:tell $nick $host $hand $chan $chan1 man.205 none
	blacktools:tell $nick $host $hand $chan $chan1 man.206 none
	blacktools:tell $nick $host $hand $chan $chan1 man.207 none
	blacktools:tell $nick $host $hand $chan $chan1 man.208 none
	blacktools:tell $nick $host $hand $chan $chan1 man.209 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}	
}

antispam {
if {[matchattr $hand nmo|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.215 none
	blacktools:tell $nick $host $hand $chan $chan1 man.216 none
	blacktools:tell $nick $host $hand $chan $chan1 man.217 none
	blacktools:tell $nick $host $hand $chan $chan1 man.217_1 none
	blacktools:tell $nick $host $hand $chan $chan1 man.217_2 none
	blacktools:tell $nick $host $hand $chan $chan1 man.218 none
	blacktools:tell $nick $host $hand $chan $chan1 man.219 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none	
	}	
}

antirepeat {
if {[matchattr $hand nmo|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.221 none
	blacktools:tell $nick $host $hand $chan $chan1 man.222 none
	blacktools:tell $nick $host $hand $chan $chan1 man.223 none
	blacktools:tell $nick $host $hand $chan $chan1 man.224 none
	blacktools:tell $nick $host $hand $chan $chan1 man.225 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}	
}

anticolor {
if {[matchattr $hand nmo|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.226 none
	blacktools:tell $nick $host $hand $chan $chan1 man.227 none
	blacktools:tell $nick $host $hand $chan $chan1 man.228 none
	blacktools:tell $nick $host $hand $chan $chan1 man.229 none
	blacktools:tell $nick $host $hand $chan $chan1 man.230 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}	
}

antibold {
if {[matchattr $hand nmo|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.231 none
	blacktools:tell $nick $host $hand $chan $chan1 man.232 none
	blacktools:tell $nick $host $hand $chan $chan1 man.233 none
	blacktools:tell $nick $host $hand $chan $chan1 man.234 none
	blacktools:tell $nick $host $hand $chan $chan1 man.235 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}	
}

antiunderline {
if {[matchattr $hand nmo|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.236 none
	blacktools:tell $nick $host $hand $chan $chan1 man.237 none
	blacktools:tell $nick $host $hand $chan $chan1 man.238 none
	blacktools:tell $nick $host $hand $chan $chan1 man.239 none
	blacktools:tell $nick $host $hand $chan $chan1 man.240 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}	
}

anticaps {
if {[matchattr $hand nmo|M $chan]} {	
	blacktools:tell $nick $host $hand $chan $chan1 man.241 none
	blacktools:tell $nick $host $hand $chan $chan1 man.242 none
	blacktools:tell $nick $host $hand $chan $chan1 man.243 none
	blacktools:tell $nick $host $hand $chan $chan1 man.244 none
	blacktools:tell $nick $host $hand $chan $chan1 man.245 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}	
}

badnick {
if {[matchattr $hand nmo|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.246 none
	blacktools:tell $nick $host $hand $chan $chan1 man.247 none
	blacktools:tell $nick $host $hand $chan $chan1 man.248 none
	blacktools:tell $nick $host $hand $chan $chan1 man.249 none
	blacktools:tell $nick $host $hand $chan $chan1 man.250 none
	blacktools:tell $nick $host $hand $chan $chan1 man.251 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}	
}

badrealname {
if {[matchattr $hand nmo|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.252 none
	blacktools:tell $nick $host $hand $chan $chan1 man.253 none
	blacktools:tell $nick $host $hand $chan $chan1 man.254 none
	blacktools:tell $nick $host $hand $chan $chan1 man.255 none
	blacktools:tell $nick $host $hand $chan $chan1 man.256 none
	blacktools:tell $nick $host $hand $chan $chan1 man.257 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}	
}

autoop {
if {[matchattr $hand nmo|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.258 none
	blacktools:tell $nick $host $hand $chan $chan1 man.259 none
	blacktools:tell $nick $host $hand $chan $chan1 man.260 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}

autovoice {
if {[matchattr $hand nmo|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.261 none
	blacktools:tell $nick $host $hand $chan $chan1 man.262 none
	blacktools:tell $nick $host $hand $chan $chan1 man.263 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}

antijoinflood {
if {[matchattr $hand nmo|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.264 none
	blacktools:tell $nick $host $hand $chan $chan1 man.265 none
	blacktools:tell $nick $host $hand $chan $chan1 man.266 none
	blacktools:tell $nick $host $hand $chan $chan1 man.267 none
	blacktools:tell $nick $host $hand $chan $chan1 man.268 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}

antichanflood {
if {[matchattr $hand nmo|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.269 none
	blacktools:tell $nick $host $hand $chan $chan1 man.270 none
	blacktools:tell $nick $host $hand $chan $chan1 man.271 none
	blacktools:tell $nick $host $hand $chan $chan1 man.272 none
	blacktools:tell $nick $host $hand $chan $chan1 man.273 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}

badident {
if {[matchattr $hand nmo|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.274 none
	blacktools:tell $nick $host $hand $chan $chan1 man.275 none
	blacktools:tell $nick $host $hand $chan $chan1 man.276 none
	blacktools:tell $nick $host $hand $chan $chan1 man.277 none
	blacktools:tell $nick $host $hand $chan $chan1 man.278 none
	blacktools:tell $nick $host $hand $chan $chan1 man.279 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}

showhandle {
if {[matchattr $hand nmo|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.280 none
	blacktools:tell $nick $host $hand $chan $chan1 man.281 none
	blacktools:tell $nick $host $hand $chan $chan1 man.282 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}

}

showcount {
if {[matchattr $hand nmo|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.283 none
	blacktools:tell $nick $host $hand $chan $chan1 man.284 none
	blacktools:tell $nick $host $hand $chan $chan1 man.285 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}

showtime {
if {[matchattr $hand nmo|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.286 none
	blacktools:tell $nick $host $hand $chan $chan1 man.287 none
	blacktools:tell $nick $host $hand $chan $chan1 man.288 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}
 
showurl {
if {[matchattr $hand nmo|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.289 none
	blacktools:tell $nick $host $hand $chan $chan1 man.290 none
	blacktools:tell $nick $host $hand $chan $chan1 man.291 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}

xbantime {
if {[matchattr $hand nmo|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.292 none
	blacktools:tell $nick $host $hand $chan $chan1 man.293 none
	blacktools:tell $nick $host $hand $chan $chan1 man.294 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}

xbanlevel {
if {[matchattr $hand nmo|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.295 none
	blacktools:tell $nick $host $hand $chan $chan1 man.296 none
	blacktools:tell $nick $host $hand $chan $chan1 man.297 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}

oprotect {
if {[matchattr $hand nmo|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.298 none
	blacktools:tell $nick $host $hand $chan $chan1 man.299 none
	blacktools:tell $nick $host $hand $chan $chan1 man.300 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}

vprotect {
if {[matchattr $hand nmo|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.301 none
	blacktools:tell $nick $host $hand $chan $chan1 man.302 none
	blacktools:tell $nick $host $hand $chan $chan1 man.303 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}

hoprotect {
if {[matchattr $hand nmo|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.304 none
	blacktools:tell $nick $host $hand $chan $chan1 man.305 none
	blacktools:tell $nick $host $hand $chan $chan1 man.306 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}

showid {
if {[matchattr $hand nmo|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.307 none
	blacktools:tell $nick $host $hand $chan $chan1 man.308 none
	blacktools:tell $nick $host $hand $chan $chan1 man.309 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}

xtools {
if {[matchattr $hand nmo|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.407 none
	blacktools:tell $nick $host $hand $chan $chan1 man.408 none
	blacktools:tell $nick $host $hand $chan $chan1 man.409 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}

badchan {
if {[matchattr $hand nmo|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.410 none
	blacktools:tell $nick $host $hand $chan $chan1 man.411 none
	blacktools:tell $nick $host $hand $chan $chan1 man.412 none
	blacktools:tell $nick $host $hand $chan $chan1 man.413 none
if {[matchattr $hand nm]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.414 none
	blacktools:tell $nick $host $hand $chan $chan1 man.415 none
	blacktools:tell $nick $host $hand $chan $chan1 man.416 none
} else {
	blacktools:tell $nick $host $hand $chan $chan1 man.415 none
	blacktools:tell $nick $host $hand $chan $chan1 man.416 none
		}
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none	
	}
}

antibadchan {
if {[matchattr $hand nmo|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.410 none
	blacktools:tell $nick $host $hand $chan $chan1 man.411 none
	blacktools:tell $nick $host $hand $chan $chan1 man.412 none
	blacktools:tell $nick $host $hand $chan $chan1 man.413 none
if {[matchattr $hand nm]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.414 none
	blacktools:tell $nick $host $hand $chan $chan1 man.415 none
	blacktools:tell $nick $host $hand $chan $chan1 man.416 none
} else {
	blacktools:tell $nick $host $hand $chan $chan1 man.415 none
	blacktools:tell $nick $host $hand $chan $chan1 man.416 none
		}
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none	
	}
}

anunt {
if {[matchattr $hand nmo|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.417 none
	blacktools:tell $nick $host $hand $chan $chan1 man.417_1 none
	blacktools:tell $nick $host $hand $chan $chan1 man.418 none
	blacktools:tell $nick $host $hand $chan $chan1 man.419 none
	blacktools:tell $nick $host $hand $chan $chan1 man.420 none
	blacktools:tell $nick $host $hand $chan $chan1 man.421 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}

limit {
if {[matchattr $hand nmo|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.422 none
	blacktools:tell $nick $host $hand $chan $chan1 man.423 none
	blacktools:tell $nick $host $hand $chan $chan1 man.424 none
	blacktools:tell $nick $host $hand $chan $chan1 man.425 none
	blacktools:tell $nick $host $hand $chan $chan1 man.426 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}

topic {
if {[matchattr $hand nmo|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.427 none
	blacktools:tell $nick $host $hand $chan $chan1 man.427_1 none
	blacktools:tell $nick $host $hand $chan $chan1 man.428 none
	blacktools:tell $nick $host $hand $chan $chan1 man.429 none
	blacktools:tell $nick $host $hand $chan $chan1 man.430 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}

clonescan {
if {[matchattr $hand nmo|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.431 none
	blacktools:tell $nick $host $hand $chan $chan1 man.432 none
	blacktools:tell $nick $host $hand $chan $chan1 man.433 none
	blacktools:tell $nick $host $hand $chan $chan1 man.433_1 none
	blacktools:tell $nick $host $hand $chan $chan1 man.434 none
	blacktools:tell $nick $host $hand $chan $chan1 man.435 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}

seen {
if {[matchattr $hand nmo|MAOV $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.436 none
if {[matchattr $hand nmo]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.437 none
	blacktools:tell $nick $host $hand $chan $chan1 man.438 none
	blacktools:tell $nick $host $hand $chan $chan1 man.438_3 none
	blacktools:tell $nick $host $hand $chan $chan1 man.439 none
	blacktools:tell $nick $host $hand $chan $chan1 man.440 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
} elseif {[matchattr $hand -|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.437 none
	blacktools:tell $nick $host $hand $chan $chan1 man.438 none
	blacktools:tell $nick $host $hand $chan $chan1 man.438_2 none
	blacktools:tell $nick $host $hand $chan $chan1 man.439 none
	blacktools:tell $nick $host $hand $chan $chan1 man.440 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
} elseif {[matchattr $hand -|AOV $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.438_1 none
	blacktools:tell $nick $host $hand $chan $chan1 man.438_2 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
		}
	}
}
	
greet {
if {[matchattr $hand nmo|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.441 none
	blacktools:tell $nick $host $hand $chan $chan1 man.442 none
	blacktools:tell $nick $host $hand $chan $chan1 man.443 none
	blacktools:tell $nick $host $hand $chan $chan1 man.444 none
	blacktools:tell $nick $host $hand $chan $chan1 man.445 none
	blacktools:tell $nick $host $hand $chan $chan1 man.446 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}
	
leave {
if {[matchattr $hand nmo|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.447 none
	blacktools:tell $nick $host $hand $chan $chan1 man.448 none
	blacktools:tell $nick $host $hand $chan $chan1 man.449 none
	blacktools:tell $nick $host $hand $chan $chan1 man.450 none
	blacktools:tell $nick $host $hand $chan $chan1 man.451 none
	blacktools:tell $nick $host $hand $chan $chan1 man.452 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}

idle {
if {[matchattr $hand nmo|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.453 none
	blacktools:tell $nick $host $hand $chan $chan1 man.453_1 none
	blacktools:tell $nick $host $hand $chan $chan1 man.454 none
	blacktools:tell $nick $host $hand $chan $chan1 man.455 none
	blacktools:tell $nick $host $hand $chan $chan1 man.456 none
	blacktools:tell $nick $host $hand $chan $chan1 man.457 none
	blacktools:tell $nick $host $hand $chan $chan1 man.458 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}	
}

idlevoice {
if {[matchattr $hand nmo|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.458_1 none
	}	
}

idleop {
if {[matchattr $hand nmo|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.458_2 none
	}	
}

idlehalfop {
if {[matchattr $hand nmo|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.458_3 none
	}	
}

chanreport {
if {[matchattr $hand nmo|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.463 none
	blacktools:tell $nick $host $hand $chan $chan1 man.460 none
	blacktools:tell $nick $host $hand $chan $chan1 man.461 none
	blacktools:tell $nick $host $hand $chan $chan1 man.462 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}

backchan {
if {[matchattr $hand nmo|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.459 none
	blacktools:tell $nick $host $hand $chan $chan1 man.460 none
	blacktools:tell $nick $host $hand $chan $chan1 man.461 none
	blacktools:tell $nick $host $hand $chan $chan1 man.462 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}

topwords {
if {[matchattr $hand nmo|MAOV $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.464 none
	blacktools:tell $nick $host $hand $chan $chan1 man.465 none
if {[matchattr $hand nmo|MA]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.466 none
	blacktools:tell $nick $host $hand $chan $chan1 man.467_1 none
	blacktools:tell $nick $host $hand $chan $chan1 man.467_2 none
} else {
	blacktools:tell $nick $host $hand $chan $chan1 man.467 none
		}
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}	
}
	
antitake {
if {[matchattr $hand nmo|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.473 none
	blacktools:tell $nick $host $hand $chan $chan1 man.474 none
	blacktools:tell $nick $host $hand $chan $chan1 man.475 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}

dontdeop {
if {[matchattr $hand nmo|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.475_1 none
	}
}

dontop {
if {[matchattr $hand nmo|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.475_2 none
	}
}

private {
if {[matchattr $hand nmo|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.476 none
	blacktools:tell $nick $host $hand $chan $chan1 man.477 none
	blacktools:tell $nick $host $hand $chan $chan1 man.478 none
	blacktools:tell $nick $host $hand $chan $chan1 man.479 none
	blacktools:tell $nick $host $hand $chan $chan1 man.480 none
	blacktools:tell $nick $host $hand $chan $chan1 man.481 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}

autobroadcast {
if {[matchattr $hand nmo|- $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.482 none
	blacktools:tell $nick $host $hand $chan $chan1 man.483 none
	blacktools:tell $nick $host $hand $chan $chan1 man.484 none
	blacktools:tell $nick $host $hand $chan $chan1 man.485 none
	blacktools:tell $nick $host $hand $chan $chan1 man.486 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}

silent {
if {[matchattr $hand nmo|- $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.486_1 none
	}
}

lang {
if {[matchattr $hand nmo|AOV $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.487 none
	blacktools:tell $nick $host $hand $chan $chan1 man.487_1 none
	blacktools:tell $nick $host $hand $chan $chan1 man.488 none
if {[matchattr $hand nmo|M]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.488 none
	blacktools:tell $nick $host $hand $chan $chan1 man.489 none
	blacktools:tell $nick $host $hand $chan $chan1 man.489_1 none
} else { 
	blacktools:tell $nick $host $hand $chan $chan1 man.489_1 none
	}
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}

language {
if {[matchattr $hand nmo|MAOV $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.487 none
	blacktools:tell $nick $host $hand $chan $chan1 man.487_2 none
	blacktools:tell $nick $host $hand $chan $chan1 man.488 none
if {[matchattr $hand nmo|M]} {	
	blacktools:tell $nick $host $hand $chan $chan1 man.489 none
	blacktools:tell $nick $host $hand $chan $chan1 man.489_1 none
} else { 
	blacktools:tell $nick $host $hand $chan $chan1 man.489_1 none
		}
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}

tcl {
if {[matchattr $hand nm|- $chan]} {	
	blacktools:tell $nick $host $hand $chan $chan1 man.490 none
	blacktools:tell $nick $host $hand $chan $chan1 man.491 none
	blacktools:tell $nick $host $hand $chan $chan1 man.492 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}

next {
if {[matchattr $hand nmo|M $chan]} {	
	blacktools:tell $nick $host $hand $chan $chan1 man.493 none
	blacktools:tell $nick $host $hand $chan $chan1 man.494 none
	blacktools:tell $nick $host $hand $chan $chan1 man.495 none
	blacktools:tell $nick $host $hand $chan $chan1 man.496 none
	blacktools:tell $nick $host $hand $chan $chan1 man.497 none
	blacktools:tell $nick $host $hand $chan $chan1 man.498 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}

uptime {
if {[matchattr $hand nmo|- $chan]} {	
	blacktools:tell $nick $host $hand $chan $chan1 man.605 none
	blacktools:tell $nick $host $hand $chan $chan1 man.606 none
	blacktools:tell $nick $host $hand $chan $chan1 man.607 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}

status {
if {[matchattr $hand nmo|- $chan]} {	
	blacktools:tell $nick $host $hand $chan $chan1 man.608 none
	blacktools:tell $nick $host $hand $chan $chan1 man.609 none
	blacktools:tell $nick $host $hand $chan $chan1 man.610 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}	
}

set {
if {[matchattr $hand nmo|M $chan]} {	
	blacktools:tell $nick $host $hand $chan $chan1 man.611 none
	blacktools:tell $nick $host $hand $chan $chan1 man.612 none
	blacktools:tell $nick $host $hand $chan $chan1 man.613 none
if {[matchattr $hand nmo]} {	
	blacktools:tell $nick $host $hand $chan $chan1 man.614 none
} else { 
	blacktools:tell $nick $host $hand $chan $chan1 man.615 none 
		}
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}

jump {
if {[matchattr $hand nm|- $chan]} {	
	blacktools:tell $nick $host $hand $chan $chan1 man.620 none
	blacktools:tell $nick $host $hand $chan $chan1 man.621 none
	blacktools:tell $nick $host $hand $chan $chan1 man.622 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}

msg {
if {[matchattr $hand nmo|- $chan]} {	
	blacktools:tell $nick $host $hand $chan $chan1 man.623 none
	blacktools:tell $nick $host $hand $chan $chan1 man.624 none
	blacktools:tell $nick $host $hand $chan $chan1 man.625 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}

broadcast {
if {[matchattr $hand nm|- $chan]} {	
	blacktools:tell $nick $host $hand $chan $chan1 man.626 none
	blacktools:tell $nick $host $hand $chan $chan1 man.627 none
	blacktools:tell $nick $host $hand $chan $chan1 man.628 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}

ignore {
if {[matchattr $hand nmo|- $chan]} {	
	blacktools:tell $nick $host $hand $chan $chan1 man.629 none
	blacktools:tell $nick $host $hand $chan $chan1 man.629_1 none
	blacktools:tell $nick $host $hand $chan $chan1 man.630 none
	blacktools:tell $nick $host $hand $chan $chan1 man.631 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}

chat {
if {[matchattr $hand nmo|- $chan]} {	
	blacktools:tell $nick $host $hand $chan $chan1 man.632 none
	blacktools:tell $nick $host $hand $chan $chan1 man.633 none
	blacktools:tell $nick $host $hand $chan $chan1 man.634 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}

channels {
if {[matchattr $hand nmo|- $chan]} {	
	blacktools:tell $nick $host $hand $chan $chan1 man.638 none
	blacktools:tell $nick $host $hand $chan $chan1 man.639 none
	blacktools:tell $nick $host $hand $chan $chan1 man.640 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}

nick {
if {[matchattr $hand nm|- $chan]} {	
	blacktools:tell $nick $host $hand $chan $chan1 man.641 none
	blacktools:tell $nick $host $hand $chan $chan1 man.642 none
	blacktools:tell $nick $host $hand $chan $chan1 man.643 none
	blacktools:tell $nick $host $hand $chan $chan1 man.643_1 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}

restart {
if {[matchattr $hand nm|- $chan]} {	
	blacktools:tell $nick $host $hand $chan $chan1 man.644 none
	blacktools:tell $nick $host $hand $chan $chan1 man.645 none
	blacktools:tell $nick $host $hand $chan $chan1 man.646 none
	blacktools:tell $nick $host $hand $chan $chan1 man.647 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}

rehash {
if {[matchattr $hand nm|- $chan]} {	
	blacktools:tell $nick $host $hand $chan $chan1 man.648 none
	blacktools:tell $nick $host $hand $chan $chan1 man.649 none
	blacktools:tell $nick $host $hand $chan $chan1 man.650 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}

die {
if {[matchattr $hand nm|- $chan]} {	
	blacktools:tell $nick $host $hand $chan $chan1 man.651 none
	blacktools:tell $nick $host $hand $chan $chan1 man.652 none
	blacktools:tell $nick $host $hand $chan $chan1 man.653 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}

suspend {
if {[matchattr $hand nmo|- $chan]} {	
	blacktools:tell $nick $host $hand $chan $chan1 man.654 none
	blacktools:tell $nick $host $hand $chan $chan1 man.655 none
	blacktools:tell $nick $host $hand $chan $chan1 man.656 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}

unsuspend {
if {[matchattr $hand nmo|- $chan]} {	
	blacktools:tell $nick $host $hand $chan $chan1 man.657 none
	blacktools:tell $nick $host $hand $chan $chan1 man.658 none
	blacktools:tell $nick $host $hand $chan $chan1 man.659 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}

save {
if {[matchattr $hand nm|- $chan]} {	
	blacktools:tell $nick $host $hand $chan $chan1 man.660 none
	blacktools:tell $nick $host $hand $chan $chan1 man.661 none
	blacktools:tell $nick $host $hand $chan $chan1 man.662 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}

addchan {
if {[matchattr $hand nmo|- $chan]} {	
	blacktools:tell $nick $host $hand $chan $chan1 man.663 none
	blacktools:tell $nick $host $hand $chan $chan1 man.664 none
	blacktools:tell $nick $host $hand $chan $chan1 man.665 none
	blacktools:tell $nick $host $hand $chan $chan1 man.666 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}

delchan {
if {[matchattr $hand nmo|- $chan]} {	
	blacktools:tell $nick $host $hand $chan $chan1 man.667 none
	blacktools:tell $nick $host $hand $chan $chan1 man.668 none
	blacktools:tell $nick $host $hand $chan $chan1 man.669 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}

say {
if {[matchattr $hand nmo|- $chan]} {	
	blacktools:tell $nick $host $hand $chan $chan1 man.681 none
	blacktools:tell $nick $host $hand $chan $chan1 man.682 none
	blacktools:tell $nick $host $hand $chan $chan1 man.683 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}

nologged {
if {[matchattr $hand nmo|- $chan]} {	
	blacktools:tell $nick $host $hand $chan $chan1 man.687 none
	blacktools:tell $nick $host $hand $chan $chan1 man.688 none
	blacktools:tell $nick $host $hand $chan $chan1 man.689 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}

colors {
if {[matchattr $hand nmo|MAOV $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.771 none
	blacktools:tell $nick $host $hand $chan $chan1 man.772 none
	blacktools:tell $nick $host $hand $chan $chan1 man.773 none
	blacktools:tell $nick $host $hand $chan $chan1 man.774 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}

reportnick {
if {[matchattr $hand nmo|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.775 none
	blacktools:tell $nick $host $hand $chan $chan1 man.776 none
	blacktools:tell $nick $host $hand $chan $chan1 man.777 none
	blacktools:tell $nick $host $hand $chan $chan1 man.778 none
	blacktools:tell $nick $host $hand $chan $chan1 man.779 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}

inviteban {
if {[matchattr $hand nmo|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.780 none
	blacktools:tell $nick $host $hand $chan $chan1 man.781 none
	blacktools:tell $nick $host $hand $chan $chan1 man.782 none
	blacktools:tell $nick $host $hand $chan $chan1 man.783 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}

badhost {
if {[matchattr $hand nmo|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.784 none
	blacktools:tell $nick $host $hand $chan $chan1 man.785 none
	blacktools:tell $nick $host $hand $chan $chan1 man.786 none
	blacktools:tell $nick $host $hand $chan $chan1 man.787 none
	blacktools:tell $nick $host $hand $chan $chan1 man.787_1 none
	blacktools:tell $nick $host $hand $chan $chan1 man.788 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}

nickflood {
if {[matchattr $hand nmo|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.789 none
	blacktools:tell $nick $host $hand $chan $chan1 man.790 none
	blacktools:tell $nick $host $hand $chan $chan1 man.791 none
	blacktools:tell $nick $host $hand $chan $chan1 man.792 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}

securemode {
if {[matchattr $hand nmo|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.793 none
	blacktools:tell $nick $host $hand $chan $chan1 man.794 none
	blacktools:tell $nick $host $hand $chan $chan1 man.795 none
	blacktools:tell $nick $host $hand $chan $chan1 man.796 none
	blacktools:tell $nick $host $hand $chan $chan1 man.797 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}

voiceme {
if {[matchattr $hand nmo|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.820 none
	blacktools:tell $nick $host $hand $chan $chan1 man.821 none
	blacktools:tell $nick $host $hand $chan $chan1 man.822 none
	blacktools:tell $nick $host $hand $chan $chan1 man.823 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}

onlyonmode {
if {[matchattr $hand nmo|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.824 none
	blacktools:tell $nick $host $hand $chan $chan1 man.825 none
	blacktools:tell $nick $host $hand $chan $chan1 man.826 none
	blacktools:tell $nick $host $hand $chan $chan1 man.827 none
	blacktools:tell $nick $host $hand $chan $chan1 man.828 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}

cp {
if {[matchattr $hand nmo|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.842 none
	blacktools:tell $nick $host $hand $chan $chan1 man.843 none
	blacktools:tell $nick $host $hand $chan $chan1 man.844 none
	blacktools:tell $nick $host $hand $chan $chan1 man.845 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}

voiceonmsg {
if {[matchattr $hand nmo|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.846 none
	blacktools:tell $nick $host $hand $chan $chan1 man.847 none
	blacktools:tell $nick $host $hand $chan $chan1 man.848 none
	blacktools:tell $nick $host $hand $chan $chan1 man.849 none
	blacktools:tell $nick $host $hand $chan $chan1 man.850 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}

troll {
if {[matchattr $hand nmo|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.851 none
	blacktools:tell $nick $host $hand $chan $chan1 man.852 none
	blacktools:tell $nick $host $hand $chan $chan1 man.853 none
	blacktools:tell $nick $host $hand $chan $chan1 man.854 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}

vr {
if {[matchattr $hand nmo|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.856 none
	blacktools:tell $nick $host $hand $chan $chan1 man.857 none
	blacktools:tell $nick $host $hand $chan $chan1 man.858 none
	blacktools:tell $nick $host $hand $chan $chan1 man.859 none
	blacktools:tell $nick $host $hand $chan $chan1 man.860 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}

xonly {
if {[matchattr $hand nmo|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.861 none
	blacktools:tell $nick $host $hand $chan $chan1 man.862 none
	blacktools:tell $nick $host $hand $chan $chan1 man.863 none
	blacktools:tell $nick $host $hand $chan $chan1 man.864 none
	blacktools:tell $nick $host $hand $chan $chan1 man.865 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}

autotopic {
if {[matchattr $hand nmo|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.866 none
	blacktools:tell $nick $host $hand $chan $chan1 man.867 none
	blacktools:tell $nick $host $hand $chan $chan1 man.868 none	
	blacktools:tell $nick $host $hand $chan $chan1 man.869 none
	blacktools:tell $nick $host $hand $chan $chan1 man.870 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}

myset {
if {[matchattr $hand nmo|MAOV $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.871 none
	blacktools:tell $nick $host $hand $chan $chan1 man.872 none
	blacktools:tell $nick $host $hand $chan $chan1 man.873 none
	blacktools:tell $nick $host $hand $chan $chan1 man.874 none
	blacktools:tell $nick $host $hand $chan $chan1 man.875 none
if {[matchattr $hand nmo|- $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.878 none
} else { 
	blacktools:tell $nick $host $hand $chan $chan1 man.877 none 
		}
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}

r {
if {[matchattr $hand nmo|MAO $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.885 none
	blacktools:tell $nick $host $hand $chan $chan1 man.886 none
	blacktools:tell $nick $host $hand $chan $chan1 man.887 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}

quote {
if {[matchattr $hand nmo|MAOV $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.892 none
	blacktools:tell $nick $host $hand $chan $chan1 man.893 none
if {[matchattr $hand nm]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.896_2 none
} elseif {[matchattr $hand nmo|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.894 none
}
	blacktools:tell $nick $host $hand $chan $chan1 man.895 none
	blacktools:tell $nick $host $hand $chan $chan1 man.896 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}

quoteofday {
if {[matchattr $hand nmo|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.897 none
	blacktools:tell $nick $host $hand $chan $chan1 man.898 none
	blacktools:tell $nick $host $hand $chan $chan1 man.899 none
	blacktools:tell $nick $host $hand $chan $chan1 man.900 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}

note {
if {[matchattr $hand nmo|MAOV $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.901 none
	blacktools:tell $nick $host $hand $chan $chan1 man.902 none
if {[matchattr $hand nmo|M $chan]} {	
	blacktools:tell $nick $host $hand $chan $chan1 man.903 none
	blacktools:tell $nick $host $hand $chan $chan1 man.904 none
	blacktools:tell $nick $host $hand $chan $chan1 man.905 none
} else { 
	blacktools:tell $nick $host $hand $chan $chan1 man.904 none
	blacktools:tell $nick $host $hand $chan $chan1 man.905 none	
		}
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}

bmethod {
if {[matchattr $hand nmo|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.906 none
	blacktools:tell $nick $host $hand $chan $chan1 man.907 none
	blacktools:tell $nick $host $hand $chan $chan1 man.908 none
	blacktools:tell $nick $host $hand $chan $chan1 man.909 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}

banmethod {
if {[matchattr $hand nmo|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.910 none
	blacktools:tell $nick $host $hand $chan $chan1 man.907 none
	blacktools:tell $nick $host $hand $chan $chan1 man.908 none
	blacktools:tell $nick $host $hand $chan $chan1 man.909 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}

banmask {
if {[matchattr $hand nmo|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.911 none
	blacktools:tell $nick $host $hand $chan $chan1 man.912 none
	blacktools:tell $nick $host $hand $chan $chan1 man.913 none
	blacktools:tell $nick $host $hand $chan $chan1 man.914 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}

url {
if {[matchattr $hand nmo|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.916 none
	blacktools:tell $nick $host $hand $chan $chan1 man.917 none
	blacktools:tell $nick $host $hand $chan $chan1 man.918 none
	blacktools:tell $nick $host $hand $chan $chan1 man.919 none
	blacktools:tell $nick $host $hand $chan $chan1 man.920 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}

timer {
if {[matchattr $hand nm|- $chan]} {	
	blacktools:tell $nick $host $hand $chan $chan1 man.921 none
	blacktools:tell $nick $host $hand $chan $chan1 man.921_1 none
	blacktools:tell $nick $host $hand $chan $chan1 man.922 none
	blacktools:tell $nick $host $hand $chan $chan1 man.923 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}

enable {
if {[matchattr $hand nmo|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.924 none
	blacktools:tell $nick $host $hand $chan $chan1 man.924_1 none
	blacktools:tell $nick $host $hand $chan $chan1 man.925 none
	blacktools:tell $nick $host $hand $chan $chan1 man.926 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}

disable {
if {[matchattr $hand nmo|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.927 none
	blacktools:tell $nick $host $hand $chan $chan1 man.927_1 none
	blacktools:tell $nick $host $hand $chan $chan1 man.928 none
	blacktools:tell $nick $host $hand $chan $chan1 man.929 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}


stats {
if {[matchattr $hand nmo|MAOV $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.930 none
	blacktools:tell $nick $host $hand $chan $chan1 man.931 none
if {[matchattr $hand nmo|M]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.932_1 none
} else {
	blacktools:tell $nick $host $hand $chan $chan1 man.932 none
		}
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}	
}

activ {
if {[matchattr $hand nmo|MAOV $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.930_1 none
	}
}

output {
if {[matchattr $hand nmo|MAOV $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.933 none
	blacktools:tell $nick $host $hand $chan $chan1 man.934 none
	blacktools:tell $nick $host $hand $chan $chan1 man.935 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}

infoline {
if {[matchattr $hand nmo|MAOV $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.936 none
	blacktools:tell $nick $host $hand $chan $chan1 man.937 none
	blacktools:tell $nick $host $hand $chan $chan1 man.938 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}

unset {
if {[matchattr $hand nmo|M $chan]} {	
	blacktools:tell $nick $host $hand $chan $chan1 man.939 none
	blacktools:tell $nick $host $hand $chan $chan1 man.940 none
	blacktools:tell $nick $host $hand $chan $chan1 man.941 none
if {[matchattr $hand nm]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.942 none
		}
	blacktools:tell $nick $host $hand $chan $chan1 man.943 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}

nextshortcmd {
if {[matchattr $hand nmo|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.944 none
	blacktools:tell $nick $host $hand $chan $chan1 man.945 none
	blacktools:tell $nick $host $hand $chan $chan1 man.946 none
	blacktools:tell $nick $host $hand $chan $chan1 man.947 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}

autoinvite {
if {[matchattr $hand nmo|MAOV $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.948 none
	blacktools:tell $nick $host $hand $chan $chan1 man.949 none
	blacktools:tell $nick $host $hand $chan $chan1 man.950 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}

show {
if {[matchattr $hand nmo|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.952 none
	blacktools:tell $nick $host $hand $chan $chan1 man.953 none
	blacktools:tell $nick $host $hand $chan $chan1 man.954 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}

chanlink {
if {[matchattr $hand nmo|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.955 none
	blacktools:tell $nick $host $hand $chan $chan1 man.956 none
	blacktools:tell $nick $host $hand $chan $chan1 man.957 none
	blacktools:tell $nick $host $hand $chan $chan1 man.958 none
	blacktools:tell $nick $host $hand $chan $chan1 man.958_1 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}

link {
if {[matchattr $hand nmo|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.955 none
	blacktools:tell $nick $host $hand $chan $chan1 man.956 none
	blacktools:tell $nick $host $hand $chan $chan1 man.957 none
	blacktools:tell $nick $host $hand $chan $chan1 man.958 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}

accessonly {
if {[matchattr $hand nmo|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.959 none
	blacktools:tell $nick $host $hand $chan $chan1 man.960 none
	blacktools:tell $nick $host $hand $chan $chan1 man.961 none
	blacktools:tell $nick $host $hand $chan $chan1 man.962 none
	blacktools:tell $nick $host $hand $chan $chan1 man.963 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}

seenreply {
if {[matchattr $hand nmo|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.964 none
	blacktools:tell $nick $host $hand $chan $chan1 man.965 none
	blacktools:tell $nick $host $hand $chan $chan1 man.966 none
	blacktools:tell $nick $host $hand $chan $chan1 man.967 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}

spamjoinmessage {
if {[matchattr $hand nmo|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.968 none
	blacktools:tell $nick $host $hand $chan $chan1 man.969 none
	blacktools:tell $nick $host $hand $chan $chan1 man.970 none
	blacktools:tell $nick $host $hand $chan $chan1 man.971 none
	blacktools:tell $nick $host $hand $chan $chan1 man.972 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}

strictsecured {
if {[matchattr $hand nmo|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.973 none
	blacktools:tell $nick $host $hand $chan $chan1 man.974 none
	blacktools:tell $nick $host $hand $chan $chan1 man.975 none
	blacktools:tell $nick $host $hand $chan $chan1 man.976 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}

noteexpire {
if {[matchattr $hand nmo|MAOV $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.977 none
	blacktools:tell $nick $host $hand $chan $chan1 man.977_1 none
	blacktools:tell $nick $host $hand $chan $chan1 man.978 none
	blacktools:tell $nick $host $hand $chan $chan1 man.979 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}

mychan {
if {[matchattr $hand nmo|MAOV $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.980 none
	blacktools:tell $nick $host $hand $chan $chan1 man.981 none
	blacktools:tell $nick $host $hand $chan $chan1 man.982 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}

invisible {
if {[matchattr $hand n|- $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.983 none
	blacktools:tell $nick $host $hand $chan $chan1 man.984 none
	blacktools:tell $nick $host $hand $chan $chan1 man.985 none
	blacktools:tell $nick $host $hand $chan $chan1 man.986 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}

cmdchar {
if {[matchattr $hand nm|- $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.994 none
	blacktools:tell $nick $host $hand $chan $chan1 man.995 none
	blacktools:tell $nick $host $hand $chan $chan1 man.996 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}

mychar {
if {[matchattr $hand nmo|MAOV $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.987 none
	blacktools:tell $nick $host $hand $chan $chan1 man.988 none
	blacktools:tell $nick $host $hand $chan $chan1 man.989 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}

defaultlang {
if {[matchattr $hand nm|- $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.998 none
	blacktools:tell $nick $host $hand $chan $chan1 man.998_1 none
	blacktools:tell $nick $host $hand $chan $chan1 man.999 none
	blacktools:tell $nick $host $hand $chan $chan1 man.1100 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}

homechan {
if {[matchattr $hand nm|- $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.1102 none
	blacktools:tell $nick $host $hand $chan $chan1 man.1103 none
	blacktools:tell $nick $host $hand $chan $chan1 man.1104 none
	blacktools:tell $nick $host $hand $chan $chan1 man.1105 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}

realname {
if {[matchattr $hand nm|- $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.1107 none
	blacktools:tell $nick $host $hand $chan $chan1 man.1108 none
	blacktools:tell $nick $host $hand $chan $chan1 man.1109 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}

away {
if {[matchattr $hand nm|- $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.1111 none
	blacktools:tell $nick $host $hand $chan $chan1 man.1112 none
	blacktools:tell $nick $host $hand $chan $chan1 man.1113 none
	blacktools:tell $nick $host $hand $chan $chan1 man.1113_1 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}

defaultoutput {
if {[matchattr $hand nm|- $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.1115 none
	blacktools:tell $nick $host $hand $chan $chan1 man.1115_1 none
	blacktools:tell $nick $host $hand $chan $chan1 man.1116 none
	blacktools:tell $nick $host $hand $chan $chan1 man.1117 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}

floodmenuprot {
if {[matchattr $hand nm|- $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.1119 none
	blacktools:tell $nick $host $hand $chan $chan1 man.1120 none
	blacktools:tell $nick $host $hand $chan $chan1 man.1121 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}

userfloodmsgprot {
if {[matchattr $hand nm|- $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.1123 none
	blacktools:tell $nick $host $hand $chan $chan1 man.1124 none
	blacktools:tell $nick $host $hand $chan $chan1 man.1125 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}

floodnotcprot {
if {[matchattr $hand nm|- $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.1127 none
	blacktools:tell $nick $host $hand $chan $chan1 man.1128 none
	blacktools:tell $nick $host $hand $chan $chan1 man.1129 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}

chanremovesetting {
if {[matchattr $hand nm|- $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.1131 none
	blacktools:tell $nick $host $hand $chan $chan1 man.1131_1 none
	blacktools:tell $nick $host $hand $chan $chan1 man.1132 none
	blacktools:tell $nick $host $hand $chan $chan1 man.1133 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}

userexpire {
if {[matchattr $hand nm|- $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.1135 none
	blacktools:tell $nick $host $hand $chan $chan1 man.1135_1 none
	blacktools:tell $nick $host $hand $chan $chan1 man.1136 none
	blacktools:tell $nick $host $hand $chan $chan1 man.1137 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}

pagelimit {
if {[matchattr $hand nm|- $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.1139 none
	blacktools:tell $nick $host $hand $chan $chan1 man.1140 none
	blacktools:tell $nick $host $hand $chan $chan1 man.1141 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}

login {
if {[matchattr $hand nm|- $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.1143 none
	blacktools:tell $nick $host $hand $chan $chan1 man.1144 none
	blacktools:tell $nick $host $hand $chan $chan1 man.1145 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}

chanserv {
if {[matchattr $hand nm|- $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.1147 none
	blacktools:tell $nick $host $hand $chan $chan1 man.1148 none
	blacktools:tell $nick $host $hand $chan $chan1 man.1149 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}

hostchanserv {
if {[matchattr $hand nm|- $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.1151 none
	blacktools:tell $nick $host $hand $chan $chan1 man.1152 none
	blacktools:tell $nick $host $hand $chan $chan1 man.1153 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}

userlogin {
if {[matchattr $hand nm|- $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.1155 none
	blacktools:tell $nick $host $hand $chan $chan1 man.1156 none
	blacktools:tell $nick $host $hand $chan $chan1 man.1157 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}

userpass {
if {[matchattr $hand nm|- $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.1159 none
	blacktools:tell $nick $host $hand $chan $chan1 man.1160 none
	blacktools:tell $nick $host $hand $chan $chan1 man.1161 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}

addmask {
if {[matchattr $hand nm|- $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.1163 none
	blacktools:tell $nick $host $hand $chan $chan1 man.1163_1 none
	blacktools:tell $nick $host $hand $chan $chan1 man.1163_2 none
	blacktools:tell $nick $host $hand $chan $chan1 man.1164 none
	blacktools:tell $nick $host $hand $chan $chan1 man.1165 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}

adddefaultmask {
if {[matchattr $hand nm|- $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.1167 none
	blacktools:tell $nick $host $hand $chan $chan1 man.1168 none
	blacktools:tell $nick $host $hand $chan $chan1 man.1169 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}

antispamscantime {
if {[matchattr $hand nmo|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.1175 none
	blacktools:tell $nick $host $hand $chan $chan1 man.1175_1 none
	blacktools:tell $nick $host $hand $chan $chan1 man.1176 none
	blacktools:tell $nick $host $hand $chan $chan1 man.1177 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}

idlescantime {
if {[matchattr $hand nmo|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.1179 none
	blacktools:tell $nick $host $hand $chan $chan1 man.1179_1 none
	blacktools:tell $nick $host $hand $chan $chan1 man.1180 none
	blacktools:tell $nick $host $hand $chan $chan1 man.1181 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}

clonescanscantime {
if {[matchattr $hand nmo|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.1183 none
	blacktools:tell $nick $host $hand $chan $chan1 man.1183_1 none
	blacktools:tell $nick $host $hand $chan $chan1 man.1184 none
	blacktools:tell $nick $host $hand $chan $chan1 man.1185 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}

broadcastshowtime {
if {[matchattr $hand nm|- $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.1187 none
	blacktools:tell $nick $host $hand $chan $chan1 man.1187_1 none
	blacktools:tell $nick $host $hand $chan $chan1 man.1188 none
	blacktools:tell $nick $host $hand $chan $chan1 man.1189 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}

badchanscantime {
if {[matchattr $hand nmo|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.1191 none
	blacktools:tell $nick $host $hand $chan $chan1 man.1191_1 none
	blacktools:tell $nick $host $hand $chan $chan1 man.1192 none
	blacktools:tell $nick $host $hand $chan $chan1 man.1193 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}

anuntshowtime {
if {[matchattr $hand nmo|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.1195 none
	blacktools:tell $nick $host $hand $chan $chan1 man.1195_1 none
	blacktools:tell $nick $host $hand $chan $chan1 man.1196 none
	blacktools:tell $nick $host $hand $chan $chan1 man.1197 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}

quoteofdayshowtime {
if {[matchattr $hand nmo|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.1199 none
	blacktools:tell $nick $host $hand $chan $chan1 man.1199_1 none
	blacktools:tell $nick $host $hand $chan $chan1 man.1200 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}

voicemeshowtime {
if {[matchattr $hand nmo|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.1230 none
	blacktools:tell $nick $host $hand $chan $chan1 man.1231 none
	blacktools:tell $nick $host $hand $chan $chan1 man.1232 none
	blacktools:tell $nick $host $hand $chan $chan1 man.1233 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}

badchanbanwait {
if {[matchattr $hand nmo|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.1234 none
	blacktools:tell $nick $host $hand $chan $chan1 man.1235 none
	blacktools:tell $nick $host $hand $chan $chan1 man.1236 none
	blacktools:tell $nick $host $hand $chan $chan1 man.1237 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}

badnickbanwait {
if {[matchattr $hand nmo|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.1238 none
	blacktools:tell $nick $host $hand $chan $chan1 man.1239 none
	blacktools:tell $nick $host $hand $chan $chan1 man.1240 none
	blacktools:tell $nick $host $hand $chan $chan1 man.1241 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}

badnickbmethod {
if {[matchattr $hand nmo|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.1242 none
	blacktools:tell $nick $host $hand $chan $chan1 man.1243 none
	blacktools:tell $nick $host $hand $chan $chan1 man.1244 none
	blacktools:tell $nick $host $hand $chan $chan1 man.1245 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}

badchanbmethod {
if {[matchattr $hand nmo|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.1246 none
	blacktools:tell $nick $host $hand $chan $chan1 man.1247 none
	blacktools:tell $nick $host $hand $chan $chan1 man.1248 none
	blacktools:tell $nick $host $hand $chan $chan1 man.1249 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}

repetitivechars {
if {[matchattr $hand nmo|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.1250 none
	blacktools:tell $nick $host $hand $chan $chan1 man.1251 none
	blacktools:tell $nick $host $hand $chan $chan1 man.1252 none
	blacktools:tell $nick $host $hand $chan $chan1 man.1253 none
	blacktools:tell $nick $host $hand $chan $chan1 man.1254 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}

quitpartmsgflood {
if {[matchattr $hand nmo|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.1255 none
	blacktools:tell $nick $host $hand $chan $chan1 man.1256 none
	blacktools:tell $nick $host $hand $chan $chan1 man.1257 none
	blacktools:tell $nick $host $hand $chan $chan1 man.1258 none
	blacktools:tell $nick $host $hand $chan $chan1 man.1259 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}

massfloodsilencetime {
if {[matchattr $hand nmo|- $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.1260 none
	blacktools:tell $nick $host $hand $chan $chan1 man.1261 none
	blacktools:tell $nick $host $hand $chan $chan1 man.1262 none
	blacktools:tell $nick $host $hand $chan $chan1 man.1263 none
	blacktools:tell $nick $host $hand $chan $chan1 man.1264 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}

banmethodexpire {
if {[matchattr $hand nmo|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.1265 none
	blacktools:tell $nick $host $hand $chan $chan1 man.1266 none
	blacktools:tell $nick $host $hand $chan $chan1 man.1267 none
	blacktools:tell $nick $host $hand $chan $chan1 man.1268 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}

count {
if {[matchattr $hand nmo|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.1269 none
	blacktools:tell $nick $host $hand $chan $chan1 man.1270 none
	blacktools:tell $nick $host $hand $chan $chan1 man.1271 none
	blacktools:tell $nick $host $hand $chan $chan1 man.1272 none
	blacktools:tell $nick $host $hand $chan $chan1 man.1273 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}

exempt {
if {[matchattr $hand nmo|M $chan]} {	
	blacktools:tell $nick $host $hand $chan $chan1 man.1278 none
if {[matchattr $hand nmo]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.1279 none
	blacktools:tell $nick $host $hand $chan $chan1 man.1280 none
	blacktools:tell $nick $host $hand $chan $chan1 man.1281 none
	blacktools:tell $nick $host $hand $chan $chan1 man.1283 none
} else {
	blacktools:tell $nick $host $hand $chan $chan1 man.1282 none
		}
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}

for {
if {[matchattr $hand nmo|MOAV $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.1284 none
	blacktools:tell $nick $host $hand $chan $chan1 man.1285 none
	blacktools:tell $nick $host $hand $chan $chan1 man.1286 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}

bantime {
if {[matchattr $hand nmo|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.2101 none
	blacktools:tell $nick $host $hand $chan $chan1 man.2102 none
	blacktools:tell $nick $host $hand $chan $chan1 man.2103 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}

chanmode {
if {[matchattr $hand nmo|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.2104 none
	blacktools:tell $nick $host $hand $chan $chan1 man.2105 none
	blacktools:tell $nick $host $hand $chan $chan1 man.2106 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}

dontkickops {
if {[matchattr $hand nmo|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.2107 none
	blacktools:tell $nick $host $hand $chan $chan1 man.2108 none
	blacktools:tell $nick $host $hand $chan $chan1 man.2109 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}

enforcebans {
if {[matchattr $hand nmo|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.2110 none
	blacktools:tell $nick $host $hand $chan $chan1 man.2111 none
	blacktools:tell $nick $host $hand $chan $chan1 man.2112 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}

dynamicbans {
if {[matchattr $hand nmo|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.2113 none
	blacktools:tell $nick $host $hand $chan $chan1 man.2114 none
	blacktools:tell $nick $host $hand $chan $chan1 man.2115 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}

userbans {
if {[matchattr $hand nmo|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.2116 none
	blacktools:tell $nick $host $hand $chan $chan1 man.2117 none
	blacktools:tell $nick $host $hand $chan $chan1 man.2118 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}

autohalfop {
if {[matchattr $hand nmo|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.2122 none
	blacktools:tell $nick $host $hand $chan $chan1 man.2123 none
	blacktools:tell $nick $host $hand $chan $chan1 man.2124 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}

bitch {
if {[matchattr $hand nmo|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.2128 none
	blacktools:tell $nick $host $hand $chan $chan1 man.2129 none
	blacktools:tell $nick $host $hand $chan $chan1 man.2130 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}

protectops {
if {[matchattr $hand nmo|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.2134 none
	blacktools:tell $nick $host $hand $chan $chan1 man.2135 none
	blacktools:tell $nick $host $hand $chan $chan1 man.2136 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}


protectfriends {
if {[matchattr $hand nmo|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.2137 none
	blacktools:tell $nick $host $hand $chan $chan1 man.2138 none
	blacktools:tell $nick $host $hand $chan $chan1 man.2139 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}

protecthalfops {
if {[matchattr $hand nmo|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.2140 none
	blacktools:tell $nick $host $hand $chan $chan1 man.2141 none
	blacktools:tell $nick $host $hand $chan $chan1 man.2142 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}

inactive {
if {[matchattr $hand nmo|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.2143 none
	blacktools:tell $nick $host $hand $chan $chan1 man.2144 none
	blacktools:tell $nick $host $hand $chan $chan1 man.2145 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}

statuslog {
if {[matchattr $hand nmo|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.2146 none
	blacktools:tell $nick $host $hand $chan $chan1 man.2147 none
	blacktools:tell $nick $host $hand $chan $chan1 man.2148 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}

static {
if {[matchattr $hand nmo|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.2149 none
	blacktools:tell $nick $host $hand $chan $chan1 man.2150 none
	blacktools:tell $nick $host $hand $chan $chan1 man.2151 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}

revenge {
if {[matchattr $hand nmo|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.2152 none
	blacktools:tell $nick $host $hand $chan $chan1 man.2153 none
	blacktools:tell $nick $host $hand $chan $chan1 man.2154 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}

revengebot {
if {[matchattr $hand nmo|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.2155 none
	blacktools:tell $nick $host $hand $chan $chan1 man.2156 none
	blacktools:tell $nick $host $hand $chan $chan1 man.2157 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}

secret {
if {[matchattr $hand nmo|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.2158 none
	blacktools:tell $nick $host $hand $chan $chan1 man.2159 none
	blacktools:tell $nick $host $hand $chan $chan1 man.2160 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}

shared {
if {[matchattr $hand nmo|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.2161 none
	blacktools:tell $nick $host $hand $chan $chan1 man.2162 none
	blacktools:tell $nick $host $hand $chan $chan1 man.2163 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}

nodesynch {
if {[matchattr $hand nmo|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.2167 none
	blacktools:tell $nick $host $hand $chan $chan1 man.2168 none
	blacktools:tell $nick $host $hand $chan $chan1 man.2169 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}

dynamicexempts {
if {[matchattr $hand nmo|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.2170 none
	blacktools:tell $nick $host $hand $chan $chan1 man.2171 none
	blacktools:tell $nick $host $hand $chan $chan1 man.2172 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}

userexempts {
if {[matchattr $hand nmo|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.2173 none
	blacktools:tell $nick $host $hand $chan $chan1 man.2174 none
	blacktools:tell $nick $host $hand $chan $chan1 man.2175 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}

dynamicinvites {
if {[matchattr $hand nmo|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.2176 none
	blacktools:tell $nick $host $hand $chan $chan1 man.2177 none
	blacktools:tell $nick $host $hand $chan $chan1 man.2178 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}

userinvites {
if {[matchattr $hand nmo|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.2179 none
	blacktools:tell $nick $host $hand $chan $chan1 man.2180 none
	blacktools:tell $nick $host $hand $chan $chan1 man.2181 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}

userexempts {
if {[matchattr $hand nmo|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.2173 none
	blacktools:tell $nick $host $hand $chan $chan1 man.2174 none
	blacktools:tell $nick $host $hand $chan $chan1 man.2175 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}

floodctcp {
if {[matchattr $hand nmo|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.2182 none
	blacktools:tell $nick $host $hand $chan $chan1 man.2183 none
	blacktools:tell $nick $host $hand $chan $chan1 man.2184 none
	blacktools:tell $nick $host $hand $chan $chan1 man.2185 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}

floodjoin {
if {[matchattr $hand nmo|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.2186 none
	blacktools:tell $nick $host $hand $chan $chan1 man.2187 none
	blacktools:tell $nick $host $hand $chan $chan1 man.2188 none
	blacktools:tell $nick $host $hand $chan $chan1 man.2189 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}

floodkick {
if {[matchattr $hand nmo|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.2190 none
	blacktools:tell $nick $host $hand $chan $chan1 man.2191 none
	blacktools:tell $nick $host $hand $chan $chan1 man.2192 none
	blacktools:tell $nick $host $hand $chan $chan1 man.2193 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}

flooddeop {
if {[matchattr $hand nmo|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.2194 none
	blacktools:tell $nick $host $hand $chan $chan1 man.2195 none
	blacktools:tell $nick $host $hand $chan $chan1 man.2196 none
	blacktools:tell $nick $host $hand $chan $chan1 man.2197 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}

floodnick {
if {[matchattr $hand nmo|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.2198 none
	blacktools:tell $nick $host $hand $chan $chan1 man.2199 none
	blacktools:tell $nick $host $hand $chan $chan1 man.2200 none
	blacktools:tell $nick $host $hand $chan $chan1 man.2201 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}

floodchan {
if {[matchattr $hand nmo|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.2202 none
	blacktools:tell $nick $host $hand $chan $chan1 man.2203 none
	blacktools:tell $nick $host $hand $chan $chan1 man.2204 none
	blacktools:tell $nick $host $hand $chan $chan1 man.2205 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}

purge {
if {[matchattr $hand nmo|M $chan]} {	
	blacktools:tell $nick $host $hand $chan $chan1 man.670 none
	blacktools:tell $nick $host $hand $chan $chan1 man.671 none
	blacktools:tell $nick $host $hand $chan $chan1 man.672 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}

tip {
if {[matchattr $hand nmo|MAOV $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.6666 none
	}
}

autoupdate {
if {[matchattr $hand n]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.2206 none
	blacktools:tell $nick $host $hand $chan $chan1 man.2207 none
	blacktools:tell $nick $host $hand $chan $chan1 man.2208 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}	
}

alias {
if {[matchattr $hand nmo|MAO $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.2209 none
	blacktools:tell $nick $host $hand $chan $chan1 man.2210 none
	blacktools:tell $nick $host $hand $chan $chan1 man.2211 none
	blacktools:tell $nick $host $hand $chan $chan1 man.2212 none
	blacktools:tell $nick $host $hand $chan $chan1 man.2213 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}
}


update {
if {[matchattr $hand n]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.2206 none
	blacktools:tell $nick $host $hand $chan $chan1 man.2207 none
	blacktools:tell $nick $host $hand $chan $chan1 man.2208 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}	
}

noproxy {
if {[matchattr $hand nmo|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.2214 none
	blacktools:tell $nick $host $hand $chan $chan1 man.2215 none
	blacktools:tell $nick $host $hand $chan $chan1 man.2216 none
	blacktools:tell $nick $host $hand $chan $chan1 man.2217 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}	
}

antibotidle {
if {[matchattr $hand n]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.2218 none
	blacktools:tell $nick $host $hand $chan $chan1 man.2218_1 none
	blacktools:tell $nick $host $hand $chan $chan1 man.2219 none
	blacktools:tell $nick $host $hand $chan $chan1 man.2220 none
	blacktools:tell $nick $host $hand $chan $chan1 man.showtip none
	}	
}
vote {
if {[matchattr $hand nmo|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.2221 none
	blacktools:tell $nick $host $hand $chan $chan1 man.2222 none
	blacktools:tell $nick $host $hand $chan $chan1 man.2223 none
	blacktools:tell $nick $host $hand $chan $chan1 man.2224 none
	blacktools:tell $nick $host $hand $chan $chan1 man.2225 none
	blacktools:tell $nick $host $hand $chan $chan1 man.2226 none
	blacktools:tell $nick $host $hand $chan $chan1 man.2227 none
	} elseif {[matchattr $hand nmo|MAOV $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.2221 none
	blacktools:tell $nick $host $hand $chan $chan1 man.2222 none
	blacktools:tell $nick $host $hand $chan $chan1 man.2228 none
	blacktools:tell $nick $host $hand $chan $chan1 man.2229 none
	}
}

mask {
if {[matchattr $hand nmo|M $chan]} {
	blacktools:tell $nick $host $hand $chan $chan1 man.2230 none
	blacktools:tell $nick $host $hand $chan $chan1 man.2231 none
	blacktools:tell $nick $host $hand $chan $chan1 man.2232 none
	}	
}

default {
	blacktools:tell $nick $host $hand $chan $chan1 man.1_1 $nick
		}
	}
}

##############
#########################################################################
##   END                                                               ##
#########################################################################
