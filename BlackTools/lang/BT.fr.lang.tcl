##################################################################################################################################
#                                   _   _   _   _   _   _   _   _   _   _   _   _   _   _                                        #
#                                  / \ / \ / \ / \ / \ / \ / \ / \ / \ / \ / \ / \ / \ / \                                       #
#                                 ( T | C | L | S | C | R | I | P | T | S | . | N | E | T )                                      #
#                                  \_/ \_/ \_/ \_/ \_/ \_/ \_/ \_/ \_/ \_/ \_/ \_/ \_/ \_/                                       #
#                                                                                                                                #
##################################################################################################################################
##                                     BlackTools - The Ultimate Channel Control Script                                         ##
##                                                 One TCL. One smart Eggdrop                                                   ##
##################################################################################################################################
## This file goes along with BlackTools.tcl and is loaded automatically if exist in /lang folder (this file is required)        ##
##################################################################################################################################
#                                                                                                                                #
#                                                  *** The Future is Here ***                                                    #
#                                                                                     Copyright 2008 - 2021 @ www.tclscripts.net #
##################################################################################################################################
#                                                                                                                         �      #
#     ######  #          #     #####  #    # ####### ####### ####### #        #####        #          #    #     #  #####        #
#     #     # #         # #   #     # #   #     #    #     # #     # #       #     #       #         # #   ##    # #     #       #
#     #     # #        #   #  #       #  #      #    #     # #     # #       #             #        #   #  # #   # #             #
#     ######  #       #     # #       ###       #    #     # #     # #        #####   ###  #       #     # #  #  # #  ####       #
#     #     # #       ####### #       #  #      #    #     # #     # #             #       #       ####### #   # # #     #       #
#     #     # #       #     # #     # #   #     #    #     # #     # #       #     #       #       #     # #    ## #     #       #
#     ######  ####### #     #  #####  #    #    #    ####### ####### #######  #####        ####### #     # #     #  #####        #
#                                                                                                                                #
##################################################################################################################################
#   				           #                             translation updated by Florian | Florian@tclscripts.net #
#             ENGLISH LANGUAGE (EN)	   #                     retouches and corrections by QueenElsa | QueenElsa@undernet.org #
#				           #	                                                        Date: 25.02.2018 14:26PM #
##################################################################################################################################

##################################################################################################################################
#                                                                                                                                #
#                                                         ACCESS LEVELS                                                          #
#                                                                                                                                #
##################################################################################################################################

set black(say.en.level.1) "BOSS OWNER"
set black(say.en.level.2) "OWNER"
set black(say.en.level.3) "MANAGER"
set black(say.en.level.4) "ADMIN"
set black(say.en.level.5) "OP"
set black(say.en.level.6) "VOICE"
set black(say.en.level.7) "PROTECT"
set black(say.en.level.8) "MASTER"
set black(say.en.level.9) "BAN"

##################################################################################################################################
#                                                                                                                                #
#                                                       STANDARD MESSAGES                                                        #
#                                                                                                                                #
##################################################################################################################################

set black(say.en.gl.instr) "\005\[BT\]\005 For more information check: \002%char%man %msg.1%\002"
set black(say.en.gl.instr_nick) "\005\[BT\]\005 For more information check: \002%botnick% man %msg.1%\002"
set black(say.en.gl.instr_priv) "\005\[BT\]\005 For more information check: \002man %msg.1%\002"
set black(say.en.gl.noban) "\005\[BT\]\005 FAILED: Cannot execute, user has ACCESS."
set black(say.en.gl.notonchan) "\005\[BT\]\005 FAILED: I am not on \001%chan%\001"
set black(say.en.gl.suspend) "\005\[BT\]\005 You are suspended on \002%chan%\002, you cannot use this command."
set black(say.en.gl.glsuspend) "\005\[BT\]\005 You are \002GLOBALLY\002 suspended, you cannot use this command."
set black(say.en.gl.novalidchan) "\005\[BT\]\005 FAILED: Invalid channel."
set black(say.en.gl.nomem) "\005\[BT\]\005 I have no memory record of that user."
set black(say.en.gl.noaccess) "\005\[BT\]\005 FAILED: Doesn't have access on \002%chan%\002."
set black(say.en.gl.noop) "\005\[BT\]\005 FAILED: I'm not opped on \002%chan%\002."
set black(say.en.gl.nomodif) "\005\[BT\]\005 FAILED: Cannot modify a user with equal or higher access than your own."
set black(say.en.gl.usernotonchan) "\005\[BT\]\005 FAILED: \001%msg.1%\001 is not on \002%chan%\002."
set black(say.en.gl.nocmem) "\005\[BT\]\005 I have no memory record of channel \001%msg.1%\001"
set black(say.en.gl.isowner) "\005\[BT\]\005 \002%msg.1%\002 has already \002%msg.set%\002 access."
set black(say.en.gl.usernotexist) "\005\[BT\]\005 FAILED: \002%msg.1%\002 does not exist."
set black(say.en.gl.hostnotexist) "\005\[BT\]\005 I could not found any information about this hostmask."
set black(say.en.gl.reason) "reason"
set black(say.en.gl.invalidlevel) "\005\[BT\]\005 Sorry, you have insufficient access to perform that command (must be \002%msg%\002)"
set black(say.en.gl.nounban) "\005\[BT\]\005 Sorry, you have insufficient access to remove the ban \002%msg.1%\002."
set black(say.en.gl.hasop) "\005\[BT\]\005 FAILED: User is opped. I can't proceed."
set black(say.en.gl.notonline) "\005\[BT\]\005 \002%msg.1%\002 it's NOT online."
set black(say.en.gl.showline) "#\001%msg.1%\001) %msg.8%"
set black(say.en.gl.wordexists) "\005\[BT\]\005 \001%msg.1%\001 already exists in \002%chan%\002's database."
set black(say.en.gl.noset) "N/A"
set black(say.en.gl.validuser) "\005\[BT\]\005 FAILED: Cannot execute ( the host belongs to \002%msg.1%\002 )."
set black(say.en.gl.banexists) "\005\[BT\]\005 \002%msg.1%\002 it's already covered by host \002%msg.2%\002"
set black(say.en.gl.noipv4) "\005\[BT\]\005 \002%msg.1%\002 is not an IPv4 to use CIDR ban."
set black(say.en.gl.fullbans) "\005\[BT\]\005 \002WARNING\002: \002%chan%\002's banlist currently was detected to be *FULL* with \002%numbans%\002 entries. Clearing the channel banlist.."
set black(say.en.gl.noxonly) "\005\[BT\]\005 FAILED: I'm not logged to \002*X*\002."
set black(say.en.gl.banblack) "\005\[BT\]\005 FAILED: Cannot execute, user is in BLACKLIST."
set black(say.en.gl.protexcept) "\002except\002"
set black(say.en.gl.nobanlevel) "\005\[BT\]\005 Sorry, you have insufficient access to place the ban \002%msg.1%\002."

#############################################################################################################################
#                                                                                                                           #
#                                            Internal AntiFlood Protections                                                 #
#                                                                                                                           #
#############################################################################################################################

set black(say.en.antiflood.1) "\005\[BT\]\005 You're sending requests too fast. Calm down and try again after \002%msg.1% minute\002. Thanks!"
set black(say.en.antiflood.2) "\005\[BT\]\005 Ignoring \002%msg.1%\002. Reason: \002%msg.8%\002"
set black(say.en.antiflood.3) "\002\005\[BT\]\005\002 SILENCE enabled. Reason :\002%msg%\002"
set black(say.en.antiflood.4) "\002\005\[BT\]\005\002 SILENCE disabled."

#############################################################################################################################
#                                                                                                                           #
#                                                    Time Outputs                                                           #
#                                                                                                                           #
#############################################################################################################################

set black(say.en.timeout.1) "year"
set black(say.en.timeout.2) "years"
set black(say.en.timeout.3) "day"
set black(say.en.timeout.4) "days"
set black(say.en.timeout.5) "hour"
set black(say.en.timeout.6) "hours"
set black(say.en.timeout.7) "minute"
set black(say.en.timeout.8) "minutes"
set black(say.en.timeout.9) "seconds"

#############################################################################################################################
#                                                                                                                           #
#                                                    MAX UPTIME                                                             #
#                                                                                                                           #
#############################################################################################################################

set black(say.en.maxup.1) "\005\[BT\]\005 Starting time: \002%msg.1% %msg.2% %msg.3%\002 - Max UpTIME: \001%msg.9%\001"
set black(say.en.maxon.1) "\005\[BT\]\005 Time online: \002%msg.1% %msg.2% %msg.3%\002 - Max OnTIME: \001%msg.9%\001"

#############################################################################################################################
#                                                                                                                           #
#                                                      STATS                                                                #
#                                                                                                                           #
#############################################################################################################################

set black(say.en.stats.1) "\005\[BT\]\005 No stats informations found about \002%msg.1%\002."
set black(say.en.stats.2) "\005\[BT\]\005 Today's \002Stats\002: (\001%msg.1%\001) Bans: \002%msg.2%\002 Kicks: \002%msg.3%\002 Cmds: %msg.6%"
set black(say.en.stats.3) "\005\[BT\]\005 Total \002Stats\002: (\001%msg.1%\001) Bans: local \002%msg.2%\002 ; Kicks: \002%msg.3%\002 ; Cmds: %msg.6%"
set black(say.en.stats.4) "\005\[BT\]\005 Total \002Stats\002: (\001%msg.1%\001) Bans: local \002%msg.2%\002 global \002%msg.3%\002 ; Kicks: \002%msg.4%\002 ; Cmds: %msg.10%" 
set black(say.en.stats.5) "\005\[BT\]\005 Reset stats of \001%msg.1%\001 from \002%chan%\002."

#############################################################################################################################
#                                                                                                                           #
#                                                   PROTECTIONS                                                             #
#                                                                                                                           #
#############################################################################################################################

#################################### InviteBan #################################

set black(say.en.inviteban.1) "\[INVITEBAN\] Lame invite crap"

#################################### AntiPub ###################################

set black(say.en.antipub.1) "Advertisements are not allowed on this channel"
set black(say.en.antipub.2) "Advertisements are \002NOT\002 not allowed and will result in a ban next time"
set black(say.en.antipub.3) "\005\[BT\]\005 *** END Antipub List ***"
set black(say.en.antipub.4) "\005\[BT\]\005 FAILED: No entries matching for no. \001%msg.1%\001 in \002Antipub List\002 of %chan%."
set black(say.en.antipub.5) "\005\[BT\]\005 Removed \002antipub entry\002 with nr. \001%msg.1%\001 from \002%chan%\002."
set black(say.en.antipub.6) "\005\[BT\]\005 Added \002%msg.8%\002 with nr. \001%msg.1%\001 to Antipub list for \002%chan%\002."
set black(say.en.antipub.7) "\005\[BT\]\005 \002Antipub List\002 for %chan% is:"
set black(say.en.antipub.8) "\005\[BT\]\005 To see the next set of entries, type: \001%char%antipub list -next\001 (\002%counter%\002 entries left)"
set black(say.en.antipub.9) "\005\[BT\]\005 To see the next set of entries, type: \001%char%antipub %chan% list -next\001 (\002%counter%\002 entries left)"
set black(say.en.antipub.10) "\005\[BT\]\005 Added \002%msg.8%\002 with nr. \001%msg.1%\001 to Antipub Exceptions for \002%chan%\002."

#################################### BadHost ##################################

set black(say.en.badhost.1) "Your VHOST/IP is considered to be improper"
set black(say.en.badhost.3) "\005\[BT\]\005 *** END BadHosts List ***"
set black(say.en.badhost.4) "\005\[BT\]\005 FAILED: No entries matching for no. \001%msg.1%\001 in \002BadHosts List\002 of \001%chan%\001."
set black(say.en.badhost.5) "\005\[BT\]\005 Removed \002badhost\002 with no. \001%msg.1%\001 from \002%chan%\002."
set black(say.en.badhost.6) "\005\[BT\]\005 Added \001%msg.8%\001 with no. \001%msg.1%\001 to BadHosts List for \002%chan%\002."
set black(say.en.badhost.7) "\005\[BT\]\005 \002BadHosts List\002 for \001%chan%\001 is:"
set black(say.en.badhost.8) "\005\[BT\]\005 To see the next set of entries, type: \001%char%badhost list -next\001 (\002%counter%\002 BadHosts left)"
set black(say.en.badhost.9) "\005\[BT\]\005 To see the next set of entries, type: \001%char%badhost %chan% list -next\001 (\002%counter%\002 BadHosts left)"
set black(say.en.badhost.10) "\005\[BT\]\005 Added \001%msg.8%\001 as exception with no. \001%msg.1%\001 to BadHosts List for \002%chan%\002."

#################################### AntiNotice ###############################

set black(say.en.antinotice.1) "Channel NOTICEs are not allowed"
set black(say.en.antinotice.2) "Please do not use NOTICE in here"

#################################### AntiCtcp #################################

set black(say.en.antictcp.1) "Channel CTCP's are not allowed"
set black(say.en.antictcp.2) "Stop using CTCP's in here"

#################################### AntiBadWord ###############################

set black(say.en.antibadword.1) "Bad language is not fun, you should never have said that"
set black(say.en.antibadword.2) "Stop using bad words/language"
set black(say.en.antibadword.3) "\005\[BT\]\005 *** END BadWords List ***"
set black(say.en.badword.4) "\005\[BT\]\005 No entries matching for no. \001%msg.1%\001 in \002BadWords List\002 of \001%chan%\001."
set black(say.en.badword.5) "\005\[BT\]\005 Removed \002badword\002 entry with no. \001%msg.1%\001 from %chan%."
set black(say.en.badword.6) "\005\[BT\]\005 Added \002%msg.8%\002 with no. \001%msg.1%\001 to BadWords List for \002%chan%\002."
set black(say.en.antibadword.7) "\005\[BT\]\005 \002BadWords List\002 for \001%chan%\001 is:"
set black(say.en.antibadword.8) "\005\[BT\]\005 To see the next set of entries, type: \001%char%badword list -next\001 (\002%counter%\002 entries left)"
set black(say.en.antibadword.9) "\005\[BT\]\005 To see the next set of entries, type: \001%char%badword %chan% list -next\001 (\002%counter%\002 entries left)"
set black(say.en.badword.7) "\005\[BT\]\005 Added \002%msg.18%\002 with no. \001%msg.1%\001 with banmethod nr.\001%msg.2%\ to BadWords List for \002%chan%\002."
set black(say.en.badword.8) "\005\[BT\]\005 Added \002%msg.8%\002 as exception with no. \001%msg.1%\001 to BadWords List for \002%chan%\002."

#################################### AntiLongText ##############################

set black(say.en.antilongtext.1) "Your message is too long. Please use shorter lines"
set black(say.en.antilongtext.2) "Your messages are too long, you need to make them shorter"

#################################### AntiBadQuitPart ###########################

set black(say.en.antibadquitpart.1) "Unacceptable part/quit message"
set black(say.en.antibadquitpart.3) "\005\[BT\]\005 *** END Bad parts/quits List ***"
set black(say.en.badquitpart.4) "\005\[BT\]\005 FAILED: No entries matching for no. \001%msg.1%\001 in \002Bad part/quit List\002 of \001%chan%\001."
set black(say.en.badquitpart.5) "\005\[BT\]\005 Removed \002bad part/quit\002 with no. \001%msg.1%\001 from %chan%."
set black(say.en.badquitpart.6) "\005\[BT\]\005 Added \002%msg.8%\002 with no. \001%msg.1%\001 to Bad part/quit List for \002%chan%\002."
set black(say.en.antibadquitpart.7) "\005\[BT\]\005 \002Bad part/quit List\002 for \001%chan%\001 is:"
set black(say.en.antibadquitpart.8) "\005\[BT\]\005 To see the next set of entries, type: \001%char%badquitpart list -next\001 (\002%counter%\002 entries left)"
set black(say.en.antibadquitpart.9) "\005\[BT\]\005 To see the next set of entries, type: \001%char%badquitpart %chan% list -next\001 (\002%counter%\002 entries left)"
set black(say.en.badquitpart.10) "\005\[BT\]\005 Added \002%msg.8%\002 as exception with no. \001%msg.1%\001 to Bad part/quit List for \002%chan%\002."

################################### AntiJoinPart ###############################

set black(say.en.antijoinpart.1) "Join/part floods are not permissable on this channel"
set black(say.en.antijoinpart.2) "Join/part flood detected"

################################## AntiSpam ###################################

set black(say.en.antispam.1) "Message spam (spambot) detected"
set black(say.en.antispam.2) "\[SPAMCHECK\] Welcome to \002%chan%\002, please do NOT reply to this message or else you will be considered a spammer and you'll be banned! Thank You!"
set black(say.en.antispam.3) "\005\[BT\]\005 *** END antispam List ***"
set black(say.en.antispam.4) "\005\[BT\]\005 FAILED: No entries matching for no. \001%msg.1%\001 in \002antispam List\002 of \001%chan%\001."
set black(say.en.antispam.5) "\005\[BT\]\005 Removed \002antispam\002 with no. \001%msg.1%\001 from \002%chan%\002."
set black(say.en.antispam.6) "\005\[BT\]\005 Added \001%msg.8%\001 with no. \001%msg.1%\001 to antispam List for \002%chan%\002."
set black(say.en.antispam.7) "\005\[BT\]\005 \002antispam List\002 for \001%chan%\001 is:"
set black(say.en.antispam.8) "\005\[BT\]\005 To see the next set of entries, type: \001%char%antispam list -next\001 (\002%counter%\002 antispam entries left)"
set black(say.en.antispam.9) "\005\[BT\]\005 To see the next set of entries, type: \001%char%antispam %chan% list -next\001 (\002%counter%\002 antispam entries left)"
set black(say.en.antispam.10) "\005\[BT\]\005 Added \001%msg.8%\001 as exception with no. \001%msg.1%\001 to antispam List for \002%chan%\002."
set black(say.en.antispam.11) {	"Checking for spam.."
				"Hunting wabbits.."
				"Refreshing my uHost.."
				}

################################# AntiRepeat ##################################

set black(say.en.antirepeat.1) "Repeating text abuse"
set black(say.en.antirepeat.2) "Stop repeating yourself"

