###########################################################################
#                      ® BLaCkShaDoW ProductionS ®                        #
#                                                                         #
#                               PRESENTS                                  #
###########################################################################

####   #        ####    #####   #   #  #####  #####    #####   #      #####
#   #  #       #    #   #       #  #     #   #     #  #     #  #      #
#   #  #       #    #   #       # #      #   #     #  #     #  #      #
####   #       ######   #       ##       #   #     #  #     #  #      #####
#   #  #       #    #   #       # #      #   #     #  #     #  #          #
#   #  #       #    #   #       #  #     #   #     #  #     #  #          #
####   #####   #    #   #####   #   #    #    #####    #####   #####  #####

###########################################################################
#                                                                         #
#                           #####   #                                     #
#                               #   #                                     #
#                               #   #                                     #
#                           ####    ######                                #
#                           #            #                                #
#                           #            #                                #
#                           #####  #     #                                #
#                                                                         #
#                                                                         #
#                   THE    NEXT    GENERATION    TCL                      #
#                                                                         #
#            - #TCL-HELP @ UNDERNET - WwW.TclScripts.Net -                #
###########################################################################
#A Next Generation Channel Control Script that contains a lot of commands #
#modules, and protections that make`s your life easy for you and for your #
#                              Eggdrop.                                   #
###########################################################################
#                                                                         #
#      Many thanks for without this script wouldn't got this far to:      #
#                                                                         #
#                      Time2Go@Oradea(#Tcl-Help Admin)                    #
#                                                                         #
#        Offcourse i thanks all the users who participate with ideas,     #
# opinions, which took the script to this version.                        #
#                                                                         #
###########################################################################
#
#Please specify the folder name that contains the BlackTools.tcl and the
#BlackTools folder (Default "scripts")
#
set black(dirname) "scripts"
#
############################################################################
#Set here the config name of the Eggdrop where the "source scripts" lines 
#are written(Default "eggdrop.conf")
#
set black(configname) "eggdrop.conf"
#
###########################################################################
#			Home Chan (Optional)
#Here you set your eggdrop's homechan. If you modify here the eggdrop
#will join homechan. If not leave it "#no_home_chan" or ""
#
set black(homechan) "#no_home_chan"
#
###########################################################################
#       		             					  #
#			        # 					  #
#			        #  					  #
#			        #					  #
#			        ##########				  #
#                               #        #  				  #
#			        #        #                                #
#		              # #        #                                #
#									  #
#	            HELP 			COMMAND                   #
###########################################################################

#---------------------------- First Char ---------------------------------#

#First Char ( "- . !" ) - ( "none" ) (for no char)

set black(cmdchar) ". !"

#-------------------------------------------------------------------------#


#-------------------------- Default Language -----------------------------#

#Default language of the script ( RO / EN )

set black(default_lang) "RO"

#-------------------------------------------------------------------------#

#------------------------- Antiflood Protect -----------------------------#

#Antiflood for .h & .man commands (commands:seconds)

set black(antiflood:cmd) "3:5"

#-------------------------------------------------------------------------#

#---------------------------- Chanserv Name ------------------------------#

#Chanserv Name

set black(chanserv) "X"

#-------------------------------------------------------------------------#

#--------------------------- Chanserv Login ------------------------------#

#Login On Connect ( 1 - ON ; 0 - OFF)

set black(logonconect) "1"

#-------------------------------------------------------------------------#

#--------------------------- Chanserv User -------------------------------#

set black(username) "username"

#-------------------------------------------------------------------------#

#--------------------------- Chanserv Pass -------------------------------#

set black(password) "password"

#-------------------------------------------------------------------------#

#--------------------------- Login Command -------------------------------#

set black(login) "PRIVMSG x@channels.undernet.org :login $black(username) $black(password)"

#-------------------------------------------------------------------------#

#----------------------------- Login Mode --------------------------------#

set black(xmod) "+x"

#-------------------------------------------------------------------------#

#----------------------------- User Expire -------------------------------#

#Expire Time (days)

set black(user_expire_time) "60"

#-------------------------------------------------------------------------#

################################# add #####################################
#
#       add <level> <user> (level : manager,admin,senior,op voice,protect)
#
###########################################################################

#Default Hostname for - add <user> command -

set black(hostadd) "*!*@%user%.users.undernet.org"

##########################################################################
#
#                        Antipub Protection
#
##########################################################################

