###########################################################################
#                      ® BLaCkShaDoW Production ®                         #
#                                                                         #
#                               PRESENTS                                  #
###########################################################################
#									® #
####   #        ####    #####   #   #  #####  #####    #####   #      #####
#   #  #       #    #   #       #  #     #   #     #  #     #  #      #
#   #  #       #    #   #       # #      #   #     #  #     #  #      #
####   #       ######   #       ##       #   #     #  #     #  #      #####
#   #  #       #    #   #       # #      #   #     #  #     #  #          #
#   #  #       #    #   #       #  #     #   #     #  #     #  #          #
####   #####   #    #   #####   #   #    #    #####    #####   #####  #####
#									  #
#		       One TCL. One smart Eggdrop	  	          #
###########################################################################
#                                                                         #
#                         #####   ######       #                          #
#                             #   #           ##                          #
#                             #   #          # #                          #
#                         ####    ######       #                          #
#                         #            #       #                          #
#                         #            #       #                          #
#                         #####  # #####  #  #####                        #
#                                                                         #
#                                                                         #
#                   THE    NEXT    GENERATION    TCL                      #
#                                                                         #
#                      - #TCL-HELP @ UNDERNET -     			  #
#                                                                         #
#			      Copyright 2008 - 2017 @ WwW.TCLScripts.NET  #	
###########################################################################
# A Next Generation Channel Control Script that contains a lot of commands#
#          modules, and protections that make`s your life easy 		  #
#     	             for you and for your Eggdrop.                        #
#									  #
###########################################################################
# NOTE: read the texts here carefully, i get many many emails asking 	  #
#       questions which are actually answered in the manual. 		  #
#       dont expect me to answer these mails :P 			  #
#									  #
###########################################################################
# Special thanks to:                                                      #
#                   o Time2Go [ #Tcl-Help Admin ]                         #
#		    o Florian [ florian@tclscripts.net ]                  #
#                                                                         #
#                     without whom this script would not have gone so far #
#                                                                         #
#  Thanks also to all those people who found bugs and reported them and to#
# all users who joined #TCL-HELP and shared their ideas and suggestions.  #
#                                                                         #
###########################################################################

#-------------------------- Scripts directory ----------------------------#
###									###
set black(dirname) "scripts"

###########################################################################

#------------------------ Home Chan (Optional) ---------------------------#
# Here you set your eggdrop's homechan. If you modify here the eggdrop    #
#will join homechan. If not leave it "#no_home_chan" or "" (empty)        #
###									###
set black(homechan) "#no_home_chan"

###########################################################################

#---------------------------- First Char ---------------------------------#
###									###
#First Char (use "none" for no chars)

set black(cmdchar) "! . `"

###########################################################################

#-------------------------- Default Language -----------------------------#
###									###
#Default language of the script ( RO / EN )

set black(default_lang) "RO"

#-------------------------- Default host ---------------------------------#
###									###
#Default hostmask for BOSS OWNER

#1 - *!*@host
#2 - *!user@host
#3 - nick!user@host
#4 - nick!*@*
#5 - *!user@*

set black(hello:mask) "1"

###########################################################################

#------------------------ Default Output Method --------------------------#
###									###
#Default output method ( 0 - NOTICE ; 1 - CHAN ; 2 - MSG )

set black(default_output) "0"

###########################################################################

#------------------------ Default output colors --------------------------#
###									###
#Colors list : bold, underline, red, blue, green, yellow, orange, cyan
# grey, brown, purple, pink, black

#You can choose 4 colors from the list (\002, \001, \005, \004)

set black(default_colors) "red blue black red"

###########################################################################

#-------------------------- Default Away ---------------------------------#
###									###
#Default away (you can change'it online ofcourse.)

set black(default_away) "I am using BlackTools 2.5.1 ;-)"

###########################################################################

#------------------------- Default BanTime -------------------------------#

#Chan bans removal (<x>m (minutes), <x>h (hours), <x>d (days))

set black(default:bantime) "120m"

###########################################################################

#------------------------ Channel Remove Data ----=-----------------------#
###									###
#Remove the BlackTools Data on channel remove ? (bans,excepts,greet..etc)
# 1 - yes
# 0 no

