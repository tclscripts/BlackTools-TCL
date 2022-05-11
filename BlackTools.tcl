###########################################################################
#         _   _   _   _   _   _   _   _   _   _   _   _   _   _           #
#        / \ / \ / \ / \ / \ / \ / \ / \ / \ / \ / \ / \ / \ / \          #
#       ( T | C | L | S | C | R | I | P | T | S | . | N | E | T )         #
#        \_/ \_/ \_/ \_/ \_/ \_/ \_/ \_/ \_/ \_/ \_/ \_/ \_/ \_/          #
#                                                                         #
#                       ® BLaCkShaDoW Production ®                        #
#                                                                         #
#                                PRESENTS                                 #
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
#		   			  One TCL. One smart Eggdrop.     #
#                                                                         #
#                       #####    ######     #####                         #
#                           #    #          #                             #
#                           #    #          #                             #
#                       ####     ######     #####                         #
#                       #             #         #                         #
#                       #             #         #                         #
#                       #####  # ######  #  #####                         #
#                                                                         #
#                                                                         #
#                   THE    NEXT    GENERATION    TCL                      #
#                                                                         #
#                      - #TCL-HELP @ UNDERNET -     	                  #
#                                                                         #
#			      Copyright 2008 - 2021 @ WwW.TCLScripts.NET  #
#                                                                         #
###########################################################################
#                                                                         #
#  BlackTools:                                                            #
#           The Ultimate Channel Control Script that contains a lot       #
#              of commands, modules and protections to make your          #
#                 life easy for you and for your Eggdrop.                 #
#									  #
###########################################################################
#                                                                         #
#  Minimum requirements:                                                  #
#                   o Eggdrop 1.8.x                                       #
#                   o Tcl >= 8.5                                          #
#                                                                         #
###########################################################################
#                                                                         #
#  NOTE:                                                                  #
#      Read the texts here carefully, I get many many emails asking 	  #
#          questions which are actually answered in the manual. 	  #
#               Dont expect me to answer these mails :P 		  #
#									  #
###########################################################################
#                                                                         #
#  Special thanks to:                                                     #
#                   o Time2Go [ #Tcl-Help Admin ]                         #
#		  		    o Florian [ florian@tclscripts.net ]  #
#                     without whom this script would not have gone so far.#
# -------                                                         ------- #
#  Thanks to the many people who have contributed over the years, in a    #
#  variety of ways. Also to all those users who joined #TCL-HELP to report# 
#  bugs or to share their ideas, tips and suggestions.                    #
#                                                                         #
###########################################################################
#                                                                         #
#  Official links:                                                        #
#   Download    : http://blacktools.tclscripts.net                        #
#   Bugs report : http://www.tclscripts.net                               #
#   History     : http://www.tclscripts.net/release-notes                 #
#   GitHub page : https://github.com/tclscripts/BlackToolS-TCL-script     #
#   Online help : irc://irc.undernet.org/tcl-help                         #
#                                                                         #
#     paypal.me/DanielVoipan = Please consider a donation. Thanks!        #
#                                                                         #
###########################################################################
#                                                                         #
#        You want a customised TCL Script for your eggdrop?               #
#             Easy-peasy, just tell us what you need!                     #
# We can create almost anything in TCL based on your ideas and donations. #
#    Email blackshadow@tclscripts.net or info@tclscripts.net with your    #
#    request informations and we'll contact you as soon as possible.      #
#                                                                         #
###########################################################################
#-------------------------- Scripts directory ----------------------------#
###									###
set black(dirname) "scripts"

###########################################################################
#-------------------------- AutoUpdate Module ----------------------------#
###									###

###
#If you want the autoupdate to be turned off completely, set here "0"
set black(update_on) "1"

###
#How do you want for the update to be made
# 0 - autoupdate on TIME interval and by command
# 1 - update ONLY on command

set black(update_type) "1"

###
#Do you want the eggdrop to send NOTE to BOSS OWNER if a new update is found?
# (only when autoupdate is turned off)
# 0 - no
# 1 - yes

