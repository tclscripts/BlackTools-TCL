#################################################################################
#
#
#				    ENGLISH LANGUAGE
#
#
#
#
#
#
#
#################################################################################


#################################################################################
#
#                                   STANDARD MESSAGES
# 
#################################################################################

set black(say.en.gl.noban) "It cannot be done because it has ACCESS ."
set black(say.en.gl.notonchan) "I am not on %chan%"
set black(say.en.gl.suspend) "You are suspended on %chan%, you cannot use this command ."
set black(say.en.gl.novalidchan) "Invalid channel."
set black(say.en.gl.nomem) "I have no memory record of that user."
set black(say.en.gl.noaccess) "It has no access on %chan%."
set black(say.en.gl.noop) "I have no op on %chan% ! I cannot proceed."
set black(say.en.gl.nomodif) "You cannot modify this users' features because it has greater or equal access with you."
set black(say.en.gl.usernotonchan) "%msg% is not on %chan%."
set black(say.en.gl.nocmem) "I have no memory record of channel %msg.1%"


#################################################################################
#
#                                   PROTECTIONS
# 
#################################################################################


#################################### antipub ###################################

set black(say.en.antipub.1) "You lost your rights on %chan% making ADVERTISING !"


#################################### antinotice ################################

set black(say.en.antinotice.1) "You lost your rights on %chan% making NOTICEs !"

#################################### antictcp ##################################

set black(say.en.antictcp.1) "You lost your rights on %chan% making CTCPs !"

#################################### antibadword ###############################

set black(say.en.antibadword.1) "You lost your rights on %chan% using that LANGUAGE !"

#################################### antilongtext ##############################

set black(say.en.antilongtext.1) "You lost your rights on %chan% writing such a LONGTEXT !"

#################################### antibadquitpart ###########################

set black(say.en.antibadquitpart.1) "You lost your rights on %chan% for part/quiting with forbidden characters !"

################################### antijoinpart ###############################

set black(say.en.antijoinpart.1) "You lost your rights on %chan% reggading Join/Part !"

################################## antispam ###################################

set black(say.en.antispam.1) "You did not follow rules on %chan% reggarding SPAM !!"

set black(say.en.antispam.2) "Hello %nick% welcome on %chan% , please do not reply to this message or else you will be considered a spammer and banned ! Thank You"

################################# antirepeat ##################################

set black(say.en.antirepeat.1) "You did not follow rules on %chan% reggarding repeating !"

################################# anticolor ###################################

set black(say.en.anticolor.1) "You did not follow rules on %chan% reggarding colours !"

################################# antibold ###################################

set black(say.en.antibold.1) "You did not follow rules on %chan% reggarding BOLD characters !"

################################# antiunderline ###################################

set black(say.en.antiunderline.1) "You did not follow rules on %chan% reggarding UNDERLINE characters !"

################################# anticaps #######################################

set black(say.en.anticaps.1) "You did not follow rules on %chan% reggarding CAPS-LOCK !"

################################# badfullname ###################################

set black(say.en.badfullname.1) "You did not follow rules on %chan% reggarding your REALNAME !"

################################# badnick #####################################

set black(say.en.badnick.1) "You did not follow rules on %chan% reggarding your NICKNAME !"

################################# badident #####################################

set black(say.en.badident.1) "You did not follow rules on %chan% reggarding your IDENT !"

################################# antijoinflood #####################################

set black(say.en.antijoinflood.1) "ATENTION ! Just saw a joinflood on %chan% ! Please check it out !"

################################# antichanflood #####################################

set black(say.en.antichanflood.1) "You did not follow rules on %chan% reggarding flood!"


################################################################################
#
#                                     MODULES
#
################################################################################


################################ Report Chan ###################################

set black(say.en.reportchan) "Added ban in %chan% on host %banmask% with reason :%reason% .It will expire in %bantime% minutes."


################################ clone scan ###################################

set black(say.en.clonescan.1) "I found %msg.1% clones in %chan% from host -= %msg.2% =-. Nicks are -= %msg.7% =-"
set black(say.en.clonescan.2) "End of clones.."
set black(say.en.clonescan.3) "I found %num% clones in %chan% from host -= %host% =-. Nicks are -= %clone% =-"
set black(say.en.clonescan.4) "Scanning for clones.."

################################## count ######################################

set black(say.en.count.1) "Use : %char%count <chan> on / off / display / reset | %char%count on / off / display / reset"
set black(say.en.count.2) "Use : %botnick% count <chan> on / off / display / reset | %botnick% count on / off / display / reset"
set black(say.en.count.3) "Use : %char%count <chan> on / off / display / reset"
set black(say.en.count.4) "Use :%botnick% count <chan> on / off / display / reset"
set black(say.en.count.5) "Count for %chan% is already enabled"
set black(say.en.count.6) "Count for %chan% is already disabled"
set black(say.en.count.7) "I enabled COUNT MODULE on %chan% ."
set black(say.en.count.8) "I disabled COUNT MODULE on %chan% ."
set black(say.en.count.9) "Count for %chan% is %msg.1% visitor(s)"
set black(say.en.count.10) "I reset count module for %chan%"
set black(say.en.count.11) "You are user with number %num% who joined in %chan% ."

################################# private ######################################

set black(say.en.private.1) "Use : %char%private <chan> <on> / <off> / <add> <nick> <host> / <list> / <del> <name> | %char%private <on> / <off> / <add> <nick> <host> / <list> / <del> <name>"
set black(say.en.private.2) "Use : %botnick% private <chan> <on> / <off> / <add> <nick> <host> | <list> / <del> <name> | %botnick% private <on> / <off> / <add> <nick> <host> / <list> / <del> <name>"
set black(say.en.private.3) "%char%private <on> | <off> | <add> <nick> <host> | <list> | <del> <name>"
set black(say.en.private.4) "Use :%botnick% private <on> | <off> | <add> <nick> <host> | <list> | <del> <name>"
set black(say.en.private.5) "I enabled PRIVATE MODULE on %chan% ."
set black(say.en.private.6) "I disabled PRIVATE MODULE on %chan% ."
set black(say.en.private.7) "%msg.1% is already in my database.Adding as an exception on %chan%"
set black(say.en.private.8) "Added %msg.1% with host %msg.2% as an exception on %chan%"
set black(say.en.private.9) "Deleted %msg.1% from my Exception List on %chan%"
set black(say.en.private.10) "%msg.1% is not database on %chan%."
set black(say.en.private.11) "Users in Exception List on %chan% are : %msg%"
set black(say.en.private.12) "Private Channel !"


################################# badchan ######################################

set black(say.en.badchan.1) "Use : %char%badchan <chan> <on> / <off> / <add> <#chan> / <list> / <del> <number> | %char%badchan <on> / <off> / <add> <#chan> / <list> / <del> <number>"
set black(say.en.badchan.2) "Use : %botnick% badchan <chan> <on> / <off> / <add> <#chan> / <list> / <del> <number> | %botnick% badchan <on> / <off> / <add> <#chan> / <list> / <del> <number>"
set black(say.en.badchan.3) "Use : %char%badchan <on> / <off> / <add> <#chan> / <list> / <del> <number>"
set black(say.en.badchan.4) "Use : %botnick% badchan <on> / <off> / <add> <#chan> / <list> / <del> <number>"
set black(say.en.badchan.5) "I enabled BADCHAN MODULE on %chan%."
set black(say.en.badchan.6) "I disabled BADCHAN MODULE on %chan%."
set black(say.en.badchan.7) "Adding in blacklist channel: %msg.1%"
set black(say.en.badchan.8) "There are no channels in BlackList for %chan%."
set black(say.en.badchan.9) "Channels blacklisted for %chan% are :"
set black(say.en.badchan.10) "%msg%"
set black(say.en.badchan.11) "Use :del <number>"
set black(say.en.badchan.12) "I removed for %chan% channel with number : %msg.1%"
set black(say.en.badchan.13) "Please verify with command: %char%badchan <list>"
set black(say.en.badchan.14) "You are sitting in a channel considered to be forbidden."
set black(say.en.badchan.15) "You got banned on %chan% because you were found sitting in a channel considered to be forbidden. The forbidden channel is : %bchan%"


################################# AntitaKe ######################################

set black(say.en.antitake.1) "You cannot give DEOP because you are not in my database with access."
set black(say.en.antitake.2) "You cannot give OP because you are not in my database with access."

################################# anunt ######################################

set black(say.en.anunt.1) "Use : %char%anunt <chan> <on> / <off> / <add> <message> / <list> / <del> <number> | %char%anunt <on> / <off> / <add> <message> / <list> / <del> <number>"
set black(say.en.anunt.2) "Use : %botnick% anunt <chan> <on> / <off> / <add> <message> / <list> / <del> <number> | %botnick% anunt <on> / <off> / <add> <message> / <list> / <del> <number>"
set black(say.en.anunt.3) "Use :%char%anunt <on> / <off> / <add> <message> / <list> / <del> <number>"
set black(say.en.anunt.4) "Use :%botnick% anunt <on> / <off> / <add> <message> / <list> / <del> <number>"
set black(say.en.anunt.5) "I enabled ANUNT MODULE on %chan%."
set black(say.en.anunt.6) "I disabled ANUNT MODULE on %chan%."
set black(say.en.anunt.7) "I added the next announce for %chan%:"
set black(say.en.anunt.8) "%msg%"
set black(say.en.anunt.9) "There are no announces for %chan%"
set black(say.en.anunt.10) "List of announces for %chan% is:"
set black(say.en.anunt.11) "Use :del <number>."
set black(say.en.anunt.12) "I erased the announce with number :%msg.1% for %chan%."
set black(say.en.anunt.13) "Please verify with command: %char%anunt list"


################################# AutoBroadcast ######################################

set black(say.en.autobroadcast.1) "Use %char%bt <on> / <off> / <add> <broadcast> / <list> / <del> <number> ."
set black(say.en.autobroadcast.2) "Use %botnick% bt <on> / <off> / <add> <broadcast> / <list> / <del> <number> ."
set black(say.en.autobroadcast.3) "AutoBroadcast is already enabled."
set black(say.en.autobroadcast.4) "I enabled AUTOBROADCAST MODULE"
set black(say.en.autobroadcast.5) "I disabled AUTOBROADCAST MODULE"
set black(say.en.autobroadcast.6) "Added a broadcast in my database"
set black(say.en.autobroadcast.7) "%msg%"
set black(say.en.autobroadcast.8) "There are no broadcasts in my list..."
set black(say.en.autobroadcast.9) "Broadcasts List is:"
set black(say.en.autobroadcast.10) "Use :del <number>. To list broadcasts type %char%bt list"
set black(say.en.autobroadcast.11) "I erased broadcast with number :%msg.1%"

################################# limit ######################################

set black(say.en.limit.1) "Use : %char%limit <chan> <on> / <set> <number> / <off> | %char%limit <on> / <set> <number> / <off>"
set black(say.en.limit.2) "Use : %botnick% limit <chan> <on> / <set> <number> / <off> | %botnick% limit <on> / <set> <number> / <off>"
set black(say.en.limit.3) "Use : %char%limit <on> | <set> <number> | <off>"
set black(say.en.limit.4) "Use :%botnick% limit <on> | <set> <number> | <off>"
set black(say.en.limit.5) "I enabled LIMIT MODULE on %chan%."
set black(say.en.limit.6) "I set default limit to +10."
set black(say.en.limit.7) "I disabled LIMIT MODULE on %chan%."
set black(say.en.limit.8) "Use :set <number>"
set black(say.en.limit.9) "You cannot set limit less than 2."
set black(say.en.limit.10) "Setting limit to 2."
set black(say.en.limit.11) "You cannot set limit higher than 500."
set black(say.en.limit.12) "Setting limit to %msg.1%"


################################# Topic ######################################

set black(say.en.topic.1) "Use : %char%topic <chan> save / list / add <topic> / del <number> / set <number> | %char% topic save / list / add <topic> / del <number> / set <number>"
set black(say.en.topic.2) "Use : %botnick% topic <chan> save / list / add <topic> / del <number> / set <number> | %botnick% topic save / list / add <topic> / del <number> / set <number>"
set black(say.en.topic.3) "Use : %char% topic save / list / add <topic> / del <number> / set <number>"
set black(say.en.topic.4) "Use : %botnick% topic save / list / add <topic> / del <number> / set <number>"
set black(say.en.topic.5) "I cannot save topic because is empty."
set black(say.en.topic.6) "Saving current topic..."
set black(say.en.topic.7) "Saving topic for %chan%..."
set black(say.en.topic.8) "There are no topic saved on %chan%"
set black(say.en.topic.9) "Topic List for %chan% is:"
set black(say.en.topic.10) "%msg%"
set black(say.en.topic.11) "Use :del <number> ( removing the topic )"
set black(say.en.topic.12) "I erased topic with number %msg.1% in %chan% from my Topic List"
set black(say.en.topic.13) "Use :set <number> ( setting the topic )"
set black(say.en.topic.14) "Setting topic with number %msg.1% on %chan%"