set black(chanremove_all) "1"

###########################################################################

#------------------------- Anti Command flood-----------------------------#
###									###
#Antiflood for .h & .man commands (commands:seconds)

set black(antiflood:cmd) "3:5"

#-------------------------- Anti Message Flood ---------------------------#
###									###
#Messages in seconds

set black(msg:flood) "10:20"

#Ignore time (minutes) (for those with access)

set black(msg:flood:ignore_access) "1"

#Ignore time (minutes) (for those without access)

set black(msg:flood:ignore_others) "30"

#-------------------------- Anti Notice Flood ----------------------------#
###									###
#Notices in seconds

set black(notice:flood) "3:5"

#Ignore time (minutes)

set black(notice:flood:notc_time) "10"

#--------------------------- Join Flood ----------------------------------#
###									###
#JoinFlood Protect (commands:seconds)

set black(joinflood:protect) "4:8"

#------------------------- Internal MsgFlood -----------------------------#
###									###
#Setup this variable to '0:0' to deactivate it. BlackTools has protection
#against flooding

set flood-msg "0:0"

#---------------------------- Lines flood protect ------------------------#
###									###
#Number of entries per page when using - list - ( using -next for next entries)

set black(modul:nr:entries) "5"

#---------------------------- Internal BanTime ------------------------#
###									###
#Setup this variable to 0 to deactivate it. 
#BlackTools use his own bantime procedure.

set global-ban-time 0

###########################################################################

#----------------------------- User Expire -------------------------------#
###									###
#Expire Time (days)

set black(user_expire_time) "180"

###########################################################################

#------------------------ Anunt & BT Protection --------------------------#
###									###
#How many entries to be shown until the modules stop because of the lack of activity 
#(joins,parts,ban,kick,quit,split,text)

set black(entry:shown) "2"

###########################################################################
############################ Chanserv Login ###############################

#---------------------------- Chanserv Name ------------------------------#


set black(chanserv) "X"

#---------------------------- Chanserv Host ------------------------------#


set black(hostchanserv) "x@channels.undernet.org"


#--------------------------- Chanserv User -------------------------------#

set black(username) "Xusername"

#--------------------------- Chanserv Pass -------------------------------#

set black(password) "Xpassword"

#----------------------------- Login Mode --------------------------------#

set black(xmod) "+x"

#------------------------ Chanserv Ignore Protect ------------------------#

set black(chanserv:ignore_host) "*!*@undernet.org"

#---------------------------- Chanserv Ban Time --------------------------#

set black(chanserv:bantime) "1"

#--------------------------- Chanserv Ban Level --------------------------#

set black(chanserv:banlevel) "100"

###########################################################################

#----------------------------- add command -------------------------------#

#Default Hostname (%user% stands for the username added)

set black(hostadd) "*!*@%user%.users.undernet.org"

#--------------------------- adduser command -----------------------------#

#This add command take's the hostname from the online <nick>

#Default hostmask for adduser <nick>

#1 - *!*@host
#2 - *!user@host
#3 - nick!user@host
#4 - nick!*@*
#5 - *!user@*

set black(addusermask) "1"

##########################################################################
#------------------------------ InviteBan -------------------------------#

#Ban-Time (<x>m (minutes), <x>h (hours), <x>d (days))

set black(inviteban:bantime) "3h"

#Default banmask

#1 - *!*@host
#2 - *!user@host
#3 - nick!user@host
#4 - nick!*@*
#5 - *!user@*

set black(inviteban:banmask) "1"

##########################################################################
#------------------------------- Antipub --------------------------------#

#Ban-Time (<x>m (minutes), <x>h (hours), <x>d (days))

set black(antipub:bantime) "2d"

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
"http://tclscripts.net"
"http://mysite.co.jp"
"#my_no_name_channel"
}

#Ban-Mode

set black(antipubmode) ""

#Ban-mode Time (Seconds)

set black(antipubsecunde) "22"

#Action-Method

#1 - warn
#2 - kick
#3 - ban
#4 - warn -> kick
#5 - warn -> kick -> ban
#6 - kick -> ban
#7 - warn -> ban