set black(update_note) "1"

###
#Time interval check (<x>m (minutes), <x>h (hours), <x>d (days))

set black(update_time_check) "60m"

###########################################################################
#----------------------------- AntiBotIdle -------------------------------#
###									###

###
#Enable antibotidle for eggdrop ? [1 - no idle ; 0 ; - idle]

set black(antibotidle_status) "0"

###########################################################################
#-------------------------------- Dns Host  ------------------------------#
###								        ###

###
#Enable DNS-onjoin ? 0 - no ; 1 - yes (please be advised that it will make 
#the bot a bit slower on big channels with lot of joins)

set black(dns_onjoin) "0"

#This host excepts will not receive DNS onjoin, onban etc to improve the
#performance of the eggdrop.

set black(dns:host_excepts) {
"*.users.undernet.org"
"undernet.org"
}

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

set black(cmdchar) "! . ` \^"

###########################################################################
#-------------------------- Default Language -----------------------------#
###									###
#Default language of the script ( RO / EN / ES )

set black(default_lang) "EN"

###########################################################################
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
#Suggestion: red blue black red

set black(default_colors) "bold underline none underline"

###########################################################################
#-------------------------- Default Away ---------------------------------#
###									###
#Default away (you can change'it online ofcourse.)

set black(default_away) "BlackTools 2.5.5 - The Next Generation TCL - www.TCLScripts.Net"

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

###########################################################################
#------------------------ Anti User Message Flood ------------------------#
###									###
#Messages in seconds 

set black(msg:flood) "10:20"

#Ignore time (minutes) (for those with access)

set black(msg:flood:ignore_access) "1"

#Ignore time (minutes) (for those without access)

set black(msg:flood:ignore_others) "30"

###########################################################################
#------------------------ Anti Mass Message Flood ------------------------#
###									###
#Number of users message in seconds

set black(mass:msg:flood) "4:5"

#silence time (seconds)

set black(mass:msg:silence_time) "60"

###########################################################################
#-------------------------- Anti Notice Flood ----------------------------#
###									###
#Notices in seconds

set black(notice:flood) "3:5"

#Ignore time (minutes)

set black(notice:flood:notc_time) "10"

###########################################################################
#-------------------------- Chanserv MASSBAN -----------------------------#
#Time to execute chanserv suspend (must have +400 access)

set black(chanserv:suspend_time) "1d"

#Level to execute chanserv suspend (must have +400 access)

set black(chanserv:suspend_level) "400"

#How many percent from channel users the ban should cover in order for
#eggdrop to identify as being a massban

set black(chanserv:percent_ban) "50%"

###########################################################################
#--------------------------- Join Flood ----------------------------------#
###									###
#JoinFlood Protect (commands:seconds)

set black(joinflood:protect) "4:8"

###########################################################################
#------------------------- Internal MsgFlood -----------------------------#
###									###
#Setup this variable to '0:0' to deactivate it. BlackTools has protection
#against flooding

set flood-msg "0:0"

###########################################################################
#---------------------------- Lines flood protect ------------------------#
###									###
#Number of entries per page when using - list - ( using -next for next entries)

set black(modul:nr:entries) "5"

###########################################################################
#---------------------------- Internal BanTime ------------------------#
###									###
#Setup this variable to 0 to deactivate it. 
#BlackTools uses his own bantime procedure.

set global-ban-time 0

###########################################################################
#------------------------------ Full Banlist --------------------------#
###									###
#Setup here how many bans to remove if FULLBANLIST

set black(fullbanlist_remove) "10"

#Chanmodes to put while clearing bans

set black(fullbanlist_modes) "mi"

#Chanmode hold time (seconds)

set black(fullbanlist_hold_mode) "35"

###########################################################################
#----------------------------- User Expire -------------------------------#
###									###
#Expire Time (days)

set black(user_expire_time) "180"

###########################################################################
#------------------------------ AutoStop ---------------------------------#
###									###
#How many entries to be shown until the modules stop because of the lack of activity 
#(joins,parts,ban,kick,quit,split,text)