################################# Seen ######################################

set black(say.en.seen.1) "Use : %char%seen <chan> <nick>/<host> | %char%seen <nick>/<host>"
set black(say.en.seen.2) "Use : %botnick% seen <chan> <nick>/<host> | %botnick% seen <nick>/<host>"
set black(say.en.seen.3) "Use : %char%seen <nick>/<host>"
set black(say.en.seen.4) "Use : %botnick% seen <nick>/<host>"
set black(say.en.seen.5) "Wait 1 minute to search."
set black(say.en.seen.6) "%msg.1% look in a mirror"
set black(say.en.seen.7) "%msg.1% is already on %chan%"
set black(say.en.seen.8) "i have no record how long it stayed."
set black(say.en.seen.9) "after it stayed %staytime% on %chan%."
set black(say.en.seen.10) "%userentry% is still here."
set black(say.en.seen.11) "I cannot see %userentry% right now on %chan%"
set black(say.en.seen.12) "%entry% (%host%) has part from %chan% about %output% %date% ago, with message: %reason%, %staymsg%"
set black(say.en.seen.13) "%entry% (%host%) has quit IRC %output% %date% ago, with message: %reason%, %staymsg%"
set black(say.en.seen.14) "%entry% (%host%) has entered on %chan% %output% %date%.%nowon% ago"
set black(say.en.seen.15) "%entry% (%host%) has quit in *.net *.split %output% %date% ago, %staymsg%"
set black(say.en.seen.16) "%entry% (%host%) has been kicked of %chan% %output% %date% ago with reason (%reason%), %staymsg%"
set black(say.en.seen.17) "%entry% (%host%) changed his/her nick in %newnick% %output% %date%.%nowon% ago"
set black(say.en.seen.18) "I have not seen %msg.1% lately"

################################# greet ######################################

set black(say.en.greet.1) "GLOBAL : Use %char%greet <chan> <on> | <off> | <add> <message> | <list> | <del> <number>"
set black(say.en.greet.2) "LOCAL : Use %char%greet <on> | <off> | <add> <message> | <list> | <del> <number>"
set black(say.en.greet.3) "GLOBAL: Use %botnick% greet <chan> <on> | <off> | <add> <message> | <list> | <del> <number>"
set black(say.en.greet.4) "LOCAL : Use %botnick% greet <on> | <off> | <add> <message> | <list> | <del> <number>"
set black(say.en.greet.5) "Use %char%greet <on> | <off> | <add> <message> | <list> | <del> <number>"
set black(say.en.greet.6) "Use %botnick% greet <on> | <off> | <add> <message> | <list> | <del> <number>"
set black(say.en.greet.7) "You have enabled GREET MODULE on %chan% .To add a greet use: %char%greet add <message> | %botnick% greet add <message>. You may add as many as you want."
set black(say.en.greet.8) "I disabled GREET MODULE on %chan%."
set black(say.en.greet.9) "I added the next greet message for %chan%:"
set black(say.en.greet.10) "%msg%"
set black(say.en.greet.11) "There are no greets for %chan%"
set black(say.en.greet.12) "Greet List for %chan% is:"
set black(say.en.greet.13) "Use :del <number>. To list the greets and their numbers type %char%greet list"
set black(say.en.greet.14) "I erased the greet message with number :%msg.1% for %chan%."
set black(say.en.greet.15) "Please verify with the command: %char%greet list"


################################# Leave ######################################

set black(say.en.leave.1) "GLOBAL : Use %char%leave <chan> <on> | <off> | <add> <message> | <list> | <del> <number>"
set black(say.en.leave.2) "LOCAL : Use %char%leave <on> | <off> | <add> <message> | <list> | <del> <number"
set black(say.en.leave.3) "GLOBAL: Use %botnick% leave <chan> <on> | <off> | <add> <message> | <list> | <del> <number>"
set black(say.en.leave.4) "LOCAL : Use %botnick% leave <on> | <off> | <add> <message> | <list> | <del> <number>"
set black(say.en.leave.5) "Use %char%leave <on> | <off> | <add> <message> | <list> | <del> <number>"
set black(say.en.leave.6) "Use %botnick% leave <on> | <off> | <add> <message> | <list> | <del> <number>"
set black(say.en.leave.7) "You have enabled LEAVE MODULE on %chan% .To add a leave message type %char%leave add <message> | %botnick% greet leave <message>. You may add as many as you want."
set black(say.en.leave.8) "I disabled LEAVE MODULE on %chan%."
set black(say.en.leave.9) "I added the next leave message for %chan%:"
set black(say.en.leave.10) "%msg%"
set black(say.en.leave.11) "There are no leave messages for %chan%"
set black(say.en.leave.12) "Leave List for %chan% is:"
set black(say.en.leave.13) "Use :del <number>. To list the leaves and their numbers type %char%leave list"
set black(say.en.leave.14) "I erased the leave message with number :%msg.1% for %chan%."
set black(say.en.leave.15) "Please verify with the command: %char%leave list"


################################# Idle ######################################

set black(say.en.idle.1) "GLOBAL :Use %char%idle <chan> <on>/<off> | %char%idle <chan> op <on>/<off> | %char%idle <chan> voice <on>/<off> | %char%idle <chan> add <nick>"
set black(say.en.idle.2) "LOCAL :Use %char%idle <on>/<off> | %char%idle op <on>/<off> | %char%idle voice <on>/<off> | %char%idle add <nick>"
set black(say.en.idle.3) "GLOBAL :Use %botnick% idle <chan> <on>/<off> | %botnick% idle <chan> op <on>/<off> | %botnick% idle <chan> voice <on>/<off> | %botnick% idle <chan> add <nick>"
set black(say.en.idle.4) "LOCAL :Use %botnick% idle <on>/<off> | %botnick% idle op <on>/<off> | %botnick% idle voice <on>/<off> | %botnick% idle add <nick>"
set black(say.en.idle.5) "Use %char%idle <on>/<off> | %char%idle op <on>/<off> | %char%idle voice <on>/<off> | %char%idle add <nick>"
set black(say.en.idle.6) "Use %botnick% idle <on>/<off> | %botnick% idle op <on>/<off> | %botnick% idle voice <on>/<off> | %botnick% idle add <nick>"
set black(say.en.idle.7) "I enabled ANTI-IDLE MODULE on %chan%, to have it work please activate one of these functions : %char%idle op <on>/<off> (idle-deop) | %char%idle voice <on/<off> (idle-devoice)"
set black(say.en.idle.8) "I disabled ANTI-IDLE MODULE on %chan%"
set black(say.en.idle.9) "Use : op <on>/<off>"
set black(say.en.idle.10) "First enable ANTI-IDLE MODULE with command: %char%idle on"
set black(say.en.idle.11) "I enabled idle-deop on %chan%"
set black(say.en.idle.12) "I disabled idle-deop on %chan%"
set black(say.en.idle.13) "Use : voice <on>/<off>"
set black(say.en.idle.14) "I enabled idle-devoice on %chan%"
set black(say.en.idle.15) "I disabled idle-devoice on %chan%"
set black(say.en.idle.16) "Use add <nick>"
set black(say.en.idle.17) "%msg.1% is not on %chan%."
set black(say.en.idle.18) "%msg.1% is already in my database, adding as an exception only.."
set black(say.en.idle.19) "I have added as an exception %msg.1% with host %msg.2% on %chan%."



################################# AntiBotIdle ######################################

set black(say.en.antibotidle.1) "Use %char%botidle <on> | <off> ."
set black(say.en.antibotidle.2) "Use %botnick% botidle <on> | <off> ."
set black(say.en.antibotidle.3) "AntiBotIdle is already enabled."
set black(say.en.antibotidle.4) "I enabled ANTIBOTIDLE MODULE"
set black(say.en.antibotidle.5) "I disabled ANTIBOTIDLE MODULE"

################################################################################
#
#                                     COMMANDS
#
################################################################################



#################################### myset ####################################

set black(say.en.myset.1) "I set your language to %msg.1%"
set black(say.en.myset.2) "I set your output to %msg.1%"
set black(say.en.myset.3) "Use :%char%myset <lang> <RO> / <EN> | <output> <CHAN> / <NOTICE>"
set black(say.en.myset.4) "Use :%botnick% myset <lang> <RO> / <EN> | <output> <CHAN> / <NOTICE>"

#################################### dr #######################################

set black(say.en.dr.1) "Use : %char%dr <chan> <nick>/<host> | %char%dr <nick>/<host>"
set black(say.en.dr.2) "Use : %botnick% dr <chan> <nick>/<host> | %botnick% dr <nick>/<host>"
set black(say.en.dr.3) "Use : %char%dr <nick>/<host>"
set black(say.en.dr.4) "Use : %botnick% dr <nick>/<host>"
set black(say.en.dr.5) "You are infected, join #nohack for help ! For unban join #unban !"

################################### bot #######################################

set black(say.en.bot.1) "Use : %char%bot <chan> <nick>/<host> | %char%bot <nick>/<host>"
set black(say.en.bot.2) "Use : %botnick% bot <chan> <nick>/<host> | %botnick% bot <nick>/<host>"
set black(say.en.bot.3) "Use : %char%bot <nick>/<host>"
set black(say.en.bot.4) "Use : %botnick% bot <nick>/<host>"
set black(say.en.bot.5) "BOT Detected ! If you are not a BOT contact an operator online for unban !"


################################## b #####################################

set black(say.en.b.1) "Use : %char%b <chan> <nick>/<host> <time> <reason> | %char%b <nick>/<host> <time> <reason>"
set black(say.en.b.2) "Global Ban : %char%b <nick>/<host> <time> global <reason>"
set black(say.en.b.3) "Use : %botnick% b <chan> <nick>/<host> <time> <reason> | %botnick% b <nick>/<host> <time> <reason>"
set black(say.en.b.4) "Globan Ban : %botnick% b <nick>/<host> <time> global <reason>"
set black(say.en.b.5) "Use : %char%b <nick>/<host> <time> <reason>"
set black(say.en.b.6) "Use : %botnick% bot <nick>/<host> <time> <reason>"
set black(say.en.b.7) "Added ban on :%msg.1% in :%chan% for :%msg.2% minutes"
set black(say.en.b.8) "Added a global ban on host :%msg.1% for :%msg.2% minutes"
set black(say.en.b.9) "You are banned!"

################################## n #####################################

set black(say.en.n.1) "Use : %char%n <chan> <nick> | %char%n <nick>"
set black(say.en.n.2) "Use : %botnick% n <chan> <nick> | %botnick% b <nick>"
set black(say.en.n.3) "Use : %char%n <nick>"
set black(say.en.n.4) "Use : %botnick% n <nick>"
set black(say.en.n.5) "Your nickname is considered to be improper. Please change it and come back after !"

################################## id ####################################

set black(say.en.id.1) "Use : %char%id <chan> <nick> | %char%id <nick>"
set black(say.en.id.2) "Use : %botnick% id <chan> <nick> | %botnick% id <nick>"
set black(say.en.id.3) "Use : %char%id <nick>"
set black(say.en.id.4) "Use : %botnick% id <nick>"
set black(say.en.id.5) "Your IDENT is considered to be improper. Please change it and come back after !"


################################## black #################################

set black(say.en.black.1) "Use : %char%black <chan> <nick>/<host> <reason> | %char%black <nick>/<host> <reason>"
set black(say.en.black.2) "Use : %botnick% black <chan> <nick>/<host> <reason> | %botnick% black <nick>/<host> <reason>"
set black(say.en.black.3) "Use : %char%black <nick>/<host> <reason>"
set black(say.en.black.4) "Use : %botnick% black <nick>/<host> <reason>"
set black(say.en.black.5) "Out - Unallowed !"


################################## w #####################################

set black(say.en.w.1) "Use : %char%w <chan> <nick> | %char%w <nick>"
set black(say.en.w.2) "Use : %botnick% w <chan> <nick> | %botnick% w <nick>"
set black(say.en.w.3) "Use : %char%w <nick>"
set black(say.en.w.4) "Use : %botnick% w <nick>"
set black(say.en.w.5) "You have been warned, please watch your behavior !"
set black(say.en.w.6) "This is the last warning. You are breaking one of our rules, available at website of channel (get it from topic). Thanks."

################################# spam ###################################

set black(say.en.spam.1) "Use : %char%spam <chan> <nick>/<host> | %char%spam <nick>/<host>"
set black(say.en.spam.2) "Use : %botnick% spam <chan> <nick>/<host> | %botnick% spam <nick>/<host>"
set black(say.en.spam.3) "Use : %char%spam <nick>/<host>"
set black(say.en.spam.4) "Use : %botnick% spam <nick>/<host>"
set black(say.en.spam.5) "You were caught making spam, join #nohack for help !"