################################# AntiColor ###################################

set black(say.en.anticolor.1) "Stop using 4C8O12L7O11R3S"
set black(say.en.anticolor.2) "Please do NOT use 4C8O12L7O11R3S"

################################# AntiBold ###################################

set black(say.en.antibold.1) "Stop using \002BOLD\002 characters"
set black(say.en.antibold.2) "Please do NOT use \002BOLD\002 characters"

################################# AntiUnderline ###################################

set black(say.en.antiunderline.1) "Stop using \037UNDERLINE\037 characters"
set black(say.en.antiunderline.2) "Please do NOT use \037UNDERLINE\037 characters"

################################# AntiCaps #######################################

set black(say.en.anticaps.1) "Stop using CAPSLOCK"
set black(say.en.anticaps.2) "Please do NOT use excessive capital letters"

################################# BadRealname ###################################

set black(say.en.badrealname.1) "Inappropriate real-name field, please change it before returning"
set black(say.en.badrealname.3) "\005\[BT\]\005 *** END BadRealnames List ***"
set black(say.en.badrealname.4) "\005\[BT\]\005 FAILED: No entries matching for no. \001%msg.1%\001 in \002BadRealname List\002 of \001%chan%\001."
set black(say.en.badrealname.5) "\005\[BT\]\005 Removed \002badrealname\002 with no. \001%msg.1%\001 from \001%chan%\001."
set black(say.en.badrealname.6) "\005\[BT\]\005 Added \002%msg.8%\002 with no. \001%msg.1%\001 to BadRealname List for \002%chan%\002."
set black(say.en.badrealname.7) "\005\[BT\]\005 \002BadRealname List\002 for \001%chan%\001 is:"
set black(say.en.badrealname.8) "\005\[BT\]\005 To see the next set of entries, type: \001%char%badrealname list -next\001 (\002%counter%\002 BadRealnames left)"
set black(say.en.badrealname.9) "\005\[BT\]\005 To see the next set of entries, type: \001%char%badrealname %chan% list -next\001 (\002%counter%\002 BadRealnames left)"
set black(say.en.badrealname.10) "\005\[BT\]\005 Added \002%msg.8%\002 as exception with no. \001%msg.1%\001 to BadRealname List for \002%chan%\002."

################################# BadNick #####################################

set black(say.en.badnick.1) "Your NICKNAME is not appropriate for this channel"
set black(say.en.badnick.3) "\005\[BT\]\005 *** END BadNicks List ***"
set black(say.en.badnick.4) "\005\[BT\]\005 FAILED: No entries matching for no. \001%msg.1%\001 in \002BadNicks List\002 of \001%chan%\001."
set black(say.en.badnick.5) "\005\[BT\]\005 Removed \002badnick\002 with no. \001%msg.1%\001 from \001%chan%\001."
set black(say.en.badnick.6) "\005\[BT\]\005 Added \002%msg.8%\002 with no. \001%msg.1%\001 to BadNicks List for \002%chan%\002."
set black(say.en.badnick.7) "\005\[BT\]\005 \002BadNicks List\002 for \001%chan%\001 is:"
set black(say.en.badnick.8) "\005\[BT\]\005 To see the next set of entries, type: \001%char%badnick list -next\001 (\002%counter%\002 BadNicks left)"
set black(say.en.badnick.9) "\005\[BT\]\005 To see the next set of entries, type: \001%char%badnick %chan% list -next\001 (\002%counter%\002 BadNicks left)"
set black(say.en.badnick.10) "If you do not change your nick in \002%time%\002 seconds, you will be removed from the channel! "
set black(say.en.badnick.11) "\005\[BT\]\005 Added \002%msg.8%\002 as exception with no. \001%msg.1%\001 to BadNicks List for \002%chan%\002."

################################# BadIdent #####################################

set black(say.en.badident.1) "Your IDENT is not appropriate for this channel"
set black(say.en.badident.3) "\005\[BT\]\005 *** END BadIdents List ***"
set black(say.en.badident.4) "\005\[BT\]\005 FAILED: No entries matching for no. \001%msg.1%\001 in \002BadIdents List\002 of \001%chan%\001."
set black(say.en.badident.5) "\005\[BT\]\005 Removed \002badident\002 with no. \001%msg.1%\001 from \002%chan%\002."
set black(say.en.badident.6) "\005\[BT\]\005 Added \002%msg.8%\002 with no. \001%msg.1%\001 to BadIdents List for \002%chan%\002."
set black(say.en.badident.7) "\005\[BT\]\005 \002BadIdents List\002 for \001%chan%\001 is:"
set black(say.en.badident.8) "\005\[BT\]\005 To see the next set of entries, type: \001%char%badident list -next\001 (\002%counter%\002 BadIdents left)"
set black(say.en.badident.9) "\005\[BT\]\005 To see the next set of entries, type: \001%char%badident %chan% list -next\001 (\002%counter%\002 BadIdents left)"
set black(say.en.badident.10) "\005\[BT\]\005 Added \002%msg.8%\002 as exception with no. \001%msg.1%\001 to BadIdents List for \002%chan%\002."

################################# AntiJoinFlood #####################################

set black(say.en.antijoinflood.1) "Join flooding not tolerated"
set black(say.en.antijoinflood.2) "\002ATTENTION\002! Joinflood detected on \002%chan%\002! Please check it out!"

################################# AntiChanFlood #####################################

set black(say.en.antichanflood.1) "Text flood detected"
set black(say.en.antichanflood.2) "You are writing too many lines, slow down your typing"

################################### NickFlood #######################################

set black(say.en.nickflood.1) "Nick flood"
set black(say.en.nickflood.2) "Choose a nickname and keep it, please.."

################################ Repetitive Chars ###################################

set black(say.en.repetitivechars.1) "Repetitive chars abuse"
set black(say.en.repetitivechars.2) "Please do not use excessive characters repeat.."

################################### NickFlood #######################################

set black(say.en.noproxy.1) "PROXY IPs are not allowed here. ISP: \002%isp%\002"

#############################################################################################################################
#                                                                                                                           #
#                                                       MODULES                                                             #
#                                                                                                                           #
#############################################################################################################################

################################## SecureMode ##################################

set black(say.en.securemode.1) {
"\002ATTENTION:\002 You just tried to join %chan% but the channel is \002lockdown\002 (\002+mD\002). Since we're being attacked by bots, please type: \002/msg %botnick% check %chan% %msg.1%\002 to prove that you're a human. If you do, you will be permitted to join. If you mess up, nothing will happen."
"\002ATTENTION:\002 Welcome to %chan%. Since we're being  attacked by bots, the channel is \002lockdown\002 (\002+mD\002), please type: \002/msg %botnick% check %chan% %msg.1%\002"
"\002ATTENTION:\002 our channel is \002lockdown\002 (\002+mD\002) and since we're being  attacked by bots and you just tried to join %chan%, please type: \002/msg %botnick% check %chan% %msg.1%\002"
}

set black(say.en.securemode.2) "\002%msg.1%\002: have a nice chat! Sorry for the inconvienence you experienced!"
set black(say.en.securemode.3) "\005\[BT\]\005 *** END SecureMode Exceptions List ***"
set black(say.en.securemode.4) "\005\[BT\]\005 FAILED: No entries matching for no. \001%msg.1%\001 in \002SecureMode Exceptions List\002 of \001%chan%\001."
set black(say.en.securemode.5) "\005\[BT\]\005 Removed \002securemode exception\002 with no. \002%msg.1%\002 from %chan%."
set black(say.en.securemode.6) "\005\[BT\]\005 Added \002%msg.8%\002 with no. \001%msg.1%\001 to SecureMode Exceptions List for \002%chan%\002."
set black(say.en.securemode.7) "\005\[BT\]\005 \002SecureMode Exceptions List\002 for \001%chan%\001 is:"
set black(say.en.securemode.8) "\005\[BT\]\005 To see the next set of exceptions, type: \001%char%securemode list -next\001 (\002%counter%\002 Exceptions left)"
set black(say.en.securemode.9) "\005\[BT\]\005 To see the next set of exceptions, type: \001%char%securemode %chan% list -next\001 (\002%counter%\002 Exceptions left)"
set black(say.en.securemode.10) "Defensive mode: on"
set black(say.en.securemode.11) "Defensive mode: off"

################################## VoiceMe #####################################

set black(say.en.voiceme.1) "The channel is \002moderated (mode +m)\002. If you wanna be able to chat in \002%chan%\002 then use:\002 /msg %botnick% voiceme %chan%\002. Requires to be \002registered and logged to X\002. If you don't have a Cservice username, go to \002https://cservice.undernet.org/live\002 and create one."
set black(say.en.voiceme.2) "The channel is NOT \002moderated (mode +m)\002 anymore. Enjoy!"
set black(say.en.voiceme.3) "You received \002voice(+v)\002 on \002%chan%\002. Have a nice chat!"
set black(say.en.voiceme.4) "You are already \002voiced\002 in \002%chan%\002."
set black(say.en.voiceme.5) "If *HUMAN* -> \002/msg %botnick% voiceme %chan% %msg%\002"
set black(say.en.voiceme.6) "The channel is \002moderated (mode +m)\002. If you wanna be able to chat in \002%chan%\002 then use:\002 /msg %botnick% voiceme %chan%\002. Enjoy!"

################################# TopWords #####################################

set black(say.en.topwords.1) "Total \002TopWords\002: \001%msg%\001"
set black(say.en.topwords.2) "Today's \002TopWords\002: \001%msg%\001"
set black(say.en.topwords.3) "TopWords: (\001%msg.1%\001) Host: \001%msg.2%\001 Words: \002%msg.3%\002 Lines: \002%msg.4%\002 Letters: \002%msg.12%\002 Smiles: \002%msg.13%\002 Actions: \002%msg.15%\002 Questions: \002%msg.17%\002 (Place \002%msg.19%\002/\002%msg.21%\002 users)."
set black(say.en.topwords.4) "TopWords: Sorry, I don't have any stats about \002%msg.1%\002."
set black(say.en.topwords.7) "\005\[BT\]\005 I don't have any \002TopWords\002 for \001%chan%\001."
set black(say.en.topwords.8) "\005\[BT\]\005 \002TopWords\002 reseted on \001%chan%\001"
set black(say.en.topwords.9) "(To see the next ranks, type: \002%char%topwords -next\002)"
set black(say.en.topwords.10) "\005\[BT\]\005 I don't have any \002TopWords\002 for \001%chan%\001"
set black(say.en.topwords.11) "(To see the next ranks, type: \002%char%topwords total -next\002)"
set black(say.en.topwords.12) "(To see the next ranks, type: \002%char%topwords %chan% total -next\002)"
set black(say.en.topwords.13) "(To see the next ranks, type: \002%char%topwords %chan% -next\002)"
set black(say.en.topwords.14) "\005\[BT\]\005 Today's \002TopWords\002 for \001%chan%\001 is empty."
set black(say.en.topwords.15) "\005\[BT\]\005 Added \001%msg.1%\001 to \002TopWords Exceptions List\002 for \001%chan%\001"
set black(say.en.topwords.16) "\005\[BT\]\005 Added \001%msg.1%\001 with mask \002%msg.2%\002 to \002TopWords Exceptions List\002 for \001%chan%\001"
set black(say.en.topwords.17) "\005\[BT\]\005 \001%msg.1%\001 already exists in \002TopWords Exceptions List\002."
set black(say.en.topwords.18) "\005\[BT\]\005 \002TopWords Exceptions List\002 for \001%chan%\001 is:"
set black(say.en.topwords.19) "%msg%"
set black(say.en.topwords.20) "\005\[BT\]\005 \001%msg.1%\001 is not added as an exception to \002TopWords\002."
set black(say.en.topwords.21) "\005\[BT\]\005 Removed \001%msg.1%\001 from \002TopWords Exceptions List\002."
set black(say.en.topwords.22) "Total TopWords: (\001%msg.1%\001) Host: \001%msg.2%\001 Words: \002%msg.3%\002 Lines: \002%msg.4%\002 Letters: \002%msg.12%\002 Smiles: \002%msg.13%\002 Actions: \002%msg.15%\002 Questions: \002%msg.17%\002 (Place \002%msg.19%\002/\002%msg.21%\002 users)."
set black(say.en.topwords.23) "\005\[BT\]\005 This week's \002TopWords\002 for \001%chan%\001 is empty."
set black(say.en.topwords.24) "This week's \002TopWords\002: \001%msg%\001"
set black(say.en.topwords.25) "(To see the next ranks, type: \002%char%topwords %chan% week -next\002)"
set black(say.en.topwords.26) "(To see the next ranks, type: \002%char%topwords %chan% week -next\002)"
set black(say.en.topwords.27) "\005\[BT\]\005 No entries found about \002%msg.1%\002, i guess he/she hasn't spoken :("
set black(say.en.topwords.28) "Week's TopWords: (\001%msg.1%\001) Host: \001%msg.2%\001 Words: \002%msg.3%\002 Lines: \002%msg.4%\002 Letters: \002%msg.12%\002 Smiles: \002%msg.13%\002 Actions: \002%msg.15%\002 Questions: \002%msg.17%\002 (Place \002%msg.19%\002/\002%msg.21%\002 users)."
set black(say.en.topwords.29) "\005\[BT\]\005 Reset topwords of \001%msg.1%\001 from \002%chan%\002"

################################ BackChan ###################################

set black(say.en.reportchan) "\005\[BT\]\005 Added ban on \002%chan%\002 for host \002%banmask%\002 with reason: \002%reason%\002. Expires after: \002%bantime%\002."
set black(say.en.reportchan.1) "\005\[BT\]\005 \[\002%nick%\002\] added ban on \002%chan%\002 for host \002%banmask%\002 with reason: \002%reason%\002. Expires after: \002%bantime%\002."
set black(say.en.backchan.1) "\005\[BT\]\005 Found \002%msg.1%\002 in \002%chan%\002's BanList matching \002%msg.2%\002."
set black(say.en.reportchan.2) "\005\[BT\]\005 \[\002%nick%\002\] added Gag on \002%chan%\002 for host \002%banmask%\002 with reason: \002%reason%\002. Expires after: \002%bantime%\002."
set black(say.en.reportchan.3) "\005\[BT\]\005 \[\002%nick%\002\] removed \002%msg.1%\002 bans (\002%msg.2%\002 found) from %chan% that matched %msg.3%" 
set black(say.en.reportchan.4) "\005\[BT\]\005 \[\002%nick%\002\] removed Gag on \002%chan%\002 for host \002%banmask%\002"

################################ CloneScan ###################################

set black(say.en.clonescan.1) "Excessive connections from \002*@%clone%\002. Clones are prohibited!"
set black(say.en.clonescan.2) "\005\[BT\]\005 No clones on \001%chan%\001."
set black(say.en.clonescan.3) "*** END Clones Exceptions List ***"
set black(say.en.clonescan.4) "\005\[BT\]\005 FAILED: No entries matching for no. \001%msg.1%\001 in \002Clones Exceptions List\002."
set black(say.en.clonescan.5) "\005\[BT\]\005 Removed \002exception\002 with no. \001%msg.1%\001 from \002%chan%\002."
set black(say.en.clonescan.6) "\005\[BT\]\005 Added \001%msg.8%\001 with no. \002%msg.1%\002 in \002Clones Exceptions List\002"
set black(say.en.clonescan.7) "\005\[BT\]\005 \002Clones Exceptions List\002 for \001%chan%\001 is:"
set black(say.en.clonescan.8) "\005\[BT\]\005 To see the next set of exceptions, type: \001%char%clonescan list -next\001 (\002%counter%\002 exceptions ramase)"
set black(say.en.clonescan.9) "\005\[BT\]\005 To see the next set of exceptions, type: \001%char%clonescan %chan% list -next\001 (\002%counter%\002 exceptions ramase)"
set black(say.en.clonescan.10) "\005\[BT\]\005 Found \001%msg.1%\001 clones in \002%chan%\002 from mask \001%msg.2%\001. Nicks are: \002%msg.7%\002"
set black(say.en.clonescan.11) "\005\[BT\]\005 Scanning for clones .."

################################# Private ######################################

set black(say.en.private.1) "\002Restricted\002 Channel"
set black(say.en.private.5) "%msg%"
set black(say.en.private.6) "\005\[BT\]\005 \001%msg.1%\001 is not added as an exception."
set black(say.en.private.7) "\005\[BT\]\005 \001%msg.1%\001 is already in my database. Adding as an exception on \002%chan%\002."
set black(say.en.private.8) "\005\[BT\]\005 Added \001%msg.1%\001 with mask \002%msg.2%\002 as an exception on \001%chan%\001."
set black(say.en.private.9) "\005\[BT\]\005 Removed \001%msg.1%\001 from my \002Exception List\002 on \002%chan%\002."
set black(say.en.private.10) "\005\[BT\]\005 \001%msg.1%\001 added as an exception on \002%chan%\002."
set black(say.en.private.11) "\005\[BT\]\005 Users in \002Exception List\002 from \002%chan%\002 are: \001%msg%\001."

################################# BadChan ######################################