set black(antipub:banmethod) "3"

#Default banmask

#1 - *!*@host
#2 - *!user@host
#3 - nick!user@host
#4 - nick!*@*
#5 - *!user@*

set black(antipub:banmask) "1"

#########################################################################

#------------------------------- Badhost -------------------------------#

#Ban-Time (<x>m (minutes), <x>h (hours), <x>d (days))

set black(badhost:bantime) "3h"

#Words

set black(badhostword) {
"*pula*"
 "*pizda*"
 "*muie*"
 "*sugi"
 "mwie"
 "*pwla*"
 "*muisti*"
 "*fut*"
 "*fwt*"
}

#Default banmask

#1 - *!*@host
#2 - *!user@host
#3 - nick!user@host
#4 - nick!*@*
#5 - *!user@*

set black(badhost:banmask) "1"

#########################################################################

#----------------------------- Antinotice ------------------------------#

#Ban-Time (<x>m (minutes), <x>h (hours), <x>d (days))

set black(antinotice:bantime) "2d"

#Ban-Mode

set black(antinoticemode) "mr"

#Ban-mode Time (Seconds)

set black(antinoticesecunde) "22"

#Action-Method

#1 - warn
#2 - kick
#3 - ban
#4 - warn -> kick
#5 - warn -> kick -> ban
#6 - kick -> ban
#7 - warn -> ban

set black(antinotice:banmethod) "3"

#Default banmask

#1 - *!*@host
#2 - *!user@host
#3 - nick!user@host
#4 - nick!*@*
#5 - *!user@*

set black(antinotice:banmask) "1"

#########################################################################

#------------------------------ AntiCTCP -------------------------------#

#Ban-Time (<x>m (minutes), <x>h (hours), <x>d (days))

set black(antictcp:bantime) "3d"

#Ban-Mode

set black(antictcpmode) "m"

#Ban-mode Time (Seconds)

set black(antictcpsecunde) "22"

#Action-Method

#1 - warn
#2 - kick
#3 - ban
#4 - warn -> kick
#5 - warn -> kick -> ban
#6 - kick -> ban
#7 - warn -> ban

set black(antictcp:banmethod) "3"

#Default banmask

#1 - *!*@host
#2 - *!user@host
#3 - nick!user@host
#4 - nick!*@*
#5 - *!user@*

set black(antictcp:banmask) "1"


#########################################################################

#----------------------------- AntiBadWord -----------------------------#

#Ban-Time (<x>m (minutes), <x>h (hours), <x>d (days))

set black(antibadword:bantime) "6h"

#Words

set black(antibadword) {
 "*pula*"
 "*pizda*"
 "*muie*"
 "*muist*"
 "*fut"
 "*fuck*"
 "*dick"
 "*suck*"
 "*whore*"
 "*wh0re*"
 "*futeo*"
 "*fute-o*"
 "*fututi*"
 "*blowjob*"
 "*anal*"
 "*dickest*"
}

#Action-Method

#1 - warn
#2 - kick
#3 - ban
#4 - warn -> kick
#5 - warn -> kick -> ban
#6 - kick -> ban
#7 - warn -> ban

set black(antibadword:banmethod) "6"

#Default banmask

#1 - *!*@host
#2 - *!user@host
#3 - nick!user@host
#4 - nick!*@*
#5 - *!user@*

set black(antibadword:banmask) "1"

########################################################################

#--------------------------- AntiLongText -----------------------------#

#Ban-Time (<x>m (minutes), <x>h (hours), <x>d (days))

set black(antilongtext:bantime) "30m"

#Char length

set black(longchar) "215"

#Ban Mode

set black(longmode) "m"

#Mode Time (Seconds)

set black(longtimemode) "22"

#Action-Method

#1 - warn
#2 - kick
#3 - ban
#4 - warn -> kick
#5 - warn -> kick -> ban
#6 - kick -> ban
#7 - warn -> ban

set black(antilongtext:banmethod) "6"

#Default banmask

#1 - *!*@host
#2 - *!user@host
#3 - nick!user@host
#4 - nick!*@*
#5 - *!user@*

set black(antilongtext:banmask) "1"

#######################################################################