################################# k #######################################

set black(say.en.k.1) "Use : %char%k <chan> <nick> <reason> | %char%k <nick> <reason>"
set black(say.en.k.2) "Use : %botnick% k <chan> <nick> <reason> | %botnick% k <nick> <reason>"
set black(say.en.k.3) "Use : %char%k <nick> <reason>"
set black(say.en.k.4) "Use : %botnick% k <nick> <reason>"
set black(say.en.k.5) "You just got lucky this time !"

################################# gag ######################################

set black(say.en.gag.1) "Use : %char%gag <chan> <nick> | %char%gag <nick>"
set black(say.en.gag.2) "Use : %botnick% gag <chan> <nick> | %botnick% gag <nick>"
set black(say.en.gag.3) "Use : %char%gag <nick>"
set black(say.en.gag.4) "Use : %botnick% gag <nick>"
set black(say.en.gag.5) "%msg.1% you have being silenced.Wait to receive unban on %chan% to speak again."

################################ bw #########################################

set black(say.en.bw.1) "Use : %char%bw <chan> <nick>/<host> | %char%bw <nick>/<host>"
set black(say.en.bw.2) "Use : %botnick% bw <chan> <nick>/<host> | %botnick% bw <nick>/<host>"
set black(say.en.bw.3) "Use : %char%bw <nick>/<host>"
set black(say.en.bw.4) "Use : %botnick% bw <nick>/<host>"
set black(say.en.bw.5) "You have no rights to use such a language !"

############################### sb ##########################################

set black(say.en.sb.1) "Use : %char%sb <chan> <host> | %char%sb <host>"
set black(say.en.sb.2) "Use : %botnick% sb <chan> <host> | %botnick% sb <host>"
set black(say.en.sb.3) "Use : %char%sb <host>"
set black(say.en.sb.4) "Use : %botnick% sb <host>"
set black(say.en.sb.5) "4Global Ban : 1%msg.1% | 4Set by : 12%msg.2% | 4Reason : 1%msg.5% | 4Created in : 1%msg.3% | 4Expire in : 1permanent , sticky"
set black(say.en.sb.6) "4Global Ban : 1%msg.1% | 4Set by : 1%msg.2% | 4Reason : 1%msg.5% | 4Created in : 1%msg.3% | 4Expire in : 1permanent"
set black(say.en.sb.7) "4Global Ban : 1%msg.1% | 4Set by : 1%msg.2% | 4Reason : 1%msg.5% | 4Created in : 1%msg.3% | 4Expire in : 1%msg.4% ,sticky"
set black(say.en.sb.8) "4Global Ban : 12%msg.1% | 4Set by : 12%msg.2% | 4Reason : 12%msg.5% | 4Created in : 12%msg.3% | 4Expire in : 12%msg.4%"
set black(say.en.sb.9) "4Local Ban : 1%msg.1% | 4Set by : 12%msg.2% | 4Reason : 1%msg.5% | 4Created in : 1%msg.3% | 4Expire in : 1permanent , sticky"
set black(say.en.sb.10) "4Local Ban : 1%msg.1% | 4Set by : 1%msg.2% | 4Reason : 1%msg.5% | 4Created in : 1%msg.3% | 4Expire in : 1permanent"
set black(say.en.sb.11) "4Local Ban : 1%msg.1% | 4Set by : 1%msg.2% | 4Reason : 1%msg.5% | 4Created in : 1%msg.3% | 4Expire in : 1%msg.4% ,sticky"
set black(say.en.sb.12) "4Local Ban : 12%msg.1% | 4Set by : 12%msg.2% | 4Reason : 12%msg.5% | 4Creat in data de : 12%msg.3% | 4Expire in : 12%msg.4%"
set black(say.en.sb.13) "I have not found anything in my list."

############################### d ###########################################

set black(say.en.d.1) "Use : %char%d <chan> <days number> <nick>/<host> <reason> | %char%d <days number> <nick>/<host> <reason>"
set black(say.en.d.2) "Use : %botnick% d <chan> <days number> <nick>/<host> <reason> | %botnick% d <days number> <nick>/<host> <reason>"
set black(say.en.d.3) "Use : %char%d <days number> <nick>/<host> <reason>"
set black(say.en.d.4) "Use : %botnick% d <days number> <nick>/<host> <reason>"
set black(say.en.d.5) "These is how we BAN in days :)"


############################### stick ########################################

set black(say.en.stick.1) "Use : %char%stick <chan> <nick>/<host> <time> <reason> | %char%stick <nick>/<host> <time> <reason>"
set black(say.en.stick.2) "Use : %botnick% stick <chan> <nick>/<host> <time> <reason> | %botnick% stick <nick>/<host> <time> <reason>"
set black(say.en.stick.3) "Use : %char%stick <nick>/<host> <time> <reason>"
set black(say.en.stick.4) "Use : %botnick% stick <nick>/<host> <time> <reason>"
set black(say.en.stick.5) "A sticky ban :)"

################################ t ###########################################

set black(say.en.t.1) "Use : %char%t <chan> <topic> | %char% t <topic>"
set black(say.en.t.2) "Use : %botnick% t <chan> <topic> | %botnick% t <topic>"
set black(say.en.t.3) "Use : %char%t <topic>"
set black(say.en.t.4) "Use : %botnick% t <topic>"

############################### status #######################################


set black(say.en.status.1) "I am started for :%msg%"
set black(say.en.status.2) "I am connected to server :%msg%"
set black(say.en.status.3) "I am online for :%msg%"
set black(say.en.status.4) "Channels in my memory are: %msg%"
set black(say.en.status.5) "Servers' Uptime is: %msg%"

################################ i ##########################################

set black(say.en.i.1) "%msg.1% is already on %chan%."
set black(say.en.i.2) "Inviting %msg.1% on %chan%."
set black(say.en.i.3) "Use : %char%i <chan> <nick1> <nick2>.. | %char%i <nick1> <nick2>.."
set black(say.en.i.4) "Use : %botnick% i <chan> <nick1> <nick2>.. | %botnick% i <nick1> <nick2>.."
set black(say.en.i.5) "Use : %char%i <nick1> <nick2>.."
set black(say.en.i.6) "Use : %botnick% i <nick1> <nick2>.."
set black(say.en.i.7) "You are invited on %chan% by %nick% , if you want to enter type: /join %chan% . Thank You"

################################ addinfo ###################################

set black(say.en.addinfo.1) "Use : %char%addinfo <newinfo> to turn off: %char%addinfo off"
set black(say.en.addinfo.2) "Use : %botnick% addinfo <newinfo> to turn off %botnick% addinfo off"
set black(say.en.addinfo.3) "I set info OFF"
set black(say.en.addinfo.4) "I set info : %msg%"

################################ purge #####################################

set black(say.en.purge.1) "Please specify a reason."
set black(say.en.purge.2) "I deleted %chan% from my list."

################################## l ########################################

set black(say.en.l.1) "Use : %char%l <chan> <seconds> | %char%l <seconds>"
set black(say.en.l.2) "Use : %botnick% l <chan> <seconds> | %botnick% l <seconds>"
set black(say.en.l.3) "Use : %char%l <seconds>"
set black(say.en.l.4) "Use : %botnick% l <seconds>"
set black(say.en.l.5) "The value is too much.Please use a value under 300 seconds (5 minutes)!"
set black(say.en.l.6) "I set +%msg.1% on %chan% for %msg.2% seconds"

################################## chat #####################################

set black(say.en.chat.1) "I sent the CHAT request."

################################## ul ######################################

set black(say.en.ul.1) "I have unlocked the modes +%msg.1% from %chan% in case that were set"

################################## say #####################################

set black(say.en.say.1) "Use : %char%say <chan> <message> | %char%say <message>"
set black(say.en.say.2) "Use : %botnick% say <chan> <message> | %botnick% say <message>"
set black(say.en.say.3) "Use : %char%say <message>"
set black(say.en.say.4) "Use : %botnick% say <message>"

################################## act ######################################

set black(say.en.act.1) "Use : %char%act <chan> <message> | %char%act <message>"
set black(say.en.act.2) "Use : %botnick% act <chan> <message> | %botnick% act <message>"
set black(say.en.act.3) "Use : %char%act <message>"
set black(say.en.act.4) "Use : %botnick% act <message>"

################################## broadcast ################################

set black(say.en.broadcast.1) "Use : %char%broadcast <text>"
set black(say.en.broadcast.2) "Use : %botnick% broadcast <text>"

################################## check ####################################

set black(say.en.check.1) "Use : %char%check <nick>"
set black(say.en.check.2) "Use : %botnick% check <nick>"
set black(say.en.check.3) "You are being checked, please do not reply to this message !"

################################## version ##################################

set black(say.en.version.1) "1SCRIPT VERSION : 4BlackToolS 2.3  1Created by 12BLaCkShaDoW . 1For other details ---=1 4WwW.TclScripts.Net 1or 4#TCL-HELP @ UNDERNET"

################################# ub ######################################

set black(say.en.ub.1) "Use : %char%ub <chan> <host> | %char%ub <host>"
set black(say.en.ub.2) "Use : %botnick% ub <chan> <host> | %botnick% ub <host>"
set black(say.en.ub.3) "Use : %char%ub <host>"
set black(say.en.ub.4) "Use : %botnick% ub <host>"
set black(say.en.ub.5) "You cannot unban this ban.Requires Senior+ level"
set black(say.en.ub.6) "Unbaned %msg.1% from my global banlist"
set black(say.en.ub.7) "There is no such a ban in my global database"
set black(say.en.ub.8) "Unbaned %msg.1% from %chan% banlist"
set black(say.en.ub.9) "There is no such a ban in my database"
set black(say.en.ub.10) "%msg.1% has unbaned the host %msg.2% from channel %chan%."

################################## away ###################################

set black(say.en.away.1) "Use %char%away <text> / To turn off type : %char%away off"
set black(say.en.away.2) "Use %botnick% away <text> / To turn off type : %botnick% away off"
set black(say.en.away.3) "I set my AWAY OFF"
set black(say.en.away.4) "I set my AWAY to:%msg%."

################################## mode ###################################

set black(say.en.mode.1) "Use : %char%mode <chan> +mode | %char%mode +mode"
set black(say.en.mode.2) "Use : %botnick% mode <chan> +mode | %botnick% mode +mode"
set black(say.en.mode.3) "set : %char%mode +mode"
set black(say.en.mode.4) "Use : %botnick% mode +mode"
set black(say.en.mode.5) "Use : %char%mode +mode"
set black(say.en.mode.6) "Done! Modes %msg.1% applied on %chan%."


################################### set ###################################


set black(say.en.set.1) "Use : %char%set <chan> +flag / %char%set <chan> flag 0:0 | %char%set +flag / %char%set flag 0:0"
set black(say.en.set.2) "Use : %botnick% set <chan> +flag / %botnick% set <chan> flag 0:0 | %botnick% set +flag / %botnick% set flag 0:0"
set black(say.en.set.3) "Use : %char%set +flag / %char%set flag 0:0"
set black(say.en.set.4) "Use : %botnick% set +flag / %botnick% set flag 0:0"
set black(say.en.set.5) "1ERROR setting 12 %msg.1%  1on %chan%."
set black(say.en.set.6) "1Set 12 %msg.1%  1on %chan%"
set black(say.en.set.7) "1ERROR setting1 12%msg.1% 4 %msg.set%  1on %chan%."
set black(say.en.set.8) "1Set1 4%msg.1% 12 %msg.set%  1on %chan%"


#################################### ignore ################################

set black(say.en.ignore.1) "Use %char%ignore <list> | <add> <host> <time> <reason> | <delete> <host> ."
set black(say.en.ignore.2) "Use %botnick% ignore <list> | <add> <host> <time> <reason> | <delete> <host> ."
set black(say.en.ignore.3) "There are no ignores."
set black(say.en.ignore.4) "12%msg.1% 1by :12%msg.2%1 1reason :12%msg.6% 1Expires at :12%msg.3%"
set black(say.en.ignore.5) "1Error.%msg.1% has ignore already."
set black(say.en.ignore.6) "Added ignore on %msg.1% with reason :%msg.7% for :%msg.2% minutes"
set black(say.en.ignore.7) "Use %char%ignore delete <mask>"
set black(say.en.ignore.8) "Error.%msg.1% has no ignore."
set black(say.en.ignore.9) "I removed ignore for %msg.1%."



################################## show ####################################