#Ban-Time

set black(antipubbantime) "2880"

#Words

set black(antipubword) {
"*#*"
 "*www.*"
 "*http://*"
 "*.ro"
 "*.com"
 "*/server*"
}

#Except words

set black(antipubexcept) {
"http://mysite.co.jp"
"#my_no_name_channel"
}

#Ban-Mode

set black(antipubmode) "m"

#Ban-mode Time (Seconds)

set black(antipubsecunde) "5"

#########################################################################
#
#                      AntiNotice Protection
#
#########################################################################

#Ban-Time

set black(antinoticebantime) "2880"

#Ban-Mode

set black(antinoticemode) "mr"

#Ban-mode Time (Seconds)

set black(antinoticesecunde) "7"

#########################################################################
#
#                         AntiCTCP Protection
#
#########################################################################

#Ban-Time

set black(antictcpbantime) "2880"

#Ban-Mode

set black(antictcpmode) "mr"

#Ban-mode Time (Seconds)

set black(antictcpsecunde) "8"

#########################################################################
#
#                       AntiBadWord Protection
#
#########################################################################


#Ban-Time

set black(antibadwordbantime) "360"

#Words

set black(antibadword) {
"*pula*"
 "*pizda*"
 "*muie*"
 "*sugi"
 "mwie"
 "*pwla*"
 "*muisti*"
 "*fut*"
 "*fwt*"
 "tarfa"
}

########################################################################
#
#                        AntiLongText Protection
#
########################################################################

#Char length

set black(longchar) "400"

#Ban-Time

set black(longbantime) "30"

#Ban-Mode

set black(longmode) "mr"

#Ban-mode Time (Seconds)

set black(longtimemode) "10"

#######################################################################
#
#                       AntiBAdQuitPart Protection
#
#
#######################################################################

#Ban-Time

set black(badquitparttime) "60"

#Words

set black(badquitpartwords) {
"*www.*"
"*http://*"
"*#*"

}

#Ban on COLORS (1 - ON ; 0 - OFF)

set black(badquitpartcolour) "1"

#######################################################################
#
#                       AntiJoinPart Protection
#
#
#######################################################################

#Ban-Time

set black(joinpartbantime) "30"

#Stay-Time

set black(joinparttime) "2"

#Ban-Mode

set black(joinpartmode) "mr"

#Ban-Mode Time (Seconds)

set black(joinparttimemode) "10"

#######################################################################
#
#                       AntiSpam Protection
#
#
#######################################################################


#Ban-Time

set black(spamban) "2880"

#Words

set black(spamword) {
"*#*"
 "*www.*"
 "*http://*"
}

#Cycle-Time

set black(spamcycle) "30"

#ON-JOIN Message ( 1 - ON ; 0 - OFF)

set black(spamreq) "1"

#Part Message

set black(spammsgcycle) "Checking for spam.."

#######################################################################
#
#                       AntiRepeat Protection
#
#######################################################################

#Repeat Setting (number repeats:seconds)

set black(repeats) "3:5"

#Ban-Type (1 - KICK -> BAN ; 0 - BAN )

set black(antirepeattype) "1"

#Ban-Time

set black(antirepeatbantime) "10"

#######################################################################
#
#                          Anticolor Protection
#
#######################################################################

#Ban-Type (1 - KICK -> BAN ; 0 - BAN )

set black(anticolortype) "1"

#Ban-Time

set black(anticolorbantime) "10"

#######################################################################
#
#                          AntiBold Protection
#
#######################################################################

#Ban-Type (1 - KICK -> BAN ; 0 - BAN )

set black(antiboldtype) "1"

#Ban-Time

set black(antiboldbantime) "10"

#######################################################################
#
#                          AntiUnderline Protection
#
#######################################################################

#Ban-Type (1 - KICK -> BAN ; 0 - BAN )

set black(antiunderlinetype) "1"

#Ban-Time

set black(antiunderlinebantime) "10"

#######################################################################
#
#                          AntiCaps Protection
#
#######################################################################

#Ban-Type (1 - KICK -> BAN ; 0 - BAN )

set black(anticapstype) "1"

#Caps Char Length

set black(anticapscount) "40"

#Ban-Time

set black(anticapsbantime) "10"

#######################################################################
#
#                          BadFullName Protection
#
#######################################################################

#Ban-Time

set black(badfbantime) "60"

#Words

