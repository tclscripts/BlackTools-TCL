###########################################################################
#                      ® BLaCkShaDoW ProductionS ®                        #
#                                                                         # 
#                               Presents                                  # 
                                                                     
####   #        ####    #####   #   #  #####  #####    ####   #      #####                  
#   #  #       #    #   #       #  #     #   #     #  #    #  #      # 
#   #  #       #    #   #       # #      #   #     #  #    #  #      #
## #   #       ######   #       ##       #   #     #  #    #  #      #####
#   #  #       #    #   #       # #      #   #     #  #    #  #          #
#   #  #       #    #   #       #  #     #   #     #  #    #  #          #
####   #####   #    #   #####   #   #    #    #####    ####   #####  #####
              
#                                                                         # 
#                                                                         #
#                          #####   #####                                  #
#                              #       #                                  #         
#                              #       #                                  #
#                          ####    #####                                  #
#                          #           #                                  #
#                          #           #                                  #       
#                          ##### # #####                                  # 
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
#                      Time2Go@Oradea(#Bihor Admin)                       #
#                                                                         #
#        Offcourse i thanks all the users who participate with ideas,     #
# opinions, which took the script to this version.                        #                                                                                                                                                                                    
#                                                                         #
#      cola @ #Tcl-Help                          btw @ #ialomita          #                    
#                                                                         #                                
#      Cacique @ #mures                          bandyt @ #bandyt         #
#                                                                         #
###########################################################################
#
#Please specify the folder name that contains the BlackTools.tcl and the lang
#folder (Default "scripts")
#
set black(dirname) "scripts"
#
###########################################################################                
#First Char ( "- . !" ) - ( "none" ) (for no char)
#
set black(cmdchar) ". !"
#                           
###########################################################################       
                            
#-------------------------- Default Language -----------------------------#

#Default language ( RO / EN )

set black(default_lang) "RO" 

#-------------------------------------------------------------------------#

#----------------------------- Max Handle --------------------------------#

#Max Handle ( 1 - for handle < 9 ; 0 - for handle > 9 )

set black(maxhand) "0"

#-------------------------------------------------------------------------#


#######################################################################
#                                                                     #
#        Command Help              - h -          Command Help        #
#                                                                     #
#######################################################################

#---------------------------------------------------------------------#

#######################################################################
#                             Chanserv Name
#
set black(chanserv) "X"
#
#######################################################################

#---------------------------------------------------------------------#

#######################################################################
#                                                                     #
#---------------------------------------------------------------------#
#                                                                     #
####################################################################### 
 
#------------------------- Chanserv Login ----------------------------#             

#Login On Connect ( 1 - ON ; 0 - OFF)

set black(logonconect) "1" 
                                                                     
#------------------------- Chanserv User ----------------------------## 
                                   
set black(username) "username"                      
                                                                     
#------------------------- Chanserv Pass ----------------------------## 
                        
set black(password) "password"

#------------------------- Login Command ----------------------------##

set black(login) "PRIVMSG x@channels.undernet.org :login $black(username) $black(password)"

                                                                     
#--------------------------- Login Mode ------------------------------##                                                   
                                                                     
set black(xmod) "+x"                                                    
                                                                     
#######################################################################
#                                                                     #
#---------------------------------------------------------------------#
#                                                                     #
#######################################################################

#---------------------------------------------------------------------#

################################# add #################################
#
#       add <level> <user> (level : manager,admin,senior,op voice)
#
#######################################################################

#Default Hostname for - add <user> command -

set black(hostadd) "*!*@%user%.users.undernet.org"


#######################################################################
#
#
#                           Protection
#
#
#
#######################################################################

#Op Protect (1 - ON ; 0 - OFF)

set black(vprotect) "1"


#VOICE Protect (1 - ON ; 0 - OFF)

set black(oprotect) "1"

#######################################################################
#
#                        Antipub Protection
#
#
#
#######################################################################


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

#Ban-Mode

set black(antipubmode) "m"

#Ban-mode Time (Seconds)

set black(antipubsecunde) "5"

#######################################################################
#
#                      AntiNotice Protection
#
#
#######################################################################

#Ban-Time

set black(antinoticebantime) "2880"

#Ban-Mode

set black(antinoticemode) "mr"

#Ban-mode Time (Seconds)

set black(antinoticesecunde) "7"

#######################################################################
#
#                         AntiCTCP Protection
#
#
#######################################################################

#Ban-Time

set black(antictcpbantime) "2880"

#Ban-Mode

set black(antictcpmode) "mr"

#Ban-mode Time (Seconds)

set black(antictcpsecunde) "8"

#######################################################################
#
#                       AntiBadWord Protection
#
#
#######################################################################


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

#######################################################################
#
#                        AntiLongText Protection
#
#
#######################################################################

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
#                       Protectia AntiJoinPart
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
#
#######################################################################

#Ban-Type (1 - KICK -> BAN ; 0 - BAN )

set black(antifloodchantype) "1"

#Ban-Time

set black(antifloodchanbantime) "10"

#######################################################################
# 
#                                Module
# 
#
#######################################################################


#######################################################################
# 
#                            Topic refresh
#
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
#
#######################################################################

#MSg Type ( 1 - NOTICE ; 0 - PRIVMSG )

set black(counthow) "1"


#######################################################################
# 
#                               BadChan
#
#              badchan | <on> | <off> | add | del | | list |
#
#######################################################################

#Ban-Time

set black(badcbantime) "360"

#User Message ( 1 - ON ; 0 - OFF)

set black(badcwhyreason) "1"

########################################################################
#
#                                 Anunt
#
#                  Anunt <on> | <off> | <add> | <list> | <del>
#
#######################################################################

#Anunt Time ( 60 min max )

set black(anunttime) "45"

#MSg Type ( 1 - ACTION ; 0 - PRIVMSG )

set black(anunthow) "0"

########################################################################
#
#                             AutoBroadcast
#
#                  bt <on> | <off> | <add> | <list> | <del>
#
#######################################################################


#BRoadcast Time

set black(bttime) "60"

#MSg Type ( 1 - ACTION ; 0 - PRIVMSG )

set black(bthow) "1"


#######################################################################
# 
#                               CloneScan
#
#
#######################################################################

#Max Clones

set black(maxclone) "2"

#Ban-Type ( 0 - OP Message ; 1 - Ban )

set black(what) "0"

#Ban-Time

set black(clonebtime) "180"

#######################################################################
# 
#                               AntiBoTidle
#
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
#
#######################################################################

#Flood-Protection (searches : seconds)

set black(seenflood) "4:5"

#MSg Type ( 1 - NOTICE ; 0 - PRIVMSG )

set black(seenmet) "1"


########################################################################
#
#                                 Greet
#
#                  greet <on> | <off> | <add> | <list> | <del>
#
#######################################################################

#MSg Type ( 1 - NOTICE ; 0 - PRIVMSG )

set black(howgreet) "1"


########################################################################
#
#                                 Leave
#
#                  leave <on> | <off> | <add> | <list> | <del>
#
#######################################################################

#MSg Type ( 1 - NOTICE ; 0 - PRIVMSG )

set black(howleave) "0"

########################################################################
#
#                                 idle
#
#                
#  idle <on> | <off> | voice <on>/<off> | op <on>/<off> | add <nick> 
#
#######################################################################

#Idle Scan Time

set black(idleinterval) "60"

#Op max idle

set black(idleopmax) "30"

#Voice idle Max

set black(idlevoicemax) "60"

########################################################################
#
#                                Private
#
#                
#          private <on> | <off> | <add> <user> | <list> | del <nume>
#
#######################################################################

#Ban-Time

set black(privatebantime) "10"


#######################################################################
# 
#                           
#                               Commands
#
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
#                   spam <nick> / <host> (pentru spammeri)
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
#              stick <nick> / <host> <timp> <motiv>
#
########################################################################

#Ban-Time

set black(dfstickbantime) "5040"

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


set black(exceptflags) "nm|HAMOVSo"

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

setudef int idlevoicemax
setudef int idleopmax
setudef int countnumber
setudef int kickcount
setudef int xbantime
setudef int xbanlevel
setudef int blacklimit
setudef str backchan


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

#module

setudef str badchan-reason
setudef int badchan-bantime
setudef str count-message
setudef str lang

if {$black(logonconect) == "1"} {
bind evnt - init-server loginpublic
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
bind join - * addopjoin
bind join - * addvoicejoin
bind join - * private:module
bind join - * timeban:module
bind ctcr mn|MOSAV PING pingpublic
bind ctcr - VERSION ctcpvers
bind mode - *+o* dontoppublic
bind mode - *-o* dontdeoppublic



bind pubm nm|MmvVNnoOSA * comand:pubme 
foreach black(char) $black(cmdchar) {
if {[string match -nocase "$black(char)" "none"]} {
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
bind pub nm|- $black(char)del delpublic
bind pub nm|- $black(char)ignore ignorepublic
bind pub nm|- $black(char)botidle botidlepublic
bind pub nm|M $black(char)addhost addhostpublic
bind pub nm|M $black(char)delhost delhostpuplic
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
bind pub nm|M $black(char)reset resetpublic
bind pub nm|M $black(char)clear clearpublic
bind pub nm|- $black(char)addbot addbotpublic
bind pub nm|M $black(char)addop addoppublic
bind pub nm|M $black(char)addvoice addvoicepublic
bind pub nm|M $black(char)delop deloppublic
bind pub nm|M $black(char)delvoice delvoicepublic
bind pub nm|- $black(char)addmyhost addmyhostpublic
bind pub nm|- $black(char)delmyhost delmyhostpublic
bind pub nm|VOSAM $black(char)activ activpublic
bind pub nm|MASOV $black(char)h hpublic
bind pub nm|MASO $black(char)cc ccpublic
bind pub nm|MAOSV $black(char)top toppublic
bind pub nm|M $black(char)secure securepublic
bind pub nm|- $black(char)bt broadcastpublic:module
bind pub nm|- $black(char)login publiclogin:Cmd
bind pub nm|MASO $black(char)stats statspublic
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
bind msg nm|OSAM voice voicepublic
bind msg nm|OSAM devoice devoicepublic
bind msg nm|OSAM invite invitepublic


##########################################################################
#
#
#         Dont try to modify if you dont know what are you doing !
#
#
#########################################################################


set black(name) "BlackToolS"
set black(author) "BLaCkShaDoW"
set black(vers) "2.3"
set black(site) "WwW.TclScripts.Net"
set sdir "$username.status.txt"
set wdir "$username.away.txt"
set seendir "$username.Seen.db"
set statsdir "$username.stats.db"
set bwordir "$username.bword.db"

set black(loader_error) [catch {source $black(dirname)/lang/loader.tcl} black(loader_error_stats)]

if {$black(loader_error) == "1"} {
die "4BlackTools :I didnt find the 12loader.tcl in the 12lang folder. This file contains the language for the script.PLease load it."
}

if {![info exists anuntpublic:show_running]} { 
timer $black(anunttime) anuntpublic:show
set anuntpublic:show_running 1
}

if {![info exists times_topic_running]} { 
timer $black(topic_time) times_topic
set times_topic_running 1
}


if {![file exists $seendir]} {
set file [open $seendir w]
close $file
}

if {![file exists $sdir]} {
set file [open $sdir w]
close $file
}

if {![file exists $wdir]} {
set file [open $wdir w]
close $file
}

if {![file exists $bwordir]} {
set file [open $bwordir w]
close $file
}


if {![file exists $statsdir]} {
set file [open $statsdir w]
close $file
}

if {![info exists antibotidle:module_running]} {
set file [open $sdir "r"]
set database [read -nonewline $file]
close $file
set data [split $database "\n"]
if {$data != ""} {
foreach line $data {
set type [lindex [split $line] 0]
set stats [lindex [split $line] 1]
if {($type == "antibotidle:module") && ($stats == "ON")} {
timer $black(noidlemax) antibotidle:module
}
}
}
set antibotidle:module_running 1
}

if {![info exists broadcastpublic:show_running]} {
set file [open $sdir "r"]
set database [read -nonewline $file]
close $file
set data [split $database "\n"]
if {$data != ""} {
foreach line $data {
set type [lindex [split $line] 0]
set stats [lindex [split $line] 1]
if {($type == "broadcastpublic:show") && ($stats == "ON")} {
timer $black(bttime) broadcastpublic:show
}
}
}
set broadcastpublic:show_running 1
}

proc blacktools:tell:prv {nick host hand type arg} {
global botnick black
set char(p) [lindex $black(cmdchar) 0]
if {[string match -nocase "$char(p)" "none"]} {
set char(p) ""
} 
set replace(%botnick%) $botnick
set replace(%char%) $char(p)
set replace(%msg%) [lrange [split $arg] 0 end]
set replace(%msg.1%) [lindex [split $arg] 0]
set replace(%msg.2%) [lindex [split $arg] 1]
set replace(%msg.3%) [lindex [split $arg] 2]
set replace(%msg.4%) [lrange [split $arg] 1 end]
set getlang [string tolower [getuser $hand XTRA OUTPUT_LANG]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
if {[info exists black(say.$getlang.$type)]} {
set reply [string map [array get replace] $black(say.$getlang.$type)]
puthelp "PRIVMSG $nick :$reply"
}
}

proc blacktools:tell {nick host hand chan chan1 type arg} {
global black botnick
set char(p) [lindex $black(cmdchar) 0]
if {[string match -nocase "$char(p)" "none"]} {
set char(p) ""
} 
set replace(%botnick%) $botnick
set replace(%char%) $char(p)
set replace(%chan%) $chan
set replace(%msg%) [lrange $arg 0 end]
set replace(%msg.set%) [lrange $arg 1 end]
set replace(%msg.1%) [lindex $arg 0]
set replace(%msg.2%) [lindex $arg 1]
set replace(%msg.3%) [lindex $arg 2]
set replace(%msg.4%) [lindex $arg 3]
set replace(%msg.5%) [lrange $arg 4 end]
set replace(%msg.6%) [lrange $arg 3 end]
set replace(%msg.7%) [lrange $arg 2 end]
set replace(%msg.8%) [lrange $arg 1 end]
set getlang [string tolower [getuser $hand XTRA OUTPUT_LANG]]
set getmethod [getuser $hand XTRA OUTPUT_TYPE]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
if {$getmethod == ""} { set getmethod "1" }
if {[info exists black(say.$getlang.$type)]} {
set reply [string map [array get replace] $black(say.$getlang.$type)]
if {$getmethod == "1"} {
putserv "NOTICE $nick :$reply"
} else {
putserv "PRIVMSG $chan1 :$reply"
}
}
}

proc blacktools:banner:1 {banmask botnick chan reason mode timer bantime} {
global black
if {[channel get $chan xban]} {
set getcount [channel get $chan kickcount]
set getxtime [channel get $chan xbantime]
set getxlevel [channel get $chan xbanlevel]
if {$getxlevel == "0"} { set getxlevel "100"}
if {$getxtime == "0"} { set getxtime "1" }
set kcount [expr $getcount +1]
channel set $chan kickcount $kcount
if {[channel get $chan showcount]} {
set reason "$reason - $kcount -" 
} else {
set reason "$reason" 
}
putquick "MODE $chan +$mode" -next ;utimer $timer [list putquick "MODE $chan -$mode"]
putquick "PRIVMSG $black(chanserv) :ban $chan $banmask $getxtime $getxlevel $reason"
newchanban $chan $banmask $botnick $reason $bantime
if {![channel get $chan chanreport]} {
return 0
}
set backchan [channel get $chan backchan]
if {$backchan == ""} { 
return 0
}
if {!([validchan $backchan]) || !([onchan $botnick $backchan])} {
return 0
}
if {[info exists black($chan:anounce)]} {
return 0
}
set black($chan:anounce) 1
set getlang [string tolower [channel get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
set replace(%banmask%) $banmask
set replace(%bantime%) $bantime
set replace(%reason%) $reason
set replace(%chan%) $chan
puthelp "PRIVMSG $backchan :[string map [array get replace] $black(say.$getlang.reportchan)]"
} else {
set getcount [channel get $chan kickcount]
set kcount [expr $getcount +1]
channel set $chan kickcount $kcount
if {[channel get $chan showcount]} {
set reason "$reason - $kcount -" } else {
set reason "$reason" }
putquick "MODE $chan +$mode" -next ;utimer $timer [list putquick "MODE $chan -$mode"]
newchanban $chan $banmask $botnick $reason $bantime
if {![channel get $chan chanreport]} {
return 0
}
set backchan [channel get $chan backchan]
if {$backchan == ""} { 
return 0
}
if {!([validchan $backchan]) || !([onchan $botnick $backchan])} {
return 0
}
if {[info exists black($chan:anounce)]} {
return 0
}
set black($chan:anounce) 1
set getlang [string tolower [channel get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
set replace(%banmask%) $banmask
set replace(%bantime%) $bantime
set replace(%reason%) $reason
set replace(%chan%) $chan
puthelp "PRIVMSG $backchan :[string map [array get replace] $black(say.$getlang.reportchan)]"
}
utimer 5 [list unset black($chan:anounce)]
}

proc blacktools:banner:2 {banmask botnick chan reason bantime} {
global black
if {[channel get $chan xban]} {
set getcount [channel get $chan kickcount]
set getxtime [channel get $chan xbantime]
if {$getxtime == "0"} { set getxtime "1" }
set getxlevel [channel get $chan xbanlevel]
if {$getxlevel == "0"} { set getxlevel "100"}
set kcount [expr $getcount +1]
channel set $chan kickcount $kcount
if {[channel get $chan showcount]} {
set reason "$reason - $kcount -" 
} else {
set reason "$reason" 
}
putquick "PRIVMSG $black(chanserv) :ban $chan $banmask $getxtime $getxlevel $reason"
newchanban $chan $banmask $botnick $reason $bantime
if {![channel get $chan chanreport]} {
return 0
}
set backchan [channel get $chan backchan]
if {$backchan == ""} { 
return 0
}

if {!([validchan $backchan]) || !([onchan $botnick $backchan])} {
return 0
}

if {[info exists black($chan:anounce)]} {
return 0
}

set black($chan:anounce) 1
set getlang [string tolower [channel get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
set replace(%banmask%) $banmask
set replace(%bantime%) $bantime
set replace(%reason%) $reason
set replace(%chan%) $chan
puthelp "PRIVMSG $backchan :[string map [array get replace] $black(say.$getlang.reportchan)]"

} else {

set getcount [channel get $chan kickcount]
set kcount [expr $getcount +1]
channel set $chan kickcount $kcount
if {[channel get $chan showcount]} {
set reason "$reason - $kcount -" } else {
set reason "$reason" }
newchanban $chan $banmask $botnick $reason $bantime
if {![channel get $chan chanreport]} {
return 0
}
set backchan [channel get $chan backchan]
if {$backchan == ""} { 
return 0
}

if {!([validchan $backchan]) || !([onchan $botnick $backchan])} {
return 0
}
if {[info exists black($chan:anounce)]} {
return 0
}
set black($chan:anounce) 1
set getlang [string tolower [channel get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
set replace(%banmask%) $banmask
set replace(%bantime%) $bantime
set replace(%reason%) $reason
set replace(%chan%) $chan
puthelp "PRIVMSG $backchan :[string map [array get replace] $black(say.$getlang.reportchan)]"
}
utimer 5 [list unset black($chan:anounce)]
}


proc blacktools:banner:3 {mask hand chan reason bantime type} {
global black botnick
if {[channel get $chan xban]} {
set getcount [channel get $chan kickcount]
set getxtime [channel get $chan xbantime]
if {$getxtime == "0"} { set getxtime "1" }
set getxlevel [channel get $chan xbanlevel]
if {$getxlevel == "0"} { set getxlevel "100"}
set getcount [channel get $chan kickcount]
set kcount [expr $getcount +1]
channel set $chan kickcount $kcount
set countz [getuser $hand XTRA $type]
if {$countz == ""} { set countz 0 }
set counts [expr $countz + 1]
setuser $hand XTRA $type $counts
if {[channel get $chan showcount]} {
set reason "$reason - $kcount -" 
} else {
set reason "$reason" 
}
putquick "PRIVMSG $black(chanserv) :ban $chan $mask $getxtime $getxlevel $reason"
utimer 1 [list newchanban $chan $mask $hand $reason $bantime]
putquick "MODE $chan +b $mask"
if {![channel get $chan chanreport]} {
return 0
}
set backchan [channel get $chan backchan]
if {$backchan == ""} { 
return 0
}
if {!([validchan $backchan]) || !([onchan $botnick $backchan])} {
return 0
}
set getlang [string tolower [channel get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
set replace(%banmask%) $mask
set replace(%bantime%) $bantime
set replace(%reason%) $reason
set replace(%chan%) $chan
puthelp "PRIVMSG $backchan :[string map [array get replace] $black(say.$getlang.reportchan)]"
} else {
set getcount [channel get $chan kickcount]
set kcount [expr $getcount +1]
channel set $chan kickcount $kcount
set countz [getuser $hand XTRA $type]
if {$countz == ""} { set countz 0 }
set counts [expr $countz + 1]
setuser $hand XTRA $type $counts
if {[channel get $chan showcount]} {
set reason "$reason - $kcount -" } else {
set reason "$reason" }
newchanban $chan $mask $hand $reason $bantime
putquick "MODE $chan +b $mask"
if {![channel get $chan chanreport]} {
return 0
}
set backchan [channel get $chan backchan]
if {$backchan == ""} { 
return 0
}
if {!([validchan $backchan]) || !([onchan $botnick $backchan])} {
return 0
}
set getlang [string tolower [channel get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
set replace(%banmask%) $mask
set replace(%bantime%) $bantime
set replace(%reason%) $reason
set replace(%chan%) $chan
puthelp "PRIVMSG $backchan :[string map [array get replace] $black(say.$getlang.reportchan)]"
}
}

proc blacktools:banner:4 {mask hand chan reason bantime type} {
global black botnick
if {[channel get $chan xban]} {
set getcount [channel get $chan kickcount]
set getxtime [channel get $chan xbantime]
if {$getxtime == "0"} { set getxtime "1" }
set getxlevel [channel get $chan xbanlevel]
if {$getxlevel == "0"} { set getxlevel "100"}
set getcount [channel get $chan kickcount]
set kcount [expr $getcount +1]
channel set $chan kickcount $kcount
set countz [getuser $hand XTRA $type]
if {$countz == ""} { set countz 0 }
set counts [expr $countz + 1]
setuser $hand XTRA $type $counts
if {[channel get $chan showcount]} {
set reason "$reason - $kcount -" 
} else {
set reason "$reason" 
}
putquick "PRIVMSG $black(chanserv) :ban $chan $mask $getxtime $getxlevel $reason"
utimer 1 [list newchanban $chan $mask $hand $reason $bantime sticky]
putquick "MODE $chan +b $mask"
if {![channel get $chan chanreport]} {
return 0
}
set backchan [channel get $chan backchan]
if {$backchan == ""} { 
return 0
}
if {!([validchan $backchan]) || !([onchan $botnick $backchan])} {
return 0
}
set getlang [string tolower [channel get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
set replace(%banmask%) $mask
set replace(%bantime%) $bantime
set replace(%reason%) $reason
set replace(%chan%) $chan
puthelp "PRIVMSG $backchan :[string map [array get replace] $black(say.$getlang.reportchan)]"
} else {
set getcount [channel get $chan kickcount]
set kcount [expr $getcount +1]
channel set $chan kickcount $kcount
set countz [getuser $hand XTRA $type]
if {$countz == ""} { set countz 0 }
set counts [expr $countz + 1]
setuser $hand XTRA $type $counts
if {[channel get $chan showcount]} {
set reason "$reason - $kcount -" } else {
set reason "$reason" }
newchanban $chan $mask $hand $reason $bantime sticky
putquick "MODE $chan +b $mask"
if {![channel get $chan chanreport]} {
return 0
}
set backchan [channel get $chan backchan]
if {$backchan == ""} { 
return 0
}
if {!([validchan $backchan]) || !([onchan $botnick $backchan])} {
return 0
}
set getlang [string tolower [channel get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
set replace(%banmask%) $mask
set replace(%bantime%) $bantime
set replace(%reason%) $reason
set replace(%chan%) $chan
puthelp "PRIVMSG $backchan :[string map [array get replace] $black(say.$getlang.reportchan)]"
}
}

################################ antipub ###########################


proc antipub:filter {str} {
  regsub -all -- {\003([0-9]{1,2}(,[0-9]{1,2})?)?|\017|\037|\002|\026|\006|\007} $str "" str
  return $str
}

proc antipub:protect {nick host hand chan arg} {
global black botnick
set text [antipub:filter $arg]
set handle [nick2hand $nick]
if {![validchan $chan]} { return 0 }
set getreason [channel get $chan antipub-reason]
if {$getreason == ""} { 
set getlang [string tolower [channel get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
set getreason $black(say.$getlang.antipub.1)
}
set getbantime [channel get $chan antipub-bantime]
if {$getbantime == "0"} { set getbantime $black(antipubbantime) }
set replace(%chan%) $chan
set protectreason [string map [array get replace] $getreason]
set reason "$protectreason"
set banmask *!*@[lindex [split $host @] 1]
if {[matchattr $handle $black(exceptflags) $chan]} { return 0 }
if {![botisop $chan]} { return 0 }
if {[isvoice $nick $chan] && ($black(vprotect) == "1")} { return 0 }
if {[isop $nick $chan] && ($black(oprotect) == "1")} { return 0 }
if {[isbotnick $nick]} { return 0 } 
if { [channel get $chan antipub] } {
foreach antipub [string tolower $black(antipubword)] {
if {[string match -nocase $antipub $arg]} {
blacktools:banner:1 $banmask $botnick $chan $reason $black(antipubmode) $black(antipubsecunde) $getbantime
}
}
}
}

proc antipub:protect:me {nick host hand chan keyword arg} {
global black
antipub:protect $nick $host $hand $chan $arg
}


############################### antinotice #############################

proc antinotice:protect {nick host hand arg chan} {
global black botnick
set handle [nick2hand $nick]
if {![validchan $chan]} { return 0 }
set getreason [channel get $chan antinotice-reason]
if {$getreason == ""} { 
set getlang [string tolower [channel get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
set getreason $black(say.$getlang.antinotice.1)
}
set getbantime [channel get $chan antinotice-bantime]
if {$getbantime == "0"} { set getbantime $black(antinoticebantime) }
set replace(%chan%) $chan
set protectreason [string map [array get replace] $getreason]
set banmask *!*@[lindex [split $host @] 1]
set reason "$protectreason"
if {![botisop $chan]} { return 0 }
if {[matchattr $handle $black(exceptflags) $chan]} { return 0 }
if {[isvoice $nick $chan] && ($black(vprotect) == "1")} { return 0 }
if {[isop $nick $chan] && ($black(oprotect) == "1")} { return 0 }
if {[isbotnick $nick]} { return 0 }
if {$chan == $botnick} { return 0 }
if { [channel get $chan antinotice] } {
blacktools:banner:1 $banmask $botnick $chan $reason $black(antinoticemode) $black(antinoticesecunde) $getbantime
}
}

############################## antictcp ################################


proc antictcp:protect {nick host hand chan keyword arg} {
global black botnick
set handle [nick2hand $nick]
if {![validchan $chan]} { return 0 }
set getreason [channel get $chan antictcp-reason]
if {$getreason == ""} { 
set getlang [string tolower [channel get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
set getreason $black(say.$getlang.antictcp.1)
}
set getbantime [channel get $chan antictcp-bantime]
if {$getbantime == "0"} { set getbantime $black(antictcpbantime) }
set replace(%chan%) $chan
set protectreason [string map [array get replace] $getreason]
set reason "$protectreason"
set banmask *!*@[lindex [split $host @] 1]
if {[string equal -nocase "action" $keyword] || [string equal -nocase "chat" $keyword]} {return 0}
if {![botisop $chan]} { return 0 }
if {[matchattr $handle $black(exceptflags) $chan]} { return 0 }
if {[isvoice $nick $chan] && ($black(vprotect) == "1")} { return 0 }
if {[isop $nick $chan] && ($black(oprotect) == "1")} { return 0 }
if {[isbotnick $nick]} { return 0 }
if { [channel get $chan antictcp] } {
blacktools:banner:1 $banmask $botnick $chan $reason $black(antictcpmode) $black(antictcpsecunde) $getbantime
}
}

############################## antibadword ################################

proc antibadword:filter {str} {
  regsub -all -- {\003([0-9]{1,2}(,[0-9]{1,2})?)?|\017|\037|\002|\026|\006|\007} $str "" str
  return $str
}


proc antibadword:protect {nick host hand chan arg} {
global black botnick bwordir
set handle [nick2hand $nick]
if {![validchan $chan]} { return 0 }
set getreason [channel get $chan antibadword-reason]
if {$getreason == ""} { 
set getlang [string tolower [channel get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
set getreason $black(say.$getlang.antibadword.1)
}
set getbantime [channel get $chan antibadword-bantime]
if {$getbantime == "0"} { set getbantime $black(antibadwordbantime) }
set replace(%chan%) $chan
set protectreason [string map [array get replace] $getreason]
set text [antibadword:filter $arg]
set reason "$protectreason"
set banmask *!*@[lindex [split $host @] 1]
if {![botisop $chan]} { return 0 }
if {[matchattr $handle $black(exceptflags) $chan]} { return 0 }
if {[isvoice $nick $chan] && ($black(vprotect) == "1")} { return 0 }
if {[isop $nick $chan] && ($black(oprotect) == "1")} { return 0 }
if {[isbotnick $nick]} { return 0 }
if {[channel get $chan antibadword]} {
set file [open $bwordir "r"]
set data [read -nonewline $file]
close $file
set lines [split $data "\n"]
foreach word $lines {
set c [lindex [split $word] 0]
set w [lrange [split $word] 1 end]
if {[string match -nocase $c $chan]} { 
if {[string match -nocase $w $text]} {
blacktools:banner:2 $banmask $botnick $chan $reason $getbantime
}
}
}
foreach antibadword [string tolower $black(antibadword)] {
if {[string match -nocase $antibadword $text]} {
blacktools:banner:2 $banmask $botnick $chan $reason $getbantime
}
}
}
}

proc antibadword:protect:me {nick host hand chan keyword arg} {
global black
antibadword:protect $nick $host $hand $chan $arg
}

################################ badword ##################################

proc antibadword:command:public {nick host hand chan arg} {
global black botnick
set why [lindex [split $arg] 0]
set type 0
set chan1 "$chan"
set bdword [lrange [split $arg] 1 end]
set bdnumber [lindex [split $arg] 1]
if {[regexp {^[\\+!#&]} $why] && [matchattr $hand nm|- $chan]} {
set chan "$why"
set why [lindex [split $arg] 1]
set bdnumber [lindex [split $arg] 2]
set bdword [lrange [split $arg] 2 end]
}
antibadword:command:process $nick $host $hand $chan $chan1 $why $bdword $bdnumber $type
}

proc antibadword:command:process {nick host hand chan chan1 why bdword bdnumber type} {
global black bwordir botnick
set i 0
set char(p) [lindex $black(cmdchar) 0]
if {[string match -nocase "$char(p)" "none"]} {
set char(p) ""
} 
if {[matchattr $hand nm|- $chan]} {
if {($why == "") && ($type == "0")} {
blacktools:tell $nick $host $hand $chan $chan1 badword.1 none
return 0
}
if {($why == "") && ($type == "1")} {
blacktools:tell $nick $host $hand $chan $chan1 badword.2 none
return 0
}
}
if {($why == "") && ($type == "0")} {
blacktools:tell $nick $host $hand $chan $chan1 badword.3 none
return 0
}
if {($why == "") && ($type == "1")} {
blacktools:tell $nick $host $hand $chan $chan1 badword.4 none
return 0
}
if {![validchan $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.novalidchan none
return 0
}
if {![onchan $botnick $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.notonchan none
return 0
}
switch -exact -- [string tolower $why] {

add {
set file [open $bwordir a]
puts $file "$chan $bdword"
close $file
blacktools:tell $nick $host $hand $chan $chan1 badword.5 $bdword
}

list {
set file [open $bwordir "r"]
set why [read -nonewline $file]
close $file
set data [split $why "\n"]
if {$data == ""} { 
blacktools:tell $nick $host $hand $chan $chan1 badword.6 none
blacktools:tell $nick $host $hand $chan $chan1 badword.7 none
return 0
}
foreach word $data {
set c [lindex [split $word] 0]
set word [lrange [split $word] 1 end]
if {[string match -nocase $chan $c]} {
set foundchan 1
set i [expr $i +1]
blacktools:tell $nick $host $hand $chan $chan1 badword.6 none
blacktools:tell $nick $host $hand $chan $chan1 badword.8 "4 $i. 12$word"
}
if {![info exists foundchan]} {
blacktools:tell $nick $host $hand $chan $chan1 badword.6 none
blacktools:tell $nick $host $hand $chan $chan1 badword.7 none
}

}
}

del {
if {![regexp {^[0-9]} $bdnumber]} {
blacktools:tell $nick $host $hand $chan $chan1 badword.9 $bdword
return 0
}
set file [open $bwordir "r"]
set data [read -nonewline $file]
close $file
set lines [split $data "\n"]
foreach word $lines {
set c [lindex [split $word] 0]
if {[string match -nocase $c $chan]} { 
set i [expr $bdnumber - 1]
set delete [lreplace $lines $i $i]
set file [open $bwordir "w"]
puts $file [join $delete "\n"]
close $file
}
}
set file [open $bwordir "r"]
set data [read -nonewline $file]
close $file
if {$data == ""} {
set files [open $bwordir "w"]
close $files
}
blacktools:tell $nick $host $hand $chan $chan1 badword.10 $bdnumber
}
}
}

############################## AntiLongText ################################

proc antilongtext:protect {nick uhost hand chan arg} {
global black botnick
set handle [nick2hand $nick]
if {![validchan $chan]} { return 0 }
set getreason [channel get $chan antilongtext-reason]
if {$getreason == ""} { 
set getlang [string tolower [channel get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
set getreason $black(say.$getlang.antilongtext.1)
}
set getbantime [channel get $chan antilongtext-bantime]
if {$getbantime == "0"} { set getbantime $black(longbantime) }
set getlongchar [channel get $chan antilongtextmax]
if {$getlongchar == "0"} { set getlongchar "$black(longchar)" }
set replace(%chan%) $chan
set protectreason [string map [array get replace] $getreason]
set banmask "*!*@[lindex [split $uhost @] 1]"
set reason "$protectreason"
if {[matchattr $handle $black(exceptflags) $chan]} { return 0 }
if {![botisop $chan]} { return 0 }
if {[isvoice $nick $chan] && ($black(vprotect) == "1")} { return 0 }
if {[isop $nick $chan] && ($black(oprotect) == "1")} { return 0 }
if {[isbotnick $nick]} { return 0 } 
if {[string length $arg] >= $getlongchar} {
if {[channel get $chan antilongtext]} {
blacktools:banner:1 $banmask $botnick $chan $reason $black(longmode) $black(longtimemode) $getbantime
}
}
}

proc antilongtext:protect:me {nick host hand chan keyword arg} {
global black
antilongtext:protect $nick $host $hand $chan $arg
}

############################ AntiBAdQuitPart ##############################

set black(badcolors) {

"*\x03*"
"*\037*"
"*\002*"

}

proc antipubpart:protect {nick host hand chan arg} {
global botnick black
set handle [nick2hand $nick]
if {![validchan $chan]} { return 0 }
set getreason [channel get $chan antibadquitpart-reason]
if {$getreason == ""} { 
set getlang [string tolower [channel get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
set getreason $black(say.$getlang.antibadquitpart.1)
}
set getbantime [channel get $chan antibadquitpart-bantime]
if {$getbantime == "0"} { set getbantime $black(badquitparttime) }
set replace(%chan%) $chan
set protectreason [string map [array get replace] $getreason]
set banmask "*!*@[lindex [split $host @] 1]"
set reason "$protectreason"
if {[channel get $chan badquitpart]} {
foreach word $black(badquitpartwords) {
if {![botisop $chan]} { return 0 }
if {[matchattr $handle $black(exceptflags) $chan]} { return 0 }
if {[isvoice $nick $chan] && ($black(vprotect) == "1")} { return 0 }
if {[isop $nick $chan] && ($black(oprotect) == "1")} { return 0 }
if {[isbotnick $nick]} { return 0 }
if {[string match -nocase $word $arg]} {
blacktools:banner:2 $banmask $botnick $chan $reason $getbantime
}
}
}
}

proc antipubsign:protect {nick host hand chan arg} {
antipubpart:protect $nick $host $hand $chan $arg
}


proc anticolorpart:protect {nick host hand chan arg} {
global botnick black
set handle [nick2hand $nick]
if {![validchan $chan]} { return 0 }
set getreason [channel get $chan antibadquitpart-reason]
if {$getreason == ""} {
set getlang [string tolower [channel get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
set getreason $black(say.$getlang.antibadquitpart.1)
}
set getbantime [channel get $chan antibadquitpart-bantime]
if {$getbantime == "0"} { set getbantime $black(badquitparttime) }
set replace(%chan%) $chan
set protectreason [string map [array get replace] $getreason]
set banmask "*!*@[lindex [split $host @] 1]"
set reason "$protectreason"
if {[channel get $chan badquitpart]} {
foreach color $black(badcolors) {
if {![botisop $chan]} { return 0 }
if {[matchattr $handle $black(exceptflags) $chan]} { return 0 }
if {[isvoice $nick $chan] && ($black(vprotect) == "1")} { return 0 }
if {[isop $nick $chan] && ($black(oprotect) == "1")} { return 0 }
if {[isbotnick $nick]} { return 0 }
if {($black(badquitpartcolour) == "1") && [string match -nocase $color $arg]} {
blacktools:banner:2 $banmask $botnick $chan $reason $getbantime
}
}
}
}

proc anticolorquit:protect {nick host hand chan arg} {
anticolorpart:protect $nick $host $hand $chan $arg
}

########################### AntiJoinPart #############################

proc antijoinpart:protect {nick host hand chan arg} {
global black botnick
set handle [nick2hand $nick]
if {![validchan $chan]} { return 0 }
set getreason [channel get $chan antijoinpart-reason]
if {$getreason == ""} {
set getlang [string tolower [channel get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
set getreason $black(say.$getlang.antijoinpart.1)
}
set getbantime [channel get $chan antijoinpart-bantime]
if {$getbantime == "0"} { set getbantime $black(joinpartbantime) }
set replace(%chan%) $chan
set protectreason [string map [array get replace] $getreason]
set banmask "*!*@[lindex [split $host @] 1]"
set reason "$protectreason"
if {[matchattr $handle $black(exceptflags) $chan]} { return 0 }
if {[isbotnick $nick]} { return 0 }
if {$chan == $botnick} { return 0 }
if {[channel get $chan antijoinpart]} {
if {[getchanjoin $nick $chan] >= [expr {[clock seconds]-$black(joinparttime)}]} {
blacktools:banner:1 $banmask $botnick $chan $reason $black(joinpartmode) $black(joinparttimemode) $getbantime
}
}
}

proc spam:filter {str} {
  regsub -all -- {\003([0-9]{1,2}(,[0-9]{1,2})?)?|\017|\037|\002|\026|\006|\007} $str "" str
  return $str
}

############################# AntiSpam ##############################

proc antispam:protect {nick uhost hand arg} {
global botnick black
set text [spam:filter $arg]
set handle [nick2hand $nick]
foreach spammer [string tolower $black(spamword)] { 
if {[string match -nocase $spammer $arg]} {
foreach chans [channels] {
if {![validchan $chans]} { return 0 }
set getreason [channel get $chans antispam-reason]
if {$getreason == ""} { 
set getlang [string tolower [channel get $chans lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
set getreason $black(say.$getlang.antispam.1)
}
set getbantime [channel get $chans antispam-bantime]
if {$getbantime == "0"} { set getbantime $black(spamban) }
if {[onchan $nick $chans]} {
if {[channel get $chans antispam]} {
if {![botisop $chans]} { return 0 }
if {[isbotnick $nick]} { return 0 }
set banmask *!*@[lindex [split $uhost @] 1]
set replace(%chan%) $chans
set protectreason [string map [array get replace] $getreason]
set reason "$protectreason"
if {[matchattr $handle $black(exceptflags) $chans]} { return 0 }
if {[isvoice $nick $chans] && ($black(vprotect) == "1")} { return 0 }
if {[isop $nick $chans] && ($black(oprotect) == "1")} { return 0 }
blacktools:banner:2 $banmask $botnick $chans $reason $getbantime
}
}
}
}
}
}
proc antispam:protect:msg {nick host hand chan } {
global black
if {![validchan $chan]} { return 0 }
if {[channel get $chan antispam]} {
if {[isbotnick $nick]} { return 0 }
if {$black(spamreq) == "1"} {
set getmsg [channel get $chan antispam-message]
if {$getmsg == ""} { 
set getlang [string tolower [channel get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
set getmsg $black(say.$getlang.antispam.2)
}
set replace(%nick%) $nick
set replace(%chan%) $chan
set spamsg [string map [array get replace] $getmsg]
puthelp "PRIVMSG $nick :$spamsg"
} 
}
}


proc antispam:protect:cycle {min hour day mon year} {
global black
if {([scan $min %d]+([scan $hour %d]*60)) % $black(spamcycle) == 0} { 
foreach chan [channels] {
if { [channel get $chan antispam]} {
putserv "PART $chan :$black(spammsgcycle)"; putserv "JOIN $chan"
}
}
}
}

############################## AntiRepeat ###############################

proc antirepeat:protect {nick host hand chan arg} {
global black botnick count
set arg [join [split $arg]]
if {![validchan $chan]} { return 0 }
set getreason [channel get $chan antirepeat-reason]
if {$getreason == ""} { 
set getlang [string tolower [channel get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
set getreason $black(say.$getlang.antirepeat.1)
}
set getbantime [channel get $chan antirepeat-bantime]
if {$getbantime == "0"} { set getbantime $black(antirepeatbantime) }
set replace(%chan%) $chan
set protectreason [string map [array get replace] $getreason]
set reason "$protectreason"
set repeatset [channel get $chan antirepeat-setting]
if {$repeatset == ""} { set repeatset "$black(repeats)" }
set number [scan $repeatset %\[^:\]]
set time [scan $repeatset %*\[^:\]:%s]
set banmask *!*@[lindex [split $host @] 1]
set handle [nick2hand $nick]
foreach tmr [utimers] {
if {[string match "*count(repeat:$host:$chan:$arg)*" [join [lindex $tmr 1]]]} {
killutimer [lindex $tmr 2]
}
}
if {[channel get $chan antirepeat]} {
if {[isvoice $nick $chan] && ($black(vprotect) == "1")} { return 0 }
if {[isop $nick $chan] && ($black(oprotect) == "1")} { return 0 }
if {![botisop $chan]} { return 0 }
if {[matchattr $handle $black(exceptflags) $chan]} { return 0 }
if {[isbotnick $nick]} { return 0 }

if {![info exists count(repeat:$host:$chan:$arg)]} { 
set count(repeat:$host:$chan:$arg) 0 
}

if {![info exists count(repeat:$host:$chan)]} { 
set count(repeat:$host:$chan) 0 
}

incr count(repeat:$host:$chan:$arg)
utimer $time [list unset count(repeat:$host:$chan:$arg)]

if {$count(repeat:$host:$chan:$arg) >= $number} {
if {$black(antirepeattype) == "0"} { set count(repeat:$host:$chan) 2 } 
incr count(repeat:$host:$chan)
if {$count(repeat:$host:$chan) == 1} {
set getcount [channel get $chan kickcount]
set kcount [expr $getcount +1]
channel set $chan kickcount $kcount
if {[channel get $chan showcount]} {
set reason "$reason - $kcount -" 
} else {
set reason "$reason" 
}
putquick "KICK $chan $nick :$reason"
}
if {$count(repeat:$host:$chan) >= 2} {
blacktools:banner:2 $banmask $botnick $chan $reason $getbantime
unset count(repeat:$host:$chan)
}
}
}
}


proc antirepeat:protect:me {nick host hand chan keyword arg} {
antirepeat:protect $nick $host $hand $chan $arg
}


############################# AntiColor ################################

proc anticolor:protect {nick host hand chan arg} {
global black botnick count
set arg [join [split $arg]]
if {![validchan $chan]} { return 0 }
set getreason [channel get $chan anticolor-reason]
if {$getreason == ""} { 
set getlang [string tolower [channel get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
set getreason $black(say.$getlang.anticolor.1)
}
set getbantime [channel get $chan anticolor-bantime]
if {$getbantime == "0"} { set getbantime $black(anticolorbantime) }
set replace(%chan%) $chan
set protectreason [string map [array get replace] $getreason]
set reason "$protectreason"
set banmask *!*@[lindex [split $host @] 1]
set handle [nick2hand $nick]
if {[channel get $chan anticolor]} {
if {[isvoice $nick $chan] && ($black(vprotect) == "1")} { return 0 }
if {[isop $nick $chan] && ($black(oprotect) == "1")} { return 0 }
if {![botisop $chan]} { return 0 }
if {[matchattr $handle $black(exceptflags) $chan]} { return 0 }
if {[isbotnick $nick]} { return 0 }
if {![info exists count(color:$host:$chan)]} { 
set count(color:$host:$chan) 0 
}
if {[string match *\003* $arg]} {
incr count(color:$host:$chan)
if {$black(anticolortype) == "0" } { set count(color:$host:$chan) 2 }
if {$count(color:$host:$chan) == 1} {
set getcount [channel get $chan kickcount]
set kcount [expr $getcount +1]
channel set $chan kickcount $kcount
if {[channel get $chan showcount]} {
set reason "$reason - $kcount -" 
} else {
set reason "$reason" 
}
putquick "KICK $chan $nick :$reason"
}
if {$count(color:$host:$chan) == 2} {
blacktools:banner:2 $banmask $botnick $chan $reason $getbantime
unset count(color:$host:$chan)
}
}
}
}

proc anticolor:protect:me {nick host hand chan keyword arg} {
anticolor:protect $nick $host $hand $chan $arg
}

############################# AntiBold ################################

proc antibold:protect {nick host hand chan arg} {
global black botnick count
set arg [split $arg]
if {![validchan $chan]} { return 0 }
set getreason [channel get $chan antibold-reason]
if {$getreason == ""} { 
set getlang [string tolower [channel get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
set getreason $black(say.$getlang.antibold.1)
}
set getbantime [channel get $chan antibold-bantime]
if {$getbantime == "0"} { set getbantime $black(antiboldbantime) }
set replace(%chan%) $chan
set protectreason [string map [array get replace] $getreason]
set reason "$protectreason"
set banmask *!*@[lindex [split $host @] 1]
set handle [nick2hand $nick]
if {[channel get $chan antibold]} {
if {[isvoice $nick $chan] && ($black(vprotect) == "1")} { return 0 }
if {[isop $nick $chan] && ($black(oprotect) == "1")} { return 0 }
if {![botisop $chan]} { return 0 }
if {[matchattr $handle $black(exceptflags) $chan]} { return 0 }
if {[isbotnick $nick]} { return 0 }
if {![info exists count(bold:$host:$chan)]} { 
set count(bold:$host:$chan) 0 
}
if {[string match *\002* $arg]} {
incr count(bold:$host:$chan)
if {$black(antiboldtype) == "0" } { set count(bold:$host:$chan) 2 }
if {$count(bold:$host:$chan) == 1} {
set getcount [channel get $chan kickcount]
set kcount [expr $getcount +1]
channel set $chan kickcount $kcount
if {[channel get $chan showcount]} {
set reason "$reason - $kcount -" 
} else {
set reason "$reason" 
}
putquick "KICK $chan $nick :$reason"
}
if {$count(bold:$host:$chan) == 2} {
blacktools:banner:2 $banmask $botnick $chan $reason $getbantime
unset count(bold:$host:$chan)
}
}
}
}

proc antibold:protect:me {nick host hand chan keyword arg} {
antibold:protect $nick $host $hand $chan $arg
}

############################ AntiUnderline ###############################

proc antiunderline:protect {nick host hand chan arg} {
global black botnick count
set arg [split $arg]
if {![validchan $chan]} { return 0 }
set getreason [channel get $chan antiunderline-reason]
if {$getreason == ""} { 
set getlang [string tolower [channel get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
set getreason $black(say.$getlang.antiunderline.1)
}
set getbantime [channel get $chan antiunderline-bantime]
if {$getbantime == "0"} { set getbantime $black(antiunderlinebantime) }
set replace(%chan%) $chan
set protectreason [string map [array get replace] $getreason]
set reason "$protectreason"
set banmask *!*@[lindex [split $host @] 1]
set handle [nick2hand $nick]
if {[channel get $chan antiunderline]} {
if {[isvoice $nick $chan] && ($black(vprotect) == "1")} { return 0 }
if {[isop $nick $chan] && ($black(oprotect) == "1")} { return 0 }
if {![botisop $chan]} { return 0 }
if {[matchattr $handle $black(exceptflags) $chan]} { return 0 }
if {[isbotnick $nick]} { return 0 }
if {![info exists count(underline:$host:$chan)]} { 
set count(underline:$host:$chan) 0 
}
if {[string match *\037* $arg]} {
incr count(underline:$host:$chan)
if {$black(antiunderlinetype) == "0" } { set count(underline:$host:$chan) 2 }
if {$count(underline:$host:$chan) == 1} {
set getcount [channel get $chan kickcount]
set kcount [expr $getcount +1]
channel set $chan kickcount $kcount
if {[channel get $chan showcount]} {
set reason "$reason - $kcount -" 
} else {
set reason "$reason" 
}
putquick "KICK $chan $nick :$reason"
}
if {$count(underline:$host:$chan) == 2} {
blacktools:banner:2 $banmask $botnick $chan $reason $getbantime
unset count(underline:$host:$chan)
}
}
}
}

proc antiunderline:protect:me {nick host hand chan keyword arg} {
antiunderline:protect $nick $host $hand $chan $arg
}

############################## AntiCaps #################################

proc anticaps:protect {nick host hand chan arg} {
global black botnick count
set handle [nick2hand $nick]
if {![validchan $chan]} { return 0 }
set getreason [channel get $chan anticaps-reason]
if {$getreason == ""} { 
set getlang [string tolower [channel get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
set getreason $black(say.$getlang.anticaps.1)
}
set getbantime [channel get $chan anticaps-bantime]
if {$getbantime == "0"} { set getbantime $black(anticapsbantime) }
set replace(%chan%) $chan
set protectreason [string map [array get replace] $getreason]
set reason "$protectreason"
set banmask *!*@[lindex [split $host @] 1]
if {![info exists count(caps:$host:$chan)]} { 
set count(caps:$host:$chan) 0 
}
if {[channel get $chan anticaps]} {
if {[isvoice $nick $chan] && ($black(vprotect) == "1")} { return 0 }
if {[isop $nick $chan] && ($black(oprotect) == "1")} { return 0 }
if {![botisop $chan]} { return 0 }
if {[matchattr $handle $black(exceptflags) $chan]} { return 0 }
if {[isbotnick $nick]} { return 0 }

set caps($nick:$host) 0
foreach word [split $arg {}] {
if [string match \[A-Z\] $word] {
incr caps($nick:$host)
}

}

if {$caps($nick:$host) == 0} {
  return 0
}
  if {[string length $arg] < 20} {return 0}
  set capchar [string length $arg]
  set number $caps($nick:$host)/$capchar
  if {[expr 100 * $caps($nick:$host) / $capchar] > $black(anticapscount)} {
incr count(caps:$host:$chan)
if {$black(anticapstype) == "0" } { set count(caps:$host:$chan) 2 }
if {$count(caps:$host:$chan) == 1} {
set getcount [channel get $chan kickcount]
set kcount [expr $getcount +1]
channel set $chan kickcount $kcount
if {[channel get $chan showcount]} {
set reason "$reason - $kcount -" 
} else {
set reason "$reason" 
}
putquick "KICK $chan $nick :$reason"
}
if {$count(caps:$host:$chan) == 2} {
blacktools:banner:2 $banmask $botnick $chan $reason $getbantime
unset count(caps:$host:$chan)
}
}
}
}

proc anticaps:protect:me {nick host hand chan keyword arg} {
anticaps:protect $nick $host $hand $chan $arg
}

################################ BadIdent #################################

proc badident:protect:join {nick host hand chan} {
global black botnick
if {![validchan $chan]} { return 0 }
set getreason [channel get $chan badident-reason]
if {$getreason == ""} { 
set getlang [string tolower [channel get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
set getreason $black(say.$getlang.badident.1)
}
set getbantime [channel get $chan badident-bantime]
if {$getbantime == "0"} { set getbantime $black(badidentbantime) }
set replace(%chan%) $chan
set protectreason [string map [array get replace] $getreason]
set reason "$protectreason"
set ident "[string trimleft [string tolower [lindex [split $host "@"] 0]] "~"]"
set banmask "*!*$ident@*"
if {![validchan $chan]} { return 0 }
if {[channel get $chan badident]} {
if {![botisop $chan]} { return 0 }
if {[isvoice $nick $chan] && ($black(vprotect) == "1")} { return 0 }
if {[isop $nick $chan] && ($black(oprotect) == "1")} { return 0 }
if {[matchattr $hand $black(exceptflags) $chan]} { return 0 }
foreach bit $black(badidentwords) {
if {[string match -nocase $bit $ident]} {
blacktools:banner:2 $banmask $botnick $chan $reason $getbantime
}
}
}
}


############################## BadFullname ###############################

proc badfullname:protect:join {nick host hand chan} {
global botnick black
set ::cchan $chan
set ::nnick $nick
set ::hhost $host
set handle [nick2hand $nick]
if { [channel get $chan badfullname] } {
if {![botisop $chan]} { return 0 }
if {[isvoice $nick $chan] && ($black(vprotect) == "1")} { return 0 }
if {[isop $nick $chan] && ($black(oprotect) == "1")} { return 0 }
if {[matchattr $handle $black(exceptflags) $chan]} { return 0 }
if {[onchan $nick $chan]} {
putquick "WHOIS $nick $nick"
bind RAW - 311 badfullname:protect
}
}
}

proc badfullname:protect { from keyword arguments } {
global botnick black
set chan $::cchan
set nick $::nnick
set host $::hhost
set getreason [channel get $chan badfullname-reason]
if {$getreason == ""} { 
set getlang [string tolower [channel get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
set getreason $black(say.$getlang.badfullname.1)
}
set getbantime [channel get $chan badfullname-bantime]
if {$getbantime == "0"} { set getbantime $black(badfbantime) }
set replace(%chan%) $chan
set protectreason [string map [array get replace] $getreason]
set reason "$protectreason"
set fullname [string range [join [lrange $arguments 5 end]] 1 end]
if {[onchan $nick $chan]} {
set banmask *!*@[lindex [split [getchanhost $nick $chan] "@"] 1] 
}
  foreach realname $black(badfwords) {
if {[string match -nocase $realname $fullname]} {
blacktools:banner:2 $banmask $botnick $chan $reason $getbantime
}
}
unbind RAW - 311 badfullname:protect
}

################################ BadNick #################################

proc badnick:protect:join {nick host hand chan} {
global black botnick
set handle [nick2hand $nick]
if {![validchan $chan]} { return 0 }
set getreason [channel get $chan badnick-reason]
if {$getreason == ""} { 
set getlang [string tolower [channel get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
set getreason $black(say.$getlang.badnick.1)
}
set getbantime [channel get $chan badnick-bantime]
if {$getbantime == "0"} { set getbantime $black(badnickbantime) }
set replace(%chan%) $chan
set protectreason [string map [array get replace] $getreason]
set reason "$protectreason"
set banmask "$nick*!*@*"
if {![validchan $chan]} { return 0 }
if {[channel get $chan badnick]} {
if {![botisop $chan]} { return 0 }
if {[isvoice $nick $chan] && ($black(vprotect) == "1")} { return 0 }
if {[isop $nick $chan] && ($black(oprotect) == "1")} { return 0 }
if {[matchattr $handle $black(exceptflags) $chan]} { return 0 }
foreach badnick [string tolower $black(badnickwords)] {
if {[string match $badnick [string tolower $nick]]} {
blacktools:banner:2 $banmask $botnick $chan $reason $getbantime
}
}
}
}

proc badnick:protect:change {nick host hand chan newnick} {
global black botnick
set handle [nick2hand $nick]
if {![validchan $chan]} { return 0 }
set getreason [channel get $chan badnick-reason]
if {$getreason == ""} { 
set getlang [string tolower [channel get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
set getreason $black(say.$getlang.badnick.1)
}
set getbantime [channel get $chan badnick-bantime]
if {$getbantime == "0"} { set getbantime $black(badnickbantime) }
set replace(%chan%) $chan
set protectreason [string map [array get replace] $getreason]
set reason "$protectreason"
set banmask "$newnick*!*@*"
if {![validchan $chan]} { return 0 }
if {[channel get $chan badnick]} {
if {![botisop $chan]} { return 0 }
if {[isvoice $nick $chan] && ($black(vprotect) == "1")} { return 0 }
if {[isop $nick $chan] && ($black(oprotect) == "1")} { return 0 }
if {[matchattr $handle $black(exceptflags) $chan]} { return 0 }
foreach badnick [string tolower $black(badnickwords)] {
if {[string match $badnick [string tolower $newnick]]} {
blacktools:banner:2 $banmask $botnick $chan $reason $getbantime
}
}
}
}



########################### AntiJoinFlood ################################

proc joinflood:protect {nick host hand chan} {
global black count
if {[channel get $chan antijoinflood]} {
set getset [channel get $chan joinflood]
if {$getset == ""} { set getset "4 5" }
set number [lindex [split $getset] 0]
set time [lindex [split $getset] 1]
set replace(%chan%) $chan
foreach tmr [utimers] {
if {[string match "*count(joinflood:$chan)*" [join [lindex $tmr 1]]]} {
killutimer [lindex $tmr 2]
}
}
if {![info exists count(joinflood:$chan)]} { 
set count(joinflood:$chan) 0 
}

incr count(joinflood:$chan)
utimer $time [list unset count(joinflood:$chan)]

if {$count(joinflood:$chan) >= "$number"} {
if {![botisop $chan]} { return 0 }
putquick "MODE $chan +$black(modes)" ; utimer $black(nomodetime) [list putquick "MODE $chan -$black(modes)"]
if {$black(fjoinhow) == "1"} {
set getlang [string tolower [channel get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
set getmessage $black(say.$getlang.antijoinflood.1)
set message [string map [array get replace] $getmessage]
puthelp "NOTICE @$chan :$message"
}
}
}
}


########################## Login ###############################

proc loginpublic {my} {
     global botnick black
        putquick "$black(login)"   
        putquick "MODE $botnick :$black(xmod)"
        
}


proc publiclogin:Cmd {nick host hand chan arg} {
global botnick black
putquick "$black(login)"
putquick "MODE $botnick :$black(xmod)"
blacktools:tell:prv $nick $host $hand login.1 $black(chanserv)
}

########################### User Protection ################################

proc protectpublic {nick host hand chan args} {
global black
set bans [lindex $args 1]
if {![botisop $chan]} { return 0 }
if {$bans == "*!*@*"} { putquick "MODE $chan -b $bans"
return 0
}
set list [userlist $black(exceptflags) $chan]
foreach user $list {
 set hosts [getuser $user hosts]
foreach host $hosts {
if {[string match -nocase $bans $host]} {
putquick "MODE $chan -b $bans"
if {[onchan $black(chanserv) $chan]} {
putquick "PRIVMSG $black(chanserv) :unban $chan $bans"
}
}
}
}
}

############################## AntiChanFlood ###############################

proc antifloodchan:protect {nick host hand chan arg} {
global black botnick count
set arg [split $arg]
if {![validchan $chan]} { return 0 }
set getreason [channel get $chan antichanflood-reason]
if {$getreason == ""} { 
set getlang [string tolower [channel get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
set getreason $black(say.$getlang.antichanflood.1)
}
set getbantime [channel get $chan antichanflood-bantime]
if {$getbantime == "0"} { set getbantime $black(antifloodchanbantime) }
set replace(%chan%) $chan
set getset [channel get $chan chanflood]
if {$getset == ""} { set getset "4 5" }
set protectreason [string map [array get replace] $getreason]
set reason "$protectreason"
set number [lindex [split $getset] 0]
set time [lindex [split $getset] 1]
set banmask *!*@[lindex [split $host @] 1]
set handle [nick2hand $nick]
foreach tmr [utimers] {
if {[string match "*count(repeat:$host:$chan:flood)*" [join [lindex $tmr 1]]]} {
killutimer [lindex $tmr 2]
}
}
if {[channel get $chan antichanflood]} {
if {[isvoice $nick $chan] && ($black(vprotect) == "1")} { return 0 }
if {[isop $nick $chan] && ($black(oprotect) == "1")} { return 0 }
if {![botisop $chan]} { return 0 }
if {[matchattr $handle $black(exceptflags) $chan]} { return 0 }
if {[isbotnick $nick]} { return 0 }

if {![info exists count(repeat:$host:$chan:flood)]} { 
set count(repeat:$host:$chan:flood) 0 
}

if {![info exists count(repeat:$host:$chan)]} { 
set count(repeat:$host:$chan) 0 
}

incr count(repeat:$host:$chan:flood)
utimer $time [list unset count(repeat:$host:$chan:flood)]

if {$count(repeat:$host:$chan:flood) >= $number} {
if {$black(antifloodchantype) == "0"} { set count(repeat:$host:$chan) 2 } 
incr count(repeat:$host:$chan)
if {$count(repeat:$host:$chan) == 1} {
set getcount [channel get $chan kickcount]
set kcount [expr $getcount +1]
channel set $chan kickcount $kcount
if {[channel get $chan showcount]} {
set reason "$reason - $kcount -" 
} else {
set reason "$reason" 
}
putquick "KICK $chan $nick :$reason"
}
if {$count(repeat:$host:$chan) >= 2} {
blacktools:banner:2 $banmask $botnick $chan $reason $getbantime
unset count(repeat:$host:$chan)
}
}
}
}

proc antifloodchan:protect:me {nick host hand chan keyword arg} {
antirepeat:protect $nick $host $hand $chan $arg
}

################################# reban ################################

proc rebanpublic {nick host hand chan} {
global black
if {[channel get $chan xban]} {
set host "$nick![getchanhost $nick $chan]"
set getxtime [channel get $chan xbantime]
set getxlevel [channel get $chan xbanlevel]
if {$getxlevel == "0"} { set getxlevel "100" } 
if {$getxtime == "0"} { set getxtime "1" }
foreach ban [banlist $chan] {
set reason "[lindex $ban 1]"
if {[string match -nocase [string tolower [lindex $ban 0]] $host]} {
putquick "PRIVMSG $black(chanserv) :ban $chan [lindex $ban 0] $getxtime $getxlevel $reason"
}
}
}
}

################################# XTOOLS ################################

proc toolspublic {chan type} {
global botnick black
if {![channel get $chan xtools]} {
return 0
}
if {$type == "op"} {
if  {![onchan "$black(chanserv)" $chan] && ![botisop $chan]} {
return 0
}
putquick "PRIVMSG $black(chanserv) :unban $chan $botnick"
putquick "PRIVMSG $black(chanserv) :op $chan $botnick"
return 0
}
if {$type == "unban"} {
putquick "PRIVMSG $black(chanserv) :unban $chan $botnick"
return 0
}
if {$type == "invite" || $type == "limit"} {
putquick "PRIVMSG $black(chanserv) :invite $chan $botnick"
return 0
}
}


################################# Clone Scan ###################################



proc scannerpublic {nick host hand chan arg} {
global black count
set c [lindex [split $arg] 0]
set type 0
set chan1 "$chan"
if {[regexp {^[\\+!#&]} $c] && [matchattr $hand nm|- $chan]} {
set chan "$c"
}
scanner:process $nick $host $hand $chan $chan1
}

proc scanner:process {nick host hand chan chan1} {
global botnick black
array set clones [list]
if {![validchan $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.novalidchan none
return 0
}

if {![onchan $botnick $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.notonchan none
return 0
}

blacktools:tell $nick $host $hand $chan $chan1 clonescan.4 none
foreach user [chanlist $chan] {
set host [string tolower [lindex [split [getchanhost $user $chan] @] 1]]
if {![string match "*.undernet.org*" $host]} {
if {!($black(maxclone) >= "2")} { return 0 }
if {![info exists c($host:$chan)]} {
set c($host:$chan) 0
}
set c($host:$chan) [expr $c($host:$chan) +1]
lappend clones($user) $host
if {$c($host:$chan) >= $black(maxclone)} {
foreach clon [lsort -unique [array names clones]] {
set hosts [string tolower [lindex [split [getchanhost $clon $chan] @] 1]]
if {$host == $hosts} {
lappend clona($host) [join $clon " , "]
} 
}
blacktools:tell $nick $host $hand $chan $chan1 clonescan.1 "$c($host:$chan) $host [lsort -unique $clona($host)]"
}
utimer 3 [list blacktools:tell $nick $host $hand $chan $chan1 clonescan.2 none]
}
} 
}

proc clonescanner {minute hour day month year} {
global black botnick
foreach chan [channels] {
set replace(%chan%) $chan
if {[channel get $chan clonescan]} {
putlog "Scaning for clones on $chan.."
foreach user [chanlist $chan] {
set host [string tolower [lindex [split [getchanhost $user $chan] @] 1]]
set replace(%host%) $host
if {![info exists c($host:$chan)]} {
set c($host:$chan) 0
}
array set clones [list]
if {![string match "*.undernet.org*" $host]} {
if {!($black(maxclone) >= "2")} { return 0 }
set c($host:$chan) [expr $c($host:$chan) +1]
lappend clones($user) $host
if {$c($host:$chan) >= $black(maxclone)} {
foreach clon [array names clones] {
set hosts [string tolower [lindex [split [getchanhost $clon $chan] @] 1]]
if {$host == $hosts} {
lappend clona($host) [join $clon " , "]
} 
}
set replace(%num%) $c($host:$chan)
set replace(%clone%) [lsort -unique $clona($host)]
if {$black(what) == "0"} {
set getlang [string tolower [channel get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
putserv "NOTICE @$chan :[string map [array get replace] $black(say.$getlang.clonescan.3)]"
}
if {$black(what) == "1"} {
set banmask *!*@[lindex [split $host @] 1]
set reason [string map [array get replace] $black(reason)]
blacktools:banner:2 $banmask $botnick $chan $reason $black(clonebtime)
}
}
}
}
}
}
}



############################# Topic refresh #########################

proc refreshpublic {nick host hand chan arg} {
global botnick black
set thetopic [topic $chan]
puthelp "TOPIC $chan :$black(topics)"
puthelp "TOPIC $chan :$thetopic"
}


proc times_topic {} {
 global black
foreach chan [channels] {
if {[channel get $chan topicrefresh] } {
set thetopic [topic $chan]
   puthelp "TOPIC $chan :$black(topics)"
   puthelp "TOPIC $chan :$thetopic"

}
}
timer $black(topic_time) times_topic
 return 1
}



################################ count ####################################

proc countpublic {nick host hand chan arg} {
global black
set type 0
set chan1 "$chan"
set why [lindex [split $arg] 0]
if {[regexp {^[\\+!#&]} $why] && [matchattr $hand nm|- $chan]} {
set chan "$why"
set why [lindex [split $arg] 1]
}
count:process $nick $host $hand $chan $chan1 $why $type
}


proc count:process {nick host hand chan chan1 why type} {
global botnick black
set char(p) [lindex $black(cmdchar) 0]
if {[string match -nocase "$char(p)" "none"]} {
set char(p) ""
} 
if {[matchattr $hand nm|- $chan]} {
if {($why == "") && ($type == "0")} {
blacktools:tell $nick $host $hand $chan $chan1 count.1 none
return 0
}
if {($why == "") && ($type == "1")} {
blacktools:tell $nick $host $hand $chan $chan1 count.2 none
return 0
}
}
if {($why == "") && ($type == "0")} {
blacktools:tell $nick $host $hand $chan $chan1 count.3 none
return 0
}
if {($why == "") && ($type == "1")} {
blacktools:tell $nick $host $hand $chan $chan1 count.4 none
return 0
}
if {![validchan $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.novalidchan none
return 0
}
if {![onchan $botnick $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.notonchan none
return 0
}
if { [channel get $chan count] } { set countstats "on" } else { set countstats "off"}
if {($countstats == "on") && ($why == "on")} { blacktools:tell $nick $host $hand $chan $chan1 count.5 none
return 0
}
if {($countstats == "off") && ($why == "off")} { blacktools:tell $nick $host $hand $chan $chan1 count.6 none
return 0
}

if {([regexp -nocase -- {(#[0-9]+|on|off|display|reset)} $why tmp counter]) && (![regexp -nocase -- {\S#} $why])} {
    switch $counter {

on {
channel set $chan +count
blacktools:tell $nick $host $hand $chan $chan1 count.7 none
}

off {
channel set $chan -count
blacktools:tell $nick $host $hand $chan $chan1 count.8 none
}

display {
set stats [channel get $chan countnumber]
blacktools:tell $nick $host $hand $chan $chan1 count.9 $stats
}

reset {
channel set $chan countnumber 0
blacktools:tell $nick $host $hand $chan $chan1 count.10 none

}
} 
} 
}


proc countpublic:join {nick host hand chan} {
global black
if {[isbotnick $nick]} { return 0}
if {[channel get $chan count]} {
set stats [channel get $chan countnumber]
set counting [expr $stats +1]
channel set $chan countnumber $counting
set replace(%num%) $counting
set replace(%chan%) $chan
set countmes [channel get $chan count-message]
if {$countmes == ""} { 
set getlang [string tolower [channel get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
set countmessage [string map [array get replace] $black(say.$getlang.count.11)]
}
putquick "NOTICE $nick :$countmessage"
}
}


############################### Private ##########################

proc privatepublic {nick host hand chan arg} {
global black
set type 0
set chan1 "$chan"
set why [lindex [split $arg] 0]
set user [lindex [split $arg] 1]
set host [lindex [split $arg] 2]
if {[regexp {^[\\+!#&]} $why] && [matchattr $hand nm|- $chan]} {
set chan "$why"
set why [lindex [split $arg] 1]
set user [lindex [split $arg] 2]
set host [lindex [split $arg] 3]
}
private:process $nick $host $hand $chan $chan1 $why $user $host $type
}

proc private:process {nick host hand chan chan1 why user host type} {
global botnick black
set char(p) [lindex $black(cmdchar) 0]
if {[string match -nocase "$char(p)" "none"]} {
set char(p) ""
} 
set flags "-|f"
if {[matchattr $hand nm|- $chan]} {
if {($why == "") && ($type == "0")} {
blacktools:tell $nick $host $hand $chan $chan1 private.1 none
return 0
}
if {($why == "") && ($type == "1")} {
blacktools:tell $nick $host $hand $chan $chan1 private.2 none
return 0
}
}
if {($why == "") && ($type == "0")} {
blacktools:tell $nick $host $hand $chan $chan1 private.3 none
return 0
}
if {($why == "") && ($type == "1")} {
blacktools:tell $nick $host $hand $chan $chan1 private.4 none
return 0
}
if {![validchan $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.novalidchan none
return 0
}
if {![onchan $botnick $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.notonchan none
return 0
}

if {([regexp -nocase -- {(#[0-9]+|on|off|add|list|del)} $why tmp privat]) && (![regexp -nocase -- {\S#} $why])} {
    switch $privat {
on {
     channel set $chan +private
blacktools:tell $nick $host $hand $chan $chan1 private.5 none
}

off {
     channel set $chan -private
blacktools:tell $nick $host $hand $chan $chan1 private.6 none
}

add {

if {[validuser $user]} { 
chattr $user $flags $chan
blacktools:tell $nick $host $hand $chan $chan1 private.7 $user
return 0
}
adduser $user $host
chattr $user $flags $chan
blacktools:tell $nick $host $hand $chan $chan1 private.8 "$user $host"
}


del {

if {[validuser $user]} {
chattr $user -|-f $chan
blacktools:tell $nick $host $hand $chan $chan1 private.9 $user
} else { blacktools:tell $nick $host $hand $chan $chan1 private.10 $user
return 0
}
}

list {
set list [userlist $flags $chan]
blacktools:tell $nick $host $hand $chan $chan1 private.11 $list
}

}
}
}



proc private:module {nick host hand chan} {
global black botnick
set getreason [channel get $chan private-reason]
if {$getreason == ""} { 
set getlang [string tolower [channel get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
set getreason $black(say.$getlang.private.12)
}
set getbantime [channel get $chan private-bantime]
if {$getbantime == "0"} { set getbantime $black(privatebantime) }
set handle [nick2hand $nick]
set mask "*!*@[lindex [split $host @] 1]"
if {[channel get $chan private]} {
if {[matchattr $handle nm|oMASOVf $chan]} { 
return 0 
}
newchanban $chan $mask $botnick $getreason $getbantime
}
}


############################### BadChan ###########################

proc badchanpublic {nick host hand chan arg} {
global black
set why [lindex [split $arg] 0]
set type 0
set chan1 "$chan"
set bdchan [join [lindex [split $arg] 1]]
if {[regexp {^[\\+!#&]} $why] && [matchattr $hand nm|- $chan]} {
set chan "$why"
set why [lindex [split $arg] 1]
set bdchan [join [lindex [split $arg] 2]]
}
badchan:process $nick $host $hand $chan $chan1 $why $bdchan $type
}

proc badchan:process {nick host hand chan chan1 why bdchan type} {
global botnick black
set flag "antibadchan"
set char(p) [lindex $black(cmdchar) 0]
if {[string match -nocase "$char(p)" "none"]} {
set char(p) ""
} 
set dir "logs/badchan($chan).txt"
if {[matchattr $hand nm|- $chan]} {
if {($why == "") && ($type == "0")} {
blacktools:tell $nick $host $hand $chan $chan1 badchan.1 none
return 0
}
if {($why == "") && ($type == "1")} {
blacktools:tell $nick $host $hand $chan $chan1 badchan.2 none
return 0
}
}
if {($why == "") && ($type == "0")} {
blacktools:tell $nick $host $hand $chan $chan1 badchan.3 none
return 0
}
if {($why == "") && ($type == "1")} {
blacktools:tell $nick $host $hand $chan $chan1 badchan.4 none
return 0
}
if {![validchan $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.novalidchan none
return 0
}
if {![onchan $botnick $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.notonchan none
return 0
}


if {([regexp -nocase -- {(#[0-9]+|on|off|add|list|del)} $why tmp bc]) && (![regexp -nocase -- {\S#} $why])} {
    switch $bc {
on {
channel set $chan +$flag
blacktools:tell $nick $host $hand $chan $chan1 badchan.5 none
}
off {
channel set $chan -$flag
blacktools:tell $nick $host $hand $chan $chan1 badchan.6 none

}

add {
if {[file exists $dir] == 0} {
set file [open $dir w]
close $file
}
set file [open $dir a]
puts $file $bdchan
close $file
blacktools:tell $nick $host $hand $chan $chan1 badchan.7 $bdchan
}

list {

if {[file exists $dir] == 0} {
set file [open $dir w]
close $file
}
set dir "logs/badchan($chan).txt"
set file [open $dir "r"]
set w [read -nonewline $file]
close $file
set data [split $w "\n"]
set i 0
if {$data == ""} { blacktools:tell $nick $host $hand $chan $chan1 badchan.8 none
return 0
}
foreach cc $data {
set i [expr $i +1]
blacktools:tell $nick $host $hand $chan $chan1 badchan.9 none
blacktools:tell $nick $host $hand $chan $chan1 badchan.10 "$i. $cc"
}
}

del {
if {![regexp {^[0-9]} $bdchan]} {
blacktools:tell $nick $host $hand $chan $chan1 badchan.11 none
return 0
}

if {[file exists $dir] == 0} {
set file [open $dir w]
close $file
}

set file [open $dir "r"]
set data [read -nonewline $file]
close $file
set lines [split $data "\n"] 
set i [expr $bdchan - 1]
set delete [lreplace $lines $i $i]
set file [open $dir "w"]
puts $file [join $delete "\n"]
close $file
set file [open $dir "r"]
set data [read -nonewline $file]
close $file
if {$data == ""} {
set files [open $dir "w"]
close $files
}
blacktools:tell $nick $host $hand $chan $chan1 badchan.12 $bdchan
blacktools:tell $nick $host $hand $chan $chan1 badchan.13 none
}


}
}
}



proc badchanpublic:join {nick host hand chan} {
global black
set handle [nick2hand $nick]
set ::ccchan $chan
if {![validchan $chan]} {
return 0
}
if {[matchattr $handle nm|MASoOVv $chan]} { return 0 }
if {![botisop $chan]} { return 0 }
if {[isbotnick $nick]} { return 0 }
if {[channel get $chan antibadchan]} {
if {[onchan $nick $chan]} {
utimer 5 [list putquick "WHOIS $nick $nick"]
bind RAW - 319 badchanpublic:ban
}
}
}

proc badchanpublic:ban {from keyword arguments } {
global botnick black
set chan $::ccchan
set arguments [join $arguments]
set nick [string tolower [lindex $arguments 1]] 
set replace(%chan%) $chan
set replace(%nick%) $nick
set handle [nick2hand $nick]
set args [join $arguments]
set getreason [channel get $chan badchan-reason]
if {$getreason == ""} { 
set getlang [string tolower [channel get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
set getreason $black(say.$getlang.badchan.14)
}
set getbantime [channel get $chan badchan-bantime]
if {$getbantime == "0"} { set getbantime $black(badcbantime) }
if {[channel get $chan antibadchan]} {
if {[matchattr $handle $black(exceptflags) $chan]} { return 0 }
set protectreason [string map [array get replace] $getreason]
set reason "$protectreason"
set channels [string tolower [lrange $args 2 end]]
set banmask *!*@[lindex [split [getchanhost $nick $chan] "@"] 1]
set dir "logs/badchan($chan).txt"
if {[file exists $dir] == 0} {
set file [open $dir w]
close $file
}
set file [open $dir "r"]
set w [read -nonewline $file]
close $file
set bchan [split $w "\n"]
if {$w == ""} { return 0 }
foreach badchan $bchan {
set replace(%bchan%) $badchan
set getlang [string tolower [channel get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
set protectmsg [string map [array get replace] $black(say.$getlang.badchan.15)]
foreach c $channels {
set ch [string trimleft $c ":@+"]
if {[string match -nocase $badchan $ch]} {
blacktools:banner:2 $banmask $botnick $chan $getreason $getbantime
putserv "PRIVMSG $nick :$protectmsg"
}
}
}
}
}


################################# Antitake ##################################


proc dontdeoppublic {nick host hand chan args} {
global black botnick
set dnick [lindex $args 1]
set handle [nick2hand $nick]
if {[channel get $chan dontdeop] } {
if {[string match -nocase $nick $botnick]} {
return 0
}
if {![matchattr $handle $black(exceptflags) $chan]} {
putquick "MODE $chan -o $nick"
putquick "MODE $chan +o $dnick"
set getlang [string tolower [channel get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
puthelp "NOTICE $nick :$black(say.$getlang.antitake.1)"
}
}
}
 
proc dontoppublic {nick host hand chan args} {
global black botnick
set onick [lindex $args 1]
set handle [nick2hand $nick]
if {[channel get $chan dontop]} {
if {[string match -nocase $nick $botnick]} { 
return 0
}
if {[string match -nocase $onick $botnick]} {
return 0
}
if {![matchattr $handle $black(exceptflags) $chan]} {
putquick "MODE $chan -o $nick"
putquick "MODE $chan -o $onick"
set getlang [string tolower [channel get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
puthelp "NOTICE $nick :$black(say.$getlang.antitake.2)"
}
}
}


################################# Anunt ###################################


proc anuntpublic {nick host hand chan arg} {
global black
set type 0
set chan1 "$chan"
set who [lindex [split $arg] 0]
set message [join [lrange [split $arg] 1 end]]
set number [lindex [split $arg] 1]
if {[regexp {^[\\+!#&]} $who] && [matchattr $hand nm|- $chan]} {
set chan "$who"
set who [lindex [split $arg] 1]
set message [join [lrange [split $arg] 2 end]]
set number [lindex [split $arg] 2]
}
anunt:process $nick $host $hand $chan $chan1 $who $message $number $type
}

proc anunt:process {nick host hand chan chan1 who message number type} {
global botnick black
set char(p) [lindex $black(cmdchar) 0]
if {[string match -nocase "$char(p)" "none"]} {
set char(p) ""
} 
set dir "logs/anunt($chan).txt"
if {[matchattr $hand nm|- $chan]} {
if {($who == "") && ($type == "0")} {
blacktools:tell $nick $host $hand $chan $chan1 anunt.1 none
return 0
}
if {($who == "") && ($type == "1")} {
blacktools:tell $nick $host $hand $chan $chan1 anunt.2 none
return 0
}
}
if {($who == "") && ($type == "0")} {
blacktools:tell $nick $host $hand $chan $chan1 anunt.3 none
return 0
}
if {($who == "") && ($type == "1")} {
blacktools:tell $nick $host $hand $chan $chan1 anunt.4 none
return 0
}
if {![validchan $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.novalidchan none
return 0
}
if {![onchan $botnick $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.notonchan none
return 0
}


if {([regexp -nocase -- {(#[0-9]+|on|off|add|list|del)} $who tmp a]) && (![regexp -nocase -- {\S#} $who])} {
    switch $a {
on {
channel set $chan +anunt
blacktools:tell $nick $host $hand $chan $chan1 anunt.5 none
}

off {
channel set $chan -anunt
blacktools:tell $nick $host $hand $chan $chan1 anunt.6 none
}

add {

if {[file exists $dir] == 0} {
set file [open $dir w]
close $file
}
set file [open $dir a]
puts $file $message
close $file
blacktools:tell $nick $host $hand $chan $chan1 anunt.7 none
blacktools:tell $nick $host $hand $chan $chan1 anunt.8 $message
}

list {

if {[file exists $dir] == 0} {
set file [open $dir w]
close $file
}
set file [open $dir "r"]
set w [read -nonewline $file]
close $file
set data [split $w "\n"]
set i 0
if {$data == ""} { blacktools:tell $nick $host $hand $chan $chan1 anunt.9 none
return 0
}
foreach mes $data {
set i [expr $i +1]
blacktools:tell $nick $host $hand $chan $chan1 anunt.10 none
blacktools:tell $nick $host $hand $chan $chan1 anunt.8 "$i. $mes"
}
}

del {

if {![regexp {^[0-9]} $number]} {
blacktools:tell $nick $host $hand $chan $chan1 anunt.11 none
return 0
}

set dir "logs/anunt($chan).txt"
if {[file exists $dir] == 0} {
set file [open $dir w]
close $file
}

set file [open $dir "r"]
set data [read -nonewline $file]
close $file
set lines [split $data "\n"]
set i [expr $number - 1]
set delete [lreplace $lines $i $i]
set files [open $dir "w"]
puts $files [join $delete "\n"]
close $files
set file [open $dir "r"]
set data [read -nonewline $file]
close $file
if {$data == ""} {
set files [open $dir "w"]
close $files
}

blacktools:tell $nick $host $hand $chan $chan1 anunt.12 $number
blacktools:tell $nick $host $hand $chan $chan1 anunt.13 none
}

}
}
}

proc anuntpublic:show {} {
global black count
foreach chan [channels] {
if {[validchan $chan]} {
set dir "logs/anunt($chan).txt"
if {[channel get $chan anunt]} {
if {![info exists count(anunt:$chan)]} {
set count(anunt:$chan) 0
}
if {[file exists $dir] == 0} {
set file [open $dir w]
close $file
}
set file [open $dir "r"]
set data [read -nonewline $file]
close $file
set lines [split $data "\n"]
set line [lindex $lines $count(anunt:$chan)]
incr count(anunt:$chan)
if {$line == ""} {
unset count(anunt:$chan)
}
if {$black(anunthow) == "1"} {
puthelp "PRIVMSG $chan :\001ACTION $line\001"
} else { 
puthelp "PRIVMSG $chan :$line"
}
}
}
}
timer $black(anunttime) anuntpublic:show
return 1
}

################################## TimeBan #############################


proc timeban:module {nick host hand chan} {
global botnick
if {[channel get $chan showtime]} {
set host "$nick![getchanhost $nick $chan]"
foreach ban [banlist $chan] {
if {[string match -nocase [string tolower [lindex $ban 0]] $host]} {
set reason "[lindex $ban 1]"
set bantime "[lindex $ban 2]"
set totalday [expr $bantime - [unixtime]]
if {$totalday >= 86400} {
set daysfull [expr $totalday/86400]
set days [expr int($daysfull)]
set dayssub [expr 86400*$days]
set totalhour [expr $totalday - $dayssub]
}
if {$totalday < 86400} {
set totalhour $totalday
set days 0
}
if {$totalhour >= 3600} {
set hoursfull [expr $totalhour/3600]
set hours [expr int($hoursfull)]
set hourssub [expr 3600*$hours]
set totalmin [expr $totalhour - $hourssub]
}
if {$totalhour < 3600} {
set totalmin $totalhour
set hours 0
}
if {$totalmin >= 60} {
set minsfull [expr $totalmin/60]
set mins [expr int($minsfull)]
}
if {$totalmin < 60} {
set mins 0
}
if {$days < 1} {set zi "0 zile, "} elseif {$days == 1} {set zi "$days zi, "} {set zi "$days zile, "}
if {$hours < 1} {set ora "0"} else { set ora "$hours" }
set minut "$mins"
set re "$reason Expire :$zi$ora:$minut"
if {[lindex $ban 2] == 0} {
set expire "Expire :Perm Ban"
set re "$reason $expire"
}
putquick "MODE $chan +b [lindex $ban 0]"
putquick "KICK $chan $nick :$re"
}
}
}
}



############################### AutoBroadcast ############################

proc broadcastpublic:module {nick host hand chan arg} {
global black sdir
set char(p) [lindex $black(cmdchar) 0]
if {[string match -nocase "$char(p)" "none"]} {
set char(p) ""
} 
set chan1 "$chan"
set who [lindex [split $arg] 0]
set message [join [lrange [split $arg] 1 end]]
set number [lindex [split $arg] 1]
if {$who == ""} { blacktools:tell $nick $host $hand $chan $chan1 autobroadcast.1 none
return 0
}
broadcast:process $nick $host $hand $chan $chan1 $who $message $number
}




proc broadcast:process {nick host hand chan chan1 who message number} {
global botnick black sdir
set char(p) [lindex $black(cmdchar) 0]
if {[string match -nocase "$char(p)" "none"]} {
set char(p) ""
} 
set dir "logs/broadcast.txt"
set lin 0

if {([regexp -nocase -- {(#[0-9]+|on|off|add|list|del)} $who tmp a]) && (![regexp -nocase -- {\S#} $who])} {
    switch $a {

on {
set type "broadcastpublic:show ON"
foreach tmr [timers] {
if {[string match "*broadcastpublic:show*" [join [lindex $tmr 1]]]} {
blacktools:tell $nick $host $hand $chan $chan1 autobroadcast.3 none
return 0
}
}
blacktools:tell $nick $host $hand $chan $chan1 autobroadcast.4 none
set file [open $sdir "r"]
set database [read -nonewline $file]
close $file
set data [split $database "\n"]
foreach line $data {
set lin [expr $lin +1]
set who [lindex  [split $line] 0]
set stats [lindex [split $line] 1]
if {[string match -nocase "broadcastpublic:show" $who]} {
if {$line != ""} {
set num [expr $lin - 1]
set delete [lreplace $data $num $num]
set files [open $sdir "w"]
puts $files [join $delete "\n"]
close $files
}
}
}
set file [open $sdir "r"]
set data [read -nonewline $file]
close $file
if {$data == ""} {
set files [open $sdir "w"]
close $files
}
set file [open $sdir "a"]
puts $file "$type"
close $file
timer $black(bttime) broadcastpublic:show
}

off {
blacktools:tell $nick $host $hand $chan $chan1 autobroadcast.5 none
set type "broadcastpublic:show OFF"
foreach tmr [timers] {
if {[string match -nocase "*broadcastpublic:show*" [join [lindex $tmr 1]]]} {
killtimer [lindex $tmr 2]
}
}
set file [open $sdir "r"]
set database [read -nonewline $file]
close $file
set data [split $database "\n"]
foreach line $data {
set lin [expr $lin +1]
set who [lindex  [split $line] 0]
set stats [lindex [split $line] 1]
if {[string match -nocase "broadcastpublic:show" $who]} {
if {$line != ""} {
set num [expr $lin - 1]
set delete [lreplace $data $num $num]
set files [open $sdir "w"]
puts $files [join $delete "\n"]
close $files
}
}
}
set file [open $sdir "r"]
set data [read -nonewline $file]
close $file
if {$data == ""} {
set files [open $sdir "w"]
close $files
}
set file [open $sdir "a"]
puts $file "$type"
close $file
}

add {
if {[file exists $dir] == 0} {
set file [open $dir a]
close $file
}
set file [open $dir a]
puts $file $message
close $file
blacktools:tell $nick $host $hand $chan $chan1 autobroadcast.6 none
blacktools:tell $nick $host $hand $chan $chan1 autobroadcast.7 $message
}

list {
if {[file exists $dir] == 0} {
set file [open $dir a]
close $file
}
set dir "logs/broadcast.txt"
set file [open $dir "r"]
set w [read -nonewline $file]
close $file
set data [split $w "\n"]
set i 0
if {$data == ""} { blacktools:tell $nick $host $hand $chan $chan1 autobroadcast.8 none
return 0
}
foreach mes $data {
set i [expr $i +1]
blacktools:tell $nick $host $hand $chan $chan1 autobroadcast.9 none
blacktools:tell $nick $host $hand $chan $chan1 autobroadcast.7 "$i. $mes"
}
}

del {

if {![regexp {^[0-9]} $number]} {
blacktools:tell $nick $host $hand $chan $chan1 autobroadcast.10 none
return 0
}

set dir "logs/broadcast.txt"
if {[file exists $dir] == 0} {
set file [open $dir a]
close $file
}

set file [open $dir "r"]
set data [read -nonewline $file]
close $file
set lines [split $data "\n"]
set i [expr $number - 1]
set delete [lreplace $lines $i $i]
set files [open $dir "w"]
puts $files [join $delete "\n"]
close $files
set file [open $dir "r"]
set data [read -nonewline $file]
close $file
if {$data == ""} {
set files [open $dir "w"]
close $files
}

blacktools:tell $nick $host $hand $chan $chan1 autobroadcast.11 $number
}

}
}
}


proc broadcastpublic:show {} {
global black
set dir "logs/broadcast.txt"
if {[file exists $dir] == 0} {
set file [open $dir a]
close $file
}
foreach chan [channels] {
if {[isdynamic $chan] && (![channel get $chan silent])} {
set file [open $dir "r"]
set data [read -nonewline $file]
close $file
set lines [split $data "\n"]
set numlines [llength $lines]
set random [rand $numlines]
set randomline [lindex $lines $random]
if {$black(bthow) == "1"} {
puthelp "PRIVMSG $chan :\001ACTION 1(BROADCAST) $randomline\001"
} else { 
puthelp "PRIVMSG $chan :1(BROADCAST) $randomline"
}
}
}
timer $black(bttime) broadcastpublic:show
return 1
}


################################# Limit ###################################


proc limitpublic {nick host hand chan arg} {
global black 
set why [lindex [split $arg] 0]
set lm [lindex [split $arg] 1]
set type 0
set chan1 "$chan"
if {[regexp {^[\\+!#&]} $why] && [matchattr $hand nm|- $chan]} {
set chan "$why"
set why [lindex [split $arg] 1]
set lm [lindex [split $arg] 2]
}
limit:process $nick $host $hand $chan $chan1 $why $lm $type
}

proc limit:process {nick host hand chan chan1  why lm type} {
global botnick black
set char(p) [lindex $black(cmdchar) 0]
if {[string match -nocase "$char(p)" "none"]} {
set char(p) ""
} 
if {[matchattr $hand nm|- $chan]} {
if {($why == "") && ($type == "0")} {
blacktools:tell $nick $host $hand $chan $chan1 limit.1 none
return 0
}
if {($why == "") && ($type == "1")} {
blacktools:tell $nick $host $hand $chan $chan1 limit.2 none
return 0
}
}
if {($why == "") && ($type == "0")} {
blacktools:tell $nick $host $hand $chan $chan1 limit.3 none
return 0
}
if {($why == "") && ($type == "1")} {
blacktools:tell $nick $host $hand $chan $chan1 limit.4 none
return 0
}

if {![validchan $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.novalidchan none
return 0
}

if {![onchan $botnick $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.notonchan none
return 0
}

set usersnum [llength [chanlist $chan]]
set setnum [channel get $chan blacklimit]

if {([regexp -nocase -- {(#[0-9]+|on|off|set|on|off)} $why tmp lmt]) && (![regexp -nocase -- {\S#} $why])} {
    switch $lmt {

on {
set limt [channel get $chan blacklimit]
channel set $chan +limit
blacktools:tell $nick $host $hand $chan $chan1 limit.5 none
if {($limt != "0")} {
putserv "MODE $chan +l [expr $usersnum + $limt]"
} else {
putserv "MODE $chan +l [expr $usersnum + 10]"
channel set $chan blacklimit 10
blacktools:tell $nick $host $hand $chan $chan1 limit.6 none
}
}
off {
channel set $chan -limit
blacktools:tell $nick $host $hand $chan $chan1 limit.7 none
putquick "MODE $chan -l"
}

set {
if {![regexp {^[0-9]} $lm]} {
blacktools:tell $nick $host $hand $chan $chan1 limit.8 none
return 0
}
if {$lm < 2} { blacktools:tell $nick $host $hand $chan $chan1 limit.9 none
channel set $chan blacklimit 2
putserv "MODE $chan +l [expr $usersnum + $lm]"
blacktools:tell $nick $host $hand $chan $chan1 limit.10 none
return 0
}
if {$lm > 500} { blacktools:tell $nick $host $hand $chan $chan1 limit.11 none
return 0
}

channel set $chan blacklimit $lm
blacktools:tell $nick $host $hand $chan $chan1 limit.12 $lm
putserv "MODE $chan +l [expr $usersnum + $lm]"
}

}
}
}

proc limit:timer {min hour day mon year} {
global black
foreach chan [channels] {
if {[channel get $chan limit]} {
set usersnum [llength [chanlist $chan]]
set setnum [channel get $chan blacklimit]
if {$setnum == "0"} { set setnum "10" }
if {![botisop $chan]} { return 0 }
set chanmode [getchanmode $chan]
if {[string match "*l*" "$chanmode"]} {
set lim [lindex $chanmode 1]
} else { set lim "0" }
if {$usersnum > $lim} { set dif [expr $usersnum - $lim] } else { set dif [expr $lim - $usersnum] }
if {($dif >= $setnum) || ($dif <= $setnum)} {
putserv "MODE $chan +l [expr $usersnum + $setnum]"
}

}
}
}





################################# Topic ###################################

proc topicpublic {nick host hand chan arg} {
global black
set nop [lindex [split $arg] 0]
set char(p) [lindex $black(cmdchar) 0]
if {[string match -nocase "$char(p)" "none"]} {
set char(p) ""
} 
set type 0
set chan1 "$chan"
set tp [join [lrange [split $arg] 1 end]]
set number [lindex [split $arg] 1]
if {[regexp {^[\\+!#&]} $nop] && [matchattr $hand nm|- $chan]} {
set chan "$nop"
set nop [lindex [split $arg] 1]
set tp [join [lrange [split $arg] 2 end]]
set number [lindex [split $arg] 2]
}
topic:process $nick $host $hand $chan $chan1 $nop $tp $number $type
}



proc topic:process {nick host hand chan chan1 nop tp number type} {
global botnick black
set char(p) [lindex $black(cmdchar) 0]
if {[string match -nocase "$char(p)" "none"]} {
set char(p) ""
} 
set dir "logs/topic($chan).txt"
if {[matchattr $hand nm|- $chan]} {
if {($nop == "") && ($type == "0")} {
blacktools:tell $nick $host $hand $chan $chan1 topic.1 none
return 0
}
if {($nop == "") && ($type == "1")} {
blacktools:tell $nick $host $hand $chan $chan1 topic.2 none
return 0
}
}
if {($nop == "") && ($type == "0")} {
blacktools:tell $nick $host $hand $chan $chan1 topic.3 none
return 0
}
if {($nop == "") && ($type == "1")} {
blacktools:tell $nick $host $hand $chan $chan1 topic.4 none
return 0
}
if {![validchan $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.novalidchan none
return 0
}
if {![onchan $botnick $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.notonchan none
return 0
}


 if {([regexp -nocase -- {(#[0-9]+|save|list|add|del|set)} $nop tmp topc]) && (![regexp -nocase -- {\S#} $nop])} {
    switch $topc {

 save {
set t [join [topic $chan]]
if {$t == ""} { blacktools:tell $nick $host $hand $chan $chan1 topic.5 none
return 0
}

if {[file exists $dir] == 0} {
set file [open $dir w]
close $file
}
set file [open $dir a]
puts $file $t
close $file
blacktools:tell $nick $host $hand $chan $chan1 topic.6 none
}

add {

if {[file exists $dir] == 0} {
set file [open $dir w]
close $file
}
set file [open $dir a]
puts $file $tp
close $file
blacktools:tell $nick $host $hand $chan $chan1 topic.7 none
}

list {

if {[file exists $dir] == 0} {
set file [open $dir w]
close $file
}
set file [open $dir "r"]
set w [read -nonewline $file]
close $file
set data [split $w "\n"]
set i 0
if {$data == ""} { blacktools:tell $nick $host $hand $chan $chan1 topic.8 none
return 0
}
foreach ts $data {
set i [expr $i +1]
blacktools:tell $nick $host $hand $chan $chan1 topic.9 none
blacktools:tell $nick $host $hand $chan $chan1 topic.10 "$i. $ts"
}
}

del {

if {![regexp {^[0-9]} $number]} {
blacktools:tell $nick $host $hand $chan $chan1 topic.11 none
return 0
}

if {[file exists $dir] == 0} {
set file [open $dir w]
close $file
}

set file [open $dir "r"]
set data [read -nonewline $file]
close $file
set lines [split $data "\n"]
set i [expr $number - 1]
set delete [lreplace $lines $i $i]
set files [open $dir "w"]
puts $files [join $delete "\n"]
close $files
set file [open $dir "r"]
set data [read -nonewline $file]
close $file
if {$data == ""} {
set files [open $dir "w"]
close $files
}
blacktools:tell $nick $host $hand $chan $chan1 topic.12 $number
}

set {
if {$number == ""} { blacktools:tell $nick $host $hand $chan $chan1 topic.13 none
return 0
}
set file [open $dir "r"]
set data [read -nonewline $file]
close $file
set lines [split $data "\n"]
set num [expr $number - 1]
set line [lindex $lines $num]
putquick "TOPIC $chan :Setting topic.."
puthelp "TOPIC $chan :$line"
blacktools:tell $nick $host $hand $chan $chan1 topic.14 $number
}

}
}
}


################################# Seen ###################################


proc seen:save:2 {nick chan host type time staytimer reason} {
global seendir
set lin 0
set j 0
set who "$type $chan $nick $host $time $staytimer $reason"
set file [open $seendir "r"]
set database [read -nonewline $file]
close $file
set data [split $database "\n"]
foreach line $data {
set lin [expr $lin +1]
set userentry [lindex  [split $line] 2]
set chanentry [lindex [split $line] 1]
if {[string equal -nocase $userentry $nick] && [string match -nocase $chanentry $chan]} {
set joined [lindex [split $line] 0]
if {$joined == "JOIN"} {
set j [lindex [split $line] 4]
if {![regexp {^[0-9]} $j] || ($j == "")} {
set j 0
}
}
set who "$type $chan $nick $host $time $j $reason"
if {$line != ""} {
set num [expr $lin - 1]
set delete [lreplace $data $num $num]
set files [open $seendir "w"]
puts $files [join $delete "\n"]
close $files
}
}
}
set file [open $seendir "r"]
set data [read -nonewline $file]
close $file
if {$data == ""} {
set files [open $seendir "w"]
close $files
}
set file [open $seendir "a"]
puts $file "$who"
close $file
}

proc seen:save:1 {nick chan host type time staytimer} {
global seendir
set lin 0
set who "$type $chan $nick $host $time $staytimer"
set file [open $seendir "r"]
set database [read -nonewline $file]
close $file
set data [split $database "\n"]
foreach line $data {
set lin [expr $lin +1]
set userentry [lindex  [split $line] 2]
set chanentry [lindex [split $line] 1]
if {[string equal -nocase $userentry $nick] && [string match -nocase $chanentry $chan]} {
if {$line != ""} {
set num [expr $lin - 1]
set delete [lreplace $data $num $num]
set files [open $seendir "w"]
puts $files [join $delete "\n"]
close $files
}
}
}
set file [open $seendir "r"]
set data [read -nonewline $file]
close $file
if {$data == ""} {
set files [open $seendir "w"]
close $files
}
set file [open $seendir "a"]
puts $file "$who"
close $file
}


proc seen:join {nick host hand chan} {
global seendir botnick
if {![channel get $chan seen]} {
return 0
}
if {[isbotnick $nick]} { return 0 }
set time [unixtime]
set host "*!$host"
set type "JOIN"
set staytimer "0"
seen:save:1 $nick $chan $host $type $time $staytimer
}


proc seen:part {nick host hand chan arg} {
global seendir botnick
if {![validchan $chan]} { return 0 }
if {![channel get $chan seen]} {
return 0
}
set time [unixtime]
set staytimer "0"
set type "PART"
set reason [join [lrange [split $arg] 0 end]]
if {$reason == ""} { set reason "No Reason" }
set host "*!$host"
if {[isbotnick $nick]} { return 0 }
seen:save:2 $nick $chan $host $type $time $staytimer $reason
}

proc seen:sign {nick host hand chan arg} {
global seendir botnick
if {![validchan $chan]} { return 0 }
if {![channel get $chan seen]} {
return 0
}
set time [unixtime]
set staytimer "0"
set type "SIGN"
set host "*!$host"
set reason [join [lrange [split $arg] 0 end]]
if {$reason == ""} { set reason "No Reason" }
if {[isbotnick $nick]} { return 0 }
seen:save:2 $nick $chan $host $type $time $staytimer $reason
}


proc seen:kick {nick host hand chan kicked reason} {
global seendir botnick
if {![validchan $chan]} { return 0 }
if {![channel get $chan seen]} {
return 0
}
set lin 0
set j 0
set time [unixtime]
set hosted [getchanhost $kicked $chan]
set hosted "*!$hosted"
set reason [join [lrange [split $reason] 1 end]]
if {$reason == ""} { set reason "No Reason" }
if {[isbotnick $kicked]} { return 0 }
set who "KICK $chan $kicked $hosted $time 0 $reason"
set file [open $seendir "r"]
set database [read -nonewline $file]
close $file
set data [split $database "\n"]
foreach line $data {
set lin [expr $lin +1]
set userentry [lindex [split $line] 2]
set chanentry [lindex [split $line] 1]
if {[string equal -nocase $kicked $userentry] && [string match -nocase $chanentry $chan]} {
set joined [lindex [split $line] 0]
if {$joined == "JOIN"} {
set j [lindex [split $line] 4]
if {![regexp {^[0-9]} $j] || ($j == "")} {
set j 0
}
}
set who "KICK $chan $kicked $hosted $time $j $reason"
if {$line != ""} {
set num [expr $lin - 1]
set delete [lreplace $data $num $num]
set files [open $seendir "w"]
puts $files [join $delete "\n"]
close $files
}
}
}
set file [open $seendir "r"]
set data [read -nonewline $file]
close $file
if {$data == ""} {
set files [open $seendir "w"]
close $files
}
set file [open $seendir "a"]
puts $file "$who"
close $file
}


proc seen:split {nick host hand chan args} {
global seendir botnick
if {![validchan $chan]} { return 0 }
if {![channel get $chan seen]} {
return 0
}
set time [unixtime]
set staytimer "0"
set type "SPLIT"
set host "*!$host"
set reason [join [lrange [split $args] 0 end]]
if {[isbotnick $nick]} { return 0 }
seen:save:2 $nick $chan $host $type $time $staytimer $reason
}


proc seen:changenick {nick host hand chan newnick} {
global seendir botnick
if {![channel get $chan seen]} {
return 0
}
set time [unixtime]
set host "*!$host"
set staytimer "0"
set type "NICKCHANGE"
if {[isbotnick $nick]} { return 0 }
seen:save:2 $nick $chan $host $type $time $staytimer $newnick
}

proc seenpublic {nick host hand chan arg} {
global black
if {![channel get $chan seen]} {
return 0
}
set type 0
set chan1 "$chan"
set what [lindex [split $arg] 0]
if {[regexp {^[\\+!#&]} $what] && [matchattr $hand nm|- $chan]} {
set chan1 "$chan"
set chan "$what"
set what [lindex [split $arg] 1]
}
seen:process $nick $host $hand $chan $chan1 $what $type
}



proc seen:process {nick host hand chan chan1 what type} {
global seendir black count botnick
set number [scan $black(seenflood) %\[^:\]]
set timer [scan $black(seenflood) %*\[^:\]:%s]
set i 0
set char(p) [lindex $black(cmdchar) 0]
if {[string match -nocase "$char(p)" "none"]} {
set char(p) ""
} 
if {[matchattr $hand nm|- $chan]} {
if {($what == "") && ($type == "0")} {
blacktools:tell $nick $host $hand $chan $chan1 seen.1 none
return 0
}
if {($what == "") && ($type == "1")} {
blacktools:tell $nick $host $hand $chan $chan1 seen.2 none
return 0
}
}
if {($what == "") && ($type == "0")} {
blacktools:tell $nick $host $hand $chan $chan1 seen.3 none
return 0
}
if {($what == "") && ($type == "1")} {
blacktools:tell $nick $host $hand $chan $chan1 seen.4 none
return 0
}
if {![validchan $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.novalidchan none
return 0
}
if {![onchan $botnick $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.notonchan none
return 0
}
foreach tmr [utimers] {
if {[string match "*count(flood:$host:$chan)*" [join [lindex $tmr 1]]]} {
killutimer [lindex $tmr 2]
}
}
if {![info exists count(flood:$host:$chan)]} { 
set count(flood:$host:$chan) 0 
}
incr count(flood:$host:$chan)
utimer $timer [list unset count(flood:$host:$chan)]

if {$count(flood:$host:$chan) == "$number"} {
blacktools:tell $nick $host $hand $chan $chan1 seen.5 none
return 0
}

if {[string match -nocase $what $nick]} { blacktools:tell $nick $host $hand $chan $chan1 seen.6 $nick
return 0
}
if {[onchan $what $chan]} { blacktools:tell $nick $host $hand $chan $chan1 seen.7 $what
return 0
}

set file [open $seendir "r"]
set database [read -nonewline $file]
close $file
set data [split $database "\n"]
foreach line $data {
set userentry [lindex [split $line] 2]
set chanentry [lindex [split $line] 1]
set host [lindex [split $line] 3]
set tm [lindex [split $line] 4]
set jointime [lindex [split $line] 5]
set newnick [lindex [split $line] 6]
set reason [lrange [split $line] 6 end]
if {!([regexp {^[0-9]} $jointime]) || ($jointime == "")} {
set jointime 0
set reason [lrange [split $line] 5 end]
}
if {$reason == ""} { set reason "No Reason" }
set output [duration [expr [unixtime] - $tm]]
set staytime [expr [unixtime] - $jointime]
set staytime [duration [expr $tm - $jointime]]

set getlang [string tolower [channel get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }

set date [clock format $tm -format %d.%m.]
set hour [clock format $tm -format %H:%M]

if {$what == "*!*@*"} { return 0 }
if {([string equal -nocase $userentry $what] || [string match -nocase $what $userentry] || [string match -nocase $what $host]) && [string match -nocase $chanentry $chan]} {
set i [expr $i +1]
set host [string trim $host "*!~"]
if {$i < 6} {
lappend entry $userentry
}
set seenfound 1
set entry [lsort -unique $entry]
set replace(%entry%) "[join $entry ","]"
set replace(%host%) "$host"
set replace(%output%) "$output"
set replace(%date%) "($date $hour)"
set replace(%newnick%) "$newnick"
set replace(%userentry%) "$userentry"
set replace(%chan%) "$chan"
set replace(%reason%) "$reason"
set replace(%staytime%) "$staytime"
if {$jointime == "0"} { set staymsg "[string map [array get replace] $black(say.$getlang.seen.8)]"
set replace(%staymsg%) "$staymsg"
} else {
 set staymsg "[string map [array get replace] $black(say.$getlang.seen.9)]"
set replace(%staymsg%) "$staymsg"
}
if {[lindex [split $line] 0] == "PART"} {
set reply "[string map [array get replace] $black(say.$getlang.seen.12)]"
}
if {[lindex [split $line] 0] == "SIGN"} {
set reply "[string map [array get replace] $black(say.$getlang.seen.13)]"
}
if {[lindex [split $line] 0] == "JOIN"} {
if {[onchan $userentry $chan]} { 
set nowon "[string map [array get replace] $black(say.$getlang.seen.10)]"
set replace(%nowon%) "$nowon"
} else { 
set nowon "[string map [array get replace] $black(say.$getlang.seen.11)]"
set replace(%nowon%) "$nowon"
}
set reply "[string map [array get replace] $black(say.$getlang.seen.14)]"
}
if {[lindex [split $line] 0] == "SPLIT"} {
set reply "[string map [array get replace] $black(say.$getlang.seen.15)]"
}
if {[lindex [split $line] 0] == "KICK"} {
set reply "[string map [array get replace] $black(say.$getlang.seen.16)]"
}
if {[lindex [split $line] 0] == "NICKCHANGE"} {
if {[onchan $newnick $chan]} { 
set nowon "[string map [array get replace] $black(say.$getlang.seen.10)]"
set replace(%nowon%) "$nowon"
} else {
set nowon "[string map [array get replace] $black(say.$getlang.seen.11)]"
set replace(%nowon%) "$nowon"
}
set reply "[string map [array get replace] $black(say.$getlang.seen.17)]"
}
}

if {$black(seenmet) == "1"} {
set method "NOTICE"
set onwho "$nick"
} else { 
set method "PRIVMSG"
set onwho "$chan1"
}
}
if {[info exists reply]} {
puthelp "$method $onwho :$reply"
}

if {![info exists seenfound]} {
blacktools:tell $nick $host $hand $chan $chan1 seen.18 $what
}
}

############################### Greet #####################################


proc greetpublic {nick host hand chan arg} {
global black
set who [lindex [split $arg] 0]
set type 0
set chan1 "$chan"
set greet [join [lrange [split $arg] 1 end]]
set number [lindex [split $arg] 1]
if {[regexp {^[\\+!#&]} $who] && [matchattr $hand nm|- $chan]} {
set chan "$who"
set who [lindex [split $arg] 1]
set greet [join [lrange [split $arg] 2 end]]
set number [lindex [split $arg] 2]
}
greet:process $who $greet $number $type $nick $host $hand $chan $chan1
}

proc greet:process {who greet number type nick host hand chan chan1} {
global botnick black
set dir "logs/greet($chan).txt"
set char(p) [lindex $black(cmdchar) 0]
if {[string match -nocase "$char(p)" "none"]} {
set char(p) ""
} 
if {[matchattr $hand nm|- $chan]} {
if {($who == "") && ($type == "0")} {
blacktools:tell $nick $host $hand $chan $chan1 greet.1 none
blacktools:tell $nick $host $hand $chan $chan1 greet.2 none
return 0
}
if {($who == "") && ($type == "1")} {
blacktools:tell $nick $host $hand $chan $chan1 greet.3 none
blacktools:tell $nick $host $hand $chan $chan1 greet.4 none
return 0
}
}
if {($who == "") && ($type == "0")} {
blacktools:tell $nick $host $hand $chan $chan1 greet.5 none
return 0
}
if {($who == "") && ($type == "1")} {
blacktools:tell $nick $host $hand $chan $chan1 greet.6 none
return 0
}

if {![validchan $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.novalidchan none
return 0
}
if {![onchan $botnick $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.notonchan none
return 0
}

if {([regexp -nocase -- {(#[0-9]+|on|off|add|list|del)} $who tmp a]) && (![regexp -nocase -- {\S#} $who])} {
    switch $a {
on {
channel set $chan +greet
blacktools:tell $nick $host $hand $chan $chan1 greet.7 none
}

off {
channel set $chan -greet
blacktools:tell $nick $host $hand $chan $chan1 greet.8 none
}

add {

if {[file exists $dir] == 0} {
set file [open $dir w]
close $file
}
set file [open $dir a]
puts $file $greet
close $file
blacktools:tell $nick $host $hand $chan $chan1 greet.9 none
blacktools:tell $nick $host $hand $chan $chan1 greet.10 $greet
}

list {

if {[file exists $dir] == 0} {
set file [open $dir a]
close $file
}
set dir "logs/greet($chan).txt"
set file [open $dir "r"]
set w [read -nonewline $file]
close $file
set data [split $w "\n"]
set i 0
if {$data == ""} { blacktools:tell $nick $host $hand $chan $chan1 greet.11 none
return 0
}
foreach mes $data {
set i [expr $i +1]
blacktools:tell $nick $host $hand $chan $chan1 greet.12 none
blacktools:tell $nick $host $hand $chan $chan1 greet.10 "$i. $mes"
}
}

del {

if {![regexp {^[0-9]} $number]} {
blacktools:tell $nick $host $hand $chan $chan1 greet.13 none
return 0
}

set dir "logs/greet($chan).txt"
if {[file exists $dir] == 0} {
set file [open $dir w]
close $file
}

set file [open $dir "r"]
set data [read -nonewline $file]
close $file
set lines [split $data "\n"]
set i [expr $number - 1]
set delete [lreplace $lines $i $i]
set files [open $dir "w"]
puts $files [join $delete "\n"]
close $files
set file [open $dir "r"]
set data [read -nonewline $file]
close $file
if {$data == ""} {
set files [open $dir "w"]
close $files
}

blacktools:tell $nick $host $hand $chan $chan1 greet.14 $number
blacktools:tell $nick $host $hand $chan $chan1 greet.15 none
}

}
}
}


proc greetpublic:join {nick host hand chan} {
global black
set dir "logs/greet($chan).txt"
if {![validchan $chan]} { return 0 }
if {[channel get $chan greet]} {
if {[file exists $dir] == 0} {
set file [open $dir w]
close $file
}
if {[isbotnick $nick]} { return 0 }
set replace(%nick%) $nick
set file [open $dir "r"]
set data [read -nonewline $file]
close $file
if {$data == ""} { return 0 }
set lines [split $data "\n"]
set numlines [llength $lines]
set random [rand $numlines]
set randomline [lindex $lines $random]
set message [string map [array get replace] $randomline]
if {$black(howgreet) == "1"} {
puthelp "NOTICE $nick :$message"
} else { puthelp "PRIVMSG $nick :$message" }
}
}

################################ Leave ###################################

proc leave:process {who leave number type nick host hand chan chan1} {
global botnick black
set char(p) [lindex $black(cmdchar) 0]
if {[string match -nocase "$char(p)" "none"]} {
set char(p) ""
} 
set dir "logs/leave($chan).txt"
if {[matchattr $hand nm|- $chan]} {
if {($who == "") && ($type == "0")} {
blacktools:tell $nick $host $hand $chan $chan1 leave.1 none
blacktools:tell $nick $host $hand $chan $chan1 leave.2 none
return 0
}
if {($who == "") && ($type == "1")} {
blacktools:tell $nick $host $hand $chan $chan1 leave.3 none
blacktools:tell $nick $host $hand $chan $chan1 leave.4 none
return 0
}
}
if {($who == "") && ($type == "0")} {
blacktools:tell $nick $host $hand $chan $chan1 leave.5 none
return 0
}
if {($who == "") && ($type == "1")} {
blacktools:tell $nick $host $hand $chan $chan1 leave.6 none
return 0
}


if {![validchan $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.novalidchan none
return 0
}
if {![onchan $botnick $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.notonchan none
return 0
}

if {([regexp -nocase -- {(#[0-9]+|on|off|add|list|del)} $who tmp a]) && (![regexp -nocase -- {\S#} $who])} {
    switch $a {
on {
channel set $chan +leave
blacktools:tell $nick $host $hand $chan $chan1 leave.7 none
}

off {
channel set $chan -leave
blacktools:tell $nick $host $hand $chan $chan1 leave.8 none
}

add {

if {[file exists $dir] == 0} {
set file [open $dir w]
close $file
}
set file [open $dir a]
puts $file $leave
close $file
blacktools:tell $nick $host $hand $chan $chan1 leave.9 none
blacktools:tell $nick $host $hand $chan $chan1 leave.10 $leave
}

list {

if {[file exists $dir] == 0} {
set file [open $dir w]
close $file
}
set dir "logs/leave($chan).txt"
set file [open $dir "r"]
set w [read -nonewline $file]
close $file
set data [split $w "\n"]
set i 0
if {$data == ""} { blacktools:tell $nick $host $hand $chan $chan1 leave.11 none
return 0
}
foreach mes $data {
set i [expr $i +1]
blacktools:tell $nick $host $hand $chan $chan1 leave.12 none
blacktools:tell $nick $host $hand $chan $chan1 leave.10 "$i. $mes"
}
}

del {
if {![regexp {^[0-9]} $number]} {
blacktools:tell $nick $host $hand $chan $chan1 leave.13 none
return 0
}

set dir "logs/leave($chan).txt"
if {[file exists $dir] == 0} {
set file [open $dir w]
close $file
}

set file [open $dir "r"]
set data [read -nonewline $file]
close $file
set lines [split $data "\n"]
set i [expr $number - 1]
set delete [lreplace $lines $i $i]
set files [open $dir "w"]
puts $files [join $delete "\n"]
close $files
set file [open $dir "r"]
set data [read -nonewline $file]
close $file
if {$data == ""} {
set files [open $dir "w"]
close $files
}

blacktools:tell $nick $host $hand $chan $chan1 leave.14 $number
blacktools:tell $nick $host $hand $chan $chan1 leave.15 none
}

}
}
}



proc leavepublic {nick host hand chan arg} {
global black
set char(p) [lindex $black(cmdchar) 0]
if {[string match -nocase "$char(p)" "none"]} {
set char(p) ""
} 
set dir "logs/leave($chan).txt"
set type 0
set chan1 "$chan"
set who [lindex [split $arg] 0]
set leave [join [lrange [split $arg] 1 end]]
set number [lindex [split $arg] 1]
if {[regexp {^[\\+!#&]} $who] && [matchattr $hand nm|- $chan]} {
set chan "$who"
set who [lindex [split $arg] 1]
set leave [join [lrange [split $arg] 2 end]]
set number [lindex [split $arg] 2]
}
leave:process $who $leave $number $type $nick $host $hand $chan $chan1
}



proc leavepublic:part {nick host hand chan args} {
global black
set dir "logs/leave($chan).txt"
if {![validchan $chan]} { return 0 }
if {[channel get $chan leave]} {
if {[file exists $dir] == 0} {
set file [open $dir w]
close $file
}
if {[isbotnick $nick]} { return 0 }
set replace(%nick%) $nick
set file [open $dir "r"]
set data [read -nonewline $file]
close $file
if {$data == ""} { return 0 }
set lines [split $data "\n"]
set numlines [llength $lines]
set random [rand $numlines]
set randomline [lindex $lines $random]
set message [string map [array get replace] $randomline]
if {$black(howleave) == "1"} {
puthelp "NOTICE $nick :$message"
} else { puthelp "PRIVMSG $nick :$message" }
}
}

################################ Idle ###################################


proc antidlepublic {nick host hand chan arg} {
global black
set char(p) [lindex $black(cmdchar) 0]
if {[string match -nocase "$char(p)" "none"]} {
set char(p) ""
} 
set type1 0
set chan1 "$chan"
set why [lindex [split $arg] 0]
set type [lindex [split $arg] 1]
set user [lindex [split $arg] 1]
set host [lindex [split $arg] 2]
if {[regexp {^[\\+!#&]} $why] && [matchattr $hand nm|- $chan]} {
set chan "$why"
set why [lindex [split $arg] 1]
set type [lindex [split $arg] 2]
set user [lindex [split $arg] 2]
set host [lindex [split $arg] 3]
}
antidle:process $why $type $type1 $user $host $nick $hand $chan $chan1
}

proc antidle:process {why type type1 user host nick hand chan chan1} {
global botnick black
set flag "-|f"
set char(p) [lindex $black(cmdchar) 0]
if {[string match -nocase "$char(p)" "none"]} {
set char(p) ""
} 
set handle [nick2hand $user]
if {[matchattr $hand nm|- $chan]} {
if {($why == "") && ($type1 == "0")} {
blacktools:tell $nick $host $hand $chan $chan1 idle.1 none
blacktools:tell $nick $host $hand $chan $chan1 idle.2 none
return 0
}
if {($why == "") && ($type1 == "1")} {
blacktools:tell $nick $host $hand $chan $chan1 idle.3 none
blacktools:tell $nick $host $hand $chan $chan1 idle.4 none
return 0
}
}
if {($why == "") && ($type1 == "0")} {
blacktools:tell $nick $host $hand $chan $chan1 idle.5 none
return 0
}
if {($why == "") && ($type1 == "1")} {
blacktools:tell $nick $host $hand $chan $chan1 idle.6 none
return 0
}
if {![validchan $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.novalidchan none
return 0
}
if {![onchan $botnick $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.notonchan none
return 0
}

if {([regexp -nocase -- {(#[0-9]+|op|voice|add|on|off)} $why tmp idler]) && (![regexp -nocase -- {\S#} $why])} {
    switch $idler {
on {
 channel set $chan +antidle
blacktools:tell $nick $host $hand $chan $chan1 idle.7 none
}
off {

 channel set $chan -antidle
blacktools:tell $nick $host $hand $chan $chan1 idle.8 none
}

op {
 if {$type == ""} { blacktools:tell $nick $host $hand $chan $chan1 idle.9 none
return 0
}
if {[string match -nocase $type "on"]} {
if {[channel get $chan antidle]} { set antidle "on" } else { set antidle "off"}
if {$antidle == "off"} { blacktools:tell $nick $host $hand $chan $chan1 idle.10 none
return 0
}
channel set $chan +antididle
blacktools:tell $nick $host $hand $chan $chan1 idle.11 none
}

if {[string match -nocase $type "off"]} {
if {[channel get $chan antidle]} { set antidle "on" } else { set antidle "off"}
if {$antidle == "off"} { blacktools:tell $nick $host $hand $chan $chan1 idle.10 none
return 0
}
channel set $chan -antididle
blacktools:tell $nick $host $hand $chan $chan1 idle.12 none
}
}

voice {
 if {$type == ""} { blacktools:tell $nick $host $hand $chan $chan1 idle.13 none
return 0
}

if {[string match -nocase $type "on"]} {

if {[channel get $chan antidle]} { set antidle "on" } else { set antidle "off"}
if {$antidle == "off"} { blacktools:tell $nick $host $hand $chan $chan1 idle.10 none
return 0
}
channel set $chan +antividle
blacktools:tell $nick $host $hand $chan $chan1 idle.14 none
}

if {[string match -nocase $type "off"]} {
if {[channel get $chan antidle]} { set antidle "on" } else { set antidle "off"}
if {$antidle == "off"} { blacktools:tell $nick $host $hand $chan $chan1 idle.10 none
return 0
}

channel set $chan -antividle
blacktools:tell $nick $host $hand $chan $chan1 idle.15 none
}
}

add {

if {$user == ""} { blacktools:tell $nick $host $hand $chan $chan1 idle.16 none
return 0
}

if {(![onchan $user $chan]) && (![validuser $user])} { blacktools:tell $nick $host $hand $chan $chan1 idle.17 $user
return 0
}

if {[validuser $user]} { 
chattr $user $flag $chan
blacktools:tell $nick $host $hand $chan $chan1 idle.18 $user
} else {
set hosts [getchanhost $user $chan]
set uhost "*!*@[lindex [split $hosts @] 1]"
adduser $user $uhost
chattr $user $flag $chan
blacktools:tell $nick $host $hand $chan $chan1 idle.19 "$user $uhost"
}
}

}
}
}



proc idlewhoispublic {min hour day mon year} {
global black botnick
if {([scan $min %d]+([scan $hour %d]*60)) % $black(idleinterval) == 0} {
foreach chan [channels] {
if {[channel get $chan antidle]} {
foreach user [chanlist $chan] { 
set user [split $user]
set handle [nick2hand $user]
if {[isop $user $chan] || [isvoice $user $chan]} { 
if {$user != $botnick} { putserv "WHOIS $user $user" }
} 
} 
} 
}
}

bind raw - 317 idleprocespublic
}

proc idleprocespublic {nick int arg} {
global black
set nick [string tolower [lindex $arg 1]]
set handle [nick2hand $nick]
set idler [string tolower [lindex $arg 2]]
set minutesidle [expr $idler / 60]
foreach chan [channels] {
set replace(%chan%) $chan
set idlevoicetime [channel get $chan idlevoicemax]
if {$idlevoicetime == "0"} { set idlevoicetime "$black(idlevoicemax)" }
set idleoptime [channel get $chan idleopmax]
if {$idleoptime == "0"} { set idleoptime "$black(idleopmax)" }
if {[channel get $chan antividle]} {
if {[isvoice $nick $chan] && ![matchattr $handle -|f $chan]} {
if {$minutesidle > $idlevoicetime} {
putserv "MODE $chan -v $nick"
}
}
}
if {[channel get $chan antididle]} {
if {[isop $nick $chan] && ![matchattr $handle -|f $chan]} {
if {$minutesidle > $idleoptime} {
putserv "MODE $chan -o $nick"
}
}
}

}
}


######################################### AntiBotIdle #############################


proc botidlepublic {nick host hand chan arg} {
global black botnick sdir
set what [lindex [split $arg] 0]
set lin 0
set chan1 "$chan"
set char(p) [lindex $black(cmdchar) 0]
if {[string match -nocase "$char(p)" "none"]} {
set char(p) ""
} 
if {$what == ""} { blacktools:tell $nick $host $hand $chan $chan1 antibotidle.1 none
return 0
}
botidle:process $nick $host $hand $chan $chan1 $what
}

proc botidle:process {nick host hand chan chan1 what} {
global botnick black sdir
set lin 0
switch -exact -- [string tolower $what] {
on {
set type "antibotidle:module ON"
foreach tmr [timers] {
if {[string match "*antibotidle:module*" [join [lindex $tmr 1]]]} {
blacktools:tell $nick $host $hand $chan $chan1 antibotidle.3 none
return 0
}
}
set file [open $sdir "r"]
set database [read -nonewline $file]
close $file
set data [split $database "\n"]
foreach line $data {
set lin [expr $lin +1]
set who [lindex  [split $line] 0]
set stats [lindex [split $line] 1]
if {[string match -nocase "antibotidle:module" $who]} {
if {$line != ""} {
set num [expr $lin - 1]
set delete [lreplace $data $num $num]
set files [open $sdir "w"]
puts $files [join $delete "\n"]
close $files
}
}
}
set file [open $sdir "r"]
set data [read -nonewline $file]
close $file
if {$data == ""} {
set files [open $sdir "w"]
close $files
}
set file [open $sdir "a"]
puts $file "$type"
close $file
blacktools:tell $nick $host $hand $chan $chan1 antibotidle.4 none
timer $black(noidlemax) antibotidle:module
}

off {
blacktools:tell $nick $host $hand $chan $chan1 antibotidle.5 none
set type "antibotidle:module OFF"
foreach tmr [timers] {
if {[string match "*antibotidle:module*" [join [lindex $tmr 1]]]} {
killtimer [lindex $tmr 2]
}
}
set file [open $sdir "r"]
set database [read -nonewline $file]
close $file
set data [split $database "\n"]
foreach line $data {
set lin [expr $lin +1]
set who [lindex  [split $line] 0]
set stats [lindex [split $line] 1]
if {[string match -nocase "antibotidle:module" $who]} {
if {$line != ""} {
set num [expr $lin - 1]
set delete [lreplace $data $num $num]
set files [open $sdir "w"]
puts $files [join $delete "\n"]
close $files
}
}
}
set file [open $sdir "r"]
set data [read -nonewline $file]
close $file
if {$data == ""} {
set files [open $sdir "w"]
close $files
}
set file [open $sdir "a"]
puts $file "$type"
close $file
}

}
}


proc antibotidle:module {} {
global black
putquick "PRIVMSG $black(noobject) :"
timer $black(noidlemax) antibotidle:module
return 1
}

######################################## Comenzi #####################################

proc drpublic {nick host hand chan arg} {
global botnick black
set drone [lindex [split $arg] 0]
set chan1 "$chan"
set mask [lindex [split $arg] 0]
set type "0"
foreach c [channels] {
set backchan [channel get $c backchan]
if {[string match -nocase $chan $backchan] && [channel get $c chanreport]} {
set chan "$c"
}
}
if {[regexp {^[#&]} $drone] && [matchattr $hand nm|- $chan]} {
set chan "$drone"
set drone [lindex [split $arg] 1]
set mask [lindex [split $arg] 1]
}
dr:process $drone $mask $nick $hand $host $chan $chan1 $type
}


proc dr:process {drone mask nick hand host chan chan1 type} {
global botnick black
set char(p) [lindex $black(cmdchar) 0]
if {[string match -nocase "$char(p)" "none"]} {
set char(p) ""
} 
set handle [nick2hand $drone]
if {![validchan $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.novalidchan none
return 0
}
if {![onchan $botnick $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.notonchan none
return 0
}
set list [userlist $black(exceptflags) $chan]
set getreason [channel get $chan dr-reason]
if {$getreason == ""} {
set getlang [string tolower [channel get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
set getreason $black(say.$getlang.dr.5)
}
if {[channel get $chan showhandle]} {
set reason "($hand) $getreason"
} else { set reason "$getreason" 
}
set getbantime [channel get $chan dr-bantime]
if {$getbantime == "0"} { set getbantime $black(drtime) }
if {[matchattr $hand -|q $chan]} { blacktools:tell $nick $host $hand $chan $chan1 gl.suspend none
return 0
}
foreach user $list {
 set hosts [getuser $user hosts]
foreach host $hosts {
if {[string match -nocase $mask $host]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.noban none
 return 0
}
}
}

if {[matchattr $handle $black(exceptflags) $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.noban none
 return 0
}
if {$mask == "*!*@*"} {
 return 0
}

if {[isbotnick $drone]} {
return 0
}
if {![botisop $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.noop none
return 0
}
if {[onchan $drone $chan]} {
set mask *!*@[lindex [split [getchanhost $drone $chan] "@"] 1] 
}
if {[matchattr $hand nm|- $chan]} {
if {($drone == "") && ($type == "0")} {
blacktools:tell $nick $host $hand $chan $chan1 dr.1 none
return 0
}
if {($drone == "") && ($type == "1")} {
blacktools:tell $nick $host $hand $chan $chan1 dr.2 none
return 0
}
}
if {($drone == "") && ($type == "0")} {
blacktools:tell $nick $host $hand $chan $chan1 dr.3 none
return 0
}
if {($drone == "") && ($type == "1")} {
blacktools:tell $nick $host $hand $chan $chan1 dr.4 none
return 0
}

blacktools:banner:3 $mask $hand $chan $reason $getbantime DR($chan)
}



proc botpublic {nick host hand chan arg} {
global botnick black
set bot [lindex [split $arg] 0]
set mask [lindex [split $arg] 0]
set type 0
set chan1 "$chan"
foreach c [channels] {
set backchan [channel get $c backchan]
if {[string match -nocase $chan $backchan] && [channel get $c chanreport]} {
set chan "$c"
}
}
if {[regexp {^[\\+!#&]} $bot] && [matchattr $hand nm|- $chan]} {
set chan "$bot"
set bot [lindex [split $arg] 1]
set mask [lindex [split $arg] 1]
}
bot:process $bot $mask $nick $hand $host $chan $chan1 $type
}

proc bot:process {bot mask nick hand host chan chan1 type} {
global black botnick
set handle [nick2hand $bot]
set char(p) [lindex $black(cmdchar) 0]
if {[string match -nocase "$char(p)" "none"]} {
set char(p) ""
} 
if {![validchan $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.novalidchan none
return 0
}
if {![onchan $botnick $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.notonchan none
return 0
}
set list [userlist $black(exceptflags) $chan]
set getreason [channel get $chan bot-reason]
if {$getreason == ""} {
set getlang [string tolower [channel get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
set getreason $black(say.$getlang.bot.5)
}
if {[channel get $chan showhandle]} {
set reason "($hand) $getreason"
} else { set reason "$getreason" 
}
set getbantime [channel get $chan bot-bantime]
if {$getbantime == "0"} { set getbantime $black(bottime) }
if {[matchattr $hand -|q $chan]} { blacktools:tell $nick $host $hand $chan $chan1 gl.suspend none
return 0
}
foreach user $list {
 set hosts [getuser $user hosts]
foreach host $hosts {
if {[string match -nocase $mask $host]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.noban none
 return 0
}
}
}

if {[matchattr $handle $black(exceptflags) $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.noban none
 return 0
}
if {$mask == "*!*@*"} {
 return 0
}

if {[isbotnick $bot]} {
return 0
}
if {![botisop $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.noop none
return 0
}
if {[onchan $bot $chan]} {
set mask *!*@[lindex [split [getchanhost $bot $chan] "@"] 1] 
}
if {[matchattr $hand nm|- $chan]} {
if {($bot == "") && ($type == "0")} {
blacktools:tell $nick $host $hand $chan $chan1 bot.1 none
return 0
}
if {($bot == "") && ($type == "1")} {
blacktools:tell $nick $host $hand $chan $chan1 bot.2 none
return 0
}
}
if {($bot == "") && ($type == "0")} {
blacktools:tell $nick $host $hand $chan $chan1 bot.3 none
return 0
}
if {($bot == "") && ($type == "1")} {
blacktools:tell $nick $host $hand $chan $chan1 bot.4 none
return 0
}
blacktools:banner:3 $mask $hand $chan $reason $getbantime bot($chan)
}


proc b:local {bnick mask time nick reason hand host chan chan1 type} {
global botnick black
set handle [nick2hand $bnick]
set char(p) [lindex $black(cmdchar) 0]
if {[string match -nocase "$char(p)" "none"]} {
set char(p) ""
} 
if {![validchan $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.novalidchan none
return 0
}

if {![onchan $botnick $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.notonchan none
return 0
}
set list [userlist $black(exceptflags) $chan]
if {[matchattr $hand -|q $chan]} { blacktools:tell $nick $host $hand $chan $chan1 gl.suspend none
return 0
}
foreach user $list {
 set hosts [getuser $user hosts]
foreach host $hosts {
if {[string match -nocase $mask $host]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.noban none
 return 0
}
}
}

if {[matchattr $handle $black(exceptflags) $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.noban none
 return 0
}
if {$reason == ""} {
set getlang [string tolower [channel get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
set reason1 $black(say.$getlang.b.9)
 } else { set reason1 "$reason" }

if {[channel get $chan showhandle]} {
set reason "($hand) $reason1"
} else { set reason "$reason1" 
}

if {[isbotnick $bnick]} {
  return 0
}

if {![botisop $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.noop none
 return 0
}
if {$mask == "*!*@*"} {
 return 0
}

if {[onchan $bnick $chan]} {
set mask *!*@[lindex [split [getchanhost $bnick $chan] "@"] 1] 
}

if {[matchattr $hand nm|- $chan]} {
if {($bnick == "") && ($type == "0")} {
blacktools:tell $nick $host $hand $chan $chan1 b.1 none
blacktools:tell $nick $host $hand $chan $chan1 b.2 none
return 0
}
if {($bnick == "") && ($type == "1")} {
blacktools:tell $nick $host $hand $chan $chan1 b.3 none
blacktools:tell $nick $host $hand $chan $chan1 b.4 none
return 0
}
}
if {($bnick == "") && ($type == "0")} {
blacktools:tell $nick $host $hand $chan $chan1 b.5 none
return 0
}
if {($bnick == "") && ($type == "1")} {
blacktools:tell $nick $host $hand $chan $chan1 b.6 none
return 0
}

blacktools:banner:3 $mask $hand $chan $reason $time b($chan)
if {$time == "0"} { set reply "Permanent" } else { set reply "$time minute" }
blacktools:tell $nick $host $hand $chan $chan1 b.7 "$mask $reply"
}


proc bpublic {nick host hand chan arg} {
global botnick black
set bnick [lindex [split $arg] 0]
set char(p) [lindex $black(cmdchar) 0]
if {[string match -nocase "$char(p)" "none"]} {
set char(p) ""
} 
set type 0
set chan1 "$chan"
set mask [lindex [split $arg] 0]
set time [lindex [split $arg] 1]
set type1 [lindex [split $arg] 1]
set type2 [lindex [split $arg] 2]
set reason [join [lrange [split $arg] 2 end]] 
set handle [nick2hand $bnick]
if {[string match -nocase "global" $type1] || [string match -nocase "global" $type2]  && [matchattr $hand nm|- $chan]} {
if {[string match -nocase $type1 "global"]} {
set reason [join [lrange [split $arg] 2 end]]
}
if {[string match -nocase $type2 "global"]} {
set reason [join [lrange [split $arg] 3 end]]
}
set list [userlist nm|-]
foreach user $list {
 set hosts [getuser $user hosts]
foreach host $hosts {
if {[string match $mask $host]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.noban none
 return 0
}
}
}
if {[matchattr $handle nm|- $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.noban none
 return 0
}

if {![regexp {^[0-9]} $time]} {
set reason [join [lrange [split $arg] 2 end]]
set time "$black(btime)"
}
if {$reason == ""} {set reason1 "(GLOBAL) $black(dfreason)"
 } else { set reason1 "(GLOBAL) $reason" }

if {[channel get $chan showhandle]} {
set reason "($hand) $reason1"
} else { set reason "$reason1" 
}

if {[isbotnick $bnick]} {
return 0
}
if {![botisop $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.noop none
return 0
}
if {$mask == "*!*@*"} {
 return 0
}
if {[onchan $bnick $chan]} {
set mask *!*@[lindex [split [getchanhost $bnick $chan] "@"] 1] 
}
newban $mask $hand $reason $time
if {$time == "0"} { set reply "Permanent" } else { set reply "$time" }
blacktools:tell $nick $host $hand $chan $chan1 b.8 "$mask $reply"
return 0
}
foreach c [channels] {
set backchan [channel get $c backchan]
if {[string match -nocase $chan $backchan] && [channel get $c chanreport]} {
set chan "$c"
}
}
if {[regexp {^[\\+!#&]} $bnick] && [matchattr $hand nm|- $chan]} {
set chan "$bnick"
set bnick [lindex [split $arg] 1]
set mask [lindex [split $arg] 1]
set time [lindex [split $arg] 2]
set reason [join [lrange [split $arg] 3 end]]
if {![regexp {^[0-9]} $time]} {
set reason [join [lrange [split $arg] 2 end]]
set time "$black(btime)"
}
}
if {![regexp {^[0-9]} $time]} {
set time "$black(btime)"
set reason [join [lrange [split $arg] 1 end]] 
}
b:local $bnick $mask $time $nick $reason $hand $host $chan $chan1 $type
}

################################### n #################################

proc n:process {bnick nick hand host chan chan1 type} {
global botnick black
set char(p) [lindex $black(cmdchar) 0]
if {[string match -nocase "$char(p)" "none"]} {
set char(p) ""
} 
set handle [nick2hand $bnick]
if {![validchan $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.novalidchan none
return 0
}
if {![onchan $botnick $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.notonchan none
return 0
}
if {[matchattr $hand -|q $chan]} { blacktools:tell $nick $host $hand $chan $chan1 gl.suspend none
return 0
}

if {[matchattr $handle $black(exceptflags) $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.noban none
 return 0
}
set getreason [channel get $chan n-reason]
if {$getreason == ""} { 
set getlang [string tolower [channel get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
set getreason $black(say.$getlang.n.5)
}
if {[channel get $chan showhandle]} {
set reason "($hand) $getreason"
} else { set reason "$getreason" 
}
set getbantime [channel get $chan n-bantime]
if {$getbantime == "0"} { set getbantime $black(ntime) }

if {[isbotnick $bnick]} {
return 0
}

if {![botisop $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.noop none
return 0
}

if {[matchattr $hand nm|- $chan]} {
if {($bnick == "") && ($type == "0")} {
blacktools:tell $nick $host $hand $chan $chan1 n.1 none
return 0
}
if {($bnick == "") && ($type == "1")} {
blacktools:tell $nick $host $hand $chan $chan1 n.2 none
return 0
}
}
if {($bnick == "") && ($type == "0")} {
blacktools:tell $nick $host $hand $chan $chan1 n.3 none
return 0
}
if {($bnick == "") && ($type == "1")} {
blacktools:tell $nick $host $hand $chan $chan1 n.4 none
return 0
}

if {[onchan $bnick $chan]} {
set mask "$bnick*!*@*"
} else {
blacktools:tell $nick $host $hand $chan $chan1 gl.usernotonchan "$bnick"
return 0
}
blacktools:banner:3 $mask $hand $chan $reason $getbantime n($chan)
}


proc npublic {nick host hand chan arg} {
global botnick black
set bnick [lindex [split $arg] 0]
set type 0
set handle [nick2hand $bnick]
set chan1 "$chan"
foreach c [channels] {
set backchan [channel get $c backchan]
if {[string match -nocase $chan $backchan] && [channel get $c chanreport]} {
set chan "$c"
}
}
if {[regexp {^[\\+!#&]} $bnick] && [matchattr $hand nm|- $chan]} {
set chan "$bnick"
set bnick [lindex [split $arg] 1]
}
n:process $bnick $nick $hand $host $chan $chan1 $type
}

################################## id #################################

proc idpublic {nick host hand chan arg} {
global botnick black
set idnick [lindex [split $arg] 0]
set char(p) [lindex $black(cmdchar) 0]
if {[string match -nocase "$char(p)" "none"]} {
set char(p) ""
} 
set handle [nick2hand $idnick]
set type 0
set chan1 "$chan"
foreach c [channels] {
set backchan [channel get $c backchan]
if {[string match -nocase $chan $backchan] && [channel get $c chanreport]} {
set chan "$c"
}
}
if {[regexp {^[\\+!#&]} $idnick] && [matchattr $hand nm|- $chan]} {
set chan "$idnick"
set idnick [lindex [split $arg] 1]
}
id:process $idnick $nick $hand $host $chan $chan1 $type
}

proc id:process {idnick nick hand host chan chan1 type} {
global botnick black
set handle [nick2hand $idnick]
set char(p) [lindex $black(cmdchar) 0]
if {[string match -nocase "$char(p)" "none"]} {
set char(p) ""
}
if {![validchan $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.novalidchan none
return 0
}
if {![onchan $botnick $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.notonchan none
return 0
}
set uhost [getchanhost $idnick $chan]
set ident "[string trimleft [string tolower [lindex [split $uhost "@"] 0]] "~"]"
if {[matchattr $hand -|q $chan]} { blacktools:tell $nick $host $hand $chan $chan1 gl.suspend none
return 0
}

if {[matchattr $handle $black(exceptflags) $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.noban none
 return 0
}
set getreason [channel get $chan id-reason]
if {$getreason == ""} { 
set getlang [string tolower [channel get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
set getreason $black(say.$getlang.id.5)
}

if {[channel get $chan showhandle]} {
set reason "($hand) $getreason"
} else { set reason "$getreason"
}

set getbantime [channel get $chan id-bantime]
if {$getbantime == "0"} { set getbantime $black(idtime) }

if {[isbotnick $idnick]} {
return 0
}

if {![botisop $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.noop none
return 0
}

if {[matchattr $hand nm|- $chan]} {
if {($idnick == "") && ($type == "0")} {
blacktools:tell $nick $host $hand $chan $chan1 id.1 none
return 0
}
if {($idnick == "") && ($type == "1")} {
blacktools:tell $nick $host $hand $chan $chan1 id.2 none
return 0
}
}
if {($idnick == "") && ($type == "0")} {
blacktools:tell $nick $host $hand $chan $chan1 id.3 none
return 0
}
if {($idnick == "") && ($type == "1")} {
blacktools:tell $nick $host $hand $chan $chan1 id.4 none
return 0
}

if {[onchan $idnick $chan]} {
    		set mask "*!*$ident@*"
	} else { blacktools:tell $nick $host $hand $chan $chan1 gl.usernotonchan "$idnick"
return 0
}
blacktools:banner:3 $mask $hand $chan $getreason $getbantime id($chan)
}


############################### black #################################

proc black:process {blnick nick mask hand host chan chan1 reason type} {
global botnick black
set char(p) [lindex $black(cmdchar) 0]
if {[string match -nocase "$char(p)" "none"]} {
set char(p) ""
} 
set handle [nick2hand $blnick]
if {![validchan $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.novalidchan none
return 0
}

if {![onchan $botnick $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.notonchan none
return 0
}

set list [userlist $black(exceptflags) $chan]
if {[matchattr $hand -|q $chan]} { 
blacktools:tell $nick $host $hand $chan $chan1 gl.suspend none
return 0
}
foreach user $list {
 set hosts [getuser $user hosts]
foreach host $hosts {
if {[string match -nocase $mask $host]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.noban none
 return 0
}
}
}

if {[matchattr $handle $black(exceptflags) $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.noban none
 return 0
}
if {$reason == ""} {
set getlang [string tolower [channel get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
set reason1 "BlackListed: $black(say.$getlang.black.5)"
 } else { set reason1 "BlackListed: $reason" }

if {[channel get $chan showhandle]} {
set reason "($hand) $reason1"
} else { set reason "$reason1" 
}


if {[isbotnick $blnick]} {
return 0
}

if {![botisop $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.noop none
return 0
}
if {$mask == "*!*@*"} {
 return 0
}

if {[onchan $blnick $chan]} {
set mask *!*@[lindex [split [getchanhost $blnick $chan] "@"] 1] 
}

if {[matchattr $hand nm|- $chan]} {
if {($blnick == "") && ($type == "0")} {
blacktools:tell $nick $host $hand $chan $chan1 black.1 none
return 0
}
if {($blnick == "") && ($type == "1")} {
blacktools:tell $nick $host $hand $chan $chan1 black.2 none
return 0
}
}
if {($blnick == "") && ($type == "0")} {
blacktools:tell $nick $host $hand $chan $chan1 black.3 none
return 0
}
if {($blnick == "") && ($type == "1")} {
blacktools:tell $nick $host $hand $chan $chan1 black.4 none
return 0
}
 

blacktools:banner:3 $mask $hand $chan $reason 0 Black($chan)
}


proc blackpublic {nick host hand chan arg} {
global botnick black
set blnick [lindex [split $arg] 0]
set mask [lindex [split $arg] 0]
set type 0
set reason [join [lrange [split $arg] 1 end]]
set handle [nick2hand $blnick]
set chan1 "$chan"
foreach c [channels] {
set backchan [channel get $c backchan]
if {[string match -nocase $chan $backchan] && [channel get $c chanreport]} {
set chan "$c"
}
}
if {[regexp {^[\\+!#&]} $blnick] && [matchattr $hand nm|- $chan]} {
set chan "$blnick"
set blnick [lindex [split $arg] 1]
set mask [lindex [split $arg] 1]
set reason [join [lrange [split $arg] 2 end]]
}
black:process $blnick $nick $mask $hand $host $chan $chan1 $reason $type
}


################################ w ####################################

proc wpublic {nick host hand chan arg} {
global botnick black
set wnick [lindex [split $arg] 0]
set type 0
set handle [nick2hand $wnick]
set chan1 "$chan"
foreach c [channels] {
set backchan [channel get $c backchan]
if {[string match -nocase $chan $backchan] && [channel get $c chanreport]} {
set chan "$c"
}
}
if {[regexp {^[\\+!#&]} $wnick] && [matchattr $hand nm|- $chan]} {
set chan "$wnick"
set wnick [lindex [split $arg] 1]
}
w:process $wnick $nick $hand $host $chan $chan1 $type
}

proc w:process {wnick nick hand host chan chan1 type} {
global botnick black
set handle [nick2hand $wnick]
set char(p) [lindex $black(cmdchar) 0]
if {[string match -nocase "$char(p)" "none"]} {
set char(p) ""
} 
if {![validchan $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.novalidchan none
return 0
}
if {![onchan $botnick $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.notonchan none
return 0
}
if {[matchattr $hand -|q $chan]} { blacktools:tell $nick $host $hand $chan $chan1 gl.suspend none
return 0
}


if {[isbotnick $wnick]} {
return 0
}
if {[matchattr $handle $black(exceptflags) $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.noban none
 return 0
}
set getreason [channel get $chan w-reason]
if {$getreason == ""} { 
set getlang [string tolower [channel get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
set getreason $black(say.$getlang.w.5)
}

if {[channel get $chan showhandle]} {
set reason "($hand) $getreason"
} else { set reason "$getreason"
}

if {![botisop $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.noop none
return 0
}
if {[matchattr $hand nm|- $chan]} {
if {($wnick == "") && ($type == "0")} {
blacktools:tell $nick $host $hand $chan $chan1 w.1 none
return 0
}
if {($wnick == "") && ($type == "1")} {
blacktools:tell $nick $host $hand $chan $chan1 w.2 none
return 0
}
}
if {($wnick == "") && ($type == "0")} {
blacktools:tell $nick $host $hand $chan $chan1 w.3 none
return 0
}
if {($wnick == "") && ($type == "1")} {
blacktools:tell $nick $host $hand $chan $chan1 w.4 none
return 0
}

set getcount [channel get $chan kickcount]
set kcount [expr $getcount +1]
channel set $chan kickcount $kcount
set countz [getuser $hand XTRA w($chan)]
if {$countz == ""} { set countz 0 }
set counts [expr $countz + 1]
setuser $hand XTRA w($chan) $counts
if {[channel get $chan showcount]} {
set reason "$reason - $kcount -" 
} else {
set reason "$reason" 
}
putquick "KICK $chan $wnick :$reason"
set getlang [string tolower [channel get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
puthelp "PRIVMSG $wnick :$black(say.$getlang.w.6)"
}

############################### spam ##################################

proc spam:process {spammer mask nick hand host chan chan1 type} {
global botnick black
set handle [nick2hand $spammer]
set char(p) [lindex $black(cmdchar) 0]
if {[string match -nocase "$char(p)" "none"]} {
set char(p) ""
} 
if {![validchan $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.novalidchan none
return 0
}
if {![onchan $botnick $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.notonchan none
return 0
}
set list [userlist $black(exceptflags) $chan]
set getreason [channel get $chan spam-reason]
if {$getreason == ""} { 
set getlang [string tolower [channel get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
set getreason $black(say.$getlang.spam.5)
}
if {[channel get $chan showhandle]} {
set reason "($hand) $getreason"
} else { set reason "$getreason" 
}
set getbantime [channel get $chan spam-bantime]
if {$getbantime == "0"} { set getbantime $black(spamtime) }

if {[matchattr $hand -|q $chan]} { blacktools:tell $nick $host $hand $chan $chan1 gl.suspend none
return 0
}
foreach user $list {
 set hosts [getuser $user hosts]
foreach host $hosts {
if {[string match -nocase $mask $host]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.noban none
 return 0
}
}
}

if {[matchattr $handle $black(exceptflags) $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.noban none
 return 0
}
if {$mask == "*!*@*"} {
 return 0
}

if {[isbotnick $spammer]} {
return 0
}
if {![botisop $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.noop none
return 0
}
if {[onchan $spammer $chan]} {
set mask *!*@[lindex [split [getchanhost $spammer $chan] "@"] 1] 
}

if {[matchattr $hand nm|- $chan]} {
if {($spammer == "") && ($type == "0")} {
blacktools:tell $nick $host $hand $chan $chan1 spam.1 none
return 0
}
if {($spammer == "") && ($type == "1")} {
blacktools:tell $nick $host $hand $chan $chan1 spam.2 none
return 0
}
}
if {($spammer == "") && ($type == "0")} {
blacktools:tell $nick $host $hand $chan $chan1 spam.3 none
return 0
}
if {($spammer == "") && ($type == "1")} {
blacktools:tell $nick $host $hand $chan $chan1 spam.4 none
return 0
}

blacktools:banner:3 $mask $hand $chan $reason $getbantime spam($chan)
}


proc spampublic {nick host hand chan arg} {
global botnick black
set spammer [lindex [split $arg] 0]
set chan1 "$chan"
set type 0
set mask [lindex [split $arg] 0]
set handle [nick2hand $spammer]
foreach c [channels] {
set backchan [channel get $c backchan]
if {[string match -nocase $chan $backchan] && [channel get $c chanreport]} {
set chan "$c"
}
}
if {[regexp {^[\\+!#&]} $spammer] && [matchattr $hand nm|- $chan]} {
set chan "$spammer"
set spammer [lindex [split $arg] 1]
set mask [lindex [split $arg] 1]
}
spam:process $spammer $mask $nick $hand $host $chan $chan1 $type
}



################################### k #################################

proc k:process {knick nick hand host reason chan chan1 type} {
global botnick black
set char(p) [lindex $black(cmdchar) 0]
if {[string match -nocase "$char(p)" "none"]} {
set char(p) ""
} 
set handle [nick2hand $knick]
if {![validchan $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.novalidchan none
return 0
}

if {![onchan $botnick $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.notonchan none
return 0
}

if {[matchattr $hand -|q $chan]} { blacktools:tell $nick $host $hand $chan $chan1 gl.suspend none
return 0
}

if {[isbotnick $knick]} {
return 0
}


if {[matchattr $handle $black(exceptflags) $chan] && ($black(kaccess) == "1")} {
blacktools:tell $nick $host $hand $chan $chan1 gl.noban none
 return 0
}

if {$reason == ""} {

set getlang [string tolower [channel get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
set reason1 "$black(say.$getlang.k.5)"
 } else { set reason1 "$reason" }

if {[channel get $chan showhandle]} {
set reason "($hand) $reason1"
} else { set reason "$reason1" 
}


if {![botisop $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.noop none
return 0
}

if {[matchattr $hand nm|- $chan]} {
if {($knick == "") && ($type == "0")} {
blacktools:tell $nick $host $hand $chan $chan1 k.1 none
return 0
}
if {($knick == "") && ($type == "1")} {
blacktools:tell $nick $host $hand $chan $chan1 k.2 none
return 0
}
}
if {($knick == "") && ($type == "0")} {
blacktools:tell $nick $host $hand $chan $chan1 k.3 none
return 0
}
if {($knick == "") && ($type == "1")} {
blacktools:tell $nick $host $hand $chan $chan1 k.4 none
return 0
}

if {![onchan $knick $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.usernotonchan "$knick"
return 0
}
set getcount [channel get $chan kickcount]
set kcount [expr $getcount +1]
channel set $chan kickcount $kcount
set countz [getuser $hand XTRA k($chan)]
if {$countz == ""} { set countz 0 }
set counts [expr $countz + 1]
setuser $hand XTRA k($chan) $counts
if {[channel get $chan showcount]} {
set reason "$reason - $kcount -" 
} else {
set reason "$reason" 
}
putquick "KICK $chan $knick :$reason"
}


proc kpublic {nick host hand chan arg} {
global botnick black
set knick [lindex [split $arg] 0]
set type 0
set reason [join [lrange [split $arg] 1 end]]
set handle [nick2hand $knick]
set chan1 "$chan"
foreach c [channels] {
set backchan [channel get $c backchan]
if {[string match -nocase $chan $backchan] && [channel get $c chanreport]} {
set chan "$c"
}
}
if {[regexp {^[\\+!#&]} $knick] && [matchattr $hand nm|- $chan]} {
set chan "$knick"
set knick [lindex [split $arg] 1]
set reason [join [lrange [split $arg] 2 end]]
}
k:process $knick $nick $hand $host $reason $chan $chan1 $type
}





################################### gag ###############################

proc gag:process {gagger nick hand host chan chan1 type} {
global botnick black
set char(p) [lindex $black(cmdchar) 0]
if {[string match -nocase "$char(p)" "none"]} {
set char(p) ""
} 
set handle [nick2hand $gagger]
if {![validchan $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.novalidchan none
return 0
}
if {![onchan $botnick $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.notonchan none
return 0
}
if {[matchattr $hand -|q $chan]} { blacktools:tell $nick $host $hand $chan $chan1 gl.suspend none
return 0
}

if {[matchattr $hand nm|- $chan]} {
if {($gagger == "") && ($type == "0")} {
blacktools:tell $nick $host $hand $chan $chan1 gag.1 none
return 0
}
if {($gagger == "") && ($type == "1")} {
blacktools:tell $nick $host $hand $chan $chan1 gag.2 none
return 0
}
}
if {($gagger == "") && ($type == "0")} {
blacktools:tell $nick $host $hand $chan $chan1 gag.3 none
return 0
}
if {($gagger == "") && ($type == "1")} {
blacktools:tell $nick $host $hand $chan $chan1 gag.4 none
return 0
}

if {[matchattr $handle $black(exceptflags) $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.noban none
 return 0
}

if {[isbotnick $gagger]} {
return 0
}

if {![botisop $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.noop none
return 0
}

if {[onchan $gagger $chan]} {
    		set mask *!*@[lindex [split [getchanhost $gagger $chan] "@"] 1] 
} else { blacktools:tell $nick $host $hand $chan $chan1 gl.usernotonchan "$gagger"
return 0
}
putquick "MODE $chan +b $mask"
blacktools:tell $gagger $host $hand $chan $chan1 gag.5 "$gagger"
}



proc gagpublic {nick host hand chan arg} {
global black
set gagger [lindex [split $arg] 0]
set type 0
set handle [nick2hand $gagger]
set chan1 "$chan"
foreach c [channels] {
set backchan [channel get $c backchan]
if {[string match -nocase $chan $backchan] && [channel get $c chanreport]} {
set chan "$c"
}
}
if {[regexp {^[\\+!#&]} $gagger] && [matchattr $hand nm|- $chan]} {
set chan "$gagger"
set gagger [lindex [split $arg] 1]
}
gag:process $gagger $nick $hand $host $chan $chan1 $type
}



################################## bw #################################

proc bw:process {abuser mask nick hand host chan chan1 type} {
global botnick black
set char(p) [lindex $black(cmdchar) 0]
if {[string match -nocase "$char(p)" "none"]} {
set char(p) ""
} 
set handle [nick2hand $abuser]
if {![validchan $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.novalidchan none
return 0
}
if {![onchan $botnick $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.notonchan none
return 0
}
set list [userlist $black(exceptflags) $chan]
set getreason [channel get $chan bw-reason]
if {$getreason == ""} { 
set getlang [string tolower [channel get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
set getreason $black(say.$getlang.bw.5)
}
if {[channel get $chan showhandle]} {
set reason "($hand) $getreason"
} else { set reason "$getreason" 
}
set getbantime [channel get $chan bw-bantime]
if {$getbantime == "0"} { set getbantime $black(bwtime) }
if {[matchattr $hand -|q $chan]} { blacktools:tell $nick $host $hand $chan $chan1 gl.suspend none
return 0
}
foreach user $list {
 set hosts [getuser $user hosts]
foreach host $hosts {
if {[string match -nocase $mask $host]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.noban none
 return 0
}
}
}

if {[matchattr $handle $black(exceptflags) $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.noban none
 return 0
}
if {$mask == "*!*@*"} {
 return 0
}

if {[isbotnick $abuser]} {
return 0
}
if {![botisop $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.noop none
return 0
}
if {[onchan $abuser $chan]} {
set mask *!*@[lindex [split [getchanhost $abuser $chan] "@"] 1] 
}

if {[matchattr $hand nm|- $chan]} {
if {($abuser == "") && ($type == "0")} {
blacktools:tell $nick $host $hand $chan $chan1 bw.1 none
return 0
}
if {($abuser == "") && ($type == "1")} {
blacktools:tell $nick $host $hand $chan $chan1 bw.2 none
return 0
}
}
if {($abuser == "") && ($type == "0")} {
blacktools:tell $nick $host $hand $chan $chan1 bw.3 none
return 0
}
if {($abuser == "") && ($type == "1")} {
blacktools:tell $nick $host $hand $chan $chan1 bw.4 none
return 0
}

blacktools:banner:3 $mask $hand $chan $reason $getbantime bw($chan) 
}


proc bwpublic {nick host hand chan arg} {
global botnick black
set abuser [lindex [split $arg] 0]
set mask [lindex [split $arg] 0]
set type 0
set handle [nick2hand $abuser]
set chan1 "$chan"
foreach c [channels] {
set backchan [channel get $c backchan]
if {[string match -nocase $chan $backchan] && [channel get $c chanreport]} {
set chan "$c"
}
}
if {[regexp {^[\\+!#&]} $abuser] && [matchattr $hand nm|- $chan]} {
set chan "$abuser"
set abuser [lindex [split $arg] 1]
set mask [lindex [split $arg] 1]
}
bw:process $abuser $mask $nick $hand $host $chan $chan1 $type
}





################################ ub ###################################

proc ub:process {ban why nick hand host chan chan1 type} {
global botnick black
set char(p) [lindex $black(cmdchar) 0]
if {[string match -nocase "$char(p)" "none"]} {
set char(p) ""
} 
if {![validchan $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.novalidchan none
return 0
}
if {![onchan $botnick $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.notonchan none
return 0
}

if {[matchattr $hand -|q $chan]} { blacktools:tell $nick $host $hand $chan $chan1 gl.suspend none
return 0
}

if {[matchattr $hand nm|- $chan]} {
if {($ban == "") && ($type == "0")} {
blacktools:tell $nick $host $hand $chan $chan1 ub.1 none
return 0
}
if {($ban == "") && ($type == "1")} {
blacktools:tell $nick $host $hand $chan $chan1 ub.2 none
return 0
}
}
if {($ban == "") && ($type == "0")} {
blacktools:tell $nick $host $hand $chan $chan1 ub.3 none
return 0
}
if {($ban == "") && ($type == "1")} {
blacktools:tell $nick $host $hand $chan $chan1 ub.4 none
return 0
}

  
if {$ban == "*!*@*"} { 
return 0 
}
if {![botisop $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.noop none
    return 0
  }
 if {[ispermban $ban $chan] && [matchattr $hand -|O $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 ub.5 none
return 0
}

if {($why == "global") && [matchattr $hand nm|- $chan]} {

if {[killban $ban] == "0"} {
set notfound 1
}

killban $ban
if {![info exists notfound]} {
blacktools:tell $nick $host $hand $chan $chan1 ub.6 $ban
return 0
} else { blacktools:tell $nick $host $hand $chan $chan1 ub.7 none
return 0
}

}

if {[killchanban $chan $ban] == "0"} {
set notfound 1
}
 
  killchanban $chan $ban
if {[onchan "X" $chan]} {
putquick "PRIVMSG $black(chanserv) :unban $chan $ban"
}
  putquick "MODE $chan -b $ban"
if {![info exists notfound]} {
blacktools:tell $nick $host $hand $chan $chan1 ub.8 $ban
} else { blacktools:tell $nick $host $hand $chan $chan1 ub.9 none 
return 0
}
 if {[channel get $chan chanreport]} {
set backchan [channel get $chan backchan]
if {$backchan == ""} { 
return 0
}
if {!([validchan $backchan]) || !([onchan $botnick $backchan])} {
return 0
}
blacktools:tell $nick $host $hand $chan $backchan ub.10 "$hand $ban"
}

}



proc ubpublic {nick host hand chan arg} {
global botnick black
set ban [lindex [split $arg] 0]
set why [lindex [split $arg] 1]
set type 0
set chan1 "$chan"
foreach c [channels] {
set backchan [channel get $c backchan]
if {[string match -nocase $chan $backchan] && [channel get $c chanreport]} {
set chan "$c"
}
}
if {[regexp {^[\\+!#&]} $ban] && [matchattr $hand nm|- $chan]} {
set chan "$ban"
set ban [lindex [split $arg] 1]
}
ub:process $ban $why $nick $hand $host $chan $chan1 $type
}


################################ sb ###################################   

proc sb:process {bhost what nick hand host chan chan1 type} {
global botnick black
set char(p) [lindex $black(cmdchar) 0]
if {[string match -nocase "$char(p)" "none"]} {
set char(p) ""
} 

if {![validchan $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.novalidchan none
return 0
}

if {[matchattr $hand -|q $chan]} { blacktools:tell $nick $host $hand $chan $chan1 gl.suspend none
return 0
}

if {[matchattr $hand nm|- $chan]} {
if {($bhost == "") && ($type == "0")} {
blacktools:tell $nick $host $hand $chan $chan1 sb.1 none
return 0
}
if {($bhost == "") && ($type == "1")} {
blacktools:tell $nick $host $hand $chan $chan1 sb.2 none
return 0
}
}
if {($bhost == "") && ($type == "0")} { 
blacktools:tell $nick $host $hand $chan $chan1 sb.3 none
return 0
}
if {($bhost == "") && ($type == "1")} {
blacktools:tell $nick $host $hand $chan $chan1 sb.4 none
return 0
}

if {[string match -nocase $what "global"] && [matchattr $hand mn|- $chan]} {
  
foreach ban [banlist] {

 set expire [clock format [lindex $ban 2] -format %D-%H:%M:%S]
 set created [clock format [lindex $ban 3] -format %D-%H:%M:%S]
 set fban [lindex $ban 0]
 set freason [lindex $ban 1]
 set fbywho [lindex $ban 5]

if {[string match $bhost [string tolower [lindex $ban 0]]]} {
set foundban 1
if {[lindex $ban 2] == 0} {
if {[isbansticky [lindex $ban 0]]} {
blacktools:tell $nick $host $hand $chan $chan1 sb.5 "$fban $fbywho $created 0 $freason"
 } else {
blacktools:tell $nick $host $hand $chan $chan1 sb.6 "$fban $fbywho $created 0 $freason"

}

} else { 
if {[isbansticky [lindex $ban 0]]} { 
blacktools:tell $nick $host $hand $chan $chan1 sb.7 "$fban $fbywho $created $expire $freason"         

} else {
blacktools:tell $nick $host $hand $chan $chan1 sb.8 "$fban $fbywho $created $expire $freason"
          
}
}

}
}
if {![info exists foundban]} {
blacktools:tell $nick $host $hand $chan $chan1 sb.13 none
}
return 0
}

  foreach ban [banlist $chan] {

  set expire [clock format [lindex $ban 2] -format %D-%H:%M:%S]
 set created [clock format [lindex $ban 3] -format %D-%H:%M:%S]
 set fban [lindex $ban 0]
 set freason [lindex $ban 1]
 set fbywho [lindex $ban 5]
if {[string match $bhost [string tolower [lindex $ban 0]]]} {

set foundban 1

if {[lindex $ban 2] == 0} {
if {[isbansticky [lindex $ban 0] $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 sb.9 "$fban $fbywho $created $expire $freason"
} else {
blacktools:tell $nick $host $hand $chan $chan1 sb.10 "$fban $fbywho $created 0 $freason"
}

} else { 
if {[isbansticky [lindex $ban 0] $chan]} {          
blacktools:tell $nick $host $hand $chan $chan1 sb.11 "$fban $fbywho $created $expire $freason"

} else {
blacktools:tell $nick $host $hand $chan $chan1 sb.12 "$fban $fbywho $created $expire $freason"
          
}
}

}
}
if {![info exists foundban]} {
blacktools:tell $nick $host $hand $chan $chan1 sb.13 none
return 0
}
}



proc sbpublic {nick host hand chan arg} {
global botnick black
set bhost [string tolower [lindex [split $arg] 0]]
set what [lindex [split $arg] 1]
set chan1 "$chan"
set type 0
foreach c [channels] {
set backchan [channel get $c backchan]
if {[string match -nocase $chan $backchan] && [channel get $c chanreport]} {
set chan "$c"
}
}
if {[regexp {^[\\+!#&]} $bhost] && [matchattr $hand nm|- $chan]} {
set chan "$bhost"
set bhost [string tolower [lindex [split $arg] 1]]
set what [lindex [split $arg] 2]
}
sb:process $bhost $what $nick $hand $host $chan $chan1 $type
}




################################# d ###################################


proc d:process {dnick mask days reason nick hand host chan chan1 type} {
global botnick black
set char(p) [lindex $black(cmdchar) 0]
if {[string match -nocase "$char(p)" "none"]} {
set char(p) ""
} 
set handle [nick2hand $dnick]
if {![validchan $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.novalidchan none
return 0
}
if {![onchan $botnick $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.notonchan none
return 0
}
set list [userlist $black(exceptflags) $chan]
if {[matchattr $hand -|q $chan]} { blacktools:tell $nick $host $hand $chan $chan1 gl.suspend none
return 0
}


if {[matchattr $hand nm|- $chan]} {
if {($dnick == "")  && ($type == "0")} {
blacktools:tell $nick $host $hand $chan $chan1 d.1 none
return 0
}
if {($dnick == "") && ($type == "1")} {
blacktools:tell $nick $host $hand $chan $chan1 d.2 none
return 0
}
}
if {($dnick == "") && ($type == "0")} {
blacktools:tell $nick $host $hand $chan $chan1 d.3 none
return 0
}
if {($dnick == "") && ($type == "1")} {
blacktools:tell $nick $host $hand $chan $chan1 d.4 none
return 0
}

foreach user $list {
 set hosts [getuser $user hosts]
foreach host $hosts {
if {[string match -nocase $mask $host]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.noban none
 return 0
}
}
}

if {[matchattr $handle $black(exceptflags) $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.noban none
 return 0
}

if {$reason == ""} {
set getlang [string tolower [channel get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
set reason1 $black(say.$getlang.d.5)
 } else { set reason1 "$reason" }

if {[channel get $chan showhandle]} {
set reason "($hand) $reason1"
} else { set reason "$reason1" 
}


if {[isbotnick $dnick]} {
return 0
}

if {![botisop $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.noop none
return 0
}
if {$mask == "*!*@*"} {
 return 0
}

if {[onchan $dnick $chan]} {
    		set mask *!*@[lindex [split [getchanhost $dnick $chan] "@"] 1] 
}

blacktools:banner:3 $mask $hand $chan $reason [expr $days * 1440] d($chan)
}


proc dpublic {nick host hand chan arg} {
global botnick black
set days [lindex [split $arg] 0]
set dnick [lindex [split $arg] 1]
set type 0
set mask [lindex [split $arg] 1]
set reason [join [lrange [split $arg] 2 end]]
set handle [nick2hand $dnick]
set chan1 "$chan"
foreach c [channels] {
set backchan [channel get $c backchan]
if {[string match -nocase $chan $backchan] && [channel get $c chanreport]} {
set chan "$c"
}
}
if {[regexp {^[\\+!#&]} $days] && [matchattr $hand nm|- $chan]} {
set chan "$days"
set days [lindex [split $arg] 1]
set mask [lindex [split $arg] 2]
set dnick [lindex [split $arg] 2]
set reason [join [lrange [split $arg] 3 end]]
if {![regexp {^[0-9]} $days]} {
set days 1
set mask [lindex [split $arg] 1]
set dnick [lindex [split $arg] 1]
set reason [join [lrange [split $arg] 2 end]]
} 
}
if {![regexp {^[0-9]} $days]} {
set days 1
set mask [lindex [split $arg] 0]
set dnick [lindex [split $arg] 0]
set reason [join [lrange [split $arg] 1 end]]
}
d:process $dnick $mask $days $reason $nick $hand $host $chan $chan1 $type
}


############################### stick #################################

proc stick:process {snick mask time reason nick hand host chan chan1 type} {
global botnick black
set char(p) [lindex $black(cmdchar) 0]
if {[string match -nocase "$char(p)" "none"]} {
set char(p) ""
} 
set handle [nick2hand $snick]
set list [userlist $black(exceptflags) $chan]
if {![validchan $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.novalidchan none
return 0
}

if {[matchattr $hand -|q $chan]} { blacktools:tell $nick $host $hand $chan $chan1 gl.suspend none
return 0
}


if {![onchan $botnick $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.notonchan none
return 0
}

foreach user $list {
 set hosts [getuser $user hosts]
foreach host $hosts {
if {[string match $mask $host]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.noban none
 return 0
}
}
}
if {[matchattr $handle nm|AMOVS $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.noban none
 return 0
}

if {$reason == ""} {
set getlang [string tolower [channel get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
set reason1 $black(say.$getlang.stick.5)
 } else { set reason1 "$reason" }

if {[channel get $chan showhandle]} {
set reason "($hand) $reason1"
} else { set reason "$reason1" 
}

if {[isbotnick $snick]} {
return 0
}
if {![botisop $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.noop none
return 0
}
if {$mask == "*!*@*"} {
 return 0
}
if {[onchan $snick $chan]} {
set mask *!*@[lindex [split [getchanhost $snick $chan] "@"] 1] 
}

if {[matchattr $hand nm|- $chan]} {
if {($snick == "")  && ($type == "0")} {
blacktools:tell $nick $host $hand $chan $chan1 stick.1 none
return 0
}
if {($snick == "") && ($type == "1")} {
blacktools:tell $nick $host $hand $chan $chan1 stick.2 none
return 0
}
}
if {($snick == "") && ($type == "0")} {
blacktools:tell $nick $host $hand $chan $chan1 stick.3 none
return 0
}
if {($snick == "") && ($type == "1")} {
blacktools:tell $nick $host $hand $chan $chan1 stick.4 none
return 0
}
blacktools:banner:4 $mask $hand $chan $reason $time stick($chan)
}


proc stickpublic {nick host hand chan arg} {
global botnick black
set snick [lindex [split $arg] 0]
set mask [lindex [split $arg] 0]
set chan1 "$chan"
set type 0
set time [lindex [split $arg] 1]
set reason [join [lrange [split $arg] 2 end]]
set handle [nick2hand $snick]
foreach c [channels] {
set backchan [channel get $c backchan]
if {[string match -nocase $chan $backchan] && [channel get $c chanreport]} {
set chan "$c"
}
}
if {[regexp {^[\\+!#&]} $snick] && [matchattr $hand nm|- $chan]} {
set chan "$snick"
set time [lindex [split $arg] 2]
set mask [lindex [split $arg] 1]
set snick [lindex [split $arg] 1]
set reason [join [lrange [split $arg] 3 end]]
if {![regexp {^[0-9]} $time]} {
set time "$black(dfstickbantime)"
set reason [join [lrange [split $arg] 2 end]]
}
}
if {![regexp {^[0-9]} $time]} {
set time "$black(dfstickbantime)"
set reason [join [lrange [split $arg] 1 end]]
}
stick:process $snick $mask $time $reason $nick $hand $host $chan $chan1 $type
}





################################### t #################################


proc tpublic {nick host hand chan arg} {
global black
set topics [join [lrange [split $arg] 0 end]]
set c [lindex [split $arg] 0]
set type 0
set chan1 "$chan"
if {[regexp {^[\\+!#&]} $c] && [matchattr $hand nm|- $chan]} {
set chan "$c"
set topics [join [lrange [split $arg] 1 end]]
}
t:process $nick $host $hand $chan $chan1 $topics $type
}

proc t:process {nick host hand chan chan1 topics type} {
global botnick black
set char(p) [lindex $black(cmdchar) 0]
if {[string match -nocase "$char(p)" "none"]} {
set char(p) ""
} 
if {[matchattr $hand nm|- $chan]} {
if {($topics == "")  && ($type == "0")} {
blacktools:tell $nick $host $hand $chan $chan1 t.1 none
return 0
}
if {($topics == "") && ($type == "1")} {
blacktools:tell $nick $host $hand $chan $chan1 t.2 none
return 0
}
}
if {($topics == "") && ($type == "0")} {
blacktools:tell $nick $host $hand $chan $chan1 t.3 none
return 0
}
if {($topics == "") && ($type == "1")} {
blacktools:tell $nick $host $hand $chan $chan1 t.4 none
return 0
}

if {![validchan $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.novalidchan none
return 0
}
if {![onchan $botnick $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.notonchan none
return 0
}

if {[matchattr $hand -|q $chan]} { blacktools:tell $nick $host $hand $chan $chan1 gl.suspend none
return 0

}
if {![botisop $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.noop none
return 0
}

if {[channel get $chan showhandle]} {
set topics "($hand) $topics"
} else { set topics "$topics" 
}
putquick "TOPIC $chan :$topics"
}

############################## status #################################


proc statuspublic {nick host hand chan arg} {
global botnick server uptime {server-online}
set chan1 "$chan"
regsub -all " " [channels] ", " chans
catch {exec uptime} shelluptime
set up [duration [expr [unixtime] - $uptime]]
set on [duration [expr [unixtime] - ${server-online}]]
blacktools:tell $nick $host $hand $chan $chan1 status.1 $up
blacktools:tell $nick $host $hand $chan $chan1 status.2 $server
blacktools:tell $nick $host $hand $chan $chan1 status.3 $on
blacktools:tell $nick $host $hand $chan $chan1 status.4 $chans
blacktools:tell $nick $host $hand $chan $chan1 status.5 $shelluptime
}

############################## uptime #################################

proc uptimepublic {nick host hand chan arg} {
global botnick uptime {server-online} server
set chan1 "$chan"
set up [duration [expr [unixtime] - $uptime]]
set on [duration [expr [unixtime] - ${server-online}]]
blacktools:tell $nick $host $hand $chan $chan1 status.1 $up
blacktools:tell $nick $host $hand $chan $chan1 status.2 $server
blacktools:tell $nick $host $hand $chan $chan1 status.3 $on
}

################################# i ###################################

proc ipublic {nick host hand chan arg} {
global botnick black
set type 0
set chan1 "$chan"
set inick [lrange [split $arg] 0 end]
set c [lindex [split $arg] 0]
if {[regexp {^[\\+!#&]} $c] && [matchattr $hand nm|- $chan]} {
set chan "$c"
set inick [join [lrange [split $arg] 1 end]]
}
i:process $nick $host $hand $chan $chan1 $inick $type
}

proc i:process {nick host hand chan chan1 inick type} {
global botnick black
set char(p) [lindex $black(cmdchar) 0]
if {[string match -nocase "$char(p)" "none"]} {
set char(p) ""
} 
if {[matchattr $hand nm|- $chan]} {
if {($inick == "")  && ($type == "0")} {
blacktools:tell $nick $host $hand $chan $chan1 i.3 none
return 0
}
if {($inick == "") && ($type == "1")} {
blacktools:tell $nick $host $hand $chan $chan1 i.4 none
return 0
}
}
if {($inick == "") && ($type == "0")} {
blacktools:tell $nick $host $hand $chan $chan1 i.5 none
return 0
}
if {($inick == "") && ($type == "1")} {
blacktools:tell $nick $host $hand $chan $chan1 i.6 none
return 0
}

if {![validchan $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.novalidchan none
return 0
}
if {![onchan $botnick $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.notonchan none
return 0
}

set replace(%nick%) $nick
set replace(%chan%) $chan
set getlang [string tolower [getuser $hand XTRA OUTPUT_LANG]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
set getmsg $black(say.$getlang.i.7)

if {[info exists black(say.$getlang.i.7)]} {
set imessage [string map [array get replace] $getmsg]
}

if {[matchattr $hand -|q $chan]} { blacktools:tell $nick $host $hand $chan $chan1 gl.suspend none
return 0
}

if {![botisop $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.noop none
return 0
}
foreach in $inick {
if {[onchan $in $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 i.1 $in
return 0
}

set countz [getuser $hand XTRA i($chan)]
if {$countz == ""} { set countz 0 }
set counts [expr $countz + 1]
setuser $hand XTRA i($chan) $counts
putquick "INVITE $in $chan"
putquick "PRIVMSG $in :$imessage"
blacktools:tell $nick $host $hand $chan $chan1 i.2 $in
}
}

############################### addinfo ###############################


proc addinfopublic {nick host hand chan arg} {
global botnick black
set info [join [lrange [split $arg] 0 end]]
set chan1 "$chan"
set char(p) [lindex $black(cmdchar) 0]
if {[matchattr $hand -|q $chan]} { blacktools:tell $nick $host $hand $chan $chan1 gl.suspend none
return 0
}
if {$info == ""} { 
blacktools:tell $nick $host $hand $chan $chan1 addinfo.1 none
return 0
}
addinfo:process $nick $host $hand $chan $chan1 $info
}

proc addinfo:process {nick host hand chan chan1 info} {
global botnick black
if {[string match -nocase "$info" "off"]} {
set infos ""
setuser $hand info $infos
blacktools:tell $nick $host $hand $chan $chan1 addinfo.3 none
return 0
}
setuser $hand info $info
blacktools:tell $nick $host $hand $chan $chan1 addinfo.4 $info 
}

############################### purge ###############################

proc purgepublic {nick host hand chan arg} {
global botnick black
set reason [join [lrange [split $arg] 0 end]]
set chan1 "$chan"
if {$reason == ""} {
blacktools:tell $nick $host $hand $chan $chan1 purge.1 none
return 0
}
purge:process $nick $host $hand $chan $chan1 $reason
}

proc purge:process {nick host hand chan chan1 reason} {
channel remove $chan
delchan:stats $chan $hand $host
blacktools:tell $nick $host $hand $chan $chan1 purge.2 none
putquick "PART $chan :PURGED by $hand :$reason"
}


################################### v #################################


proc vpublic {nick host hand chan arg} {
global botnick black
set c [lindex [split $arg] 0]
set arg [split $arg]
set nick [split $nick]
set chan1 "$chan"
if {[regexp {^[\\+!#&]} $c] && [matchattr $hand nm|- $chan]} {
set chan "$c"
set arg [lrange $arg 1 end]
}
v:process $nick $host $hand $chan $chan1 $arg
}

proc v:process {nick host hand chan chan1 arg} {
global botnick black
if {![validchan $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.novalidchan none
return 0
}
if {![onchan $botnick $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.notonchan none
return 0
}

if {![botisop $chan]} { blacktools:tell $nick $host $hand $chan $chan1 gl.noop none
return 0
}
if {[matchattr $hand -|q $chan]} { blacktools:tell $nick $host $hand $chan $chan1 gl.suspend none
return 0
}
if {$arg == ""} {
set arg $nick
}

foreach voicenick $arg {
if {[isbotnick $voicenick]} { return 0 }
if {[isvoice $voicenick $chan]} {putquick "MODE $chan -v $voicenick"} else {putquick "MODE $chan +v $voicenick"}
}

}

################################## o ##################################

proc opublic {nick host hand chan arg} {
global botnick black
set c [lindex [split $arg] 0]
set arg [split $arg]
set nick [split $nick]
set chan1 "$chan"
if {[regexp {^[\\+!#&]} $c] && [matchattr $hand nm|- $chan]} {
set chan "$c"
set arg [lrange $arg 1 end]
}
o:process $nick $host $hand $chan $chan1 $arg
}


proc o:process {nick host hand chan chan1 arg} {
global botnick black
if {![validchan $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.novalidchan none
return 0
}
if {![onchan $botnick $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.notonchan none
return 0
}

if {![botisop $chan]} { blacktools:tell $nick $host $hand $chan $chan1 gl.noop none
 return 0
}
if {[matchattr $hand -|q $chan]} { blacktools:tell $nick $host $hand $chan $chan1 gl.suspend none
return 0
}

if {$arg == ""} {
set arg $nick
}


foreach opnick $arg {
if {[isbotnick $opnick]} { return 0 }
if {[isop $opnick $chan]} {putquick "MODE $chan -o $opnick"} else {putquick "MODE $chan +o $opnick"}
}

}


################################# l ###################################

proc lpublic {nick host hand chan arg} {
global black
set times [lindex [split $arg] 0]
set type 0
set chan1 "$chan"
if {[regexp {^[\\+!#&]} $times] && [matchattr $hand nm|- $chan]} {
set chan "$times"
set times [lindex [split $arg] 1]
}
l:process $nick $host $hand $chan $chan1 $times $type
}

proc l:process {nick host hand chan chan1 time type} {
global botnick black
set char(p) [lindex $black(cmdchar) 0]
if {[string match -nocase "$char(p)" "none"]} {
set char(p) ""
}         
if {[matchattr $hand -|q $chan]} { blacktools:tell $nick $host $hand $chan $chan1 gl.suspend none
return 0
}
if {[matchattr $hand nm|- $chan]} {
if {($time == "")  && ($type == "0")} {
blacktools:tell $nick $host $hand $chan $chan1 l.1 none
return 0
}
if {($time == "") && ($type == "1")} {
blacktools:tell $nick $host $hand $chan $chan1 l.2 none
return 0
}
}
if {($time == "") && ($type == "0")} {
blacktools:tell $nick $host $hand $chan $chan1 l.3 none
return 0
}
if {($time == "") && ($type == "1")} {
blacktools:tell $nick $host $hand $chan $chan1 l.4 none
return 0
}

if {![validchan $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.novalidchan none
return 0
}

if {![onchan $botnick $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.notonchan none
return 0
}

if {![botisop $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.noop none
return 0
}

if {$time >= 300} {
blacktools:tell $nick $host $hand $chan $chan1 l.5 none
return 0
}
putserv "MODE $chan +$black(lmode)" ;utimer $time [list putquick "MODE $chan -$black(lmode)"]
blacktools:tell $nick $host $hand $chan $chan1 l.6 "$black(lmode) $time"
}

proc chatpublic {nick host hand chan arg} {
global botnick
*ctcp:CHAT $nick $host $hand $botnick CHAT $arg
blacktools:tell $nick $host $hand $chan $chan1 chat.1 none
} 

################################ ul ###################################

proc ul:process {nick host hand chan chan1} {
global black botnick
if {[matchattr $hand -|q $chan]} { blacktools:tell $nick $host $hand $chan $chan1 gl.suspend none
return 0
}

if {![validchan $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.novalidchan none
return 0
}

if {![onchan $botnick $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.notonchan none
return 0
}

if {![botisop $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.noop none
return 0
}
putquick "MODE $chan -$black(ulmodes)"
blacktools:tell $nick $host $hand $chan $chan1 ul.1 $black(ulmodes)
}


proc ulpublic {nick host hand chan arg} {
global black
set c [lindex [split $arg] 0]
set chan1 "$chan"
if {[regexp {^[\\+!#&]} $c] && [matchattr $hand nm|- $chan]} {
set chan "$c"
}
ul:process $nick $host $hand $chan $chan1
}

################################ say ##################################


proc saypublic {nick host hand chan arg} {
global black
set text [join [lrange [split $arg] 0 end]]
set c [lindex [split $arg] 0]
set type 0
set chan1 "$chan"
if {[regexp {^[\\+!#&]} $c] && [matchattr $hand nm|- $chan]} {
set chan "$c"
set text [join [lrange [split $arg] 1 end]]
}
say:process $nick $host $hand $chan $chan1 $text $type
}

proc say:process {nick host hand chan chan1 text type} {
global botnick black
set char(p) [lindex $black(cmdchar) 0]
if {[string match -nocase "$char(p)" "none"]} {
set char(p) ""
} 
if {[matchattr $hand -|q $chan]} { blacktools:tell $nick $host $hand $chan $chan1 gl.suspend none
return 0
}

if {![validchan $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.novalidchan none
return 0
}

if {[matchattr $hand nm|- $chan]} {
if {($text == "")  && ($type == "0")} {
blacktools:tell $nick $host $hand $chan $chan1 say.1 none
return 0
}
if {($text == "") && ($type == "1")} {
blacktools:tell $nick $host $hand $chan $chan1 say.2 none
return 0
}
}
if {($text == "") && ($type == "0")} {
blacktools:tell $nick $host $hand $chan $chan1 say.3 none
return 0
}
if {($text == "") && ($type == "1")} {
blacktools:tell $nick $host $hand $chan $chan1 say.4 none
return 0
}

if {![onchan $botnick $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.notonchan none
return 0
}

putquick "PRIVMSG $chan :$text"
}

################################ act ##################################

proc actpublic {nick host hand chan arg} {
global black
set text [join [lrange [split $arg] 0 end]]
set c [lindex [split $arg] 0]
set type 0
set chan1 "$chan"
if {[regexp {^[\\+!#&]} $c] && [matchattr $hand nm|- $chan]} {
set chan "$c"
set text [join [lrange [split $arg] 1 end]]
}
act:process $nick $host $hand $chan $chan1 $text $type
}

proc act:process {nick host hand chan chan1 text type} {
global botnick black
set char(p) [lindex $black(cmdchar) 0]
if {[string match -nocase "$char(p)" "none"]} {
set char(p) ""
} 
if {[matchattr $hand -|q $chan]} { blacktools:tell $nick $host $hand $chan $chan1 gl.suspend none
return 0
}
if {[matchattr $hand nm|- $chan]} {
if {($text == "")  && ($type == "0")} {
blacktools:tell $nick $host $hand $chan $chan1 act.1 none
return 0
}
if {($text == "") && ($type == "1")} {
blacktools:tell $nick $host $hand $chan $chan1 act.2 none
return 0
}
}
if {($text == "") && ($type == "0")} {
blacktools:tell $nick $host $hand $chan $chan1 act.3 none
return 0
}
if {($text == "") && ($type == "1")} {
blacktools:tell $nick $host $hand $chan $chan1 act.4 none
return 0
}


if {![validchan $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.novalidchan none
return 0
}

if {![onchan $botnick $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.notonchan none
return 0
}
putquick "PRIVMSG $chan :\001ACTION $text\001"
}

############################## broadcast ##############################

proc broadcastpublic {nick host hand chan arg} {
global black
set text [join [lrange [split $arg] 0 end]]
set chan1 "$chan"
set char(p) [lindex $black(cmdchar) 0]
if {[string match -nocase "$char(p)" "none"]} {
set char(p) ""
} 
if {$text == ""} { 
blacktools:tell $nick $host $hand $chan $chan1 broadcast.1 none
return 0
}
broadcast:cmd:process $nick $host $hand $chan $chan1 $text
}


proc broadcast:cmd:process {nick host hand chan chan1 text} {
global botnick black
if {[matchattr $hand -|q $chan]} { blacktools:tell $nick $host $hand $chan $chan1 gl.suspend none
return 0
}
foreach c [channels] {
if {![channel get $c silent]} {
putquick "PRIVMSG $c :(BROADCAST) $text"
}
}
}

############################### check #################################

proc checkpublic {nick host hand chan arg} {
 global black
set chan1 "$chan"
set char(p) [lindex $black(cmdchar) 0]
if {[string match -nocase "$char(p)" "none"]} {
set char(p) ""
} 
set checked [lindex [split $arg] 0]
if {$checked == ""} { blacktools:tell $nick $host $hand $chan $chan1 check.1 none
return 0
}
check:process $nick $host $hand $chan $chan1 $checked
}

proc check:process {nick host hand chan chan1 checked} {
global botnick black
set char(p) [lindex $black(cmdchar) 0]
if {[string match -nocase "$char(p)" "none"]} {
set char(p) ""
} 
set handle [nick2hand $checked]
if {[matchattr $hand -|q $chan]} { 
blacktools:tell $nick $host $hand $chan $chan1 gl.suspend none
return 0
}


if {[matchattr $handle $black(exceptflags) $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.noban none
 return 0
}

if {[isbotnick $checked]} {
return 0
}
if {![botisop $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.noop none
return 0
}
 if {![onchan $checked $chan]} { 
blacktools:tell $nick $host $hand $chan $chan1 gl.usernotonchan $checked
return 0
}
if {[onchan $checked $chan]} {
set mask *!*@[lindex [split [getchanhost $checked $chan] "@"] 1] 
}

set countz [getuser $hand XTRA check($chan)]
if {$countz == ""} { set countz 0 }
set counts [expr $countz + 1]
setuser $hand XTRA check($chan) $counts
set getlang [string tolower [getuser $hand XTRA OUTPUT_LANG]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
set getmsg $black(say.$getlang.check.3)
if {[info exists black(say.$getlang.check.3)]} {
putquick "PRIVMSG $checked :$black(say.$getlang.check.3)"
}

}

############################## version ################################

proc versionpublic {nick host hand chan arg} {
global botnick black
set chan1 "$chan"
version:process $nick $host $hand $chan $chan1
}

proc version:process {nick host hand chan chan1} {
global botnick black
blacktools:tell $nick $host $hand $chan $chan1 version.1 none
}

############################### cycle #################################

proc cycle:process {nick host hand chan chan1 reason} {
global black botnick
if {[matchattr $hand -|q $chan]} { blacktools:tell $nick $host $hand $chan $chan1 gl.suspend none
return 0
}

if {![validchan $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.novalidchan none
return 0
}

if {![onchan $botnick $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.notonchan none
return 0
}

if {$reason == ""} { set reason "No Reason" }
putquick "PART $chan :$reason"
utimer 5 [list putquick "JOIN $chan"]
}


proc cyclepublic {nick host hand chan arg} {
global black
set reason [join [lrange [split $arg] 0 end]]
set c [lindex [split $arg] 0]
set chan1 "$chan"
if {[regexp {^[\\+!#&]} $c] && [matchattr $hand nm|- $chan]} {
set chan "$c"
set reason [join [lrange [split $arg] 1 end]]
}
cycle:process $nick $host $hand $chan $chan1 $reason
}

################################ away #################################

proc awaypublic {nick host hand chan arg} {
global black
set chan1 "$chan"
set char(p) [lindex $black(cmdchar) 0]
if {[string match -nocase "$char(p)" "none"]} {
set char(p) ""
} 
set aw [join [lrange [split $arg] 0 end]]
if {$aw == "" } {blacktools:tell $nick $host $hand $chan $chan1 away.1 none
return 0
}
away:process $nick $host $hand $chan $chan1 $aw
}


proc away:process {nick host hand chan chan1 aw} {
global black botnick wdir
set char(p) [lindex $black(cmdchar) 0]
if {[string match -nocase "$char(p)" "none"]} {
set char(p) ""
} 
if {[string match -nocase "$aw" "off"]} { 
blacktools:tell $nick $host $hand $chan $chan1 away.3 none
putquick "AWAY :" 
set type [open $wdir w]
set none ""
puts $type "$none"
close $type

return 0
} else {
blacktools:tell $nick $host $hand $chan $chan1 away.4 $aw ; putquick "AWAY :$aw"
set type [open $wdir w]
puts $type "$aw"
close $type
}
}

proc setaway {my} {
global wdir
if {[file exists $wdir] == 0} {
set file [open $wdir a]
close $file
}
set aways [open $wdir r]
set away "[gets $aways]"
catch {close $aways}
if {$away == ""} {
 return 0 
} else {
putserv "AWAY :"
putserv "AWAY :$away"
}
}


################################### mode ######################################

proc modepublic {nick host hand chan arg} {
global black
set modes [lindex [split $arg] 0]
set chan1 "$chan"
set type 0
if {[regexp {^[#&]} $modes] && [matchattr $hand nm|- $chan]} {
set chan "$modes"
set modes [lindex [split $arg] 1]
}
mode:process $nick $host $hand $chan $chan1 $modes $type
}

proc mode:process {nick host hand chan chan1 modes type} {
global botnick black
set char(p) [lindex $black(cmdchar) 0]
if {[string match -nocase "$char(p)" "none"]} {
set char(p) ""
} 
if {[matchattr $hand -|q $chan]} { blacktools:tell $nick $host $hand $chan $chan1 gl.suspend none
return 0
}

if {[matchattr $hand nm|- $chan]} {
if {($modes == "")  && ($type == "0")} {
blacktools:tell $nick $host $hand $chan $chan1 mode.1 none
return 0
}
if {($modes == "") && ($type == "1")} {
blacktools:tell $nick $host $hand $chan $chan1 mode.2 none
return 0
}
}
if {($modes == "") && ($type == "0")} {
blacktools:tell $nick $host $hand $chan $chan1 mode.3 none
return 0
}
if {($modes == "") && ($type == "1")} {
blacktools:tell $nick $host $hand $chan $chan1 mode.4 none
return 0
}


if {![validchan $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.novalidchan none
return 0
}

if {![onchan $botnick $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.notonchan none
return 0
}

if {![botisop $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.noop none
return 0
}

if {![regexp {^[+ -]} $modes]} {
blacktools:tell $nick $host $hand $chan $chan1 mode.5 none
return 0
}
blacktools:tell $nick $host $hand $chan $chan1 mode.6 $modes
putserv "MODE $chan $modes"
}


################################## myset #############################

proc mysetpublic {nick host hand chan arg} {
global black
set chan1 "$chan"
set flags [lindex [split $arg] 0]
set type [lindex [split $arg] 1]
if {$type == ""} {
blacktools:tell $nick $host $hand $chan $chan1 myset.3 none
return 0
}
myset:process $nick $host $hand $chan $chan1 $flags $type
}


proc myset:process {nick host hand chan chan1 flags typez} {
global black
switch -exact -- [string tolower $flags] {
lang {
setuser $hand XTRA OUTPUT_LANG $typez
blacktools:tell $nick $host $hand $chan $chan1 myset.1 $typez
return 0
}

output {
if {[string match -nocase $typez "notice"]} {
setuser $hand XTRA OUTPUT_TYPE 1
blacktools:tell $nick $host $hand $chan $chan1 myset.2 $typez
return 0
}
if {[string match -nocase $typez "chan"]} {
setuser $hand XTRA OUTPUT_TYPE 0
blacktools:tell $nick $host $hand $chan $chan1 myset.2 $typez
return 0
}
}

}
}


################################# set #################################

proc setpublic {nick host hand chan arg} {
global black
set flags [lindex [split $arg] 0]
set type [join [lrange [split $arg] 1 end]]
set chan1 "$chan"
set type1 0
if {[regexp {^[#&]} $flags] && [matchattr $hand nm|- $chan]} {
set chan "$flags"
set flags [lindex [split $arg] 1]
set type [join [lrange [split $arg] 2 end]]
}
set:process $nick $host $hand $chan $chan1 $flags $type $type1
}

proc set:process {nick host hand chan chan1 flags type type1} {
global botnick black
set char(p) [lindex $black(cmdchar) 0]
if {[string match -nocase "$char(p)" "none"]} {
set char(p) ""
} 
if {[matchattr $hand -|q $chan]} { 
blacktools:tell $nick $host $hand $chan $chan1 gl.suspend none
return 0
}

if {[matchattr $hand nm|- $chan]} {
if {($flags == "")  && ($type1 == "0")} {
blacktools:tell $nick $host $hand $chan $chan1 set.1 none
return 0
}
if {($flags == "") && ($type1 == "1")} {
blacktools:tell $nick $host $hand $chan $chan1 set.2 none
return 0
}
}
if {($flags == "") && ($type1 == "0")} {
blacktools:tell $nick $host $hand $chan $chan1 set.3 none
return 0
}
if {($flags == "") && ($type1 == "1")} {
blacktools:tell $nick $host $hand $chan $chan1 set.4 none
return 0
}


if {![validchan $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.novalidchan none
return 0
}

if {![onchan $botnick $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.notonchan none
return 0
}


 if {$type == ""} {
set why [catch {channel set $chan $flags} error]
if {$why == "1"} { blacktools:tell $nick $host $hand $chan $chan1 set.5 $flags
return 0
} else {
channel set $chan $flags ; blacktools:tell $nick $host $hand $chan $chan1 set.6 $flags
}
 
} else {
set why [catch {channel set $chan $flags $type} error]
if {!([matchattr $hand mn|- $chan]) && [string match -nocase "backchan" $flags]} {
return 0
}

if {$why == "1"} { blacktools:tell $nick $host $hand $chan $chan1 set.7 "$flags $type"
return 0
} else {
 channel set $chan $flags $type ; blacktools:tell $nick $host $hand $chan $chan1 set.8 "$flags $type" 
}
}
}



proc ignorepublic {nick host hand chan arg} {
global black
set chan1 "$chan"
set what [lindex [split $arg] 0]
set mask [lindex [split $arg] 1]
set time [lindex [split $arg] 2]
set reason [join [lrange [split $arg] 3 end]]
if {$what == ""} { blacktools:tell $nick $host $hand $chan $chan1 ignore.1 none
return 0
}
ignore:process $nick $host $hand $chan $chan1 $what $mask $time $reason
}


proc ignore:process {nick host hand chan chan1 what mask time reason} {
global botnick black
set char(p) [lindex $black(cmdchar) 0]
if {[string match -nocase "$char(p)" "none"]} {
set char(p) ""
} 
switch -exact -- [string tolower $what] {

list {

if {[llength [ignorelist]] == "0"} { blacktools:tell $nick $host $hand $chan $chan1 ignore.3 none
return 0
}
foreach ig [ignorelist] {
set hostig [lindex $ig 0]
set byig [lindex $ig 4]
set time [lindex $ig 2]
set reasig [lindex $ig 1]
if {$time != "0"} {
set bytime [clock format $time -format %D-%H:%M:%S]
} else { set bytime "-"}
blacktools:tell $nick $host $hand $chan $chan1 ignore.4 "$hostig $byig $bytime $reasig" 
}
}

add {

if {[isignore $mask]} {
blacktools:tell $nick $host $hand $chan $chan1 ignore.5 "$mask"
return 0
}

if {![regexp {^[0-9]} $time]} {
set time "60"
}
if {$reason == ""} { set reason "No Reason" }
newignore $mask $hand $reason $time
blacktools:tell $nick $host $hand $chan $chan1 ignore.6 "$mask $time $reason"
}



delete {
if {$mask == ""} { blacktools:tell $nick $host $hand $chan $chan1 ignore.7 none
return 0
}

if {[isignore $mask]} {
killignore $mask
} else { blacktools:tell $nick $host $hand $chan $chan1 ignore.8 "$mask"
return 0
} 
blacktools:tell $nick $host $hand $chan $chan1 ignore.9 "$mask"
}

}
}


################################# show ################################

proc showpublic {nick host hand chan arg} {
global black
set wich [lindex [split $arg] 0]
set type 0
set chan1 "$chan"
if {[regexp {^[#&]} $wich] && [matchattr $hand nm|- $chan]} {
set chan "$wich"
set wich [lindex [split $arg] 1]
}
show:process $nick $host $hand $chan $chan1 $wich $type
}

proc show:process {nick host hand chan chan1 wich type} {
global black botnick
set char(p) [lindex $black(cmdchar) 0]
if {[string match -nocase "$char(p)" "none"]} {
set char(p) ""
} 
if {[matchattr $hand -|q $chan]} { blacktools:tell $nick $host $hand $chan $chan1 gl.suspend none
return 0
}

if {[matchattr $hand nm|- $chan]} {
if {($wich == "")  && ($type == "0")} {
blacktools:tell $nick $host $hand $chan $chan1 show.1 none
return 0
}
if {($wich == "") && ($type == "1")} {
blacktools:tell $nick $host $hand $chan $chan1 show.2 none
return 0
}
}
if {($wich == "") && ($type == "0")} {
blacktools:tell $nick $host $hand $chan $chan1 show.3 none
return 0
}
if {($wich == "") && ($type == "1")} {
blacktools:tell $nick $host $hand $chan $chan1 show.4 none
return 0
}


if {![validchan $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.novalidchan none
return 0
}

if {![onchan $botnick $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.notonchan none
return 0
}


set why [catch {channel get $chan $wich} error]
if {$why == "1"} { blacktools:tell $nick $host $hand $chan $chan1 show.5 $wich
return 0
} else {
set replyinfo [channel get $chan $wich]

if {($replyinfo == "") || ($replyinfo == "0")} {
switch -exact -- [string tolower $wich] {

antipub-reason {
set getlang [string tolower [channel get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
set replyinfo $black(say.$getlang.antipub.1)
}

antilongtextmax {
set replyinfo [channel get $chan antilongtextmax]
if {$replyinfo == "0"} {
set replyinfo "$black(longchar)"
}
}


joinflood {
set replyinfo [channel get $chan joinflood]
if {$replyinfo == ""} {
set replyinfo "4 5"
}
}

chanflood {
set replyinfo [channel get $chan chanflood]
if {$replyinfo == ""} {
set replyinfo "4 5"
}
}

idleopmax {
set replyinfo [channel get $chan idleopmax]
if {$replyinfo == "0"} {
set replyinfo "$black(idleopmax)"
}
}

idlevoicemax {
set replyinfo [channel get $chan idlevoicemax]
if {$replyinfo == "0"} {
set replyinfo "$black(idlevoicemax)"
}
}


private-bantime {
set replyinfo "$black(privatebantime)"
}

private-reason {
set getlang [string tolower [channel get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
set replyinfo $black(say.$getlang.private.12)
}

antipub-bantime {
set replyinfo "$black(antipubbantime)"
}

antinotice-bantime {
set replyinfo "$black(antinoticebantime)"
}

antinotice-reason {
set getlang [string tolower [channel get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
set replyinfo $black(say.$getlang.antinotice.1)
}

antictcp-reason {
set getlang [string tolower [channel get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
set replyinfo $black(say.$getlang.antictcp.1)
}

antictcp-bantime {
set replyinfo "$black(antictcpbantime)"
}

antibadword-bantime {
set replyinfo "$black(antibadwordbantime)"
}

antibadword-reason {
set getlang [string tolower [channel get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
set replyinfo $black(say.$getlang.antibadword.1)
}

antilongtext-reason {
set getlang [string tolower [channel get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
set replyinfo $black(say.$getlang.antilongtext.1)
}

antilongtext-bantime {
set replyinfo "$black(longbantime)"
}

antibadquitpart-reason {
set getlang [string tolower [channel get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
set replyinfo $black(say.$getlang.antibadquitpart.1)
}

antibadquitpart-bantime {
set replyinfo "$black(badquitparttime)"
}

antijoinpart-reason {
set getlang [string tolower [channel get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
set replyinfo $black(say.$getlang.antijoinpart.1)
}

antijoinpart-bantime {
set replyinfo "$black(joinpartbantime)"
}

antispam-bantime {
set replyinfo "$black(spamban)"
}

antispam-reason {
set getlang [string tolower [channel get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
set replyinfo $black(say.$getlang.antispam.1)
}

antirepeat-reason {
set getlang [string tolower [channel get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
set replyinfo $black(say.$getlang.antirepeat.1)
}

antirepeat-setting {
set replyinfo "$black(repeats)"
}

antirepeat-bantime {
set replyinfo "$black(antirepeatbantime)"
}

anticolor-reason {
set getlang [string tolower [channel get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
set replyinfo $black(say.$getlang.anticolor.1)
}

anticolor-bantime {
set replyinfo "$black(anticolorbantime)"
}

antibold-reason {
set getlang [string tolower [channel get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
set replyinfo $black(say.$getlang.antibold.1)
}

antibold-bantime {
set replyinfo "$black(antiboldbantime)"
}

antiunderline-reason {
set getlang [string tolower [channel get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
set replyinfo $black(say.$getlang.antiunderline.1)
}

antiunderline-bantime {
set replyinfo "$black(antiunderlinebantime)"
}

anticaps-reason {
set getlang [string tolower [channel get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
set replyinfo $black(say.$getlang.anticaps.1)
}

anticaps-bantime {
set replyinfo "$black(anticapsbantime)"
}

badfullname-reason {
set getlang [string tolower [channel get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
set replyinfo $black(say.$getlang.badfullname.1)
}

badfullname-bantime {
set replyinfo "$black(badfbantime)"
}

badnick-reason {
set getlang [string tolower [channel get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
set replyinfo $black(say.$getlang.badnick.1)
}

badnick-bantime {
set replyinfo "$black(badnickbantime)"
}

badident-reason {
set getlang [string tolower [channel get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
set replyinfo $black(say.$getlang.badident.1)
}

badident-bantime {
set replyinfo "$black(badidentbantime)"
}

antichanflood-reason {
set getlang [string tolower [channel get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
set replyinfo $black(say.$getlang.antichanflood.1)
}

antichanflood-bantime {
set replyinfo "$black(antifloodchanbantime)"
}

badchan-reason {
set getlang [string tolower [channel get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
set replyinfo $black(say.$getlang.badchan.15)
}

badchan-bantime {
set replyinfo "$black(badcbantime)"
}

count-message {
set getlang [string tolower [channel get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
set replyinfo $black(say.$getlang.count.11)
}


dr-reason {
set getlang [string tolower [channel get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
set replyinfo $black(say.$getlang.dr.5)
}

dr-bantime {
set replyinfo "$black(drtime)"
}

bot-reason {
set getlang [string tolower [channel get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
set replyinfo $black(say.$getlang.bot.5)
}

bot-bantime {
set replyinfo "$black(bottime)"
}

n-reason {
set getlang [string tolower [channel get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
set replyinfo $black(say.$getlang.n.5)
}

n-bantime {
set replyinfo "$black(ntime)"
}

id-reason {
set getlang [string tolower [channel get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
set replyinfo $black(say.$getlang.id.5)
}

id-bantime {
set replyinfo "$black(idtime)"
}

w-reason {
set getlang [string tolower [channel get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
set replyinfo $black(say.$getlang.w.5)

}

spam-reason {
set getlang [string tolower [channel get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
set replyinfo $black(say.$getlang.spam.5)
}

spam-bantime {
set replyinfo "$black(spamtime)"
}

bw-reason {
set getlang [string tolower [channel get $chan lang]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
set replyinfo $black(say.$getlang.bw.5)
}

bw-bantime {
set replyinfo "$black(bwtime)"
}

}
}
blacktools:tell $nick $host $hand $chan $chan1 show.6 "$wich $replyinfo"
}
}


############################## silence ################################

proc silencepublic {nick host hand chan arg} {
global black
set value [lindex [split $arg] 0]
set char(p) [lindex $black(cmdchar) 0]
if {[string match -nocase "$char(p)" "none"]} {
set char(p) ""
} 
set chan1 "$chan"
if {$value == ""} { blacktools:tell $nick $host $hand $chan $chan1 silence.1 none
return 0
}
silence:process $nick $host $hand $chan $chan1 $value
}

proc silence:process {nick host hand chan chan1 value} {
global botnick black
if {[matchattr $hand -|q $chan]} { blacktools:tell $nick $host $hand $chan $chan1 gl.suspend none
return 0
}

if {([regexp -nocase -- {(#[0-9]+|on|off)} $value tmp silents]) && (![regexp -nocase -- {\S#} $value])} {
 switch $silents {
on { blacktools:tell $nick $host $hand $chan $chan1 silence.3 none ; putquick "SILENCE +*!*@*"             
}
off { blacktools:tell $nick $host $hand $chan $chan1 silence.4 none ; putquick "SILENCE -*!*@*"            
}
}
}
}

############################## msg ####################################

proc msgpublic {nick host hand chan arg} {
global black
set nicks [lindex [split $arg] 0]
set chan1 "$chan"
set char(p) [lindex $black(cmdchar) 0]
if {[string match -nocase "$char(p)" "none"]} {
set char(p) ""
} 
set msg [join [lrange [split $arg] 1 end]]
if {[matchattr $hand -|q $chan]} { blacktools:tell $nick $host $hand $chan $chan1 gl.suspend none
return 0
}
if {$nicks == ""} {blacktools:tell $nick $host $hand $chan $chan1 msg.1 none
return 0
}
if {[isbotnick $nicks]} { 
return 0
}
putquick "PRIVMSG $nicks :$msg"
}


############################### reset #################################

proc resetpublic {nick host hand chan arg} {
global black
set dece [lindex [split $arg] 0]
set type 0
set chan1 "$chan"
if {[regexp {^[#&]} $dece] && [matchattr $hand nm|- $chan]} {
set chan "$dece"
set dece [lindex [split $arg] 1]
}
reset:process $nick $host $hand $chan $chan1 $dece $type
}



proc reset:process {nick host hand chan chan1 dece type} {
global botnick black
set char(p) [lindex $black(cmdchar) 0]
if {[string match -nocase "$char(p)" "none"]} {
set char(p) ""
} 
if {[matchattr $hand nm|- $chan]} {
if {($dece == "")  && ($type == "0")} {
blacktools:tell $nick $host $hand $chan $chan1 reset.1 none
return 0
}
if {($dece == "") && ($type == "1")} {
blacktools:tell $nick $host $hand $chan $chan1 reset.2 none
return 0
}
}
if {($dece == "") && ($type == "0")} {
blacktools:tell $nick $host $hand $chan $chan1 reset.3 none
return 0
}
if {($dece == "") && ($type == "1")} {
blacktools:tell $nick $host $hand $chan $chan1 reset.4 none
return 0
}


if {![validchan $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.novalidchan none
return 0
}

if {![onchan $botnick $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.notonchan none
return 0
}

if {[string match -nocase "all" "$dece"]} {
set emptyflag "antipub-reason antinotice-reason antictcp-reason antibadword-reason antilongtext-reason antijoinpart-reason antirepeat-reason antirepeat-setting antispam-reason anticolor-reason antibold-reason antiunderline-reason anticaps-reason badfullname-reason badnick-reason badident-reason antichanflood-reason chanflood joinflood private-reason dr-reason n-reason id-reason spam-reason w-reason bw-reason bot-reason badchan-reason count-message"
foreach eflag $emptyflag {
channel set $chan $eflag ""
}
set zeroflag "antinotice-bantime antipub-bantime antictcp-bantime antibadword-bantime antilongtext-bantime antijoinpart-bantime antispam-bantime idleopmax idlevoicemax antilongtextmax antirepeat-bantime anticolor-bantime antibold-bantime antiunderline-bantime anticaps-bantime badfullname-bantime badnick-bantime badident-bantime antichanflood-bantime private-bantime  dr-bantime n-bantime id-bantime spam-bantime bw-bantime bot-bantime kickcount"
foreach oflag $zeroflag {
channel set $chan $oflag 0
}
blacktools:tell $nick $host $hand $chan $chan1 reset.5 none
return 0
}
set why [catch {channel set $chan $dece ""} error]
if {$why == "1"} { blacktools:tell $nick $host $hand $chan $chan1 reset.6 $dece
} else {
channel set $chan $dece ""
blacktools:tell $nick $host $hand $chan $chan1 reset.7 $dece
}
}


################################### banlist ###################################

proc banlistpublic {nick host hand chan arg} {
global botnick black
set user [lindex [split $arg] 0]
set type 0
set chan1 "$chan"
if {[regexp {^[\\+!#&]} $user] && [matchattr $hand nm|- $chan]} {
set chan "$user"
set user [lindex [split $arg] 1]
}
banlist:process $nick $host $hand $chan $chan1 $user $type
}


proc banlist:process {nick host hand chan chan1 user type} {
global botnick black
set i 0
set char(p) [lindex $black(cmdchar) 0]
if {[string match -nocase "$char(p)" "none"]} {
set char(p) ""
} 
if {[matchattr $hand nm|- $chan]} {
if {($user == "")  && ($type == "0")} {
blacktools:tell $nick $host $hand $chan $chan1 banlist.1 none
blacktools:tell $nick $host $hand $chan $chan1 banlist.2 none
return 0
}
if {($user == "") && ($type == "1")} {
blacktools:tell $nick $host $hand $chan $chan1 banlist.3 none
blacktools:tell $nick $host $hand $chan $chan1 banlist.4 none
return 0
}
}
if {($user == "") && ($type == "0")} {
blacktools:tell $nick $host $hand $chan $chan1 banlist.5 none
return 0
}
if {($user == "") && ($type == "1")} {
blacktools:tell $nick $host $hand $chan $chan1 banlist.6 none
return 0
}

if {[matchattr $hand nm|- $chan] && [string match -nocase "global" $user]} {

foreach ban [banlist] {

set i [expr $i +1]
set expire [clock format [lindex $ban 2] -format %D-%H:%M:%S]
set create [clock format [lindex $ban 3] -format %D-%H:%M:%S]
set fban [lindex $ban 0]
set freason [lindex $ban 1]
set fbywho [lindex $ban 5]

if {[lindex $ban 2] == 0} {
set expire "Permanent"
}

blacktools:tell $nick $host $hand $chan $chan1 banlist.9 none
blacktools:tell $nick $host $hand $chan $chan1 banlist.10 "$fban $fbywho $create $expire $freason"
set foundban 1
}

if {![info exists foundban]} {
blacktools:tell $nick $host $hand $chan $chan1 banlist.7 none
} else { blacktools:tell $nick $host $hand $chan $chan1 banlist.8 none }
return 0
}

if {![validchan $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.novalidchan none
return 0
}

if {![onchan $botnick $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.notonchan none
return 0
}

if {![validuser $user]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.nomem none
return 0
}

if {![matchattr $user nm|OASMN $chan]} { blacktools:tell $nick $host $hand $chan $chan1 gl.noaccess none 
return 0
}

foreach ban [banlist $chan] {
set own [lindex $ban 5]
if {[string match -nocase $own $user]} {
set i [expr $i +1]
set expire [clock format [lindex $ban 2] -format %D-%H:%M:%S]
set create [clock format [lindex $ban 3] -format %D-%H:%M:%S]
set fban [lindex $ban 0]
set freason [lindex $ban 1]

if {[lindex $ban 2] == 0} {
set expire "Permanent"
}
blacktools:tell $nick $host $hand $chan $chan1 banlist.11 $user
blacktools:tell $nick $host $hand $chan $chan1 banlist.12 "$fban $create $expire $freason"
set foundban 1
}
}

if {![info exists foundban]} {
blacktools:tell $nick $host $hand $chan $chan1 banlist.11 $user
blacktools:tell $nick $host $hand $chan $chan1 banlist.7 $user
} else { 
blacktools:tell $nick $host $hand $chan $chan1 banlist.8 $user }
}


############################## rehash #################################

proc rehashme {nick host hand arg} {
global black
blacktools:tell:prv $nick $host $hand rehash.1 none
 rehash
}

############################## VERSION ################################

proc blackreply {nick host hand dest key text} {
global ctcp-version
set {ctcp-version} "1Using 4BlackTools 2.3 1by 12BLaCkShaDoW"
}


############################## restart ################################

proc restartme {nick host hand arg} {
global black
blacktools:tell:prv $nick $host $hand restart.1 none
utimer 3 [list restart ]
}

############################### save #################################

proc saveme {nick host hand arg} {
global black
blacktools:tell:prv $nick $host $hand save.1 none
 save
}

############################### jump #################################

proc jumpme {nick host hand arg} {
global black
blacktools:tell:prv $nick $host $hand jump.1 none
 utimer 3 [list jump]
}

############################### die ###################################

proc dieme {nick host hand arg} {
global black
blacktools:tell:prv $nick $host $hand die.1 none
utimer 3 [list die "byeeee" ]
}


############################## nick ###################################

proc nickpublic {altnick host hand arg} {
global nick black
set getlang [string tolower [getuser $hand XTRA OUTPUT_LANG]]
set newnick [lindex [split $arg] 0]
if {$newnick == ""} { blacktools:tell:prv $nick $host $hand nick.2 none
return 0
}
blacktools:tell:prv $nick $host $hand nick.1 "$newnick"
set nick $newnick
}

proc nick:process {who newnick host hand chan} {
global black nick
set chan1 "$chan"
if {$newnick == ""} {
blacktools:tell $who $host $hand $chan $chan1 nick.2 none
return 0
}
blacktools:tell $who $host $hand $chan $chan1 nick.1 none
set nick $newnick
}

############################## addchan ################################

proc addchanpublic {nick host hand arg} {
global black
set chans [lindex [split $arg] 0]
if {$chans == ""} {blacktools:tell:prv $nick $host $hand addchan.1 none
return 0 
}

if {![regexp {^[#&]} $chans]} {
blacktools:tell:prv $nick $host $hand gl.novalidchan none
return 0
} 

if {[validchan $chans]} {
blacktools:tell:prv $nick $host $hand addchan.2 "$chans"
return 0
} else {
channel add $chans
addchan:stats $chans $hand $host
blacktools:tell:prv $nick $host $hand addchan.3 "$chans"
}
}

proc addchan:stats {chan hand host} {
global black botnick statsdir
set k 0
set time [unixtime]
set file [open $statsdir "r"]
set addfile "$chan ADDED $hand $host $time 0"
set database [read -nonewline $file]
close $file
set data [split $database "\n"]
foreach line $data {
set k [expr $k +1]
set chanentry [lindex [split $line] 0]
set addtype [lindex [split $line] 1]
if {[string equal -nocase "REMOVED" "$addtype"] && [string match -nocase $chanentry $chan]} { 
if {$line != ""} {
set num [expr $k - 1]
set delete [lreplace $data $num $num]
set files [open $statsdir "w"]
puts $files [join $delete "\n"]
close $files
}
}
}
set file [open $statsdir "r"]
set data [read -nonewline $file]
close $file
if {$data == ""} {
set files [open $statsdir "w"]
close $files
}
set file [open $statsdir "a"]
puts $file "$addfile"
close $file
}


proc delchan:stats {chan hand host} {
global black botnick statsdir
set k 0
set time [unixtime]
set file [open $statsdir "r"]
set database [read -nonewline $file]
close $file
set data [split $database "\n"]
set addfile "$chan REMOVED $hand $host $time 0 0 none none"
foreach line $data {
set k [expr $k +1]
set chanentry [lindex [split $line] 0]
set addtype [lindex [split $line] 1]
if {[string equal -nocase "REMOVED" "$addtype"] && [string match -nocase $chanentry $chan]} {
if {$line != ""} {
set num [expr $k - 1]
set delete [lreplace $data $num $num]
set files [open $statsdir "w"]
puts $files [join $delete "\n"]
close $files
}
}
if {[string equal -nocase "ADDED" "$addtype"] && [string match -nocase $chanentry $chan]} {
set added [lindex [split $line] 4]
set bywho [lindex [split $line] 2]
set byhost [lindex [split $line] 3]
set addfile "$chan REMOVED $hand $host $time $added $bywho $byhost"
if {$line != ""} {
set num [expr $k - 1]
set delete [lreplace $data $num $num]
set files [open $statsdir "w"]
puts $files [join $delete "\n"]
close $files
}
}
}
set file [open $statsdir "r"]
set data [read -nonewline $file]
close $file
if {$data == ""} {
set files [open $statsdir "w"]
close $files
}
set file [open $statsdir "a"]
puts $file "$addfile"
close $file
}





############################## delchan ################################


proc delchanpublic {nick host hand arg} {
global black
set chans [lindex [split $arg] 0]

if {$chans == ""} {blacktools:tell:prv $nick $host $hand delchan.1 none
return 0 
}
if {![regexp {^[\\+!#&]} $chans]} {
blacktools:tell:prv $nick $host $hand gl.novalidchan none
return 0
 } 

if {![validchan $chans]} { blacktools:tell:prv $nick $host $hand delchan.2 $chans
return 0
}
delchan:stats $chans $hand $host
channel remove $chans
blacktools:tell:prv $nick $host $hand delchan.3 $chans
}


############################## suspend ################################

proc suspendpublic {nick host hand arg} {
global black
set chans [lindex [split $arg] 0]

if {$chans == ""} {blacktools:tell:prv $nick $host $hand suspend.1 none
return 0 
}

if {![regexp {^[\\+!#&]} $chans]} {
blacktools:tell:prv $nick $host $hand gl.novalidchan none 
return 0
 }

if {![validchan $chans]} { blacktools:tell:prv $nick $host $hand suspend.2 $chans
return 0
}

if {[channel get $chans inactive]} {
blacktools:tell:prv $nick $host $hand suspend.3 $chans
return 0
}
channel set $chans +inactive
blacktools:tell:prv $nick $host $hand suspend.4 $chans
}

############################# unsuspend ###############################

proc unsuspendpublic {nick host hand arg} {
global black
set chans [lindex [split $arg] 0]

if {$chans == ""} {blacktools:tell:prv $nick $host $hand unsuspend.1 none
return 0 
}

if {![regexp {^[\\+!#&]} $chans]} {
blacktools:tell:prv $nick $host $hand gl.novalidchan none
return 0
 }
 
if {![validchan $chans]} { blacktools:tell:prv $nick $host $hand unsuspend.2 $chans
return 0
}

if {![channel get $chans inactive]} {
blacktools:tell:prv $nick $host $hand unsuspend.3 $chans
return 0
 }
channel set $chans -inactive
blacktools:tell:prv $nick $host $hand unsuspend.4 $chans
}

################################ op ###################################

proc oppublic {nick host hand arg} {
global black
set chan [lindex [split $arg] 0]
set nicks [lrange [split $arg] 1 end]
if {![validchan $chan]} {
blacktools:tell:prv $nick $host $hand gl.nocmem $chan
}

if {[matchattr $hand -|q $chan]} { blacktools:tell:prv $nick $host $hand gl.suspend none
return 0
}
if {$nicks == ""} { set nicks "$nick" }
if {[matchattr $hand nm|OASM $chan]} {
if {![regexp {^[\\+!#&]} $chan]} {
blacktools:tell:prv $nick $host $hand gl.novalidchan none 
return 0
} 
if {![botisop $chan]} { blacktools:tell:prv $nick $host $hand gl.noop none
return 0
}

if {![validchan $chan]} { 
blacktools:tell:prv $nick $host $hand op.1 $chan
return 0
}

foreach nickz $nicks {
if {[isop $nickz $chan]} {
blacktools:tell:prv $nick $host $hand op.2 $nickz
return 0
}
putquick "MODE $chan +o $nickz"

}
}
}

############################### deop ##################################

proc deoppublic {nick host hand arg} {
global black
set chan [lindex [split $arg] 0]
set nicks [lrange [split $arg] 1 end]
if {![validchan $chan]} {
blacktools:tell:prv $nick $host $hand gl.nocmem $chan
}

if {[matchattr $hand -|q $chan]} { blacktools:tell:prv $nick $host $hand gl.suspend none
return 0
}
if {$nicks == ""} { set nicks "$nick" }
if {[matchattr $hand nm|OASM $chan]} {
if {![regexp {^[\\+!#&]} $chan]} {
blacktools:tell:prv $nick $host $hand gl.novalidchan none 
return 0
 } 
if {![botisop $chan]} { blacktools:tell:prv $nick $host $hand gl.noop none
return 0
}

if {![validchan $chan]} { blacktools:tell:prv $nick $host $hand deop.1 $chan
return 0
}

foreach nickz $nicks {
if {[onchan $nickz $chan]} {
putquick "MODE $chan -o $nickz"

}
}
}
}

############################### voice #################################

proc voicepublic {nick host hand arg} {
global black
set chan [lindex [split $arg] 0]
set nicks [lrange [split $arg] 1 end]

if {![validchan $chan]} {
blacktools:tell:prv $nick $host $hand gl.nocmem $chan
}

if {[matchattr $hand -|q $chan]} { blacktools:tell:prv $nick $host $hand gl.suspend none
return 0
}
if {$nicks == ""} { set nicks "$nick" }
if {[matchattr $hand nm|OASM $chan]} {
if {![regexp {^[\\+!#&]} $chan]} {
blacktools:tell:prv $nick $host $hand gl.novalidchan none 
return 0
 } 
if {![botisop $chan]} { blacktools:tell:prv $nick $host $hand gl.noop none
return 0
}

if {![validchan $chan]} { blacktools:tell:prv $nick $host $hand voice.1 $chan
return 0
}

foreach nickz $nicks {
if {[onchan $nickz $chan]} {
if {[isvoice $nickz $chan]} { 
blacktools:tell:prv $nick $host $hand voice.2 $nickz
return 0
}
putquick "MODE $chan +v $nickz"

}
}
}
}

############################## devoice ################################

proc devoicepublic {nick host hand arg} {
global black
set chan [lindex [split $arg] 0]
set nicks [lrange [split $arg] 1 end]
if {![validchan $chan]} {
blacktools:tell:prv $nick $host $hand gl.nocmem $chan
}

if {[matchattr $hand -|q $chan]} { blacktools:tell:prv $nick $host $hand gl.suspend none
return 0
}
if {$nicks == ""} { set nicks "$nick" }
if {[matchattr $hand nm|OASM $chan]} {
if {![regexp {^[\\+!#&]} $chan]} {
blacktools:tell:prv $nick $host $hand gl.novalidchan none 
return 0
 } 
if {![botisop $chan]} { blacktools:tell:prv $nick $host $hand gl.noop none
return 0
}

if {![validchan $chan]} { blacktools:tell:prv $nick $host $hand devoice.1 $chan
return 0
}

foreach nickz $nicks {
if {[onchan $nickz $chan]} {
putquick "MODE $chan -v $nickz"

}
}
}
}

############################## invite #################################

proc invitepublic {nick host hand arg} {
global black
set chan [lindex [split $arg] 0]
set replace(%chan%) $chan
if {![validchan $chan]} {
blacktools:tell:prv $nick $host $hand gl.nocmem $chan
}
if {[matchattr $hand -|q $chan]} { blacktools:tell:prv $nick $host $hand gl.suspend none"
return 0
}
if {[matchattr $hand nm|OASM $chan]} {
if {$chan == ""} { blacktools:tell:prv $nick $host $hand invite.1 none
return 0 
}
putquick "INVITE $nick $chan"
set getlang [string tolower [getuser $hand XTRA OUTPUT_LANG]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
set getmsg $black(say.$getlang.invite.2)
if {[info exists black(say.$getlang.invite.2)]} {
set getmsg [string map [array get replace] $getmsg]
putquick "PRIVMSG $nick :$getmsg"
}

}
}



##############################add ######################################

proc add:process {args time level hand host chan chan1 nick type} {
global black botnick
set char(p) [lindex $black(cmdchar) 0]
if {[string match -nocase "$char(p)" "none"]} {
set char(p) ""
} 
set flags "nm|NMOSAV"
if {[matchattr $hand nm|- $chan]} {
if {($level == "")  && ($type == "0")} {
blacktools:tell $nick $host $hand $chan $chan1 add.1 none
return 0
}
if {($level == "") && ($type == "1")} {
blacktools:tell $nick $host $hand $chan $chan1 add.2 none
return 0
}
}
if {($level == "") && ($type == "0")} {
blacktools:tell $nick $host $hand $chan $chan1 add.3 none
return 0
}
if {($level == "") && ($type == "1")} {
blacktools:tell $nick $host $hand $chan $chan1 add.4 none
return 0
}


if {![validchan $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.novalidchan none
return 0
}

if {![onchan $botnick $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.notonchan none
return 0
}



foreach user $args {
if {$user != ""} {
set replace(%user%) $user
if {([string length $user]>=10) && ($black(maxhand) == "1")} {
set user [string range $user 0 8]
}

set uhost [string map [array get replace] $black(hostadd)]
if {[userlist] != ""} {
foreach usr [userlist] {
set hst [getuser $usr hosts]
foreach hhost $hst {
if {[string match -nocase $hhost $uhost] && (![string match -nocase $usr $user])} {
blacktools:tell $nick $host $hand $chan $chan1 add.5 $usr
return 0
}
}
}
}
 
if {[matchattr $hand -|A $chan] && ($level == "manager")} {
blacktools:tell $nick $host $hand $chan $chan1 add.6 none
return 0
}
if {[matchattr $hand -|A $chan] && ($level == "admin")} {
blacktools:tell $nick $host $hand $chan $chan1 add.7 none
return 0
}
if {[matchattr $hand -|M $chan] && ($level == "manager")} {
blacktools:tell $nick $host $hand $chan $chan1 add.8 none
return 0
}

if {([regexp -nocase -- {(#[0-9]+|owner|manager|admin|senior|op|voice|protect)} $level tmp access]) && (![regexp -nocase -- {\S#} $level])} {
    switch $access {
       manager { 
          set flags "-|olM"
if {[matchattr $user m|- $chan] && [matchattr $hand -|M $chan]} { blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
return 0 
}
if {[matchattr $user -|M $chan] && [matchattr $hand -|M $chan]} { blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
return 0 
}
if {[matchattr $user n|- $chan] && [matchattr $hand n|- $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
return 0 
}

if {[matchattr $user n|- $chan] && [matchattr $hand m|- $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
return 0 
}

if {[validuser $user]} { 
chattr $user -|-qolSOAMV $chan
chattr $user $flags $chan 
setuser $user XTRA LASTMODIFBY $hand
setuser $user XTRA LASTMODIFDATE $time
blacktools:tell $nick $host $hand $chan $chan1 add.9 $user
} else {
adduser $user $uhost
chattr $user -|-SOAMV $chan
chattr $user $flags $chan
setuser $user XTRA LASTMODIFBY $hand
setuser $user XTRA LASTMODIFDATE $time
blacktools:tell $nick $host $hand $chan $chan1 add.10 "$user $uhost"
blacktools:tell $nick $host $hand $chan $chan1 add.9 $user
}
}
     admin {

      set flags "-|olA"
if {[matchattr $user -|M $chan] && [matchattr $hand -|M $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
return 0
}
if {[matchattr $user -|M $chan] && [matchattr $hand -|A $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
return 0
}
if {[matchattr $user m|- $chan] && [matchattr $hand -|M $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
return 0 
}
if {[matchattr $user m|- $chan] && [matchattr $hand -|A $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
return 0
}

if {[matchattr $user -|A $chan] && [matchattr $hand -|A $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
return 0 
}
if {[matchattr $user n|- $chan] && [matchattr $hand -|A $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
return 0
}
if {[matchattr $user n|- $chan] && [matchattr $hand -|M $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
return 0
}
if {[matchattr $user n|- $chan] && [matchattr $hand n|- $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
return 0
}
if {[matchattr $user n|- $chan] && [matchattr $hand m|- $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
return 0 
}

if {[validuser $user]} { 
chattr $user -|-qolSOAMV $chan
chattr $user $flags $chan 
setuser $user XTRA LASTMODIFBY $hand
setuser $user XTRA LASTMODIFDATE $time
blacktools:tell $nick $host $hand $chan $chan1 add.11 $user
} else {
adduser $user $uhost
chattr $user -|-qolSOAMV $chan
chattr $user $flags $chan 
setuser $user XTRA LASTMODIFBY $hand
setuser $user XTRA LASTMODIFDATE $time
blacktools:tell $nick $host $hand $chan $chan1 add.10 "$user $uhost"
blacktools:tell $nick $host $hand $chan $chan1 add.11 $user
}
}

   senior {
     set flags "-|olS"
if {[matchattr $user -|M $chan] && [matchattr $hand -|M $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
return 0
}
if {[matchattr $user -|M $chan] && [matchattr $hand -|A $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
return 0
}
if {[matchattr $user m|- $chan] && [matchattr $hand -|M $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
return 0 
}
if {[matchattr $user m|- $chan] && [matchattr $hand -|A $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
return 0
}

if {[matchattr $user -|A $chan] && [matchattr $hand -|A $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
return 0 
}
if {[matchattr $user n|- $chan] && [matchattr $hand -|A $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
return 0
}
if {[matchattr $user n|- $chan] && [matchattr $hand -|M $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
return 0
}
if {[matchattr $user n|- $chan] && [matchattr $hand n|- $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
return 0
}
if {[matchattr $user n|- $chan] && [matchattr $hand m|- $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
return 0 
}
if {[validuser $user]} {
chattr $user -|-qolSOAMV $chan
chattr $user $flags $chan 
setuser $user XTRA LASTMODIFBY $hand
setuser $user XTRA LASTMODIFDATE $time
blacktools:tell $nick $host $hand $chan $chan1 add.12 $user
} else {
adduser $user $uhost
chattr $user -|-qolSOAMV $chan
chattr $user $flags $chan 
setuser $user XTRA LASTMODIFBY $hand
setuser $user XTRA LASTMODIFDATE $time
blacktools:tell $nick $host $hand $chan $chan1 add.10 "$user $uhost"
blacktools:tell $nick $host $hand $chan $chan1 add.12 $user
}
}


owner {
if {[matchattr $hand n|- $chan]} {
 set flags "m|-"
if {[validuser $user]} { 
chattr $user -|-qolSOAMV $chan
chattr $user $flags
setuser $user XTRA LASTMODIFBY $hand
setuser $user XTRA LASTMODIFDATE $time
blacktools:tell $nick $host $hand $chan $chan1 add.16 $user
} else {
adduser $user $uhost
chattr $user -|-qolSOAMV $chan
chattr $user $flags 
setuser $user XTRA LASTMODIFBY $hand
setuser $user XTRA LASTMODIFDATE $time
blacktools:tell $nick $host $hand $chan $chan1 add.10 "$user $uhost"
blacktools:tell $nick $host $hand $chan $chan1 add.16 $user
}
}
}

op {
 set flags "-|olO"
if {[matchattr $user -|M $chan] && [matchattr $hand -|M $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
return 0
}
if {[matchattr $user -|M $chan] && [matchattr $hand -|A $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
return 0
}
if {[matchattr $user m|- $chan] && [matchattr $hand -|M $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
return 0 
}
if {[matchattr $user m|- $chan] && [matchattr $hand -|A $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
return 0
}

if {[matchattr $user -|A $chan] && [matchattr $hand -|A $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
return 0 
}
if {[matchattr $user n|- $chan] && [matchattr $hand -|A $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
return 0
}
if {[matchattr $user n|- $chan] && [matchattr $hand -|M $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
return 0
}
if {[matchattr $user n|- $chan] && [matchattr $hand n|- $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
return 0
}
if {[matchattr $user n|- $chan] && [matchattr $hand m|- $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
return 0 
}
if {[validuser $user]} { 
chattr $user -|-qolSOAMV $chan
chattr $user $flags $chan 
setuser $user XTRA LASTMODIFBY $hand
setuser $user XTRA LASTMODIFDATE $time
blacktools:tell $nick $host $hand $chan $chan1 add.13 $user
} else {
adduser $user $uhost
chattr $user -|-qolSOAMV $chan
chattr $user $flags $chan 
setuser $user XTRA LASTMODIFBY $hand
setuser $user XTRA LASTMODIFDATE $time
blacktools:tell $nick $host $hand $chan $chan1 add.10 "$user $uhost"
blacktools:tell $nick $host $hand $chan $chan1 add.13 $user
}
}

protect {
 set flags "-|H"
if {[matchattr $user -|M $chan] && [matchattr $hand -|M $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
return 0
}
if {[matchattr $user -|M $chan] && [matchattr $hand -|A $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
return 0
}
if {[matchattr $user m|- $chan] && [matchattr $hand -|M $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
return 0 
}
if {[matchattr $user m|- $chan] && [matchattr $hand -|A $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
return 0
}

if {[matchattr $user -|A $chan] && [matchattr $hand -|A $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
return 0 
}
if {[matchattr $user n|- $chan] && [matchattr $hand -|A $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
return 0
}
if {[matchattr $user n|- $chan] && [matchattr $hand -|M $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
return 0
}
if {[matchattr $user n|- $chan] && [matchattr $hand n|- $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
return 0
}
if {[matchattr $user n|- $chan] && [matchattr $hand m|- $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
return 0 
}
if {[validuser $user]} { 
chattr $user -|-qHolSOAMV $chan
chattr $user $flags $chan 
setuser $user XTRA LASTMODIFBY $hand
setuser $user XTRA LASTMODIFDATE $time
blacktools:tell $nick $host $hand $chan $chan1 add.15 $user
} else {
adduser $user $uhost
chattr $user -|-qolHSOAMV $chan
chattr $user $flags $chan 
setuser $user XTRA LASTMODIFBY $hand
setuser $user XTRA LASTMODIFDATE $time
blacktools:tell $nick $host $hand $chan $chan1 add.10 "$user $uhost"
blacktools:tell $nick $host $hand $chan $chan1 add.15 $user
}
}



 voice {
 set flags "-|lV"
if {[matchattr $user -|M $chan] && [matchattr $hand -|M $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
return 0
}
if {[matchattr $user -|M $chan] && [matchattr $hand -|A $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
return 0
}
if {[matchattr $user m|- $chan] && [matchattr $hand -|M $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
return 0 
}
if {[matchattr $user m|- $chan] && [matchattr $hand -|A $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
return 0
}

if {[matchattr $user -|A $chan] && [matchattr $hand -|A $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
return 0 
}
if {[matchattr $user n|- $chan] && [matchattr $hand -|A $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
return 0
}
if {[matchattr $user n|- $chan] && [matchattr $hand -|M $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
return 0
}
if {[matchattr $user n|- $chan] && [matchattr $hand n|- $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
return 0
}
if {[matchattr $user n|- $chan] && [matchattr $hand m|- $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
return 0 
}
if {[validuser $user]} { 
chattr $user -|-qolSOAMV $chan
chattr $user $flags $chan
setuser $user XTRA LASTMODIFBY $hand
setuser $user XTRA LASTMODIFDATE $time
blacktools:tell $nick $host $hand $chan $chan1 add.14 $user
} else {
adduser $user $uhost
chattr $user -|-qolSOAMV $chan
chattr $user $flags $chan 
setuser $user XTRA LASTMODIFBY $hand
setuser $user XTRA LASTMODIFDATE $time

blacktools:tell $nick $host $hand $chan $chan1 add.10 "$user $uhost"
blacktools:tell $nick $host $hand $chan $chan1 add.14 $user
}
}
}
}
}
}
}



########################## adduser ################################

proc adduserpublic {nick host hand chan arg} {
global black
set level [lindex [split $arg] 0]
set args [lrange [split $arg] 1 end]
set c [lindex [split $arg] 1]
set type 0
set chan1 "$chan"
if {[regexp {^[#&]} $c] && [matchattr $hand nm|- $chan]} {
set chan "$c"
set args [lrange [split $arg] 2 end]
}
adduser:process $nick $host $hand $chan $chan1 $args $level $type
}


proc adduser:process {nick host hand chan chan1 args level type} {
global black botnick
set char(p) [lindex $black(cmdchar) 0]
if {[string match -nocase "$char(p)" "none"]} {
set char(p) ""
} 
set time [ctime [unixtime]]
set flags "nm|NMOSVA"
if {[matchattr $hand -|q $chan]} { blacktools:tell $nick $host $hand $chan $chan1 gl.suspend none
return 0
}

if {[matchattr $hand nm|- $chan]} {
if {($level == "")  && ($type == "0")} {
blacktools:tell $nick $host $hand $chan $chan1 adduser.1 none
return 0
}
if {($level == "") && ($type == "1")} {
blacktools:tell $nick $host $hand $chan $chan1 adduser.2 none
return 0
}
}
if {($level == "") && ($type == "0")} {
blacktools:tell $nick $host $hand $chan $chan1 adduser.3 none
return 0
}
if {($level == "") && ($type == "1")} {
blacktools:tell $nick $host $hand $chan $chan1 adduser.4 none
return 0
}


if {![validchan $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.novalidchan none
return 0
}

if {![onchan $botnick $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.notonchan none
return 0
}

foreach user $args {
if {$user != ""} {
if {![onchan $user $chan]} { 
blacktools:tell $nick $host $hand $chan $chan1 gl.usernotonchan $user
return 0
}

set handle [nick2hand $user]
set hosts [getchanhost $user $chan]
set uhost "*!*@[lindex [split $hosts @] 1]"


if {([string length $user]>=10) && ($black(maxhand) == "1")} {
set user [string range $user 0 8]
}
if {[userlist] != ""} {
foreach usr [userlist] {
set hst [getuser $usr hosts]
foreach hhost $hst {
if {[string match -nocase $hhost $uhost] && (![string match -nocase $usr $user])} {
blacktools:tell $nick $host $hand $chan $chan1 add.5 $usr
return 0
}
}
}
}

if {[matchattr $hand -|A $chan] && ($level == "manager")} {
blacktools:tell $nick $host $hand $chan $chan1 add.6 none
return 0
}
if {[matchattr $hand -|A $chan] && ($level == "admin")} {
blacktools:tell $nick $host $hand $chan $chan1 add.7 none
return 0
}
if {[matchattr $hand -|M $chan] && ($level == "manager")} {
blacktools:tell $nick $host $hand $chan $chan1 add.8 none
return 0
}
if {([regexp -nocase -- {(#[0-9]+|owner|manager|admin|senior|op|voice|protect)} $level tmp access]) && (![regexp -nocase -- {\S#} $level])} {
    switch $access {
       manager { 
          set flags "-|olM"
if {[matchattr $handle m|- $chan] && [matchattr $hand -|M $chan]} { blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
return 0 
}
if {[matchattr $handle -|M $chan] && [matchattr $hand -|M $chan]} { blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
return 0 
}
if {[matchattr $handle n|- $chan] && [matchattr $hand n|- $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
return 0 
}

if {[matchattr $handle n|- $chan] && [matchattr $hand m|- $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
return 0 
}

if {[validuser $user]} { 
chattr $user -|-qolSOAMV $chan
chattr $user $flags $chan 
setuser $user XTRA LASTMODIFBY $hand
setuser $user XTRA LASTMODIFDATE $time
blacktools:tell $nick $host $hand $chan $chan1 add.9 $user
} else {
adduser $user $uhost
chattr $user -|-SOAMV $chan
chattr $user $flags $chan
setuser $user XTRA LASTMODIFBY $hand
setuser $user XTRA LASTMODIFDATE $time
blacktools:tell $nick $host $hand $chan $chan1 add.10 "$user $uhost"
blacktools:tell $nick $host $hand $chan $chan1 add.9 $user
}
}
     admin {
      set flags "-|olA"
if {[matchattr $handle -|M $chan] && [matchattr $hand -|M $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
return 0 
}
if {[matchattr $handle -|M $chan] && [matchattr $hand -|A $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
return 0 
}
if {[matchattr $handle m|- $chan] && [matchattr $hand -|M $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
return 0 
}
if {[matchattr $handle m|- $chan] && [matchattr $hand -|A $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
return 0 
}

if {[matchattr $handle -|A $chan] && [matchattr $hand -|A $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
return 0 
}
if {[matchattr $handle n|- $chan] && [matchattr $hand -|A $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
return 0 
}
if {[matchattr $handle n|- $chan] && [matchattr $hand -|M $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
return 0 
}
if {[matchattr $handle n|- $chan] && [matchattr $hand n|- $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
return 0 
}
if {[matchattr $handle n|- $chan] && [matchattr $hand m|- $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
return 0 
}
if {[validuser $user]} {
chattr $user -|-qolSOAMV $chan
chattr $user $flags $chan 
setuser $user XTRA LASTMODIFBY $hand
setuser $user XTRA LASTMODIFDATE $time
blacktools:tell $nick $host $hand $chan $chan1 add.11 $user
} else {
adduser $user $uhost
chattr $user -|-qolSOAMV $chan
chattr $user $flags $chan 
setuser $user XTRA LASTMODIFBY $hand
setuser $user XTRA LASTMODIFDATE $time
blacktools:tell $nick $host $hand $chan $chan1 add.10 "$user $uhost"
blacktools:tell $nick $host $hand $chan $chan1 add.11 $user
}
}
   senior {
     set flags "-|olS"
if {[matchattr $handle -|M $chan] && [matchattr $hand -|M $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
return 0 
}
if {[matchattr $handle -|M $chan] && [matchattr $hand -|A $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
return 0 
}
if {[matchattr $handle m|- $chan] && [matchattr $hand -|M $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
return 0 
}
if {[matchattr $handle m|- $chan] && [matchattr $hand -|A $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
return 0 
}

if {[matchattr $handle -|A $chan] && [matchattr $hand -|A $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
return 0 
}
if {[matchattr $handle n|- $chan] && [matchattr $hand -|A $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
return 0 
}
if {[matchattr $handle n|- $chan] && [matchattr $hand -|M $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
return 0 
}
if {[matchattr $handle n|- $chan] && [matchattr $hand n|- $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
return 0 
}
if {[matchattr $handle n|- $chan] && [matchattr $hand m|- $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
return 0 
}
if {[validuser $user]} {
chattr $user -|-qolSOAMV $chan
chattr $user $flags $chan 
setuser $user XTRA LASTMODIFBY $hand
setuser $user XTRA LASTMODIFDATE $time
blacktools:tell $nick $host $hand $chan $chan1 add.12 $user
} else {
adduser $user $uhost
chattr $user -|-qolSOAMV $chan
chattr $user $flags $chan 
setuser $user XTRA LASTMODIFBY $hand
setuser $user XTRA LASTMODIFDATE $time
blacktools:tell $nick $host $hand $chan $chan1 add.10 "$user $uhost"
blacktools:tell $nick $host $hand $chan $chan1 add.12 $user
}
}

owner {
if {[matchattr $hand n|- $chan]} {
 set flags "m|-"
if {[validuser $user]} { 
chattr $user -|-qolSOAMV $chan
chattr $user $flags
setuser $user XTRA LASTMODIFBY $hand
setuser $user XTRA LASTMODIFDATE $time
blacktools:tell $nick $host $hand $chan $chan1 add.16 $user
} else {
adduser $user $uhost
chattr $user -|-qolSOAMV $chan
chattr $user $flags 
setuser $user XTRA LASTMODIFBY $hand
setuser $user XTRA LASTMODIFDATE $time
blacktools:tell $nick $host $hand $chan $chan1 add.10 "$user $uhost"
blacktools:tell $nick $host $hand $chan $chan1 add.16 $user
}
}
}

op {
 set flags "-|olO"
if {[matchattr $handle -|M $chan] && [matchattr $hand -|M $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
return 0 
}
if {[matchattr $handle -|M $chan] && [matchattr $hand -|A $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
return 0 
}
if {[matchattr $handle m|- $chan] && [matchattr $hand -|M $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
return 0 
}
if {[matchattr $handle m|- $chan] && [matchattr $hand -|A $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
return 0 
}

if {[matchattr $handle -|A $chan] && [matchattr $hand -|A $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
return 0 
}
if {[matchattr $handle n|- $chan] && [matchattr $hand -|A $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
return 0 
}
if {[matchattr $handle n|- $chan] && [matchattr $hand -|M $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
return 0 
}
if {[matchattr $handle n|- $chan] && [matchattr $hand n|- $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
return 0 
}
if {[matchattr $handle n|- $chan] && [matchattr $hand m|- $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
return 0 
}
if {[validuser $user]} { 
chattr $user -|-qolSOAMV $chan
chattr $user $flags $chan 
setuser $user XTRA LASTMODIFBY $hand
setuser $user XTRA LASTMODIFDATE $time
blacktools:tell $nick $host $hand $chan $chan1 add.13 $user
} else {
adduser $user $uhost
chattr $user -|-qolSOAMV $chan
chattr $user $flags $chan 
setuser $user XTRA LASTMODIFBY $hand
setuser $user XTRA LASTMODIFDATE $time
blacktools:tell $nick $host $hand $chan $chan1 add.10 "$user $uhost"
blacktools:tell $nick $host $hand $chan $chan1 add.13 $user
}
}

protect {
 set flags "-|H"
if {[matchattr $handle -|M $chan] && [matchattr $hand -|M $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
return 0 
}
if {[matchattr $handle -|M $chan] && [matchattr $hand -|A $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
return 0 
}
if {[matchattr $handle m|- $chan] && [matchattr $hand -|M $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
return 0 
}
if {[matchattr $handle m|- $chan] && [matchattr $hand -|A $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
return 0 
}

if {[matchattr $handle -|A $chan] && [matchattr $hand -|A $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
return 0 
}
if {[matchattr $handle n|- $chan] && [matchattr $hand -|A $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
return 0 
}
if {[matchattr $handle n|- $chan] && [matchattr $hand -|M $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
return 0 
}
if {[matchattr $handle n|- $chan] && [matchattr $hand n|- $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
return 0 
}
if {[matchattr $handle n|- $chan] && [matchattr $hand m|- $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
return 0 
}
if {[validuser $user]} { 
chattr $user -|-qolHSOAMV $chan
chattr $user $flags $chan 
setuser $user XTRA LASTMODIFBY $hand
setuser $user XTRA LASTMODIFDATE $time
blacktools:tell $nick $host $hand $chan $chan1 add.15 $user
} else {
adduser $user $uhost
chattr $user -|-qolHSOAMV $chan
chattr $user $flags $chan 
setuser $user XTRA LASTMODIFBY $hand
setuser $user XTRA LASTMODIFDATE $time
blacktools:tell $nick $host $hand $chan $chan1 add.10 "$user $uhost"
blacktools:tell $nick $host $hand $chan $chan1 add.15 $user
}
}



 voice {
 set flags "-|lV"
if {[matchattr $handle -|M $chan] && [matchattr $hand -|M $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
return 0 
}
if {[matchattr $handle -|M $chan] && [matchattr $hand -|A $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
return 0 
}
if {[matchattr $handle m|- $chan] && [matchattr $hand -|M $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
return 0 
}
if {[matchattr $handle m|- $chan] && [matchattr $hand -|A $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
return 0 
}

if {[matchattr $handle -|A $chan] && [matchattr $hand -|A $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
return 0 
}
if {[matchattr $handle n|- $chan] && [matchattr $hand -|A $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
return 0 
}
if {[matchattr $handle n|- $chan] && [matchattr $hand -|M $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
return 0 
}
if {[matchattr $handle n|- $chan] && [matchattr $hand n|- $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
return 0 
}
if {[matchattr $handle n|- $chan] && [matchattr $hand m|- $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
return 0 
}
if {[validuser $user]} { 
chattr $user -|-qolSOAMV $chan
chattr $user $flags $chan
setuser $user XTRA LASTMODIFBY $hand
setuser $user XTRA LASTMODIFDATE $time
blacktools:tell $nick $host $hand $chan $chan1 add.14 $user
} else {
adduser $user $uhost
chattr $user -|-qolSOAMV $chan
chattr $user $flags $chan 
setuser $user XTRA LASTMODIFBY $hand
setuser $user XTRA LASTMODIFDATE $time
blacktools:tell $nick $host $hand $chan $chan1 add.10 "$user $uhost"
blacktools:tell $nick $host $hand $chan $chan1 add.14 $user
}
}
}
}
}
}
}




proc publicadd {nick host hand chan arg} {
global black
set level [lindex [split $arg] 0]
set time [ctime [unixtime]]
set type 0
set chan1 "$chan"
set args [lrange [split $arg] 1 end]
set c [lindex [split $arg] 1]
if {[regexp {^[#&]} $c] && [matchattr $hand nm|- $chan]} {
set chan "$c"
set args [lrange [split $arg] 2 end]
}
if {[matchattr $hand -|q $chan]} { 
blacktools:tell $nick $host $hand $chan $chan1 gl.suspend none
return 0
}
add:process $args $time $level $hand $host $chan $chan1 $nick $type
}


############################## delacc ################################

proc delaccpublic {nick host hand chan arg} {
global black
set args [lrange [split $arg] 0 end]
set type 0
set chan1 "$chan"
set c [lindex [split $arg] 0]
if {[regexp {^[#&]} $c] && [matchattr $hand nm|- $chan]} {
set chan "$c"
set args [lrange [split $arg] 1 end]
}
delacc:process $nick $host $hand $chan $chan1 $args $type
}

proc delacc:process {nick host hand chan chan1 args type} {
global botnick black
set char(p) [lindex $black(cmdchar) 0]
if {[string match -nocase "$char(p)" "none"]} {
set char(p) ""
} 
if {[matchattr $hand -|q $chan]} { blacktools:tell $nick $host $hand $chan $chan1 gl.suspend none
return 0
}

if {[matchattr $hand nm|- $chan]} {
if {($args == "")  && ($type == "0")} {
blacktools:tell $nick $host $hand $chan $chan1 delacc.1 none
return 0
}
if {($args == "") && ($type == "1")} {
blacktools:tell $nick $host $hand $chan $chan1 delacc.2 none
return 0
}
}
if {($args == "") && ($type == "0")} {
blacktools:tell $nick $host $hand $chan $chan1 delacc.3 none
return 0
}
if {($args == "") && ($type == "1")} {
blacktools:tell $nick $host $hand $chan $chan1 delacc.4 none
return 0
}


if {![validchan $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.novalidchan none
return 0
}

if {![onchan $botnick $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.notonchan none
return 0
}


foreach user $args {
if {$user != ""} {
if {[matchattr $user -|M $chan] && [matchattr $hand -|M $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
return 0
}
if {[matchattr $user -|M $chan] && [matchattr $hand -|A $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
return 0
}
if {[matchattr $user m|- $chan] && [matchattr $hand -|M $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
return 0 
}
if {[matchattr $user m|- $chan] && [matchattr $hand -|A $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
return 0
}

if {[matchattr $user -|A $chan] && [matchattr $hand -|A $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
return 0 
}
if {[matchattr $user n|- $chan] && [matchattr $hand -|A $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
return 0
}
if {[matchattr $user n|- $chan] && [matchattr $hand -|M $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
return 0
}
if {[matchattr $user n|- $chan] && [matchattr $hand n|- $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
return 0
}
if {[matchattr $user n|- $chan] && [matchattr $hand m|- $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
return 0 
}

if {![matchattr $user nm|aolSOAMV $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.noaccess none
return 0
}

if {[validuser $user]} { 
chattr $user -|-qaolSOAMV $chan
blacktools:tell $nick $host $hand $chan $chan1 delacc.5 $user
} else { blacktools:tell $nick $host $hand $chan $chan1 gl.nomem none }
}
}
}

############################## del #####################################

proc delpublic {nick host hand chan arg} {
global black
set args [lrange [split $arg] 0 end]
set type 0
set chan1 "$chan"
del:process $nick $host $hand $chan $chan1 $args $type
}

proc del:process {nick host hand chan chan1 args type} {
global botnick black
set char(p) [lindex $black(cmdchar) 0]
if {[string match -nocase "$char(p)" "none"]} {
set char(p) ""
} 
if {[matchattr $hand -|q $chan]} { blacktools:tell $nick $host $hand $chan $chan1 gl.suspend none
return 0
}

if {($args == "") && ($type == "0")} {
blacktools:tell $nick $host $hand $chan $chan1 del.1 none
return 0
}
if {($args == "") && ($type == "1")} {
blacktools:tell $nick $host $hand $chan $chan1 del.2 none
return 0
}

foreach user $args {
if {$user != ""} {
if {[matchattr $user -|M $chan] && [matchattr $hand -|M $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
return 0
}
if {[matchattr $user -|M $chan] && [matchattr $hand -|A $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
return 0
}
if {[matchattr $user m|- $chan] && [matchattr $hand -|M $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
return 0 
}
if {[matchattr $user m|- $chan] && [matchattr $hand -|A $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
return 0
}

if {[matchattr $user -|A $chan] && [matchattr $hand -|A $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
return 0 
}
if {[matchattr $user n|- $chan] && [matchattr $hand -|A $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
return 0
}
if {[matchattr $user n|- $chan] && [matchattr $hand -|M $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
return 0
}
if {[matchattr $user n|- $chan] && [matchattr $hand n|- $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
return 0
}
if {[matchattr $user n|- $chan] && [matchattr $hand m|- $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
return 0 
}
if {[validuser $user]} { 
deluser $user
blacktools:tell $nick $host $hand $chan $chan1 del.3 $user
} else { blacktools:tell $nick $host $hand $chan $chan1 gl.nomem none }
}
}
}

################################ addhost #############################

proc addhostpublic {nick host hand chan arg} {
global black
set user [lindex [split $arg] 0]
set type 0
set chan1 "$chan"
set hosts [lrange [split $arg] 1 end]
addhost:process $nick $host $hand $chan $chan1 $user $hosts $type
}

proc addhost:process {nick host hand chan chan1 user hosts type} {
global black botnick
set char(p) [lindex $black(cmdchar) 0]
if {[string match -nocase "$char(p)" "none"]} {
set char(p) ""
} 
set time [ctime [unixtime]]
if {[matchattr $hand -|q $chan]} { blacktools:tell $nick $host $hand $chan $chan1 gl.suspend none
return 0
}

if {($user == "") && ($type == "0")} {
blacktools:tell $nick $host $hand $chan $chan1 addhost.1 none
return 0
}
if {($user == "") && ($type == "1")} {
blacktools:tell $nick $host $hand $chan $chan1 addhost.2 none
return 0
}


if {[matchattr $user -|M $chan] && [matchattr $hand -|M $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
return 0
}
if {[matchattr $user -|M $chan] && [matchattr $hand -|A $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
return 0
}
if {[matchattr $user m|- $chan] && [matchattr $hand -|M $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
return 0 
}
if {[matchattr $user m|- $chan] && [matchattr $hand -|A $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
return 0
}

if {[matchattr $user -|A $chan] && [matchattr $hand -|A $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
return 0 
}
if {[matchattr $user n|- $chan] && [matchattr $hand -|A $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
return 0
}
if {[matchattr $user n|- $chan] && [matchattr $hand -|M $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
return 0
}
if {[matchattr $user n|- $chan] && [matchattr $hand n|- $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
return 0
}
if {[matchattr $user n|- $chan] && [matchattr $hand m|- $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
return 0 
}

if {[validuser $user]} {
set hhost [getuser $user hosts]
foreach hhost $hhost {
if {[string match -nocase $hosts $hhost]} {
blacktools:tell $nick $host $hand $chan $chan1 addhost.3 "$user $hosts"
return 0
}
}
setuser $user HOSTS $hosts
setuser $user XTRA LASTMODIFBY $hand
setuser $user XTRA LASTMODIFDATE $time
blacktools:tell $nick $host $hand $chan $chan1 addhost.4 "$user $hosts"
} else { blacktools:tell $nick $host $hand $chan $chan1 gl.nomem none }
}


############################### delhost ############################


proc delhostpuplic {nick host hand chan arg} {
global black
set user [lindex [split $arg] 0]
set type 0
set chan1 "$chan"
set hosts [lrange [split $arg] 1 end]
delhost:process $nick $host $hand $chan $chan1 $user $hosts $type
}


proc delhost:process {nick host hand chan chan1 user hosts type} {
global black botnick
set time [ctime [unixtime]]
set char(p) [lindex $black(cmdchar) 0]
if {[string match -nocase "$char(p)" "none"]} {
set char(p) ""
} 
if {[matchattr $hand -|q $chan]} { blacktools:tell $nick $host $hand $chan $chan1 gl.suspend none
return 0
}

if {($user == "") && ($type == "0")} {
blacktools:tell $nick $host $hand $chan $chan1 delhost.1 none
return 0
}
if {($user == "") && ($type == "1")} {
blacktools:tell $nick $host $hand $chan $chan1 delhost.2 none
return 0
}


if {[matchattr $user -|M $chan] && [matchattr $hand -|M $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
return 0
}
if {[matchattr $user -|M $chan] && [matchattr $hand -|A $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
return 0
}
if {[matchattr $user m|- $chan] && [matchattr $hand -|M $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
return 0 
}
if {[matchattr $user m|- $chan] && [matchattr $hand -|A $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
return 0
}

if {[matchattr $user -|A $chan] && [matchattr $hand -|A $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
return 0 
}
if {[matchattr $user n|- $chan] && [matchattr $hand -|A $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
return 0
}
if {[matchattr $user n|- $chan] && [matchattr $hand -|M $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
return 0
}
if {[matchattr $user n|- $chan] && [matchattr $hand n|- $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
return 0
}
if {[matchattr $user n|- $chan] && [matchattr $hand m|- $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
return 0 
}

if {[validuser $user]} {

set hhost [getuser $user hosts]
foreach hhost $hhost {
if {[string match -nocase $hhost $hosts]} {
set foundhost 1
}
}
if {![info exists foundhost]} {
blacktools:tell $nick $host $hand $chan $chan1 delhost.3 "$user $hosts"
return 0
}

delhost $user $hosts
blacktools:tell $nick $host $hand $chan $chan1 delhost.4 "$user $hosts"
} else { 
blacktools:tell $nick $host $hand $chan $chan1 gl.nomem none
 }
}


proc chuserpublic {nick host hand chan arg} {
global black
set user [lindex [split $arg] 0]
set type 0
set chan1 "$chan"
set chandle [lindex [split $arg] 1]
chuser:process $nick $host $hand $chan $chan1 $user $chandle $type
}

proc chuser:process {nick host hand chan chan1 user chandle type} {
global botnick black
set char(p) [lindex $black(cmdchar) 0]
if {[string match -nocase "$char(p)" "none"]} {
set char(p) ""
} 
set time [ctime [unixtime]]
if {[matchattr $hand -|q $chan]} { blacktools:tell $nick $host $hand $chan $chan1 gl.suspend none
return 0
}

if {($user == "") && ($type == "0")} {
blacktools:tell $nick $host $hand $chan $chan1 chuser.1 none
return 0
}
if {($user == "") && ($type == "1")} {
blacktools:tell $nick $host $hand $chan $chan1 chuser.2 none
return 0
}

if {[matchattr $user -|M $chan] && [matchattr $hand -|M $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
return 0
}
if {[matchattr $user -|M $chan] && [matchattr $hand -|A $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
return 0
}
if {[matchattr $user m|- $chan] && [matchattr $hand -|M $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
return 0 
}
if {[matchattr $user m|- $chan] && [matchattr $hand -|A $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
return 0
}

if {[matchattr $user -|A $chan] && [matchattr $hand -|A $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
return 0 
}
if {[matchattr $user n|- $chan] && [matchattr $hand -|A $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
return 0
}
if {[matchattr $user n|- $chan] && [matchattr $hand -|M $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
return 0
}
if {[matchattr $user n|- $chan] && [matchattr $hand n|- $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
return 0
}
if {[matchattr $user n|- $chan] && [matchattr $hand m|- $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
return 0 
}

if {[validuser $user]} {
chhandle $user $chandle
setuser $chandle XTRA LASTMODIFBY $hand
setuser $chandle XTRA LASTMODIFDATE $time
blacktools:tell $nick $host $hand $chan $chan1 chuser.3 "$user $chandle"
} else {blacktools:tell $nick $host $hand $chan $chan1 gl.nomem none }
}

proc userlist:execute {hand host level chan chan1 nick type} {
global black botnick
set char(p) [lindex $black(cmdchar) 0]
if {[string match -nocase "$char(p)" "none"]} {
set char(p) ""
} 
if {[matchattr $hand -|q $chan]} { blacktools:tell $nick $host $hand $chan $chan1 gl.suspend none
return 0
}

if {[matchattr $hand nm|- $chan]} {
if {($level == "")  && ($type == "0")} {
blacktools:tell $nick $host $hand $chan $chan1 userlist.1 none
return 0
}
if {($level == "") && ($type == "1")} {
blacktools:tell $nick $host $hand $chan $chan1 userlist.2 none
return 0
}
}
if {($level == "") && ($type == "0")} {
blacktools:tell $nick $host $hand $chan $chan1 userlist.3 none
return 0
}
if {($level == "") && ($type == "1")} {
blacktools:tell $nick $host $hand $chan $chan1 userlist.4 none
return 0
}


if {![validchan $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.novalidchan none
return 0
}

if {![onchan $botnick $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.notonchan none
return 0
}


if {([regexp -nocase -- {(#[0-9]+|manager|protect|admin|senior|op|voice|all|owner)} $level tmp access]) && (![regexp -nocase -- {\S#} $level])} {
    switch $access {
     manager {
     set flags "-|M"
    set numar [llength [userlist $flags $chan]]
    set list [userlist $flags $chan]
foreach user [wordwrap [join $list "  "] 250 ,] {
    if {$list == ""} { set user "NONE" }
blacktools:tell $nick $host $hand $chan $chan1 userlist.5 $numar
blacktools:tell $nick $host $hand $chan $chan1 userlist.6 none
blacktools:tell $nick $host $hand $chan $chan1 userlist.7 $user
}
}

admin {
  set flags "-|A"
  set numar [llength [userlist $flags $chan]]
  set list [userlist $flags $chan]
foreach user [wordwrap [join $list " , "] 250 ,] {
if {$list == ""} { set user "NONE" }
blacktools:tell $nick $host $hand $chan $chan1 userlist.8 $numar
blacktools:tell $nick $host $hand $chan $chan1 userlist.9 none
blacktools:tell $nick $host $hand $chan $chan1 userlist.7 $user
}
}

senior {
set flags "-|S"
    set list [userlist $flags $chan]
    set numar [llength [userlist $flags $chan]]
foreach user [wordwrap [join $list " , "] 250 ,] {
if {$list == ""} { set user "NONE" }
blacktools:tell $nick $host $hand $chan $chan1 userlist.10 $numar
blacktools:tell $nick $host $hand $chan $chan1 userlist.11 none
blacktools:tell $nick $host $hand $chan $chan1 userlist.7 $user
}
}

protect {
set flags "-|H"
set list [userlist $flags $chan]
    set numar [llength [userlist $flags $chan]]
foreach user [wordwrap [join $list " , "] 250 ,] {
if {$list == ""} { set user "NONE" }
blacktools:tell $nick $host $hand $chan $chan1 userlist.12 $numar
blacktools:tell $nick $host $hand $chan $chan1 userlist.13 none
blacktools:tell $nick $host $hand $chan $chan1 userlist.7 $user
}
}

op  {
set flags "-|O"
    set list [userlist $flags $chan]
    set numar [llength [userlist $flags $chan]]
foreach user [wordwrap [join $list " , "] 250 ,] {
if {$list == ""} { set user "NONE" }
blacktools:tell $nick $host $hand $chan $chan1 userlist.14 $numar
blacktools:tell $nick $host $hand $chan $chan1 userlist.15 none
blacktools:tell $nick $host $hand $chan $chan1 userlist.7 $user
}
}

owner {
if {[matchattr $hand nm|- $chan]} {
set bossflags "n|-"
set ownerflags "m|-"
set listbossowner [userlist $bossflags]
set listowner [userlist $ownerflags]
blacktools:tell $nick $host $hand $chan $chan1 userlist.16 $listbossowner
blacktools:tell $nick $host $hand $chan $chan1 userlist.17 $listowner
}
}

voice {
set flags "-|V"
    set numar [llength [userlist $flags $chan]]
    set list [userlist $flags $chan]
foreach user [wordwrap [join $list " , "] 250 ,] {
if {$list == ""} { set user "NONE" }
blacktools:tell $nick $host $hand $chan $chan1 userlist.18 $numar
blacktools:tell $nick $host $hand $chan $chan1 userlist.19 none
blacktools:tell $nick $host $hand $chan $chan1 userlist.7 $user
}
}

all {
array set flgc [list]
set flags "-|MNASVO"
set list [userlist $flags $chan]
set numar [llength [userlist $flags $chan]]
foreach user $list {
if {[matchattr $user -|V $chan]} { 
lappend flgc(VOICE) $user

} elseif {[matchattr $user -|O $chan]} {
 
lappend flgc(OP) $user
} elseif {[matchattr $user -|S $chan]} {

lappend flgc(SENIOR) $user

} elseif {[matchattr $user -|A $chan]} {
 
lappend flgc(ADMINISTRATOR) $user

} elseif {[matchattr $user -|M $chan]} {
 
lappend flgc(MANAGER) $user
 
}
}

foreach flw [array names flgc] {
lappend messall [join 4$flgc($flw) " , "] -> 12($flw)
}
if {$list == ""} { set messall "NONE" }
blacktools:tell $nick $host $hand $chan $chan1 userlist.20 $numar
blacktools:tell $nick $host $hand $chan $chan1 userlist.21 none
foreach mes [wordwrap [join $messall] 250] {
blacktools:tell $nick $host $hand $chan $chan1 userlist.7 $mes
}
}

}
}
}

proc wordwrap {str {len 100} {splitChr { }}} { 
   set out [set cur {}]; set i 0 
   foreach word [split [set str][unset str] $splitChr] { 
     if {[incr i [string len $word]]>$len} { 
         lappend out [join $cur $splitChr] 
         set cur [list $word] 
         set i [string len $word] 
      } { 
         lappend cur $word 
      } 
      incr i 
   } 
   lappend out [join $cur $splitChr] 
} 



proc publicuserlist {nick host hand chan arg} {
global black
set level [lindex [split $arg] 0]
set type 0
set chan1 "$chan"
if {[regexp {^[#&]} $level] && [matchattr $hand nm|- $chan]} {
set chan "$level"
set level [lindex [split $arg] 1]
} 
userlist:execute $hand $host $level $chan $chan1 $nick $type
}


############################### channels ########################

proc channelspublic {nick host hand chan arg} {
global botnick black
set chan1 "$chan"
channels:process $nick $host $hand $chan $chan1
}

proc channels:process {nick host hand chan chan1} {
global botnick black
set num [llength [channels]]
set minusers "5"
array set status [list]
set notonchan "(NoT on ChaN)"
set notenough "(users < $minusers)"
set suspended "(SUSPENDED)"
foreach c [channels] {
set usersnumber [llength [chanlist $c]]
if {[channel get $c inactive]} {
lappend status($c) "4$c $suspended"
} elseif {![onchan $botnick $c]} {
lappend status($c) "4$c $notonchan"
} elseif {[onchan $botnick $c] && (![botisop $c])} {
lappend status($c) "4$c"
} elseif {[onchan $botnick $c] && ($usersnumber < $minusers)} {
lappend status($c) "4$c $notenough"
}
if {![info exists status($c)]} {
lappend status($c) "1@$c"
}

lappend message "[join $status($c) ", "]"

}
blacktools:tell $nick $host $hand $chan $chan1 channels.1 $num
foreach word [wordwrap [join $message] 350 ,] {
blacktools:tell $nick $host $hand $chan $chan1 channels.2 $word
}
}


############################### info ############################

proc infopublic {nick host hand chan arg} {
global black
set user [lindex [split $arg] 0]
set type 0
set chan1 "$chan"
if {[regexp {^[\\+!#&]} $user] && [matchattr $hand nm|- $chan]} {
set chan "$user"
set user [lindex [split $arg] 1]
}
info:process $nick $host $hand $chan $chan1 $user $type
}

proc info:process {nick host hand chan chan1 user type} {
global botnick black
set char(p) [lindex $black(cmdchar) 0]
if {[string match -nocase "$char(p)" "none"]} {
set char(p) ""
} 
set time [ctime [unixtime]]
array set flg [list]
if {[matchattr $hand nm|- $chan]} {
if {($user == "") && ($type == "0")} {
blacktools:tell $nick $host $hand $chan $chan1 info.1 none
return 0
}
if {($user == "") && ($type == "1")} {
blacktools:tell $nick $host $hand $chan $chan1 info.2 none
return 0
}
}
if {($user == "") && ($type == "0")} {
blacktools:tell $nick $host $hand $chan $chan1 info.3 none
return 0
}
if {($user == "") && ($type == "1")} {
blacktools:tell $nick $host $hand $chan $chan1 info.4 none
return 0
}
if {![validchan $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.novalidchan none
return 0
}

if {[matchattr $hand -|q $chan]} { blacktools:tell $nick $host $hand $chan $chan1 gl.suspend none
return 0
}

if {[validuser $user]} {
} else { blacktools:tell $nick $host $hand $chan $chan1 gl.nomem none 
return 0
}

if {[matchattr $hand nm|- $chan]} {
foreach c [channels] {
if {[matchattr $user -|V $c]} { 
set fl "VOICE"
lappend flg($fl) $c
} elseif {[matchattr $user -|O $c]} { 
set fl "OP" 
lappend flg($fl) $c
} elseif {[matchattr $user -|S $c]} {
 set fl "SENIOR"
lappend flg($fl) $c
} elseif {[matchattr $user -|A $c]} {
set fl "ADMINISTRATOR" 
lappend flg($fl) $c
} elseif {[matchattr $user -|M $c]} {
set fl "MANAGER" 
lappend flg($fl) $c 
}

}
foreach cf [array names flg] {

lappend exit 1[join $flg($cf) ,] 12($cf) |
}

}

if {![matchattr $user nm|OAHSMNV $chan]} { blacktools:tell $nick $host $hand $chan $chan1 gl.noaccess none
if {![info exists exit]} { set exit "1NONE"}
if {[matchattr $hand nm|- $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 info.5 "[join $exit]"
if {[getuser $user HOSTS] != ""} {
set hosts [getuser $user hosts]
blacktools:tell $nick $host $hand $chan $chan1 info.6 $hosts
}
set lastseen [getuser $user LASTON $chan]
if {($lastseen == "0") || ($lastseen == "")} {
set seened "1NONE"
} else { set seened [ctime $lastseen] }
blacktools:tell $nick $host $hand $chan $chan1 info.7 $seened
}
return 0
}

set getlang [string tolower [getuser $hand XTRA OUTPUT_LANG]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
set suspendat "$black(say.$getlang.info.10)"

set cflags [chattr $user | $chan]
blacktools:tell $nick $host $hand $chan $chan1 info.8 $user
blacktools:tell $nick $host $hand $chan $chan1 info.9 $time
if {[matchattr $user -|V $chan]} { set flags "VOICE" } elseif {[matchattr $user -|O $chan]} { set flags "OP" } elseif {[matchattr $user -|S $chan]} { set flags "SENIOR" } elseif {[matchattr $user -|A $chan]} { set flags "ADMINISTRATOR" } elseif {[matchattr $user -|H $chan]} { set flags "PROTECT"}
if {[matchattr $user -|M $chan]} { set flags "MANAGER" } elseif {[matchattr $user n|- $chan]} { set flags "THE BOSS OWNER" } elseif {[matchattr $user m|- $chan]} { set flags "OWNER" } elseif {$cflags == "-|-"} {puthelp "NOTICE $nick :$user nu are ACCESS pe acest canal !" 
return 0
}


if {[matchattr $user -|q $chan]} {
if {[matchattr $user -|V $chan]} { set flags "VOICE ($suspendat)" } elseif {[matchattr $user -|O $chan]} { set flags "OP ($suspendat)" } elseif {[matchattr $user -|S $chan]} { set flags "SENIOR ($suspendat)" } elseif {[matchattr $user -|A $chan]} { set flags "ADMINISTRATOR ($suspendat)" } elseif {[matchattr $user -|O $chan]} { set flags "PROTECT ($suspendat)"}
if {[matchattr $user -|M $chan]} { set flags "MANAGER ($suspendat)" } elseif {[matchattr $user m|- $chan]} { set flags "OWNER ($suspendat)" } elseif {$cflags == "-|-"} {puthelp "NOTICE $nick :$user 

S pe acest canal !" 
return 0
}
}

blacktools:tell $nick $host $hand $chan $chan1 info.11 "$cflags $flags"
if {[getuser $user INFO] != ""} {
blacktools:tell $nick $host $hand $chan $chan1 info.12 "[getuser $user INFO]"
}

 
set date [getuser $user XTRA LASTMODIFDATE]
if {[matchattr $user n|- $chan]} { set date "No Date" }
if {$date == ""} { set date "No Date" }

 set lastt [getuser $user XTRA LASTMODIFBY]
 if {$lastt == ""} { set lastt "No info" }
 if {[matchattr $user n|- $chan]} { set lastt "NONE" }
blacktools:tell $nick $host $hand $chan $chan1 info.13 "$lastt $date"

if {[getuser $user HOSTS] != ""} {
set hosts [getuser $user hosts]
blacktools:tell $nick $host $hand $chan $chan1 info.6 $hosts
}

if {![info exists exit]} { set exit "NONE"}
if {![matchattr $user nm|- $chan] && [matchattr $hand nm|- $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 info.5 "[join $exit]"
}

set lastseen [getuser $user LASTON $chan]
if {($lastseen == "0") || ($lastseen == "")} { 
blacktools:tell $nick $host $hand $chan $chan1 info.14 none
blacktools:tell $nick $host $hand $chan $chan1 info.15 $user
blacktools:tell $nick $host $hand $chan $chan1 info.16 none
return 0
}
set seened [ctime $lastseen]
blacktools:tell $nick $host $hand $chan $chan1 info.17 $seened
blacktools:tell $nick $host $hand $chan $chan1 info.15 $user
blacktools:tell $nick $host $hand $chan $chan1 info.16 none
}


################################# s ###############################

proc spublic {nick host hand chan arg} {
global black
set type 0
set chan1 "$chan"
set users [lindex [split $arg] 0]
if {[regexp {^[#&]} $users] && [matchattr $hand nm|- $chan]} {
set chan "$users"
set users [lindex [split $arg] 1]
}
s:process $nick $host $hand $chan $chan1 $users $type
}

proc s:process {nick host hand chan chan1 users type} {
global botnick black
set flags "-|q"
set char(p) [lindex $black(cmdchar) 0]
if {[string match -nocase "$char(p)" "none"]} {
set char(p) ""
} 
set time [ctime [unixtime]]
if {[matchattr $hand -|q $chan]} { blacktools:tell $nick $host $hand $chan $chan1 gl.suspend none
return 0
}

if {[matchattr $hand nm|- $chan]} {
if {($users == "")  && ($type == "0")} {
blacktools:tell $nick $host $hand $chan $chan1 s.1 none
return 0
}
if {($users == "") && ($type == "1")} {
blacktools:tell $nick $host $hand $chan $chan1 s.2 none
return 0
}
}
if {($users == "") && ($type == "0")} {
blacktools:tell $nick $host $hand $chan $chan1 s.3 none
return 0
}
if {($users == "") && ($type == "1")} {
blacktools:tell $nick $host $hand $chan $chan1 s.4 none
return 0
}


if {![validchan $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.novalidchan none
return 0
}

if {![onchan $botnick $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.notonchan none
return 0
}


if {[matchattr $users -|q $chan]} { blacktools:tell $nick $host $hand $chan $chan1 s.5 $users
return 0
}

if {![validuser $users]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.nomem none
return 0
}
if {![matchattr $users nm|OASMNV $chan]} { blacktools:tell $nick $host $hand $chan $chan1 gl.noaccess none
return 0
}
 

if {[matchattr $users -|M $chan] && [matchattr $hand -|M $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
return 0 
}
if {[matchattr $users -|M $chan] && [matchattr $hand -|A $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
return 0 
}
if {[matchattr $users m|- $chan] && [matchattr $hand -|M $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
return 0 
}
if {[matchattr $users m|- $chan] && [matchattr $hand -|A $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
return 0 
}

if {[matchattr $users -|A $chan] && [matchattr $hand -|A $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
return 0 
}
if {[matchattr $users n|- $chan] && [matchattr $hand -|A $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
return 0 
}
if {[matchattr $users n|- $chan] && [matchattr $hand -|M $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
return 0 
}
if {[matchattr $users n|- $chan] && [matchattr $hand n|- $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
return 0 
}
if {[matchattr $users n|- $chan] && [matchattr $hand m|- $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
return 0 
}


chattr $users $flags $chan
setuser $users XTRA LASTMODIFBY $hand
setuser $users XTRA LASTMODIFDATE $time
blacktools:tell $nick $host $hand $chan $chan1 s.6 $users
} 


################################## us ################################

proc uspublic {nick host hand chan arg} {
global black
set type 0
set chan1 "$chan"
set users [lindex [split $arg] 0]
if {[regexp {^[\\+!#&]} $users] && [matchattr $hand nm|- $chan]} {
set chan "$users"
set users [lindex [split $arg] 1]
}
us:process $nick $host $hand $chan $chan1 $users $type
}

proc us:process {nick host hand chan chan1 users type} {
global botnick black
set flags "-|-q"
set char(p) [lindex $black(cmdchar) 0]
if {[string match -nocase "$char(p)" "none"]} {
set char(p) ""
} 
set time [ctime [unixtime]]
if {[matchattr $hand -|q $chan]} { blacktools:tell $nick $host $hand $chan $chan1 gl.suspend none
return 0
}
if {[matchattr $hand nm|- $chan]} {
if {($users == "")  && ($type == "0")} {
blacktools:tell $nick $host $hand $chan $chan1 us.1 none
return 0
}
if {($users == "") && ($type == "1")} {
blacktools:tell $nick $host $hand $chan $chan1 us.2 none
return 0
}
}
if {($users == "") && ($type == "0")} {
blacktools:tell $nick $host $hand $chan $chan1 us.3 none
return 0
}
if {($users == "") && ($type == "1")} {
blacktools:tell $nick $host $hand $chan $chan1 us.4 none
return 0
}


if {![validchan $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.novalidchan none
return 0
}

if {![onchan $botnick $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.notonchan none
return 0
}

if {![validuser $users]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.nomem none
return 0
}
if {![matchattr $users nm|OASMNV $chan]} { blacktools:tell $nick $host $hand $chan $chan1 gl.noaccess none
return 0
}

if {![matchattr $users -|q $chan]} { blacktools:tell $nick $host $hand $chan $chan1 us.5 $users
return 0
}

if {[matchattr $users -|M $chan] && [matchattr $hand -|M $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
return 0 
}
if {[matchattr $users -|M $chan] && [matchattr $hand -|A $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
return 0 
}
if {[matchattr $users m|- $chan] && [matchattr $hand -|M $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
return 0 
}
if {[matchattr $users m|- $chan] && [matchattr $hand -|A $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
return 0 
}

if {[matchattr $users -|A $chan] && [matchattr $hand -|A $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
return 0 
}
if {[matchattr $users n|- $chan] && [matchattr $hand -|A $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
return 0 
}
if {[matchattr $users n|- $chan] && [matchattr $hand -|M $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
return 0 
}
if {[matchattr $users n|- $chan] && [matchattr $hand n|- $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
return 0 
}
if {[matchattr $users n|- $chan] && [matchattr $hand m|- $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.nomodif none
return 0 
}

setuser $users XTRA LASTMODIFBY $hand
setuser $users XTRA LASTMODIFDATE $time
chattr $users $flags $chan
blacktools:tell $nick $host $hand $chan $chan1 us.6 $users
} 

############################## ping ##################################

proc pings {nick host hand chan arg} {
putquick "PRIVMSG $nick :\001PING [expr {abs([clock clicks -milliseconds])}]\001"
return 0
}

proc pingpublic {nick host hand dest key arg} {
global botnick black
set ping [split $arg "."]
set pingreply [lindex $ping 0]
if {[regexp -- {^-?[0-9]+$} $pingreply]} {
set second "[expr {abs([expr [expr {abs([clock clicks -milliseconds])} - $pingreply] / 1000.000])}]"
blacktools:tell:prv $nick $host $hand ping.1 $second
}
}

############################### time ##################################

proc timepublic {nick host hand chan arg} {
global black
set chan1 "$chan"
set time [ctime [unixtime]]
blacktools:tell $nick $host $hand $chan $chan1 time.1 $time
}

################################### vers ###############################

proc verspublic {nick host hand chan arg} {
global black
set why [lindex [split $arg] 0]
set chan1 "$chan"
set char(p) [lindex $black(cmdchar) 0]
if {[string match -nocase "$char(p)" "none"]} {
set char(p) ""
} 
if {$why == ""} { blacktools:tell $nick $host $hand $chan $chan1 vers.1 none
return 0
}
vers:process $nick $host $hand $chan $chan1 $why
}

proc vers:process {nick host hand chan chan1 why} {
global botnick black
set ::verschan $chan
set ::versnick $nick
if {[matchattr $hand -|q $chan]} { blacktools:tell $nick $host $hand $chan $chan1 gl.suspend none
return 0
}

if {![onchan $why $chan]} { blacktools:tell $nick $host $hand $chan $chan1 gl.notonchan $why
return 0
}
putserv "PRIVMSG $why :\001VERSION\001"

}


proc ctcpvers {nickname hostname handle dest key arg} {
set text [split $arg]
set chan $::verschan
set nick $::versnick
blacktools:tell:prv $nick $hostname $handle vers.3 "$nickname $text"
}

################################### whois ###############################

proc whoispublic {nick host hand chan arg} {
global black
set char(p) [lindex $black(cmdchar) 0]
if {[string match -nocase "$char(p)" "none"]} {
set char(p) ""
} 
set chan1 "$chan"
set who [lindex [split $arg] 0]
if {$who == ""} { blacktools:tell $nick $host $hand $chan $chan1 whois.1 none
return 0
}
whois:process $nick $host $hand $chan $chan1 $who
}



proc whois:process {nick host hand chan chan1 who} {
global botnick black
set ::wnick $nick
set ::hand $hand
if {[matchattr $hand -|q $chan]} { blacktools:tell $nick $host $hand $chan $chan1 gl.suspend none
return 0
}

putquick "WHOIS $who $who"
bind RAW - 311 winfo
bind RAW - 319 wchannels
bind RAW - 401 nonicks
}

proc winfo { from keyword arguments } {
global black
 set hand $::hand
 set nick $::wnick
 set nickname [lindex [split $arguments] 1]
 set ident [lindex [split $arguments] 2]
 set host [lindex [split $arguments] 3]
 set realname [string range [join [lrange $arguments 5 end]] 1 end]

blacktools:tell:prv $nick hostname $hand whois.3 "$nickname 4host - 12*!*$ident@$host * $realname"

unbind RAW - 311 winfo

}

proc wchannels { from keyword arguments } {
global black
set hand $::hand
set nick $::wnick
set channels [string range [join [lrange $arguments 2 end]] 1 end]
blacktools:tell:prv $nick hostname $hand whois.4 $channels

unbind RAW - 319 wchannels

}

proc nonicks { from keyword arguments } {
global black
set hand $::hand
set nick $::wnick
blacktools:tell:prv $nick hostname $hand whois.5 none
unbind RAW - 401 nonicks
}


################################### clear ###############################


proc clearpublic {nick host hand chan arg} {
global black
set why [lindex [split $arg] 0]
set chan1 "$chan"
set type 0
if {[regexp {^[\\+!#&]} $why] && [matchattr $hand nm|- $chan]} {
set chan "$why"
set why [lindex [split $arg] 1]
}
clear:process $nick $host $hand $chan $chan1 $why $type
}

proc clear:process {nick host hand chan chan1 why type} {
global botnick black
set char(p) [lindex $black(cmdchar) 0]
if {[string match -nocase "$char(p)" "none"]} {
set char(p) ""
} 
if {[matchattr $hand -|q $chan]} { blacktools:tell $nick $host $hand $chan $chan1 gl.suspend none
return 0
}
if {[matchattr $hand nm|- $chan]} {
if {($why == "")  && ($type == "0")} {
blacktools:tell $nick $host $hand $chan $chan1 clear.1 none
return 0
}
if {($why == "") && ($type == "1")} {
blacktools:tell $nick $host $hand $chan $chan1 clear.2 none
return 0
}
}
if {($why == "") && ($type == "0")} {
blacktools:tell $nick $host $hand $chan $chan1 clear.3 none
return 0
}
if {($why == "") && ($type == "1")} {
blacktools:tell $nick $host $hand $chan $chan1 clear.4 none
return 0
}


if {![validchan $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.novalidchan none
return 0
}

if {![onchan $botnick $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.notonchan none
return 0
}


if {([regexp -nocase -- {(#[0-9]+|banlist|userlist)} $why tmp cleanlist]) && (![regexp -nocase -- {\S#} $why])} {
    switch $cleanlist {
       userlist {
set list [userlist -|AOSV $chan]

foreach user $list {
chattr $user -|-AOVS $chan
}
blacktools:tell $nick $host $hand $chan $chan1 clear.5 none
}

banlist {
set i 0
foreach ban [banlist $chan] {
set theban [lindex $ban 0]
if {[string match "*" $theban]} {
set i [expr $i +1]
killchanban $chan $theban
}
}
blacktools:tell $nick $host $hand $chan $chan1 clear.6 $i
}

}
}
}


################################# addbot ################################


proc addbotpublic {nick host hand chan arg} {
global black
set char(p) [lindex $black(cmdchar) 0]
if {[string match -nocase "$char(p)" "none"]} {
set char(p) ""
} 
set chan1 "$chan"
set why [lindex [split $arg] 0]
set host [lindex [split $arg] 1]
if {$why == ""} { blacktools:tell $nick $host $hand $chan $chan1 addbot.1 none
return 0
}
addbot:process $nick $host $hand $chan $chan1 $why $host
}


proc addbot:process {nick host hand chan chan1 why host} {
global botnick black
set flags "ao|ao"
if {[validuser $why]} {
blacktools:tell $nick $host $hand $chan $chan1 addbot.3 $why
return 0
}

addbot $why $host
chattr $why $flags $chan
blacktools:tell $nick $host $hand $chan $chan1 addbot.4 "$why $host"
}



proc autovonjoin {nick host hand chan} {
if {[channel get $chan autovoice]} {
pushmode $chan +v $nick
}
}



proc autoponjoin {nick host hand chan} {
if {[channel get $chan autoop]} {
pushmode $chan +o $nick
}
}

############################# addop #################################

proc addoppublic {nick host hand chan arg} {
global black
set user [lindex [split $arg] 0]
set type 0
set chan1 "$chan"
if {[regexp {^[\\+!#&]} $user] && [matchattr $hand nm|- $chan]} {
set chan "$user"
set user [lindex [split $arg] 1]
}
addop:process $nick $host $hand $chan $chan1 $user $type
}


proc addop:process {nick host hand chan chan1 user type} {
global black botnick
set char(p) [lindex $black(cmdchar) 0]
if {[string match -nocase "$char(p)" "none"]} {
set char(p) ""
} 
set flag "-|a"
if {[matchattr $hand -|q $chan]} { blacktools:tell $nick $host $hand $chan $chan1 gl.suspend none
return 0
}
if {[matchattr $hand nm|- $chan]} {
if {($user == "")  && ($type == "0")} {
blacktools:tell $nick $host $hand $chan $chan1 addop.1 none
return 0
}
if {($user == "") && ($type == "1")} {
blacktools:tell $nick $host $hand $chan $chan1 addop.2 none
return 0
}
}
if {($user == "") && ($type == "0")} {
blacktools:tell $nick $host $hand $chan $chan1 addop.3 none
return 0
}
if {($user == "") && ($type == "1")} {
blacktools:tell $nick $host $hand $chan $chan1 addop.4 none
return 0
}


if {![validchan $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.novalidchan none
return 0
}

if {![onchan $botnick $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.notonchan none
return 0
}

if {![validuser $user]} { blacktools:tell $nick $host $hand $chan $chan1 gl.nomem none
return 0
}

if {[matchattr $user -|a $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 addop.5 $user
return 0
}

chattr $user $flag $chan
blacktools:tell $nick $host $hand $chan $chan1 addop.6 $user
}

proc addopjoin {nick host hand chan} {
if {[matchattr $hand -|a $chan]} {
pushmode $chan +o $nick
}
}


########################### addvoice ################################

proc addvoicepublic {nick host hand chan arg} {
global black
set user [lindex [split $arg] 0]
set type 0
set chan1 "$chan"
if {[regexp {^[\\+!#&]} $user] && [matchattr $hand nm|- $chan]} {
set chan "$user"
set user [lindex [split $arg] 1]
}
addvoice:process $nick $host $hand $chan $chan1 $user $type
}

proc addvoice:process {nick host hand chan chan1 user type} {
global black botnick
set char(p) [lindex $black(cmdchar) 0]
if {[string match -nocase "$char(p)" "none"]} {
set char(p) ""
} 
set flag "-|g"
if {[matchattr $hand -|q $chan]} { blacktools:tell $nick $host $hand $chan $chan1 gl.suspend none
return 0
}

if {[matchattr $hand nm|- $chan]} {
if {($user == "")  && ($type == "0")} {
blacktools:tell $nick $host $hand $chan $chan1 addvoice.1 none
return 0
}
if {($user == "") && ($type == "1")} {
blacktools:tell $nick $host $hand $chan $chan1 addvoice.2 none
return 0
}
}
if {($user == "") && ($type == "0")} {
blacktools:tell $nick $host $hand $chan $chan1 addvoice.3 none
return 0
}
if {($user == "") && ($type == "1")} {
blacktools:tell $nick $host $hand $chan $chan1 addvoice.4 none
return 0
}


if {![validchan $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.novalidchan none
return 0
}

if {![onchan $botnick $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.notonchan none
return 0
}

if {![validuser $user]} { blacktools:tell $nick $host $hand $chan $chan1 gl.nomem none
return 0
}

if {[matchattr $user -|g $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 addvoice.5 $user
return 0
}

chattr $user $flag $chan
blacktools:tell $nick $host $hand $chan $chan1 addvoice.6 $user
}

proc addvoicejoin {nick host hand chan} {
if {[matchattr $hand -|g $chan]} {
pushmode $chan +v $nick
}
}





########################### delop ##################################

proc deloppublic {nick host hand chan arg} {
global black botnick
set user [lindex [split $arg] 0]
set type 0
set chan1 "$chan"
if {[regexp {^[\\+!#&]} $user] && [matchattr $hand nm|- $chan]} {
set chan "$user"
set user [lindex [split $arg] 1]
}
delop:process $nick $host $hand $chan $chan1 $user $type
}

proc delop:process {nick host hand chan chan1 user type} {
global black botnick
set char(p) [lindex $black(cmdchar) 0]
if {[string match -nocase "$char(p)" "none"]} {
set char(p) ""
} 
set flag "-|-a"
if {[matchattr $hand -|q $chan]} { 
blacktools:tell $nick $host $hand $chan $chan1 gl.suspend none
return 0
}

if {[matchattr $hand nm|- $chan]} {
if {($user == "")  && ($type == "0")} {
blacktools:tell $nick $host $hand $chan $chan1 delop.1 none
return 0
}
if {($user == "") && ($type == "1")} {
blacktools:tell $nick $host $hand $chan $chan1 delop.2 none
return 0
}
}
if {($user == "") && ($type == "0")} {
blacktools:tell $nick $host $hand $chan $chan1 delop.3 none
return 0
}
if {($user == "") && ($type == "1")} {
blacktools:tell $nick $host $hand $chan $chan1 delop.4 none
return 0
}


if {![validchan $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.novalidchan none
return 0
}

if {![onchan $botnick $chan]} {

blacktools:tell $nick $host $hand $chan $chan1 gl.notonchan none
return 0
}

if {![validuser $user]} { blacktools:tell $nick $host $hand $chan $chan1 gl.nomem none
return 0
}

if {[matchattr $user -|a $chan]} {
set noautoop 1
}

if {![info exists noautoop]} {
blacktools:tell $nick $host $hand $chan $chan1 delop.5 $user
return 0
}

chattr $user $flag $chan
blacktools:tell $nick $host $hand $chan $chan1 delop.6 $user
}



############################ delvoice ###############################

proc delvoicepublic {nick host hand chan arg} {
global black
set user [lindex [split $arg] 0]
set type 0
set chan1 "$chan"
if {[regexp {^[\\+!#&]} $user] && [matchattr $hand nm|- $chan]} {
set chan "$user"
set user [lindex [split $arg] 1]
}
delvoice:process $nick $host $hand $chan $chan1 $user $type
}



proc delvoice:process {nick host hand chan chan1 user type} {
global black botnick
set char(p) [lindex $black(cmdchar) 0]
if {[string match -nocase "$char(p)" "none"]} {
set char(p) ""
} 
set flag "-|-g"
if {[matchattr $hand -|q $chan]} { blacktools:tell $nick $host $hand $chan $chan1 gl.suspend none
return 0
}

if {[matchattr $hand nm|- $chan]} {
if {($user == "")  && ($type == "0")} {
blacktools:tell $nick $host $hand $chan $chan1 delvoice.1 none
return 0
}
if {($user == "") && ($type == "1")} {
blacktools:tell $nick $host $hand $chan $chan1 delvoice.2 none
return 0
}
}
if {($user == "") && ($type == "0")} {
blacktools:tell $nick $host $hand $chan $chan1 delvoice.3 none
return 0
}
if {($user == "") && ($type == "1")} {
blacktools:tell $nick $host $hand $chan $chan1 delvoice.4 none
return 0
}


if {![validchan $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.novalidchan none
return 0
}

if {![onchan $botnick $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.notonchan none
return 0
}

if {![validuser $user]} { blacktools:tell $nick $host $hand $chan $chan1 gl.nomem none
return 0
}

if {[matchattr $user -|g $chan]} {
set noautovoice 1
}

if {![info exists noautovoice]} {
blacktools:tell $nick $host $hand $chan $chan1 delvoice.5 $user
return 0
}

chattr $user $flag $chan
blacktools:tell $nick $host $hand $chan $chan1 delvoice.6 $user
}



############################## activ ##################################

proc activpublic {nick host hand chan arg} { 
global black
set type 0
set chan1 "$chan"
set user [lindex [split $arg] 0]
if {[regexp {^[#&]} $user] && [matchattr $hand nm|- $chan]} {
set chan "$user"
set user [lindex [split $arg] 1]
}
activ:process $nick $host $hand $chan $chan1 $user $type
}

proc activ:process {nick host hand chan chan1 user type} {
global botnick black
set char(p) [lindex $black(cmdchar) 0]
if {[string match -nocase "$char(p)" "none"]} {
set char(p) ""
} 
if {[matchattr $hand nm|- $chan]} {
if {($user == "")  && ($type == "0")} {
blacktools:tell $nick $host $hand $chan $chan1 activ.1 none
return 0
}
if {($user == "") && ($type == "1")} {
blacktools:tell $nick $host $hand $chan $chan1 activ.2 none
return 0
}
}
if {($user == "") && ($type == "0")} {
blacktools:tell $nick $host $hand $chan $chan1 activ.3 none
return 0
}
if {($user == "") && ($type == "1")} {
blacktools:tell $nick $host $hand $chan $chan1 activ.4 none
return 0
}


if {![validchan $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.novalidchan none
return 0
}

if {![onchan $botnick $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.notonchan none
return 0
}

if {![validuser $user]} { blacktools:tell $nick $host $hand $chan $chan1 gl.nomem none
return 0
}
if {![matchattr $user mn|OAVMS $chan]} { blacktools:tell $nick $host $hand $chan $chan1 gl.noaccess none 
return 0
}

set dr [getuser $user XTRA DR($chan)]
set ban [getuser $user XTRA b($chan)]
set spam [getuser $user XTRA spam($chan)]
set badnick [getuser $user XTRA n($chan)]
set invite [getuser $user XTRA i($chan)]
set blacks [getuser $user XTRA Black($chan)]
set warn [getuser $user XTRA w($chan)]
set day [getuser $user XTRA d($chan)]
set kick [getuser $user XTRA k($chan)]
set stick [getuser $user XTRA stick($chan)]
set bw [getuser $user XTRA bw($chan)]
set bot [getuser $user XTRA bot($chan)]

if {$ban == ""} { set ban "0" }
if {$dr == ""} { set dr "0" }
if {$spam == ""} { set spam "0" }
if {$badnick == ""} { set badnick "0" }
if {$invite == ""} { set invite "0" }
if {$blacks == ""} { set blacks "0" }
if {$warn == ""} { set warn "0" }
if {$day == ""} { set day "0" }
if {$kick == ""} { set kick "0" }
if {$stick == ""} { set stick "0" }
if {$bw == ""} { set bw "0" }
if {$bot == ""} { set bot "0" }

if {[matchattr $user mn|AMS $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 activ.5 $user
blacktools:tell $nick $host $hand $chan $chan1 activ.6 "12- $char(p)dr - 4($dr) | 12- $char(p)bot - 4($bot) | 12- $char(p)b - 4($ban) | 12- $char(p)spam - 4($spam) | 12- $char(p)n - 4($badnick) | 12- $char(p)i - 4($invite) | 12- $char(p)black - 4($blacks) | 12- $char(p)w - 4($warn) | 12- $char(p)d - 4($day) | 12- $char(p)k - 4($kick) | 12- $char(p)stick - 4($stick) | 12- $char(p)bw - 4($bw) ."
blacktools:tell $nick $host $hand $chan $chan1 activ.7 none
return 0
}
if {[matchattr $user -|O $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 activ.8 $user
blacktools:tell $nick $host $hand $chan $chan1 activ.6 "12- $char(p)dr - 4($dr) | 12- $char(p)bot - 4($bot) | 12- $char(p)b - 4($ban) | 12- $char(p)spam - 4($spam) | 12- $char(p)n - 4($badnick) | 12- $char(p)i - 4($invite) | 12- $char(p)w - 4($warn) | 12- $char(p)k - 4($kick) | 12- $char(p)bw - 4($bw) ."
blacktools:tell $nick $host $hand $chan $chan1 activ.7 none
return 0
}
if {[matchattr $user -|V $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 activ.9 $user
blacktools:tell $nick $host $hand $chan $chan1 activ.6 "12- $char(p)w - 4($warn) | 12- $char(p)k - 4($kick)"
blacktools:tell $nick $host $hand $chan $chan1 activ.7 none
return 0
}
}

proc addmyhostpublic {nick host hand chan arg} {
global black
set char(p) [lindex $black(cmdchar) 0]
if {[string match -nocase "$char(p)" "none"]} {
set char(p) ""
} 
set chan1 "$chan"
set why [lindex [split $arg] 0]
if {$why == ""} { blacktools:tell $nick $host $hand $chan $chan1 addmyhost.1 none
return 0
}
addmyhost:process $nick $host $hand $chan $chan1 $why
}

proc addmyhost:process {nick host hand chan chan1 why} {
global botnick black
set char(p) [lindex $black(cmdchar) 0]
if {[string match -nocase "$char(p)" "none"]} {
set char(p) ""
} 
set hhost [getuser $hand hosts]
foreach hhost $hhost {
if {[string match -nocase $hhost $why]} {
set foundhost 1
}
}
if {[info exists foundhost]} {
blacktools:tell $nick $host $hand $chan $chan1 addmyhost.3 $why
return 0
}
setuser $hand HOSTS $why
blacktools:tell $nick $host $hand $chan $chan1 addmyhost.4 $why
}

############################## delmyhost ##########################

proc delmyhostpublic {nick host hand chan arg} {
global black
set chan1 "$chan"
set char(p) [lindex $black(cmdchar) 0]
if {[string match -nocase "$char(p)" "none"]} {
set char(p) ""
} 
set why [lindex [split $arg] 0]
if {$why == ""} { blacktools:tell $nick $host $hand $chan $chan1 delmyhost.1 none
return 0
}
delmyhost:process $nick $host $hand $chan $chan1 $why
}

proc delmyhost:process {nick host hand chan chan1 why} {
global botnick black
set char(p) [lindex $black(cmdchar) 0]
if {[string match -nocase "$char(p)" "none"]} {
set char(p) ""
} 
set hhost [getuser $hand hosts]
foreach hhost $hhost {
if {[string match -nocase $hhost $why]} {
set foundhost 1
}
}
if {![info exists foundhost]} {
blacktools:tell $nick $host $hand $chan $chan1 delmyhost.3 $why
return 0
}
delhost $hand $why
blacktools:tell $nick $host $hand $chan $chan1 delmyhost.4 $why
}


######################## cc (channel created) #######################

proc createdpublic { from keyword arguments } {
set hand $::hand
set nick $::ccnick
set date [lindex [split $arguments] 2]
set dates [ctime $date]
blacktools:tell:prv $nick host $hand cc.3 $dates
unbind RAW - 329 createdpublic
}

proc nocreatedpublic { from keyword arguments } {
set hand $::hand
set nick $::ccnick
blacktools:tell:prv $nick host $hand cc.4 none
unbind RAW - 403 nocreatedpublic

}

proc ccpublic {nick host hand chan arg} {
global black
set ::ccnick $nick
set ::hand $hand
set chan1 "$chan"
set c [lindex [split $arg] 0]
set char(p) [lindex $black(cmdchar) 0]
if {[string match -nocase "$char(p)" "none"]} {
set char(p) ""
} 
if {$c == ""} { blacktools:tell $nick $host $hand $chan $chan1 cc.1 none
return 0
}
if {![regexp {^[\\+!#&]} $c]} {
set c #$c
 } 

putquick "MODE $c"
bind raw - 329 createdpublic
bind raw - 403 nocreatedpublic
}

proc statspublic {nick host hand chan arg} {
global botnick black
set c [lindex [split $arg] 0]
set chan1 "$chan"
if {[regexp {^[#&]} $c] && [matchattr $hand nm|- $chan]} {
set chan "$c"
}
stats:process $nick $host $hand $chan $chan1
}

proc stats:process {nick host hand chan chan1} {
global botnick black statsdir
set ops 0
set numban 0
set voices 0
set numuser 0
set getlang [string tolower [getuser $hand XTRA OUTPUT_LANG]]
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
set time [unixtime]
set file [open $statsdir "r"]
set database [read -nonewline $file]
set data [split $database "\n"]
foreach line $data {
set c [lindex [split $line] 0]
set type [lindex [split $line] 1]
if {[string match "ADDED" "$type"] && [string match -nocase $c $chan]} {
set foundchan 1
set chanadded 1
set awho [lindex [split $line] 2]
set ahost [lindex [split $line] 3]
set a1time [lindex [split $line] 4]
if {[regexp {^[0-9]} $a1time]} { 
set duration [duration [expr [unixtime] - $a1time]]
} else { set duration "NONE" }
if {[regexp {^[0-9]} $a1time]} {
set atime [clock format $a1time -format %D-%H:%M:%S]
} else { set atime "NONE"}
set replace(%ahost%) $ahost
set replace(%atime%) $atime
set replace(%duration%) $duration
set replace(%awho%) $awho
lappend mes "[string map [array get replace] $black(say.$getlang.stats.1)]" 
lappend mes1 "[string map [array get replace] $black(say.$getlang.stats.2)]"
}
if {[string match "REMOVED" "$type"] && [string match -nocase $c $chan]} {
set foundchan 1
set chanremoved 1
set rwho [lindex [split $line] 2]
set rhost [lindex [split $line] 3]
set rtime [lindex [split $line] 4]
set a1time [lindex [split $line] 5]
if {[regexp {^[0-9]} $a1time]} { 
set duration [duration [expr [unixtime] - $a1time]]
} else { set duration "NONE" }
if {[regexp {^[0-9]} $a1time]} {
set atime [clock format $a1time -format %D-%H:%M:%S]
} else { set atime "NONE"}
if {[regexp {^[0-9]} $rtime]} {
set rtime [clock format $rtime -format %D-%H:%M:%S]
} else { set rtime "NONE" }
set awho [lindex [split $line] 6]
set ahost [lindex [split $line] 7]
set replace(%ahost%) $ahost
set replace(%atime%) $atime
set replace(%rtime%) $rtime
set replace(%duration%) $duration
set replace(%awho%) $awho
set replace(%rwho%) $rwho
set replace(%rhost%) $ahost
lappend mes "[string map [array get replace] $black(say.$getlang.stats.1)]"
lappend mes1 "[string map [array get replace] $black(say.$getlang.stats.3)]"
lappend mes2 "[string map [array get replace] $black(say.$getlang.stats.4)]"
}
}
if {![info exists foundchan]} {
blacktools:tell $nick $host $hand $chan $chan1 stats.5 none
return 0
}
if {[validchan $chan] && ([onchan $botnick $chan])} {
set numban [llength [banlist $chan]]
set numuser [llength [chanlist $chan]]
foreach user [chanlist $chan] {
if {[isop $user $chan] && (![isvoice $user $chan])} {
set ops [expr $ops +1]
}
if {[isvoice $user $chan]} {
set voices [expr $voices +1]
}
}
}
if {[info exists chanadded]} {
blacktools:tell $nick $host $hand $chan $chan1 stats.6 none
blacktools:tell $nick $host $hand $chan $chan1 stats.7 "[join $mes]"
if {![onchan $botnick $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 stats.9 none 
} else {
blacktools:tell $nick $host $hand $chan $chan1 stats.8 none
}
blacktools:tell $nick $host $hand $chan $chan1 stats.7 "[join $mes1]"
blacktools:tell $nick $host $hand $chan $chan1 stats.10 "$numuser $ops $voices $numban"
blacktools:tell $nick $host $hand $chan $chan1 stats.11 none
}

if {[info exists chanremoved]} {
blacktools:tell $nick $host $hand $chan $chan1 stats.6 none
blacktools:tell $nick $host $hand $chan $chan1 stats.7 "[join $mes]"
blacktools:tell $nick $host $hand $chan $chan1 stats.12 none
blacktools:tell $nick $host $hand $chan $chan1 stats.7 "[join $mes1]"
blacktools:tell $nick $host $hand $chan $chan1 stats.7 "[join $mes2]"
blacktools:tell $nick $host $hand $chan $chan1 stats.11 none
}

}



####################### TopWords ####################################


proc topwordspublic {nick host hand chan arg} {
global black who username
set arg [split $arg]
if {![validchan $chan]} {
return 0
}
if {[channel get $chan topwords]} {
set lin 0
set wordsdir "logs/$username.$chan.words.db"
if {![file exists $wordsdir]} {
set file [open $wordsdir w]
close $file
}
set host "*!*@[lindex [split $host @] 1]"
set len($host) [llength $arg]
set words($host:$chan) $len($host)
if {[isbotnick $nick]} { return 0 }
set who "$chan $nick $host $words($host:$chan)"
set file [open $wordsdir "r"]
set database [read -nonewline $file]
close $file
set data [split $database "\n"]
foreach line $data {
set lin [expr $lin +1] 
set hhost [lindex [split $line] 2]
set hscore [lindex [split $line] 3]
set chanentry [lindex [split $line] 0]
if {[string match -nocase $hhost $host] && [string match -nocase $chanentry $chan]} {
lappend current($hhost:$chan) $hscore
set who "$chan $nick $hhost [expr $words($host:$chan) + $current($hhost:$chan)]"
if {$line != ""} {
set num [expr $lin - 1]
set delete [lreplace $data $num $num]
set files [open $wordsdir "w"]
puts $files [join $delete "\n"]
close $files
}
}
}
set file [open $wordsdir "r"]
set data [read -nonewline $file]
close $file
if {$data == ""} {
set files [open $wordsdir "w"]
close $files
}
set file [open $wordsdir "a"]
puts $file "$who"
close $file
}
}


################################## TOP ################################

proc toppublic {nick host hand chan arg} {
global black
set cmd [lindex [split $arg] 0]
set del [lindex [split $arg] 1]
set type 0
set chan1 "$chan"
if {[regexp {^[#&]} $cmd] && [matchattr $hand nm|- $chan]} {
set chan1 "$chan"
set chan "$cmd"
set cmd [lindex [split $arg] 1]
set del [lindex [split $arg] 2]
}
top:process $nick $host $hand $chan $chan1 $cmd $type $del
}


proc top:process {nick host hand chan chan1 cmd type del} {
global botnick black username
set max "20"
set i 0
set char(p) [lindex $black(cmdchar) 0]
if {[string match -nocase "$char(p)" "none"]} {
set char(p) ""
} 
set list [userlist nm|OSVAM $chan]
set wordsdir "logs/$username.$chan.words.db"
if {![file exists $wordsdir]} {
set file [open $wordsdir w]
close $file
}

if {[matchattr $hand nm|- $chan]} {
if {($cmd == "")  && ($type == "0")} {
blacktools:tell $nick $host $hand $chan $chan1 top.1 none
blacktools:tell $nick $host $hand $chan $chan1 top.2 none
return 0
}
if {($cmd == "") && ($type == "1")} {
blacktools:tell $nick $host $hand $chan $chan1 top.3 none
blacktools:tell $nick $host $hand $chan $chan1 top.4 none
return 0
}
}
if {($cmd == "") && ($type == "0")} {
blacktools:tell $nick $host $hand $chan $chan1 top.5 none
blacktools:tell $nick $host $hand $chan $chan1 top.6 none
return 0
}
if {($cmd == "") && ($type == "1")} {
blacktools:tell $nick $host $hand $chan $chan1 top.7 none
blacktools:tell $nick $host $hand $chan $chan1 top.8 none
return 0
}


if {![validchan $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.novalidchan none
return 0
}

if {![onchan $botnick $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.notonchan none
return 0
}


 
switch -exact -- [string tolower $cmd] {
       dr {
array set blacks [list] 
set list [userlist nm|OSVAM $chan] 
foreach user $list { 
 set b [getuser $user XTRA DR($chan)] 
 if {$b == ""} { set b 0 }
if {$b > 0} { 
 lappend blacks($b) $user
}
}

foreach blackq [lsort -integer -decreasing [array names blacks]] {
set i [expr $i +1]
lappend topblack 1- $i - : 1[join $blacks($blackq) ,] 12($blackq) | 
}
if {![info exists topblack]} { blacktools:tell $nick $host $hand $chan $chan1 top.9 none
return 0
}
blacktools:tell $nick $host $hand $chan $chan1 top.10 none
foreach txt [wordwrap [join $topblack " "] 300] {
blacktools:tell $nick $host $hand $chan $chan1 top.11 $txt
}
}

 b {
 
array set blacks [list] 
set list [userlist nm|OSVAM $chan] 
foreach user $list { 
 set b [getuser $user XTRA b($chan)] 
 if {$b == ""} { set b 0 }
if {$b > 0} { 
 lappend blacks($b) $user
}
}

foreach blackq [lsort -integer -decreasing [array names blacks]] {
set i [expr $i +1]
lappend topblack 1- $i - : 1[join $blacks($blackq) ,] 12($blackq) | 
}
if {![info exists topblack]} { blacktools:tell $nick $host $hand $chan $chan1 top.9 none
return 0
}
blacktools:tell $nick $host $hand $chan $chan1 top.12 none
foreach txt [wordwrap [join $topblack " "] 300] {
blacktools:tell $nick $host $hand $chan $chan1 top.11 $txt
}
}

bot {
 
array set blacks [list] 
set list [userlist nm|OSVAM $chan] 
foreach user $list { 
 set b [getuser $user XTRA bot($chan)] 
 if {$b == ""} { set b 0 }
if {$b > 0} { 
 lappend blacks($b) $user
}
}

foreach blackq [lsort -integer -decreasing [array names blacks]] {
set i [expr $i +1]
lappend topblack 1- $i - : 1[join $blacks($blackq) ,] 12($blackq) | 
}
if {![info exists topblack]} { blacktools:tell $nick $host $hand $chan $chan1 top.9 none
return 0
}
blacktools:tell $nick $host $hand $chan $chan1 top.13 none
foreach txt [wordwrap [join $topblack " "] 300] {
blacktools:tell $nick $host $hand $chan $chan1 top.11 $txt
}
}

bw {
 
array set blacks [list] 
set list [userlist nm|OSVAM $chan] 
foreach user $list { 
 set b [getuser $user XTRA bw($chan)] 
 if {$b == ""} { set b 0 }
if {$b > 0} { 
 lappend blacks($b) $user
}
}

foreach blackq [lsort -integer -decreasing [array names blacks]] {
set i [expr $i +1]
lappend topblack 1- $i - : 1[join $blacks($blackq) ,] 12($blackq) | 
}
if {![info exists topblack]} { blacktools:tell $nick $host $hand $chan $chan1 top.9 none
return 0
}
blacktools:tell $nick $host $hand $chan $chan1 top.14 none
foreach txt [wordwrap [join $topblack " "] 300] {
blacktools:tell $nick $host $hand $chan $chan1 top.11 $txt
}
}

black {
array set blacks [list] 
set list [userlist nm|OSVAM $chan] 
foreach user $list { 
 set b [getuser $user XTRA Black($chan)] 
 if {$b == ""} { set b 0 }
if {$b > 0} { 
 lappend blacks($b) $user
}
}

foreach blackq [lsort -integer -decreasing [array names blacks]] {
set i [expr $i +1]
lappend topblack 1- $i - : 1[join $blacks($blackq) ,] 12($blackq) | 
}
if {![info exists topblack]} { blacktools:tell $nick $host $hand $chan $chan1 top.9 none
return 0
}
blacktools:tell $nick $host $hand $chan $chan1 top.15 none
foreach txt [wordwrap [join $topblack " "] 300] {
blacktools:tell $nick $host $hand $chan $chan1 top.11 $txt
}
}


spam {
 
array set blacks [list] 
set list [userlist nm|OSVAM $chan] 
foreach user $list { 
 set b [getuser $user XTRA spam($chan)] 
 if {$b == ""} { set b 0 }
if {$b > 0} { 
 lappend blacks($b) $user
}
}

foreach blackq [lsort -integer -decreasing [array names blacks]] {
set i [expr $i +1]
lappend topblack 1- $i - : 1[join $blacks($blackq) ,] 12($blackq) | 
}
if {![info exists topblack]} { blacktools:tell $nick $host $hand $chan $chan1 top.9 none
return 0
}
blacktools:tell $nick $host $hand $chan $chan1 top.16 none
foreach txt [wordwrap [join $topblack " "] 300] {
blacktools:tell $nick $host $hand $chan $chan1 top.11 $txt
}
}

stick {
 
array set blacks [list] 
set list [userlist nm|OSVAM $chan] 
foreach user $list { 
 set b [getuser $user XTRA stick($chan)] 
 if {$b == ""} { set b 0 }
if {$b > 0} { 
 lappend blacks($b) $user
}
}

foreach blackq [lsort -integer -decreasing [array names blacks]] {
set i [expr $i +1]
lappend topblack 1- $i - : 1[join $blacks($blackq) ,] 12($blackq) | 
}
if {![info exists topblack]} { blacktools:tell $nick $host $hand $chan $chan1 top.9 none
return 0
}
blacktools:tell $nick $host $hand $chan $chan1 top.17 none
foreach txt [wordwrap [join $topblack " "] 300] {
blacktools:tell $nick $host $hand $chan $chan1 top.11 $txt
}
}

n {
 
array set blacks [list] 
set list [userlist nm|OSVAM $chan] 
foreach user $list { 
 set b [getuser $user XTRA n($chan)] 
 if {$b == ""} { set b 0 }
if {$b > 0} { 
 lappend blacks($b) $user
}
}

foreach blackq [lsort -integer -decreasing [array names blacks]] {
set i [expr $i +1]
lappend topblack 1- $i - : 1[join $blacks($blackq) ,] 12($blackq) | 
}
if {![info exists topblack]} { blacktools:tell $nick $host $hand $chan $chan1 top.9 none
return 0
}
blacktools:tell $nick $host $hand $chan $chan1 top.18 none
foreach txt [wordwrap [join $topblack " "] 300] {
blacktools:tell $nick $host $hand $chan $chan1 top.11 $txt
}
}


i {
 
array set blacks [list] 
set list [userlist nm|OSVAM $chan] 
foreach user $list { 
 set b [getuser $user XTRA i($chan)] 
 if {$b == ""} { set b 0 }
if {$b > 0} { 
 lappend blacks($b) $user
}
}

foreach blackq [lsort -integer -decreasing [array names blacks]] {
set i [expr $i +1]
lappend topblack 1- $i - : 1[join $blacks($blackq) ,] 12($blackq) | 
}
if {![info exists topblack]} { blacktools:tell $nick $host $hand $chan $chan1 top.9 none
return 0
}
blacktools:tell $nick $host $hand $chan $chan1 top.19 none
foreach txt [wordwrap [join $topblack " "] 300] {
blacktools:tell $nick $host $hand $chan $chan1 top.11 $txt
}
}

k {
 
array set blacks [list] 
set list [userlist nm|OSVAM $chan] 
foreach user $list { 
 set b [getuser $user XTRA k($chan)] 
 if {$b == ""} { set b 0 }
if {$b > 0} { 
 lappend blacks($b) $user
}
}

foreach blackq [lsort -integer -decreasing [array names blacks]] {
set i [expr $i +1]
lappend topblack 1- $i - : 1[join $blacks($blackq) ,] 12($blackq) | 
}
if {![info exists topblack]} { blacktools:tell $nick $host $hand $chan $chan1 top.9 none
return 0
}
blacktools:tell $nick $host $hand $chan $chan1 top.20 none
foreach txt [wordwrap [join $topblack " "] 300] {
blacktools:tell $nick $host $hand $chan $chan1 top.11 $txt
}
}

w {
 
array set blacks [list] 
set list [userlist nm|OSVAM $chan] 
foreach user $list { 
 set b [getuser $user XTRA w($chan)] 
 if {$b == ""} { set b 0 }
if {$b > 0} { 
 lappend blacks($b) $user
}
}

foreach blackq [lsort -integer -decreasing [array names blacks]] {
set i [expr $i +1]
lappend topblack 1- $i - : 1[join $blacks($blackq) ,] 12($blackq) | 
}
if {![info exists topblack]} { blacktools:tell $nick $host $hand $chan $chan1 top.9 none
return 0
}
blacktools:tell $nick $host $hand $chan $chan1 top.21 none
foreach txt [wordwrap [join $topblack " "] 300] {
blacktools:tell $nick $host $hand $chan $chan1 top.11 $txt
}
}

d {
 
array set blacks [list] 
set list [userlist nm|OSVAM $chan] 
foreach user $list { 
 set b [getuser $user XTRA d($chan)] 
 if {$b == ""} { set b 0 }
if {$b > 0} { 
 lappend blacks($b) $user
}
}

foreach blackq [lsort -integer -decreasing [array names blacks]] {
set i [expr $i +1]
lappend topblack 1- $i - : 1[join $blacks($blackq) ,] 12($blackq) | 
}
if {![info exists topblack]} { blacktools:tell $nick $host $hand $chan $chan1 top.9 none
return 0
}
blacktools:tell $nick $host $hand $chan $chan1 top.22 none
foreach txt [wordwrap [join $topblack " "] 300] {
blacktools:tell $nick $host $hand $chan $chan1 top.11 $txt
}
}

words {
array set topw [list]
if {![channel get $chan topwords]} {
blacktools:tell $nick $host $hand $chan $chan1 top.23 none
return 0
}
if {[string match -nocase $del "erase"] && [matchattr $hand nm|M $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 top.24 none
set file [open $wordsdir "w"]
close $file
return 0
}
set file [open $wordsdir "r"]
set database [read -nonewline $file]
close $file
if {$database == ""} { blacktools:tell $nick $host $hand $chan $chan1 top.9 none
return 0
}
set data [split $database "\n"]
foreach line $data {
set hhost [lindex [split $line] 2]
set hentry [lindex [split $line] 1]
set chanentry [lindex [split $line] 0]
set tw [lindex [split $line] 3]
if {[string match -nocase $chanentry $chan]} {
lappend topw($tw) $hentry
}
}
foreach twords [lsort -integer -decreasing [array names topw]] {
set i [expr $i +1]
if {!($i > $max)} {
lappend topwo 1- $i - : 1[join $topw($twords) ,] 12($twords) |
}
}
if {![info exists topwo]} { blacktools:tell $nick $host $hand $chan $chan1 top.9 none
return 0
}
blacktools:tell $nick $host $hand $chan $chan1 top.25 $max
foreach txt [wordwrap [join $topwo " "] 300] {
blacktools:tell $nick $host $hand $chan $chan1 top.11 $txt
}
}

}
}

proc securepublic {nick host hand chan arg} {
global black
set what [lindex [split $arg] 0]
set type 0
set chan1 "$chan"
if {[regexp {^[#&]} $what] && [matchattr $hand nm|- $chan]} {
set chan "$what"
set what [lindex [split $arg] 1]
}
secure:process $nick $host $hand $chan $chan1 $what $type
}


proc secure:process {nick host hand chan chan1 what type} {
global botnick black
set char(p) [lindex $black(cmdchar) 0]
if {[string match -nocase "$char(p)" "none"]} {
set char(p) ""
} 
if {[matchattr $hand nm|- $chan]} {
if {($what == "")  && ($type == "0")} {
blacktools:tell $nick $host $hand $chan $chan1 secure.1 none
return 0
}
if {($what == "") && ($type == "1")} {
blacktools:tell $nick $host $hand $chan $chan1 secure.2 none
return 0
}
}
if {($what == "") && ($type == "0")} {
blacktools:tell $nick $host $hand $chan $chan1 secure.3 none
return 0
}
if {($what == "") && ($type == "1")} {
blacktools:tell $nick $host $hand $chan $chan1 secure.4 none
return 0
}


if {![validchan $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.novalidchan none
return 0
}

if {![onchan $botnick $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.notonchan none
return 0
}




if {[string match -nocase "$what" "on"]} {
set char(a) "+"
channel set $chan $char(a)antipub ; channel set $chan $char(a)antinotice ; channel set $chan $char(a)antictcp ; channel set $chan $char(a)antibadword ; channel set $chan $char(a)antibadword ; channel set $chan $char(a)antilongtext ; channel set $chan $char(a)badquitpart ; channel set $chan $char(a)antijoinpart ; channel set $chan $char(a)antispam ; channel set $chan $char(a)antirepeat ; channel set $chan $char(a)anticolor ; channel set $chan $char(a)antibold ; channel set $chan $char(a)antiunderline ; channel set $chan $char(a)anticaps ; channel set $chan $char(a)badnick ; channel set $chan $char(a)badfullname ; channel set $chan $char(a)antijoinflood ; channel set $chan $char(a)antichanflood ; channel set $chan $char(a)badident
blacktools:tell $nick $host $hand $chan $chan1 secure.5 none
}
if {[string match -nocase "$what" "off"]} {
set char(a) "-"
channel set $chan $char(a)antipub ; channel set $chan $char(a)antinotice ; channel set $chan $char(a)antictcp ; channel set $chan $char(a)antibadword ; channel set $chan $char(a)antibadword ; channel set $chan $char(a)antilongtext ; channel set $chan $char(a)badquitpart ; channel set $chan $char(a)antijoinpart ; channel set $chan $char(a)antispam ; channel set $chan $char(a)antirepeat ; channel set $chan $char(a)anticolor ; channel set $chan $char(a)antibold ; channel set $chan $char(a)antiunderline ; channel set $chan $char(a)anticaps ; channel set $chan $char(a)badnick ; channel set $chan $char(a)badfullname ; channel set $chan $char(a)antijoinflood ; channel set $chan $char(a)antichanflood ; channel set $chan $char(a)badident
blacktools:tell $nick $host $hand $chan $chan1 secure.6 none
}
}

proc hpublic {nick host hand chan arg} {
global black botnick
set chan1 "$chan"
set command [lindex [split $arg] 0]
h:process $nick $host $hand $chan $chan1 $command
}


proc h:process {nick host hand chan chan1 command} {
global black botnick
set char(p) [lindex $black(cmdchar) 0]
if {[string match -nocase "$char(p)" "none"]} {
set char(p) ""
}
set replace(%chan%) $chan
set replace(%char%) $char(p)
set greeting [getuser $hand XTRA GREET]
set chanlang [string tolower [channel get $chan lang]]
if {$chanlang == ""} { set chanlang "[string tolower $black(default_lang)]" }
if {$greeting == ""} {
putserv "PRIVMSG $nick :[string map [array get replace] $black(say.$chanlang.greeting.1)]"
putserv "PRIVMSG $nick :[string map [array get replace] $black(say.$chanlang.greeting.2)]"
putserv "PRIVMSG $nick :[string map [array get replace] $black(say.$chanlang.greeting.3)]"
putserv "PRIVMSG $nick :[string map [array get replace] $black(say.$chanlang.greeting.4)]"
setuser $hand XTRA GREET 1
return 0
}
set getlang [string tolower [getuser $hand XTRA OUTPUT_LANG]]
set replace(%char%) "$char(p)"
if {$getlang == ""} { set getlang "[string tolower $black(default_lang)]" }
if {[matchattr $hand -|q $chan]} { blacktools:tell $nick $host $hand $chan $chan1 gl.suspend none
return 0
}
if {$command == ""} {
if {[matchattr $hand n|- $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 h.1 none
blacktools:tell $nick $host $hand $chan $chan1 h.2 none
return 0
}
if {[matchattr $hand m|- $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 h.3 none
blacktools:tell $nick $host $hand $chan $chan1 h.4 none
return 0
}
if {[matchattr $hand -|V $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 h.5 none
blacktools:tell $nick $host $hand $chan $chan1 h.6 none
return 0
}
if {[matchattr $hand -|O $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 h.7 none
blacktools:tell $nick $host $hand $chan $chan1 h.8 none
return 0
}
if {[matchattr $hand -|S $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 h.9 none
blacktools:tell $nick $host $hand $chan $chan1 h.10 none
return 0
}
if {[matchattr $hand -|A $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 h.11 none
blacktools:tell $nick $host $hand $chan $chan1 h.12 none
return 0
}
if {[matchattr $hand -|M $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 h.13 none
blacktools:tell $nick $host $hand $chan $chan1 h.14 none
return 0
}
return 0
}
switch -exact -- [string tolower $command] {

cmds {
if {[matchattr $hand -|V $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 cmdsvoice none

return 0
}

if {[matchattr $hand -|O $chan]} {
foreach txt [wordwrap [join [string map [array get replace] $black(say.$getlang.cmdsop)] " "] 300] {
blacktools:tell $nick $host $hand $chan $chan1 h.15 $txt
}
return 0
}

if {[matchattr $hand -|S $chan]} {
foreach txt [wordwrap [join [string map [array get replace] $black(say.$getlang.cmdsenior)] " "] 300] {
blacktools:tell $nick $host $hand $chan $chan1 h.15 $txt

}
return 0
}

if {[matchattr $hand -|A $chan]} {
foreach txt [wordwrap [join [string map [array get replace] $black(say.$getlang.cmdadmin)] " "] 300] {
blacktools:tell $nick $host $hand $chan $chan1 h.15 $txt
b
}
return 0
}

if {[matchattr $hand -|M $chan]} {
foreach txt [wordwrap [join [string map [array get replace] $black(say.$getlang.cmdmanager)] " "] 300] {
blacktools:tell $nick $host $hand $chan $chan1 h.15 $txt

}
return 0
}

if {[matchattr $hand n|- $chan]} {
foreach txt [wordwrap [join [string map [array get replace] $black(say.$getlang.cmdbossowner)] " "] 300] {
blacktools:tell $nick $host $hand $chan $chan1 h.15 $txt

}
return 0
}

if {[matchattr $hand m|- $chan]} {
foreach txt [wordwrap [join [string map [array get replace] $black(say.$getlang.cmdowner)] " "] 300] {
blacktools:tell $nick $host $hand $chan $chan1 h.15 $txt

}
return 0
}
}

ban {

if {[matchattr $hand -|V $chan]} {
foreach txt [wordwrap [join [string map [array get replace] $black(say.$getlang.banvoice)] " "] 450] {
blacktools:tell $nick $host $hand $chan $chan1 h.15 $txt
}
return 0
}

if {[matchattr $hand -|O $chan]} {
foreach txt [wordwrap [join [string map [array get replace] $black(say.$getlang.banop)] " "] 300] {
blacktools:tell $nick $host $hand $chan $chan1 h.15 $txt
}
return 0
}

if {[matchattr $hand -|S $chan]} {
foreach txt [wordwrap [join [string map [array get replace] $black(say.$getlang.bansenior)] " "] 300] {
blacktools:tell $nick $host $hand $chan $chan1 h.15 $txt
}
return 0
}

if {[matchattr $hand -|A $chan]} {
foreach txt [wordwrap [join [string map [array get replace] $black(say.$getlang.banadmin)] " "] 300] {
blacktools:tell $nick $host $hand $chan $chan1 h.15 $txt
}
return 0
}

if {[matchattr $hand -|M $chan]} {
foreach txt [wordwrap [join [string map [array get replace] $black(say.$getlang.banmanager)] " "] 300] {
blacktools:tell $nick $host $hand $chan $chan1 h.15 $txt
}
return 0
}

if {[matchattr $hand n|- $chan]} {
foreach txt [wordwrap [join [string map [array get replace] $black(say.$getlang.banbossowner)] " "] 380] {
blacktools:tell $nick $host $hand $chan $chan1 h.15 $txt
}
return 0
}

if {[matchattr $hand m|- $chan]} {
foreach txt [wordwrap [join [string map [array get replace] $black(say.$getlang.banowner)] " "] 380] {
blacktools:tell $nick $host $hand $chan $chan1 h.15 $txt
}
return 0
}
}

add {

if {[matchattr $hand -|A $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 addadmin none
return 0
}

if {[matchattr $hand -|M $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 addmanager none
return 0
}

if {[matchattr $hand n|- $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 addbossowner none
return 0
}

if {[matchattr $hand m|- $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 addowner none
return 0
}
}


modif {
if {[matchattr $hand -|A $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 modifadmin none
return 0
}

if {[matchattr $hand -|M $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 modifmanager none
return 0
}

if {[matchattr $hand n|- $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 modifbossowner none
return 0
}

if {[matchattr $hand m|- $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 modifowner none
return 0
}
}

owner {
if {[matchattr $hand nm|- $chan]} {
foreach txt [wordwrap [join [string map [array get replace] $black(say.$getlang.howner)] " "] 390] {
blacktools:tell $nick $host $hand $chan $chan1 h.15 $txt
}
}
}

top {
if {[matchattr $hand nm|MASOV $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 htop $nick
}
}

blacktools {
if {[matchattr $hand nm|M $chan]} {
if {[channel get $chan antipub]} { set pubstatus "+antipub" } else { set pubstatus "-antipub" }
if {[channel get $chan antinotice]} { set noticestatus "+antinotice" } else { set noticestatus "-antinotice" }
if {[channel get $chan antictcp]} { set ctcpstatus "+antictcp" } else { set ctcpstatus "-antictcp" }
if {[channel get $chan antibadword]} { set badwordstatus "+antibadword" } else { set badwordstatus "-antibadword" }
if {[channel get $chan antilongtext]} { set longtextstatus "+antilongtext" } else { set longtextstatus "-antilongtext" }
if {[channel get $chan badquitpart]} { set badquitpartstatus "+badquitpart" } else { set badquitpartstatus "-badquitpart" }
if {[channel get $chan antijoinpart]} { set joinpartstatus "+antijoinpart" } else { set joinpartstatus "-antijoinpart" }
if {[channel get $chan antispam]} { set antispamstatus "+antispam" } else { set antispamstatus "-antispam" }
if {[channel get $chan antirepeat]} { set repeatstatus "+antirepeat" } else { set repeatstatus "-antirepeat" }
if {[channel get $chan anticolor]} { set colorstatus "+anticolor" } else { set colorstatus "-anticolor" }
if {[channel get $chan antibold]} { set boldstatus "+antibold" } else { set boldstatus "-antibold" }
if {[channel get $chan antiunderline]} { set underlinestatus "+antiunderline" } else { set underlinestatus "-antiunderline" }
if {[channel get $chan anticaps]} { set capsstatus "+anticaps" } else { set capsstatus "-anticaps" }
if {[channel get $chan badnick]} { set nickstatus "+badnick" } else { set nickstatus "-badnick" }
if {[channel get $chan badfullname]} { set fullnamestatus "+badfullname" } else { set fullnamestatus "-badfullname" }
if {[channel get $chan autoop]} { set opstatus "+autoop" } else { set opstatus "-autoop" }
if {[channel get $chan autovoice]} { set voicestatus "+autovoice" } else { set voicestatus "-autovoice" }
if {[channel get $chan antijoinflood]} { set joinfloodstatus "+antijoinflood" } else { set joinfloodstatus "-antijoinflood" }
if {[channel get $chan antichanflood]} { set chanfloodstatus "+antichanflood" } else { set chanfloodstatus "-antichanflood" }
if {[channel get $chan badident]} { set badidentstatus "+badident" } else { set badidentstatus "-badident" }
set xbantime [channel get $chan xbantime]
if {$xbantime == "0"} { set xbantime 1 }
set xbanlevel [channel get $chan xbanlevel]
if {$xbanlevel == "0"} { set xbanlevel 100 }
blacktools:tell $nick $host $hand $chan $chan1 hblacktools.1 "1$pubstatus | 4$noticestatus | 1$ctcpstatus | 4$badwordstatus | 1$longtextstatus | 4$badquitpartstatus | 1$joinpartstatus | 4$antispamstatus | 1$repeatstatus | 4$colorstatus | 1$boldstatus | 4$underlinestatus | 1$capsstatus | 4$nickstatus | 1$fullnamestatus | 4$opstatus | 1$voicestatus | 4$joinfloodstatus | 1$chanfloodstatus | 4$badidentstatus | 1xbantime $xbantime | 4xbanlevel $xbanlevel."
blacktools:tell $nick $host $hand $chan $chan1 hblacktools.2 none
}
}

standard {
if {[matchattr $hand nm|M $chan]} {
if {[channel get $chan protectops]} { set protectops "+protectops" } else { set protectops "-protectops" }
if {[channel get $chan bitch]} { set bitch "+bitch" } else { set bitch "-bitch" }
if {[channel get $chan enforcebans]} { set enforcebans "+enforcebans" } else { set enforcebans "-enforcebans" }
if {[channel get $chan protecthalfops]} { set protecthalfops "+protecthalfops" } else { set protecthalfops "-protecthalfops" }
if {[channel get $chan protectfriends]} { set protectfriends "+protectfriends" } else { set protectfriends "-protectfriends" }
if {[channel get $chan dynamicbans]} { set dynamicbans "+dynamicbans" } else { set dynamicbans "-dynamicbans" }
if {[channel get $chan dontkickops]} { set dontkickops "+dontkickops" } else { set dontkickops "-dontkickops" }
if {[channel get $chan nodesynch]} { set nodesynch "+nodesynch" } else { set nodesynch "-nodesynch" }
if {[channel get $chan dynamicbans]} { set noticestatus "+dynamicbans" } else { set dynamicbans "-dynamicbans" }
set bantime [channel get $chan ban-time]
set floodchan [channel get $chan flood-chan]
set floodjoin [channel get $chan flood-join]
set floodkick [channel get $chan flood-kick]
set floodctcp [channel get $chan flood-ctcp]
set floodnick [channel get $chan flood-nick]
set flooddeop [channel get $chan flood-deop]
set chanmode [channel get $chan chanmode]
blacktools:tell $nick $host $hand $chan $chan1 hstandard.1 none
blacktools:tell $nick $host $hand $chan $chan1 hstandard.3 "1$protectops 4$bitch 1$enforcebans 4$protecthalfops 1$protectfriends 4$dynamicbans 1$dontkickops 4$nodesynch"
blacktools:tell $nick $host $hand $chan $chan1 hstandard.3 "12Flood-Chan :1 $floodchan  12Flood-join :4 $floodjoin  12Flood-Kick :1 $floodkick  12Flood-Ctcp :4 $floodctcp  12Flood-Nick :1 $floodnick  12Flood-Deop :4 $flooddeop "
blacktools:tell $nick $host $hand $chan $chan1 hstandard.3  "12ChanMode :1$chanmode 12Ban-Time :1 $bantime "
blacktools:tell $nick $host $hand $chan $chan1 hstandard.2 none
}
}




chaninfo {
if {[matchattr $hand nm|M $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 hchaninfo.1 none
blacktools:tell $nick $host $hand $chan $chan1 hchaninfo.2 none
blacktools:tell $nick $host $hand $chan $chan1 hchaninfo.3 none
blacktools:tell $nick $host $hand $chan $chan1 hchaninfo.4 none
blacktools:tell $nick $host $hand $chan $chan1 hchaninfo.5 none
}
}

module {
if {[matchattr $hand nm|- $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 hmodule.1 none
} else { blacktools:tell $nick $host $hand $chan $chan1 hmodule.2 none }
blacktools:tell $nick $host $hand $chan $chan1 hmodule.3 none
}


antitake {
if {[matchattr $hand nm|M $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 hantitake.1 none
blacktools:tell $nick $host $hand $chan $chan1 hantitake.2 none
blacktools:tell $nick $host $hand $chan $chan1 hantitake.3 none
blacktools:tell $nick $host $hand $chan $chan1 hantitake.4 none
}
}

private {
if {[matchattr $hand nm|M $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 hprivate.1 none
blacktools:tell $nick $host $hand $chan $chan1 hprivate.2 none
}
}

language {
if {[matchattr $hand nm|M $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 hlanguage.1 none
blacktools:tell $nick $host $hand $chan $chan1 hlanguage.2 none
blacktools:tell $nick $host $hand $chan $chan1 hlanguage.3 none
}
}


xban {
set xbantime [channel get $chan xbantime]
if {$xbantime == "0"} { set xbantime 1 }
set xlevel [channel get $chan xbanlevel]
if {$xlevel == "0"} { set xlevel 100 }
if {[matchattr $hand nm|- $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 hxban.1 none
blacktools:tell $nick $host $hand $chan $chan1 hxban.2 none
blacktools:tell $nick $host $hand $chan $chan1 hxban.3 "$xbantime $xlevel"
}
}

topicrefresh {
if {[matchattr $hand nm|M $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 htopicrefresh.1 none
blacktools:tell $nick $host $hand $chan $chan1 htopicrefresh.2 none
}
}

count {
if {[matchattr $hand nm|M $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 hcount.1 none
blacktools:tell $nick $host $hand $chan $chan1 hcount.2 none
}
}

xtools {
if {[matchattr $hand nm|M $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 hxtools.1 none
blacktools:tell $nick $host $hand $chan $chan1 hxtools.2 none
}
}

badchan {
if {[matchattr $hand nm|M $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 hbadchan.1 none
blacktools:tell $nick $host $hand $chan $chan1 hbadchan.2 none
}
}

badword {
if {[matchattr $hand nm|M $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 hbadword.1 none
blacktools:tell $nick $host $hand $chan $chan1 hbadword.2 none
}
}

anunt {
if {[matchattr $hand nm|M $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 hanunt.1 $black(anunttime)
blacktools:tell $nick $host $hand $chan $chan1 hanunt.2 none
}
}

autobroadcast {
if {[matchattr $hand nm|M $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 hautobroadcast.1 $black(bttime)
blacktools:tell $nick $host $hand $chan $chan1 hautobroadcast.2 none
blacktools:tell $nick $host $hand $chan $chan1 hautobroadcast.3 none
}
}

antibotidle {
if {[matchattr $hand nm|M $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 hantibotidle.1 none
blacktools:tell $nick $host $hand $chan $chan1 hantibotidle.2 $black(noidlemax)
}
}

limit {
if {[matchattr $hand nm|M $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 hlimit.1 none
blacktools:tell $nick $host $hand $chan $chan1 hlimit.2 none
}
}

topic {
if {[matchattr $hand nm|M $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 htopic.1 none
blacktools:tell $nick $host $hand $chan $chan1 htopic.2 none
}
}

seen {
if {[matchattr $hand nm|M $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 hseen.1 none
blacktools:tell $nick $host $hand $chan $chan1 hseen.2 none
}
}

clonescan {
if {[matchattr $hand nm|M $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 hclonescan.1 none
blacktools:tell $nick $host $hand $chan $chan1 hclonescan.2 none
blacktools:tell $nick $host $hand $chan $chan1 hclonescan.3 none
}
}

greet {
if {[matchattr $hand nm|M $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 hgreet.1 none
blacktools:tell $nick $host $hand $chan $chan1 hgreet.2 none
}
}
leave {
if {[matchattr $hand nm|M $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 hleave.1 none
blacktools:tell $nick $host $hand $chan $chan1 hleave.2 none
}
}

idle {
if {[matchattr $hand nm|M $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 hidle.1 none
blacktools:tell $nick $host $hand $chan $chan1 hidle.2 none
}
}

chanreport {
if {[matchattr $hand nm|- $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 hchanreport.1 none
blacktools:tell $nick $host $hand $chan $chan1 hchanreport.2 none
blacktools:tell $nick $host $hand $chan $chan1 hchanreport.3 none
}
}

topwords {
if {[matchattr $hand nm|M $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 htopwords.1 none
blacktools:tell $nick $host $hand $chan $chan1 htopwords.2 none
blacktools:tell $nick $host $hand $chan $chan1 htopwords.3 none
}
}

settings {
if {[matchattr $hand nm|M $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 hsettings.1 none
blacktools:tell $nick $host $hand $chan $chan1 hsettings.2 none
blacktools:tell $nick $host $hand $chan $chan1 hsettings.3 none
blacktools:tell $nick $host $hand $chan $chan1 hsettings.4 none
blacktools:tell $nick $host $hand $chan $chan1 hsettings.5 none
blacktools:tell $nick $host $hand $chan $chan1 hsettings.6 none
}
}

reason {
if {[matchattr $hand nm|M $chan]} {
if {[channel get $chan showhandle]} { set showhandle "+showhandle" } else { set showhandle "-showhandle" }
if {[channel get $chan showcount]} { set showcount "+showcount" } else { set showcount "-showcount" }
if {[channel get $chan showtime]} { set showtime "+showtime" } else { set showtime "-showtime" }
blacktools:tell $nick $host $hand $chan $chan1 hreason.1 none
blacktools:tell $nick $host $hand $chan $chan1 hreason.2 "$showhandle $showcount $showtime"
blacktools:tell $nick $host $hand $chan $chan1 hreason.3 none
blacktools:tell $nick $host $hand $chan $chan1 hreason.4 none
blacktools:tell $nick $host $hand $chan $chan1 hreason.5 none
blacktools:tell $nick $host $hand $chan $chan1 hreason.6 none
}
}


extra {
if {[matchattr $hand nm|M $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 hextra.1 none
blacktools:tell $nick $host $hand $chan $chan1 hextra.2 none
blacktools:tell $nick $host $hand $chan $chan1 hextra.3 none
blacktools:tell $nick $host $hand $chan $chan1 hextra.4 none
blacktools:tell $nick $host $hand $chan $chan1 hextra.5 none
}
}

antipub {
if {[matchattr $hand nm|M $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 hantipub.1 none
blacktools:tell $nick $host $hand $chan $chan1 hantipub.2 none
blacktools:tell $nick $host $hand $chan $chan1 hantipub.3 none
}
}

privat {
if {[matchattr $hand nm|M $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 hprivat.1 none
blacktools:tell $nick $host $hand $chan $chan1 hprivat.2 none
blacktools:tell $nick $host $hand $chan $chan1 hprivat.3 none
}
}

antidle {
if {[matchattr $hand nm|M $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 hantidle.1 none
blacktools:tell $nick $host $hand $chan $chan1 hantidle.2 none
blacktools:tell $nick $host $hand $chan $chan1 hantidle.3 none
}
}


antinotice {
if {[matchattr $hand nm|M $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 hantinotice.1 none
blacktools:tell $nick $host $hand $chan $chan1 hantinotice.2 none
blacktools:tell $nick $host $hand $chan $chan1 hantinotice.3 none
}
}

antictcp {
if {[matchattr $hand nm|M $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 hantictcp.1 none
blacktools:tell $nick $host $hand $chan $chan1 hantictcp.2 none
blacktools:tell $nick $host $hand $chan $chan1 hantictcp.3 none
}
}

antibadword {
if {[matchattr $hand nm|M $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 hantibadword.1 none
blacktools:tell $nick $host $hand $chan $chan1 hantibadword.2 none
blacktools:tell $nick $host $hand $chan $chan1 hantibadword.3 none
}
}

antilongtext {
if {[matchattr $hand nm|M $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 hantilongtext.1 none
blacktools:tell $nick $host $hand $chan $chan1 hantilongtext.2 none
blacktools:tell $nick $host $hand $chan $chan1 hantilongtext.3 none
}
}
 
antibadquitpart {
if {[matchattr $hand nm|M $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 hantibadquitpart.1 none
blacktools:tell $nick $host $hand $chan $chan1 hantibadquitpart.2 none
blacktools:tell $nick $host $hand $chan $chan1 hantibadquitpart.3 none
}
}

antijoinpart {
if {[matchattr $hand nm|M $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 hantijoinpart.1 none
blacktools:tell $nick $host $hand $chan $chan1 hantijoinpart.2 none
blacktools:tell $nick $host $hand $chan $chan1 hantijoinpart.3 none
}
}

antispam {
if {[matchattr $hand nm|M $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 hantispam.1 none
blacktools:tell $nick $host $hand $chan $chan1 hantispam.2 none
blacktools:tell $nick $host $hand $chan $chan1 hantispam.3 none
}
}

antirepeat {
if {[matchattr $hand nm|M $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 hantirepeat.1 none
blacktools:tell $nick $host $hand $chan $chan1 hantirepeat.2 none
blacktools:tell $nick $host $hand $chan $chan1 hantirepeat.3 none
}
}

anticolor {
if {[matchattr $hand nm|M $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 hanticolor.1 none
blacktools:tell $nick $host $hand $chan $chan1 hanticolor.2 none
blacktools:tell $nick $host $hand $chan $chan1 hanticolor.3 none
}
}

antibold {
if {[matchattr $hand nm|M $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 hantibold.1 none
blacktools:tell $nick $host $hand $chan $chan1 hantibold.2 none
blacktools:tell $nick $host $hand $chan $chan1 hantibold.3 none
}
}

antiunderline {
if {[matchattr $hand nm|M $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 hantiunderline.1 none
blacktools:tell $nick $host $hand $chan $chan1 hantiunderline.2 none
blacktools:tell $nick $host $hand $chan $chan1 hantiunderline.3 none
}
}

anticaps {
if {[matchattr $hand nm|M $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 hanticaps.1 none
blacktools:tell $nick $host $hand $chan $chan1 hanticaps.2 none
blacktools:tell $nick $host $hand $chan $chan1 hanticaps.3 none
}
}

badfullname {
if {[matchattr $hand nm|M $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 hbadfullname.1 none
blacktools:tell $nick $host $hand $chan $chan1 hbadfullname.2 none
blacktools:tell $nick $host $hand $chan $chan1 hbadfullname.3 none
}
}

badnick {
if {[matchattr $hand nm|M $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 hbadnick.1 none
blacktools:tell $nick $host $hand $chan $chan1 hbadnick.2 none
blacktools:tell $nick $host $hand $chan $chan1 hbadnick.3 none
}
}

badident {
if {[matchattr $hand nm|M $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 hbadident.1 none
blacktools:tell $nick $host $hand $chan $chan1 hbadident.2 none
blacktools:tell $nick $host $hand $chan $chan1 hbadident.3 none
}
}

antichanflood {
if {[matchattr $hand nm|M $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 hantichanflood.1 none
blacktools:tell $nick $host $hand $chan $chan1 hantichanflood.2 none
blacktools:tell $nick $host $hand $chan $chan1 hantichanflood.3 none
}
}

antijoinflood {
if {[matchattr $hand nm|M $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 hantijoinflood.1 none
blacktools:tell $nick $host $hand $chan $chan1 hantijoinflood.2 none
blacktools:tell $nick $host $hand $chan $chan1 hantijoinflood.3 none
}
}

dr {
if {[matchattr $hand nm|M $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 hdr.1 none
blacktools:tell $nick $host $hand $chan $chan1 hdr.2 none
blacktools:tell $nick $host $hand $chan $chan1 hdr.3 none
}
}

bot {
if {[matchattr $hand nm|M $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 hbot.1 none
blacktools:tell $nick $host $hand $chan $chan1 hbot.2 none
blacktools:tell $nick $host $hand $chan $chan1 hbot.3 none
}
}


n {
if {[matchattr $hand nm|M $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 hn.1 none
blacktools:tell $nick $host $hand $chan $chan1 hn.2 none
blacktools:tell $nick $host $hand $chan $chan1 hn.3 none
}
}

id {
if {[matchattr $hand nm|M $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 hid.1 none
blacktools:tell $nick $host $hand $chan $chan1 hid.2 none
blacktools:tell $nick $host $hand $chan $chan1 hid.3 none
}
}

w {
if {[matchattr $hand nm|M $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 hw.1 none
blacktools:tell $nick $host $hand $chan $chan1 hw.2 none
blacktools:tell $nick $host $hand $chan $chan1 hw.3 none
}
}

spam {
if {[matchattr $hand nm|M $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 hspam.1 none
blacktools:tell $nick $host $hand $chan $chan1 hspam.2 none
blacktools:tell $nick $host $hand $chan $chan1 hspam.3 none
}
}


bw {
if {[matchattr $hand nm|M $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 hbw.1 none
blacktools:tell $nick $host $hand $chan $chan1 hbw.2 none
blacktools:tell $nick $host $hand $chan $chan1 hbw.3 none
}
}

badchannel {
if {[matchattr $hand nm|M $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 hbadchannel.1 none
blacktools:tell $nick $host $hand $chan $chan1 hbadchannel.2 none
blacktools:tell $nick $host $hand $chan $chan1 hbadchannel.3 none
}
}

counter {
if {[matchattr $hand nm|M $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 hcounter.1 none
blacktools:tell $nick $host $hand $chan $chan1 hcounter.2 none
blacktools:tell $nick $host $hand $chan $chan1 hcounter.3 none
}
}

}
}




proc comand:pubme {nick host hand chan arg} {
global botnick wordsdir wdir sdir black seendir count server uptime {server-online}
set arg [split $arg]
set bnick [lindex [split $arg] 0]
set what [lindex [split $arg] 1]
if {([lsearch -exact [string tolower $bnick] [string tolower $botnick]] == 0)} {
switch -exact -- [string tolower $what] {

clear {
if {[matchattr $hand nm|M $chan]} {
set why [lindex [split $arg] 2]
set type 1
set chan1 "$chan"
if {[regexp {^[\\+!#&]} $why] && [matchattr $hand nm|- $chan]} {
set chan "$why"
set why [lindex [split $arg] 3]
}
clear:process $nick $host $hand $chan $chan1 $why $type
}
}


private {
if {[matchattr $hand nm|M $chan]} {
set type 1
set chan1 "$chan"
set why [lindex [split $arg] 2]
set user [lindex [split $arg] 3]
set host [lindex [split $arg] 4]
if {[regexp {^[\\+!#&]} $why] && [matchattr $hand nm|- $chan]} {
set chan "$why"
set why [lindex [split $arg] 3]
set user [lindex [split $arg] 4]
set host [lindex [split $arg] 5]
}
private:process $nick $host $hand $chan $chan1 $why $user $host $type
}
}


login {
if {[matchattr $hand nm|MSOAV $chan]} {
putquick "$black(login)"
putquick "MODE $botnick :$black(xmod)"
blacktools:tell:prv $nick $host $hand login.1 $black(chanserv)
}
}

h {
if {[matchattr $hand nm|MSOAV $chan]} {
set chan1 "$chan"
set command [lindex [split $arg] 2]
h:process $nick $host $hand $chan $chan1 $command
}
}

secure {
if {[matchattr $hand nm|M $chan]} {
set what [lindex [split $arg] 2]
set type 1
set chan1 "$chan"
if {[regexp {^[#&]} $what] && [matchattr $hand nm|- $chan]} {
set chan "$what"
set what [lindex [split $arg] 3]
}
secure:process $nick $host $hand $chan $chan1 $what $type
}
}

ignore {
if {[matchattr $hand nm|- $chan]} {
set chan1 "$chan"
set what [lindex [split $arg] 2]
set mask [lindex [split $arg] 3]
set time [lindex [split $arg] 4]
set reason [join [lrange [split $arg] 5 end]]
if {$what == ""} { blacktools:tell $nick $host $hand $chan $chan1 ignore.2 none
return 0
}
ignore:process $nick $host $hand $chan $chan1 $what $mask $time $reason
}
}



idle {
if {[matchattr $hand nm|M $chan]} {
set char(p) [lindex $black(cmdchar) 0]
set flag "-|f"
set type1 1
set chan1 "$chan"
set why [lindex [split $arg] 2]
set type [lindex [split $arg] 3]
set user [lindex [split $arg] 3]
set host [lindex [split $arg] 4]
if {[regexp {^[\\+!#&]} $why] && [matchattr $hand nm|- $chan]} {
set chan "$why"
set why [lindex [split $arg] 3]
set type [lindex [split $arg] 4]
set user [lindex [split $arg] 4]
set host [lindex [split $arg] 5]
}
antidle:process $why $type $type1 $user $host $nick $hand $chan $chan1
}
}

version {
if {[matchattr $hand nm|MASOV $chan]} {
set chan1 "$chan"
version:process $nick $host $hand $chan $chan1
}
}

cc {
if {[matchattr $hand nm|MASO $chan]} {
set ::chan $chan
set chan1 "$chan"
set c [lindex [split $arg] 2]
if {$c == ""} { blacktools:tell $nick $host $hand $chan $chan1 cc.2 none
return 0
}
if {![regexp {^[\\+!#&]} $c]} {
set c #$c
 } 

putquick "MODE $c"
bind raw - 329 createdpublic
bind raw - 403 nocreatedpublic
}
}

activ {
if {[matchattr $hand nm|MASOV $chan]} {
set type 1
set chan1 "$chan"
set user [lindex [split $arg] 2]
if {[regexp {^[#&]} $user] && [matchattr $hand nm|- $chan]} {
set chan "$user"
set user [lindex [split $arg] 3]
}
activ:process $nick $host $hand $chan $chan1 $user $type
}
}

delmyhost {
if {[matchattr $hand nm|- $chan]} {
set chan1 "$chan"
set why [lindex [split $arg] 2]
if {$why == ""} { blacktools:tell $nick $host $hand $chan $chan1 delmyhost.1 none
return 0
}
delmyhost:process $nick $host $hand $chan $chan1 $why
}
}

addmyhost {
if {[matchattr $hand nm|- $chan]} {
set why [lindex [split $arg] 2]
set chan1 "$chan"
if {$why == ""} { blacktools:tell $nick $host $hand $chan $chan1 addmyhost.2 none
return 0
}
addmyhost:process $nick $host $hand $chan $chan1 $why
}
}


leave {
if {[matchattr $hand nm|M $chan]} {
set dir "logs/leave($chan).txt"
set type 1
set chan1 "$chan"
set who [lindex [split $arg] 2]
set leave [join [lrange [split $arg] 3 end]]
set number [lindex [split $arg] 3]
if {[regexp {^[\\+!#&]} $who] && [matchattr $hand nm|- $chan]} {
set chan "$who"
set who [lindex [split $arg] 3]
set leave [join [lrange [split $arg] 4 end]]
set number [lindex [split $arg] 4]
}
leave:process $who $leave $number $type $nick $host $hand $chan $chan1
}
}


greet {
if {[matchattr $hand nm|M $chan]} {
set who [lindex [split $arg] 2]
set type 1
set chan1 "$chan"
set greet [join [lrange [split $arg] 3 end]]
set number [lindex [split $arg] 3]
if {[regexp {^[\\+!#&]} $who] && [matchattr $hand nm|- $chan]} {
set chan "$who"
set who [lindex [split $arg] 3]
set greet [join [lrange [split $arg] 4 end]]
set number [lindex [split $arg] 4]
}
greet:process $who $greet $number $type $nick $host $hand $chan $chan1
}
}

chat {
if {[matchattr $hand nm|- $chan]} {
*ctcp:CHAT $nick $host $hand $botnick CHAT $arg
blacktools:tell $nick $host $hand $chan $chan1 chat.1 none
} 
}

seen {
if {[matchattr $hand -|- $chan]} {
if {![channel get $chan seen]} {
return 0
}
set type 1
set wseen [lindex $arg 2]
set chan1 "$chan"
if {[regexp {^[\\+!#&]} $wseen] && [matchattr $hand nm|- $chan]} {
set chan1 "$chan"
set chan "$wseen"
set wseen [lindex $arg 3]
}
seen:process $nick $host $hand $chan $chan1 $wseen $type
}
}

topic {
if {[matchattr $hand nm|M $chan]} {
set nop [lindex [split $arg] 2]
set type 1
set chan1 "$chan"
set tp [join [lrange [split $arg] 3 end]]
set number [lindex [split $arg] 3]
if {[regexp {^[\\+!#&]} $nop] && [matchattr $hand nm|- $chan]} {
set chan "$nop"
set nop [lindex [split $arg] 3]
set tp [join [lrange [split $arg] 4 end]]
set number [lindex [split $arg] 4]
}
topic:process $nick $host $hand $chan $chan1 $nop $tp $number $type
}
}

limit {
if {[matchattr $hand nm|M $chan]} {
set why [lindex [split $arg] 2]
set lm [lindex [split $arg] 3]
set type 1
set chan1 "$chan"
if {[regexp {^[\\+!#&]} $why] && [matchattr $hand nm|- $chan]} {
set chan "$why"
set why [lindex [split $arg] 3]
set lm [lindex [split $arg] 4]
}
limit:process $nick $host $hand $chan $chan1 $why $lm $type
}
}

anunt {
if {[matchattr $hand nm|M $chan]} {
set type 1
set chan1 "$chan"
set who [lindex [split $arg] 2]
set message [join [lrange [split $arg] 3 end]]
set number [lindex [split $arg] 3]
if {[regexp {^[\\+!#&]} $who] && [matchattr $hand nm|- $chan]} {
set chan "$who"
set who [lindex [split $arg] 3]
set message [join [lrange [split $arg] 4 end]]
set number [lindex [split $arg] 4]
}
anunt:process $nick $host $hand $chan $chan1 $who $message $number $type
}
}

bt {
if {[matchattr $hand nm|- $chan]} {
set who [lindex [split $arg] 2]
set chan1 "$chan"
set message [join [lrange [split $arg] 3 end]]
set number [lindex [split $arg] 3]
if {$who == ""} { blacktools:tell $nick $host $hand $chan $chan1 autobroadcast.2 none
return 0
}
broadcast:process $nick $host $hand $chan $chan1 $who $message $number
}
}

badchan {
if {[matchattr $hand nm|M $chan]} {
set why [lindex [split $arg] 2]
set type 1
set chan1 "$chan"
set bdchan [join [lindex [split $arg] 3]]
if {[regexp {^[\\+!#&]} $why] && [matchattr $hand nm|- $chan]} {
set chan "$why"
set why [lindex [split $arg] 3]
set bdchan [join [lindex [split $arg] 4]]
}
badchan:process $nick $host $hand $chan $chan1 $why $bdchan $type
}
}

count {
if {[matchattr $hand nm|M $chan]} {
set why [lindex [split $arg] 2]
set type 1
set chan1 "$chan"
if {[regexp {^[\\+!#&]} $why] && [matchattr $hand nm|- $chan]} {
set chan "$why"
set why [lindex [split $arg] 3]
}
count:process $nick $host $hand $chan $chan1 $why $type
}
}

delvoice {
if {[matchattr $hand nm|M $chan]} {
set user [lindex [split $arg] 2]
set type 1
set chan1 "$chan"
if {[regexp {^[\\+!#&]} $user] && [matchattr $hand nm|- $chan]} {
set chan "$user"
set user [lindex [split $arg] 3]
}
delvoice:process $nick $host $hand $chan $chan1 $user $type
}

}

delop {
if {[matchattr $hand nm|M $chan]} {
set user [lindex [split $arg] 2]
set type 1
set chan1 "$chan"
if {[regexp {^[\\+!#&]} $user] && [matchattr $hand nm|- $chan]} {
set chan "$user"
set user [lindex [split $arg] 3]
}
delop:process $nick $host $hand $chan $chan1 $user $type
}

}

addvoice {
if {[matchattr $hand nm|M $chan]} {
set user [lindex [split $arg] 2]
set type 1
set chan1 "$chan"
if {[regexp {^[\\+!#&]} $user] && [matchattr $hand nm|- $chan]} {
set chan "$user"
set user [lindex [split $arg] 3]
}
addvoice:process $nick $host $hand $chan $chan1 $user $type
}
}

addop {
if {[matchattr $hand nm|M $chan]} {
set user [lindex [split $arg] 2]
set type 1
set chan1 "$chan"
if {[regexp {^[\\+!#&]} $user] && [matchattr $hand nm|- $chan]} {
set chan "$user"
set user [lindex [split $arg] 3]
}
addop:process $nick $host $hand $chan $chan1 $user $type
}
}


addbot {
if {[matchattr $hand nm|- $chan]} {
set why [lindex [split $arg] 2]
set host [lindex [split $arg] 3]
set chan1 "$chan"
if {$why == ""} { blacktools:tell $nick $host $hand $chan $chan1 addbot.2 none
return 0
}
addbot:process $nick $host $hand $chan $chan1 $why $host
}
}

whois {
if {[matchattr $hand nm|MAOS $chan]} {
set chan1 "$chan"
set who [lindex [split $arg] 2]
if {$who == ""} { blacktools:tell $nick $host $hand $chan $chan1 whois.2 none
return 0
}
whois:process $nick $host $hand $chan $chan1 $who
}
}

vers {
if {[matchattr $hand nm|MAOS $chan]} {
set chan1 "$chan"
set why [lindex [split $arg] 2]
if {$why == ""} { blacktools:tell $nick $host $hand $chan $chan1 vers.2 none
return 0
}
vers:process $nick $host $hand $chan $chan1 $why
}
}

time {
if {[matchattr $hand nm|MAOSV $chan]} {
set chan1 "$chan"
set time [ctime [unixtime]]
blacktools:tell $nick $host $hand $chan $chan1 time.1 $time
}
}

ping {
if {[matchattr $hand nm|MAOSV $chan]} {
putquick "PRIVMSG $nick :\001PING [expr {abs([clock clicks -milliseconds])}]\001"
return 0
}
}

us {
if {[matchattr $hand nm|MA $chan]} {
set type 1
set chan1 "$chan"
set users [lindex [split $arg] 2]
if {[regexp {^[#&]} $users] && [matchattr $hand nm|- $chan]} {
set chan "$users"
set users [lindex [split $arg] 3]
}
us:process $nick $host $hand $chan $chan1 $users $type
}
} 

s {
if {[matchattr $hand nm|MA $chan]} {
set type 1
set chan1 "$chan"
set users [lindex [split $arg] 2]
if {[regexp {^[#&]} $users] && [matchattr $hand nm|- $chan]} {
set chan "$users"
set users [lindex [split $arg] 3]
}
s:process $nick $host $hand $chan $chan1 $users $type
}
}

info {
if {[matchattr $hand nm|MASOV $chan]} {
set user [lindex [split $arg] 2]
set type 1
set chan1 "$chan"
if {[regexp {^[\\+!#&]} $user] && [matchattr $hand nm|- $chan]} {
set chan "$user"
set user [lindex [split $arg] 3]
}
info:process $nick $host $hand $chan $chan1 $user $type
}
}

channels {
if {[matchattr $hand nm|MASOV $chan]} {
set chan1 "$chan"
channels:process $nick $host $hand $chan $chan1
}
}


userlist {
if {[matchattr $hand nm|MASOV $chan]} {
set level [lindex [split $arg] 2]
set type 1
set chan1 "$chan"
if {[regexp {^[#&]} $level] && [matchattr $hand nm|- $chan]} {
set chan "$level"
set level [lindex [split $arg] 3]
} 
userlist:execute $hand $host $level $chan $chan1 $nick $type
}
}

chuser {
if {[matchattr $hand nm|M $chan]} {
set user [lindex [split $arg] 2]
set type 1
set chan1 "$chan"
set chandle [lindex [split $arg] 3]
chuser:process $nick $host $hand $chan $chan1 $user $chandle $type
}
}


delhost {
if {[matchattr $hand nm|M $chan]} {
set user [lindex [split $arg] 2]
set type 1
set chan1 "$chan"
set hosts [lrange [split $arg] 3 end]
delhost:process $nick $host $hand $chan $chan1 $user $hosts $type
}
}

botidle {
if {[matchattr $hand nm|M $chan]} {
set chan1 "$chan"
set what [lindex [split $arg] 2]
if {$what == ""} { blacktools:tell $nick $host $hand $chan $chan1 antibotidle.2 none
return 0
}
botidle:process $nick $host $hand $chan $chan1 $what
}
}

addhost {
if {[matchattr $hand nm|M $chan]} {
set type 1
set chan1 "$chan"
set user [lindex [split $arg] 2]
set hosts [lrange [split $arg] 3 end]
addhost:process $nick $host $hand $chan $chan1 $user $hosts $type
}
}

del {
if {[matchattr $hand nm|- $chan]} {
set args [lrange [split $arg] 2 end]
set type 1
set chan1 "$chan"
del:process $nick $host $hand $chan $chan1 $args $type
}
}


delacc {
if {[matchattr $hand nm|MA $chan]} {
set args [lrange [split $arg] 2 end]
set type 1
set chan1 "$chan"
set c [lindex [split $arg] 2]
if {[regexp {^[#&]} $c] && [matchattr $hand nm|- $chan]} {
set chan "$c"
set args [lrange [split $arg] 3 end]
}
delacc:process $nick $host $hand $chan $chan1 $args $type
}
}

adduser {
if {[matchattr $hand nm|MA $chan]} {
set chan1 "$chan"
set level [lindex [split $arg] 2]
set args [lrange [split $arg] 3 end]
set c [lindex [split $arg] 3]
set type 1
if {[regexp {^[#&]} $c] && [matchattr $hand nm|- $chan]} {
set chan "$c"
set args [lrange [split $arg] 4 end]
}
adduser:process $nick $host $hand $chan $chan1 $args $level $type
}
}

add {
if {[matchattr $hand nm|MA $chan]} {
set level [lindex [split $arg] 2]
set time [ctime [unixtime]]
set type 1
set chan1 "$chan"
set args [lrange [split $arg] 3 end]
set c [lindex [split $arg] 3]
if {[regexp {^[#&]} $c] && [matchattr $hand nm|- $chan]} {
set chan "$c"
set args [lrange [split $arg] 4 end]
}
if {[matchattr $hand -|q $chan]} { 
blacktools:tell $nick $host $hand $chan $chan1 gl.suspend none
return 0
}
add:process $args $time $level $hand $host $chan $chan1 $nick $type
}
}

unsuspend {
if {[matchattr $hand nm|- $chan]} {
set chans [lindex [split $arg] 2]
set chan1 "$chan"
if {$chans == ""} {blacktools:tell $nick $host $hand $chan $chan1 unsuspend.5 none
return 0 
}

if {![regexp {^[\\+!#&]} $chans]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.novalidchan none
return 0
 }
 
if {![validchan $chans]} { blacktools:tell $nick $host $hand $chan $chan1 unsuspend.2 $chans
return 0
}

if {![channel get $chans inactive]} {
blacktools:tell $nick $host $hand $chan $chan1 unsuspend.3 $chans
return 0
}
channel set $chans -inactive
blacktools:tell $nick $host $hand $chan $chan1 unsuspend.4 $chans
}
}



suspend {
if {[matchattr $hand nm|- $chan]} {
set chans [lindex [split $arg] 2]
set chan1 "$chan"
if {$chans == ""} {blacktools:tell $nick $host $hand $chan $chan1 suspend.5 none
return 0 
}

if {![regexp {^[\\+!#&]} $chans]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.novalidchan none
return 0
 }

if {![validchan $chans]} { blacktools:tell $nick $host $hand $chan $chan1 suspend.2 $chans
return 0
}

if { [channel get $chans inactive]} {
blacktools:tell $nick $host $hand $chan $chan1 suspend.3 $chans 
return 0
}
channel set $chans +inactive
blacktools:tell $nick $host $hand $chan $chan1 suspend.4 $chans 
}
}


delchan {
if {[matchattr $hand nm|- $chan]} {
set chans [lindex [split $arg] 2]
set chan1 "$chan"
if {$chans == ""} {blacktools:tell $nick $host $hand $chan $chan1 delchan.4 none
return 0 
}
if {![regexp {^[\\+!#&]} $chans]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.novalidchan none 
return 0
 } 

if {![validchan $chans]} { blacktools:tell $nick $host $hand $chan $chan1 delchan.2 $chans
return 0
}
channel remove $chans
delchan:stats $chans $hand $host
blacktools:tell $nick $host $hand $chan $chan1 delchan.3 $chans
}
}

addchan {
if {[matchattr $hand nm|- $chan]} {
set chan1 "$chan"
set chans [lindex [split $arg] 2]
if {$chans == ""} {blacktools:tell $nick $host $hand $chan $chan1 addchan.4 none
return 0 
}

if {![regexp {^[\\+!#&]} $chans]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.novalidchan none
return 0
 } 

if {[validchan $chans]} {
blacktools:tell $nick $host $hand $chan $chan1 addchan.2 $chans
return 0
} else {
channel add $chans
addchan:stats $chans $hand $host
blacktools:tell $nick $host $hand $chan $chan1 addchan.3 $chans
}
}
}

die {
if {[matchattr $hand nm|- $chan]} {
set chan1 "$chan"
blacktools:tell $nick $host $hand $chan $chan1 die.1 none
utimer 3 [list die "byeeee"]
}
}

jump {
if {[matchattr $hand nm|- $chan]} {
set chan1 "$chan"
set serv [lindex [split $arg] 2]
blacktools:tell $nick $host $hand $chan $chan1 jump.1 none
utimer 3 [list jump $serv]
}
}


save {
if {[matchattr $hand nm|- $chan]} {
set chan1 "$chan"
blacktools:tell $nick $host $hand $chan $chan1 save.1 none
 save
}
}

restart {
if {[matchattr $hand nm|- $chan]} {
set chan1 "$chan"
blacktools:tell $nick $host $hand $chan $chan1 restart.1 none
 utimer 3 [list restart]
}
}

rehash {
if {[matchattr $hand nm|- $chan]} {
set chan1 "$chan"
blacktools:tell $nick $host $hand $chan $chan1 rehash.1 none
 rehash
}
}

nick {
if {[matchattr $hand nm|- $chan]} {
set who "$nick"
set newnick [lindex [split $arg] 2]
nick:process $who $newnick $host $hand $chan
}
}



msg {
if {[matchattr $hand nm|- $chan]} {
set nicks [lindex [split $arg] 2]
set chan1 "$chan"
set msg [join [lrange [split $arg] 3 end]]
if {[matchattr $hand -|q $chan]} { blacktools:tell $nick $host $hand $chan $chan1 gl.suspend none
return 0
}
if {$nicks == ""} {blacktools:tell $nick $host $hand $chan $chan1 msg.2 none
return 0
}
if {[isbotnick $nicks]} { 
return 0
 }
putquick "PRIVMSG $nicks :$msg"
}
}


silence {
if {[matchattr $hand nm|- $chan]} {
set value [lindex [split $arg] 2]
set chan1 "$chan"
if {$value == ""} { blacktools:tell $nick $host $hand $chan $chan1 silence.2 none
return 0
}
silence:process $nick $host $hand $chan $chan1 $value
}
}

set {
if {[matchattr $hand nm|M $chan]} {
set flags [lindex [split $arg] 2]
set type [join [lrange [split $arg] 3 end]]
set type1 1
set chan1 "$chan"
if {[regexp {^[#&]} $flags] && [matchattr $hand nm|- $chan]} {
set chan "$flags"
set flags [lindex [split $arg] 3]
set type [join [lrange [split $arg] 4 end]]
}
set:process $nick $host $hand $chan $chan1 $flags $type $type1
}
}

mode {
if {[matchattr $hand nm|OSMA $chan]} {
set modes [lindex [split $arg] 2]
set type 1
set chan1 "$chan"
foreach c [channels] {
set backchan [channel get $c backchan]
if {[string match -nocase $chan $backchan] && [channel get $c chanreport]} {
set chan "$c"
}
}
if {[regexp {^[#&]} $modes] && [matchattr $hand nm|- $chan]} {
set chan "$modes"
set modes [lindex [split $arg] 3]
}
mode:process $nick $host $hand $chan $chan1 $modes $type
}
}

away {
if {[matchattr $hand nm|- $chan]} {
set chan1 "$chan"
set aw [join [lrange [split $arg] 2 end]]
if {$aw == "" } {blacktools:tell $nick $host $hand $chan $chan1 away.2 none
return 0
}
away:process $nick $host $hand $chan $chan1 $aw
}
}

cycle {
if {[matchattr $hand nm|OSMA $chan]} {
set reason [join [lrange [split $arg] 2 end]]
set c [lindex [split $arg] 2]
set chan1 "$chan"
if {[regexp {^[\\+!#&]} $c] && [matchattr $hand nm|- $chan]} {
set chan "$c"
set reason [join [lrange [split $arg] 3 end]]
}
cycle:process $nick $host $hand $chan $chan1 $reason
}
}


purge {
if {[matchattr $hand nm|M $chan]} {
set reason [join [lrange [split $arg] 2 end]]
set chan1 "$chan"
if {$reason == ""} {
blacktools:tell $nick $host $hand $chan $chan1 purge.1 none
return 0
}
purge:process $nick $host $hand $chan $chan1 $reason
}
}


check {
if {[matchattr $hand nm|OSMA $chan]} {
set chan1 "$chan"
set checked [lindex [split $arg] 2]
if {$checked == ""} { blacktools:tell $nick $host $hand $chan $chan1 check.2 none
return 0
}
check:process $nick $host $hand $chan $chan1 $checked
}
}

broadcast {
if {[matchattr $hand nm|- $chan]} {
set chan1 "$chan"
set text [join [lrange [split $arg] 2 end]]
if {$text == ""} { 
blacktools:tell $nick $host $hand $chan $chan1 broadcast.2 none
return 0
}
broadcast:cmd:process $nick $host $hand $chan $chan1 $text
}
}

act {
if {[matchattr $hand nm|SMA $chan]} {
set text [join [lrange [split $arg] 2 end]]
set c [lindex [split $arg] 2]
set type 1
set chan1 "$chan"
if {[regexp {^[\\+!#&]} $c] && [matchattr $hand nm|- $chan]} {
set chan "$c"
set text [join [lrange [split $arg] 3 end]]
}
act:process $nick $host $hand $chan $chan1 $text $type
}
}


say {
if {[matchattr $hand nm|SMA $chan]} {
set text [join [lrange [split $arg] 2 end]]
set c [lindex [split $arg] 2]
set type 1
set chan1 "$chan"
if {[regexp {^[\\+!#&]} $c] && [matchattr $hand nm|- $chan]} {
set chan "$c"
set text [join [lrange [split $arg] 3 end]]
}
say:process $nick $host $hand $chan $chan1 $text $type
}
}

v {
if {[matchattr $hand nm|VOSMA $chan]} {
set voicex [lrange $arg 2 end]
set c [lindex [split $arg] 2]
set nick [split $nick]
set chan1 "$chan"
if {[regexp {^[\\+!#&]} $c] && [matchattr $hand nm|- $chan]} {
set chan "$c"
set voicex [lrange $arg 3 end]
}
v:process $nick $host $hand $chan $chan1 $voicex
}
}

o {
if {[matchattr $hand nm|OSMA $chan]} {
set opex [lrange $arg 2 end]
set c [lindex [split $arg] 2]
set nick [split $nick]
set chan1 "$chan"
if {[regexp {^[\\+!#&]} $c] && [matchattr $hand nm|- $chan]} {
set chan "$c"
set opex [lrange $arg 3 end]
}
o:process $nick $host $hand $chan $chan1 $opex
}
}

uptime {
if {[matchattr $hand nm|- $chan]} {
set chan1 "$chan"
set up [duration [expr [unixtime] - $uptime]]
set on [duration [expr [unixtime] - ${server-online}]]
blacktools:tell $nick $host $hand $chan $chan1 status.1 $up
blacktools:tell $nick $host $hand $chan $chan1 status.2 $server
blacktools:tell $nick $host $hand $chan $chan1 status.3 $on
}
}

status {
if {[matchattr $hand nm|- $chan]} {
set chan1 "$chan"
regsub -all " " [channels] ", " chans
catch {exec uptime} shelluptime
set up [duration [expr [unixtime] - $uptime]]
set on [duration [expr [unixtime] - ${server-online}]]
blacktools:tell $nick $host $hand $chan $chan1 status.1 $up
blacktools:tell $nick $host $hand $chan $chan1 status.2 $server
blacktools:tell $nick $host $hand $chan $chan1 status.3 $on
blacktools:tell $nick $host $hand $chan $chan1 status.4 $chans
blacktools:tell $nick $host $hand $chan $chan1 status.5 $shelluptime
}
}

t {
if {[matchattr $hand nm|VOSMA $chan]} {
set topics [join [lrange [split $arg] 2 end]]
set type 1
set chan1 "$chan"
if {[regexp {^[\\+!#&]} $topics] && [matchattr $hand nm|- $chan]} {
set chan "$topics"
set topics [join [lrange [split $arg] 3 end]]
}
t:process $nick $host $hand $chan $chan1 $topics $type
}
}

d {
if {[matchattr $hand nm|SMA $chan]} {
set days [lindex [split $arg] 2]
set dnick [lindex [split $arg] 3]
set type 1
set mask [lindex [split $arg] 3]
set reason [join [lrange [split $arg] 4 end]]
set handle [nick2hand $dnick]
set chan1 "$chan"
foreach c [channels] {
set backchan [channel get $c backchan]
if {[string match -nocase $chan $backchan] && [channel get $c chanreport]} {
set chan "$c"
}
}
if {[regexp {^[\\+!#&]} $days] && [matchattr $hand nm|- $chan]} {
set chan "$days"
set days [lindex [split $arg] 3]
set mask [lindex [split $arg] 4]
set dnick [lindex [split $arg] 4]
set reason [join [lrange [split $arg] 5 end]]
if {![regexp {^[0-9]} $days]} {
set days 1
set mask [lindex [split $arg] 3]
set dnick [lindex [split $arg] 3]
set reason [join [lrange [split $arg] 4 end]]
} 
}
if {![regexp {^[0-9]} $days]} {
set days 1
set mask [lindex [split $arg] 2]
set dnick [lindex [split $arg] 2]
set reason [join [lrange [split $arg] 3 end]]
}
d:process $dnick $mask $days $reason $nick $hand $host $chan $chan1 $type
}
}

sb {
if {[matchattr $hand nm|VOSMA $chan]} {
set bhost [string tolower [lindex [split $arg] 2]]
set what [lindex [split $arg] 3]
set type 1
set chan1 "$chan"
foreach c [channels] {
set backchan [channel get $c backchan]
if {[string match -nocase $chan $backchan] && [channel get $c chanreport]} {
set chan "$c"
}
}
if {[regexp {^[\\+!#&]} $bhost] && [matchattr $hand nm|- $chan]} {
set chan "$bhost"
set bhost [string tolower [lindex [split $arg] 3]]
set what [lindex [split $arg] 4]
}
sb:process $bhost $what $nick $hand $host $chan $chan1 $type
}
}

ub {
if {[matchattr $hand nm|OSMA $chan]} {
set ban [lindex [split $arg] 2]
set why [lindex [split $arg] 3]
set type 1
set chan1 "$chan"
foreach c [channels] {
set backchan [channel get $c backchan]
if {[string match -nocase $chan $backchan] && [channel get $c chanreport]} {
set chan "$c"
}
}
if {[regexp {^[\\+!#&]} $ban] && [matchattr $hand nm|- $chan]} {
set chan "$ban"
set ban [lindex [split $arg] 3]
}
ub:process $ban $why $nick $hand $host $chan $chan1 $type
}

}

bw {
if {[matchattr $hand nm|OSMA $chan]} {
set abuser [lindex [split $arg] 2]
set mask [lindex [split $arg] 2]
set type 1
set chan1 "$chan"
set handle [nick2hand $abuser]
foreach c [channels] {
set backchan [channel get $c backchan]
if {[string match -nocase $chan $backchan] && [channel get $c chanreport]} {
set chan "$c"
}
}
if {[regexp {^[\\+!#&]} $abuser] && [matchattr $hand nm|- $chan]} {
set chan "$abuser"
set abuser [lindex [split $arg] 3]
set mask [lindex [split $arg] 3]
}
bw:process $abuser $mask $nick $hand $host $chan $chan1 $type
}
}

stick {
if {[matchattr $hand nm|SMA $chan]} {
set snick [lindex [split $arg] 2]
set mask [lindex [split $arg] 2]
set type 1
set time [lindex [split $arg] 3]
set reason [join [lrange [split $arg] 4 end]]
set handle [nick2hand $snick]
set list [userlist $black(exceptflags) $chan]
set chan1 "$chan"
foreach c [channels] {
set backchan [channel get $c backchan]
if {[string match -nocase $chan $backchan] && [channel get $c chanreport]} {
set chan "$c"
}
}
if {[regexp {^[\\+!#&]} $snick] && [matchattr $hand nm|- $chan]} {
set chan "$snick"
set time [lindex [split $arg] 4]
set mask [lindex [split $arg] 3]
set snick [lindex [split $arg] 3]
set reason [join [lrange [split $arg] 5 end]]
if {![regexp {^[0-9]} $time]} {
set time "$black(dfstickbantime)"
set reason [join [lrange [split $arg] 4 end]]
}
}
if {![regexp {^[0-9]} $time]} {
set time "$black(dfstickbantime)"
set reason [join [lrange [split $arg] 3 end]]
}
stick:process $snick $mask $time $reason $nick $hand $host $chan $chan1 $type
}
}


k {
if {[matchattr $hand nm|VOSMA $chan]} {
set knick [lindex [split $arg] 2]
set type 1
set reason [join [lrange [split $arg] 3 end]]
set handle [nick2hand $knick]
set chan1 "$chan"
foreach c [channels] {
set backchan [channel get $c backchan]
if {[string match -nocase $chan $backchan] && [channel get $c chanreport]} {
set chan "$c"
}
}
if {[regexp {^[\\+!#&]} $knick] && [matchattr $hand nm|- $chan]} {
set chan "$knick"
set knick [lindex [split $arg] 3]
set reason [join [lrange [split $arg] 4 end]]
}
k:process $knick $nick $hand $host $reason $chan $chan1 $type
}
}

spam {
if {[matchattr $hand nm|OSMA $chan]} {
set spammer [lindex [split $arg] 2]
set type 1
set mask [lindex [split $arg] 2]
set handle [nick2hand $spammer]
set chan1 "$chan"
foreach c [channels] {
set backchan [channel get $c backchan]
if {[string match -nocase $chan $backchan] && [channel get $c chanreport]} {
set chan "$c"
}
}
if {[regexp {^[\\+!#&]} $spammer] && [matchattr $hand nm|- $chan]} {
set chan "$spammer"
set spammer [lindex [split $arg] 2]
set mask [lindex [split $arg] 2]
}
spam:process $spammer $mask $nick $hand $host $chan $chan1 $type
}
}

w {
if {[matchattr $hand nm|OVSMA $chan]} {
set wnick [lindex [split $arg] 2]
set type 1
set chan1 "$chan"
set handle [nick2hand $wnick]
foreach c [channels] {
set backchan [channel get $c backchan]
if {[string match -nocase $chan $backchan] && [channel get $c chanreport]} {
set chan "$c"
}
}
if {[regexp {^[\\+!#&]} $wnick] && [matchattr $hand nm|- $chan]} {
set chan "$wnick"
set wnick [lindex [split $arg] 3]
}
w:process $wnick $nick $hand $host $chan $chan1 $type
}
}

black {
if {[matchattr $hand nm|SMA $chan]} {
set blnick [lindex [split $arg] 2]
set mask [lindex [split $arg] 2]
set type 1
set reason [join [lrange [split $arg] 3 end]]
set handle [nick2hand $blnick]
set chan1 "$chan"
foreach c [channels] {
set backchan [channel get $c backchan]
if {[string match -nocase $chan $backchan] && [channel get $c chanreport]} {
set chan "$c"
}
}
if {[regexp {^[\\+!#&]} $blnick] && [matchattr $hand nm|- $chan]} {
set chan "$blnick"
set blnick [lindex [split $arg] 3]
set mask [lindex [split $arg] 3]
set reason [join [lrange [split $arg] 4 end]]
}
black:process $blnick $nick $mask $hand $host $chan $chan1 $reason $type
}
}


bl {
if {[matchattr $hand nm|SMA $chan]} {
set blnick [lindex [split $arg] 2]
set mask [lindex [split $arg] 2]
set type 1
set chan1 "$chan"
set reason [join [lrange [split $arg] 3 end]]
set handle [nick2hand $blnick]
foreach c [channels] {
set backchan [channel get $c backchan]
if {[string match -nocase $chan $backchan] && [channel get $c chanreport]} {
set chan "$c"
}
}
if {[regexp {^[\\+!#&]} $blnick] && [matchattr $hand nm|- $chan]} {
set chan "$blnick"
set blnick [lindex [split $arg] 3]
set mask [lindex [split $arg] 3]
set reason [join [lrange [split $arg] 4 end]]
}
black:process $blnick $nick $mask $hand $host $chan $chan1 $reason $type
}
}



id {
if {[matchattr $hand nm|OSMA $chan]} {
set idnick [lindex [split $arg] 2]
set handle [nick2hand $idnick]
set type 1
set chan1 "$chan"
foreach c [channels] {
set backchan [channel get $c backchan]
if {[string match -nocase $chan $backchan] && [channel get $c chanreport]} {
set chan "$c"
}
}
if {[regexp {^[\\+!#&]} $idnick] && [matchattr $hand nm|- $chan]} {
set chan "$idnick"
set idnick [lindex [split $arg] 3]
}
id:process $idnick $nick $hand $host $chan $chan1 $type
}
}

bot {
if {[matchattr $hand nm|OSMA $chan]} {
set bot [lindex [split $arg] 2]
set mask [lindex [split $arg] 2]
set type 1
set chan1 "$chan"
foreach c [channels] {
set backchan [channel get $c backchan]
if {[string match -nocase $chan $backchan] && [channel get $c chanreport]} {
set chan "$c"
}
}
if {[regexp {^[\\+!#&]} $bot] && [matchattr $hand nm|- $chan]} {
set chan "$bot"
set bot [lindex [split $arg] 3]
set mask [lindex [split $arg] 3]
}
bot:process $bot $mask $nick $hand $host $chan $chan1 $type
}
}

dr {
if {[matchattr $hand nm|OSMA $chan]} {
set drone [lindex [split $arg] 2]
set mask [lindex [split $arg] 2]
set type "1"
set chan1 "$chan"
foreach c [channels] {
set backchan [channel get $c backchan]
if {[string match -nocase $chan $backchan] && [channel get $c chanreport]} {
set chan "$c"
}
}
if {[regexp {^[\\+!#&]} $drone] && [matchattr $hand nm|- $chan]} {
set chan "$drone"
set drone [lindex [split $arg] 3]
set mask [lindex [split $arg] 3]
}
dr:process $drone $mask $nick $hand $host $chan $chan1 $type
}
}

b {
if {[matchattr $hand nm|OSMA $chan]} {
set bnick [lindex [split $arg] 2]
set mask [lindex [split $arg] 2]
set time [lindex [split $arg] 3]
set type 1
set chan1 "$chan"
set type1 [lindex [split $arg] 3]
set type2 [lindex [split $arg] 4]
set reason [join [lrange [split $arg] 4 end]] 
set handle [nick2hand $bnick]
if {[string match -nocase "global" $type1] || [string match -nocase "global" $type2]  && [matchattr $hand nm|- $chan]} {
if {[string match -nocase $type1 "global"]} {
set reason [join [lrange [split $arg] 4 end]]
}
if {[string match -nocase $type2 "global"]} {
set reason [join [lrange [split $arg] 5 end]]
}
set list [userlist nm|-]
foreach user $list {
 set hosts [getuser $user hosts]
foreach host $hosts {
if {[string match $mask $host]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.noban none
 return 0
}
}
}
if {[matchattr $handle nm|- $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.noban none
 return 0
}

if {![regexp {^[0-9]} $time]} {
set reason [join [lrange [split $arg] 4 end]]
set time "$black(btime)"
}
if {$reason == ""} {set reason1 "(GLOBAL) $black(dfreason)"
 } else { set reason1 "(GLOBAL) $reason" }

if {[channel get $chan showhandle]} {
set reason "($hand) $reason1"
} else { set reason "$reason1" 
}

if {[isbotnick $bnick]} {
return 0
}
if {![botisop $chan]} {
blacktools:tell $nick $host $hand $chan $chan1 gl.noop none
return 0
}
if {$mask == "*!*@*"} {
 return 0
}
if {[onchan $bnick $chan]} {
set mask *!*@[lindex [split [getchanhost $bnick $chan] "@"] 1] 
}
newban $mask $hand $reason $time
if {$time == "0"} { set reply "Permanent" } else { set reply "$time" }
blacktools:tell $nick $host $hand $chan $chan1 b.8 "$mask $reply"
return 0
}
set chan1 "$chan"
foreach c [channels] {
set backchan [channel get $c backchan]
if {[string match -nocase $chan $backchan] && [channel get $c chanreport]} {
set chan "$c"
}
}
if {[regexp {^[\\+!#&]} $bnick] && [matchattr $hand nm|- $chan]} {
set chan "$bnick"
set bnick [lindex [split $arg] 3]
set mask [lindex [split $arg] 3]
set time [lindex [split $arg] 4]
set reason [join [lrange [split $arg] 5 end]]
if {![regexp {^[0-9]} $time]} {
set reason [join [lrange [split $arg] 4 end]]
set time "$black(btime)"
}
}
if {![regexp {^[0-9]} $time]} {
set reason [join [lrange [split $arg] 3 end]]
set time "$black(btime)"
}
b:local $bnick $mask $time $nick $reason $hand $host $chan $chan1 $type
}
}


n {
if {[matchattr $hand nm|OSMA $chan]} {
set bnick [lindex [split $arg] 2]
set type 1
set handle [nick2hand $bnick]
set chan1 "$chan"
foreach c [channels] {
set backchan [channel get $c backchan]
if {[string match -nocase $chan $backchan] && [channel get $c chanreport]} {
set chan "$c"
}
}
if {[regexp {^[\\+!#&]} $bnick] && [matchattr $hand nm|- $chan]} {
set chan "$bnick"
set bnick [lindex [split $arg] 3]
}
n:process $bnick $nick $hand $host $chan $chan1 $type
}
}

gag {
if {[matchattr $hand nm|OSMA $chan]} {
set gagger [lindex [split $arg] 2]
set type 1
set handle [nick2hand $gagger]
set chan1 "$chan"
foreach c [channels] {
set backchan [channel get $c backchan]
if {[string match -nocase $chan $backchan] && [channel get $c chanreport]} {
set chan "$c"
}
}
if {[regexp {^[\\+!#&]} $gagger] && [matchattr $hand nm|- $chan]} {
set chan "$gagger"
set gagger [lindex [split $arg] 3]
}
gag:process $gagger $nick $hand $host $chan $chan1 $type
}
}

l {
if {[matchattr $hand nm|OSMA $chan]} {
set times [lindex [split $arg] 2]
set type 1
set chan1 "$chan"
if {[regexp {^[\\+!#&]} $times] && [matchattr $hand nm|- $chan]} {
set chan "$times"
set times [lindex [split $arg] 3]
}
l:process $nick $host $hand $chan $chan1 $times $type
}
}

ul {
if {[matchattr $hand nm|OSMA $chan]} {
set c [lindex [split $arg] 0]
set chan1 "$chan"
if {[regexp {^[\\+!#&]} $c] && [matchattr $hand nm|- $chan]} {
set chan "$c"
}
ul:process $nick $host $hand $chan $chan1
}
}

show {
if {[matchattr $hand nm|OSMA $chan]} {
set wich [lindex [split $arg] 2]
set type 1
set chan1 "$chan"
if {[regexp {^[#&]} $wich] && [matchattr $hand nm|- $chan]} {
set chan "$wich"
set wich [lindex [split $arg] 3]
}
show:process $nick $host $hand $chan $chan1 $wich $type
}
}

reset {
if {[matchattr $hand nm|M $chan]} {
set dece [lindex [split $arg] 2]
set type 1
set chan1 "$chan"
if {[regexp {^[#&]} $dece] && [matchattr $hand nm|- $chan]} {
set chan "$dece"
set dece [lindex [split $arg] 3]
}
reset:process $nick $host $hand $chan $chan1 $dece $type
}
}

clonescan {
if {[matchattr $hand nm|M $chan]} {
set c [lindex [split $arg] 2]
set type 1
set chan1 "$chan"
if {[regexp {^[\\+!#&]} $c] && [matchattr $hand nm|- $chan]} {
set chan "$c"
}
scanner:process $nick $host $hand $chan $chan1
}
}

top {
if {[matchattr $hand nm|AOSM $chan]} {
set cmd [lindex [split $arg] 2]
set del [lindex [split $arg] 2]
set type 1
set chan1 "$chan"
if {[regexp {^[#&]} $cmd] && [matchattr $hand nm|- $chan]} {
set chan "$cmd"
set cmd [lindex [split $arg] 3]
set del [lindex [split $arg] 3]
}
top:process $nick $host $hand $chan $chan1 $cmd $type $del
}
}

banlist {
if {[matchattr $hand nm|AOSM $chan]} {
set user [lindex [split $arg] 2]
set type 1
set chan1 "$chan"
if {[regexp {^[\\+!#&]} $user] && [matchattr $hand nm|- $chan]} {
set chan "$user"
set user [lindex [split $arg] 3]
}
banlist:process $nick $host $hand $chan $chan1 $user $type
}
}

stats {
if {[matchattr $hand nm|AOSM $chan]} {
set chan1 "$chan"
set c [lindex [split $arg] 2]
if {[regexp {^[#&]} $c] && [matchattr $hand nm|- $chan]} {
set chan "$c"
}
stats:process $nick $host $hand $chan $chan1
}
}

myset {
if {[matchattr $hand nm|VAOSM $chan]} {
set chan1 "$chan"
set flags [lindex [split $arg] 2]
set type [lindex [split $arg] 3]
if {$type == ""} {
blacktools:tell $nick $host $hand $chan $chan1 myset.4 none
return 0
}
myset:process $nick $host $hand $chan $chan1 $flags $type
}
}

i {
if {[matchattr $hand nm|VAOSM $chan]} {
set type 1
set chan1 "$chan"
set inick [lrange [split $arg] 2 end]
set c [lindex [split $arg] 2]
if {[regexp {^[\\+!#&]} $c] && [matchattr $hand nm|- $chan]} {
set chan "$c"
set inick [join [lrange [split $arg] 3 end]]
}
i:process $nick $host $hand $chan $chan1 $inick $type
}
}

addinfo {
if {[matchattr $hand nm|VAOSM $chan]} {
set info [join [lrange [split $arg] 2 end]]
set chan1 "$chan"
if {[matchattr $hand -|q $chan]} { blacktools:tell $nick $host $hand $chan $chan1 gl.suspend none
return 0
}
if {$info == ""} { 
blacktools:tell $nick $host $hand $chan $chan1 addinfo.2 none
return 0
}
addinfo:process $nick $host $hand $chan $chan1 $info
}
}

badword {
if {[matchattr $hand nm|M $chan]} {
set why [lindex [split $arg] 2]
set type 1
set chan1 "$chan"
set bdword [lrange [split $arg] 3 end]
set bdnumber [lindex [split $arg] 3]
if {[regexp {^[\\+!#&]} $why] && [matchattr $hand nm|- $chan]} {
set chan "$why"
set why [lindex [split $arg] 3]
set bdnumber [lindex [split $arg] 4]
set bdword [lrange [split $arg] 4 end]
}
antibadword:command:process $nick $host $hand $chan $chan1 $why $bdword $bdnumber $type
}
}




}
}
}


putlog "$black(name) $black(vers) by $black(author) Loaded -> BLaCkShaDoW ProductionS ®"