set black(say.en.show.1) "Use : %char%show <chan> <flag> | %char%show <flag>"
set black(say.en.show.2) "Use : %botnick% show <chan> <flag> | %botnick% show <flag>"
set black(say.en.show.3) "Use : %char%show <flag>"
set black(say.en.show.4) "Use : %botnick% show <flag>"
set black(say.en.show.5) "I could not obtain informations for %msg.1%."
set black(say.en.show.6) "4%msg.1% 1is set to: %msg.8%"



################################## silence ####################################

set black(say.en.silence.1) "Use : %char%silence <on> | <off>"
set black(say.en.silence.2) "Use : %botnick% silence <on> | <off>"
set black(say.en.silence.3) "SILENCE +*!*@* Enabled"
set black(say.en.silence.4) "SILENCE +*!*@* Disabled"


################################## msg #######################################

set black(say.en.msg.1) "Use %char%msg <nick> <text>"
set black(say.en.msg.2) "Use %botnick% msg <nick> <text>"

################################## reset #####################################

set black(say.en.reset.1) "Use : %char%reset <chan> <flag> / <all> | %char%reset <flag> / <all>"
set black(say.en.reset.2) "Use : %botnick% reset <chan> <flag> / <all> | %botnick% reset <flag> / <all>"
set black(say.en.reset.3) "Use : %char% reset <flag> / <all>"
set black(say.en.reset.4) "Use : %botnick% reset <flag> / <all>"
set black(say.en.reset.5) "I reset reasons & bans for %chan%.."
set black(say.en.reset.6) "I could not reset %msg.1%"
set black(say.en.reset.7) "I reset %msg.1% for %chan%"

##################################banlist##################################### 

set black(say.en.banlist.1) "Use : %char%banlist <chan> <user> | %char%banlist <user>"
set black(say.en.banlist.2) "GLOBAL : %char%banlist global"
set black(say.en.banlist.3) "Use : %botnick% banlist <chan> <user>  | %botnick% banlist <user> "
set black(say.en.banlist.4) "GLOBAL : %botnick% banlist global"
set black(say.en.banlist.5) "Use : %char%banlist <user>"
set black(say.en.banlist.6) "Use : %botnick% banlist <user>"
set black(say.en.banlist.7) "1*** NONE ***"
set black(say.en.banlist.8) "1*** End of list ***"
set black(say.en.banlist.9) "1Global Ban List is:"
set black(say.en.banlist.10) "12%msg.1% 1by: 12%msg.2% 1Reason : 12%msg.5% 1Expire in : 12%msg.4% 1Created in : 12%msg.3%"
set black(say.en.banlist.11) "1Banlist for %msg.1% (%chan%) is:"
set black(say.en.banlist.12) "12%msg.1% 1Reason : 12%msg.6% 1Expire in : 12%msg.3% 1Created in : 12%msg.2%"

################################## secure ####################################

set black(say.en.secure.1) "Use %char%secure <chan> <on> / <off> | %char%secure <on> / <off> "
set black(say.en.secure.2) "Use : %botnick% secure <chan> <on> / <off> | %botnick% secure <on> / <off>"
set black(say.en.secure.3) "Use : %char%secure <on> / <off>"
set black(say.en.secure.4) "Use : %botnick% secure <on> / <off>"
set black(say.en.secure.5) "I enabled all protections on %chan% .."
set black(say.en.secure.6) "I disabled all protections on %chan% .."


################################ PRIVATE COMMANDS ##############################
#
#
#
###############################################################################


################################### rehash #####################################

set black(say.en.rehash.1) "Rehashing.."

################################### restart ####################################

set black(say.en.restart.1) "Restarting.."

################################### save #######################################


set black(say.en.save.1) "Saving files.."


################################### jump #######################################

set black(say.en.jump.1) "Changing server..."


################################### die #######################################

set black(say.en.die.1) "And there i go..:)"

################################### nick #####################################

set black(say.en.nick.1) "Changing nick in %msg.1%"
set black(say.en.nick.2) "Use : nick <newnick>"

################################### addchan ##################################

set black(say.en.addchan.1) "Use : addchan #channel"
set black(say.en.addchan.2) "%msg.1% is already in my channel list"
set black(say.en.addchan.3) "Added %msg.1% in my channel list"
set black(say.en.addchan.4) "Use : %botnick% addchan #channel"


################################### delchan ##################################

set black(say.en.delchan.1) "Use : delchan #channel"
set black(say.en.delchan.2) "%msg.1% is not in my memory"
set black(say.en.delchan.3) "I removed %msg.1% from my channel list"
set black(say.en.delchan.4) "Use : %botnick% delchan #channel"

################################### suspend ##################################

set black(say.en.suspend.1) "Use : suspend #channel"
set black(say.en.suspend.2) "%msg.1% is not in my memory"
set black(say.en.suspend.3) "%msg.1% has already suspend"
set black(say.en.suspend.4) "I set suspend for channel %msg.1%"
set black(say.en.suspend.5) "Use : %botnick% suspend #channel"

################################### unsuspend ##################################

set black(say.en.unsuspend.1) "Use : unsuspend #channel"
set black(say.en.unsuspend.2) "%msg.1% is not in my memory"
set black(say.en.unsuspend.3) "%msg.1% has no suspend"
set black(say.en.unsuspend.4) "I set unsuspend for channel %msg.1%"
set black(say.en.unsuspend.5) "Use : %botnick% unsuspend #channel"


################################### op ##########################################

set black(say.en.op.1) "%msg.1% is not in my memory"
set black(say.en.op.2) "%msg.1% has already op.."

################################### deop ########################################

set black(say.en.deop.1) "%msg.1% is not in my memory"

################################### voice #######################################

set black(say.en.voice.1) "%msg.1% is not in my memory"
set black(say.en.voice.2) "%msg.1% has already voice.."

################################### devoice #####################################

set black(say.en.devoice.1) "%msg.1% is not in my memory."

################################### invite ######################################

set black(say.en.invite.1) "Use : invite <chan>"
set black(say.en.invite.2) "You received invite on %chan% please rejoin !"


################################### add #########################################

set black(say.en.add.1) "Use %char%add <level> <chan> <user1> <user2>.. (Level : voice, op, senior, admin, manager,protect)  | %char%add <level> <user1> <user2>.. (Levels : voice, op, senior, admin, manager,protect)"
set black(say.en.add.2) "Use : %botnick% add <level> <chan> <user1> <user2>.. (Level : voice, op, senior, admin, manager,protect)  | %botnick% add <level> <user1> <user2>.. (Levels : voice, op, senior, admin, manager,protect)"
set black(say.en.add.3) "Use : %char%add <level> <user1> <user2>.. (Levels : voice, op, senior, admin, manager,protect)"
set black(say.en.add.4) "Use : %botnick% add <level> <user1> <user2>.. (Levels : voice, op, senior, admin, manager,protect)"
set black(say.en.add.5) "There is already another user in my database with the same host.This is %msg.1%."
set black(say.en.add.6) "You cannot add Manager Level because it is higher than your access level."
set black(say.en.add.7) "You cannot add Admin Level because this is your access level."
set black(say.en.add.8) "You cannot add Manager Level because this is your access level."
set black(say.en.add.9) "%msg.1% has Manager access on %chan%."
set black(say.en.add.10) "Added user %msg.1% with host :%msg.2%"
set black(say.en.add.11) "%msg.1% has Admin access on %chan%."
set black(say.en.add.12) "%msg.1% has Senior access on %chan%."
set black(say.en.add.13) "%msg.1% has Op access on %chan%."
set black(say.en.add.14) "%msg.1% has Voice access on %chan%."
set black(say.en.add.15) "%msg.1% has Protect access on %chan%."
set black(say.en.add.16) "%msg.1% has Owner access ."

################################### adduser #########################################

set black(say.en.adduser.1) "Use %char%adduser <level> <chan> <nick1> <nick2>.. (Level : voice, op, senior, admin, manager,protect)  | %char%adduser <level> <nick1> <nick2>.. (Levels : voice, op, senior, admin, manager,protect)"
set black(say.en.adduser.2) "Use : %botnick% adduser <level> <chan> <nick1> <nick2>.. (Level : voice, op, senior, admin, manager,protect)  | %botnick% adduser <level> <nick1> <nick2>.. (Levels : voice, op, senior, admin, manager,protect)"
set black(say.en.adduser.3) "Use : %char%adduser <level> <nick1> <nick2>.. (Levels : voice, op, senior, admin, manager,protect)"
set black(say.en.adduser.4) "Use : %botnick% adduser <level> <nick1> <nick2>.. (Levels: voice, op, senior, admin, manager,protect)"

################################### delacc #########################################


set black(say.en.delacc.1) "Use %char%delacc <chan> <user1> <user2>.. | %char%delacc <user1> <user2>.."
set black(say.en.delacc.2) "Use : %botnick% delacc <chan> <user1> <user2>..  | %botnick% delacc <user1> <user2>.."
set black(say.en.delacc.3) "Use : %char%delacc <user1> <user2>.."
set black(say.en.delacc.4) "Use : %botnick% delacc <user1> <user2>.."
set black(say.en.delacc.5) "I removed access for %msg.1% on %chan%."

#################################### del ###########################################

set black(say.en.del.1) "Use : %char%del <user1> <user2>.."
set black(say.en.del.2) "Use : %botnick% del <user1> <user2>.."
set black(say.en.del.3) "I deleted %msg.1% out of my memory"


################################### addhost ########################################

set black(say.en.addhost.1) "Use : %char%addhost <user1> <host>"
set black(say.en.addhost.2) "Use : %botnick% addhost <user1> <host>"
set black(say.en.addhost.3) "%msg.2% is already in database of %msg.1%."
set black(say.en.addhost.4) "Added :%msg.2% to %msg.1%"

################################### delhost ########################################


set black(say.en.delhost.1) "Use : %char%addhost <user1> <host>"
set black(say.en.delhost.2) "Use : %botnick% addhost <user1> <host>"
set black(say.en.delhost.3) "%msg.2% is not in database of %msg.1%."
set black(say.en.delhost.4) "I removed host :%msg.2% from user :%msg.1%"

################################### chuser ########################################

set black(say.en.chuser.1) "Use : %char%chuser <user> <newuser>"
set black(say.en.chuser.2) "Use : %botnick% chuser <user> <newuser>"
set black(say.en.chuser.3) "Changing %msg.1% in : %msg.2% ."

################################### userlist ########################################

set black(say.en.userlist.1) "Use %char%userlist <chan> <all> / <op> / <voice> / <senior> / <admin> / <protect> /  <manager> | %char%userlist <all> / <op> / <voice> / <senior> / <admin> / <protect> /  <manager>"
set black(say.en.userlist.2) "Use : %botnick% userlist <chan> <all> / <op> / <voice> / <senior> / <admin> / <protect> /  <manager>  | %botnick% userlist <all> / <op> / <voice> / <senior> / <admin> / <protect> /  <manager>"
set black(say.en.userlist.3) "Use : %char%userlist <all> / <op> / <voice> / <senior> / <admin> / <protect> /  <manager>"
set black(say.en.userlist.4) "Use : %botnick% userlist <all> / <op> / <voice> / <senior> / <admin> / <protect>"

set black(say.en.userlist.5) "4I have 12%msg.1% 4users with Manager access."
set black(say.en.userlist.6) "4Manager 12userlist 4is.."
set black(say.en.userlist.7) "12%msg%"
set black(say.en.userlist.8) "4I  have 12%msg.1% 4users with Administrator access."
set black(say.en.userlist.9) "4Administrator 12userlist 4is.."
set black(say.en.userlist.10) "4I  have 12%msg.1% 4users with Senior access."
set black(say.en.userlist.11) "4Senior 12userlist 4is.."
set black(say.en.userlist.12) "4I have 12%msg.1% 4users with Protect access."
set black(say.en.userlist.13) "4Protect 12userlist 4is.."
set black(say.en.userlist.14) "4I have 12%msg.1% 4users with Op access."
set black(say.en.userlist.15) "4Op 12userlist 4is.."
set black(say.en.userlist.16) "4BOSS OWNER :12%msg%"
set black(say.en.userlist.17) "4Owner List :12%msg%"
set black(say.en.userlist.18) "4I have 12%msg.1% 4users with Voice access."
set black(say.en.userlist.19) "4Voice 12userlist 4is.."
set black(say.en.userlist.20) "4I have 12%msg.1% 4users 4on %chan%"
set black(say.en.userlist.21) "4Userlist is.."

#################################### channels #####################################

set black(say.en.channels.1) "I have %msg.1% channels.."
set black(say.en.channels.2) "%msg%"


#################################### info ########################################