set black(badfwords) {
"*www.*"
"*#*"
"*http://*"

}

#######################################################################
#
#                          BadNick Protection
#
#######################################################################

#Ban-Time

set black(badnickbantime) "60"

#Words

set black(badnickwords) {

"*pula*"
"*muie *"
"pwla*"
"pizda*"
"laba*"

}


#######################################################################
#
#                          BadIdent Protection
#
#######################################################################

#Ban-Time

set black(badidentbantime) "60"

#Words

set black(badidentwords) {

"*pula*"
"*muie *"
"pwla*"
"pizda*"
"laba*"

}


#######################################################################
#
#                          AntiJoinFlood Protection
#
#######################################################################

#Join-Mode

set black(modes) "mir"


#Join-Mode Time (Seconds)

set black(nomodetime) "15"


#Op ALERT (1 - ON ; 0 - OFF)

set black(fjoinhow) "1"

#######################################################################
#
#                          AntiChanFlood Protection
#
#######################################################################

#Ban-Type (1 - KICK -> BAN ; 0 - BAN )

set black(antifloodchantype) "1"

#Ban-Time

set black(antifloodchanbantime) "10"

#######################################################################
#
#                                Modules
#
#######################################################################


#######################################################################
#
#                            Topic refresh
#
#######################################################################

#Refresh Time

set black(topic_time) "60"

#Standard Topic

set black(topics) "Reloading topic..."


########################################################################
#
#                                 Count
#
#                  count <on> / <off> / <display> / <reset>
#######################################################################

#MSg Type ( 1 - NOTICE ; 0 - PRIVMSG )

set black(counthow) "1"

#######################################################################
#
#                               BadChan
#
#              badchan | <on> | <off> | add | del | | list |
#######################################################################

#Ban-Time

set black(badcbantime) "360"

########################################################################
#
#                                 Anunt
#
#                  Anunt <on> | <off> | <add> | <list> | <del>
#######################################################################

#Anunt Time

set black(anunttime) "30"

#MSg Type ( 1 - ACTION ; 0 - PRIVMSG )

set black(anunthow) "0"

########################################################################
#
#                             AutoBroadcast
#
#                  bt <on> | <off> | <add> | <list> | <del>
#######################################################################


#BRoadcast Time

set black(bttime) "60"

#MSg Type ( 1 - ACTION ; 0 - PRIVMSG )

set black(bthow) "1"


#######################################################################
#
#                               CloneScan
#
#######################################################################

#Max Clones

set black(maxclone) "3"

#Ban-Time

set black(clonebtime) "180"

#######################################################################
#
#                               AntiBoTidle
#
#######################################################################

#Random Object

set black(noobject) "blacky:P"

#Max Idle

set black(noidlemax) "10"

#######################################################################
#
#                                Seen
#
#                         seen <host> / <nick>
#######################################################################

#Flood-Protection (searches : seconds)

set black(seenflood) "4:5"

#Expire Time (days)

set black(seen:expire:time) "60"

########################################################################
#
#                                 Greet
#
#             greet <on> | <off> | <add> | <list> | <set> | <del>
#######################################################################

#MSg Type ( 1 - NOTICE ; 0 - PRIVMSG )

set black(howgreet) "1"

########################################################################
#
#                                 Leave
#
#                  leave <on> | <off> | <add> | <list> | <del>
#######################################################################

#MSg Type ( 1 - NOTICE ; 0 - PRIVMSG )

set black(howleave) "0"

#Flood-Protection (joins:seconds)

set black(leaveflood) "4:5"

########################################################################
#
#                                 idle
#
#
#  idle <on> | <off> | voice <on>/<off> | op <on>/<off> | add <nick>
#######################################################################

#Idle Scan Time

set black(idleinterval) "60"

#Op max idle

set black(idleopmax) "30"

#Voice idle Max

set black(idlevoicemax) "60"

########################################################################
#
#									Gag
#
# gag <host>/<nick> [time] [reason] | gag <-list> | ungag <host>/<nick>
########################################################################

#Gag Default Time

set black(gag_time) "10"

########################################################################
#
#                                Private
#
#
#          private <on> | <off> | <add> <user> | <list> | del <nume>
#######################################################################

#Ban-Time

set black(privatebantime) "10"

########################################################################
#
#                                Next
#
#
#            next | helped <nick> | noidle <nick> | skip <nick>
#
#######################################################################

set black(nextbantime) "1"