#------------------------- AntiBadQuitPart ---------------------------#

#Ban-Time  (<x>m (minutes), <x>h (hours), <x>d (days))

set black(antibadquitpart:bantime) "1h"

#Words

set black(badquitpartwords) {
"*www.*"
"*http://*"
"*#*"
}

#Default banmask

#1 - *!*@host
#2 - *!user@host
#3 - nick!user@host
#4 - nick!*@*
#5 - *!user@*

set black(antibadquitpart:banmask) "1"

#Except words

set black(badquitpartexcept) {
"http://tclscripts.net"
"www.yoursite.com"
"#mychannel"
}

#######################################################################

#--------------------------- AntiJoinPart ----------------------------#

#Ban-Time  (<x>m (minutes), <x>h (hours), <x>d (days))

set black(antijoinpart:bantime) "30m"

#Stay-Time

set black(joinparttime) "5"

#Ban-Mode

set black(joinpartmode) "mr"

#Ban-Mode Time (Seconds)

set black(joinparttimemode) "22"

#Action-Method

#1 - warn
#2 - kick
#3 - ban
#4 - warn -> kick
#5 - warn -> kick -> ban
#6 - kick -> ban
#7 - warn -> ban

set black(antijoinpart:banmethod) "3"

#Default banmask

#1 - *!*@host
#2 - *!user@host
#3 - nick!user@host
#4 - nick!*@*
#5 - *!user@*

set black(antijoinpart:banmask) "1"

#######################################################################

#----------------------------- AntiSpam ------------------------------#

#Ban-Time  (<x>m (minutes), <x>h (hours), <x>d (days))

set black(antispam:bantime) "6d"

#Words

set black(spamword) {
"*#*"
 "*www.*"
 "*http://*"
}

#Default banmask

#1 - *!*@host
#2 - *!user@host
#3 - nick!user@host
#4 - nick!*@*
#5 - *!user@*

set black(antispam:banmask) "1"

#Cycle-Time (<x>m (minutes), <x>h (hours), <x>d (days))

set black(spamcycle) "60m"

#######################################################################

#---------------------------- AntiRepeat -----------------------------#

#Ban-Time  (<x>m (minutes), <x>h (hours), <x>d (days))

set black(antirepeat:bantime) "10m"

#Repeat Setting (number repeats:seconds)

set black(antirepeat:repeats) "3:5"

#Action-Method

#1 - warn
#2 - kick
#3 - ban
#4 - warn -> kick
#5 - warn -> kick -> ban
#6 - kick -> ban
#7 - warn -> ban

set black(antirepeat:banmethod) "5"

#Default banmask

#1 - *!*@host
#2 - *!user@host
#3 - nick!user@host
#4 - nick!*@*
#5 - *!user@*

set black(antirepeat:banmask) "1"

#######################################################################

#----------------------------- AntiColor -----------------------------#

#Ban-Time (<x>m (minutes), <x>h (hours), <x>d (days))

set black(anticolor:bantime) "10m"

#Action-Method

#1 - warn
#2 - kick
#3 - ban
#4 - warn -> kick
#5 - warn -> kick -> ban
#6 - kick -> ban
#7 - warn -> ban

set black(anticolor:banmethod) "6"

#Default banmask

#1 - *!*@host
#2 - *!user@host
#3 - nick!user@host
#4 - nick!*@*
#5 - *!user@*

set black(anticolor:banmask) "1"

#######################################################################

#----------------------------- AntiBold ------------------------------#

#Ban-Time (<x>m (minutes), <x>h (hours), <x>d (days))
 
set black(antibold:bantime) "10m"

#Action-Method

#1 - warn
#2 - kick
#3 - ban
#4 - warn -> kick
#5 - warn -> kick -> ban
#6 - kick -> ban
#7 - warn -> ban

set black(antibold:banmethod) "6"

#Default banmask

#1 - *!*@host
#2 - *!user@host
#3 - nick!user@host
#4 - nick!*@*
#5 - *!user@*

set black(antibold:banmask) "1"

#######################################################################

#-------------------------- AntiUnderline ----------------------------#

#Ban-Time (<x>m (minutes), <x>h (hours), <x>d (days))