set black(say.en.info.1) "Use : %char%info <chan> <user1> | %char%info <user1>"
set black(say.en.info.2) "Use : %botnick% info <chan> <user1> | %botnick% info <user1>"
set black(say.en.info.3) "Use : %char%info <user1>"
set black(say.en.info.4) "Use : %botnick% info <user1>"
set black(say.en.info.5) "4It has access on :%msg%"
set black(say.en.info.6) "4HOSTS: 1%msg%"
set black(say.en.info.7) "4Last ONLINE seen : 1%msg%"
set black(say.en.info.8) "4Informations about 1%msg.1%"
set black(say.en.info.9) "4Current time   : 1%msg%"
set black(say.en.info.10) "Out of order - Suspended"
set black(say.en.info.11) "4Access Level :1%msg.8% 12(%msg.1%)"
set black(say.en.info.12) "4Info - 12%msg%"
set black(say.en.info.13) "4Last modified by : 1%msg.1% in : 1%msg.8%"
set black(say.en.info.14) "4Last ONLINE seen :1NONE"
set black(say.en.info.15) "4To see the statistics for user %msg.1% type - 1%char%activ 4%msg.1% -"
set black(say.en.info.16) "4End of informations.."
set black(say.en.info.17) "4Last ONLINE seen :1%msg%"

################################## s #############################################

set black(say.en.s.1) "Use %char%s <chan> <user1> | %char%s <user1>"
set black(say.en.s.2) "Use : %botnick% s <chan> <user1>  | %botnick% s <user1>"
set black(say.en.s.3) "Use : %char%s <user1>"
set black(say.en.s.4) "Use : %botnick% s <user1>"
set black(say.en.s.5) "%msg.1% is already suspended on %chan%."
set black(say.en.s.6) "I suspended %msg.1% access on %chan%"


################################## us #############################################

set black(say.en.us.1) "Use %char%us <chan> <user1> | %char%us <user1>"
set black(say.en.us.2) "Use : %botnick% us <chan> <user1>  | %botnick% us <user1>"
set black(say.en.us.3) "Use : %char%us <user1>"
set black(say.en.us.4) "Use : %botnick% us <user1>"
set black(say.en.us.5) "%msg.1% has no suspend on %chan%."
set black(say.en.us.6) "I removed %msg.1% suspend on %chan%"

################################## ping ###########################################

set black(say.en.ping.1) "Ping reply is %msg.1% seconds"

################################## time ###########################################

set black(say.en.time.1) "Time is : %msg%"

################################## vers ###########################################

set black(say.en.vers.1) "Use %char%vers <nick> ."
set black(say.en.vers.2) "Use %botnick% vers <nick> ."
set black(say.en.vers.3) "4%msg.1% has version : 12%msg.4%"


################################## whois ##########################################

set black(say.en.whois.1) "Use :%char%whois <nick>"
set black(say.en.whois.2) "Use :%botnick% whois <nick>"
set black(say.en.whois.3) "4Informations about %msg.1% :%msg.4%"
set black(say.en.whois.4) "4Is on these channels : 12%msg%"
set black(say.en.whois.5) "There is no such a nick."

################################## clear ##########################################

set black(say.en.clear.1) "Use %char%clear <chan> <banlist> / <userlist> | %char%clear <banlist> / <userlist>"
set black(say.en.clear.2) "Use : %botnick% clear <chan> <banlist> / <userlist>  | %botnick% clear <banlist> / <userlist>"
set black(say.en.clear.3) "Use : %char%clear <banlist> | <userlist>"
set black(say.en.clear.4) "Use : %botnick% clear <banlist> | <userlist>"
set black(say.en.clear.5) "I removed all the accesses on %chan%"
set black(say.en.clear.6) "I have reset (%msg.1%) bans for %chan%"


################################## addbot #########################################

set black(say.en.addbot.1) "Use %char%addbot <handle> <host>"
set black(say.en.addbot.2) "Use %botnick% addbot <handle> <host>"
set black(say.en.addbot.3) "%msg.1% is already in my database."
set black(say.en.addbot.4) "Added bot with handle : %msg.1% , host : %msg.2%."

################################## addop ##########################################

set black(say.en.addop.1) "Use %char%addop <chan> <user> | %char%addop <user>"
set black(say.en.addop.2) "Use : %botnick% addop <chan> <user>  | %botnick% addop <user>"
set black(say.en.addop.3) "Use : %char%char(p)addop <user>"
set black(say.en.addop.4) "Use : %botnick% addop <user>"
set black(say.en.addop.5) "%msg.1% has already autoop."
set black(say.en.addop.6) "Added autoop for user %msg.1% on %chan%."

################################## addvoice ##########################################

set black(say.en.addvoice.1) "Use %char%addvoice <chan> <user> | %char%addvoice <user>"
set black(say.en.addvoice.2) "Use : %botnick% addvoice <chan> <user>  | %botnick% addvoice <user>"
set black(say.en.addvoice.3) "Use : %char%char(p)addvoice <user>"
set black(say.en.addvoice.4) "Use : %botnick% addvoice <user>"
set black(say.en.addvoice.5) "%msg.1% has already autovoice."
set black(say.en.addvoice.6) "Added autovoice for user %msg.1% on %chan%."


################################## delvoice ##########################################

set black(say.en.delvoice.1) "Use %char%delvoice <chan> <user> | %char%delvoice <user>"
set black(say.en.delvoice.2) "Use : %botnick% delvoice <chan> <user>  | %botnick% delvoice <user>"
set black(say.en.delvoice.3) "Use : %char%char(p)delvoice <user>"
set black(say.en.delvoice.4) "Use : %botnick% delvoice <user>"
set black(say.en.delvoice.5) "%msg.1% has no autovoice."
set black(say.en.delvoice.6) "I removed autovoice for user %msg.1% on %chan%."

################################## delop ##########################################

set black(say.en.delop.1) "Use %char%delop <chan> <user> | %char%delop <user>"
set black(say.en.delop.2) "Use : %botnick% delop <chan> <user>  | %botnick% delop <user>"
set black(say.en.delop.3) "Use : %char%char(p)delop <user>"
set black(say.en.delop.4) "Use : %botnick% delop <user>"
set black(say.en.delop.5) "%msg.1% has no autoop."
set black(say.en.delop.6) "I removed autoop for user %msg.1% on %chan%."

################################## activ ##########################################

set black(say.en.activ.1) "Use %char%activ <chan> <user> | %char%activ <user>"
set black(say.en.activ.2) "Use : %botnick% activ <chan> <user>  | %botnick% activ <user>"
set black(say.en.activ.3) "Use : %char%activ <user>"
set black(say.en.activ.4) "Use : %botnick% activ <user>"
set black(say.en.activ.5) "4Statistics reggarding commands used by 12%msg.1% 4 on %chan% are :"
set black(say.en.activ.6) "%msg%"
set black(say.en.activ.7) "4End of list.."
set black(say.en.activ.8) "4Statistics reggarding commands used by 12%msg.1% 4having Op access are :"
set black(say.en.activ.9) "4Statistics reggarding commands used by 12%msg.1% 4having Voice access are :"

################################## addmyhost ######################################

set black(say.en.addmyhost.1) "Use %char%addmyhost <host> ."
set black(say.en.addmyhost.2) "Use %botnick% addmyhost <host> ."
set black(say.en.addmyhost.3) "%msg.1% is already in your database of hosts."
set black(say.en.addmyhost.4) "Added %msg.1% in your database of hosts."

################################## delmyhost ######################################

set black(say.en.delmyhost.1) "Use %char%delmyhost <host> ."
set black(say.en.delmyhost.2) "Use %botnick% delmyhost <host> ."
set black(say.en.delmyhost.3) "%msg.1% is not in your database of hosts."
set black(say.en.delmyhost.4) "I removed %msg.1% from your database of host."

################################## cc ############################################

set black(say.en.cc.1) "Use %char%cc <chan>"
set black(say.en.cc.2) "Use %botnick% cc <chan>"
set black(say.en.cc.3) "Channel was created in :%msg% ."
set black(say.en.cc.4) "This channel is not created. Please redefine your check"

################################## stats ##########################################

set black(say.en.stats.1) "1Channel added by : 12%awho% (%ahost%) 1in : 12%atime%"
set black(say.en.stats.2) "1Channel added for : 12%duration%"
set black(say.en.stats.3) "1Channel added for : 12%duration%"
set black(say.en.stats.4) "1Channel removed by : 12%rwho% (%rhost%) 1in : 12%rtime%"
set black(say.en.stats.5) "1There are no statistics for %chan%"
set black(say.en.stats.6) "1Statistics for 12%chan% :"
set black(say.en.stats.7) "%msg%"
set black(say.en.stats.8) "1Channel status : 12ONLINE"
set black(say.en.stats.9) "1Channel status : 12ONLINE 1(I am NOT on %chan%)"
set black(say.en.stats.10) "1Users : 12 %msg.1%  (1Op users : 12 %msg.2%  - 1Voice users : 12 %msg.3% ) - 1Bans : 12 %msg.4% "
set black(say.en.stats.11) "1End of statistics.."
set black(say.en.stats.12) "1Channel status : 12OFFLINE"


################################# login #########################################

set black(say.en.login.1) "Logging to %msg.1%.."


################################ Top ###########################################

set black(say.en.top.1) "Use %char%top <chan> <command> / Use %char%top <chan> <words> (Top Words) | %char%top <command> / Use %char%top <words> (Top Words)"
set black(say.en.top.2) "Commands for TOP is available are : <dr>,<bot>, <b>, <bw>, <black>, <spam>, <stick>, <n>, <i>, <w>, <k>, <d>"
set black(say.en.top.3) "Use : %botnick% top <chan> <command> / Use %botnick% top <chan> <words> (Top Words)  | %botnick% top <command> / Use %botnick% top <words> (Top Words)"
set black(say.en.top.4) "Commands for TOP is available are : <dr>,<bot>, <b>, <bw>, <black>, <spam>, <stick>, <n>, <i>, <w>, <k>, <d>"
set black(say.en.top.5) "Use : %char%top <command> | Use %char%top <words> (Top Words)"
set black(say.en.top.6) "Commands for TOP is available are : <dr>,<bot>, <b>, <bw>, <black>, <spam>, <stick>, <n>, <i>, <w>, <k>, <d>"
set black(say.en.top.6) "Use : %botnick% top <command> | Use %botnick% top <words> (Top Words)"
set black(say.en.top.7) "Use : %botnick% top <command> | Use %botnick% top <words> (Top Words)"
set black(say.en.top.8) "Commands for TOP is available are : <dr>,<bot>, <b>, <bw>, <black>, <spam>, <stick>, <n>, <i>, <w>, <k>, <d>"
set black(say.en.top.9) "There are no users in TOP"
set black(say.en.top.10) "12Top 4%char%dr 12for %chan% 12is :"
set black(say.en.top.11) "%msg%"
set black(say.en.top.12) "12Top for 4%char%b 12is :"
set black(say.en.top.13) "12Top for 4%char%bot 12is :"
set black(say.en.top.14) "12Top for 4%char%bw 12is :"
set black(say.en.top.15) "12Top for 4%char%black 12is :"
set black(say.en.top.16) "12Top for 4%char%spam 12is :"
set black(say.en.top.17) "12Top for 4%char%stick 12is :"
set black(say.en.top.18) "12Top for 4%char%n 12is :"
set black(say.en.top.19) "12Top for 4%char%i 12is :"
set black(say.en.top.20) "12Top for 4%char%k 12is :"
set black(say.en.top.21) "12Top for 4%char%w 12is :"
set black(say.en.top.22) "12Top for 4%char%d 12is :"
set black(say.en.top.23) "TOP MODULE is not enabled on %chan%."
set black(say.en.top.24) "OK! Erasing top words..."
set black(say.en.top.25) "Top %msg.1% of most talkactive users is :"



#################################### h ############################################