#######################################################################
#
#                               Commands
#
#######################################################################


#######################################################################
#
#                              dr <nick> / <host>
#
#######################################################################

#Ban-Time

set black(drtime) "20160"

#######################################################################
#
#                              bot <nick> / <host>
#
#######################################################################

#Ban-Time

set black(bottime) "10160"

########################################################################
#
#                              b <nick> / <host>
#
#######################################################################

#Ban-Time

set black(btime) "2880"


#######################################################################
#
#                                 n <nick>
#
#######################################################################

#Ban-Time

set black(ntime) "120"

######################################################################
#
#                                 id <nick>
#
######################################################################

#Ban-Time

set black(idtime) "120"


######################################################################
#
#                   spam <nick> / <host>
#
######################################################################

#Ban-Time

set black(spamtime) "10080"


######################################################################
#
#                          k <nick> <reason>
#
######################################################################


#Access Except ( 1 - ON ; 0 - OFF )

set black(kaccess) "1"


#######################################################################
#
#                    bw <nick> / <host> ( bad word)
#
#######################################################################

#Ban-Time

set black(bwtime) "360"

########################################################################
#
#              stick <nick> / <host> <timp> <reason>
#
########################################################################

#Ban-Time

set black(dfstickbantime) "5040"

########################################################################
#
#             d <nr> <host>/<nick> <time> <reason>
#
########################################################################

#Ban-Time (days)

set black(dbtime) "1"

########################################################################
#
#                           l <seconds>
#
########################################################################

#Mode Type

set black(lmode) "m"

########################################################################
#
#                               ul
#
########################################################################

#Mode Type

set black(ulmodes) "mir"

########################################################################
#
#
#                            This is the END !
#
#
########################################################################


set black(exceptflags) "nm|HAagMOVSo"

setudef flag antipub
setudef flag antinotice
setudef flag antictcp
setudef flag antilongtext
setudef flag antibadword
setudef flag antijoinpart
setudef flag antispam
setudef flag antirepeat
setudef flag badquitpart
setudef flag anticolor
setudef flag antibold
setudef flag antiunderline
setudef flag anticaps
setudef flag badfullname
setudef flag badnick
setudef flag badident
setudef flag antijoinflood
setudef flag antichanflood
setudef flag xtools
setudef flag topicrefresh
setudef flag count
setudef flag antibadchan
setudef flag anunt
setudef flag limit
setudef flag refresh
setudef flag clonescan
setudef flag seen
setudef flag antidle
setudef flag antividle
setudef flag antididle
setudef flag autoop
setudef flag autovoice
setudef flag leave
setudef flag chanreport
setudef flag topwords
setudef flag xban
setudef flag protectop
setudef flag protectvoice
setudef flag dontop
setudef flag dontdeop
setudef flag private
setudef flag silent
setudef flag showtime
setudef flag showhandle
setudef flag showcount
setudef flag next
setudef flag topiclock

setudef int idlevoicemax
setudef int idleopmax
setudef int countnumber
setudef int kickcount
setudef int xbantime
setudef int xbanlevel
setudef int blacklimit
setudef int clonescan-bantime
setudef int clonescan-maxclone

setudef str backchan
setudef str next-backchan
setudef str clonescan-action
setudef str clonescan-banreason

#Motive / Bantime

#Protection

setudef str antipub-reason
setudef int antipub-bantime
setudef str antinotice-reason
setudef int antinotice-bantime
setudef str antictcp-reason
setudef int antictcp-bantime
setudef str antibadword-reason
setudef int antibadword-bantime
setudef str antilongtext-reason
setudef int antilongtext-bantime
setudef str antibadquitpart-reason
setudef int antibadquitpart-bantime
setudef str antijoinpart-reason
setudef int antijoinpart-bantime
setudef str antispam-reason
setudef int antispam-bantime
setudef str antispam-message
setudef str antirepeat-reason
setudef int antirepeat-bantime
setudef str anticolor-reason
setudef int anticolor-bantime
setudef str antibold-reason
setudef int antibold-bantime
setudef str antiunderline-reason
setudef int antiunderline-bantime
setudef str anticaps-reason
setudef int anticaps-bantime
setudef str badfullname-reason
setudef int badfullname-bantime
setudef str badnick-reason
setudef int badnick-bantime
setudef str badident-reason
setudef int badident-bantime
setudef str antichanflood-reason
setudef int antichanflood-bantime
setudef str joinflood
setudef str chanflood
setudef int private-bantime
setudef str private-reason
setudef int antilongtextmax
setudef str antirepeat-setting
setudef str k-reason
setudef str check-message
setudef str b-reason
setudef int b-bantime
setudef str black-reason
setudef str stick-reason
setudef int stick-bantime
setudef str d-reason
setudef int d-bantime