set black(say.en.badchan.1) "\005\[BT\]\005 \001%msg.1%\001 already exists on \002%chan%\002's BadChans List."
set black(say.en.badchan.2) "\005\[BT\]\005 To see the next set of entries, type: \001%char%badchan list global -next\001 (\002%counter%\002 BadChans left)"
set black(say.en.badchan.3) "\005\[BT\]\005 To see the next set of entries, type: \001%char%badchan list -next\001 (\002%counter%\002 BadChans left)"
set black(say.en.badchan.4) "\005\[BT\]\005 *** END BadChans List ***"
set black(say.en.badchan.5) "You have been found co-channeling in one or more blacklisted channels"
set black(say.en.badchan.6) "\005\[BT\]\005 \002BadChan\002 turned \001ON\001."
set black(say.en.badchan.8) "\005\[BT\]\005 \002BadChan\002 turned \001OFF\001."
set black(say.en.badchan.11) "\005\[BT\]\005 Added \001%msg.1%\001 with no. \002%msg.2%\002 in my \002GLOBAL\002 BadChans List."
set black(say.en.badchan.12) "\005\[BT\]\005 Added \001%msg.1%\001 with no. \002%msg.2%\002 in \002%chan%\002's BadChans List."
set black(say.en.badchan.14) "\005\[BT\]\005 \002BadChans List\002 for \001%chan%\001 is:"
set black(say.en.badchan.15) "\005\[BT\]\005 \002Global BadChans List\002 is:"
set black(say.en.badchan.16) "#\002%msg.1%\002) %msg.2%"
set black(say.en.badchan.17) "\005\[BT\]\005 FAILED: No entries matching for no. \002%msg.1%\002 in my BadChans List."
set black(say.en.badchan.18) "\005\[BT\]\005 Removed no. \001%msg.1%\001 from \002%chan%\002's BadChans List."
set black(say.en.badchan.19) "\005\[BT\]\005 Removed no. \001%msg.1%\001 from \002GLOBAL\002 BadChans List."
set black(say.en.badchan.39) "You have been found co-channeling in one or more blacklisted channels"
set black(say.en.badchan.40) "\002ATTENTION!\002 You were found sitting in one or more blacklisted channels! You have\002 %time% seconds\002 to leave:\002 %badchans%\002, otherwise you'll be banned. Thank You!"
set black(say.en.badchan.41) "\005\[BT\]\005 To see the next set of entries, type: \001%char%badchan %chan% list -next\001 (\002%counter%\002 BadChans left)"
set black(say.en.badchan.42) "\005\[BT\]\005 \001%msg.1%\001 is already added to \002GLOBAL\002 BadChans List"
set black(say.en.badchan.43) "\005\[BT\]\005 \002BadChan\002 is already activated."
set black(say.en.badchan.44) "( \002%nick%\002 ) found in bad channels: ( \002%chans%\002 )"
set black(say.en.badchan.45) "\005\[BT\]\005 Added \001%msg.1%\001 as exception with no. \002%msg.2%\002 in \002%chan%\002's BadChans List."
set black(say.en.badchan.46) "\002regex\002"
set black(say.en.badchan.47) "\005\[BT\]\005 Added REGEX \001%msg.1%\001 with no. \002%msg.2%\002 in my \002GLOBAL\002 BadChans List."
set black(say.en.badchan.48) "\005\[BT\]\005 Added REGEX \001%msg.1%\001 with no. \002%msg.2%\002 in \002%chan%\002's BadChans List."

################################# AntiTaKe ######################################

set black(say.en.antitake.1) "\005\[BT\]\005 You cannot give \002DEOP\002 because you are not in my database with access."
set black(say.en.antitake.2) "\005\[BT\]\005 You cannot give \002OP\002 because you are not in my database with access."

################################# Anunt (advert) ######################################

set black(say.en.anunt.1) "%msg%"
set black(say.en.anunt.2) "\005\[BT\]\005 *** END Adverts List ***"
set black(say.en.anunt.3) "\005\[BT\]\005 \002Adverts\002 module turned \001ON\001."
set black(say.en.anunt.4) "\005\[BT\]\005 \002Adverts\002 module turned \001OFF\001."
set black(say.en.anunt.5) "\005\[BT\]\005 Advert with no. \002%msg.1%\002 added on \001%chan%\001:"
set black(say.en.anunt.6) "\002%msg.1%\002) %msg.8%"
set black(say.en.anunt.7) "\005\[BT\]\005 There are no Adverts for \001%chan%\001."
set black(say.en.anunt.8) "\005\[BT\]\005 \002Adverts List\002 for \001%chan%\001 is:"
set black(say.en.anunt.9) "\005\[BT\]\005 To see the next set of entries, type: \001%char%anunt list -next\001 (\002%counter%\002 Adverts left)"
set black(say.en.anunt.10) "\005\[BT\]\005 Removed no. \001%msg.1%\001 from %chan%'s Adverts List."
set black(say.en.anunt.13) "\005\[BT\]\005 FAILED: No entries matching for no. \001%msg.1%\001 in \002%chan%'s\002 Adverts List."
set black(say.en.anunt.14) "\005\[BT\]\005 To see the next set of entries, type: \001%char%anunt %chan% list -next\001 (\002%counter%\002 Adverts left)"

################################# AutoBroadcast ######################################

set black(say.en.autobroadcast.1) "%msg%"
set black(say.en.autobroadcast.2) "\005\[BT\]\005 FAILED: No entries matching for no. \001%msg.1%\001 in my \002AutoBroadcast List\002."
set black(say.en.autobroadcast.3) "\005\[BT\]\005 \002AUTOBROADCAST\002 is already enabled."
set black(say.en.autobroadcast.4) "\005\[BT\]\005 \002AUTOBROADCAST\002 module turned \001ON\001."
set black(say.en.autobroadcast.5) "\005\[BT\]\005 \002AUTOBROADCAST\002 module turned \001OFF\001."
set black(say.en.autobroadcast.6) "\005\[BT\]\005 AutoBroadcast with no. \001%msg.2%\001 added in my database list."
set black(say.en.autobroadcast.7) "#\002%msg.1%\002) %msg.8%"
set black(say.en.autobroadcast.8) "\005\[BT\]\005 There are no \002AutoBroadcasts\002 in my database list..."
set black(say.en.autobroadcast.9) "\005\[BT\]\005 \002AutoBroadcasts List\002 is:"
set black(say.en.autobroadcast.10) "\005\[BT\]\005 *** END AutoBroadcasts List ***"
set black(say.en.autobroadcast.11) "\005\[BT\]\005 Removed no. \001%msg.1%\001 from AutoBroadcasts List."
set black(say.en.autobroadcast.12) "\005\[BT\]\005 To see the next set of entries, type: \001%char%bt list -next\001 (\002%counter%\002 AutoBroadcasts left)"

################################# Limit ######################################

set black(say.en.limit.5) "\005\[BT\]\005 \002AutoLimit\002 module turned \001ON\001 in \002%chan%\002."
set black(say.en.limit.6) "\005\[BT\]\005 Current channel limit is \002%msg.1%\002."
set black(say.en.limit.7) "\005\[BT\]\005 \002AutoLimit\002 module turned \001OFF\001 in \002%chan%\002."
set black(say.en.limit.9) "\005\[BT\]\005 FAILED: You cannot set limit less than \0022\002."
set black(say.en.limit.10) "\005\[BT\]\005 Setting limit to \002+2\002."
set black(say.en.limit.11) "\005\[BT\]\005 FAILED: You cannot set limit higher than \002500\002."
set black(say.en.limit.12) "\005\[BT\]\005 Channel limit successfully set to: \002+%msg.1%\002"

################################# Topic ######################################

set black(say.en.topic.1) "\005\[BT\]\005 Topic for \002%chan%\002 is now: \001%msg%\001"
set black(say.en.topic.2) "\005\[BT\]\005 I can not set the topic because \002it's empty\002."
set black(say.en.topic.3) "\005\[BT\]\005 Topic for \002%chan%\002 is now: \001%msg%\001 (current topic)"
set black(say.en.topic.4) "\005\[BT\]\005 Reset topic from \002%chan%\002"

####################################### Seen ######################################

set black(say.en.seen.4) "\005\[BT\]\005 \002%msg.1%\002 I am right here :P"
set black(say.en.seen.5) "\005\[BT\]\005 Wait\002 1 minute\002 to search."
set black(say.en.seen.6) "\005\[BT\]\005 \001%msg.1%\001 look in a mirror :0"
set black(say.en.seen.7) "\005\[BT\]\005 \001%msg.1%\001 is in \002%chan%\002. Get a pair of glasses.."
set black(say.en.seen.8) "i have no record how long it stayed."
set black(say.en.seen.9) "after it stayed \002%staytime%\002 on \001%chan%\001."
set black(say.en.seen.10) " \002%newnick%\002 is still on \002%chan%\002."
set black(say.en.seen.11) " Unable to see \002%userentry%\002 right now on \002%chan%\002"
set black(say.en.seen.12) "\005\[BT\]\005 \002%entry%\002 (%host%) left \001%chan%\001 about %output% ago %date%, with message: %reason%, %staymsg%"
set black(say.en.seen.13) "\005\[BT\]\005 \002%entry%\002 (%host%) left IRC %output% ago %date%, with message: %reason%, %staymsg%"
set black(say.en.seen.14) "\005\[BT\]\005 \002%entry%\002 (%host%) joined %chan% %output% ago %date%.%nowon%"
set black(say.en.seen.15) "\005\[BT\]\005 \002%entry%\002 (%host%) left in *.net *.split %output% ago %date%, %staymsg%"
set black(say.en.seen.16) "\005\[BT\]\005 \002%entry%\002 (%host%) was kicked out from %chan% %output% ago %date% with reason (%reason%), %staymsg%"
set black(say.en.seen.17) "\005\[BT\]\005 \002%entry%\002 (%host%) changed his/her nickname in %newnick% %output% ago %date%.%nowon%"
set black(say.en.seen.18) "\005\[BT\]\005 I dont remember seeing \002%msg.1%\002 lately.."
set black(say.en.seen.19) " \002%latest%\002 is still on \002%chan%\002."
set black(say.en.seen.20) " Unable to see \002%latest%\002 right now on \002%chan%\002."
set black(say.en.seen.21) "\005\[BT\]\005 Found (\002%num%\002) results \"%entry%\". Most recently \002%latest%\002 (%host%) left %chan% about %output% ago %date% with message: \"%reason%\", %staymsg%"
set black(say.en.seen.22) "\005\[BT\]\005 Found (\002%num%\002) results \"%entry%\". Most recently \002%latest%\002 (%host%) left IRC about %output% ago %date% with message: \"%reason%\", %staymsg%"
set black(say.en.seen.23) "\005\[BT\]\005 Found (\002%num%\002) results \"%entry%\". Most recently \002%latest%\002 (%host%) joined %chan% about %output% ago %date%.%nowon%"
set black(say.en.seen.24) "\005\[BT\]\005 Found (\002%num%\002) results \"%entry%\". Most recently \002%latest%\002 (%host%) left in *.net *.split %output% ago %date%, %staymsg%"
set black(say.en.seen.25) "\005\[BT\]\005 Found (\002%num%\002) results \"%entry%\". Most recently \002%latest%\002 (%host%) was kicked out from %chan% about %output% ago %date% with reason \"%reason%\", %staymsg%"
set black(say.en.seen.26) "\005\[BT\]\005 Found (\002%num%\002) results \"%entry%\". Most recently \002%latest%\002 (%host%) changed his/her nickname in %newnick% about %output% ago %date%.%nowon%"
set black(say.en.seen.27) "%msg%"
set black(say.en.seen.28) "\005\[BT\]\005 Found more than (%msg.1%) results"
set black(say.en.seen.29) "\005\[BT\]\005 %entry% (%host%) was last seen on %chan%.%nowon%"
set black(say.en.seen.30) "\005\[BT\]\005 Found (%num%) results \"%entry%\". Most recently \002%latest%\002 (%host%) was last seen on %chan%.%nowon%"
set black(say.en.seen.31) "\005\[BT\]\005 As far as I know, \002%userentry%\002 hasnt said anything."
set black(say.en.seen.32) "\005\[BT\]\005 As far as I know, %output% ago, \002%userentry%\002 (%host%) said on %chan%: \"%lastmsg%\""
set black(say.en.seen.33) "\005\[BT\]\005 Found more than (\002%num%\002) results. Most recently \002%latest%\002 (%host%) left %chan% about %output% ago %date% with message: \"%reason%\", %staymsg%"
set black(say.en.seen.34) "\005\[BT\]\005 Found more than (\002%num%\002) results. Most recently \002%latest%\002 (%host%) left IRC about %output% ago %date% with message: \"%reason%\", %staymsg%"
set black(say.en.seen.35) "\005\[BT\]\005 Found more than (\002%num%\002) results. Most recently \002%latest%\002 (%host%) joined %chan% about %output% ago %date%.%nowon%"
set black(say.en.seen.36) "\005\[BT\]\005 Found more than (\002%num%\002) results. Most recently \002%latest%\002 (%host%) left in *.net *.split about %output% ago %date%, %staymsg%"
set black(say.en.seen.37) "\005\[BT\]\005 Found more than (\002%num%\002) results. Most recently \002%latest%\002 (%host%) was kicked out from %chan% about %output% ago %date% with reason: \"%reason%\", %staymsg%"
set black(say.en.seen.38) "\005\[BT\]\005 Found more than (\002%num%\002) results. Most recently \002%latest%\002 (%host%) changed his/her nickname in %newnick% about %output% ago %date%. %nowon%"
set black(say.en.seen.39) "\005\[BT\]\005 Heya %msg.1%, you need to know that \002%msg.2%\002 was looking for you with \002seen\002 on \002%chan%\002 about \002%msg.3%\002 ago."
set black(say.en.seen.40) "\005\[BT\]\005 Found more than (\002%num%\002) results. Most recently \002%latest%\002 (%host%) was last seen on %chan%.%nowon%"
set black(say.en.seen.41) "\005\[BT\]\005 Found more than (\002%num%\002) results. Please be more explicit."

################################# Greet ######################################

set black(say.en.greet.1) "\005\[BT\]\005 Set greet message for \002%chan%\002 as: \001%msg%\001"
set black(say.en.greet.2) "\005\[BT\]\005 \002Greet\002 module turned \001ON\001."
set black(say.en.greet.3) "\005\[BT\]\005 \002Greet\002 module turned \001OFF\001."

################################# Leave #######################################

set black(say.en.leave.1) "\005\[BT\]\005 Set leave message for \002%chan%\002 as: \001%msg%\001"
set black(say.en.leave.2) "\005\[BT\]\005 \002Leave\002 module turned \001ON\001."
set black(say.en.leave.3) "\005\[BT\]\005 \002Leave\002 module turned \001OFF\001."

################################# Idle ######################################

set black(say.en.idle.11) "\005\[BT\]\005 \002Idle-Deop\002 module turned \001ON\001 on \001%chan%\001."
set black(say.en.idle.12) "\005\[BT\]\005 \002Idle-Deop\002 module turned \001OFF\001 on \001%chan%\001."
set black(say.en.idle.14) "\005\[BT\]\005 \002Idle-Voice\002 module turned \001ON\001 on \001%chan%\001."
set black(say.en.idle.15) "\005\[BT\]\005 \002Idle-Voice\002 module turned \001OFF\001 on \001%chan%\001."
set black(say.en.idle.17) "\005\[BT\]\005 \001%msg.1%\001 is not on \002%chan%\002."
set black(say.en.idle.18) "\005\[BT\]\005 \001%msg.1%\001 is already in my database, adding as an exception only.."
set black(say.en.idle.19) "\005\[BT\]\005 I have added as an exception \001%msg.1%\001 with host \002%msg.2%\002 on \001%chan%\001."
set black(say.en.idle.20) "\005\[BT\]\005 \002Idle Exceptions List\002 for \001%chan%\001 is:"
set black(say.en.idle.21) "%msg%"
set black(say.en.idle.22) "\005\[BT\]\005 \002%msg.1%\002 is not in my database."
set black(say.en.idle.23) "\005\[BT\]\005 \002%msg.1%\002 is not added as an exception to idle."
set black(say.en.idle.24) "\005\[BT\]\005 \001%msg.1%\001 was removed from my \002Idle Exceptions List\002."
set black(say.en.idle.25) "\005\[BT\]\005 \002Idle-HalfOp\002 module turned \001ON\001 on \001%chan%\001."
set black(say.en.idle.26) "\005\[BT\]\005 \002Idle-HalfOp\002 module turned \001OFF\001 on \001%chan%\001."

################################# TCL ######################################

set black(say.en.tcl.2) "\005\[BT\]\005 *** END tcls List ***"
set black(say.en.tcl.3) "\005\[BT\]\005 Couldn't load the script: \001%msg.1%\001. Reason: \002%msg.8%\002"
set black(say.en.tcl.4) "\005\[BT\]\005 The script \002\"%msg.1%\"\002 is already loaded."
set black(say.en.tcl.5) "\005\[BT\]\005 The script \002\"%msg.1%\"\002 has been successfuly loaded."
set black(say.en.tcl.7) "\005\[BT\]\005 The script \002\"%msg.1%\"\002 is not loaded."
set black(say.en.tcl.8) "\005\[BT\]\005 Disabled the script \002\"%msg.1%\"\002."
set black(say.en.tcl.9) "\005\[BT\]\005 To see the next set of entries, type: \001%char%tcl list -next\001 (\002%counter%\002 tcls left)"
set black(say.en.tcl.10) "\005\[BT\]\005 \002TCL\002 list (those with bold are loaded) is:"
set black(say.en.tcl.12) "\005\[BT\]\005 \002\"%msg.1%\"\002 \002doesn't exists\002 in scripts."
set black(say.en.tcl.13) "\005\[BT\]\005 \002\"%msg.1%\"\002 exists but \002is not loaded\002"
set black(say.en.tcl.14) "\005\[BT\]\005 \002\"%msg.1%\"\002 exists and \002it's loaded\002"
set black(say.en.tcl.17) "%msg%."
set black(say.en.tcl.18) "\005\[BT\]\005 FAILED: You cannot unload this script!"
set black(say.en.tcl.19) "\005\[BT\]\005 FAILED: I was \002unable to download\002 the script \001%msg.1%\001 from the given link."
set black(say.en.tcl.20) "\005\[BT\]\005 Download completed! To load the script use: \002%char%tcl load %msg.1%\002"
set black(say.en.tcl.21) "\005\[BT\]\005 The script \002%msg.1%\002 is already downloaded."

#################################### Next #####################################