set black(entry:shown) "2"

###########################################################################
#-------------------------- Ban Method Memory Expire ---------------------#
###
#Set here after what period of time the banmethod memory expires

set black(banmethod_memory_time) "60m"

###########################################################################
############################ Chanserv Login ###############################

#-------------------------- Automaticaly Login ---------------------------#
# 1 - yes ; 0 - no
set black(autologin) "0"

#---------------------------- Chanserv Name ------------------------------#

set black(chanserv) "X"

#---------------------------- Chanserv Host ------------------------------#

set black(hostchanserv) "x@channels.undernet.org"

#--------------------------- Chanserv User -------------------------------#

set black(username) "xusername"

#--------------------------- Chanserv Pass -------------------------------#

set black(password) "xpassword"

#----------------------------- Login Mode --------------------------------#

set black(xmod) "+x"

#------------------------ Chanserv Ignore Protect ------------------------#

set black(chanserv:ignore_host) "*!*@undernet.org"

#---------------------------- Chanserv Ban Time --------------------------#

set black(chanserv:bantime) "1"

#--------------------------- Chanserv Ban Level --------------------------#

set black(chanserv:banlevel) "100"

###########################################################################
########################### NickServ Identify #############################

#------------------------ Automaticaly identify --------------------------#
# 1 - yes ; 0 - no
set black(nickserv:identify) "0"

#--------------------------- Nickserv Host -------------------------------#

set black(nickserv:host) "NickServ@services.dal.net"

#--------------------------- Nickserv Pass -------------------------------#

set black(nickserv:pass) "NickServPassword"

###########################################################################
#----------------------------- Webchat Ban -------------------------------#
#If a user has one of these hosts and receives BAN
#the banmask will contain only the IDENT.

set black(webchat_hosts) {
"*.mibbit.com"
"*.kiwiirc.com"
"*.irccloud.com"
"*!*@64.62.228.82"
"*!*@78.129.202.38"
"*!*@87.98.219.117"
"*!*@107.161.19.53"
"*!*@107.161.19.109"
"*!*@109.169.31.4"
"*!*@109.169.29.95"
"*!*@192.184.8.73"
"*!*@192.184.9.110"
"*!*@192.184.10.9"
"*!*@192.184.10.118"
"*!*@195.154.53.5"
"*!*@195.154.52.250"
"*!*@207.192.75.252"
"*!*@212.83.148.225"
"*!*@aaa"
}

###########################################################################
#----------------------------- add command -------------------------------#

#Default Hostname (%user% stands for the username added)
#If <user> is not on chan.

set black(hostadd) "*!*@%user%.users.undernet.org"

#Hostmask for add <nick>
#if <user> is on chan

#1 - *!*@host
#2 - *!user@host
#3 - nick!user@host
#4 - nick!*@*
#5 - *!user@*

set black(hostdefaultadd) "2"

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

set black(inviteban:banmask) "2"

##########################################################################
#------------------------------- Antipub --------------------------------#

#Ban-Time (<x>m (minutes), <x>h (hours), <x>d (days))

set black(antipub:bantime) "2d"

#Words

set black(antipubword) {
"*#*"
 "*www.*"
 "*http://*"
 "*https://*"
 "*.ro"
 "*.com"
 "*/server*"
}

#Except words

set black(antipubexcept) {
"*tclscripts.net"
"*youtube.com*"
"*youtu.be*"
"http://yoursite.co"
"#name_channel"
}

#Ban-Mode

set black(antipubmode) ""

#Ban-mode Time (Seconds)

set black(antipubsecunde) "45"

#Action-Method

#1 - warn
#2 - kick
#3 - ban
#4 - warn -> kick
#5 - warn -> kick -> ban
#6 - kick -> ban
#7 - warn -> ban

set black(antipub:banmethod) "6"

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
 "*fuck*"
 "*blowjob*"
}

#Except words