#commands

setudef str dr-reason
setudef int dr-bantime
setudef str n-reason
setudef int n-bantime
setudef int b-bantime
setudef str id-reason
setudef int id-bantime
setudef str w-reason
setudef str spam-reason
setudef int spam-bantime
setudef str bw-reason
setudef int bw-bantime
setudef int bot-bantime
setudef str bot-reason
setudef int gag-time
setudef str gag-reason
#module

setudef str badchan-reason
setudef int badchan-bantime
setudef str topicset
setudef str count-message
setudef str count-date
setudef str lang
setudef str vprotect
setudef str oprotect
setudef str seen-method
setudef str next-noidlereason
setudef int next-bantime

if {$black(logonconect) == "1"} {
if {[info exists black(notlogged)]} {
	unset black(notlogged)
}
	bind evnt - init-server loginpublic
	bind time - "* * * * *" timer:login:check
}

bind pubm - * topwordspublic
bind pubm - * antipub:protect
bind ctcp - ACTION antipub:protect:me
bind notc - * antinotice:protect
bind ctcp - * antictcp:protect

bind pubm - * antibadword:protect
bind ctcp - ACTION antibadword:protect:me
bind pubm - * antilongtext:protect
bind ctcp - ACTION antilongtext:protect:me
bind part - * antipubpart:protect
bind sign - * antipubsign:protect
bind part - * anticolorpart:protect
bind sign - * anticolorquit:protect
bind part - * antijoinpart:protect
bind join - * antispam:protect:msg
bind msgm - * antispam:protect
bind time - * antispam:protect:cycle
bind time - "30 * * * *" clonescanner
bind time - "* * * * *" limit:timer
bind time - "30 00 * * *" seen:entry:delete
bind time - "00 00 * * *" user:autoexpire
bind pubm - * antirepeat:protect
bind pubm - * antifloodchan:protect
bind ctcp - version blackreply
bind ctcp - ACTION antirepeat:protect:me
bind ctcp - ACTION antifloodchan:protect:me
bind pubm - * anticolor:protect
bind ctcp - ACTION anticolor:protect:me
bind pubm - * antibold:protect
bind ctcp - ACTION antibold:protect:me
bind pubm - * antiunderline:protect
bind ctcp - ACTION antiunderline:protect:me
bind pubm - * anticaps:protect
bind ctcp - ACTION anticaps:protect:me
bind join - * badfullname:protect:join
bind join - * badnick:protect:join
bind join - * badident:protect:join
bind nick - * badnick:protect:change
bind mode - "*+b*" protectpublic
bind join - * joinflood:protect
bind join - * rebanpublic
bind need - * toolspublic
bind need - * keyneed
bind join - * countpublic:join
bind join - * badchanpublic:join
bind join - * seen:join
bind part - * seen:part
bind sign - * seen:sign
bind kick - * seen:kick
bind splt - * seen:split
bind nick - * seen:changenick
bind join - * greetpublic:join
bind part - * leavepublic:part
bind time - * idlewhoispublic
bind evnt - init-server setaway
bind join - * autovonjoin
bind join - * autoponjoin
bind join - * auto:join
bind join - * private:module
bind join - * timeban:module
bind ctcr mn|MOSAV PING pingpublic
bind ctcr - VERSION ctcpvers
bind mode - *+o* dontoppublic
bind mode - *-o* dontdeoppublic

bind part - * badchan:part
bind sign - * badchan:part
bind splt - * badchan:split
bind kick - * badchan:kick
bind nick - * badchan:nickchange

bind join - * flood:join:protection
bind topc - * topic:change
bind mode - *+o* topiclock:verify
bind join - * topiclock:join
bind mode - *-b* gag:reban
bind time - "* * * * *" gag:autounban

bind join - * black:next:join
bind part - * black:next:part
bind sign - * black:next:sign
bind splt - * black:next:split
bind kick - * black:next:kick
bind mode - * black:next:mode
bind nick - * black:next:chnick
bind time - * black:next:checklist