set black(say.en.next.1) "Welcome \002%nick%\002, please wait... As soon as a helper is free you will be voiced. Please do \002NOT\002 msg \002+v/+o\002. You are number \002%counter%\002 in line. Thank you!"
set black(say.en.next.2) "You are now being helped by \002%nick%\002. Please ask your question in \002one\002 line and \002wait\002 for an answer from your designated helper!"
set black(say.en.next.3) "\005\[BT\]\005 \001%msg.1%\001 was waiting for \002%msg.set%\002, please help him/her now :)"
set black(say.en.next.4) "\001%current%\001 now that you've been helped, please \002/part %chan%\002. If you have more questions, please \001/hop %chan%\001. Thank you!"
set black(say.en.next.5) "You are not permitted to idle in here. Please rejoin the channel when you require help"
set black(say.en.next.6) "\005\[BT\]\005 \002ATTENTION\002: \002%nick%\002 needs help on \002%chan%\002. This is number \002%counter%\002 in line."
set black(say.en.next.7) "\005\[BT\]\005 List of users awaiting help:"
set black(say.en.next.8) "\005\[BT\]\005 No one needs help at this time."
set black(say.en.next.9) "%msg%"
set black(say.en.next.11) "\005\[BT\]\005 \002ATTENTION\002: \002%current%\002 is being helped \002right now\002 by \002%nick%\002 (%hand%)"
set black(say.en.next.13) "\005\[BT\]\005 FAILED: \001%msg.1%\001 is in the help list, but hasn't been helped yet."
set black(say.en.next.14) "\005\[BT\]\005 FAILED: \001%msg.1%\001 is not in help list."
set black(say.en.next.15) "\005\[BT\]\005 \002ATTENTION\002: \002%current%\002 has received \002help\002 from \002%nick%\002 (%hand%)."
set black(say.en.next.17) "\005\[BT\]\005 FAILED: \002%msg.1%\002 has to receive help first \001%msg.1%\001"
set black(say.en.next.19) "\005\[BT\]\005 Skipped \002%msg.1%\002 (user has been moved to the end of the list)"

#################################### Quote #####################################

set black(say.en.quote.1) "\005\[BT\]\005 Successfully stored quote no. \002%msg.1%\002 to database."
set black(say.en.quote.2) "\005\[BT\]\005 *** END Quote List ***"
set black(say.en.quote.3) "\005\[BT\]\005 Quote \001#%msg.1%\001: %msg.8%"
set black(say.en.quote.4) "\005\[BT\]\005 \001%msg.1%\001 :: %msg.2% ::"
set black(say.en.quote.6) "#\002%msg.1%\002) %msg.8%"
set black(say.en.quote.7) "\005\[BT\]\005 No entries in \002Quote List\002 for \001%chan%\001"
set black(say.en.quote.8) "\005\[BT\]\005 \002Quote List\002 for \001%chan%\001 is:"
set black(say.en.quote.9) "\005\[BT\]\005 To see the next set of entries, type: \001%char%q list -next\001 (\002%counter%\002 quotes left)"
set black(say.en.quote.10) "\005\[BT\]\005 Successfully removed quote no. \001%msg.1%\001 from \002%chan%\002's database."
set black(say.en.quote.11) "\005\[BT\]\005 FAILED: I have no record of that quote."
set black(say.en.quote.12) "\005\[BT\]\005 \002\[Quote of Day\]\002"
set black(say.en.quote.13) "\005\[BT\]\005 FAILED: No entries matching for no. \001%msg.1%\001 in \002Quote List\002 of \002%chan%\002"
set black(say.en.quote.14) "\005\[BT\]\005 To see the next set of entries, type: \001%char%q %chan% list -next\001 (\002%counter%\002 quotes left)"
set black(say.en.quote.15) "\002Added by\002:"
set black(say.en.quote.16) "%msg%"
set black(say.en.quote.17) "\005\[BT\]\005 \002Quote\002 \001#%msg.1%: %msg.set%\001"
set black(say.en.quote.18) "\005\[BT\]\005 Other quote numbers: \002%msg%\002"
set black(say.en.quote.19) "\005\[BT\]\005 \002Quote\002: \001%msg%\001"
set black(say.en.quote.20) "Created on:"

#################################### Notes #####################################

set black(say.en.notes.1) "\005\[BT\]\005 Saved \002note\002 with no. \002%msg.1%\002 to your database."
set black(say.en.notes.2) "\005\[BT\]\005 Note sent to \002%msg.1%\002/%msg.2% users."
set black(say.en.notes.3) "\005\[BT\]\005 Note sent to \002%msg.1%\002/%msg.2% users. Invalid users: \001%msg.7%\001."
set black(say.en.notes.4) "\005\[BT\]\005 FAILED: No entries matching for no. #\002%msg.1%\002."
set black(say.en.notes.5) "\005\[BT\]\005 \002Note\002 #%msg.1%: \002Location\002: %msg.2% \002Since\002: %msg.3%"
set black(say.en.notes.6) "\005\[BT\]\005 \002Message\002: %msg%"
set black(say.en.notes.7) "\005\[BT\]\005 \002Note\002 #%msg.1%: \002Location\002: %msg.2% \002From\002: %msg.3% \002Since\002: %msg.4%"
set black(say.en.notes.8) "\005\[BT\]\005 Successfully removed note no. \002%msg.1%\002."
set black(say.en.notes.9) "\002Status\002: READ \002Message\002: "
set black(say.en.notes.10) "\002Status\002: UNREAD \002Message\002: "
set black(say.en.notes.11) "\005\[BT\]\005 You have \001%msg.1%\001 unread note(s) pending. Those are: \002%msg.7%\002. Total notes: \001%msg.2%\001"
set black(say.en.notes.12) "\005\[BT\]\005 You have \001%msg.1%\001 unread note(s) pending.. Total notes: \002%msg.2%\002"
set black(say.en.notesinbox.13) "\005\[BT\]\005 Type: \002%char%note read <number>\002 to view it."
set black(say.en.notesinbox.15) "\005\[BT\]\005 To see the next set of entries, type: \001%char%note inbox -next\001 (\002%counter%\002 notes left)"
set black(say.en.notesinbox.16) "\005\[BT\]\005 To see the next set of entries, type: \001%char%note %chan% inbox -next\001 (\002%counter%\002 notes left)"
set black(say.en.notes.13) "\005\[BT\]\005 FAILED: Your \002Notes List\002 is empty."
set black(say.en.notes.14) "\005\[BT\]\005 You have \002%msg.1%\002 personal notes added:"
set black(say.en.noteslist.15) "\005\[BT\]\005 To see the next set of entries, type: \001%char%note list -next\001 (\002%counter%\002 note-uri ramase)"
set black(say.en.noteslist.16) "\005\[BT\]\005 To see the next set of entries, type: \001%char%note %chan% list -next\001 (\002%counter%\002 note-uri ramase)"
set black(say.en.noteslist.13) "\005\[BT\]\005 Type: \002%char%note read <number>\002 to view it."
set black(say.en.notes.15) "\005\[BT\]\005 Erased \002ALL\002 notes from inbox."
set black(say.en.notes.16) "\005\[BT\]\005 Type: \002%char%note read <number>\002 to view it."
set black(say.en.notes.17) "NOTES_DISABLED"

#############################################################################################################################
#                                                                                                                           #
#                                                      COMMANDS                                                             #
#                                                                                                                           #
#############################################################################################################################

###################################### ReportNick #################################

set black(say.en.report.1) "\005\[BT\]\005 You're sending requests too fast. Calm down and try again after \002%msg.1% seconds\002. Thanks!"
set black(say.en.report.2) "\[REPORT\] Nick: \002%msg.1%\002 was reporter by: \001%msg.2%\001 ; Reason: \002%msg.8%\002"
set black(say.en.report.3) "\[REPORT\] Nick: \002%msg.1%\002 was reporter by: \001%msg.2%\001"
set black(say.en.report.4) "\005\[BT\]\005 Your report has been sent to our operators team. Thanks you!"
set black(say.en.report.5) "\005\[BT\]\005 You can't report yourself dork!!"

###################################### cp #####################################

set black(say.en.cp.1) "\005\[BT\]\005 Copy failure. (\002%msg.1%\002's BanList it's empty.)"
set black(say.en.cp.2) "\005\[BT\]\005 Copy failure. (\002%msg%\002 is not a valid channel.)"
set black(say.en.cp.3) "\005\[BT\]\005 Copy failure. (\002%msg%\002 there are no valid channels.)"
set black(say.en.cp.4) "\005\[BT\]\005 Copy done. (\002%msg.1%\002 copied recordings.)"
set black(say.en.cp.5) "\005\[BT\]\005 Copy done. (\002%msg.1%\002 users out of \001%msg.2%\001 copied.)"
set black(say.en.cp.6) "\005\[BT\]\005 Copy done. (\002%msg.1%\002 settings copied.)"
set black(say.en.cp.7) "\005\[BT\]\005 Copy done. (\002%msg.1%\002 badchans copied.)"

#################################### mySet ####################################

set black(say.en.myset.1) "\005\[BT\]\005 \002Language\002 is now set to: \001%msg.1%\001."
set black(say.en.myset.2) "\005\[BT\]\005 You will receive all bot messages via \002%msg.1%\001."
set black(say.en.myset.3) "\005\[BT\]\005 \002Autoinvite\002 is now set to: \001%msg.1%\001."
set black(say.en.myset.4) "\005\[BT\]\005 Your \002handle\002 is now set to: \001%msg.1%\001."
set black(say.en.myset.5) "\005\[BT\]\005 Unable to set language \001%msg.1%\001 because the file does not exists."
set black(say.en.myset.6) "\005\[BT\]\005 Your personal \002infoline\002 (greet) is now set to: \001%msg%\001."
set black(say.en.myset.7) "\005\[BT\]\005 Added \001%msg.1%\001 as your hostname."
set black(say.en.myset.8) "\005\[BT\]\005 Deleted \001%msg.1%\001 from hostnames database."
set black(say.en.myset.9) "\005\[BT\]\005 \001%msg.1%\001 is not in hostnames database."
set black(say.en.myset.10) "\005\[BT\]\005 Your \002mychan\002 is now set to: \001%msg.1%\001."
set black(say.en.myset.11) "\005\[BT\]\005 Your \001%msg.1%\001 has been reseted."
set black(say.en.myset.12) "\005\[BT\]\005 \002%msg.1%\002 is now set to: \001%msg.8%\001."
set black(say.en.myset.13) "\005\[BT\]\005 \002NoteExpire\002 is now set to: \001%msg.1%\001."
set black(say.en.myset.14) "\005\[BT\]\005 You have to specify 4 colors from those available. Available colors are:\002bold\002 \001underline\001 \0034red\003 \00312blue\003 \0033green\003 \0038yellow\003 \0037orange\003 \00310cyan\003 \00314grey\003 \0035brown\003 \0036purple\003 \00313pink\003 black"
set black(say.en.myset.15) "\005\[BT\]\005 One of the colors is invalid. Available colors are: \002bold\002 \001underline\001 \0034red\003 \00312blue\003 \0033green\003 \0038yellow\003 \0037orange\003 \00310cyan\003 \00314grey\003 \0035brown\003 \0036purple\003 \00313pink\003 black"
set black(say.en.myset.16) "\005\[BT\]\005 Your \002colors\002 are now set to: \001%msg%\001"
set black(say.en.myset.17) "\005\[BT\]\005 You have to specify one of the available chars. Available chars are: \001%msg%\001"
set black(say.en.myset.18) "\005\[BT\]\005 Your \002mychar\002 is now set to: \001%msg.1%\001"
set black(say.en.myset.19) "\005\[BT\]\005 You can now receive \002NOTES\002"
set black(say.en.myset.20) "\005\[BT\]\005 Yo can't receive \002NOTES\002 from now"

################################# Troll ######################################

set black(say.en.troll.5) "Constantly trolling, never learned to behave"
set black(say.en.troll.6) "Current miserable trolls (not wanted here) are: \002%msg%\002"

#################################### dr #######################################

set black(say.en.dr.5) "Drone/possible malware infection"

#################################### vr #######################################

set black(say.en.vr.5) "Infected/eXploited with a worm/virus, please clean your computer"

################################### Bot #######################################

set black(say.en.bot.5) "Possible BOT"
set black(say.en.bot.6) "For unban use: \002/msg %botnick% unbanme %chan% %msg%\002"
set black(say.en.bot.7) "Congratulations! Your ban from \002%chan%\002 has been removed. You can now rejoin!" 
set black(say.en.bot.8) "If *HUMAN* -> \002/msg %botnick% unbanme %chan%\002"

################################## b #####################################

set black(say.en.b.5) {"You are banned!"
			"Problem solved"
			"Houston, we have lift off"
			"well, you're UNWANTED"
			"Talk to the foot!"
			"Thank you, please drive through!"
			}
set black(say.en.b.6) "\005\[BT\]\005 The maximum duration for your ban level is \0027d\002 (20160 minutes)"
set black(say.en.b.7) "\005\[BT\]\005 Added a \[LOCAL\] ban to \002%chan%\002 with \[ID: \001%msg.1%\001\]"
set black(say.en.b.8) "\005\[BT\]\005 Added a \[GLOBAL\] ban with \[ID: \001%msg.1%\001\]"
set black(say.en.b.9) "\005\[BT\]\005 \002MassBan\002 is not allowed!"
set black(say.en.b.10) "\005\[BT\]\005 \002%msg.1%\002 is NOT a valid banmask."
set black(say.en.b.11) "\005\[BT\]\005 \002%msg.1%\002 is NOT a valid regex expression."
set black(say.en.b.12) "\005\[BT\]\005 Added a \[LOCAL\] REGEX ban to \002%chan%\002 with \[ID: \001%msg.1%\001\]"
set black(say.en.b.13) "\005\[BT\]\005 Added a \[GLOBAL\] REGEX ban with \[ID: \001%msg.1%\001\]"
set black(say.en.b.14) "\005\[BT\]\005 Added a \[LOCAL\] ban to \002%chan%\002 with \[ID: \001%msg.1%\001\] \[XONLY\]"

################################## n #####################################

set black(say.en.n.5) "Your NICKNAME is inappropiate for this channel. Please change it or face a ban."

################################## id ####################################

set black(say.en.id.5) "Your IDENT is inappropiate for this channel. Please change it or face a ban."

################################## Black #################################

set black(say.en.black.5) "You are no longer welcome here"

################################## w #####################################

set black(say.en.w.5) { "What you've been saying is inappropriate and will not be tolerated here. Please change your behaviour."
		        "Your behavior is not conducive to the desired environment."
		        "Your behaviour is inappropriate, please change your way of chatting."
		        "Please be friendly and watch your language"
		        }
set black(say.en.w.6) "This was the last warning. Next time you'll be banned!"

################################# spam ###################################

set black(say.en.spam.5) "MSG Advertising/Invite/Possible Spam"

################################# k #######################################

set black(say.en.k.1) "\005\[BT\]\005 Didn't found any user on %chan%."
set black(say.en.k.2) "\005\[BT\]\005 %msg.1% has access on %chan%"
set black(say.en.k.5)  {"Sorry, please rejoin so I can kick you again"
			"There's the exit, learn it well"
			"Oooops, I did it again"
			"go ewey"
			}

################################# Gag ######################################

set black(say.en.gag.1) "- ATTENTION - \002%gag%\002 still needs to serve a \001%minute%\001 penance for breaking the channel rules. Enjoy the sound of silence :-)"
set black(say.en.gag.2) "\005\[BT\]\005 *** END GAGList ***"
set black(say.en.gag.3) "\005\[BT\]\005 \002%msg.1%\002 has already GAGged on \001%chan%\001."
set black(say.en.gag.4) "\005\[BT\]\005 \002%msg.1%\002 is already Banned on \001%chan%\001."
set black(say.en.gag.5) "- ATTENTION - \002%nick%\002 can now type again on \002%chan%\002."
set black(say.en.gag.6) "N/A"
set black(say.en.gag.7) "\005\[BT\]\005 The maximum \002GAG duration\002 for your access level is \0017d\001 (20160 minutes)"
set black(say.en.gag.10) "\005\[BT\]\005 You have been silenced on \002%chan%\002 for \001%time%\001 because you are violating the channel \002rules\002."
set black(say.en.gag.11) "- ATTENTION - \002%gagger%\002 will be unable to type in \002%chan%\002 for \001%time%\001 because broke the channel \002rules\002."

################################# unGag #####################################

set black(say.en.ungag.5) "\005\[BT\]\005 There is no GAG for \001%msg.1%\001 on \002%chan%\002."
set black(say.en.ungag.6) "\005\[BT\]\005 Removed GAG for \001%msg.1%\001 on \002%chan%\002."
set black(say.en.ungag.7) "Now you can type again on \002%chan%\002. Please be more careful and do NOT break again the channel \002rules\002."
set black(say.en.ungag.8) "- ATTENTION - \002%gagger%\002 can now type again on %chan%."

################################ bw #########################################

set black(say.en.bw.5) "Unwanted user due to abusive behavior"

############################### sb ##########################################

set black(say.en.sb.1) "\005\[BT\]\005 Found \001%msg.1%\001 bans (\002%msg.2%\002 global, \002%msg.3%\002 local)"
set black(say.en.sb.2) "\005\[BT\]\005 There are \002NO\002 bans matching \001%msg.1%\001."
set black(say.en.sb.3) "\005\[BT\]\005 \002%msg.1%\002 | \[ID: %msg.2%\] | \[CHAN\]: * | \002%msg.3%\002 | Added by: \002%msg.4%\002 | Since: \002%msg.5%\002 | EXP: \002%msg.6%\002 | Reason: \002%msg.7%\002"
set black(say.en.sb.4) "\005\[BT\]\005 \002%msg.1%\002 | \[ID: %msg.2%\] | \[CHAN\]: \002%chan%\002 | \002%msg.3%\002 | Added by: \002%msg.4%\002 | Since: \002%msg.5%\002 | EXP: \002%msg.6%\002 | Reason: \002%msg.7%\002"
set black(say.en.sb.5) "\005\[BT\]\005 There are too many results (>10) matching. Please be more specific."
set black(say.en.sb.6) "\005\[BT\]\005 Found \002%msg.1%\002 local bans."
set black(say.en.sb.7) "\005\[BT\]\005 Said on chan: \002%msg%\002"
set black(say.en.sb.8) "\005\[BT\]\005 Co-channeling in bad channels: \002%msg%\002"
set black(say.en.sb.9) "\005\[BT\]\005 \002%msg.1%\002 | \[ID: %msg.2%\] | \[CHAN\]: \002%chan%\002 | \002%msg.3%\002 | Added by: \002%msg.4%\002 | Since: \002%msg.5%\002 | EXP: \002%msg.6%\002 | Reason: \002%msg.7%\002"
set black(say.en.sb.10) "\005\[BT\]\005 \002%msg.1%\002 | \[ID: %msg.2%\] | \[CHAN\]: * | \002%msg.3%\002 | Added by: \002%msg.4%\002 | Since: \002%msg.5%\002 | EXP: \002%msg.6%\002 | Reason: \002%msg.7%\002"
set black(say.en.sb.11) "\005\[BT\]\005 There is \002NO\002 such ID record matching \001%msg.1%\001."
set black(say.en.sb.12) "\005\[BT\]\005 \[\002BAN COMMENT\002\] %msg%"