set black(say.en.cmdsvoice) "1Available commands : 1%char%v <nick> | 4%char%userlist | 1%char%version | 4%char%info <user> | 1%char%addinfo <text> | 4%char%t <topic>"
set black(say.en.cmdsop) "1Available commands : 1%char%v <nick> | 4%char%o <nick> | 1%char%userlist | 4%char%version | 1%char%info <user> | 4%char%ping | 1%char%act <message> | 4%char%addinfo <text> | 1%char%t <topic> | 4%char%l <seconds> | 1%char%ul | 4%char%cycle | 1%char%mode <chanmode> | 4%char%i <nick> | 1%char%vers <nick> | 4%char%whois <nick> | 1%char%cc <channel> | 4%char%time | 1%char%stats .1Private commands : 1op <chan> <nick> | 4deop <chan> <nick> | 1voice <chan> <nick> | 4devoice <chan> <nick> | 1invite <chan> ."
set black(say.en.cmdsenior) "1Available commands : :1%char%v <nick> | 4%char%o <nick> | 1%char%userlist | 4%char%version | 1%char%info <user> | 4%char%ping | 1%char%act <message> | 4%char%addinfo <text> | 1%char%t <topic> | 4%char%l <seconds> | 1%char%ul | 4%char%cycle | 1%char%mode <chanmode> | 4%char%i <nick> | 1%char%vers <nick> | 4%char%whois <nick> | 1%char%cc <channel> | 4%char%time | 1%char%stats .1Private commands : 1op <chan> <nick> | 4deop <chan> <nick> | 1voice <chan> <nick> | 4devoice <chan> <nick> | 1invite <chan> ."
set black(say.en.cmdadmin) "1Available commands : : 1%char%v <nick> | 4%char%o <nick> | 1%char%userlist | 4%char%version | 1%char%info <user> | 4%char%ping | 1%char%act <message> | 4%char%addinfo <text> | 1%char%t <topic> | 4%char%l <seconds> | 1%char%ul | 4%char%cycle | 1%char%mode <chanmode> | 4%char%i <nick> | 1%char%vers <nick> | 4%char%whois <nick> | 1%char%cc <channel> | 4%char%time | 1%char%stats .1Private commands : 1op <chan> <nick> | 4deop <chan> <nick> | 1voice <chan> <nick> | 4devoice <chan> <nick> | 1invite <chan> ."
set black(say.en.cmdmanager) "1Available commands : :1%char%v <nick> | 4%char%o <nick> | 1%char%userlist | 4%char%version | 1%char%info <user> | 4%char%ping | 1%char%act <message> | 4%char%addinfo <text> | 1%char%t <topic> | 4%char%l <seconds> | 1%char%ul | 4%char%cycle | 1%char%mode <chanmode> | 4%char%i <nick> | 1%char%vers <nick> | 4%char%whois <nick> | 1%char%cc <channel> | 4%char%time | 1%char%clear userlist / banlist | 1purge <reason> | 4%char%stats .1Private commands : 1op <chan> <nick> | 4deop <chan> <nick> | 1voice <chan> <nick> | 4devoice <chan> <nick> | 1invite <chan> ."
set black(say.en.cmdowner) "1Available commands : 1%char%v <nick> | 4%char%o <nick> | 1%char%userlist | 4%char%version | 1%char%info <user> | 4%char%ping | 1%char%act <message> | 4%char%addinfo <text> | 1%char%t <topic> | 4%char%l <seconds> | 1%char%ul | 4%char%cycle | 1%char%mode <chanmode> | 4%char%i <nick> | 1%char%vers <nick> | 4%char%whois <nick> | 1%char%cc <channel> | 4%char%time 1%char%clear userlist / banlist | 4%char%stats <chan> .1Private commands : 1op <chan> <nick> | 4deop <chan> <nick> | 1voice <chan> <nick> | 4devoice <chan> <nick> | 1invite <chan> ."
set black(say.en.cmdbossowner) "1Available commands : 1%char%v <nick> | 4%char%o <nick> | 1%char%userlist | 4%char%version | 1%char%info <user> | 4%char%ping | 1%char%act <message> | 4%char%addinfo <text> | 1%char%t <topic> | 4%char%l <seconds> | 1%char%ul | 4%char%cycle | 1%char%mode <chanmode> | 4%char%i <nick> | 1%char%vers <nick> | 4%char%whois <nick> | 1%char%cc <channel> | 4%char%time | 1%char%clear userlist / banlist | 4%char%stats <chan> .1Private commands : 1op <chan> <nick> | 4deop <chan> <nick> | 1voice <chan> <nick> | 4devoice <chan> <nick> | 1invite <chan> ."

set black(say.en.banvoice) "1Available commands : 1%char%k <nick> | 4%char%w <nick> | 1%char%check <nick> | 4%char%sb <host>"
set black(say.en.banop) "1Available commands : 1%char%k <nick> | 4%char%w <nick> | 1%char%check <nick> | 4%char%sb <host> | 1%char%id <nick> | 4%char%n <nick> | 1%char%spam <nick> | 4%char%dr <nick> | 1%char%b <nick>/<host> <time> <reason> | 4%char%bot <nick>/<host> | 1%char%bw <nick>/<host> | 4%char%ub <host> | 1%char%gag <nick> | 4%char%banlist <user>."
set black(say.en.bansenior) "1Available commands : 1%char%k <nick> | 4%char%w <nick> | 1%char%check <nick> | 4%char%sb <host> | 1%char%id <nick> | 4%char%n <nick> | 1%char%spam <nick> | 4%char%dr <nick> | 1%char%b <nick>/<host> <time> <reason> | 4%char%ub <host> | 1%char%d <days number> <nick> / <host> <reason> | 4%char%bot <nick>/<host> | 1%char%bw <nick>/<host> | 4%char%black <host> / <nick> <reason> | 1%char%stick <nick> / <host> <time> <reason> | 4%char%gag <nick> | 1%char%banlist <user> ."
set black(say.en.banadmin) "1Available commands : 1%char%k <nick> | 4%char%w <nick> | 1%char%check <nick> | 4%char%sb <host> | 1%char%id <nick> | 4%char%n <nick> | 1%char%spam <nick> | 4%char%dr <nick> | 1%char%b <nick>/<host> <time> <reason> | 4%char%ub <host> | 1%char%d <days number> <nick> / <host> <reason> | 4%char%bot <nick>/<host> | 1%char%bw <nick>/<host> | 4%char%black <host> / <nick> <reason> | 1%char%stick <nick> / <host> <time> <reason> | 4%char%gag <nick> | 1%char%banlist <user> ."
set black(say.en.banmanager) "1Available commands : 1%char%k <nick> | 4%char%w <nick> | 1%char%check <nick> | 4%char%sb <host> | 1%char%id <nick> | 4%char%n <nick> | 1%char%spam <nick> | 4%char%dr <nick> | 1%char%b <nick>/<host> <time> <reason> | 4%char%ub <host> | 1%char%d <days number> <nick> / <host> <reason> | 4%char%bot <nick>/<host> | 1%char%bw <nick>/<host> | 4%char%black <host> / <nick> <reason> | 1%char%stick <nick> / <host> <time> <reason> | 4%char%gag <nick> | 1%char%banlist <user>."
set black(say.en.banowner) "1Available commands : 1%char%k <nick> | 4%char%w <nick> | 1%char%check <nick> | 4%char%sb <host> | 1%char%id <nick> | 4%char%n <nick> | 1%char%spam <nick> | 4%char%dr <nick> | 1%char%b <nick>/<host> <time> <reason> | 4%char%ub <host> | 1%char%d <days number> <nick> / <host> <reason> | 4%char%bot <nick>/<host> | 1%char%bw <nick>/<host> | 4%char%black <host> / <nick> <reason> | 1%char%stick <nick> / <host> <time> <reason> | 4%char%gag <nick> | 1%char%banlist <user> .1Global ban commands : 4%char%b <nick> / <host> <time> global <reason> | 1%char%sb <*!*@ban> global | 4%char%ub <*!*@ban> global | 1%char%banlist <global> ."
set black(say.en.banbossowner) "1Available commands : 1%char%k <nick> | 4%char%w <nick> | 1%char%check <nick> | 4%char%sb <host> | 1%char%id <nick> | 4%char%n <nick> | 1%char%spam <nick> | 4%char%dr <nick> | 1%char%b <nick>/<host> <time> <reason> | 4%char%ub <host> | 1%char%d <days number> <nick> / <host> <reason> | 4%char%bot <nick>/<host> | 1%char%bw <nick>/<host> | 4%char%black <host> / <nick> <reason> | 1%char%stick <nick> / <host> <time> <reason> | 4%char%gag <nick> | 1%char%banlist <user> .1Global ban commands : 4%char%b <nick> / <host> <time> global <reason> | 1%char%sb <*!*@ban> global | 4%char%ub <*!*@ban> global | 1%char%banlist <global> ."

set black(say.en.addadmin) "1Available commands : 1%char%add <level> <user> 4(Level= protect,voice,op,senior) | 1%char%adduser <level> <nick> 4(Level= protect,voice,op,senior) | 1%char%delacc <user> ."
set black(say.en.addmanager) "1Available commands : 1%char%add <level> <user> 4(Level= protect,voice,op,senior,admin) | 1%char%adduser <level> <nick> 4(Level= protect,voice,op,senior,admin) | 1%char%delacc <user> | 1%char%del <user>."
set black(say.en.addowner) "1Available commands : 1%char%add <level> <user> 4(Level= protect,voice,op,senior,admin,manager) | 1%char%adduser <level> <nick> 4(Level= protect,voice,op,senior,admin,manager) | 1%char%delacc <user>"
set black(say.en.addbossowner) "1Available commands : 1%char%add <level> <user> 4(Level= protect,voice,op,senior,admin,manager,owner) | 1%char%adduser <level> <nick> 4(Level= protect,voice,op,senior,admin,manager,owner) | 1%char%delacc <user> | 1%char%del <user>."

set black(say.en.modifadmin) "1Available commands : 1%char%s <user> | 4%char%us <user> | 4%char%addvoice <user> | 1%char%delvoice <user> | 4%char%addop <user> | 1%char%delop <user> ."
set black(say.en.modifmanager) "1Available commands : 1%char%addhost <user> <host> | 4%char%chuser <user> <newuser> | 1%char%s <user> | 4%char%us <user> | 1%char%delhost <user> <host> | 4%char%addvoice <user> | 1%char%delvoice <user> | 4%char%addop <user> | 1%char%delop <user> ."
set black(say.en.modifowner) "1Available commands : 1%char%addhost <user> <host> | 4%char%chuser <user> <newuser> | 1%char%s <user> | 4%char%us <user> | 1%char%delhost <user> <host> | 4%char%addvoice <user> | 1%char%delvoice <user> | 4%char%addop <user> | 1%char%delop <user> | 4%char%addmyhost <host> 1(you add yourself a host) | 1%char%delmyhost <host> 1(you delete yourself a host)"
set black(say.en.modifbossowner) "1Available commands : 1%char%addhost <user> <host> | 4%char%chuser <user> <newuser> | 1%char%s <user> | 4%char%us <user> | 1%char%delhost <user> <host> | 4%char%addvoice <user> | 1%char%delvoice <user> | 4%char%addop <user> | 1%char%delop <user> | 4%char%addmyhost <host> 1(you add yourself a host) | 1%char%delmyhost <host> 1(you delete yourself a host)"
set black(say.en.howner) "1Private commands : 1nick <newnick> | 4restart | 1rehash | 4die | 1suspend / unsuspend <channel> | 4delchan <channel> | 1addchan <channel> | 4save . Public Commands : 1%char%status | 4%char%uptime | 1%char%set +/-flag / %char%set flag number:number | 4%char%away <text> | 1%char%silence on/off | 4%char%jump <server> | 1%char%msg <nick/chan> <text> | 4%char%broadcast <text>  | 1%char%addbot <name> <host> | 4%char%ignore <list> | <add> <host> <time> <reason> | <delete> <host> | 1%char%chat 12(DCC-CHAT) | 4%char%login | 1%char%channels."

#################################### top #########################################

set black(say.en.htop) "1Welcome 4%msg.1% 1in TOP section. 1Here you can find statistics for every commands used by user managed in a TOP. Commands that has a TOP are: 4<dr> | <b> | <bw> | <bot> | <black> | <spam> | <stick> | <n> | <i> | <w> | <k> | <d>. 1Use 4%char%top <command> 1(for example %char%top dr).You can see the full activity of user trough the command 4%char%activ <user>."

#################################### chaninfo #####################################

set black(say.en.hchaninfo.1) "1You got these categories for %chan% :"
set black(say.en.hchaninfo.2) "4blacktools          <  - >          4standard"
set black(say.en.hchaninfo.3) "1Category 4blacktools 1contains : 1Internal protections of BlackTools script"
set black(say.en.hchaninfo.4) "1Category 4standard 1contains : 1Internal standard settings of eggdrop"
set black(say.en.hchaninfo.5) "1To select a category type : 12%char%h <category> | %botnick% h <category>"

################################### blacktools ###################################

set black(say.en.hblacktools.1) "1Available protections : %msg%"
set black(say.en.hblacktools.2) "1To enable a protection type : 4%char%set +flag ( ex : %char%set +antipub | %botnick% set +antipub ) 1You can use also the command 4%char%secure on / off 1which will enable/disable all the protections."


#################################### standard ####################################

set black(say.en.hstandard.1) "1Internal settings of eggdrop are :"
set black(say.en.hstandard.2) "1To enable a protection type :4%char%set +flag ( ex : %char%set +dontkickops | %char%set flood-chan 0:0 )"
set black(say.en.hstandard.3) "%msg%"

################################### module #######################################