bind notc - "*AUTENTIFICARE REUSITA*" black:login:yes
bind notc - "*AUTHENTICATION SUCCESSFUL*" black:login:yes
bind notc - "*AUTENTIFICARE ESUATA*" black:login:no
bind notc - "*AUTHENTICATION FAILED*" black:login:no
bind notc - "*You are already authenticated*" black:login:yes
bind notc - "*Esti deja autentificat*" black:login:yes
bind notc - "*SYNTAX: LOGIN*" black:login:no
bind notc - "*I don't know*" black:login:no

if {[info exists numversion]} {
if {$numversion >= "1061900"} {
bind log - * check:badword:unban
} else {
bind time - "00 00 * * *" badword:autocheck
	}
}

bind pubm nm|MmvVNnoOSA * comand:pubme

foreach black(char) $black(cmdchar) {
if {[string equal -nocase "none" "$black(char)"]} {
	set black(char) ""
}

bind pub nm|MAS $black(char)clonescan scannerpublic
bind pub nm|MASO $black(char)r refreshpublic
bind pub nm|M $black(char)count countpublic
bind pub nm|M $black(char)badchan badchanpublic
bind pub nm|M $black(char)badword antibadword:command:public
bind pub nm|M $black(char)anunt anuntpublic
bind pub nm|M $black(char)limit limitpublic
bind pub nm|M $black(char)topic topicpublic
bind pub -|- $black(char)seen seenpublic
bind pub nm|M $black(char)greet greetpublic
bind pub nm|M $black(char)leave leavepublic
bind pub nm|M $black(char)idle antidlepublic
bind pub nm|OSMA $black(char)dr drpublic
bind pub nm|OSMA $black(char)bot botpublic
bind pub nm|OSMA $black(char)b bpublic
bind pub nm|OSMA $black(char)n npublic
bind pub nm|OSMA $black(char)id idpublic
bind pub nm|SMA $black(char)black blackpublic
bind pub nm|SMA $black(char)bl blackpublic
bind pub nm|VOSMA $black(char)w wpublic
bind pub nm|OSMA $black(char)spam spampublic
bind pub nm|VOSMA $black(char)k kpublic
bind pub nm|OSMA $black(char)bw bwpublic
bind pub nm|OSMA $black(char)ub ubpublic
bind pub nm|VOSMA $black(char)sb sbpublic
bind pub nm|SMA $black(char)d dpublic
bind pub nm|SMA $black(char)stick stickpublic
bind pub nm|VOSMA $black(char)t tpublic
bind pub nm|M $black(char)show showpublic
bind pub nm|- $black(char)status statuspublic
bind pub nm|- $black(char)channels channelspublic
bind pub nm|- $black(char)chat chatpublic
bind pub nm|- $black(char)uptime uptimepublic
bind pub nm|VOSMA $black(char)i ipublic
bind pub nm|VOSMA $black(char)addinfo addinfopublic
bind pub nm|VOSMA $black(char)v vpublic
bind pub nm|VOSMA $black(char)myset mysetpublic
bind pub nm|OSMA $black(char)o opublic
bind pub nm|VOSMA $black(char)l lpublic
bind pub nm|VOSMA $black(char)ul ulpublic
bind pub nm|SMA $black(char)say saypublic
bind pub nm|SMA $black(char)act actpublic
bind pub nm|- $black(char)broadcast broadcastpublic
bind pub nm|OSMA $black(char)check checkpublic
bind pub nm|VOSMA $black(char)version versionpublic
bind pub nm|OSMA $black(char)cycle cyclepublic
bind pub nm|- $black(char)away awaypublic
bind pub nm|M $black(char)private privatepublic
bind pub nm|OSMA $black(char)mode modepublic
bind pub nm|M $black(char)set setpublic
bind pub nm|- $black(char)silence silencepublic
bind pub nm|- $black(char)msg msgpublic
bind pub nm|MA $black(char)add publicadd
bind pub nm|MA $black(char)adduser adduserpublic
bind pub nm|MA $black(char)delacc delaccpublic
bind pub nm|MA $black(char)del delpublic
bind pub nm|- $black(char)ignore ignorepublic
bind pub nm|- $black(char)botidle botidlepublic
bind pub nm|MA $black(char)addhost addhostpublic
bind pub nm|MA $black(char)delhost delhostpuplic
bind pub nm|OSMA $black(char)banlist banlistpublic
bind pub nm|M $black(char)purge purgepublic
bind pub nm|M $black(char)chuser chuserpublic
bind pub nm|MASOV $black(char)userlist publicuserlist
bind pub nm|MASOV $black(char)info infopublic
bind pub nm|MA $black(char)s spublic
bind pub nm|MA $black(char)us uspublic
bind pub nm|MAOSV $black(char)ping pings
bind pub nm|MASOV $black(char)time timepublic
bind pub nm|MAOSV $black(char)vers verspublic
bind pub nm|MAOSV $black(char)whois whoispublic
bind pub nm|MAOS $black(char)gag gagpublic
bind pub nm|MAOS $black(char)ungag ungagpublic
bind pub nm|M $black(char)reset resetpublic
bind pub nm|M $black(char)clear clearpublic
bind pub nm|VOSAM $black(char)activ activpublic
bind pub nm|MASOV $black(char)h hpublic
bind pub nm|MASO $black(char)cc ccpublic
bind pub nm|MAOSV $black(char)top toppublic
bind pub nm|M $black(char)secure securepublic
bind pub nm|- $black(char)bt broadcastpublic:module
bind pub nm|- $black(char)login publiclogin:Cmd
bind pub n|- $black(char)tcl tclpublic
bind pub nm|- $black(char)find findpublic
bind pub nm|M $black(char)antipub antipub:module
bind pub nm|MASO $black(char)next nextpublic:cmd
bind pub nm|MASO $black(char)helped helpedpublic:cmd
bind pub nm|MASO $black(char)noidle noidlepublic:cmd
bind pub nm|MASO $black(char)skip skippublic:cmd
bind pub nm|MASOV $black(char)man manpublic
bind pub nm|MA $black(char)auto autopublic
}