############################### Stick ########################################

set black(say.en.stick.5) "Sticky ban"

################################## BanList ##################################### 

set black(say.en.banlist.1) "Permanent"
set black(say.en.banlist.2) "\005\[BT\]\005 \[CHAN\]: * (\002%msg.1%\002 bans found)"
set black(say.en.banlist.3) "\005\[BT\]\005 To see the next set of entries, type \001%char%banlist global -next\001 (\002%counter%\002 bans left)"
set black(say.en.banlist.4) "\005\[BT\]\005 *** END BanList ***"
set black(say.en.banlist.5) "\005\[BT\]\005 \002%msg.2%\002 ; \[ID: %msg.1%\] ; \002%msg.3%\002 ; Added by: \002%msg.4%\002 ; Since: \002%msg.12%\002 ; EXP: \002%msg.13%\002 \002%msg.15%\002 \002%msg.17%\002 ; Reason: \002%msg.20%\002"
set black(say.en.banlist.6) "\005\[BT\]\005 \[CHAN\]: %chan% (\002%msg.1%\002 bans found)"
set black(say.en.banlist.7) "\005\[BT\]\005 \[USER\]: %msg.2% (\002%msg.1%\002 bans found)"
set black(say.en.banlist.8) "\005\[BT\]\005 To see the next set of entries, type %char%banlist \002%user%\002 -next (\002%counter%\002 bans left)"
set black(say.en.banlist.9) "\005\[BT\]\005 \002%msg.2%\002 ; \[ID: %msg.1%\] ; \002%msg.3%\002 ; Since: \002%msg.4%\002 ; EXP: %msg.12% \002%msg.13%\002 \002%msg.15%\002 ; Reason: \002%msg.16%\002"
set black(say.en.banlist.10) "\005\[BT\]\005 To see the next set of entries, type %char%banlist all -next (\002%counter%\002 bans left)"
set black(say.en.banlist.11) "\005\[BT\]\005 \002%msg.2%\002 ; \[ID: %msg.1%\] ; \002%msg.3%\002 ; Added by: \002%msg.4%\002 ; Since: \002%msg.12%\002 ; EXP: \002%msg.13%\002 ; Reason: \002%msg.14%\002"
set black(say.en.banlist.12) "\005\[BT\]\005 \002%msg.2%\002 ; \[ID: %msg.1%\] ; \002%msg.3%\002 ; Since: \002%msg.4%\002 ; EXP: \002%msg.12%\002 ; Reason: \002%msg.11%\002"
set black(say.en.banlist.13) "NEVER"
set black(say.en.banlist.14) "\005\[BT\]\005 To see the next set of entries, type \001%char%banlist %chan% all -next\001 (\002%counter%\002 bans left)"
set black(say.en.banlist.15) "\005\[BT\]\005 To see the next set of entries, type \001%char%banlist %chan% other -next\001 (\002%counter%\002 bans left)"

############################### Status #######################################

set black(say.en.status.1) "\005\[BT\]\005 Script version: \001%msg.1% %msg.2%\001 - Eggdrop version: \002%msg.3%\002 - TCL version: \001%msg.12%\003"
set black(say.en.status.2) "\005\[BT\]\005 Started time: \002%msg%\002"
set black(say.en.status.3) "\005\[BT\]\005 Online time: \002%msg%\002"
set black(say.en.status.4) "\005\[BT\]\005 Channels monitored: \002%msg%\002"
set black(say.en.status.5) "\005\[BT\]\005 Total users: \001%msg.1%\001 - Eggdrop owner: \002%msg.2%\002"

############################## upTime #######################################

set black(say.en.uptime.2) "\005\[BT\]\005 Server uptime: \002%msg%\002"
set black(say.en.uptime.3) "\005\[BT\]\005 Connected to: \002%msg%\002"

################################ i ##########################################

set black(say.en.i.1) "\005\[BT\]\005 \001%msg.1%\001 is already on \002%chan%\002."
set black(say.en.i.2) "\005\[BT\]\005 Inviting \001%msg.1%\001 to \002%chan%\002."
set black(say.en.i.7) "You are invited in \002%chan%\002 by\001 %nick%\001, to join type:\002 /join %chan%\002. Thanks!"

################################ Cycle #####################################

set black(say.en.cycle.1) { "Doing exercise.."
			    "Trying to fix something.."
			    "Coming back.."
			    "I'll return in a moment.."
			    }
set black(say.en.cycle.2) "I'll be back in %msg.1% seconds.."

################################ Purge #####################################

set black(say.en.purge.1) "\005\[BT\]\005 Please specify a reason.."

################################## Chat #####################################

set black(say.en.chat.1) "\005\[BT\]\005 DCC Chat - Initializing..."
set black(say.en.chat.2) "\005\[BT\]\005 You have not set a password, please do so now: /msg %botnick% pass \001<your password>\001"

################################## Version ##################################

set black(say.en.version.1) "\005\[BT\]\005 SCRIPT VERSION: \001BlackTools %msg.1%\001 (Last update: %msg.8%) coded by \002BLaCkShaDoW\002. For other details ---= \002WwW.TclScripts.Net\002 or #TCL-HELP @ UNDERNET"

################################# ub ######################################

set black(say.en.ub.1) "\005\[BT\]\005 I haven't found any bans matching \002%msg.1%\002"
set black(say.en.ub.2) "\005\[BT\]\005 Removed \001%msg.1%\001 bans (\002%msg.2%\002 found) that matched \001%msg.3%\001"
set black(say.en.ub.3) "\005\[BT\]\005 I haven't found any \[GLOBAL\] bans that matched \002%msg.1%\002"
set black(say.en.ub.4) "\005\[BT\]\005 Removed \001%msg.1%\001 \[GLOBAL\] bans that matched \002%msg.2%\003"
set black(say.en.ub.5) "\005\[BT\]\005 You don't have enough access to delete BanList."
set black(say.en.ub.6) "\005\[BT\]\005 Ban removed from \002%chan%\002's BanList."
set black(say.en.ub.7) "\005\[BT\]\005 Removed \001%msg.1%\001 bans from \002%msg.2%\002 channels \002LINKED\002"
set black(say.en.ub.8) "\005\[BT\]\005 I haven't found any bans matching \[ID: \002%msg.1%\002\]"
set black(say.en.ub.9) "\005\[BT\]\005 Removed ban with \[ID: \002%msg.3%\003\]"
set black(say.en.ub.10) "\005\[BT\]\005 Removed \[GLOBAL\] ban that matched \[ID: \002%msg.2%\003\]"
set black(say.en.ub.11) "\005\[BT\]\005 I haven't found any \[GLOBAL\] bans matching the \[ID: \002%msg.1%\002\]"

################################## Mode ###################################

set black(say.en.mode.6) "\005\[BT\]\005 Done! Modes \001%msg.1%\001 set on \002%chan%\002."

################################### Set ###################################

set black(say.en.set.1) "\005\[BT\]\005 Set \001%msg.1%\001 \004%msg.set%\004 ."
set black(say.en.set.2) "\005\[BT\]\005 FAILED: Unable to set \001%msg.1%\001 \004%msg.set%\004"
set black(say.en.set.3) "\005\[BT\]\005 \001%msg.1%\001 is already set to \002%msg.set%\002 on \002%chan%\002"
set black(say.en.set.4) "\005\[BT\]\005 \001%msg.1%\001 is already set on \002%chan%\002."
set black(say.en.set.5) "\005\[BT\]\005 FAILED: Unable to set \001%msg.1%\001 on \002%chan%\002"
set black(say.en.set.6) "\005\[BT\]\005 Set \001%msg.1%\001 for \002%chan%\002"
set black(say.en.set.7) "\005\[BT\]\005 FAILED: Unable to set \001%msg.1%\001 \004%msg.set%\004 on \002%chan%\002."
set black(say.en.set.8) "\005\[BT\]\005 Set \001%msg.1%\001 \004%msg.set%\004 for \002%chan%\002"
set black(say.en.set.9) "\005\[BT\]\005 \001%msg.1%\001 is already set to \002%msg.set%\002"
set black(say.en.set.14) "\005\[BT\]\005 Invalid setting."

#################################### unSet #################################

set black(say.en.unset.1) "\005\[BT\]\005 There is no setting that matches \002%msg.1%\002."
set black(say.en.unset.2) "\005\[BT\]\005 Reset \001%msg.1%\001 on \002%chan%\002 to the default value."
set black(say.en.unset.3) "\005\[BT\]\005 \001%msg.1%\001 is not set on \002%chan%\002."
set black(say.en.unset.4) "\005\[BT\]\005 Disabled all \002flag\002 settings from \001%chan%\001."
set black(say.en.unset.5) "\005\[BT\]\005 Disabled all \002string\002 settings from \001%chan%\001."

#################################### Timer ####################################

set black(say.en.timer.1) "\005\[BT\]\005 Active timers are:"
set black(say.en.timer.2) "\001%msg.1%\001) PID: \002%msg.2%\002 | Activ Time: \001%msg.3%\001 minutes | Process name: \002%msg.4%\002"
set black(say.en.timer.3) "\001%msg.1%\001) PID: \002%msg.2%\002 | Activ Time: \001%msg.3%\001 seconds | Process name: \"\002%msg.9%\002\""
set black(say.en.timer.4) "\005\[BT\]\005 *** END Timers List ***"
set black(say.en.timer.5) "\005\[BT\]\005 Timer with pid \002%msg.1%\002 was killed."
set black(say.en.timer.6) "\005\[BT\]\005 There is no such timer matching pid \002%msg.1%\002"
set black(say.en.timer.7) "\005\[BT\]\005 Timer started with pid \002%msg.1%"
set black(say.en.timer.8) "\005\[BT\]\005 There is already a timer started of that process."

#################################### Ignore ################################

set black(say.en.ignore.2) "\005\[BT\]\005 Can't ignore because the host belongs to a user who has greater access than you."
set black(say.en.ignore.3) "\005\[BT\]\005 There are no ignores."
set black(say.en.ignore.4) "\005\[BT\]\005 Mask: \001%msg.1%\001 | Added by: \002%msg.2%\002 | Reason: \001%msg.6%\001 | EXP: \002%msg.3%\002"
set black(say.en.ignore.5) "\005\[BT\]\005 FAILED: \002%msg.1%\002 has ignore already."
set black(say.en.ignore.6) "\005\[BT\]\005 Added ignore for \001%msg.1%\001 with reason: \002%msg.7%\002 expires after: \001%msg.2%\001"
set black(say.en.ignore.8) "\005\[BT\]\005 Can't find \002%msg.1%\002 in the ignore list."
set black(say.en.ignore.9) "\005\[BT\]\005 Removed ignore: \002%msg.1%\002."

################################## Show ####################################

set black(say.en.show.4) "\005\[BT\]\005 Current \001%msg.1%\001 is set to: \002%msg.2%\002. Time remain to the next timer: \002%msg.3%\002 minutes"
set black(say.en.show.5) "\005\[BT\]\005 I could not get any info about \002%msg.1%\002."
set black(say.en.show.6) "\005\[BT\]\005 Current \001%msg.1%\001 is set to: \002%msg.8%\002 on \002%chan%\002."
set black(say.en.show.7) "\005\[BT\]\005 Currently \002%msg.1%\002 is enabled on \002%chan%\002."
set black(say.en.show.8) "\005\[BT\]\005 Currently \002%msg.1%\002 is disabled on \002%chan%\002."

################################### Rehash #####################################

set black(say.en.rehash.1) "\005\[BT\]\005 Reloading scripts/settings.."

################################### Restart ####################################

set black(say.en.restart.1) "\005\[BT\]\005 System Reset. Back in a few.."

################################### Save #######################################

set black(say.en.save.1) "\005\[BT\]\005 Saving files.."

################################### Jump #######################################

set black(say.en.jump.1) "\005\[BT\]\005 Changing server to: %msg%"

################################### Die #######################################

set black(say.en.die.1) "\005\[BT\]\005 Suicide committed.."
set black(say.en.die.2) "\005\[BT\]\005 ** BOOM ** This BlackTools eggdrop was terminated.." 

################################### Nick #####################################

set black(say.en.nick.1) "\005\[BT\]\005 Changing nickname to \002%msg.1%\002 (permanent setting)"
set black(say.en.nick.2) "\005\[BT\]\005 Use: \"nick <new nick>\""
set black(say.en.nick.3) "\005\[BT\]\005 Attention! The nickname was changed only until the next restart (check if \"set nick\" setting exist in your eggdrop config)."
set black(say.en.nick.4) "\005\[BT\]\005 Changing nickname to \002%msg.1%\002 (temporary setting)"

################################### AddChan ##################################

set black(say.en.addchan.2) "\005\[BT\]\005 \002%msg.1%\002 is already in my channel list."
set black(say.en.addchan.3) "\005\[BT\]\005 Added \002%msg.1%\002 in my channel list."

################################### DelChan ##################################

set black(say.en.delchan.1) "Channel %chan% was removed by \002%hand%\002 with the reason: %reason%"
set black(say.en.delchan.2) "\005\[BT\]\005 \002%msg.1%\002 is not in my channel list."
set black(say.en.delchan.3) "\005\[BT\]\005 Removed \002%msg.1%\002 from my channel list."
set black(say.en.delchan.5) "\005\[BT\]\005 Unable to delete the channel \001%msg.1%\001 because it's the eggdrop \002HOMECHAN\002."

################################### Suspend ##################################

set black(say.en.suspend.2) "\005\[BT\]\005 Channel \002%chan%\002 was suspended by \001%hand%\001 with the reason: \002%reason%\002"
set black(say.en.suspend.3) "\005\[BT\]\005 \002%msg.1%\002 is already suspend." 
set black(say.en.suspend.4) "\005\[BT\]\005 Channel \002%msg.1%\002 is now suspended."

################################### unSuspend ##################################

set black(say.en.unsuspend.3) "\005\[BT\]\005 \002%msg.1%\002 isn't suspended."
set black(say.en.unsuspend.4) "\005\[BT\]\005 Suspension for channel \002%msg.1%\002 is cancelled."

################################### add #########################################

set black(say.en.add.5) "\005\[BT\]\005 There is \002already another user\002 in my database with the same host known as \001%msg.1%\001."
set black(say.en.add.6) "\005\[BT\]\005 Unable to add \002%msg.1%\002 because it is higher than your access level."
set black(say.en.add.7) "\005\[BT\]\005 Unable to add \002%msg.2%\002 because this is your access level."
set black(say.en.add.8) "\005\[BT\]\005 Unable to add \002%msg.3%\002 because this is your access level."
set black(say.en.add.10) "\005\[BT\]\005 Added user \001%msg.1%\001 with hostmask: \002%msg.2%\002"
set black(say.en.add.17) "\005\[BT\]\005 User \001%msg.1%\001 is too long. Was automatically truncated to \002%msg.2%\002"
set black(say.en.add.18) "\005\[BT\]\005 Please use a valid user format containing only alphanumeric characters."
set black(say.en.add.19) "\005\[BT\]\005 \001%msg.1%\001 it has \002%msg.2%\002 level access on \002%chan%\002"
set black(say.en.add.20) "\005\[BT\]\005 \001%msg.1%\001 it has \002%msg.2%\002 level access."

################################### DelAcc #########################################

set black(say.en.delacc.1) "\005\[BT\]\005 Removed \001%msg.1%\001's access from \002%chan%\002."
set black(say.en.delacc.2) "\005\[BT\]\005 Removed \002OWNER\002 access of \001%msg.1%\001."
set black(say.en.delacc.3) "\005\[BT\]\005 Has no \002OWNER\002 access."
set black(say.en.delacc.4) "\005\[BT\]\005 Removed \002MASTER\002 access of \001%msg.1%\001."

#################################### Del ###########################################

set black(say.en.del.1) "\005\[BT\]\005 Deleted \002%msg.1%\002 out of my memory.."
set black(say.en.del.2) "\005\[BT\]\005 Unable to delete the user \001%msg.1%\001 because has access on other channels. Use: \002delacc %msg.1%\002"

################################### AddHost ########################################

set black(say.en.addhost.1) "\005\[BT\]\005 Hostmask \001%msg.2%\001 already exists in \002%msg.1%\002's database."
set black(say.en.addhost.2) "\005\[BT\]\005 Added hostmask \001%msg.2%\001 for user \002%msg.1%\002."

################################### DelHost ########################################

set black(say.en.delhost.1) "\005\[BT\]\005 Hostmask \001%msg.2%\001 does not exist in \002%msg.1%\002's database."
set black(say.en.delhost.2) "\005\[BT\]\005 Removed hostmask \001%msg.2%\001 from user \002%msg.1%\002."

################################### chUser ########################################

set black(say.en.chuser.1) "\005\[BT\]\005 Changed \001%msg.1%\001's handle in: \002%msg.2%\002."
set black(say.en.chuser.2) "\005\[BT\]\005 Changed your handle in: \002%msg.1%\002."
set black(say.en.chuser.3) "\005\[BT\]\005 There is already a user with the same handle. Please choose another one."

################################### UserList ########################################

set black(say.en.userlist.1) "\005\[BT\]\005 %msg%"
set black(say.en.userlist.2) "\005\[BT\]\005 There are \001%msg.1%\001 users with access on \002%chan%\002."

#################################### Channels #####################################

set black(say.en.channels.1) "\005\[BT\]\005 I have \002%msg.1%\002 channels.."
set black(say.en.channels.2) "%msg%"
set black(say.en.channels.3) "\002OK\002"
set black(say.en.channels.4) "\002NOT ON CHAN\002"
set black(say.en.channels.5) "\002SUSPENDED\002"
set black(say.en.channels.6) "\002AUTOSUSPEND\002"
set black(say.en.channels.7) "\002Users\002"
set black(say.en.channels.8) "\002Invisible\002"

#################################### Info ########################################