set black(say.en.hmodule.1) "1Available modules are : 4TopicRefresh | 1Count | 4XtoolS | 1BadChan | 4Anunt | 1Limit | 4Topic | 1CloneScan | 4Seen | 1Greet | 4Leave | 1Idle | 4ChanReport | 1TopWords | 4Xban | 1AntiTake | 4Private | 1AutoBroadcast | 4AntiBotIdle | 1Language | 4BadWord."
set black(say.en.hmodule.2) "1Available modules are : 4TopicRefresh | 1Count | 4XtoolS | 1BadChan | 4Anunt | 1Limit | 4Topic | 1CloneScan | 4Seen | 1Greet | 4Leave | 1Idle | 4TopWords | 1Xban | 4AntiTake | 1Private | 4Language | 1BadWord."
set black(say.en.hmodule.3) "1To see a module or to enable one please type 4%char%h <module>4 1( ex: %char%h language )"


####################################### h ########################################

set black(say.en.h.1) "ACCESS LEVEL 12-= BOSS OWNER =-"
set black(say.en.h.2) "Available commands: 1%char%h cmds | 4%char%h top | 1%char%h ban | 4%char%h add | 1%char%h modif | 4%char%h chaninfo | 1%char%h module | 4%char%h extra | 1%char%h owner."
set black(say.en.h.3) "ACCESS LEVEL 12-= OWNER =-"
set black(say.en.h.4) "Available commands: 1%char%h cmds | 4%char%h top | 1%char%h ban | 4%char%h add | 1%char%h modif | 4%char%h chaninfo | 1%char%h module | 4%char%h extra | 1%char%h owner."
set black(say.en.h.5) "ACCESS LEVEL 12-= VOICE =-"
set black(say.en.h.6) "Available commands: 12%char%h cmds | 4%char%h top "
set black(say.en.h.7) "ACCESS LEVEL 12-= OP =-"
set black(say.en.h.8) "Available commands: 1%char%h cmds | 4%char%h top | 1%char%h ban"
set black(say.en.h.9) "ACCESS LEVEL 12-= SENIOR =-"
set black(say.en.h.10) "Available commands: 1%char%h cmds | 4%char%h top | 1%char%h ban"
set black(say.en.h.11) "ACCESS LEVEL 12-= ADMINISTRATOR =-"
set black(say.en.h.12) "Available commands: 1%char%h cmds | 4%char%h top | 1%char%h ban | 4%char%h add | 1%char%h modif"
set black(say.en.h.13) "ACCESS LEVEL 12-= MANAGER =-"
set black(say.en.h.14) "Available commands: 1%char%h cmds | 4%char%h top | 1%char%h ban | 4%char%h add | 1%char%h modif | 4%char%h chaninfo | 1%char%h module | 4%char%h extra ."
set black(say.en.h.15) "%msg%"

###################################### antitake ##################################

set black(say.en.hantitake.1) "1Represents a module that has two options: First one has protection function against those who does not have access to Eggdrop and give DEOP and second for those who does not have access to Eggdrop and give OP."
set black(say.en.hantitake.2) "1To enable/disable first option type : 4%char%set +dontdeop | %char%set -dontdeop"
set black(say.en.hantitake.3) "1To enable/disable second option type : 4%char%set +dontop | %char%set -dontop"
set black(say.en.hantitake.4) "1For channel protection reggarding channel modes type : 4%char%set chanmode +mode 12(ex: +nt , +stn)"

###################################### private ####################################

set black(say.en.hprivate.1) "1Represents a module that enabled will ban those users who does not have access to Eggdrop on joining the channel."
set black(say.en.hprivate.2) "1You can use : 4%char%private <on>/<off> | <add> <name> <host> | <list> | <del> <name> - %botnick% private <on>/<off> | <add> <name> <host> | <list> | <del> <name>"


###################################### language ##################################

set black(say.en.hlanguage.1) "1Represents a module that will set the language of kick/bans reasons. You got 2 choices : 4RO | EN"
set black(say.en.hlanguage.2) "1To set the language  type : 4%char%set lang <language> (1RO | EN) 12(ex: %char%set lang EN)"
set black(say.en.hlanguage.3) "1Default reasons will not be changed :)"

###################################### xban #######################################

set black(say.en.hxban.1) "1Represents a module that enabled (in case of channels with chanserv will make the eggdrop that on every ban aplied by him to add it also to chanserv for an amount of time and with the same reason.1"
set black(say.en.hxban.2) "1To enable/disable/set type : 4%char%set +xban | %char%set -xban | %char%set xbantime <number> 1(bantime at chanserv in hours. Default is 1) | 1%char%set xbanlevel <level> 1(ban level at chanserv.Default is 100)."
set black(say.en.hxban.3) "1Now the settings are: 4xbantime = %msg.1% | xbanlevel = %msg.2%"

#################################### topicrefresh #################################

set black(say.en.htopicrefresh.1) "1Represents a module that enabled will refresh the topic (in a time-interval set in script) to not lose it."
set black(say.en.htopicrefresh.2) "1To enalble/disable type : 4%char%set +topicrefresh / -topicrefresh | %botnick% set +topicrefresh / -topicrefresh"

#################################### count #######################################

set black(say.en.hcount.1) "1Represents a module that enabled will count the number of users who joined the channel and onjoin will send to user a message with the visitor number."
set black(say.en.hcount.2) "1To enable/disable type : 4%char%count <on> | <off> | <display> | <reset> - %botnick% count <on> | <off> | <display> | <reset>"

#################################### xtools ######################################

set black(say.en.hxtools.1) "1Represents a module that enabled will make the Eggdrop receive op,unban,invite from X."
set black(say.en.hxtools.2) "1To enable/disable type :1 4%char%set +xtools / -xtools | %botnick% set +xtools / -xtools"

#################################### badchan #####################################

set black(say.en.hbadchan.1) "1Represents a module that enabled will ban the nicks who enter the channel and they are on channels supposed to be forbidden."
set black(say.en.hbadchan.2) "1To enable/disable/add channels type : 4%char%badchan  <on> | <off> | <add> <#chan> | <list> | <del> <number> - %botnick% badchan  <on> | <off> | <add> <#chan> | <list> | <del> <number>"

#################################### anunt #######################################

set black(say.en.hanunt.1) "1Represents a module that enabled will make ads on channel in a time-interval set in script (Default is %msg.1%)"
set black(say.en.hanunt.2) "1To enable/disable/add ads type : 4%char%anunt <on> | <off> | <add> <message> | <list> | <del> <number> - %botnick% anunt <on> | <off> | <add> <message> | <list> | <del> <number>"

#################################### autobroadcast ###############################

set black(say.en.hautobroadcast.1) "1Represents a module that enabled will make ads on all channels in a time-interval set in script (Default is %msg.1%)"
set black(say.en.hautobroadcast.2) "1To enable/disable/add messages type : 4%char%bt <on> | <off> | <add> <message> | <list> | <del> <number> - %botnick% bt <on> | <off> | <add> <message> | <list> | <del> <number>"
set black(say.en.hautobroadcast.3) "4NEW ! 1Now you can set the channels where you do not want your eggdrop to broadcast by typing 4%char%set <chan> +silent / -silent"

################################### antibotidle ###################################

set black(say.en.hantibotidle.1) "1Represents a module that enabled will not let the eggdrop to have idle.This module is based on sending a message to an absent object."
set black(say.en.hantibotidle.2) "1To enable/disable type :4%char%botidle <on> | <off> | 1(Max idle set in script is %msg.1%)"

################################### limit ########################################

set black(say.en.hlimit.1) "1Represents a module that enabled will take care of channel limit to not overcome the value set"
set black(say.en.hlimit.2) "1To enable/disable type : 4%char%limit <on> | <set> <number> | <off> - %botnick% limit <on> | <set> <number> | <off>"

################################### topic ########################################

set black(say.en.htopic.1) "1Represents a module that helps you save, add topics into a channel list.From that list can easily be set a topic."
set black(say.en.htopic.2) "1To enable/disable type : 4%char%topic <save> | <list> | <add> | <del> <number> | set <number> - %botnick% topic <save> | <list> | <add> | <del> <number> | set <number>"

################################### seen ########################################

set black(say.en.hseen.1) "1Represents a module that enabled will save informations about join/part/quit/netsplit/nickchange of nicknames for the channel. It has a database for every channel."
set black(say.en.hseen.2) "1To enable/disable type : 4%char%set +seen | %char%set -seen - %botnick% set +seen | %botnick% set -seen"

################################### clonescan ########################################

set black(say.en.hclonescan.1) "1Represents a module that enabled will scan the channel for clone in a time-interval.You can choose in script the punishement method if the bot finds clones."
set black(say.en.hclonescan.2) "1To enable/disable type :1 4%char%set +clonescan / -clonescan | %botnick% set +clonescan / -clonescan"
set black(say.en.hclonescan.3) "1You have also a manual command for scanning : 4%char%clonescan 1and the Eggdrop will show host + nick of clones."

################################### greet ########################################

set black(say.en.hgreet.1) "1Represents a module trough you can add messages for people who join the channel."
set black(say.en.hgreet.2) "1To enable/disable/add messages type : 4%char%greet <on> | <off> | <add> | <list> | <del> - %botnick% greet <on> | <off> | <add> | <list> | <del>"

################################## leave #########################################

set black(say.en.hleave.1) "1Represents a module trough you can add messages for people who leave the channel."
set black(say.en.hleave.2) "1To enable/disable/add messages type : 4%char%leave <on> | <off> | <add> | <list> | <del> - %botnick% leave <on> | <off> | <add> | <list> | <del>"

################################## idle ##########################################

set black(say.en.hidle.1) "1Represents a module that enabled will deop/devoice users who are idleing in channel."
set black(say.en.hidle.2) "1To enable/disable/configuration type : 4%char%idle <on> | <off> | voice <on>/<off> | op <on>/<off> | add <nick> (add exceptions)  - %botnick% idle <on> | <off> | voice <on>/<off> | op <on>/<off> | add <nick> (add exceptions)"

################################## chanreport ####################################

set black(say.en.hchanreport.1) "1Represents a module that enabled gives the opportunity for every channel to have a backchannel, in wich eggdrop will display the bans given by him in main channel.1"
set black(say.en.hchanreport.2) "1To enable/disable type : 4%char%set +chanreport | -chanreport | %botnick% set +chanreport | -chanreport .1To set backchannel type : 4%char%set backchan #channel | %botnick% set backchan #channel."
set black(say.en.hchanreport.3) "1If you enable the backchan you will be able to use all these 12ban commands 1and these 12will be applied on mainchan."

############################### BadWord ########################################

set black(say.en.hbadword.1) "1Represents a module trough you can add bad words for AntiBadWord protection."
set black(say.en.hbadword.2) "1To enable/disable/add words type : 4%char%set +antibadword / -antibadword  | %char%badword <add> <* word *> | <list> | <del> <number> - %botnick% set +antibadword / -antibadword | <add> <* word *> | <list> | <del> <number>"


################################## topwords ####################################

set black(say.en.htopwords.1) "1Represents a module that enabled will save users activity (number of words written) in channel."
set black(say.en.htopwords.2) "1To enable/disable type : 4%char%set +topwords | -topwords | %botnick% set +topwords | -topwords .1To see the Top20 of most talkactive users type :4%char%top words."
set black(say.en.htopwords.3) "1To reset the TOP words use the command : 4%char%top words erase ."

################################## settings ####################################

set black(say.en.hsettings.1) "1Welcome in settings section ! From here you can configure features of commands/protections (kick messages - bantime) Available in BlackTools. The list is.."
set black(say.en.hsettings.2) "12COMMANDS : 4dr | 1n | 4id | 1w | 4spam | 1bw | 4bot."
set black(say.en.hsettings.3) "12MODULES : 4badchannel | 1counter | 4privat | 1antidle."
set black(say.en.hsettings.4) "12PROTECTIONS : 4antipub | 1antinotice | 4antictcp | 1antibadword | 4antilongtext | 1antibadquitpart | 4antijoinpart | 1antispam | 4antirepeat | 1anticolor | 4antibold | 1antiunderline | 4anticaps | 1badfullname | 4badnick | 1badident | 4antichanflood | 1antijoinflood ."
set black(say.en.hsettings.5) "1To see the features of commands/protections/modules type 4%char%h <name> 12( ex: %char%h antipub | %char%h dr )"
set black(say.en.hsettings.6) "1To reset all the reasons & bantimes for this channel type : 4%char%reset <all>."

################################## reason ####################################

set black(say.en.hreason.1) "1Settings reggarding reasons are :"
set black(say.en.hreason.2) "1%msg.1% 4%msg.2% 1%msg.3%"
set black(say.en.hreason.3) "12showtime - 1will apply to kick reason the ban time left."
set black(say.en.hreason.4) "12showhandle - 1Will apply to kick reason also the name of the user who put the ban (available also for commands)."
set black(say.en.hreason.5) "12showcount - 1Will apply to kick reason alsi the kick count  of that channel."
set black(say.en.hreason.6) "1To modify these settings type :%char%set +flag ( ex : %char%set +showhandle | %char%set -showhandle )"