set black(antiunderline:bantime) "10m"

#Action-Method

#1 - warn
#2 - kick
#3 - ban
#4 - warn -> kick
#5 - warn -> kick -> ban
#6 - kick -> ban
#7 - warn -> ban

set black(antiunderline:banmethod) "6"

#Default banmask

#1 - *!*@host
#2 - *!user@host
#3 - nick!user@host
#4 - nick!*@*
#5 - *!user@*

set black(antiunderline:banmask) "1"

#######################################################################

#----------------------------- AntiCaps ------------------------------#

#Ban-Time (<x>m (minutes), <x>h (hours), <x>d (days))

set black(anticaps:bantime) "10m"

#Caps Char Length

set black(anticapscount) "40"

#Action-Method

#1 - warn
#2 - kick
#3 - ban
#4 - warn -> kick
#5 - warn -> kick -> ban
#6 - kick -> ban
#7 - warn -> ban

set black(anticaps:banmethod) "6"

#Default banmask

#1 - *!*@host
#2 - *!user@host
#3 - nick!user@host
#4 - nick!*@*
#5 - *!user@*

set black(anticaps:banmask) "1"

#######################################################################

#--------------------------- BadRealname -----------------------------#

#Ban-Time (<x>m (minutes), <x>h (hours), <x>d (days))

set black(badrealname:bantime) "2h"

#Words

set black(badfwords) {
"*www.*"
"*#*"
"*http://*"

}

#Default banmask

#1 - *!*@host
#2 - *!user@host
#3 - nick!user@host
#4 - nick!*@*
#5 - *!user@*

set black(badrealname:banmask) "1"

#######################################################################

#------------------------------ BadNick ------------------------------#

#Ban-Time (<x>m (minutes), <x>h (hours), <x>d (days))

set black(badnick:bantime) "1h"

#badNicks

set black(badnickwords) {
"*pula*"
"*muie *"
"pwla*"
"pizda*"
"laba*"
"*gay*"
"*fuck*"
"*bitch*"
"*slut*"
"*cock*"
"*shit*"
"*sex*"
"*pussy*"
"*whore*"
"*suck*"
"*dick*"
"*porn*"
"*p0rn*"
"*horny*"
"*cuplu*"
"*lesbi*"
"*orgasm*"
"*naked*"
"*slave*"
"*boobs*"
"*dick*"
"penis*"
"*blowjob*"
"*shit*"
}

#Default banmask

#1 - *!*@host
#2 - *!user@host
#3 - nick!user@host
#4 - nick!*@*
#5 - *!user@*

set black(badnick:banmask) "4"

#######################################################################

#----------------------------- BadIdent ------------------------------#

#Ban-Time (<x>m (minutes), <x>h (hours), <x>d (days))

set black(badident:bantime) "1h"

#Words

set black(badidentwords) {
"*pula*"
"*muie*"
"*pwla*"
"*pizda*"
"*cunt*"
"*shit*"
"*fuck*"
"*horny*"
"*pussy*"
"*dick*"
"penis*"
"*bitch*"
"*blowjob*"
}

#Default banmask

#1 - *!*@host
#2 - *!user@host
#3 - nick!user@host
#4 - nick!*@*
#5 - *!user@*

set black(badident:banmask) "5"

#######################################################################

#-------------------------- AntiJoinFlood ----------------------------#

#Join-Mode

set black(modes) "mir"


#Join-Mode Time (Seconds)

set black(nomodetime) "22"


#Op ALERT (1 - ON ; 0 - OFF)

set black(fjoinhow) "1"

#######################################################################

#-------------------------- AntiChanFlood ----------------------------#

#Ban-Time (<x>m (minutes), <x>h (hours), <x>d (days))

set black(antichanflood:bantime) "10m"

#Number of repeats in seconds (X:Y)

set black(antichanfloodrepeats) "4:5"

#ChanMode

set black(antichanflood:chanmode) "m"

#ChanMode Time (seconds)

set black(antichanflood:chanmodetime) "22"

#Action-Method

#1 - warn
#2 - kick
#3 - ban
#4 - warn -> kick
#5 - warn -> kick -> ban
#6 - kick -> ban
#7 - warn -> ban