set black(say.en.info.1) "\005\[BT\]\005 \[USER\] \002%msg.1%\002 ACCESS level: \002%msg.8%\002"
set black(say.en.info.2) "\005\[BT\]\005 \[CHAN\] \002%msg.1%\002 -- AUTOMODE: \001%msg.2%\001 -- STATS: \002%char%stats %msg.3%\002"
set black(say.en.info.3) "\005\[BT\]\005 \[Info\] %msg%"
set black(say.en.info.4) "\005\[BT\]\005 \[Last modified by\] \002%msg.1%\002 on: \001%msg.8%\001"
set black(say.en.info.5) "\005\[BT\]\005 \[Last ONLINE seen\] \001%msg.1%\001"
set black(say.en.info.6) "\005\[BT\]\005 \[HOSTS\] \002%msg%\002"
set black(say.en.info.7) "\005\[BT\]\005 ** SUSPENDED ** - Expires in \001%msg.1%\001 %msg.2% %msg.3% (Level \002%msg.4%\002) - Reason: \002%msg.10%\002"
set black(say.en.info.8) "\005\[BT\]\005 \[Channels with access\] %msg%."
set black(say.en.info.9) "\005\[BT\]\005 ** GLOBAL SUSPENDED ** - Expires in \001%msg.1%\001 %msg.2% %msg.3% (Level \002%msg.4%\002) - Reason: \002%msg.10%\002"
set black(say.en.info.10) "\005\[BT\]\005 \[Last ONLINE seen\] \001%msg.1%\001 in: \002%msg.2%\002"
set black(say.en.info.11) "\005\[BT\]\005 \[USER\] \002%msg.1%\002"
set black(say.en.info.12) "\005\[BT\]\005 Found (%msg.1%) records: \002%msg.8%\002."
set black(say.en.info.13) "\005\[BT\]\005 Found (%msg.1%) records. Please restrict your search." 
set black(say.en.info.14) "\005\[BT\]\005 For more info about the right one, type \002%char%info <user>\002"
set black(say.en.info.15) "\005\[BT\]\005 \[CHAN\] \002%msg.1%\002 -- modes: \002%msg.8%\002"
set black(say.en.info.16) "\005\[BT\]\005 \[MANAGER\] \002%msg%\002"
set black(say.en.info.17) "\005\[BT\]\005 \[TOPIC\] \002%msg%\002"
set black(say.en.info.18) "\005\[BT\]\005 \[URL\] \002%msg%\002"
set black(say.en.info.19) "\005\[BT\]\005 \[STATUS\] \002%msg%\002"
set black(say.en.info.20) "\005\[BT\]\005 \[REGISTERED\] \002%msg.1%\002 (\002%msg.8%\002)"
set black(say.en.info.21) "\005\[BT\]\005 \[STATS\] joins: \002%msg.1%\002 | users: \002%msg.2%\002 (%msg.3% with access) | bans: \002%msg.4%\002 | seen: \002%msg.5%\002"
set black(say.en.info.22) "\001SUSPENDED\001"
set black(say.en.info.23) "\001NOT on chan\001"
set black(say.en.info.24) "\001NO OP\001"
set black(say.en.info.25) "\005\[BT\]\005 \[CHAN\] \002%msg.1%\002 -- AUTOMODE: \002%msg.2%\002 -- Flags: \002%msg.3%\002 -- STATS: \002%char%activ %msg.4%\002"
set black(say.en.info.26) "AUTOSUSPENDED -- Reason: channel is full (+l)"
set black(say.en.info.27) "AUTOSUSPENDED -- Reason: channel requires key (+k)"
set black(say.en.info.28) "AUTOSUSPENDED -- Reason: channel is invite only (+i)"
set black(say.en.info.29) "AUTOSUSPENDED -- Reason: banned (+b)"
set black(say.en.info.30) "NOT ON CHAN -- Reason: unable to join channel (+l)"
set black(say.en.info.31) "NOT ON CHAN -- Reason: unable to join channel (+k)"
set black(say.en.info.32) "NOT ON CHAN -- Reason: unable to join channel (+i)"
set black(say.en.info.33) "NOT ON CHAN -- Reason: unable to join channel (+b)"
set black(say.en.info.34) "NOT ON CHAN -- Reason: unable to join channel (+r)"
set black(say.en.info.35) "AUTOSUSPENDED -- Reason: registered users only (+r)"
set black(say.en.info.36) "\005\[BT\]\005 \[Settings\] \001%msg%\001"
set black(say.en.info.37) "\[BT\] \[BLACKLIST\] %msg%"

################################## s #############################################

set black(say.en.s.1) "\005\[BT\]\005 \001%msg.1%\001's access on \002%chan%\002 is already suspended."
set black(say.en.s.2) "\005\[BT\]\005 \001%msg.1%\001's access on \002%chan%\002 is now suspended."
set black(say.en.s.3) "No reason supplied."
set black(say.en.s.4) "\005\[BT\]\005 \001%msg.1%\001's access is already suspended by someone with higher level."
set black(say.en.s.5) "\005\[BT\]\005 \001%msg.1%\001's access was GLOBALLY suspended."

################################## us #############################################

set black(say.en.us.1) "\005\[BT\]\005 \001%msg.1%\001 isn't suspended on \002%chan%\002."
set black(say.en.us.2) "\005\[BT\]\005 SUSPENSION for \001%msg.1%\001 on \002%chan%\002 is cancelled."
set black(say.en.us.3) "\005\[BT\]\005 Global SUSPENSION for \001%msg.1%\001 is cancelled."
set black(say.en.us.4) "\005\[BT\]\005 \002%msg.1%\002 is suspended by a user with higher access."

################################## r ##############################################

set black(say.en.r.1) {	"Refreshing topic pls wait...."
			"Refreshing topic please hold on...."
				}
set black(say.en.r.2) "\005\[BT\]\005 Cannot proceed. There is no topic set."

################################## Auto ##########################################

set black(say.en.auto.6) "\005\[BT\]\005 Set your global AUTOMODE to \002OP\002 (+o)"
set black(say.en.auto.7) "\005\[BT\]\005 Set your global AUTOMODE to \002VOICE\002 (+v)"
set black(say.en.auto.8) "\005\[BT\]\005 Set your AUTOMODE to \002OP\002 (+o) on %chan%"
set black(say.en.auto.9) "\005\[BT\]\005 Set your AUTOMODE to \002VOICE\002 (+v) on %chan%"
set black(say.en.auto.10) "\005\[BT\]\005 Set AUTOMODE to \002OP\002 (+o) for %msg.1% on %chan%"
set black(say.en.auto.11) "\005\[BT\]\005 Set AUTOMODE to \002VOICE\002 (+v) for %msg.1% on %chan%"
set black(say.en.auto.12) "\005\[BT\]\005 Set global AUTOMODE to \002OP\002 (+o) for %msg.1%"
set black(say.en.auto.13) "\005\[BT\]\005 Set global AUTOMODE to \002VOICE\002 (+v) for %msg.1%"
set black(say.en.auto.14) "\005\[BT\]\005 Your global AUTOMODE \002OP\002 (+o) was removed."
set black(say.en.auto.15) "\005\[BT\]\005 Your global AUTOMODE \002VOICE\002 (+v) was removed."
set black(say.en.auto.16) "\005\[BT\]\005 Your AUTOMODE \002OP\002 (+o) was removed on %chan%"
set black(say.en.auto.17) "\005\[BT\]\005 Your AUTOMODE \002VOICE\002 (+v) was removed on %chan%"
set black(say.en.auto.18) "\005\[BT\]\005 Removed AUTOMODE \002OP\002 (+o) of %msg.1% on %chan%"
set black(say.en.auto.19) "\005\[BT\]\005 Removed AUTOMODE \002VOICE\002 (+v) of %msg.1% on %chan%"
set black(say.en.auto.20) "\005\[BT\]\005 Removed global AUTOMODE \002OP\002 (+o) of %msg.1%"
set black(say.en.auto.21) "\005\[BT\]\005 Removed global AUTOMODE \002VOICE\002 (+v) of %msg.1%"

################################# Login #########################################

set black(say.en.login.1) "\005\[BT\]\005 Logging to \002%msg.1%\002.."
set black(say.en.login.2) "\005\[BT\]\005 I am already logged to \002%msg.1%\002.."
set black(say.en.login.3) "\005\[BT\]\005 I couldn't login. Please check the login informations or if ChanServ (X, Q, L) is online."
set black(say.en.login.4) "\005\[BT\]\005 Login unsuccesful (Wrong password)"
set black(say.en.login.5) "\005\[BT\]\005 Login succeded"
set black(say.en.login.6) "\005\[BT\]\005 Login unsuccesful (Maximum concurrent logins exceeded)"
set black(say.en.login.7) "\005\[BT\]\005 Login unsuccesful (No username specified)"
set black(say.en.login.8) "\005\[BT\]\005 Login unsuccesful (Invalid Username)"
set black(say.en.login.9) "\005\[BT\]\005 Ma identific la NICKSERV..."
set black(say.en.login.10) "\005\[BT\]\005 Successful identification with NickServ"
set black(say.en.login.11) "\005\[BT\]\005 Failed to identify with NickServ (Wrong password)"
set black(say.en.login.13) "Wrong password"
set black(say.en.login.15) "This nickname is owned by someone else"
set black(say.en.login.16) "\005\[BT\]\005 Failed to identify with NickServ (nickname is owned by someone else)"

################################# Enable #####################################

set black(say.en.enable.1) "\005\[BT\]\005 Enabled \001%msg.1%\001 on \002%chan%\002"
set black(say.en.enable.2) "\005\[BT\]\005 \001%msg.1%\001 is already enabled on \002%chan%\002"
set black(say.en.enable.3) "\005\[BT\]\005 The command \002%msg.1%\002 does not exist."
set black(say.en.enable.4) "\005\[BT\]\005 Enabled \001%msg.1%\001 for \002%msg.2%\002 on \002%chan%\002"
set black(say.en.enable.5) "\005\[BT\]\005 \001%msg.1%\001 is already enabled for \002%msg.2%\002 on \002%chan%\002"
set black(say.en.enable.6) "\005\[BT\]\005 \002GLOBALLY\002 enabled \001%msg.1%\001"
set black(say.en.enable.7) "\005\[BT\]\005 \001%msg.1%\001 is already \002GLOBALLY\002 enabled."
set black(say.en.enable.8) "\005\[BT\]\005 CAREFUL, \001%msg.1%\001 it is \002GLOBALLY\002 disabled."
set black(say.en.enable.9) "\005\[BT\]\005 I can not execute, \002%msg.1%\002 is disabled by a user with higher access."

################################# Disable #####################################

set black(say.en.disable.1) "\005\[BT\]\005 Disabled \001%msg.1%\001 on \002%chan%\002"
set black(say.en.disable.2) "\005\[BT\]\005 \001%msg.1%\001 is already disabled on \002%chan%\002"
set black(say.en.disable.3) "\005\[BT\]\005 The command \002%msg.1%\002 does not exist."
set black(say.en.disable.4) "\005\[BT\]\005 Disabled \001%msg.1%\001 for \002%msg.2%\002 on \002%chan%\002"
set black(say.en.disable.5) "\005\[BT\]\005 \001%msg.1%\001 is already disabled for \002%msg.2%\002 on \002%chan%\002"
set black(say.en.disable.6) "\005\[BT\]\005 \002GLOBALLY\002 disabled \001%msg.1%\001"
set black(say.en.disable.7) "\005\[BT\]\005 \001%msg.1%\001 is already \002GLOBALLY\002 disabled."
set black(say.en.disable.8) "\005\[BT\]\005 Can't disable \002%msg.1%\002 command."

################################### Module #######################################

set black(say.en.hmodule.1) "Modules: \002%msg%\002"
set black(say.en.hmodule.3) "To see the \001BlackToolS Manual\001 for a specific module, use: \002%char%man\002 <module> | \002%botnick% man\002 <module> | \002(PRIVMSG) man\002 <module>"

####################################### h ########################################

set black(say.en.h.1) "\005\[BT\]\005 \001ACCESS LEVEL\001 \002-= \001%msg%\001 =-\002"
set black(say.en.h.2) "\005\[BT\]\005 %char%\002h\002 \001cmds\001 ; %char%\002h\002 \001ban\001 ; %char%\002h\002 \001add\001 ; %char%\002h\002 \001chaninfo\001 ; %char%\002h\002 \001BTinfo\001 ; %char%\002h\002 \001module\001 ; %char%\002h\002 \001egg\001 ; %char%\002h\002 \001owner\001"
set black(say.en.h.3) "\005\[BT\]\005 \001ACCESS LEVEL\001 \002-= \001%msg%\001 =-\002"
set black(say.en.h.4) "\005\[BT\]\005 %char%\002h\002 \001cmds\001 ; %char%\002h\002 \001ban\001 ; %char%\002h\002 \001add\001 ; %char%\002h\002 \001chaninfo\001 ; %char%\002h\002 \001BTinfo\001 ; %char%\002h\002 \001module\001 ; %char%\002h\002 \001egg\001 ; %char\002%h\002 \001owner\001"
set black(say.en.h.5) "\005\[BT\]\005 \001ACCESS LEVEL\001 \002-= \001%msg%\001 =-\002"
set black(say.en.h.6) "\005\[BT\]\005 %char%\002h\002 \001cmds\001 ; %char%\002h\002 \001ban\001 ; %char%\002h\002 \001module\001"
set black(say.en.h.7) "\005\[BT\]\005 \001ACCESS LEVEL\001 \002-= \001%msg%\001 =-\002"
set black(say.en.h.8) "\005\[BT\]\005 %char%\002h\002 \001cmds\001 ; %char%\002h\002 \001ban\001 ; %char%\002h\002 \001module\001"
set black(say.en.h.11) "\005\[BT\]\005 \001ACCESS LEVEL\001 \002-= \001%msg%\001 =-\002"
set black(say.en.h.12) "\005\[BT\]\005 %char%\002h\002 \001cmds\001 ; %char%\002h\002 \001ban\001 ; %char%\002h\002 \001add\001 ; %char%\002h\002 \001module\001"
set black(say.en.h.13) "\005\[BT\]\005 \001ACCESS LEVEL\001 \002-= \001%msg%\001 =-\002"
set black(say.en.h.14) "\005\[BT\]\005 %char%\002h\002 \001cmds\001 ; %char%\002h\002 \001ban\001 ; %char%\002h\002 \001add\001 ; %char%\002h\002 \001chaninfo\001 ; %char%\002h\002 \001BTinfo\001 ; %char%\002h\002 \001module\001"
set black(say.en.h.15) "\005\[BT\]\005 %msg%"
set black(say.en.h.16) "\005\[BT\]\005 You're sending requests too fast. Calm down and try again after \002%msg.1% seconds\002. Thanks!"
set black(say.en.h.17) "\005\[BT\]\005 \002h\002 \001cmds\001 ; \002h\002 \001ban\001 ; \002h\002 \001add\001 ; \002h\002 \001chaninfo\001 ; \002h\002 \001BTinfo\001 ; \002h\002 \001module\001 ; \002h\002 \001egg\001 ; \002h\002 \001owner\001"
set black(say.en.h.18) "\005\[BT\]\005 \002h\002 \001cmds\001 ; \002h\002 \001ban\001 ; \002h\002 \001add\001 ; \002h\002 \001chaninfo\001 ; \002h\002 \001BTinfo\001 ; \002h\002 \001module\001"
set black(say.en.h.19) "\005\[BT\]\005 \002h\002 \001cmds\001 ; \002h\002 \001ban\001 ; \002h\002 \001add\001 ; \002h\002 \001module\001"
set black(say.en.h.20) "\005\[BT\]\005 \002h\002 \001cmds\001 ; \002h\002 \001ban\001 ; \002h\002 \001module\001"
set black(say.en.h.21) "\005\[BT\]\005 %botnick% \002h\002 \001cmds\001 ; %botnick% \002h\002 \001ban\001 ; %botnick% \002h\002 \001add\001 ; %botnick% \002h\002 \001chaninfo\001 ; %botnick% \002h\002 \001BTinfo\001 ; %botnick% \002h\002 \001module\001 ; %botnick% \002h\002 \001egg\001 ; %botnick% \002h\002 \001owner\001"
set black(say.en.h.22) "\005\[BT\]\005 %botnick% \002h\002 \001cmds\001 ; %botnick% \002h\002 \001ban\001 ; %botnick% \002h\002 \001add\001 ; %botnick% \002h\002 \001chaninfo\001 ; %botnick% \002h\002 \001BTinfo\001 ; %botnick% \002h\002 \001module\001"
set black(say.en.h.23) "\005\[BT\]\005 %botnick% \002h\002 \001cmds\001 ; %botnick% \002h\002 \001ban\001 ; %botnick% \002h\002 \001add\001 ; %botnick% \002h\002 \001module\001"
set black(say.en.h.24) "\005\[BT\]\005 %botnick% \002h\002 \001cmds\001 ; %botnick% \002h\002 \001ban\001 ; %botnick% \002h\002 \001module\001"
set black(say.en.h.25) "\005\[BT\]\005 \002%char%h\002 \001cmds\001 ; \002%char%h\002 \001ban\001 ; \002%char%h\002 \001add\001 ; \002%char%h\002 \001chaninfo\001 ; \002%char%h\002 \001BTinfo\001 ; \002%char%h\002 \001module\001 ; \002%char%h\002 \001master\001"
set black(say.en.h.26) "\005\[BT\]\005 \002h\002 \001cmds\001 ; \002h\002 \001ban\001 ; \002h\002 \001add\001 ; \002h\002 \001chaninfo\001 ; \002h\002 \001BTinfo\001 ; \002h\002 \001module\001 ; \002h\002 \001master\001"
set black(say.en.h.27) "\005\[BT\]\005 %botnick% \002h\002 \001cmds\001 ; %botnick% \002h\002 \001ban\001 ; %botnick% \002h\002 \001add\001 ; %botnick% \002h\002 \001module\001 ; %botnick% \002h\002 \001master\001"

