#########################################################################
##          BlackTools - The Ultimate Channel Control Script           ##
##                    One TCL. One smart Eggdrop                       ##
#########################################################################
###########################   NoProxy TCL   #############################
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

###
proc noproxy:protect {nick host hand chan} {
    global black
if {![validchan $chan]} { return }
if {[setting:get $chan noproxy]} {
if {[matchattr $hand $black(exceptflags) $chan]} { return }
set bl_protect [blacktools:protect $nick $chan]
if {$bl_protect == "1"} { return }
if {![botisop $chan] && ![setting:get $chan xonly]} { return }
    set uhost [lindex [split $host @] 1]
    set is_except 0
foreach ex $black(noproxy:excepts) {
if {[string match -nocase $ex $uhost]} {
    set is_except 1
    }
}
if {$is_except == 1} {return}
    set check_proxy [blacktools:noproxy_data $uhost]
if {$check_proxy == 0} {return}
    set isp [lindex $check_proxy 0]
    set proxy_status [lindex $check_proxy 1]
if {$proxy_status == "false"} {return}
	blacktools:banner:2 $nick "noproxy" $chan $chan $host "0" [list $isp]
if {[link:status $chan] == "1"} {
	foreach c [link:chan:get $chan] {
	blacktools:banner:2 $nick "noproxy" $c $c $host "1" [list $isp]
				}
	blacktools:link_ban2 [link:get] 0
		} else { who:chan $chan }
    }
}

###
proc blacktools:noproxy_data {host} {
    global black
if {![info exists black(http_ok)]} {
if {[catch {package require http} no_http] != 0} {
    source $black(backdir)/BlackTools/Addons/http.tcl
    package require http
    set black(http_ok) 1
} else {
    set black(http_ok) 1
    }
}
    set link "http://ip-api.com/json/${host}?fields=proxy,status,isp"
    set ipq [::http::config -useragent "lynx"]
	set ipq [::http::geturl "$link" -timeout 10000]
    set check_it [catch {set ipq [::http::geturl $link -timeout 3000]} error]
if {$check_it == "1"} { return 0 }
	set data [::http::data $ipq]
	::http::cleanup $ipq
    regexp -nocase {\"status\":\"(.+)\"} $data -> status
    regsub -all {\",(.*)} $status "" status
if {$status != "success"} {
    return 0
}
    set proxy_status "false"
    set isp ""
    regexp {"proxy":(.+)\}} $data -> proxy_status
    regsub {,(.*)} $proxy_status "" proxy_status
    regexp {"isp":\"(.+)\"} $data -> isp
    regsub {\",(.*)} $isp "" isp
    return [list $isp $proxy_status]
}

##############
#########################################################################
##   END                                                               ##
#########################################################################