set black(antichanflood:banmethod) "6"

#Default banmask

#1 - *!*@host
#2 - *!user@host
#3 - nick!user@host
#4 - nick!*@*
#5 - *!user@*

set black(antichanflood:banmask) "1"

#######################################################################

#---------------------------- NickFLood ------------------------------#

#Ban-Time (<x>m (minutes), <x>h (hours), <x>d (days))

set black(nickflood:bantime) "10m"

#Number of repeats in seconds (X:Y)

set black(nickfloodrepeats) "3:120"

#Action-Method

#1 - warn
#2 - kick
#3 - ban
#4 - warn -> kick
#5 - warn -> kick -> ban
#6 - kick -> ban
#7 - warn -> ban

set black(nickflood:banmethod) "7"

#Default banmask

#1 - *!*@host
#2 - *!user@host
#3 - nick!user@host
#4 - nick!*@*
#5 - *!user@*

set black(nickflood:banmask) "1"

############################### Modules ###############################

#------------------------------- Quote -------------------------------#

#Default time for showing "Quote of the Day" (<x>m (minutes), <x>h (hours), <x>d (days))

set black(quote:msgtime) "3h"

#Output type (0 - MSG ; 1 - ACTION)

set black(quote:outtype) "0"

#------------------------------- VoiceMe -----------------------------#

#Default time for voiceme message (<x>m (minutes), <x>h (hours), <x>d (days))

set black(voiceme:msgtime) "10m"

#------------------------------- TopWords ----------------------------#

#Default host for user storage

#1 - *!*@host
#2 - *!user@host
#3 - nick!user@host
#4 - nick!*@*
#5 - *!user@*

set black(topwords:mask) "1"

#######################################################################

#------------------------------ GuestNick ----------------------------#

#Default msg method (NOTICE, PRIVMSG, CHAN)

set black(guestnick:msgmethod) "CHAN"

#######################################################################

#------------------------------- limit -------------------------------#

#Default limit

set black(limit:default) "10"

#######################################################################

#---------------------------- VoiceOnMsg -----------------------------#

#Number of lines to pe said to receive VOICE

set black(voiceonmsg:linenum) "7"

#Max chan-idle time (<x>m (minutes), <x>h (hours), <x>d (days)

set black(voiceonmsg:idletime) "25m"

#######################################################################

#------------------------------ BadChan ------------------------------#

#Ban-Time (<x>m (minutes), <x>h (hours), <x>d (days)

set black(badchan:bantime) "6h" 

#Default badchannels

set black(badcchannels) {
 "#badchan1"
 "#badchan2"
 "#badchan3"
}

#Default hostmask

#1 - *!*@host
#2 - *!user@host
#3 - nick!user@host
#4 - nick!*@*
#5 - *!user@*

set black(badchan:banmask) "1"

#Badchan scantime (<x>m (minutes), <x>h (hours), <x>d (days)

set black(badchan:scantime) "30m"

#Act-Method ( 1 - message, after 30 sec ban; 2 - ban)

set black(badcbanmethod) "1"

########################################################################

#-------------------------------- Anunt -------------------------------#

#Show-Time (<x>m (minutes), <x>h (hours), <x>d (days)

set black(anunttime) "90m"

#MSg Type ( 1 - ACTION ; 0 - PRIVMSG )

set black(anunthow) "0"

########################################################################

#---------------------------- AutoBroadcast ---------------------------#

#Show-Time (<x>m (minutes), <x>h (hours), <x>d (days)

set black(bttime) "60m"

#MSg Type ( 1 - ACTION ; 0 - PRIVMSG )

set black(bthow) "1"

#######################################################################

#----------------------------- CloneScan -----------------------------#

#Scan Time (minutes), <x>h (hours), <x>d (days)

set black(clonescantime) "45m"

#Max Clones

set black(maxclone) "3"

#Default banmask

#1 - *!*@host

#Ban-Time (minutes), <x>h (hours), <x>d (days)

set black(clonescan:bantime) "180m"

#######################################################################

#-------------------------------- Seen -------------------------------#

#Flood-Protection (searches : seconds)

set black(seenflood) "4:5"