################################# extra ######################################

set black(say.en.hextra.1) "1You have these categories of settings for %chan% :"
set black(say.en.hextra.2) "4settings         < - >         4reason"
set black(say.en.hextra.3) "1Category 4settings 1contains :1Standard settings of commands & protections & modules (reasons / bantime settings)1"
set black(say.en.hextra.4) "1Category 4reason 1continains :1Settings reggarding ban numbers given, name of the user who put the ban and time left until the ban will expire."
set black(say.en.hextra.5) "1To select a category type : 12%char%h <category> | %botnick% h <category>"

################################# antipub ######################################

set black(say.en.hantipub.1) "1Available options are : 4antipub-reason | antipub-bantime ."
set black(say.en.hantipub.2) "1To set options type : 4%char%set antipub-reason <reason> | %char%set antipub-bantime <minutes> ."
set black(say.en.hantipub.3) "1To see if options are set type : 4%char%show antipub-reason | %char%show antipub-bantime ."

################################# privat ######################################

set black(say.en.hprivat.1) "1Available options are : 4private-reason | private-bantime ."
set black(say.en.hprivat.2) "1To set options type : 4%char%set private-reason <reason> | %char%set private-bantime <minutes> ."
set black(say.en.hprivat.3) "1To see if options are set type : 4%char%show private-reason | %char%show private-bantime ."


################################# antidle ######################################

set black(say.en.hantidle.1) "1Available options are : 4idleopmax | idlevoicemax ."
set black(say.en.hantidle.2) "1To set options type : 4%char%set idleopmax <minutes> | %char%set idlevoicemax <minutes> ."
set black(say.en.hantidle.3) "1To see if options are set type : 4%char%show idleopmax | %char%show idlevoicemax ."

################################# antinotice ######################################

set black(say.en.hantinotice.1) "1Available options are : 4antinotice-reason | antinotice-bantime ."
set black(say.en.hantinotice.2) "1To set options type : 4%char%set antinotice-reason <reason> | %char%set antinotice-bantime <minutes> ."
set black(say.en.hantinotice.3) "1To see if options are set type : 4%char%show antinotice-reason | %char%show antinotice-bantime ."

################################# antictcp ######################################

set black(say.en.hantictcp.1) "1Available options are : 4antictcp-reason | antictcp-bantime ."
set black(say.en.hantictcp.2) "1To set options type : 4%char%set antictcp-reason <reason> | %char%set antictcp-bantime <minutes> ."
set black(say.en.hantictcp.3) "1To see if options are set type : 4%char%show antictcp-reason | %char%show antictcp-bantime ."  


################################# antibadword ######################################

set black(say.en.hantibadword.1) "1Available options are : 4antibadword-reason | antibadword-bantime ."
set black(say.en.hantibadword.2) "1To set options type : 4%char%set antibadword-reason <reason> | %char%set antibadword-bantime <minutes> ."
set black(say.en.hantibadword.3) "1To see if options are set type : 4%char%show antibadword-reason | %char%show antibadword-bantime ."  

################################# antilongtext ######################################

set black(say.en.hantilongtext.1) "1Available options are : 4antilongtext-reason | antilongtext-bantime | antilongtextmax"
set black(say.en.hantilongtext.2) "1To set options type : 4%char%set antilongtext-reason <reason> | %char%set antilongtext-bantime <minutes> | %char%set antilongtextmax <nr. char>"
set black(say.en.hantilongtext.3) "1To see if options are set type : 4%char%show antilongtext-reason | %char%show antilongtext-bantime ."  

################################# antibadquitpart ######################################

set black(say.en.hantibadquitpart.1) "1Available options are : 4antibadquitpart-reason | antibadquitpart-bantime ."
set black(say.en.hantibadquitpart.2) "1To set options type : 4%char%set antibadquitpart-reason <reason> | %char%set antibadquitpart-bantime <minutes> ."
set black(say.en.hantibadquitpart.3) "1To see if options are set type : 4%char%show antibadquitpart-reason | %char%show antibadquitpart-bantime ."

################################# antijoinpart ######################################

set black(say.en.hantijoinpart.1) "1Available options are : 4antijoinpart-reason | antijoinpart-bantime ."
set black(say.en.hantijoinpart.2) "1To set options type : 4%char%set antijoinpart-reason <reason> | %char%set antijoinpart-bantime <minutes> ."
set black(say.en.hantijoinpart.3) "1To see if options are set type : 4%char%show antijoinpart-reason | %char%show antijoinpart-bantime ."  

################################# antispam ######################################

set black(say.en.hantispam.1) "1Available options are : 4antispam-reason | antispam-bantime ."
set black(say.en.hantispam.2) "1To set options type : 4%char%set antispam-reason <reason> | %char%set antispam-bantime <minutes> ."
set black(say.en.hantispam.3) "1To see if options are set type : 4%char%show antispam-reason | %char%show antispam-bantime ."  

################################# antirepeat ######################################

set black(say.en.hantirepeat.1) "1Available options are : 4antirepeat-reason | antirepeat-bantime | antirepeat-setting ."
set black(say.en.hantirepeat.2) "1To set options type : 4%char%set antirepeat-reason <reason> | %char%set antirepeat-bantime <minutes> | %char%set antirepeat-setting <repetari>:<seconds> ."
set black(say.en.hantirepeat.3) "1To see if options are set type : 4%char%show antirepeat-reason | %char%show antirepeat-bantime | antirepeat-setting ."

################################# anticolor ######################################

set black(say.en.hanticolor.1) "1Available options are : 4anticolor-reason | anticolor-bantime ."
set black(say.en.hanticolor.2) "1To set options type : 4%char%set anticolor-reason <reason> | %char%set anticolor-bantime <minutes> ."
set black(say.en.hanticolor.3) "1To see if options are set type : 4%char%show anticolor-reason | %char%show anticolor-bantime ."  

################################# antibold ######################################

set black(say.en.hantibold.1) "1Available options are : 4antibold-reason | antibold-bantime ."
set black(say.en.hantibold.2) "1To set options type : 4%char%set antibold-reason <reason> | %char%set antibold-bantime <minutes> ."
set black(say.en.hantibold.3) "1To see if options are set type : 4%char%show antibold-reason | %char%show antibold-bantime ."


################################# antiunderline ######################################

set black(say.en.hantiunderline.1) "1Available options are : 4antiunderline-reason | antiunderline-bantime ."
set black(say.en.hantiunderline.2) "1To set options type : 4%char%set antiunderline-reason <reason> | %char%set antiunderline-bantime <minutes> ."
set black(say.en.hantiunderline.3) "1To see if options are set type : 4%char%show antiunderline-reason | %char%show antiunderline-bantime ."  

################################# anticaps ######################################

set black(say.en.hanticaps.1) "1Available options are : 4anticaps-reason | anticaps-bantime ."
set black(say.en.hanticaps.2) "1To set options type : 4%char%set anticaps-reason <reason> | %char%set anticaps-bantime <minutes> ."
set black(say.en.hanticaps.3) "1To see if options are set type : 4%char%show anticaps-reason | %char%show anticaps-bantime ."


################################# badfullname ######################################

set black(say.en.hbadfullname.1) "1Available options are : 4badfullname-reason | badfullname-bantime ."
set black(say.en.hbadfullname.2) "1To set options type : 4%char%set badfullname-reason <reason> | %char%set badfullname-bantime <minutes> ."
set black(say.en.hbadfullname.3) "1To see if options are set type : 4%char%show badfullname-reason | %char%show badfullname-bantime ."

################################# badnick ######################################

set black(say.en.hbadnick.1) "1Available options are : 4badnick-reason | badnick-bantime ."
set black(say.en.hbadnick.2) "1To set options type : 4%char%set badnick-reason <reason> | %char%set badnick-bantime <minutes> ."
set black(say.en.hbadnick.3) "1To see if options are set type : 4%char%show badnick-reason | %char%show badnick-bantime ."

################################# badident ######################################

set black(say.en.hbadident.1) "1Available options are : 4badident-reason | badident-bantime ."
set black(say.en.hbadident.2) "1To set options type : 4%char%set badident-reason <reason> | %char%set badident-bantime <minutes> ."
set black(say.en.hbadident.3) "1To see if options are set type : 4%char%show badident-reason | %char%show badident-bantime ."

################################# antichanflood ######################################

set black(say.en.hantichanflood.1) "1Available options are : 4antichanflood-reason | antichanflood-bantime | chanflood ."
set black(say.en.hantichanflood.2) "1To set options type : 4%char%set antichanflood-reason <reason> | %char%set antichanflood-bantime <minutes> | %char%set chanflood <lines number> <seconds> ."
set black(say.en.hantichanflood.3) "1To see if options are set type : 4%char%show antichanflood-reason | %char%show antichanflood-bantime | %char%show chanflood ."

################################# antijoinflood ######################################

set black(say.en.hantijoinflood.1) "1Available options are : 4joinflood"
set black(say.en.hantijoinflood.2) "1To set options type : 4%char%set joinflood <join number> <seconds> ."
set black(say.en.hantijoinflood.3) "1To see if options are set type : 4%char%show joinflood"

################################# badchannel ######################################

set black(say.en.hbadchannel.1) "1Available options are : 4badchan-reason | badchan-bantime ."
set black(say.en.hbadchannel.2) "1To set options type : 4%char%set badchan-reason <reason> | %char%set badchan-bantime <minutes> ."
set black(say.en.hbadchannel.3) "1To see if options are set type : 4%char%show badchan-reason | %char%show badchan-bantime ."

################################# counter ######################################

set black(say.en.hcounter.1) "1Available options are : 4count-message"
set black(say.en.hcounter.2) "1To set options type : 4%char%set count-message <message> "
set black(say.en.hcounter.3) "1To see if options are set type : 4%char%show count-message"

################################ dr ############################################

set black(say.en.hdr.1) "1Available options are : 4dr-reason | dr-bantime ."
set black(say.en.hdr.2) "1To set options type : 4%char%set dr-reason <reason> | %char%set dr-bantime <minutes> ."
set black(say.en.hdr.3) "1To see if options are set type : 4%char%show dr-reason | %char%show dr-bantime ."

################################ bot ############################################

set black(say.en.hbot.1) "1Available options are : 4bot-reason | bot-bantime ."
set black(say.en.hbot.2) "1To set options type : 4%char%set bot-reason <reason> | %char%set bot-bantime <minutes> ."
set black(say.en.hbot.3) "1To see if options are set type : 4%char%show bot-reason | %char%show bot-bantime ." 

################################ n ############################################

set black(say.en.hn.1) "1Available options are : 4n-reason | n-bantime ."
set black(say.en.hn.2) "1To set options type : 4%char%set n-reason <reason> | %char%set n-bantime <minutes> ."
set black(say.en.hn.3) "1To see if options are set type : 4%char%show n-reason | %char%show n-bantime ."

################################ id ############################################

set black(say.en.hid.1) "1Available options are : 4id-reason | id-bantime ."
set black(say.en.hid.2) "1To set options type : 4%char%set id-reason <reason> | %char%set id-bantime <minutes> ."
set black(say.en.hid.3) "1To see if options are set type : 4%char%show id-reason | %char%show id-bantime ."  

################################ w ############################################

set black(say.en.hw.1) "1Available options are : 4w-reason "
set black(say.en.hw.2) "1To set options type : 4%char%set w-reason <reason>"
set black(say.en.hw.3) "1To see if options are set type : 4%char%show w-reason ."

################################ spam ############################################

set black(say.en.hspam.1) "1Available options are : 4spam-reason | spam-bantime ."
set black(say.en.hspam.2) "1To set options type : 4%char%set spam-reason <reason> | %char%set spam-bantime <minutes> ."
set black(say.en.hspam.3) "1To see if options are set type : 4%char%show spam-reason | %char%show spam-bantime ."

################################ bw ############################################

set black(say.en.hbw.1) "1Available options are : 4bw-reason | bw-bantime ."
set black(say.en.hbw.2) "1To set options type : 4%char%set bw-reason <reason> | %char%set bw-bantime <minutes> ."
set black(say.en.hbw.3) "1To see if options are set type : 4%char%show bw-reason | %char%show bw-bantime ."


############################### GREETING #######################################

set black(say.en.greeting.1) "EN : 1Welcome in 12BlackToolS WORLD."
set black(say.en.greeting.2) "EN : 1Please define the next settings for you : 4Language (12you choose how the replies will be sent to you) | 4Output ( 12you choose the method on how you want replies to be sent )"
set black(say.en.greeting.3) "EN : 1To start please type 4%char%myset lang <language> ( 12RO / EN ) | 4%char%myset output <method> ( 12CHAN / NOTICE )"
set black(say.en.greeting.4) "EN : 1I wish you a pleasent stay . To be able to see your commands again type 4%char%h . 1Have Fun"