set black(say.en.hcommand.1) "\005\[BT\]\005 To see the \002BlackToolS Manual\002 for a specific command, use: \001%char%man <command>\001. To run cmds also in \002DCC\002 use: \001.bt <command> \[#chan\] \[arguments\]\001"
set black(say.en.hcommand.2) "\005\[BT\]\005 To see the \002BlackToolS Manual\002 for a specific command, use: \001%botnick% man <command>\001. To run cmds also in \002DCC\002 use: \001.bt <command> \[#chan\] \[arguments\]\001"
set black(say.en.hcommand.3) "\005\[BT\]\005 To see the \002BlackToolS Manual\002 for a specific command, use: \001man <command>\001. To run cmds also in \002DCC\002 use: \001.bt <command> \[#chan\] \[arguments\]\001"
set black(say.en.hcommand.4) "\005\[BT\]\005 To see the \002BlackToolS Manual\002 for a specific setting, use: \001%char%man <setting>\001"
set black(say.en.hcommand.5) "\005\[BT\]\005 To see the \002BlackToolS Manual\002 for a specific setting, use: \001%botnick% man <setting>\001"
set black(say.en.hcommand.6) "\005\[BT\]\005 To see the \002BlackToolS Manual\002 for a specific setting, use: \001man <setting>\001"
set black(say.en.hcommand.7) "\005\[BT\]\005 To see the \002BlackToolS Manual\002 for a specific module, use: \001%char%man <module>\001"
set black(say.en.hcommand.8) "\005\[BT\]\005 To see the \002BlackToolS Manual\002 for a specific module, use: \001%botnick% man <module>\001"
set black(say.en.hcommand.9) "\005\[BT\]\005 To see the \002BlackToolS Manual\002 for a specific module, use: \001man <module>\001"

set black(say.en.cmdsvoice) "v \[#chan\] \[nick\] ; man <command> ; version ; i \[#chan\] <nick> ; seen \[#chan\] <nick|ip|host> ; for <botnick1>,<botnick2> <command> \[option\] ; activ \[#chan\] <nick> ; myset <option> \[description\] \[show|reset\] ; h \[#chan\] \[category\]"
set black(say.en.cmdsop) "o \[#chan\] \[nick\] ; v \[#chan\] \[nick\] ; ho \[#chan\] \[nick\] ; man <command> ; version ; mode \[#chan\] <+/-mode> ; cycle \[#chan\] \[duration|reason\] ; i \[#chan\] <nick> ; seen \[#chan\] <nick|ip|host> ; for <botnick1>,<botnick2> <command> \[option\] ; activ \[#chan\] <nick> ; t \[#chan\] <text> ; myset <option> \[description\] \[show|reset\] ; h \[#chan\] \[category\] ; r \[#chan\] ; omsg \[#chan|all\] <text>"
set black(say.en.cmdadmin) "o \[#chan\] \[nick\] ; v \[#chan\] \[nick\] ; ho \[#chan\] \[nick\] ; man <command> ; version ; mode \[#chan\] <+/-mode> ; cycle \[#chan\] \[duration|reason\] ; say \[#chan\] <text> ; act \[#chan\] <text> ; i \[#chan\] <nick> ; seen \[#chan\] <nick|ip|host> ; for <botnick1>,<botnick2> <command> \[option\] ; activ \[#chan\] <nick> ; t \[#chan\] <text> ; myset <option> \[description\] \[show|reset\] ; h \[#chan\] \[category\] ; r \[#chan\] ; omsg \[#chan|all\] <text>"
set black(say.en.cmdmanager) "o \[#chan\] \[nick\] ; v \[#chan\] \[nick\] ; ho \[#chan\] \[nick\] ; man <command> ; version ; mode \[#chan\] <+/-mode> ; cycle \[#chan\] \[duration|reason\] ; say \[#chan\] <text> ; act \[#chan\] <text> ; i \[#chan\] <nick> ; seen \[#chan\] <nick|ip|host> ; for <botnick1>,<botnick2> <command> \[option\] ; activ \[#chan\] <nick> ; t \[#chan\] <text> ; myset <option> \[description\] \[show|reset\] ; h \[#chan\] \[category\] ; r \[#chan\] ; omsg \[#chan|all\] <text>"
set black(say.en.cmdbossowner) "o \[#chan\] \[nick\] ; v \[#chan\] \[nick\] ; ho \[#chan\] \[nick\] ; man <command> ; version ; mode \[#chan\] <+/-mode> ; cycle \[#chan\] \[duration|reason\] ; say \[#chan\] <text> ; act \[#chan\] <text> ; seen \[#chan|global\] <nick|ip|host> ; for <botnick1>,<botnick2> <command> \[option\] ; broadcast <text> ; i \[#chan\] <nick> ; activ \[#chan\] <nick> ; t \[#chan\] <text> ; myset <option> \[description\] \[show|reset\] ; h \[#chan\] \[category\] ; r \[#chan\] ; msg <nick> <text> ; omsg \[#chan|all\] <text>"
set black(say.en.cmdmaster) "o \[#chan\] \[nick\] ; v \[#chan\] \[nick\] ; ho \[#chan\] \[nick\] ; man <command> ; version ; mode \[#chan\] <+/-mode> ; cycle \[#chan\] \[duration|reason\] ; say \[#chan\] <text> ; act \[#chan\] <text> ; seen \[#chan|global\] <nick|ip|host> ; for <botnick1>,<botnick2> <command> \[option\] ; i \[#chan\] <nick> ; activ \[#chan\] <nick> ; t \[#chan\] <text> ; myset <option> \[description\] \[show|reset\] ; h \[#chan\] \[category\] ; r \[#chan\] ; msg <nick> <text> ; omsg \[#chan|all\] <text>"

set black(say.en.banvoice) "k \[#chan\] <nick|host> \[reason\] ; w \[#chan\] <nick>"
set black(say.en.banop) "b \[#chan\] <nick|host> \[-level\] \[duration\] \[reason\] ; dr \[#chan\] <nick|host> ; bot \[#chan\] <nick|host> ; n \[#chan\] <nick> ; id \[#chan\] <nick> ; spam \[#chan\] <nick|host> ; bw \[#chan\] <nick|host> ; vr \[#chan\] <nick|host> ; gag \[#chan\] <nick> \[duration\] \[reason\] ; ungag \[#chan\] <nick|host> ; troll \[#chan\] <nick> ; mb \[#chan\] <nick> \[reason\] ; ub \[#chan\] <nick|host|id> ; sb \[#chan\] <nick|host|id> ; banlist \[#chan\] <all|user|other> ; k \[#chan\] <nick|host> \[reason\] ; w \[#chan\] <nick>"
set black(say.en.banadmin) "b \[#chan\] <nick|host> \[-level\] \[duration\] \[reason\] ; black \[#chan\] <nick|host> \[reason\] ; stick \[#chan\] <nick|host> \[duration\] \[reason\] ; dr \[#chan\] <nick|host> ; bot \[#chan\] <nick|host> ; n \[#chan\] <nick> ; id \[#chan\] <nick> ; spam \[#chan\] <nick|host> ; bw \[#chan\] <nick|host> ; vr \[#chan\] <nick|host> ; gag \[#chan\] <nick> \[duration\] \[reason\] ; ungag \[#chan\] <nick|host> ; troll \[#chan\] <nick> ; mb \[#chan\] <nick> \[reason\] ; ub \[#chan\] <nick|host|id> ; sb \[#chan\] <nick|host|id> ; banlist \[#chan\] <all|user|other> ; stats <nick> \[total\] ; k \[#chan\] <nick|host> \[reason\] ; w \[#chan\] <nick>"
set black(say.en.banmanager) "b \[#chan\] <nick|host> \[-level\] \[duration\] \[reason\] ; black \[#chan\] <nick|host> \[reason\] ; stick \[#chan\] <nick|host> \[duration\] \[reason\] ; dr \[#chan\] <nick|host> ; bot \[#chan\] <nick|host> ; n \[#chan\] <nick> ; id \[#chan\] <nick> ; spam \[#chan\] <nick|host> ; bw \[#chan\] <nick|host> ; vr \[#chan\] <nick|host> ; gag \[#chan\] <nick> \[duration\] \[reason\] ; ungag \[#chan\] <nick|host> ; troll \[#chan\] <nick> ; mb \[#chan\] <nick> \[reason\] ; ub \[#chan\] <nick|host|id> ; sb \[#chan\] <nick|host|id> ; exempt \[#chan\] <add|list|del> <ip|host> \[period\] \[reason\] ; banlist \[#chan\] <all|user|other> ; stats <nick> \[total|reset\] ; k \[#chan\] <nick|host> \[reason\] ; w \[#chan\] <nick>"
set black(say.en.banbossowner) "b \[#chan\] <nick|host> \[-level\] \[duration\] \[global|link\] \[reason\] ; black \[#chan\] <nick|host> \[reason\] ; stick \[#chan\] <nick|host> \[duration\] \[reason\] ; dr \[#chan\] <nick|host> ; bot \[#chan\] <nick|host> ; n \[#chan\] <nick> ; id \[#chan\] <nick> ; spam \[#chan\] <nick|host> ; bw \[#chan\] <nick|host> ; vr \[#chan\] <nick|host> ; gag \[#chan\] <nick> \[duration\] \[reason\] ; ungag \[#chan\] <nick|host> ; troll \[#chan\] <nick> ; mb \[#chan\] <nick> \[reason\] ; ub \[#chan\] <nick|host|id> \[global|link\] ; sb \[#chan\] <nick|host|id> \[global\] ; exempt \[#chan\] <add|list|del> <ip|host> \[period\] \[global\] \[reason\] ; banlist \[#chan\] <all|user|other|global> ; stats <nick> \[total|reset\] ; k \[#chan\] <nick|host> \[reason\] ; w \[#chan\] <nick>"
set black(say.en.banmaster) "b \[#chan\] <nick|host> \[-nivel\] \[duration\] \[reason\] ; black \[#chan\] <nick|host> \[reason\] ; stick \[#chan\] <nick|host> \[duration\] \[reason\] ; dr \[#chan\] <nick|host> ; bot \[#chan\] <nick|host> ; n \[#chan\] <nick> ; id \[#chan\] <nick> ; spam \[#chan\] <nick>/<host> ; bw \[#chan\] <nick|host> ; vr \[#chan\] <nick|host> ; gag \[#chan\] <nick> \[duration\] \[reason\] ; ungag \[#chan\] <nick|host> ; troll \[#chan\] <nick> ; mb \[#chan\] <nick> \[reason\] ; ub \[#chan\] <nick|host|id> ; sb \[#chan\] <nick|host|id> ; exempt \[#chan\] <add|list|del> <ip|host> \[period\] \[global\] \[reason\] ; banlist \[#chan\] <all|user|other> ; stats <nick> \[total|reset\] ; k \[#chan\] <nick|host> \[reason\] ; w \[#chan\] <nick>"

set black(say.en.addadmin) "add \[#chan\] <level> <user chanserv|nickname> ; userlist \[#chan\] <level|all> ; info \[#chan\] <user|#chan> ; delacc \[#chan\] <user> ; auto \[#chan\] <+/-o> <user> ; auto \[#chan\] <+/-v> <user> ; s \[#chan\] <user> \[duration\] \[reason\] ; us \[#chan\] <user> ; addhost <user> <host> ; delhost <user> <host>"
set black(say.en.addmanager) "add \[#chan\] <level> <user chanserv|nickname> ; userlist \[#chan]\ <level|all> ; info \[#chan\] <user|#chan> ; delacc \[#chan\] <user> ; del <user> ; auto \[#chan\] <+/-o> <user> ; auto \[#chan\] <+/-v> <user> ; chuser <user> <new user> ; s \[#chan\] <user> \[duration\] \[reason\] ; us \[#chan\] <user> ; addhost <user> <host> ; delhost <user> <host>"
set black(say.en.addowner) "add \[#chan\] <level> <user chanserv|nickname> ; userlist \[#chan\] <level|all> ; info \[#chan\] <user|#chan> ; delacc \[#chan\] <user> ; del <user> ; auto \[#chan\] <+/-o> <user> ; auto \[#chan\] <+/-v> <user> ; chuser <user> <new user> ; s \[#chan\] <user> \[duration\] \[reason\] ; us \[#chan\] <user> ; addhost <user> <host> ; delhost <user> <host>"
set black(say.en.addbossowner) "add \[#chan\] <level> <user chanserv|nickname> ; userlist \[#chan\] <level> ; info \[#chan\] <user|#chan> ; delacc \[#chan\] <user> ; del <user> ; auto \[#chan\] <+/-o> <user> ; auto \[#chan\] <+/-v> <user> ; chuser <user> <new user> ; s \[#chan\] <user> \[duration\] \[reason\] ; us \[#chan\] <user> ; addhost <user> <host> ; delhost <user> <host>"
set black(say.en.addmaster) "add \[#chan\] <nivel> <user chanserv|nickname> ; userlist \[#chan\] <nivel> ; info \[#chan\] <user|#chan> ; delacc \[#chan\] <user> ; del <user> ; auto \[#chan\] <+/-o> <user> ; auto \[#chan\] <+/-v> <user> ; chuser <user> <new user> ; s \[#chan\] <user> \[duration\] \[reason\] ; us \[#chan\] <user> ; addhost <user> <host> ; delhost <user> <host>"

set black(say.en.hmanager.1) "purge \[#chan\] <reason> ; set \[#chan\] <+/-option> ; set \[#chan\] <option> <description> ; unset \[#chan\] <option> ; show \[#chan\] <option> ; ignore <add|list|del> <host> \[duration\] \[reason\] ; enable <command|all> \[user\] ; disable <command|all> \[user\]"
set black(say.en.hbossowner.1) "addchan <#chan> ; delchan <#chan> <reason> ; suspend <#chan> <reason> ; unsuspend <#chan>; set \[#chan|global\] <option> <description> ; unset \[#chan|global\] <option> ; show \[#chan\] <option> ; channels ; die \[reason\] ; restart ; jump \[server\] ; save ; rehash ; login ; nick <nick> ; uptime ; status ; cp <option> <#chan1> <#chan2> ; ignore <add|list|del> <host> \[duration\] \[reason\] ; enable <command|all> \[user\] \[global\] ; disable <command|all> \[user\] \[global\] ; chat"
set black(say.en.hmaster.1) "addchan <#chan> ; delchan <#chan> <reason> ; suspend <#chan> <reason> ; unsuspend <#chan>; set \[#chan\] <option> <description> ; unset \[#chan\] <option> ; show \[#chan\] <option> ; channels ; uptime ; status ; ignore <add|list|del> <host> \[duration\] \[reason\]  ; enable <command|all> \[user\] \[global\] ; disable <command|all> \[user\] \[global\]"
set black(say.en.hchaninfo.1) "\002Eggdrop Flags\002: "
set black(say.en.hchaninfo.2) "\002BT Settings\002: "
set black(say.en.hchaninfo.3) "\002Eggdrop Str\002"
set black(say.en.hchaninfo.4) "\002BT Str\002: "
set black(say.en.hegg.1) "\005\[BT\]\005 %msg%"
set black(say.en.hegg.2) "\005\[BT\]\005 To see the \002BlackToolS Manual\002 for a specific option, use: \001%char%man <option>\001."
set black(say.en.hegg.3) "\005\[BT\]\005 To see the \002BlackToolS Manual\002 for a specific option, use: \001%botnick% man <option>\001"
set black(say.en.hegg.4) "\005\[BT\]\005 To see the \002BlackToolS Manual\002 for a specific option, use: \001man <option>\001"

############################### GREETING #######################################

set black(say.en.greeting.1) "\005\[BT\]\005 Welcome in \002BlackToolS WORLD\002 version \002$black(vers)\002. To start please define the following settings for you:"
set black(say.en.greeting.2) "\002%char%myset mychar\002 <trigger> ( set desired trigger ) ; \002%char%myset lang <language> ( RO | EN | ES)"
set black(say.en.greeting.3) "\002%char%myset mychan\002 <#chan> ; \002%char%myset output\002 <method> ( CHAN | NOTICE )"
set black(say.en.greeting.4) "\002%char%myset noteexpire <no. days> ; \002%char%myset greet\002 <message> (onjoin gree message) ; \002%char%myset autoinvite\002 <ON|OFF>"
set black(say.en.greeting.5) "\005\[BT\]\005 Use \002%char%h\002 in any channel that the bot is in to get a complete list with all \002available commands\002."
set black(say.en.greeting.6) "\005\[BT\]\005 To read the \002BlackToolS manual\002 of each setting use: \001%char%man <setting>\001. Have Fun! >:)"

################################### Abuse Report ###############################

set black(say.en.abuse.1) "\005\[BT\]\005 Cannot join \001%msg.1%\001. Reason: \002banned (+b)\002."
set black(say.en.abuse.2) "Unable to join \002%chan%\002 (banned (+b))"
set black(say.en.abuse.3) "\005\[BT\]\005 Cannot join \001%msg.1%\001. Reason: \002channel invite only (+i)\002."
set black(say.en.abuse.4) "Unable to join \002%chan%\002 (invite only (+i))"
set black(say.en.abuse.5) "\005\[BT\]\005 Cannot join \001%msg.1%\001. Reason: \002channel requires key (+k)\002."
set black(say.en.abuse.6) "Unable to join \002%chan%\002 (channel is locked (+k))"
set black(say.en.abuse.7) "\005\[BT\]\005 Cannot join \001%msg.1%\001. Reason: \002channel is full (+l)\002"
set black(say.en.abuse.8) "Unable to join \002%chan%\002 (channel is full (+l))"
set black(say.en.abuse.9) "\005\[BT\]\005 Suspended \001%msg.1%\001 for abuse."
set black(say.en.abuse.10) "Channel \001%msg.1%\001 has been suspended for abuse."
set black(say.en.abuse.11) "Unable to join \002%chan%\002 (registered users only (+r)))"
set black(say.en.abuse.12) "\005\[BT\]\005 Cannot join \001%msg.1%\001. Reason: \002registered users only (+r)\002."

################################### ChanLink ###################################

set black(say.en.chanlink.1) "\005\[BT\]\005 \002LINK\002 set with channels: \001%msg%\001."
set black(say.en.chanlink.2) "\005\[BT\]\005 \002LINK\002 has been reset."
set black(say.en.chanlink.3) "\005\[BT\]\005 \002LINKED\002 channels are: \001%msg%\001."
set black(say.en.chanlink.4) "\005\[BT\]\005 \002LINKED\002 \002all\002 channels."
set black(say.en.chanlink.5) "\005\[BT\]\005 There aren't any \002LINKED\002 channels."
set black(say.en.chanlink.6) "\005\[BT\]\005 Unable to \002LINK\002. Invalid channels: \001%msg%\001."
set black(say.en.chanlink.7) "\005\[BT\]\005 \002LINK\002 for \001%msg.1%\001 has been removed."
set black(say.en.chanlink.8) "\005\[BT\]\005 \002LINK\002 not enabled on \001%msg.1%\001."