#Expire Time (days)

set black(seen:expire:time) "60"

########################################################################

#-------------------------------- Greet -------------------------------#

#Default greet method (NOTICE ; PRIVMSG)

set black(greet:method) "NOTICE"

########################################################################

#-------------------------------- Leave -------------------------------#

#Default greet method (NOTICE ; PRIVMSG)

set black(leave:method) "PRIVMSG"

#Flood-Protection (joins:seconds)

set black(leaveflood) "4:5"

########################################################################

#------------------------------ AntiIdle ------------------------------#

#Idle Scan Time (minutes), <x>h (hours), <x>d (days)

set black(idleinterval) "45m"

#Op max idle

set black(idleopmax) "60"

#Voice idle Max

set black(idlevoicemax) "30"

#HalfOP idle Max

set black(idlehalfopmax) "30"

########################################################################

#--------------------------------- Gag --------------------------------#


#Gag-Time (<x>m (minutes), <x>h (hours), <x>d (days)

set black(gag:bantime) "10m"

#Default hostmask for gag <host>/<nick>

#1 - *!*@host
#2 - *!user@host
#3 - nick!user@host
#4 - nick!*@*
#5 - *!user@*

set black(gag:banmask) "2"

########################################################################

#------------------------------- Private ------------------------------#

#Ban-Time (<x>m (minutes), <x>h (hours), <x>d (days)

set black(private:bantime) "60m"

#Default banmask

#1 - *!*@host
#2 - *!user@host
#3 - nick!user@host
#4 - nick!*@*
#5 - *!user@*

set black(private:banmask) "1"

########################################################################

#--------------------------------- Next -------------------------------#

#Ban-Time (<x>m (minutes), <x>h (hours), <x>d (days)

set black(next:bantime) "1m"

#Default banmask

#1 - *!*@host
#2 - *!user@host
#3 - nick!user@host
#4 - nick!*@*
#5 - *!user@*

set black(next:banmask) "1"

########################################################################

#-------------------------------- Notes -------------------------------#

#Expire time for Notes INBOX (days)

set black(notes:expiretime) "30"

############################## Commands ################################

#------------------------------- troll --------------------------------#

#Default hostmask for troll <nick>

#1 - *!*@host
#2 - *!user@host
#3 - nick!user@host
#4 - nick!*@*
#5 - *!user@*

set black(troll:banmask) "1"

########################################################################

#--------------------------------- dr ---------------------------------#

#Default hostmask for dr <nick>/<host>

#1 - *!*@host
#2 - *!user@host
#3 - nick!user@host
#4 - nick!*@*
#5 - *!user@*

set black(dr:banmask) "1"

#Ban-Time (<x>m (minutes), <x>h (hours), <x>d (days)

set black(dr:bantime) "15d"

########################################################################

#--------------------------------- vr ---------------------------------#

#Default hostmask for vr <nick>/<host>

#1 - *!*@host
#2 - *!user@host
#3 - nick!user@host
#4 - nick!*@*
#5 - *!user@*

set black(vr:banmask) "1"

#Ban-Time (<x>m (minutes), <x>h (hours), <x>d (days)

set black(vr:bantime) "3d"

########################################################################

#--------------------------------- bot --------------------------------#

#Default hostmask for bot <nick>/<host>

#1 - *!*@host
#2 - *!user@host
#3 - nick!user@host
#4 - nick!*@*
#5 - *!user@*

set black(bot:banmask) "1"

#Ban-Time (<x>m (minutes), <x>h (hours), <x>d (days)

set black(bot:bantime) "7d"

########################################################################

#--------------------------------- b ----------------------------------#

#Default hostmask for b <host> -level <time> [reason]

#1 - *!*@host
#2 - *!user@host
#3 - nick!user@host
#4 - nick!*@*
#5 - *!user@*

set black(b:banmask) "1"

#Default hostmask for b <host> <time> global [reason]

#1 - *!*@host
#2 - *!user@host
#3 - nick!user@host
#4 - nick!*@*
#5 - *!user@*

set black(b:gl:banmask) "1"

#Ban-Time (<x>m (minutes), <x>h (hours), <x>d (days)