bind msg nm|- addchan addchanpublic
bind msg nm|- delchan delchanpublic
bind msg nm|- suspend suspendpublic
bind msg nm|- unsuspend unsuspendpublic
bind msg nm|- nick nickpublic
bind msg nm|- rehash rehashme
bind msg nm|- restart restartme
bind msg nm|- save saveme
bind msg nm|- jump jumpme
bind msg nm|- die dieme
bind msg nm|OSAM op oppublic
bind msg nm|OSAM deop deoppublic
bind msg nm|OSVAM voice voicepublic
bind msg nm|OSVAM devoice devoicepublic
bind msg nm|OSVAM invite invitepublic


#########################################################################
#									#
#         Dont try to modify if you dont know what are you doing :)     #
#									#
#########################################################################

set black(name) "BlackToolS"
set black(author) "BLaCkShaDoW"
set black(vers) "2.4"
set black(site) "WwW.TclScripts.Net"

set black(commands_error) [catch {source $black(dirname)/BlackTools/BT.Commands.tcl} black(commands_error_stats)]
set black(modules_error) [catch {source $black(dirname)/BlackTools/BT.Modules.tcl} black(modules_error_stats)]
set black(protection_error) [catch {source $black(dirname)/BlackTools/BT.Protection.tcl} black(protection_error_stats)]
set black(loader_error) [catch {source $black(dirname)/BlackTools/lang/loader.tcl} black(loader_error_stats)]

if {$black(commands_error) == "1"} {
	die "\[BlackTools\] Error. Couldn't load the \"BlackTools Commands\".Reason: \"$black(commands_error_stats)\""
}
if {$black(protection_error) == "1"} {
	die "\[BlackTools\] Error. Couldn't load the \"BlackTools Protection\". Reason: \"$black(protection_error_stats)\""
}

if {$black(modules_error) == "1"} {
	die "\[BlackTools\] Error. Couldn't load the \"BlackTools Modules\". Reason: \"$black(modules_error_stats)\""
}

if {$black(loader_error) == "1"} {
	die "\[BlackTools\] Error. Couldn't load the \"BlackTools Language\". Reason: \"$black(loader_error_stats)\""
}

if {!($black(homechan) == "") && ![string equal -nocase $black(homechan) "#no_home_chan"]} {
if {![validchan $black(homechan)]} {
	add:home:chan $black(homechan)
	}
}

putlog "$black(name) $black(vers) by $black(author) Loaded -> BLaCkShaDoW ProductionS ®"
putlog "\[BLaCkToolS\] Languages Loaded :[join [string toupper $black(current_lang)] ","]"

if {[info exists black(current_lang)]} {
	unset black(current_lang)
}