###################################### O #######################################

set black(say.en.o.1) "\005\[BT\]\005 \001%msg.1%\001 is on \002%chan%\002 you can't do massdeop."

################################### man ########################################

set black(say.en.man.1_1) "\005\[BT\]\005 Sorry \002%msg.1%\002, there is no help available for that topic."

#################################### User Expire ###############################

set black(say.en.userexpire.1) "\005\[BT\]\005 User expire: \002%msg.1%\002 expired users found."

##################################### Hello ####################################

set black(say.en.hello.1) "*** HOORAH! *** You have \001%msg%\001 access level to my commands."
set black(say.en.hello.2) "\005\[BT\]\005 Hi \002%msg.1%\002. I'm \004%botnick%\004, an eggdrop bot running \001%msg.2%\001 %msg.3%."
set black(say.en.hello.3) "\005\[BT\]\005 I'll recognize you by hostmask '\001%msg.1%\001' from now on. Please set your password, typing: /msg \001%botnick%\001 <pass> <yourpassword>"
set black(say.en.hello.4) "\005\[BT\]\005 You can use \002%char%h\002 in any channel that the bot is in to get a complete list with all \002available commands\002. Have fun :D"

##################################### Pass #####################################

set black(say.en.pass.1) "\005\[BT\]\005 Done. Your password is now: \002%msg%\002"

#################################### oMsg ######################################

set black(say.en.omsg.1) "\005\[BT\]\005 Message sent to all @'s from: \002%msg%\002"

#################################### forward ###################################

set black(say.en.forward.1) "\005\[PRIVATE MSG\]\005 from -- <\002%msg.1%\002> ��� \001%msg.8%\001"

##################################### mb #######################################

set black(say.en.mb.5) "This IRC client is used for abuse. Consider getting a different one."

################################### handleban ##################################

set black(say.en.handleban.1) "BLackListed User!"

##################################### Exempt ###################################

set black(say.en.exempt.1) "Permanent"
set black(say.en.exempt.2) "\005\[BT\]\005 \[CHAN\]: * (\002%msg.1%\002 exempts found)"
set black(say.en.exempt.3) "\005\[BT\]\005 To see the next set of entries, type \001%char%exempt list global -next\001 (\002%counter%\002 exempts left)"
set black(say.en.exempt.4) "\005\[BT\]\005 *** END exempts ***"
set black(say.en.exempt.5) "\005\[BT\]\005 \002%msg.2%\002 ; \002%msg.3%\002 ; Added by: \002%msg.4%\002 ; Date: \002%msg.12%\002 ; Expires: %msg.13% \002%msg.15%\002 \002%msg.17%\002 ; Reason: %msg.20%"
set black(say.en.exempt.6) "\005\[BT\]\005 \[CHAN\]: %chan% (\002%msg.1%\002 exempts found)"
set black(say.en.exempt.10) "\005\[BT\]\005 To see the next set of entries, type \001%char%exempt list -next\001 (\002%counter%\002 exempts left)"
set black(say.en.exempt.11) "\005\[BT\]\005 \002%msg.2%\002 ; \002%msg.3%\002 ; Added by: \002%msg.4%\002 ; Date: \002%msg.12%\002 ; Expires: %msg.13% ; Reason: %msg.14%"
set black(say.en.exempt.13) "NEVER"
set black(say.en.exempt.14) "\005\[BT\]\005 To see the next set of entries, type \001%char%exempt %chan% list -next\001 (\002%counter%\002 exempts left)"
set black(say.en.exempt.7) "\005\[BT\]\005 Added exempt \002%msg.1%\002 on %chan%"
set black(say.en.exempt.8) "\005\[BT\]\005 Added exempt \002%msg.1%\002 for all channels"
set black(say.en.exempt.9) "\005\[BT\]\005 Removed exempt \002%msg.1%\002 on %chan%"
set black(say.en.exempt.12) "\005\[BT\]\005 Removed exempt \002%msg.1%\002 on all channels"
set black(say.en.exempt.15) "\005\[BT\]\005 There is not exempt that matches \002%msg.1%\002 on %chan%"
set black(say.en.exempt.16) "\005\[BT\]\005 There is not exempt that matches \002%msg.1%\002 for all channels"

###################################### AutoUpdate ################################

set black(say.en.autoupdate.1) "\005\[BT\]\005 Could not start %msg.1% : No TLS package available."
set black(say.en.autoupdate.2) "\005\[BT\]\005 Update failed, could not get new updates"
set black(say.en.autoupdate.3) "\005\[BT\]\005 Found \001NEW\001 BlackTools \002%msg.1%\002 version, begining download.."
set black(say.en.autoupdate.4) "\005\[BT\]\005 Found \001BUG\001 fixes for current installed version \002BlackTools %msg.1%\002, begining download.."
set black(say.en.autoupdate.5) "\005\[BT\]\005 No new updates found."
set black(say.en.autoupdate.6) "\005\[BT\]\005 Update failed : \002%msg.1%\002"
set black(say.en.autoupdate.7) "\005\[BT\]\005 Removing backup files from the last backup ..."
set black(say.en.autoupdate.8) "\005\[BT\]\005 Backing UP old \001BlackTools\001 directory ...succeded"
set black(say.en.autoupdate.9) "\005\[BT\]\005 Backing UP old \001BlackTools\001 directory ...failed : \002%msg.1%\002"
set black(say.en.autoupdate.10) "\005\[BT\]\005 Update failed, could not backup old \001BlackTools.tcl\001 file."
set black(say.en.autoupdate.11) "\005\[BT\]\005 Backing UP old \001BlackTools.tcl\001 ...succeded"
set black(say.en.autoupdate.12) "\005\[BT\]\005 Backup finished."
set black(say.en.autoupdate.13) "\005\[BT\]\005 Saving information from old \001BlackTools.tcl\001 ..."
set black(say.en.autoupdate.14) "\005\[BT\]\005 Removing old version of \001BlackTools\001 ..."
set black(say.en.autoupdate.15) "\005\[BT\]\005 Downloading BlackTools \001%msg.1%\001. Last bugfix: \002%msg.2%\002"
set black(say.en.autoupdate.16) "\005\[BT\]\005 Update failed, could not download \001BlackTools\001."
set black(say.en.autoupdate.17) "\005\[BT\]\005 \001BlackTools\001 downloaded in \002%msg.1%\002"
set black(say.en.autoupdate.18) "\005\[BT\]\005 Restoring information from old \001BlackTools.tcl\001 ..."
set black(say.en.autoupdate.19) "\005\[BT\]\005 Restored \002%msg.1%\002 changed variables from old \001BlackTools\001 config."
set black(say.en.autoupdate.20) "\005\[BT\]\005 No variables restored from old \001BlackTools\001 config."
set black(say.en.autoupdate.21) "\005\[BT\]\005 Restoring settings, bans and other old information ..."
set black(say.en.autoupdate.22) "\005\[BT\]\005 No settings, bans and other information found ..."
set black(say.en.autoupdate.23) "\005\[BT\]\005 Restored (\002%msg.1%\002) files that contain settings, bans and other information."
set black(say.en.autoupdate.24) "\005\[BT\]\005 Update finished for \001BlackTools\001 in \002%msg.1%\002 . Changelog: \002https://github.com/tclscripts/BlackTools-TCL/blob/master/ChangeLog\002"
set black(say.en.autoupdate.25) "\005\[BT\]\005 If something is wrong the backup FILES are stil available in \001\"%msg.1%\"\001 until next Update. Also you can check the UPDATE LOG in \001\"%msg.2%\"\001"
set black(say.en.autoupdate.26) "\005\[BT\]\005 Remember, for information or bug issues visit the official site of \002BT\002 --- \001WwW.TclScripts.Net\001"
set black(say.en.autoupdate.27) "\005\[BT\]\005 Update started at \001%msg.1%\001"
set black(say.en.autoupdate.28) "\005\[BT\]\005 Verifying for new updates.."
set black(say.en.autoupdate.29) "\005\[BT\]\005 Update is already runing.."
set black(say.en.autoupdate.30) "\005\[BT\]\005 Can't start update. Reason: \002%msg%\002"
set black(say.en.autoupdate.31) "\005\[BT\]\005 Can't verify for new update. Please try again later."
set black(say.en.autoupdate.32) "\005\[BT\]\005 New version of \001BlackTools\001 found: \002%msg%\002 . Use \001%char%update start\002 to start update"
set black(say.en.autoupdate.33) "\005\[BT\]\005 Found \001BUG\001 fixes for current installed version of \001BlackTools\001 (\001%msg%\001) for the current one. Use \001%char%update start\002 to start update"
set black(say.en.autoupdate.34) "\005\[BT\]\005 \001AutoUpdate\001 is disabled. Reason: \002%msg%\002"
set black(say.en.autoupdate.35) "\005\[BT\]\005 \001AutoUpdate\001 is already turned \001on\001 .."
set black(say.en.autoupdate.36) "\005\[BT\]\005 \001AutoUpdate\001 module is turned \001ON\001."
set black(say.en.autoupdate.37) "\005\[BT\]\005 \001AutoUpdate\001 is already turned \001off\001 .."
set black(say.en.autoupdate.38) "\005\[BT\]\005 \001AutoUpdate\001 module is turned \001OFF\001."
set black(say.en.autoupdate.39) "\005\[BT\]\005 \001AutoUpdate\001 is running at the moment .."
set black(say.en.autoupdate.40) "\005\[BT\]\005 \001AutoUpdate\001 skipped for the moment. Reason: \002Manual update started\002."
set black(say.en.autoupdate.41) "\005\[BT\]\005 Time for \001AutoUpdate\001 is set to: \002%msg.1%\002 minutes"
set black(say.en.autoupdate.42) "\005\[BT\]\005 Set time for \001AutoUpdate\001 to: \002%msg.1%\002 (%msg.2% minutes)"
set black(say.en.autoupdate.43) "\005\[BT\]\005 AutoUpdate found new \001update\001 for: BlackTools \002%msg.1%\002 (Last Update: \001%msg.2%\001)."
set black(say.en.autoupdate.45) "\005\[BT\]\005 In order to complete this update it's necessary to restart the eggdrop by using the \001restart\002 command."
set black(say.en.autoupdate.46) "\005\[BT\]\005 Automatic \002restart\002 in 10 seconds to complete the update."
set black(say.en.autoupdate.47) "\005\[BT\]\005 Latest update (\001%msg.1%\001) was installed by another eggdrop from the same archive. Use \001%char%update start\001 to finish update."
set black(say.en.autoupdate.48) "\005\[BT\]\005 Found latest (\001%msg.1%\001) update installed by another eggdrop from the same archive. Finishing update.."
set black(say.en.autoupdate.49) "\005\[BT\]\005 \001AutoUpdate\001 is disabled."

######################################## ALIAS ###################################

set black(say.en.alias.1) "\005\[BT\]\005 Use \002%char%alias\002 add <cmd> \[arguments\]"
set black(say.en.alias.2) "\005\[BT\]\005 \002%msg.1%\002 is not a valid command for you."
set black(say.en.alias.3) "\005\[BT\]\005 \002%msg.1%\002 is already added as \001alias\001 with command: \002%msg.2%\002"
set black(say.en.alias.4) "\005\[BT\]\005 \002%msg.1%\002 added as \001alias\001 with command: \002%msg.2%\002"
set black(say.en.alias.5) "\005\[BT\]\005 \002%msg.1%\002 is not added as \001alias\001"
set black(say.en.alias.6) "\005\[BT\]\005 \002%msg.1%\002 removed from \001alias\001 cmds"
set black(say.en.alias.7) "\002ALIAS COMMANDS:\002"

######################################## VOTE ###################################

set black(say.en.vote.1) "\005\[BT\]\005 Use \002%char%vote\002 add <voting name> -option <option1> -option <option2>.. \[-time \[DD/MM/YY HH:MM\]\] (expire time) \[-type 1/0\] (\0021\002 - valid users, \0020\002 - all users)"
set black(say.en.vote.2) "\005\[BT\]\005 Please specify a valid expire time \[DD/MM/YY HH:MM\] like \00225/12/21 00:00\002"
set black(say.en.vote.3) "\005\[BT\]\005 Please specify a valid Voting type \[-type 1/0\] (\0021\002 - valid users, \0020\002 - all users)"
set black(say.en.vote.4) "\005\[BT\]\005 There is another Voting stored with that name. Please chose another one."
set black(say.en.vote.5) "\005\[BT\]\005 Added \"%msg.1%\" as Voting with ID: \002%msg.3%\002 and options \[%msg.2%\]. Expire: \002NEVER\002."
set black(say.en.vote.6) "\005\[BT\]\005 Added \"%msg.1%\" as Voting with ID: \002%msg.4%\002 and options \[%msg.2%\]. Expire: \002%msg.3%\002."
set black(say.en.vote.7) "\005\[BT\]\005 Use \002%char%vote\002 del <id>"
set black(say.en.vote.8) "\005\[BT\]\005 No Voting with ID: \002%msg.1%\002 found."
set black(say.en.vote.9) "\005\[BT\]\005 Removed voting with ID: \002%msg.1%\002."
set black(say.en.vote.10) "\005\[BT\]\005 Use \002%char%vote\002 end <id>"
set black(say.en.vote.11) "\005\[BT\]\005 Voting with ID: \002%msg.1%\002 is already ended."
set black(say.en.vote.12) "\005\[BT\]\005 Ended voting with ID: \002%msg.1%\002."
set black(say.en.vote.13) "ACTIVE"
set black(say.en.vote.14) "ENDED"
set black(say.en.vote.15) "Users with access"
set black(say.en.vote.16) "All users"
set black(say.en.vote.17) "\005\[BT\]\005 Voting details -- ID: \002%msg.1%\002 ; Voting name: \002%msg.2%\002 ; Added by: \002%msg.7%\002 ; Status: \002%msg.4%\002 ; Audience: \002%msg.5%\002 ; Expires: \002%msg.6%\002"
set black(say.en.vote.18) "\005\[BT\]\005 Votes cast: N/A"
set black(say.en.vote.19) "\005\[BT\]\005 Votes cast: %msg.1%. Total votes: \002%msg.2%\002."
set black(say.en.vote.20) "\005\[BT\]\005 Voting with ID: \002%msg.1%\002 has ended, cannot vote anymore."
set black(say.en.vote.21) "\005\[BT\]\005 Please specify a valid Voting option: from A-Z."
set black(say.en.vote.22) "\005\[BT\]\005 There is not option with letter \002%msg.1%\002 for this Voting. Voting options are: %msg.2%"
set black(say.en.vote.23) "\005\[BT\]\005 You already choose your option for this Voting."
set black(say.en.vote.24) "\005\[BT\]\005 Vote \002%msg.1%\002 for Voting with ID: \002%msg.2%\002 and NAME: \002%msg.3%\002"
set black(say.en.vote.25) "\005\[BT\]\005 ID: \002%msg.1%\002 ; Voting name: \002%msg.2%\002 ; Added by: \002%msg.7%\002 ; Status: \002%msg.4%\002 ; Audience: \002%msg.5%\002 ; Expires: \002%msg.6%\002 ; Details command: \002%char%vote %msg.1%\002"
set black(say.en.vote.26) "\005\[BT\]\005 End voting list"
set black(say.en.vote.27) "\005\[BT\]\005 To see the next set of vote, type: \001%char%vote list -next\001 (\002%counter%\002 votes left)"
set black(say.en.vote.28) "\005\[BT\]\005 To see the next set of vote, type: \001%char%vote %chan% list -next\001 (\002%counter%\002 votes left)"
set black(say.en.vote.29) "\005\[BT\]\005 Voting list for %chan% is:"
set black(say.en.vote.30) "\005\[BT\]\005 There are no Votings for %chan%."
set black(say.en.vote.31) "\005\[BT\]\005 To see the next set of votes, type: \001%char%vote list %id% -next\001 (\002%counter%\002 votes left)"
set black(say.en.vote.32) "\005\[BT\]\005 To see the next set of votes, type: \001%char%vote %chan% list %id% -next\001 (\002%counter%\002 votes left)"
set black(say.en.vote.33) "\005\[BT\]\005 There are no votes for Voting with ID \002%msg.1%\002 on %chan%."
set black(say.en.vote.34) "\002#%msg.1%\002 Name: \002%msg.2%\002 ; Host: %msg.3% ; Vote: \002%msg.4%\002 ; Vote date: \002%msg.5%\002"
set black(say.en.vote.35) "\005\[BT\]\005 Votes list for ID: \002%msg.1%\002 on %chan% is:"
set black(say.en.vote.36) "\005\[BT\]\005 End votes list"
set black(say.en.vote.37) "\005\[BT\]\005 ID: \002%msg.1%\002 ; Voting name: \002%msg.2%\002 ; Added by: \002%msg.7%\002 ; Status: \002%msg.4%\002 ; Audience: \002%msg.5%\002 ; Details command: \002%char%vote %msg.1%\002"
set black(say.en.vote.38) "\005\[BT\]\005 Voting details -- ID: \002%msg.1%\002 ; Voting name: \002%msg.2%\002 ; Added by: \002%msg.7%\002 ; Status: \002%msg.4%\002 ; Audience: \002%msg.5%\002"
set black(say.en.vote.39) "\005\[BT\]\005 Use \002%char%vote\002 time <id> <DD/MM/YY HH:MM> (set new expire time)"
set black(say.en.vote.40) "\005\[BT\]\005 Setup new expiration time \002%msg.2%\002 for Voting with ID: \002%msg.1%\002"
set black(say.en.vote.41) "\005\[BT\]\005 Vote options: \[%msg.1%\]"
set black(say.en.vote.42) "\005\[BT\]\005 -- VOTE -- There are VOTINGS available. IDs are: \002%msg.1%\002 . To view information about a VOTING use \001%char%vote <id>\001 . To \002VOTE\002 use \001%char%vote <id> <letter>\001 . To view the voting list use \001%char%vote list\001"

##############################
############################################################################################################
#   END                                                                                                    #
############################################################################################################