set black(b:bantime) "2d"

########################################################################

#--------------------------------- n ----------------------------------#

#Default banmask

#1 - *!*@host
#2 - *!user@host
#3 - nick!user@host
#4 - nick!*@*
#5 - *!user@*

set black(n:banmask) "4"

#Ban-Time (<x>m (minutes), <x>h (hours), <x>d (days)

set black(n:bantime) "2h"

########################################################################

#--------------------------------- id ---------------------------------#

#Default banmask

#1 - *!*@host
#2 - *!user@host
#3 - nick!user@host
#4 - nick!*@*
#5 - *!user@*

set black(id:banmask) "5"

#Ban-Time (<x>m (minutes), <x>h (hours), <x>d (days)

set black(id:bantime) "2h"

########################################################################

#-------------------------------- spam --------------------------------#

#Default hostmask for spam <nick>/<host>

#1 - *!*@host
#2 - *!user@host
#3 - nick!user@host
#4 - nick!*@*
#5 - *!user@*

set black(spam:banmask) "1"

#Ban-Time (<x>m (minutes), <x>h (hours), <x>d (days)

set black(spam:bantime) "7d"

########################################################################

#--------------------------------- bw ---------------------------------#

#Default hostmask for bw <nick>/<host>

#1 - *!*@host
#2 - *!user@host
#3 - nick!user@host
#4 - nick!*@*
#5 - *!user@*

set black(bw:banmask) "1"

#Ban-Time (<x>m (minutes), <x>h (hours), <x>d (days)

set black(bw:bantime) "1d"


########################################################################

#--------------------------------- mb ---------------------------------#

#Default hostmask for bw <nick>/<host>

#5 - *!user@*

#Ban-Time (<x>m (minutes), <x>h (hours), <x>d (days)

set black(mb:bantime) "2d"

########################################################################

#-------------------------------- black -------------------------------#

#Default hostmask for black <time> <nick>/<host>

#1 - *!*@host
#2 - *!user@host
#3 - nick!user@host
#4 - nick!*@*
#5 - *!user@*

set black(black:banmask) "1"

########################################################################

#------------------------------- stick --------------------------------#

#Default hostmask for stick <time> <nick>/<host>

#1 - *!*@host
#2 - *!user@host
#3 - nick!user@host
#4 - nick!*@*
#5 - *!user@*

set black(stick:banmask) "1"

#Ban-Time (<x>m (minutes), <x>h (hours), <x>d (days)

set black(stick:bantime) "2d"

########################################################################

#------------------------------ banlist -------------------------------#

########################################################################

#--------------------------------- k ----------------------------------#

########################################################################

#--------------------------------- s ----------------------------------#

#default suspend time (<x>m (minutes), <x>h (hours), <x>d (days))

set black(s:default_time) "2d"

########################################################################

#------------------------------ ignore --------------------------------#

#default ignore time (<x>m (minutes), <x>h (hours), <x>d (days))

set black(ignore:default_time) "6h"

############################# The End ##################################

set black(name) "BlackToolS"
set black(author) "BLaCkShaDoW"
set black(vers) "2.5.1"
set black(site) "wWw.TclScriptS.NeT"

	bind evnt - init-server loginpublic
	bind time - "* * * * *" timer:login:check
 
 set black(loader_error) [catch {source $black(dirname)/BlackTools/BT.Loader.tcl} black(loader_error_stats)]

if {$black(loader_error) == "1"} {
	die "\[BT\] Error. Couldn't load the \"BT Loader\". Reason: \"$black(loader_error_stats)\""
}

#Add the first channel (HOME)

proc add:home:chan {chan} {
	global black
	channel add $chan
}

if {!($black(homechan) == "") && ![string equal -nocase $black(homechan) "#no_home_chan"]} {
if {![validchan $black(homechan)]} {
	add:home:chan $black(homechan)
	}
}

#Start login
loginpublic:start

putlog "$black(name) $black(vers) by $black(author) Loaded *** The Future is Here ***"
putlog "\[BT\] Language files loaded: [join [string toupper $black(current_lang)] ", "]"

#unset the languages

if {[info exists black(current_lang)]} {
	unset black(current_lang)
}