set black(badhostexcept) {
 "populatie"
 "except2"
 "except3"
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

set black(antinoticesecunde) "45"

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

set black(antictcpmode) "mC"

#Ban-mode Time (Seconds)

set black(antictcpsecunde) "45"

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

#Words (You can add them with a specific method of action)
#Ex : *word*:<number> (see action methods numbers below)

set black(antibadword) {
 "*pula*:3"
 "*pizda*"
 "*muie*"
 "*fuck*"
 "*blowjob*"
}

#Except words

set black(except_badwords) {
 "populatie"
 "muiere"
}

#Ban-Mode

set black(badwordmode) ""

#Ban-mode Time (Seconds)

set black(badwordsecunde) "45"

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

set black(longtimemode) "45"

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
"*https://*"
"*#*"
}

#Except words

set black(badquitpartexcept) {
 "except1"
 "except2"
}

#BadQuitPart Message Flood (characters number)

set black(badquitpartmsgchar) "120"

#Ban-Mode

set black(badquitpartmode) "m"

#Ban-mode Time (Seconds)

set black(badquitpartsecunde) "45"

#Default banmask

#1 - *!*@host
#2 - *!user@host
#3 - nick!user@host
#4 - nick!*@*
#5 - *!user@*

set black(antibadquitpart:banmask) "2"

#Except words

set black(badquitpartexcept) {
"http://tclscripts.net"
"www.yoursite.com"
"#name_channel"
}

#######################################################################
#----------------------------- AntiSpam ------------------------------#

#Ban-Time  (<x>m (minutes), <x>h (hours), <x>d (days))

set black(antispam:bantime) "6d"

#Antispam Words

set black(spamword) {
 "*#*"
 "*www.*"
 "*http://*"
 "*https://*"
}

#Except words

set black(spamwordexcept) {
 "#chan1"
 "www.myexcept.ro"
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

set black(antirepeat:banmethod) "7"

#if you want to punish only on specific colors, set here the colors like
# "\00308 \00312" if not, leave it ""

set black(anticolor:specific_colors) ""

#Ban-Mode

set black(antirepeatmode) ""

#Ban-mode Time (Seconds)

set black(antirepeatsecunde) "45"

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

set black(anticolor:banmethod) "7"

#Ban-Mode

set black(anticolormode) "c"

#Ban-mode Time (Seconds)

set black(anticolorsecunde) "45"

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

set black(antibold:banmethod) "7"

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

set black(antiunderline:banmethod) "7"

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

set black(anticapscount) "50"

#Action-Method

#1 - warn
#2 - kick
#3 - ban
#4 - warn -> kick
#5 - warn -> kick -> ban
#6 - kick -> ban
#7 - warn -> ban

set black(anticaps:banmethod) "7"

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
 "*https://*"
}

#Except words

set black(badfexcept) {
 "except1"
 "except2"
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
 "*pizda*"
 "*muie*"
 "*fuck*"
 "*blowjob*"
}

#Except words

set black(badnickexcept) {
 "except1"
 "except2"
}

#Default banmask

#1 - *!*@host
#2 - *!user@host
#3 - nick!user@host
#4 - nick!*@*
#5 - *!user@*

set black(badnick:banmask) "4"

#Act-Method ( 1 - message, after <X> sec ban; 2 - ban)

set black(badnbanmethod) "1"

#if act-method set to 1, set here the time to wait before rescan (seconds)

set black(badnbanwait) "30"

#######################################################################
#----------------------------- BadIdent ------------------------------#

#Ban-Time (<x>m (minutes), <x>h (hours), <x>d (days))

set black(badident:bantime) "1h"

#Words

set black(badidentwords) {
 "*pula*"
 "*pizda*"
 "*muie*"
 "*fuck*"
 "*blowjob*"
}

#Except words

set black(badidentexcept) {
 "except1"
 "except2"
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

#Ban-Time (<x>m (minutes), <x>h (hours), <x>d (days))

set black(antijoinflood:bantime) "1h"

#Join-Mode

set black(modes) "mr"

#Join-Mode Time (Seconds)

set black(nomodetime) "45"

#Op ALERT (1 - ON ; 0 - OFF)

set black(fjoinhow) "0"

#Number of joins per user in seconds (joins:seconds)

set black(antijoinflood_user_joins) "3:15"

#Default banmask

#1 - *!*@host
#2 - *!user@host
#3 - nick!user@host
#4 - nick!*@*
#5 - *!user@*

set black(antijoinflood:banmask) "1"

#######################################################################
#-------------------------- AntiChanFlood ----------------------------#

#Ban-Time (<x>m (minutes), <x>h (hours), <x>d (days))

set black(antichanflood:bantime) "10m"

#Number of repeats in seconds (X:Y)

set black(antichanfloodrepeats) "4:5"

#ChanMode

set black(antichanflood:chanmode) "mr"

#ChanMode Time (seconds)

set black(antichanflood:chanmodetime) "45"

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

#Ban-Mode

set black(nickfloodmode) ""

#Ban-mode Time (Seconds)

set black(nickfloodsecunde) "45"

#Default banmask

#1 - *!*@host
#2 - *!user@host
#3 - nick!user@host
#4 - nick!*@*
#5 - *!user@*

set black(nickflood:banmask) "3"

#######################################################################
#------------------------ Repetitive chars ---------------------------#

#Ban-Time (<x>m (minutes), <x>h (hours), <x>d (days))

set black(repetitivechars:bantime) "10m"

#Number of repetitive chars in a line

set black(repetitivechars:num) "10"

#Action-Method

#1 - warn
#2 - kick
#3 - ban
#4 - warn -> kick
#5 - warn -> kick -> ban
#6 - kick -> ban
#7 - warn -> ban

set black(repetitivechars:banmethod) "7"

#Default banmask

#1 - *!*@host
#2 - *!user@host
#3 - nick!user@host
#4 - nick!*@*
#5 - *!user@*

set black(repetitivechars:banmask) "2"

#########################################################################
#------------------------------- NoProxy -------------------------------#

#Ban-Time (<x>m (minutes), <x>h (hours), <x>d (days))

set black(noproxy:bantime) "1h"

#Excepts hosts from checking

set black(noproxy:excepts) {
	"*users.undernet.org"
	"undernet.org"
}

#Default banmask

#1 - *!*@host
#2 - *!user@host
#3 - nick!user@host
#4 - nick!*@*
#5 - *!user@*

set black(noproxy:banmask) "1"

############################### Modules ###############################
#------------------------------- Vote --------------------------------#

#Default hostmask for Voting
#1 - *!*@host
#2 - *!user@host
#3 - nick!user@host
#4 - nick!*@*
#5 - *!user@*

set black(vote:mask) "1"

#Default voting type (1 - for valid users, 0 - for all users)

set black(vote:type) "0"

#######################################################################
#------------------------------- Quote -------------------------------#

#Default time for showing "Quote of the Day" (<x>m (minutes), <x>h (hours), <x>d (days))

set black(quote:msgtime) "3h"

#Who can use quote ? (0 - users with access ; 1 - all users)

set black(quote:usage) "0"

#######################################################################
#------------------------------- VoiceMe -----------------------------#

#Default time for voiceme message (<x>m (minutes), <x>h (hours), <x>d (days))

set black(voiceme:msgtime) "25m"

#######################################################################
#------------------------------- TopWords ----------------------------#

#Default host for user storage

#1 - *!*@host
#2 - *!user@host
#3 - nick!user@host
#4 - nick!*@*
#5 - *!user@*

set black(topwords:mask) "2"

#######################################################################
#------------------------------- limit -------------------------------#

#Default limit

set black(limit:default) "10"

#######################################################################
#---------------------------- VoiceOnMsg -----------------------------#

#Number of lines to pe said to receive VOICE

set black(voiceonmsg:linenum) "7"

#Max chan-idle time (<x>m (minutes), <x>h (hours), <x>d (days)

set black(voiceonmsg:idletime) "35m"

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

#Except channels

set black(exceptchannels) {
 "#chan2"
 "#chan3"
}

#Default hostmask

#1 - *!*@host
#2 - *!user@host
#3 - nick!user@host
#4 - nick!*@*
#5 - *!user@*

set black(badchan:banmask) "1"

#Badchan scantime (<x>m (minutes), <x>h (hours), <x>d (days)

set black(badchan:scantime) "45m"

#Act-Method ( 1 - message, after 30 sec ban; 2 - ban)

set black(badcbanmethod) "1"

#if act-method set to 1, set here the time to wait before rescan (seconds)

set black(badcbanwait) "30"

#BadChan onjoin floodcontrol foreach user (joins:seconds)

set black(badchan:join:seconds) "2:10"

#How much time to mantain the floodcontrol protection for each user ? (minutes)

set black(badchan:floodprot:time) "1"

########################################################################
#-------------------------------- Anunt -------------------------------#

#Show-Time (<x>m (minutes), <x>h (hours), <x>d (days)

set black(anunttime) "52m"

#MSg Type ( 1 - ACTION ; 0 - PRIVMSG )

set black(anunthow) "0"

########################################################################
#---------------------------- AutoBroadcast ---------------------------#

#Show-Time (<x>m (minutes), <x>h (hours), <x>d (days)

set black(bttime) "55m"

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

set black(seen:expire:time) "30"

#Expire time for seenreply (announce users who search them) (days)

set black(seen:expire:seenreply) "7"

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

set black(next:banmask) "2"

########################################################################
#-------------------------------- Notes -------------------------------#

#Expire time for Notes INBOX (days)

set black(notes:expiretime) "30"

############################## Commands ################################
#------------------------------- Troll --------------------------------#

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

########################################################################
#------------------------------ report --------------------------------#

#antiflood setting (number repeats : seconds)

set black(report:flood) "2:60"

########################################################################
#------------------------------ exempt --------------------------------#

#default exempt time

set black(exempt:default_time) "0"

############################# The End ##################################

set black(name) "BlackToolS"
set black(author) "BLaCkShaDoW"
set black(vers) "2.5.5"
set black(site) "wWw.TclScriptS.NeT"

	bind evnt - init-server loginpublic
	bind time - "* * * * *" timer:login:check
 
if {[info exists black(backup_update)]} {
	set black(backdir) $black(backup_dir)
} else {
	set black(backdir) $black(dirname)
}

set black(tclname) [file tail [info script]]
set black(dirtcl) [file dirname [info script]]
set black(loader_error) [catch {source $black(backdir)/BlackTools/BT.Loader.tcl} black(loader_error_stats)]

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

#Save settings from BlackTools.tcl
blacktools:settings:autosave

putlog "\002\[BT\]\002 \002$black(name)\002 (Last update: [ctime $black(current_modif)]) ($black(site)): Initialised.."
putlog "*** The Future is Here *** One TCL. One Smart Eggdrop ***"
putlog "\002\[BT\]\002 Language files loaded:\002 [join [string toupper $black(current_lang)] "\002, "]"
putlog "\002\[BT\]\002 \002$black(name) v$black(vers)\002 coded by \002$black(author)\002: Loaded."

#code testing requirements
if {[info exists {tcl_version}]} {
if {${tcl_version} < 8.5} {
	putlog "\00304\[BT\] Error.\003 \002$black(name) v$black(vers)\002 requires \002Tcl 8.5\002 (or higher) installed to function properly. Your actual tcl version is\00304 ${tcl_version}\003."
	}
}
if {$numversion < 1080000} {
	putlog "\00304\[BT\] Error.\003 \002$black(name) v$black(vers)\002 requires \002Eggdrop 1.8\002 (or higher) installed to function properly. Your actual Eggdrop version is\00304 $version\003."
}

#unset the languages
if {[info exists black(current_lang)]} {
	unset black(current_lang)
}

#################
###########################################################################
##   END                                                                 ##
###########################################################################
##       Copyright (c) 2008-2022 Daniel Voipan (aka BLaCkShaDoW)         ##
###########################################################################


