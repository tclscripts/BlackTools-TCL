#$rev.07	Date: 30.08.2012 17:40PM
########################################################################################
#
#
#				    ENGLISH LANGUAGE
#
#
#
#########################################################################################
#					#  Translation provided by Time2Go @ #Tcl-Help	#
#					#	     Date: 09.08.2012 18:05PM		#
#					#					$rev.01	#
#########################################################################################


#################################################################################
#
#                                   STANDARD MESSAGES
# 
#################################################################################

set black(say.en.gl.noban) "ERROR! It cannot be done because it has ACCESS ."
set black(say.en.gl.notonchan) "ERROR! I am not on %chan%"
set black(say.en.gl.suspend) "You are suspended on %chan%, you cannot use this command ."
set black(say.en.gl.novalidchan) "ERROR! Invalid channel."
set black(say.en.gl.nomem) "ERROR! I have no memory record of that user."
set black(say.en.gl.noaccess) "ERROR! It has no access on %chan%."
set black(say.en.gl.noop) "ERROR! I have no op on %chan% ! I cannot proceed."
set black(say.en.gl.nomodif) "ERROR! You cannot modify this users' features because it has greater or equal access with you."
set black(say.en.gl.usernotonchan) "ERROR! %msg.1% is not on %chan%."
set black(say.en.gl.nocmem) "ERROR! I have no memory record of channel %msg.1%"


#################################################################################
#
#                                   PROTECTIONS
# 
#################################################################################


#################################### antipub ###################################

set black(say.en.antipub.1) "You lost your rights on %chan% making ADVERTISING !"
set black(say.en.antipub.2) "Use: %char%antipub <chan> <add> <*link*> / <#chan> | <list> | <del> <link> | %char%antipub <add> <*link*> / <#chan> | <list> | <del> <link>"
set black(say.en.antipub.3) "Use: %botnick% badword <chan> <add> <*link*> / <#chan> | <list> | <del> <link> | %botnick% <add> <*link*> / <list> / <del> <link> / <#chan>"
set black(say.en.antipub.4) "Use: %char%antipub <add> <*link*> / <#chan> | <list> | <del> <link> / <#chan>"
set black(say.en.antipub.5) "Use: %botnick% antipub <add> <*link*> / <#chan> | <list> | <del> <link> / <#chan>"
set black(say.en.antipub.6) "Added to exception list \002%msg.1%\002 for %chan%."
set black(say.en.antipub.7) "Antipub exception list for %chan% is:"
set black(say.en.antipub.8) "%msg%"
set black(say.en.antipub.9) "Use: add <*link*> / <#chan>"
set black(say.en.antipub.10) "NONE"
set black(say.en.antipub.11) "Use: del <link> / <#chan>"
set black(say.en.antipub.12) "Removed %msg.1% antipub exceptions for %chan%."

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

set black(say.en.reportchan) "Added ban in %chan% on host %banmask% with reason: %reason% .It will expire in %bantime% minute(s)."
set black(say.en.reportchan.1) "\[%nick%\] added ban on %chan% for host %banmask% with reason: %reason% .It will expire in %bantime% minute(s)."

################################ clone scan ###################################

set black(say.en.clonescan.1) "I found %msg.1% clones in %chan% from host %msg.2% .Nicks are: %msg.7% "
set black(say.en.clonescan.2) "End of clones.."
set black(say.en.clonescan.3) "I found %num% clones in %chan% from host %host% .Nicks are: %clone% "
set black(say.en.clonescan.4) "Scanning for clones.."
set black(say.en.clonescan.5) "Clones are forbidden on %chan% !"

################################## count ######################################

set black(say.en.count.1) "Use: %char%count <chan> <on> | <off> | <display> | <reset>"
set black(say.en.count.2) "Use: %botnick% count <chan> <on> | <off> | <display> | <reset>"
set black(say.en.count.3) "Count for %chan% is already enabled"
set black(say.en.count.4) "Count for %chan% is already disabled"
set black(say.en.count.5) "I enabled COUNT MODULE on %chan% ."
set black(say.en.count.6) "I disabled COUNT MODULE on %chan% ."
set black(say.en.count.7) "Count for %chan% is %msg.1% visitor(s)"
set black(say.en.count.8) "I reset count module for %chan%"
set black(say.en.count.9) "You are user with number %num% who joined in %chan% ."

################################# private ######################################

set black(say.en.private.1) "Use: %char%private <chan> <on> / <off> / <add> <nick> <host> / <list> / <del> <name> | %char%private <on> / <off> / <add> <nick> <host> / <list> / <del> <name>"
set black(say.en.private.2) "Use: %botnick% private <chan> <on> / <off> / <add> <nick> <host> | <list> / <del> <name> | %botnick% private <on> / <off> / <add> <nick> <host> / <list> / <del> <name>"
set black(say.en.private.3) "%char%private <on> | <off> | <add> <nick> <host> | <list> | <del> <name>"
set black(say.en.private.4) "Use: %botnick% private <on> | <off> | <add> <nick> <host> | <list> | <del> <name>"
set black(say.en.private.5) "I enabled PRIVATE MODULE on %chan% ."
set black(say.en.private.6) "I disabled PRIVATE MODULE on %chan% ."
set black(say.en.private.7) "%msg.1% is already in my database.Adding as an exception on %chan%"
set black(say.en.private.8) "Added %msg.1% with host %msg.2% as an exception on %chan%"
set black(say.en.private.9) "Deleted %msg.1% from my Exception List on %chan%"
set black(say.en.private.10) "%msg.1% is not database on %chan%"
set black(say.en.private.11) "Users in Exception List on %chan% are: %msg%"
set black(say.en.private.12) "Private Channel !"

################################# badchan ######################################

set black(say.en.badchan.1) "Use: %char%badchan <chan> <on>/<off> / <add> <#chan> / <list> / <del> <number> | %char%badchan <on> / <off> / <add> <#chan> / <list> / <del> <number>"
set black(say.en.badchan.2) "Use: %botnick% badchan <chan> <on>/<off> / <add> <#chan> / <list> / <del> <number> | %botnick% badchan <on> / <off> / <add> <#chan> / <list> / <del> <number>"
set black(say.en.badchan.3) "Use: %char%badchan <on>/<off> / <add> <#chan> / <list> / <del> <number>"
set black(say.en.badchan.4) "Use: %botnick% badchan <on>/<off> / <add> <#chan> / <list> / <del> <number>"
set black(say.en.badchan.5) "Badchan module is already enabled on %chan%."
set black(say.en.badchan.6) "You enabled badchan module for %chan%. TO add channel in list type: \002badchan add <#chan>\002. To see the list type \002badchan <list>\002"
set black(say.en.badchan.7) "\002BadChan\002 module is not enabled on \002%chan%\002."
set black(say.en.badchan.8) "You disabled \002BadChan\002 module on \002%chan%\002"
set black(say.en.badchan.9) "Use: \002badchan add <#chan> \[-global\] \[reason\]\002"
set black(say.en.badchan.10) "Use: \002badchan add <#chan> \[reason\]\002"
set black(say.en.badchan.11) "Added in %msg.1% channel: \002\[%msg.2%\]\002 with reason: \002\"standard\"\002."
set black(say.en.badchan.12) "Added in %msg.1% channel: \002\[%msg.2%\]\002 with reason: \002\"%msg.7%\"\002"
set black(say.en.badchan.13) "There are no channels in my BlackList."
set black(say.en.badchan.14) "BlackList is:"
set black(say.en.badchan.15) "\[GLOBAL\] %msg.1%. \002\[%msg.2%\]\002 - Reason \"Standard\""
set black(say.en.badchan.16) "\[GLOBAL\] %msg.1%. \002\[%msg.2%\]\002 - Reason \002\"%msg.7%\002"
set black(say.en.badchan.17) "\[LOCAL\] %msg.1%. \002\[%msg.2%\]\002 - Reason \002\"Standard\"\002"
set black(say.en.badchan.18) "\[LOCAL\] %msg.1%. \002\[%msg.2%\]\002 - Reason \002\"%msg.7%\002"
set black(say.en.badchan.19) "No match in my \002%chan%\002 BlackList"
set black(say.en.badchan.20) "Use: \002badchan del <#chan> \[-global\]\002."
set black(say.en.badchan.21) "Use: \002badchan del <#chan>\002."
set black(say.en.badchan.22) "I removed channel: \002\[%msg.1%\]\002 from my Global BlackList"
set black(say.en.badchan.23) "I removed channel: \002\[%msg.1%\]\002 from %chan% BlackList"
set black(say.en.badchan.24) "ERROR! No match in BlackList"
set black(say.en.badchan.25) "Use: \002find <#chan> \[-global\]\002."
set black(say.en.badchan.26) "Use: \002find <#chan>\002."
set black(say.en.badchan.27) "\[GLOBAL\] %msg.1%. \002\[%msg.2%\]\002 - Reason \"%msg.6%\""
set black(say.en.badchan.28) "\[LOCAL\] %msg.1%. \002\[%msg.2%\]\002 - Reason \"%msg.6%\""
set black(say.en.badchan.29) "BadChan module is: \002\[%msg.1%\]\002 for \002%chan%\002"
set black(say.en.badchan.30) "Are \002\[%msg.1%\]\002 bad channel(s) in my global list."
set black(say.en.badchan.31) "Are \002\[%msg.1%\]\002 bad channel(s) for \002%chan%\002"
set black(say.en.badchan.32) "Default reason is: \"%msg%\"."
set black(say.en.badchan.33) "Default ban-time is: \[%msg.1%\] minute(s)"
set black(say.en.badchan.34) "Use: \002badchan set reason <reason>\002"
set black(say.en.badchan.35) "Default reason set to: \002\"%msg%\"\002"
set black(say.en.badchan.36) "Use: \002badchan set bantime <minutes>\002"
set black(say.en.badchan.37) "Default ban-time set to: \"%msg.1%\" minute(s)"
set black(say.en.badchan.38) "Use: \002badchan set bantime <minutes> | set reason <reason>\002."
set black(say.en.badchan.39) "You received ban on %chan% because you were found sitting on one or more forbidden channels."
set black(say.en.badchan.40) "ATENTION ! You were found on bad channels. These are: %badchans% . You have 30 seconds to leave those channels, or else you will be banned.Thank You."

################################# badword ######################################

set black(say.en.badword.1) "Use: %char%badword <chan> <add> <* word *> / <list> / <del> <number> | %char%badword <add> <* word *> / <list> / <del> <number>"
set black(say.en.badword.2) "Use: %botnick% badword <chan> <add> <* word *> / <list> / <del> <number> | %botnick% badword <add> <* word *> / <list> / <del> <number>"
set black(say.en.badword.3) "Use: %char%badword <add> <* word *> / <list> / <del> <number>"
set black(say.en.badword.4) "Use: %botnick% badword <add> <* word *> / <list> / <del> <number>"
set black(say.en.badword.5) "Adding to channel %chan% list word: %msg%"
set black(say.en.badword.6) "Badword list for %chan% is:"
set black(say.en.badword.7) "NONE"
set black(say.en.badword.8) "%msg%"
set black(say.en.badword.9) "Use: del <number>"
set black(say.en.badword.10) "I removed word with number %msg.1% from %chan% badword list"

################################# AntitaKe ######################################

set black(say.en.antitake.1) "You cannot give DEOP because you are not in my database with access."
set black(say.en.antitake.2) "You cannot give OP because you are not in my database with access."

################################# anunt ######################################

set black(say.en.anunt.1) "Use: %char%anunt <chan> <on> / <off> / <add> <message> / <list> / <del> <number> | %char%anunt <on> / <off> / <add> <message> / <list> / <del> <number>"
set black(say.en.anunt.2) "Use: %botnick% anunt <chan> <on> / <off> / <add> <message> / <list> / <del> <number> | %botnick% anunt <on> / <off> / <add> <message> / <list> / <del> <number>"
set black(say.en.anunt.3) "You enabled ANUNT MODULE on %chan%."
set black(say.en.anunt.4) "You disabled ANUNT MODULE on %chan%."
set black(say.en.anunt.5) "Added next message for %chan% :"
set black(say.en.anunt.6) "%msg%"
set black(say.en.anunt.7) "There are no announces for %chan%"
set black(say.en.anunt.8) "Anunt list for %chan% is:"
set black(say.en.anunt.9) "Use: del <number>"
set black(say.en.anunt.10) "I removed announce with number :%msg.1% for %chan%."
set black(say.en.anunt.11) "Please check it out if it is done by %char%anunt list"
set black(say.en.anunt.12) "Use: add <announce>"
set black(say.en.anunt.13) "ERROR! There is no such announce with number: %msg.1% for %chan%"

################################# AutoBroadcast ######################################

set black(say.en.autobroadcast.1) "Use: %char%bt <on> / <off> / <add> <broadcast> / <list> / <del> <number> ."
set black(say.en.autobroadcast.2) "Use: %botnick% bt <on> / <off> / <add> <broadcast> / <list> / <del> <number> ."
set black(say.en.autobroadcast.3) "AutoBroadcast is already enabled."
set black(say.en.autobroadcast.4) "I enabled AUTOBROADCAST MODULE"
set black(say.en.autobroadcast.5) "I disabled AUTOBROADCAST MODULE"
set black(say.en.autobroadcast.6) "Added a broadcast in my database"
set black(say.en.autobroadcast.7) "%msg%"
set black(say.en.autobroadcast.8) "There are no broadcasts in my list..."
set black(say.en.autobroadcast.9) "Broadcasts List is:"
set black(say.en.autobroadcast.10) "Use: del <number>. To list broadcasts type %char%bt list"
set black(say.en.autobroadcast.11) "I erased broadcast with number :%msg.1%"
set black(say.en.autobroadcast.12) "Use: add <broadcast>."

################################# limit ######################################

set black(say.en.limit.1) "Use: %char%limit <chan> <on> / <set> <number> / <off> | %char%limit <on> / <set> <number> / <off>"
set black(say.en.limit.2) "Use: %botnick% limit <chan> <on> / <set> <number> / <off> | %botnick% limit <on> / <set> <number> / <off>"
set black(say.en.limit.3) "Use: %char%limit <on> | <set> <number> | <off>"
set black(say.en.limit.4) "Use: %botnick% limit <on> | <set> <number> | <off>"
set black(say.en.limit.5) "I enabled LIMIT MODULE on %chan%"
set black(say.en.limit.6) "I set default limit to +10."
set black(say.en.limit.7) "I disabled LIMIT MODULE on %chan%"
set black(say.en.limit.8) "Use: set <number>"
set black(say.en.limit.9) "ERROR! You cannot set limit less than 2."
set black(say.en.limit.10) "Setting limit to 2."
set black(say.en.limit.11) "ERROR! You cannot set limit higher than 500."
set black(say.en.limit.12) "Setting limit to %msg.1%"


################################# Topic ######################################

set black(say.en.topic.1) "Use: %char%topic <chan> save | list | add <topic> | del <number> | set <number> | lock (topic lock) | unlock (topic unlock)"
set black(say.en.topic.2) "Use: %botnick% topic <chan> save | list | add <topic> | del <number> | set <number> | lock (topic lock) | unlock (topic unlock)"
set black(say.en.topic.3) "Unable to save the topic because is empty"
set black(say.en.topic.4) "Saving current topic..."
set black(say.en.topic.5) "Saving topic for %chan%..."
set black(say.en.topic.6) "There are no saved topics for %chan%"
set black(say.en.topic.7) "TOPIC list for %chan% is:"
set black(say.en.topic.8) "%msg%"
set black(say.en.topic.9) "Use: del <number> ( take it from <topic> <list> )"
set black(say.en.topic.10) "I removed topic with number: %msg.1% from %chan% list"
set black(say.en.topic.11) "Use: set <number> ( take it from <topic> <list> )"
set black(say.en.topic.12) "Setting topic with number %msg.1% on %chan%"
set black(say.en.topic.13) "Use: add <topic>"
set black(say.en.topic.14) "ERROR! Unable to delete topic with number: %msg.1%"
set black(say.en.topic.15) "ERROR! Unable to set topic with number: %msg.1%."
set black(say.en.topic.16) "ERROR! unable to lock topic in %chan% because is empty."
set black(say.en.topic.17) "Topic for %chan% has now being locked."
set black(say.en.topic.18) "Topic for %chan% is not locked"
set black(say.en.topic.19) "Topic for %chan% has being unlocked."
set black(say.en.topic.20) "Topic is locked. Only an admin+ can change the topic now."

################################# Seen ######################################

set black(say.en.seen.1) "Use: %char%seen <chan> <nick>/<host> | %char%seen <nick>/<host>"
set black(say.en.seen.2) "Use: %botnick% seen <chan> <nick>/<host> | %botnick% seen <nick>/<host>"
set black(say.en.seen.5) "Wait 1 minute to search."
set black(say.en.seen.6) "%msg.1% look in a mirror"
set black(say.en.seen.7) "%msg.1% is already on %chan%"
set black(say.en.seen.8) "i have no record how long it stayed."
set black(say.en.seen.9) "after it stayed %staytime% on %chan%."
set black(say.en.seen.10) "%newnick% is still here."
set black(say.en.seen.11) "Unable to see %userentry% right now on %chan%"
set black(say.en.seen.12) "%entry% (%host%) has part from %chan% about %output% %date% ago, with message: %reason%, %staymsg%"
set black(say.en.seen.13) "%entry% (%host%) has quit IRC %output% %date% ago, with message: %reason%, %staymsg%"
set black(say.en.seen.14) "%entry% (%host%) has joined %chan% %output% %date%.%nowon% ago"
set black(say.en.seen.15) "%entry% (%host%) has quit in *.net *.split %output% %date% ago, %staymsg%"
set black(say.en.seen.16) "%entry% (%host%) has been kicked of %chan% %output% %date% ago with reason (%reason%), %staymsg%"
set black(say.en.seen.17) "%entry% (%host%) changed his/her nick in %newnick% %output% %date%.%nowon% ago"
set black(say.en.seen.18) "I have not seen %msg.1% lately"
set black(say.en.seen.19) "%latest% is still here."
set black(say.en.seen.20) "Unable to see %latest% right now on %chan%"
set black(say.en.seen.21) "Found (%num%) results \"%entry%\". \002%latest%\002 (%host%) has part %chan% around %output% %date% with message: \"%reason%\", %staymsg%"
set black(say.en.seen.22) "Found (%num%) results \"%entry%\". \002%latest%\002 (%host%) has quited IRC around %output% %date% with message: \"%reason%\", %staymsg%"
set black(say.en.seen.23) "Found (%num%) results \"%entry%\". \002%latest%\002 (%host%) has joined on %chan% around %output% %date%.%nowon%"
set black(say.en.seen.24) "Found (%num%) results \"%entry%\". \002%latest%\002 (%host%) has quited in *.net *.split %output% %date%, %staymsg%"
set black(say.en.seen.25) "Found (%num%) results \"%entry%\". \002%latest%\002 (%host%) was booted out from %chan% acum %output% %date% with reason \"%reason%\", %staymsg%"
set black(say.en.seen.26) "Found (%num%) results \"%entry%\". \002%latest%\002 (%host%) changed the nickname in %newnick% around %output% %date%.%nowon%"

################################# greet ######################################

set black(say.en.greet.1) "Use: %char%greet <chan> <on> | <off> | <add> <message> | <list> | <set> <number> | <del> <greet>"
set black(say.en.greet.2) "Use: \002%botnick%\002 greet <chan> <on> | <off> | <add> <message> | <list> | <set> <greet> | <del> <greet>"
set black(say.en.greet.3) "You have enabled GREET MODULE on %chan% .To add a greet use: %char%greet add <message> | %botnick% greet add <message>. You may add as many as you want."
set black(say.en.greet.4) "I disabled GREET MODULE on %chan%."
set black(say.en.greet.5) "I added the next greet message for %chan% (this will become the current greet):"
set black(say.en.greet.6) "%msg%"
set black(say.en.greet.7) "There are no greets for %chan%"
set black(say.en.greet.8) "Greet List for %chan% is:"
set black(say.en.greet.9) "Use: del <greet>. To list the greets type %char%greet list"
set black(say.en.greet.10) "Erased %msg.1% greet(s) that match your search for %chan%."
set black(say.en.greet.11) "To set a current greet type %char%greet set <number>"
set black(say.en.greet.12) "Use: set <number> . To list the greets and their numbers type %char%greet list"
set black(say.en.greet.13) "You specified a wrong number. Please see the %char%greet list."
set black(say.en.greet.14) "This greet is already set as Current."
set black(say.en.greet.15) "Set as current greet, greet number: %msg.1% ." 

################################# Leave ######################################

set black(say.en.leave.1) "Use: %char%leave <chan> <on> | <off> | <add> <message> | <list> | <set> <number> | <del> <leave>"
set black(say.en.leave.2) "Use: \002%botnick%\002 leave <chan> <on> | <off> | <add> <message> | <list> | <set> <number> | <del> <leave>"
set black(say.en.leave.3) "You have enabled LEAVE MODULE on %chan% .To add a greet use: %char%leave add <message> | %botnick% leave add <message>. You may add as many as you want."
set black(say.en.leave.4) "I disabled LEAVE MODULE on %chan%."
set black(say.en.leave.5) "I added the next leave message for %chan% (this will become the current leave message):"
set black(say.en.leave.6) "%msg%"
set black(say.en.leave.7) "There are no leave messages for %chan%"
set black(say.en.leave.8) "Leave list for %chan% is:"
set black(say.en.leave.9) "Use: del <leave>. To list the leave messages type %char%leave list"
set black(say.en.leave.10) "Erased %msg.1% leave(s) that match for %chan%."
set black(say.en.leave.11) "To set a current leave message type: %char%leave set <number>"
set black(say.en.leave.12) "Use: set <number> . To list the leave messages and their numbers type %char%leave list"
set black(say.en.leave.13) "You specified a wrong number. Please see the %char%leave list."
set black(say.en.leave.14) "This leave is already set as Current."
set black(say.en.leave.15) "Set as current leave message, leave number: %msg.1% ." 

################################# Idle ######################################

set black(say.en.idle.1) "Use: %char%idle <chan> <on>/<off> | %char%idle <chan> op <on>/<off> | %char%idle <chan> voice <on>/<off> | %char%idle <chan> add <nick> | %char%idle <chan> list | %char%idle <chan> del <user>"
set black(say.en.idle.3) "Use: %botnick% idle <chan> <on>/<off> | %botnick% idle <chan> op <on>/<off> | %botnick% idle <chan> voice <on>/<off> | %botnick% idle <chan> add <nick> | %botnick% idle <chan> list | %botnick% idle <chan> del <user>"
set black(say.en.idle.5) "Use: %char%idle <on>/<off> | %char%idle op <on>/<off> | %char%idle voice <on>/<off> | %char%idle add <nick> | %char%idle list | idle del <user>"
set black(say.en.idle.6) "Use: %botnick% idle <on>/<off> | %botnick% idle op <on>/<off> | %botnick% idle voice <on>/<off> | %botnick% idle add <nick> | %botnick% idle list | %botnick% idle <chan> del <user>"
set black(say.en.idle.7) "I enabled ANTI-IDLE MODULE on %chan%, to have it work please activate one of these functions : %char%idle op <on>/<off> (idle-deop) | %char%idle voice <on/<off> (idle-devoice)"
set black(say.en.idle.8) "I disabled ANTI-IDLE MODULE on %chan%"
set black(say.en.idle.9) "Use : op <on>/<off>"
set black(say.en.idle.10) "First enable ANTI-IDLE MODULE with command: %char%idle on"
set black(say.en.idle.11) "I enabled idle-deop on %chan%"
set black(say.en.idle.12) "I disabled idle-deop on %chan%"
set black(say.en.idle.13) "Use : voice <on>/<off>"
set black(say.en.idle.14) "I enabled idle-devoice on %chan%"
set black(say.en.idle.15) "I disabled idle-devoice on %chan%"
set black(say.en.idle.16) "Use: add <nick>"
set black(say.en.idle.17) "%msg.1% is not on %chan%."
set black(say.en.idle.18) "%msg.1% is already in my database, adding as an exception only.."
set black(say.en.idle.19) "I have added as an exception %msg.1% with host %msg.2% on %chan%."
set black(say.en.idle.20) "Exception list for anti-idle on %chan% is:"
set black(say.en.idle.21) "%msg%"
set black(say.en.idle.22) "%msg.1% is not in my database."
set black(say.en.idle.23) "%msg.1% is not added as an exception to idle."
set black(say.en.idle.24) "%msg.1% was removed from my idle exception list."

################################# AntiBotIdle ######################################

set black(say.en.antibotidle.1) "Use: %char%botidle <on> | <off> ."
set black(say.en.antibotidle.2) "Use: %botnick% botidle <on> | <off> ."
set black(say.en.antibotidle.3) "AntiBotIdle is already enabled."
set black(say.en.antibotidle.4) "I enabled ANTIBOTIDLE MODULE"
set black(say.en.antibotidle.5) "I disabled ANTIBOTIDLE MODULE"

################################# TCL ######################################

set black(say.en.tcl.1) "Current loaded scripts are:"
set black(say.en.tcl.2) "Use: load <name.tcl>"
set black(say.en.tcl.3) "Couldn't load the script: %msg.1%. Reason: \002%msg.8%\002"
set black(say.en.tcl.4) "The script \"%msg.1%\" is already loaded."
set black(say.en.tcl.5) "The script \"%msg.1%\" has been successfuly loaded."
set black(say.en.tcl.6) "Use: unload <name.tcl>"
set black(say.en.tcl.7) "The script \"%msg.1%\" is not loaded."
set black(say.en.tcl.8) "Disabled the script \"%msg.1%\"."
set black(say.en.tcl.9) "There are \"%msg.1%\" tcls. Listing 30.. (Those who are loaded are written with BOLD)"
set black(say.en.tcl.10) "There are \"%msg.1%\" tcls. (Those who are loaded are written with BOLD)"
set black(say.en.tcl.11) "Use: info <name.tcl>"
set black(say.en.tcl.12) "\"%msg.1%\" \002doesn't exists\002 in scripts."
set black(say.en.tcl.13) "\"%msg.1%\" exists but \002is not loaded\002"
set black(say.en.tcl.14) "\"%msg.1%\" exists and \002it's loaded\002"
set black(say.en.tcl.15) "Use: %char%\002tcl <list>\002 (view loaded tcls) | \002<load> <name.tcl>\002 (load a tcl) | \002<unload> <name.tcl> \002(unload a tcl) | \002<all>\002 (view all tcls) | \002info <name.tcl>\002 (information about tcl)"
set black(say.en.tcl.16) "Use: %botnick% \002tcl <list>\002 (view loaded tcls) | \002<load> <name.tcl>\002 (load a tcl) | \002<unload> <name.tcl> \002(unload a tcl) | \002<all>\002 (view all tcls) | \002info <name.tcl>\002 (information about tcl)"
set black(say.en.tcl.17) "%msg%."
set black(say.en.tcl.18) "ERROR! You cannot unload this script !"

####################################  next #####################################

set black(say.en.next.1) "Welcome %nick%, you are number \002%counter%\002 in line.Please wait your turn, untill we finish with the current guests. Thank you."
set black(say.en.next.2) "You are now being helped by \002%nick%\002 . Please ask your question in one line !"
set black(say.en.next.3) "\002%msg.1%\002 was waiting for \002%msg.set%\002, please help him/her now :)"
set black(say.en.next.4) "%current% now that you received your help please \002/part %chan%\002, but if you have more questions please type \002/hop %chan%\002 . Thank you"
set black(say.en.next.5) "You are not allowed to do idle on %chan% !"
set black(say.en.next.6) "Atention: %nick% needs help on %chan% .This is number %counter% in line."
set black(say.en.next.7) "List of those who wait to be helped is:"
set black(say.en.next.8) "NONE"
set black(say.en.next.9) "%msg%"
set black(say.en.next.10) "There is nobody in next list."
set black(say.en.next.11) "Atention: %current% is being helped \002right now\002 by %nick% (%hand%)"
set black(say.en.next.12) "Use: helped <nick>"
set black(say.en.next.13) "ERROR! %msg.1% is in help list but didnt received any yet."
set black(say.en.next.14) "ERROR! %msg.1% is not in help list."
set black(say.en.next.15) "Atention : %current% has received \002helped\002 from %nick% (%hand%)."
set black(say.en.next.16) "Use: .noidle <nick>"
set black(say.en.next.17) "ERROR! %msg.1% has to receive helped first %msg.1%"
set black(say.en.next.18) "Use: skip <nick>"
set black(say.en.next.19) "Skipped %msg.1% (now is last one)"

################################################################################
#
#                                     COMMANDS
#
################################################################################

#################################### find ######################################

set black(say.en.find.1) "Use: %char%find <host> / <user>"
set black(say.en.find.2) "Use: %botnick% find <host> / <user>"
set black(say.en.find.3) "%msg.1%.) Handle: %msg.2%"
set black(say.en.find.4) "%msg.1%.) Hosts: %msg.8%"
set black(say.en.find.5) "%msg.1%.) Has no access on channels I monitor."
set black(say.en.find.6) "%msg.1%.) Has access on these channels : %msg.8%"
set black(say.en.find.7) "%msg.1%.) Access Level : BOSS OWNER"
set black(say.en.find.8) "%msg.1%.) Access Level : OWNER"
set black(say.en.find.9) "%msg.1%.) Last seen : NEVER"
set black(say.en.find.10) "%msg.1%.) Last seen in :%msg.2%, on channel :%msg.3%"
set black(say.en.find.11) "Found (\002%msg.1%\002) recordings for \002%msg.2%\002."
set black(say.en.find.12) "No match for %msg.1%."

#################################### myset ####################################

set black(say.en.myset.1) "I set your language to %msg.1%"
set black(say.en.myset.2) "I set your output to %msg.1%"
set black(say.en.myset.3) "Use: %char%myset <lang> <RO> / <EN> | <output> <CHAN> / <NOTICE>"
set black(say.en.myset.4) "Use: %botnick% myset <lang> <RO> / <EN> | <output> <CHAN> / <NOTICE>"
set black(say.en.myset.5) "Unable to set language %msg.1% because the file doesn't exists."

#################################### dr #######################################

set black(say.en.dr.1) "Use: %char%dr <chan> <nick>/<host> | %char%dr <nick>/<host>"
set black(say.en.dr.2) "Use: %botnick% dr <chan> <nick>/<host> | %botnick% dr <nick>/<host>"
set black(say.en.dr.3) "Use: %char%dr <nick>/<host>"
set black(say.en.dr.4) "Use: %botnick% dr <nick>/<host>"
set black(say.en.dr.5) "You are infected, join #nohack for help ! For unban join #unban !"

################################### bot #######################################

set black(say.en.bot.1) "Use: %char%bot <chan> <nick>/<host> | %char%bot <nick>/<host>"
set black(say.en.bot.2) "Use: %botnick% bot <chan> <nick>/<host> | %botnick% bot <nick>/<host>"
set black(say.en.bot.3) "Use: %char%bot <nick>/<host>"
set black(say.en.bot.4) "Use: %botnick% bot <nick>/<host>"
set black(say.en.bot.5) "BOT Detected ! If you are not a BOT contact an operator online for unban !"


################################## b #####################################

set black(say.en.b.1) "Use: %char%b <chan> <nick>/<host> <time> <reason> | %char%b <nick>/<host> <time> <reason>"
set black(say.en.b.2) "Global Ban: %char%b <nick>/<host> <time> global <reason>"
set black(say.en.b.3) "Use: %botnick% b <chan> <nick>/<host> <time> <reason> | %botnick% b <nick>/<host> <time> <reason>"
set black(say.en.b.4) "Globan Ban: %botnick% b <nick>/<host> <time> global <reason>"
set black(say.en.b.5) "Use: %char%b <nick>/<host> <time> <reason>"
set black(say.en.b.6) "Use: %botnick% bot <nick>/<host> <time> <reason>"
set black(say.en.b.7) "Added ban on: %msg.1% in: %chan% for: %msg.2% minutes"
set black(say.en.b.8) "Added a global ban on host: %msg.1% for: %msg.2% minutes"
set black(say.en.b.9) "You are banned!"
set black(say.en.b.10) "You cannot add a 7 days higher ban (requires Senior+)"

################################## n #####################################

set black(say.en.n.1) "Use: %char%n <chan> <nick> | %char%n <nick>"
set black(say.en.n.2) "Use: %botnick% n <chan> <nick> | %botnick% b <nick>"
set black(say.en.n.3) "Use: %char%n <nick>"
set black(say.en.n.4) "Use: %botnick% n <nick>"
set black(say.en.n.5) "Your nickname is considered to be improper. Please change it and come back after !"
set black(say.en.n.6) "ERROR! Use as argument <nick>"

################################## id ####################################

set black(say.en.id.1) "Use: %char%id <chan> <nick> | %char%id <nick>"
set black(say.en.id.2) "Use: %botnick% id <chan> <nick> | %botnick% id <nick>"
set black(say.en.id.3) "Use: %char%id <nick>"
set black(say.en.id.4) "Use: %botnick% id <nick>"
set black(say.en.id.5) "Your IDENT is considered to be improper. Please change it and come back after !"
set black(say.en.id.6) "ERROR! Use as argument <nick>"

################################## black #################################

set black(say.en.black.1) "Use : %char%black <chan> <nick>/<host> <reason> | %char%black <nick>/<host> <reason>"
set black(say.en.black.2) "Use : %botnick% black <chan> <nick>/<host> <reason> | %botnick% black <nick>/<host> <reason>"
set black(say.en.black.3) "Use : %char%black <nick>/<host> <reason>"
set black(say.en.black.4) "Use : %botnick% black <nick>/<host> <reason>"
set black(say.en.black.5) "Out - Unallowed !"

################################## w #####################################

set black(say.en.w.1) "Use: %char%w <chan> <nick> | %char%w <nick>"
set black(say.en.w.2) "Use: %botnick% w <chan> <nick> | %botnick% w <nick>"
set black(say.en.w.3) "Use: %char%w <nick>"
set black(say.en.w.4) "Use: %botnick% w <nick>"
set black(say.en.w.5) "You have been warned, please watch your behavior !"
set black(say.en.w.6) "This is the last warning. You are breaking one of our rules, available at website of channel (get it from topic). Thanks."

################################# spam ###################################

set black(say.en.spam.1) "Use: %char%spam <chan> <nick>/<host> | %char%spam <nick>/<host>"
set black(say.en.spam.2) "Use: %botnick% spam <chan> <nick>/<host> | %botnick% spam <nick>/<host>"
set black(say.en.spam.3) "Use: %char%spam <nick>/<host>"
set black(say.en.spam.4) "Use: %botnick% spam <nick>/<host>"
set black(say.en.spam.5) "You were caught making spam, join #nohack for help !"

################################# k #######################################

set black(say.en.k.1) "Use: %char%k <chan> <nick> <reason> | %char%k <nick> <reason>"
set black(say.en.k.2) "Use: %botnick% k <chan> <nick> <reason> | %botnick% k <nick> <reason>"
set black(say.en.k.3) "Use: %char%k <nick> <reason>"
set black(say.en.k.4) "Use: %botnick% k <nick> <reason>"
set black(say.en.k.5) "You just got lucky this time !"

################################# gag ######################################

set black(say.en.gag.1) "Use: %char%gag <chan> <nick> \[time\] \[reason\] | %char%gag <nick> \[time\] \[reason\]"
set black(say.en.gag.2) "Use: %botnick% gag <chan> <nick> \[time\] \[reason\] | %botnick% gag <nick> \[time\] \[reason\]"
set black(say.en.gag.3) "Use: %char%gag <nick> \[time\] \[reason\]"
set black(say.en.gag.4) "Use: %botnick% gag <nick> \[time\] \[reason\]"
set black(say.en.gag.5) "%msg.1% you have being silenced for %msg.2% minute(s).Now you can enjoy the sound of freedom :)."
set black(say.en.gag.6) "No reason"
set black(say.en.gag.7) "=- Gag List for %chan% =-"
set black(say.en.gag.8) "=- NONE =-"
set black(say.en.gag.9) "%msg.1%. %msg.2% - Expires after %msg.7%"
set black(say.en.gag.10) "You cannot write on %chan% for %time% minute(s)."
set black(say.en.gag.11) "- ATENTION - %gagger% will be unable to type in %chan% for %time% minute(s)."
set black(say.en.gag.12) "%msg.1% has OP on %chan%, unable to proceed"
set black(say.en.gag.13) "%msg.1% (%msg.2%) is already in my gag list for %chan%. Adding new expiration time .."
set black(say.en.gag.14) "Reason: %msg%"

################################# ungag #####################################

set black(say.en.ungag.1) "Use: %char%ungag <chan> <nick>/<host>  | %char%ungag <nick>/<host>"
set black(say.en.ungag.2) "Use: %botnick% ungag <chan> <nick>/<host> | %botnick% ungag <nick>/<host>"
set black(say.en.ungag.3) "Use: %char%ungag <nick>/<host> "
set black(say.en.ungag.4) "Use: %botnick% ungag <nick>/<host>"
set black(say.en.ungag.5) "Unable to find any gag for %msg.1% on %chan%."
set black(say.en.ungag.6) "I removed the gag for %msg.1% on %chan%."
set black(say.en.ungag.7) "Now you can type again on %chan%"
set black(say.en.ungag.8) "- ATENTION - %gagger% now can type again on %chan%"

################################ bw #########################################

set black(say.en.bw.1) "Use: %char%bw <chan> <nick>/<host> | %char%bw <nick>/<host>"
set black(say.en.bw.2) "Use: %botnick% bw <chan> <nick>/<host> | %botnick% bw <nick>/<host>"
set black(say.en.bw.3) "Use: %char%bw <nick>/<host>"
set black(say.en.bw.4) "Use: %botnick% bw <nick>/<host>"
set black(say.en.bw.5) "You have no rights to use such a language !"

############################### sb ##########################################

set black(say.en.sb.1) "Use: %char%sb <chan> <host> | %char%sb <host>"
set black(say.en.sb.2) "Use: %botnick% sb <chan> <host> | %botnick% sb <host>"
set black(say.en.sb.3) "Use: %char%sb <host>"
set black(say.en.sb.4) "Use: %botnick% sb <host>"
set black(say.en.sb.5) "Global Ban: %msg.1% | Set by: %msg.2% | Reason: %msg.5% | Created in: %msg.3% | Expire in: permanent , sticky"
set black(say.en.sb.6) "Global Ban: %msg.1% | Set by: %msg.2% | Reason: %msg.5% | Created in: %msg.3% | Expire in: permanent"
set black(say.en.sb.7) "Global Ban: %msg.1% | Set by: %msg.2% | Reason: %msg.5% | Created in: %msg.3% | Expire in: %msg.4% ,sticky"
set black(say.en.sb.8) "Global Ban: %msg.1% | Set by: %msg.2% | Reason: %msg.5% | Created in: %msg.3% | Expire in: %msg.4%"
set black(say.en.sb.9) "Local Ban: %msg.1% | Set by: %msg.2% | Reason: %msg.5% | Created in: %msg.3% | Expire in: permanent , sticky"
set black(say.en.sb.10) "Local Ban: %msg.1% | Set by: %msg.2% | Reason: %msg.5% | Created in: %msg.3% | Expire in: permanent"
set black(say.en.sb.11) "Local Ban: %msg.1% | Set by: %msg.2% | Reason: %msg.5% | Created in: %msg.3% | Expire in: %msg.4% ,sticky"
set black(say.en.sb.12) "Local Ban: %msg.1% | Set by: %msg.2% | Reason: %msg.5% | Created in: %msg.3% | Expire in: %msg.4%"
set black(say.en.sb.13) "ERROR! I have not found anything in my list."
set black(say.en.sb.14) "Has wrote: %msg%"
set black(say.en.sb.15) "Has been on these channels: %msg%."

############################### d ###########################################

set black(say.en.d.1) "Use: %char%d <chan> <days number> <nick>/<host> <reason> | %char%d <days number> <nick>/<host> <reason>"
set black(say.en.d.2) "Use: %botnick% d <chan> <days number> <nick>/<host> <reason> | %botnick% d <days number> <nick>/<host> <reason>"
set black(say.en.d.3) "Use: %char%d <days number> <nick>/<host> <reason>"
set black(say.en.d.4) "Use: %botnick% d <days number> <nick>/<host> <reason>"
set black(say.en.d.5) "These is how we BAN in days :)"

############################### stick ########################################

set black(say.en.stick.1) "Use: %char%stick <chan> <nick>/<host> <time> <reason> | %char%stick <nick>/<host> <time> <reason>"
set black(say.en.stick.2) "Use: %botnick% stick <chan> <nick>/<host> <time> <reason> | %botnick% stick <nick>/<host> <time> <reason>"
set black(say.en.stick.3) "Use: %char%stick <nick>/<host> <time> <reason>"
set black(say.en.stick.4) "Use: %botnick% stick <nick>/<host> <time> <reason>"
set black(say.en.stick.5) "A sticky ban :)"

################################ t ###########################################

set black(say.en.t.1) "Use: %char%t <chan> <topic> | %char% t <topic>"
set black(say.en.t.2) "Use: %botnick% t <chan> <topic> | %botnick% t <topic>"
set black(say.en.t.3) "Use: %char%t <topic>"
set black(say.en.t.4) "Use: %botnick% t <topic>"

############################### status #######################################

set black(say.en.status.1) "I am started for: %msg%"
set black(say.en.status.2) "I am connected to server: %msg%"
set black(say.en.status.3) "I am ONLINE for: %msg%"
set black(say.en.status.4) "Channels in my memory are: %msg%"
set black(say.en.status.5) "Servers' Uptime is: %msg%"

################################ i ##########################################

set black(say.en.i.1) "%msg.1% is already on %chan%."
set black(say.en.i.2) "Inviting %msg.1% on %chan%."
set black(say.en.i.5) "Use: %char%i <nick1> <nick2>.."
set black(say.en.i.6) "Use: %botnick% i <nick1> <nick2>.."
set black(say.en.i.7) "You are invited on %chan% by %nick% , if you want to enter type: /join %chan% . Thank You"

################################ addinfo ###################################

set black(say.en.addinfo.1) "Use: %char%addinfo <newinfo> to turn off: %char%addinfo off"
set black(say.en.addinfo.2) "Use: %botnick% addinfo <newinfo> to turn off %botnick% addinfo off"
set black(say.en.addinfo.3) "I set your info OFF"
set black(say.en.addinfo.4) "I set your info to: %msg%"

################################ purge #####################################

set black(say.en.purge.1) "Please specify a reason."
set black(say.en.purge.2) "I deleted %chan% from my list."

################################## l ########################################

set black(say.en.l.1) "Use: %char%l <chan> <seconds> | %char%l <seconds>"
set black(say.en.l.2) "Use: %botnick% l <chan> <seconds> | %botnick% l <seconds>"
set black(say.en.l.3) "Use: %char%l <seconds>"
set black(say.en.l.4) "Use: %botnick% l <seconds>"
set black(say.en.l.5) "The value is too much. Please use a value under 300 seconds (5 minutes)!"
set black(say.en.l.6) "I set +%msg.1% on %chan% for %msg.2% seconds"

################################## chat #####################################

set black(say.en.chat.1) "I sent the CHAT request."

################################## ul ######################################

set black(say.en.ul.1) "I have unlocked the modes +%msg.1% from %chan% in case that were set"

################################## say #####################################

set black(say.en.say.1) "Use: %char%say <chan> <message> | %char%say <message>"
set black(say.en.say.2) "Use: %botnick% say <chan> <message> | %botnick% say <message>"
set black(say.en.say.3) "Use: %char%say <message>"
set black(say.en.say.4) "Use: %botnick% say <message>"

################################## act ######################################

set black(say.en.act.1) "Use: %char%act <chan> <message> | %char%act <message>"
set black(say.en.act.2) "Use: %botnick% act <chan> <message> | %botnick% act <message>"
set black(say.en.act.3) "Use: %char%act <message>"
set black(say.en.act.4) "Use: %botnick% act <message>"

################################## broadcast ################################

set black(say.en.broadcast.1) "Use: %char%broadcast <text>"
set black(say.en.broadcast.2) "Use: %botnick% broadcast <text>"

################################## check ####################################

set black(say.en.check.1) "Use: %char%check <nick>"
set black(say.en.check.2) "Use: %botnick% check <nick>"
set black(say.en.check.3) "You are being checked, please do not reply to this message !"

################################## version ##################################

set black(say.en.version.1) "SCRIPT VERSION : \002BlackToolS\002 2.4  Created by \002BLaCkShaDoW\002 . For other details ---= \002WwW.TclScripts.Net\002 or #TCL-HELP @ UNDERNET"

################################# ub ######################################

set black(say.en.ub.1) "Use: %char%ub <chan> <host> | %char%ub <host>"
set black(say.en.ub.2) "Use: %botnick% ub <chan> <host> | %botnick% ub <host>"
set black(say.en.ub.3) "Use: %char%ub <host>"
set black(say.en.ub.4) "Use: %botnick% ub <host>"
set black(say.en.ub.5) "Unable to unban this ban.Requires Senior+ level"
set black(say.en.ub.6) "Unbanned (%msg.1%) bans related to \002%msg.2%\002 from my global banlist"
set black(say.en.ub.7) "There is no such a ban in my global database"
set black(say.en.ub.8) "Unbanned (%msg.1%) bans related to \002%msg.2%\002 from %chan% banlist"
set black(say.en.ub.9) "There is no such a ban in my database"
set black(say.en.ub.10) "%msg.1% has unbaned (%msg.2%) bans related to \002%msg.3%\002 from channel %chan%."

################################## away ###################################

set black(say.en.away.1) "Use: %char%away <text> | add <away> | list | del <number> .To disable away type : %char%away off"
set black(say.en.away.2) "Use: %botnick% away <text> | add <away> | list | del <number> .To disable away type : %botnick% away off"
set black(say.en.away.3) "I disable my AWAY module"
set black(say.en.away.4) "I set my AWAY to:%msg%."

################################## mode ###################################

set black(say.en.mode.1) "Use: %char%mode <chan> +mode | %char%mode +mode"
set black(say.en.mode.2) "Use: %botnick% mode <chan> +mode | %botnick% mode +mode"
set black(say.en.mode.3) "set: %char%mode +mode"
set black(say.en.mode.4) "Use: %botnick% mode +mode"
set black(say.en.mode.5) "Use: %char%mode +mode"
set black(say.en.mode.6) "Done! Modes %msg.1% succesfully applied on %chan%."

################################### set ###################################

set black(say.en.set.1) "Use: %char%set <chan> +flag / %char%set <chan> flag 0:0 | %char%set +flag / %char%set flag 0:0"
set black(say.en.set.2) "Use: %botnick% set <chan> +flag / %botnick% set <chan> flag 0:0 | %botnick% set +flag / %botnick% set flag 0:0"
set black(say.en.set.3) "Use: %char%set +flag / %char%set flag 0:0"
set black(say.en.set.4) "Use: %botnick% set +flag / %botnick% set flag 0:0"
set black(say.en.set.5) "ERROR! Unable to set \002%msg.1%\002 on %chan%."
set black(say.en.set.6) "Set \002%msg.1%\002 on %chan%"
set black(say.en.set.7) "ERROR! setting \002%msg.1%\002 %msg.set% on %chan%."
set black(say.en.set.8) "Set \002%msg.1%\002 %msg.set% on %chan%"
set black(say.en.set.9) "Use: %char%set vprotect <on>/<off>."
set black(say.en.set.10) "Use: %char%set oprotect <on>/<off>."
set black(say.en.set.11) "Use: set seen-method <notice>/<privmsg>"
set black(say.en.set.12) "ERROR! Unable to set backchan %msg.1% because is not a valid channel."
set black(say.en.set.13) "Use: set clonescan-action <message>/<ban>"

#################################### ignore ################################

set black(say.en.ignore.1) "Use: %char%ignore <list> | <add> <host> <time> <reason> | <delete> <host> ."
set black(say.en.ignore.2) "Use: %botnick% ignore <list> | <add> <host> <time> <reason> | <delete> <host> ."
set black(say.en.ignore.3) "There are no ignores."
set black(say.en.ignore.4) "%msg.1% by: %msg.2% reason: %msg.6% Expires at: %msg.3%"
set black(say.en.ignore.5) "ERROR! %msg.1% has ignore already."
set black(say.en.ignore.6) "Added ignore on %msg.1% with reason: %msg.7% for: %msg.2% minutes"
set black(say.en.ignore.7) "Use: %char%ignore delete <mask>"
set black(say.en.ignore.8) "Error! %msg.1% has no ignore."
set black(say.en.ignore.9) "I removed ignore for %msg.1%."

################################## show ####################################

set black(say.en.show.1) "Use: %char%show <chan> <flag> | %char%show <flag>"
set black(say.en.show.2) "Use: %botnick% show <chan> <flag> | %botnick% show <flag>"
set black(say.en.show.3) "Use: %char%show <flag>"
set black(say.en.show.4) "Use: %botnick% show <flag>"
set black(say.en.show.5) "ERROR! Unable to find informations for %msg.1%."
set black(say.en.show.6) "%msg.1% is set to: %msg.8%"

################################## silence ####################################

set black(say.en.silence.1) "Use: %char%silence <on> | <off>"
set black(say.en.silence.2) "Use: %botnick% silence <on> | <off>"
set black(say.en.silence.3) "SILENCE +*!*@* Enabled"
set black(say.en.silence.4) "SILENCE +*!*@* Disabled"

################################## msg #######################################

set black(say.en.msg.1) "Use: %char%msg <nick> <text>"
set black(say.en.msg.2) "Use: %botnick% msg <nick> <text>"

################################## reset #####################################

set black(say.en.reset.1) "Use: %char%reset <chan> <flag> / <all> | %char%reset <flag> / <all>"
set black(say.en.reset.2) "Use: %botnick% reset <chan> <flag> / <all> | %botnick% reset <flag> / <all>"
set black(say.en.reset.3) "Use: %char% reset <flag> / <all>"
set black(say.en.reset.4) "Use: %botnick% reset <flag> / <all>"
set black(say.en.reset.5) "I reset reasons & bans for %chan%.."
set black(say.en.reset.6) "I could not reset %msg.1%"
set black(say.en.reset.7) "I reset %msg.1% for %chan%"

##################################banlist##################################### 

set black(say.en.banlist.1) "Use: %char%banlist <chan> <user> | %char%banlist <user>"
set black(say.en.banlist.2) "GLOBAL : %char%banlist global"
set black(say.en.banlist.3) "Use: %botnick% banlist <chan> <user>  | %botnick% banlist <user> "
set black(say.en.banlist.4) "GLOBAL : %botnick% banlist global"
set black(say.en.banlist.5) "Use: %char%banlist <user>"
set black(say.en.banlist.6) "Use: %botnick% banlist <user>"
set black(say.en.banlist.7) "*** NONE ***"
set black(say.en.banlist.8) "*** End of list ***"
set black(say.en.banlist.9) "Global Ban List is:"
set black(say.en.banlist.10) "%msg.1% by: %msg.2% Reason: %msg.5% Expire in: %msg.4% Created in: %msg.3%"
set black(say.en.banlist.11) "Banlist for %msg.1% (%chan%) is:"
set black(say.en.banlist.12) "%msg.1% Reason: %msg.6% Expire in: %msg.3% Created in: %msg.2%"
set black(say.en.banlist.13) "Banlist for %chan% is :"

################################## secure ####################################

set black(say.en.secure.1) "Use: %char%secure <chan> <on> / <off> | %char%secure <on> / <off> "
set black(say.en.secure.2) "Use: %botnick% secure <chan> <on> / <off> | %botnick% secure <on> / <off>"
set black(say.en.secure.3) "Use: %char%secure <on> / <off>"
set black(say.en.secure.4) "Use: %botnick% secure <on> / <off>"
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
set black(say.en.nick.2) "Use: nick <newnick>"

################################### addchan ##################################

set black(say.en.addchan.1) "Use: addchan #channel"
set black(say.en.addchan.2) "%msg.1% is already in my channel list"
set black(say.en.addchan.3) "Added %msg.1% in my channel list"
set black(say.en.addchan.4) "Use: %botnick% addchan #channel"


################################### delchan ##################################

set black(say.en.delchan.1) "Use: delchan #channel"
set black(say.en.delchan.2) "%msg.1% is not in my memory"
set black(say.en.delchan.3) "I removed %msg.1% from my channel list"
set black(say.en.delchan.4) "Use: %botnick% delchan #channel"
set black(say.en.delchan.5) "Unable to delete the channel %msg.1% because is eggdrops HOMECHAN."

################################### suspend ##################################

set black(say.en.suspend.1) "Use: suspend #channel <reason>"
set black(say.en.suspend.2) "%msg.1% is not in my memory"
set black(say.en.suspend.3) "%msg.1% is suspend already" 
set black(say.en.suspend.4) "I set suspend for channel %msg.1%"
set black(say.en.suspend.5) "Use: %botnick% suspend #channel <reason>"

################################### unsuspend ##################################

set black(say.en.unsuspend.1) "Use: unsuspend #channel"
set black(say.en.unsuspend.2) "%msg.1% is not in my memory"
set black(say.en.unsuspend.3) "%msg.1% has no suspend"
set black(say.en.unsuspend.4) "I set unsuspend for channel %msg.1%"
set black(say.en.unsuspend.5) "Use: %botnick% unsuspend #channel"


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

set black(say.en.invite.1) "Use: invite <chan>"
set black(say.en.invite.2) "You received invite on %chan% please rejoin !"


################################### add #########################################

set black(say.en.add.1) "Use: %char%add <level> <chan> <user1> <user2>.. (Level : voice, op, senior, admin, manager, protect, owner)  | %char%add <level> <user1> <user2>.. (Levels : voice, op, senior, admin, manager, protect, owner)"
set black(say.en.add.2) "Use: %botnick% add <level> <chan> <user1> <user2>.. (Level : voice, op, senior, admin, manager, protect, owner)  | %botnick% add <level> <user1> <user2>.. (Levels : voice, op, senior, admin, manager, protect, owner)"
set black(say.en.add.3) "Use: %char%add <level> <user1> <user2>.. (Levels : voice, op, senior, admin, manager,protect)"
set black(say.en.add.4) "Use: %botnick% add <level> <user1> <user2>.. (Levels : voice, op, senior, admin, manager,protect)"
set black(say.en.add.5) "There is already another user in my database with the same host.This is \002%msg.1%\002."
set black(say.en.add.6) "Unable to add Manager Level because it is higher than your access level."
set black(say.en.add.7) "Unable to add Admin Level because this is your access level."
set black(say.en.add.8) "Unable to add Manager Level because this is your access level."
set black(say.en.add.9) "\002%msg.1%\002 has Manager access on %chan%."
set black(say.en.add.10) "Added user \002%msg.1%\002 with host :\002%msg.2%\002"
set black(say.en.add.11) "\002%msg.1%\002 has Admin access on %chan%."
set black(say.en.add.12) "\002%msg.1%\002 has Senior access on %chan%."
set black(say.en.add.13) "\002%msg.1%\002 has Op access on %chan%."
set black(say.en.add.14) "\002%msg.1%\002 has Voice access on %chan%."
set black(say.en.add.15) "\002%msg.1%\002 has Protect access on %chan%."
set black(say.en.add.16) "\002%msg.1%\002 has Owner access ."
set black(say.en.add.17) "User \002%msg.1%\002 is too long. Was automatically truncated to \002%msg.2%\002"

################################### adduser #########################################

set black(say.en.adduser.1) "Use: %char%adduser <level> <chan> <nick1> <nick2>.. (Level: voice, op, senior, admin, manager, protect, owner)  | %char%adduser <level> <nick1> <nick2>.. (Levels : voice, op, senior, admin, manager, protect, owner)"
set black(say.en.adduser.2) "Use: %botnick% adduser <level> <chan> <nick1> <nick2>.. (Levels: voice, op, senior, admin, manager, protect, owner)  | %botnick% adduser <level> <nick1> <nick2>.. (Levels : voice, op, senior, admin, manager, protect, owner)"
set black(say.en.adduser.3) "Use: %char%adduser <level> <nick1> <nick2>.. (Levels: voice, op, senior, admin, manager,protect)"
set black(say.en.adduser.4) "Use: %botnick% adduser <level> <nick1> <nick2>.. (Levels: voice, op, senior, admin, manager,protect)"

################################### delacc #########################################

set black(say.en.delacc.1) "Use: %char%delacc <chan> <user1> <user2>.. | %char%delacc <user1> <user2>.."
set black(say.en.delacc.2) "Use: %botnick% delacc <chan> <user1> <user2>..  | %botnick% delacc <user1> <user2>.."
set black(say.en.delacc.3) "Use: %char%delacc <user1> <user2>.."
set black(say.en.delacc.4) "Use: %botnick% delacc <user1> <user2>.."
set black(say.en.delacc.5) "I removed access for %msg.1% on %chan%."
set black(say.en.delacc.6) "Use: %char%delacc owner <user1> <user2>"
set black(say.en.delacc.7) "Use: %botnick% delacc owner <user1> <user2>"
set black(say.en.delacc.8) "Removed OWNER access for %msg.1%."
set black(say.en.delacc.9) "Has no OWNER access."

#################################### del ###########################################

set black(say.en.del.1) "Use: %char%del <user1> <user2>.."
set black(say.en.del.2) "Use: %botnick% del <user1> <user2>.."
set black(say.en.del.3) "I deleted %msg.1% out of my memory"
set black(say.en.del.4) "Unable to delete the user \002%msg.1%\002 because it has access on other channels.Use instead \002delacc %msg.1%\002"

################################### addhost ########################################

set black(say.en.addhost.1) "Use: %char%addhost <user1> <host>"
set black(say.en.addhost.2) "Use: %botnick% addhost <user1> <host>"
set black(say.en.addhost.3) "%msg.2% is already in database of %msg.1%."
set black(say.en.addhost.4) "Added: %msg.2% to %msg.1%"
set black(say.en.addhost.5) "You added your host to: %msg.1%"

################################### delhost ########################################

set black(say.en.delhost.1) "Use: %char%delhost <user1> <host>"
set black(say.en.delhost.2) "Use: %botnick% delhost <user1> <host>"
set black(say.en.delhost.3) "%msg.2% is not in database of %msg.1%."
set black(say.en.delhost.4) "I removed host: %msg.2% from user: %msg.1%"
set black(say.en.delhost.5) "You removed your host: %msg.2%"

################################### chuser ########################################

set black(say.en.chuser.1) "Use: %char%chuser <user> <newuser>"
set black(say.en.chuser.2) "Use: %botnick% chuser <user> <newuser>"
set black(say.en.chuser.3) "Changing %msg.1% in: %msg.2% ."
set black(say.en.chuser.4) "You changed your handle in: %msg.1%."

################################### userlist ########################################

set black(say.en.userlist.1) "Use: %char%userlist <chan> <all> / <op> / <voice> / <senior> / <admin> / <protect> /  <manager> | %char%userlist <all> / <op> / <voice> / <senior> / <admin> / <protect> /  <manager> / <online>"
set black(say.en.userlist.2) "Use: %botnick% userlist <chan> <all> / <op> / <voice> / <senior> / <admin> / <protect> /  <manager>  | %botnick% userlist <all> / <op> / <voice> / <senior> / <admin> / <protect> /  <manager> / <online>"
set black(say.en.userlist.3) "Use: %char%userlist <all> / <op> / <voice> / <senior> / <admin> / <protect> /  <manager> / <online>"
set black(say.en.userlist.4) "Use: %botnick% userlist <all> / <op> / <voice> / <senior> / <admin> / <protect> / <manager> / <online>"

set black(say.en.userlist.5) "I have \002%msg.1%\002users with \002Manager\002 on %chan%."
set black(say.en.userlist.7) "%msg%"
set black(say.en.userlist.8) "I have \002%msg.1%\002 users with \002Administrator\002 on %chan%."
set black(say.en.userlist.10) "I have \002%msg.1%\002 users with \002Senior\002 on %chan%."
set black(say.en.userlist.12) "I have \002%msg.1%\002 users with \002Protect\002 on %chan%."
set black(say.en.userlist.14) "I have \002%msg.1%\002 users with \002Op\002 on %chan%."
set black(say.en.userlist.16) "\002BOSS OWNER\002 :%msg%"
set black(say.en.userlist.17) "\002Owner List\002 :%msg%"
set black(say.en.userlist.18) "I have \002%msg.1%\002 users with \002Voice\002 on %chan%."
set black(say.en.userlist.20) "I have \002%msg.1%\002 users on %chan%"
set black(say.en.userlist.21) "I have %msg.1% users with \002ONLINE\002 access on %chan%"
set black(say.en.userlist.22) "I have %msg.1% users with \002Autoop\002 access on %chan%."
set black(say.en.userlist.23) "I have %msg.1% users with \002AutoVoice\002 access on %chan%."

#################################### channels #####################################

set black(say.en.channels.1) "I have %msg.1% channels.."
set black(say.en.channels.2) "%msg%"

#################################### info ########################################

set black(say.en.info.1) "Use: %char%info <chan> <user1> | %char%info <user1>"
set black(say.en.info.2) "Use: %botnick% info <chan> <user1> | %botnick% info <user1>"
set black(say.en.info.3) "Use: %char%info <user1> | <chan>"
set black(say.en.info.4) "Use: %botnick% info <user1> | <chan>"
set black(say.en.info.5) "\[It has access on\]: %msg%"
set black(say.en.info.6) "\[HOSTS\]: %msg%"
set black(say.en.info.7) "\[Last ONLINE seen\]: %msg%"
set black(say.en.info.8) "\[Informations about] %msg.1%"
set black(say.en.info.9) "\[Current time\]: %msg%"
set black(say.en.info.10) "Out of order - Suspended"
set black(say.en.info.11) "\[Access Level\]: %msg.8% (%msg.1%)"
set black(say.en.info.12) "\[Info\] - %msg%"
set black(say.en.info.13) "\[Last modified by\]: \037%msg.1%\037 in: %msg.8%"
set black(say.en.info.14) "\[Last ONLINE seen\]: NONE"
set black(say.en.info.15) "To see the statistics for user %msg.1% type - %char%activ %msg.1% -"
set black(say.en.info.16) "\[End of informations..\]"
set black(say.en.info.17) "\[Last ONLINE seen\]: %msg%"
set black(say.en.info.18) "It has no access on channel !"

################################## s #############################################

set black(say.en.s.1) "Use: %char%s <chan> <user1> | %char%s <user1>"
set black(say.en.s.2) "Use: %botnick% s <chan> <user1>  | %botnick% s <user1>"
set black(say.en.s.3) "Use: %char%s <user1>"
set black(say.en.s.4) "Use: %botnick% s <user1>"
set black(say.en.s.5) "%msg.1% is already suspended on %chan%."
set black(say.en.s.6) "I suspended %msg.1% access on %chan%"

################################## us #############################################

set black(say.en.us.1) "Use: %char%us <chan> <user1> | %char%us <user1>"
set black(say.en.us.2) "Use: %botnick% us <chan> <user1>  | %botnick% us <user1>"
set black(say.en.us.3) "Use: %char%us <user1>"
set black(say.en.us.4) "Use: %botnick% us <user1>"
set black(say.en.us.5) "%msg.1% has no suspend on %chan%."
set black(say.en.us.6) "I removed %msg.1% suspend on %chan%"

################################## ping ###########################################

set black(say.en.ping.1) "Ping reply is %msg.1% seconds"

################################## time ###########################################

set black(say.en.time.1) "Time is: %msg%"

################################## vers ###########################################

set black(say.en.vers.1) "Use: %char%vers <nick> ."
set black(say.en.vers.2) "Use: %botnick% vers <nick> ."
set black(say.en.vers.3) "%msg.1% has version: %msg.4%"

################################## whois ##########################################

set black(say.en.whois.1) "Use: %char%whois <nick>"
set black(say.en.whois.2) "Use: %botnick% whois <nick>"
set black(say.en.whois.3) "Informations about %msg.1% :%msg.4%"
set black(say.en.whois.4) "Is on these channels: %msg%"
set black(say.en.whois.5) "There is no such a nick."

################################## clear ##########################################

set black(say.en.clear.1) "Use: %char%clear <chan> <banlist> / <userlist> / <settings> / <activ> | %char%clear <banlist> / <userlist> / <settings> / <activ>"
set black(say.en.clear.2) "Use: %botnick% clear <chan> <banlist> / <userlist> / <settings> / <activ>  | %botnick% clear <banlist> / <userlist> / <settings> / <activ>"
set black(say.en.clear.3) "Use: %char%clear <banlist> | <userlist> | <settings> | <activ>"
set black(say.en.clear.4) "Use: %botnick% clear <banlist> | <userlist> | <settings> | <activ>"
set black(say.en.clear.5) "I removed all the accesses on %chan%"
set black(say.en.clear.6) "I have reset (%msg.1%) bans for %chan%"
set black(say.en.clear.7) "I disabled %msg.1% settings enabled on %chan% (modules,protections)"
set black(say.en.clear.8) "I reset the activity for %msg.1% users on %chan%."

################################## activ ##########################################

set black(say.en.activ.1) "Use: %char%activ <chan> <user> | %char%activ <user>"
set black(say.en.activ.2) "Use: %botnick% activ <chan> <user>  | %botnick% activ <user>"
set black(say.en.activ.3) "Use: %char%activ <user>"
set black(say.en.activ.4) "Use: %botnick% activ <user>"
set black(say.en.activ.5) "\002Statistics\002 reggarding commands used by %msg.1% on %chan% are:"
set black(say.en.activ.6) "%msg%"
set black(say.en.activ.7) "End of list.."
set black(say.en.activ.8) "\002Statistics\002 reggarding commands used by %msg.1% having Op access are:"
set black(say.en.activ.9) "\002Statistics\002 reggarding commands used by %msg.1% having Voice access are:"
set black(say.en.activ.10) "Use : activ <user> \[-reset\]"
set black(say.en.activ.11) "I reset the statistics for user %msg.1% on %chan%."

################################## auto ##########################################

set black(say.en.auto.1) "Use: %char%auto (+/-)o | (+/-)v  <user>"
set black(say.en.auto.2) "Use: %botnick% auto (+/-)o | (+/-)v  <user>"
set black(say.en.auto.3) "Use: %char%auto (+/-)o | (+/-)v  <user> \[-global\]"
set black(say.en.auto.4) "Use: %botnick% auto (+/-)o | (+/-)v  <user> \[-global\]"
set black(say.en.auto.5) "Use: (+/-)o | (+/-)v"
set black(say.en.auto.6) "You set autoop (+o) global for you"
set black(say.en.auto.7) "You set autovoice (+v) global for you"
set black(say.en.auto.8) "You set autoop on %chan% for you"
set black(say.en.auto.9) "You set autovoice on %chan% for you"
set black(say.en.auto.10) "I set autoop for %msg.1% on %chan%"
set black(say.en.auto.11) "I set autovoice for %msg.1% on %chan%"
set black(say.en.auto.12) "I set autoop global for %msg.1%"
set black(say.en.auto.13) "I set autovoice global for %msg.1%"
set black(say.en.auto.14) "You removed your autoop (+o) global"
set black(say.en.auto.15) "You removed your autovoice (+v) global"
set black(say.en.auto.16) "You removed your autoop on %chan%"
set black(say.en.auto.17) "You removed your autovoice on %chan%"
set black(say.en.auto.18) "I removed autoop for %msg.1% on %chan%"
set black(say.en.auto.19) "I removed autovoice for %msg.1% on %chan%"
set black(say.en.auto.20) "I removed autoop global for %msg.1%"
set black(say.en.auto.21) "I removed autovoice global for %msg.1%"

################################## cc ############################################

set black(say.en.cc.1) "Use: %char%cc <chan>"
set black(say.en.cc.2) "Use: %botnick% cc <chan>"
set black(say.en.cc.3) "Channel was created in: %msg% ."
set black(say.en.cc.4) "This channel is not created. Please redefine your check"

################################## info / stats ##########################################

set black(say.en.stats.1) "\[Channel added by\]: \002%awho% (%ahost%)\002 in: %atime%"
set black(say.en.stats.2) "\[Channel is added for\]: %duration%"
set black(say.en.stats.3) "\[Channel added for\]: %duration%"
set black(say.en.stats.4) "\[Channel removed by\]: %rwho% (%rhost%) in: %rtime%"
set black(say.en.stats.5) "There are no statistics for %chan%"
set black(say.en.stats.6) "\[Statistics for\] %chan% :"
set black(say.en.stats.7) "%msg%"
set black(say.en.stats.8) "\[Channel status\]: ONLINE"
set black(say.en.stats.9) "\[Channel status\]: ONLINE (I am NOT on %chan%)"
set black(say.en.stats.10) "Users: %msg.1% (Op users: %msg.2% - Voice users: %msg.3% ) - Bans: %msg.4%"
set black(say.en.stats.11) "\[End of statistics..\]"
set black(say.en.stats.12) "\[Channel status\]: OFFLINE"
set black(say.en.stats.13) "\[Channel suspended by\]: %swho% (%shost%) in: %stime%"
set black(say.en.stats.14) "\[Reason\]: %reason%"

################################# login #########################################

set black(say.en.login.1) "Logging to %msg.1%.."


################################ Top ###########################################

set black(say.en.top.1) "Use: %char%top <chan> <command> / Use %char%top <chan> <words> (Top Words) | %char%top <command> / Use %char%top <words> (Top Words)"
set black(say.en.top.2) "Commands for TOP are: <dr>,<bot>, <b>, <bw>, <black>, <spam>, <stick>, <n>, <i>, <w>, <k>, <d>"
set black(say.en.top.3) "Use: %botnick% top <chan> <command> / Use %botnick% top <chan> <words> (Top Words)  | %botnick% top <command> / Use %botnick% top <words> (Top Words)"
set black(say.en.top.4) "Commands for TOP are: <dr>,<bot>, <b>, <bw>, <black>, <spam>, <stick>, <n>, <i>, <w>, <k>, <d>"
set black(say.en.top.5) "Use: %char%top <command> | Use %char%top <words> (Top Words)"
set black(say.en.top.6) "Commands for TOP are: <dr>,<bot>, <b>, <bw>, <black>, <spam>, <stick>, <n>, <i>, <w>, <k>, <d>"
set black(say.en.top.7) "Use: %botnick% top <command> | Use %botnick% top <words> (Top Words)"
set black(say.en.top.8) "Commands for TOP are: <dr>,<bot>, <b>, <bw>, <black>, <spam>, <stick>, <n>, <i>, <w>, <k>, <d>"
set black(say.en.top.9) "There are no users in TOP"
set black(say.en.top.10) "Top \002%char%dr\002 for %chan% is:"
set black(say.en.top.11) "%msg%"
set black(say.en.top.12) "Top for \002%char%b\002 is:"
set black(say.en.top.13) "Top for \002%char%bot\002 is:"
set black(say.en.top.14) "Top for \002%char%bw\002 is:"
set black(say.en.top.15) "Top for \002%char%black\002 is:"
set black(say.en.top.16) "Top for \002%char%spam\002 is:"
set black(say.en.top.17) "Top for \002%char%stick\002 is:"
set black(say.en.top.18) "Top for \002%char%n\002 is:"
set black(say.en.top.19) "Top for \002%char%i\002 is:"
set black(say.en.top.20) "Top for \002%char%k\002 is:"
set black(say.en.top.21) "Top for \002%char%w\002 is:"
set black(say.en.top.22) "Top for \002%char%d\002 is:"
set black(say.en.top.23) "TOP MODULE is not enabled on %chan%."
set black(say.en.top.24) "OK! Erasing top words..."
set black(say.en.top.25) "Top %msg.1% of most talkactive users is:"

#################################### h ############################################

set black(say.en.cmdsvoice) "\002\[Commands\]\002: %char%v <nick> | \002%char%userlist\002 | %char%version | \002%char%info <user>/<chan>\002 | %char%addinfo <text> | \002%char%t <topic>\002"
set black(say.en.cmdsop) "\002\[Commands\]\002: %char%v <nick> | \002%char%o <nick>\002 | %char%userlist | \002%char%version\002 | %char%info <user> | \002%char%ping\002 | %char%act <message> | \002%char%addinfo <text>\002 | %char%t <topic> | \002%char%l <secunde>\002 | %char%ul | \002%char%cycle\002 | %char%mode <chanmode> | \002%char%i <nick>\002 | %char%vers <nick> | \002%char%whois <nick>\002 | %char%cc <channel> | \002%char%time\002 ."
set black(say.en.cmdsenior) "\002\[Commands\]\002: %char%v <nick> | \002%char%o <nick>\002 | %char%userlist | \002%char%version\002 | %char%info <user>/<chan> | \002%char%ping\002 | %char%act <message> | \002%char%addinfo <text>\002 | %char%t <topic> | \002%char%l <secunde>\002 | %char%ul | \002%char%cycle\002 | %char%mode <chanmode> | \002%char%i <nick>\002 | %char%vers <nick> | \002%char%whois <nick>\002 | %char%cc <channel> | \002%char%time\002 ."
set black(say.en.cmdadmin) "\002\[Commands\]\002: %char%v <nick> | \002%char%o <nick>\002 | %char%userlist | \002%char%version\002 | %char%info <user>/<chan> | \002%char%ping\002 | %char%act <message> | \002%char%addinfo <text>\002 | %char%t <topic> | \002%char%l <secunde>\002 | %char%ul | \002%char%cycle\002 | %char%mode <chanmode> | \002%char%i <nick>\002 | %char%vers <nick> | \002%char%whois <nick>\002 | %char%cc <channel> | \002%char%time\002 ."
set black(say.en.cmdmanager) "\002\[Commands\]\002: %char%v <nick> | \002%char%o <nick>\002 | %char%userlist | \002%char%version\002 | %char%info <user>/<chan> | \002%char%ping\002 | %char%act <message> | \002%char%addinfo <text>\002 | %char%t <topic> | \002%char%l <secunde>\002 | %char%ul | \002%char%cycle\002 | %char%mode <chanmode> | \002%char%i <nick>\002 | %char%vers <nick> | \002%char%whois <nick>\002 | %char%cc <channel> | \002%char%time\002 | %char%clear <userlist>/<banlist>/<activ> | \002%char%purge <reason>\002 | %char%set (+/-)flag ."
set black(say.en.cmdowner) "\002\[Commands\]\002: %char%v <nick> | \002%char%o <nick>\002 | %char%userlist | \002%char%version\002 | %char%info <user>/<chan> | \002%char%ping\002 | %char%act <message> | \002%char%addinfo <text>\002 | %char%t <topic> | \002%char%l <secunde>\002 | %char%ul | \002%char%cycle\002 | %char%mode <chanmode> | \002%char%i <nick>\002 | %char%vers <nick> | \002%char%whois <nick>\002 | %char%cc <channel> | \002%char%time\002 | %char%clear <userlist>/<banlist>/<activ> | \002%char%purge <reason>\002 | %char%set (+/-)flag ."
set black(say.en.cmdbossowner) "\002\[Commands\]\002: %char%v <nick> | \002%char%o <nick>\002 | %char%userlist | \002%char%version\002 | %char%info <user>/<chan> | \002%char%ping\002 | %char%act <message> | \002%char%addinfo <text>\002 | %char%t <topic> | \002%char%l <secunde>\002 | %char%ul | \002%char%cycle\002 | %char%mode <chanmode> | \002%char%i <nick>\002 | %char%vers <nick> | \002%char%whois <nick>\002 | %char%cc <channel> | \002%char%time\002 | %char%clear <userlist>/<banlist>/<activ> | \002%char%purge <reason>\002 | %char%set (+/-)flag."

set black(say.en.cmds_more) "\002\[Private Commands\]\002: op <chan> <nick> | \002deop <chan> <nick>\002 | voice <chan> <nick> | \002devoice <chan> <nick>\002 | invite <chan> ."
set black(say.en.cmds_more_1) "\002\[Private Commands\]\002: voice <chan> <nick> | \002devoice <chan> <nick>\002."

set black(say.en.banvoice) "\002\[Commands\]\002: %char%k <nick> | \002%char%w <nick>\002 | %char%check <nick> | \002%char%sb <host>\002"
set black(say.en.banop) "\002\[Commands\]\002: %char%k <nick> | \002%char%w <nick>\002 | %char%check <nick> | \002%char%sb <host>\002 | %char%id <nick> | \002%char%n <nick>\002 | %char%spam <nick> | \002%char%dr <nick>\002 | %char%b <nick>/<host> <timp> <reason> | \002%char%bot <nick>/<host>\002 | %char%bw <nick>/<host> | \002%char%ub <host>\002 | %char%gag <nick> | \002%char%ungag <nick>/<host>\002 | %char%banlist <user>."
set black(say.en.bansenior) "\002\[Commands\]\002: %char%k <nick> | \002%char%w <nick>\002 | %char%check <nick> | \002%char%sb <host>\002 | %char%id <nick> | \002%char%n <nick>\002 | %char%spam <nick> | \002%char%dr <nick>\002 | %char%b <nick>/<host> <timp> <reason> | \002%char%ub <host>\002 | %char%d <nr zile> <nick> / <host> <reason> | \002%char%bot <nick>/<host>\002 | %char%bw <nick>/<host> | \002%char%black <host> / <nick> <reason>\002 | %char%stick <nick> / <host> <timp> <reason> | \002%char%gag <nick>\002 | %char%ungag <nick>/<host> | \002%char%banlist <user>\002 ."
set black(say.en.banadmin) "\002\[Commands\]\002: %char%k <nick> | \002%char%w <nick>\002 | %char%check <nick> | \002%char%sb <host>\002 | %char%id <nick> | \002%char%n <nick>\002 | %char%spam <nick> | \002%char%dr <nick>\002 | %char%b <nick>/<host> <timp> <reason> | \002%char%ub <host>\002 | %char%d <nr zile> <nick> / <host> <reason> | \002%char%bot <nick>/<host>\002 | %char%bw <nick>/<host> | \002%char%black <host> / <nick> <reason>\002 | %char%stick <nick> / <host> <timp> <reason> | \002%char%gag <nick>\002 | %char%ungag <nick>/<host> | \002%char%banlist <user>\002 ."
set black(say.en.banmanager) "\002\[Commands\]\002: %char%k <nick> | \002%char%w <nick>\002 | %char%check <nick> |\002 %char%sb <host>\002 | %char%id <nick> | \002%char%n <nick>\002 | %char%spam <nick> | \002%char%dr <nick>\002 | %char%b <nick>/<host> <timp> <reason> | \002%char%ub <host>\002 | %char%d <nr zile> <nick> / <host> <reason> | \002%char%bot <nick>/<host>\002 | %char%bw <nick>/<host> | \002%char%black <host> / <nick> <reason>\002 | %char%stick <nick> / <host> <timp> <reason> | \002%char%gag <nick>\002 | %char%ungag <nick>/<host> | \002%char%banlist <user>\002."
set black(say.en.banowner) "\002\[Commands\]\002: %char%k <nick> | \002%char%w <nick>\002 | %char%check <nick> | \002%char%sb <host> \[global\]\002 | %char%id <nick> | \002%char%n <nick>\002 | %char%spam <nick> | \002%char%dr <nick>\002 | %char%b <nick>/<host> <timp> \[global\] <reason> | \002%char%ub <host>\002 \[global\] | %char%d <nr zile> <nick> / <host> <reason> | \002%char%bot <nick>/<host>\002 | %char%bw <nick>/<host> | \002%char%black <host> / <nick> <reason>\002 | %char%stick <nick> / <host> <timp> <reason> | \002%char%gag <nick>\002 | \%char%ungag <nick>/<host> | \002%char%banlist <user>/<global>\002." 
set black(say.en.banbossowner) "\002\[Commands\]\002: %char%k <nick> | \002%char%w <nick>\002 | %char%check <nick> | \002%char%sb <host> \[global\]\002 | %char%id <nick> | \002%char%n <nick>\002 | %char%spam <nick> | \002%char%dr <nick>\002 | %char%b <nick>/<host> <timp> \[global\] <reason> | \002%char%ub <host>\002 \[global\] | %char%d <nr zile> <nick> / <host> <reason> | \002%char%bot <nick>/<host>\002 | %char%bw <nick>/<host> | \002%char%black <host> / <nick> <reason>\002 | %char%stick <nick> / <host> <timp> <reason> | \002%char%gag <nick>\002 | %char%ungag <nick>/<host> | \002%char%banlist <user>/<global>\002."

set black(say.en.addadmin) "\002\[Commands\]\002: %char%add <level> <user>  | \002%char%adduser <level> <nick>\002 | %char%delacc <user> | \002%char%del <user>\002 | %char%addhost <user> <host> | \002%char%delhost <user> <host>\002 | %char%s <user> | \002%char%us <user>\002 | %char%auto (+/-)o <user> | \002%char%auto (+/-)v <user>\002."
set black(say.en.addmanager) "\002\[Commands\]\002: %char%add <level> <user> | \002%char%adduser <level> <nick>\002 | %char%delacc <user> | \002%char%del <user>\002 | %char%addhost <user> <host> | \0002%char%chuser <user> <newuser>\002| %char%s <user> | \002%char%us <user>\002 | \002%char%delhost <user> <host>\002 | %char%auto (+/-)o <user> | \002%char%auto (+/-)v <user>\002."
set black(say.en.addowner) "\002\[Commands\]\002: %char%add <level> <user> | \002%char%adduser <level> <nick>\002 | %char%delacc <user> | \002%char%del <user>\002 | %char%addhost <user> <host> | \002%char%chuser <user> <newuser>\002 | %char%s <user> | \002%char%us <user>\002 | \002%char%delhost <user> <host>\002 | %char%auto (+/-)o <user> \[-global\] | \002%char%auto (+/-)v <user> \[-global\]\002"
set black(say.en.addbossowner) "\002\[Commands\]\002: %char%add <level> <user> | \002%char%adduser <level> <nick>\002 | %char%delacc \[owner\] <user> | \002%char%del <user>\002 | %char%addhost <user> <host> | \002%char%chuser <user> <newuser>\002 | %char%s <user> | \002%char%us <user>\002 | \002%char%delhost <user> <host>\002 | %char%auto (+/-)o <user> \[-global\] | \002%char%auto (+/-)v <user> \[-global\]\002"

set black(say.en.howner) "\002\[Commands\]\002: %char%status | \002%char%uptime\002 | %char%away <text> | \002%char%silence on/off\002 | %char%jump <server> | \002%char%msg <nick/chan> <text>\002 | %char%broadcast <text> | \002%char%ignore <list> | <add> <host> <time> <reason> | <delete> <host>\002 | %char%chat | \002%char%login\002 | %char%channels | \002%char%find <user>/<host>\002."
set black(say.en.howner_1) "\002\[Private Commands\]\002: nick <newnick> | \002restart\002 | rehash | \002die\002 | save | \002suspend / unsuspend <channel>\002 | delchan <channel> <reason> | \002addchan <channel>\002."
set black(say.en.hcommand.1) "To view the \002Manual\002 of every command type \002%char%man <command> | %botnick% man <commad>\002"

#################################### top #########################################

set black(say.en.htop) "Use: \002%char%top <command>\002 to view the statistics for every ban command used by user. Commands which are available for TOP are: \002<dr>\002 | \002<b>\002 | \002<bw>\002 | \002<bot>\002 | \002<black>\002 | \002<spam>\002 | \002<stick>\002 | \002<n>\002| \002<i>\002 | \002<w>\002 | \002<k>\002 | \002<d>\002"
set black(say.en.htop_1) "Syntax: \002%char%activ <user> \[-reset\]\002 (Show activity/reset)"
set black(say.en.htop_2) "Syntax: \002%char%activ <user>\002 (show activity)"

#################################### chaninfo #####################################

set black(say.en.hchaninfo.1) "You got these categories for %chan% :"
set black(say.en.hchaninfo.2) "\002blacktools\002 | standard  | \002top\002 " 
set black(say.en.hchaninfo.3) "Category \002blacktools\002 contains : Internal protections of BlackTools script"
set black(say.en.hchaninfo.4) "Category \002standard\002 contains : Internal standard settings of eggdrop"
set black(say.en.hchaninfo.5) "Category \002top\002 contains : Activity of ban commands used by users "
set black(say.en.hchaninfo.6) "To select a category type : \002%char%h <category>\002 | %botnick% h <category>"
set black(say.en.hchaninfo.7) "top"

################################### blacktools ###################################

set black(say.en.hblacktools.1) "\002\[Protections\]\002: %msg%"
set black(say.en.hblacktools.2) "\002\[Optional\]\002: \002%char%secure <on> / <off>\002 (enable/disable all protections)"
set black(say.en.hblacktools.3) "To view the \002Manual\002 of every command type \002%char%man <protection> | %botnick% man <protection>\002"

#################################### standard ####################################

set black(say.en.hstandard.1) "Eggdrop internal settings are :"
set black(say.en.hstandard.2) "To modify the settings use this command :%char%set +flag ( ex : %char%set +dontkickops | %char%set flood-chan 0:0 )"
set black(say.en.hstandard.3) "\002Settings \[+ -\]:\002 %msg%"
set black(say.en.hstandard.4) "\002Main settings:\002 %msg%"
set black(say.en.hstandard.5) "Syntax: \002%char%set (+/-)<flag> ; <flag> <val>:<val> | %botnick% set (+/-)<flag> ; <flag> <val>:<val>\002"

################################### module #######################################

set black(say.en.hmodule.1) "Modules: %msg%"
set black(say.en.hmodule.3) "To view the \002Manual\002 of every command type \002%char%man <module> | %botnick% man <module>\002"


####################################### h ########################################

set black(say.en.h.1) "ACCESS LEVEL \002-= BOSS OWNER =-\002"
set black(say.en.h.2) "\002\[Commands\]\002: %char%h cmds | \002%char%h ban\002 | %char%h add | \002%char%h chaninfo\002 | %char%h module | \002%char%h owner\002 ."
set black(say.en.h.3) "ACCESS LEVEL \002-= OWNER =-\002"
set black(say.en.h.4) "\002\[Commands\]\002: %char%h cmds | \002%char%h ban\002 | %char%h add | \002%char%h chaninfo\002 | %char%h module | \002%char%h owner\002 ."
set black(say.en.h.5) "ACCESS LEVEL \002-= VOICE =-\002"
set black(say.en.h.6) "\002\[Commands\]\002: %char%h cmds | \002%char%h chaninfo\002 "
set black(say.en.h.7) "ACCESS LEVEL \002-= OP =-\002"
set black(say.en.h.8) "\002\[Commands\]\002: %char%h cmds | \002%char%h chaninfo\002 | %char%h ban"
set black(say.en.h.9) "ACCESS LEVEL \002-= SENIOR =-\002"
set black(say.en.h.10) "\002\[Commands\]\002: %char%h cmds | \002%char%h chaninfo\002 | %char%h ban"
set black(say.en.h.11) "ACCESS LEVEL \002-= ADMINISTRATOR =-\002"
set black(say.en.h.12) "\002\[Commands\]\002: %char%h cmds | \002%char%h chaninfo\002 | %char%h ban | \002%char%h add\002"
set black(say.en.h.13) "ACCESS LEVEL \002-= MANAGER =-\002"
set black(say.en.h.14) "\002\[Commands\]\002: %char%h cmds | \002%char%h ban\002 | %char%h add | \002%char%h chaninfo\002 | %char%h module ."
set black(say.en.h.15) "%msg%"
set black(say.en.h.16) "Please hold %msg.1% seconds before requesting another command as %char%\002%msg.2%\002. Thank You."

############################### GREETING #######################################

set black(say.en.greeting.1) "EN : Welcome in BlackToolS WORLD version \0022.4\002."
set black(say.en.greeting.2) "EN : Please define the next settings for you : \002Language\002 (you choose how the replies will be sent to you) | \002Output\002 ( you choose the method on how you want replies to be sent )"
set black(say.en.greeting.3) "EN : To start please type \002%char%myset lang <language>\002 ( \002RO\002 / \002EN\002 ) | \002%char%myset output <method>\002 ( \002CHAN\002 / \002NOTICE\002 )"
set black(say.en.greeting.4) "EN : I wish you a pleasent stay . To be able to see your commands again type \002%char%h\002 . Have Fun"
set black(say.en.greeting.5) "EN : Optional commands: \002%char%addhost <user> <host>\002 (adding yourself a host) | \002%char% chuser <user> <newuser>\002 (you change your name(handle))"

################################### man ########################################

set black(say.en.man.1) "Use: %char%man <text>"
set black(say.en.man.2) "Use: %botnick% man <text>"

#man

set black(say.en.man.3) "\[MAN\] \002man\002 is a command which allows to view users manual of protections,modules,commands"
set black(say.en.man.4) "\[MAN\] \002Syntax\002: \002%char%man <text> | %botnick% man <text>\002"

##################(EN) MODULES:	######################

#Topicrefresh

set black(say.en.man.287) "\[MAN\] \002Topicrefresh\002 is a module which helps maintains topic of %chan% by re-aplication of an interval of time"
set black(say.en.man.288) "\[MAN\] \002Enable/Disable Syntax\002: %char%set (+/-)topicrefresh | %botnick% set (+/-)topicrefresh"

#Count

set black(say.en.man.289) "\[MAN\] \002Count\002 is a module which will retain the number of people who join %chan% and will bring up a message with their join number"
set black(say.en.man.290) "\[MAN\] \002Enable/Disable Syntax\002: %char%count <on>/<off> | %botnick% count <on>/<off>"
set black(say.en.man.291) "\[MAN\] \002Other Syntaxes\002 : %char%count <display> (show count), <reset> (reset count)"
set black(say.en.man.292) "\[MAN\] \002Optional settings\002: count-message (creating a join message)"
set black(say.en.man.293) "\[MAN\] \002To set option use\002: %char%set <setting> <text>/<number> | %botnick% set <setting> <text>/<number>"
set black(say.en.man.294) "\[MAN\] \002Show setting syntax\002: \002%char%show <setting> | %botnick% show <setting>\002"

#XTools

set black(say.en.man.295) "\[MAN\] \002XtoolS\002 is a module which will give permission to eggdrop tp take Op, Voice, to do Unban, Invite from chanserv(X)"
set black(say.en.man.296) "\[MAN\] \002Enable/Disable Syntax\002: %char%set (+/-)xtools | %botnick% set (+/-)xtools"

#Badchan

set black(say.en.man.297) "\[MAN\] \002BadChan\002 is a module which will not let people who are on other these channels added to stay on %chan%"
set black(say.en.man.298) "\[MAN\] \002Enable/Disable Syntax\002: %char%badchan <on>/<off> | %botnick% badchan <on>/<off>"
set black(say.en.man.299) "\[MAN\] \002Add/Remove Syntax\002: %char%badchan <add> <#chan> \[-global\] \[reason\] | <del> <#chan> \[-global\] | <list> \[-global\]"
set black(say.en.man.300) "\[MAN\] \002Add/Remove Syntax\002: \002%char%badchan <add> <#chan> \[reason\] | <del> <#chan> | <list>\002"
set black(say.en.man.301) "\[MAN\] \002Other Syntaxes\002: %char%badchan <status> \[-global\] | <find> <#chan> \[-global\]"
set black(say.en.man.302) "\[MAN\] \002Other Syntax\002: \002%char%badchan <status> | <find> <#chan>\002"
set black(say.en.man.303) "\[MAN\] \002Optional settings\002: %char%badchan <set> reason <reason> (setting default reason) | <set> bantime <minutes> (setting default ban-time)"

#Anunt

set black(say.en.man.304) "\[MAN\] \002Anunt\002 is a module which will bring show announces(ads) on %chan% at a time"
set black(say.en.man.305) "\[MAN\] \002Enable/Disable Syntax\002: %char%anunt <on>/<off> | %botnick% anunt <on>/<off>"
set black(say.en.man.306) "\[MAN\] \002Add/List/Remove Syntax\002: %char%anunt <add> <message> / <list> / <del> <number>"
set black(say.en.man.307) "\[MAN\] To add more than 1 sentence in an add use %char%anunt add <add1>~<add2>.. and eggdrop will show the add as 2 different senteces"

#Limit

set black(say.en.man.308) "\[MAN\] \002Limit\002 is a module which will helps maintains the channel limit"
set black(say.en.man.309) "\[MAN\] \002Enable/Disable Syntax\002: %char%limit <on>/<off> < | %botnick% limit <on>/<off>"
set black(say.en.man.310) "\[MAN\] \002Optional setting\002: %char%limit set <number> (setting default limit number)"

#Topic

set black(say.en.man.311) "\[MAN\] \002Topic\002 is a module which will help save/add topics into a topic list of the channel.From that list can be set any topic already saved"
set black(say.en.man.312) "\[MAN\] \002Add/Remove Syntax\002: %char%topic <save> / <list> / <add> / <del> <number>"
set black(say.en.man.313) "\[MAN\] \002Set option Syntax\002: %char%topic set <number> (the number must be retrivied from the list)"
set black(say.en.man.313_1) "\[MAN\] \002Optional settings\002: %char%topic <lock>/<unlock>  (lock/unlock the topic)"

#CloneScan

set black(say.en.man.314) "\[MAN\] \002CloneScan\002 is a module which enabled will scan %chan% channel for clones"
set black(say.en.man.315) "\[MAN\] \002Enable/Disable Syntax\002: %char%set (+/-)clonescan | %botnick% set (+/-)clonescan"
set black(say.en.man.316) "\[MAN\] \002Optional settings\002: \002clonescan-action\002 (<message>/<ban>), \002clonescan-maxclone\002 (setting max. clone number), \002clonescan-bantime\002 (setting default ban-time), \002clonescan-banreason\002 (setting default ban reason)"
set black(say.en.man.317) "\[MAN\] \002Option settings Syntax\002: %char%set <setting> <text>/<numberr> | %botnick% set <setting> <text>/<number>"
set black(say.en.man.318) "\[MAN\] \002Show setting syntax\002: %char%show <setting> | %botnick% show <setting>"

#Seen

set black(say.en.man.319) "\[MAN\] \002Seen\002 is a module which enabled will save recordings of join/part/quit/netsplit/nickchange of users from the channel.It has a database for every channel"
set black(say.en.man.320) "\[MAN\] \002Enable/Disable Syntax\002: %char%set (+/-)seen | %botnick% set (+/-)seen"
set black(say.en.man.321) "\[MAN\] \002Optional setting\002: seen-method (<notice>/<privmsg>)"
set black(say.en.man.322) "\[MAN\] \002Optional settings Syntax\002: %char%set <setting> <text>/<number> | %botnick% set <setting> <text>/<number>"
set black(say.en.man.323) "\[MAN\] \002Show setting syntax\002: %char%show <setting> | %botnick% show <setting>"

#Greet

set black(say.en.man.324) "\[MAN\] \002Greet\002 is a module trough which people will receive messages on their join on channel."
set black(say.en.man.325) "\[MAN\] \002Enable/Disable Syntax\002: %char%greet <on>/<off> | %botnick% greet <on>/<off>"
set black(say.en.man.326) "\[MAN\] \002Set option Syntax\002: %char%greet set <number> (the number must be retrivied from the list)"
set black(say.en.man.327) "\[MAN\] \002Add/List/Remove Syntax\002: %char%greet <add> <message> / <list> / <del> <greet>"
set black(say.en.man.328) "\[MAN\] To add more than 1 sentence in an greet use %char%greet add <greet1>~<greet2>.. and eggdrop will show the greet as 2 different senteces."

#Leave

set black(say.en.man.329) "\[MAN\] \002Leave\002 is a modul trough which people will receive messages on their part from channel."
set black(say.en.man.330) "\[MAN\] \002Enable/Disable Syntax\002: %char%leave <on>/<off> | %botnick% leave <on>/<off>"
set black(say.en.man.331) "\[MAN\] \002Set option Syntax\002: %char%leave set <number> (the number must be retrivied from the list)"
set black(say.en.man.332) "\[MAN\] \002Add/Remove Syntax\002: %char%leave <add> <message> / <list> / <del> <message>"
set black(say.en.man.333) "\[MAN\] To add more than 1 sentence in an leave use %char%leave add <leave1>~<leave2>.. and eggdrop will show the leave as 2 different senteces."

#Idle

set black(say.en.man.334) "\[MAN\] \002Idle\002 is a module which enabled will not let the users with @/+v to have idle on channel"
set black(say.en.man.335) "\[MAN\] \002Enable/Disable Syntax\002: %char%idle <on>/<off> | %botnick% idle <on>/<off>"
set black(say.en.man.335_1) "\[MAN\] \002Set options Syntax\002: %char%set idleopmax <number> | %char%set idlevoicemax <number>"
set black(say.en.man.336) "\[MAN\] \002Optional settings Syntax\002: %char%idle add <nick> (add nickname to idle exceptlist), .idle <list> (list exceptions), .idle del <nick> (remove nickname from idle exceptlist)"
set black(say.en.man.336_1) "\[MAN\] \002Show setting syntax\002: %char%show <setting> | %botnick% show <setting>"

#ChanReport

set black(say.en.man.337) "\[MAN\] \002ChanReport\002 is a module which enabled will give the option for every channel to have a back-channel, in which eggdrop will say the bans given by him to the mainchannel"
set black(say.en.man.338) "\[MAN\] \002Enable/Disable Syntax\002: %char%set (+/-)chanreport | %botnick% set (+/-)chanreport"
set black(say.en.man.339) "\[MAN\] \002Set option Syntax\002: %char%set backchan <#channel> (backchannel set)"
set black(say.en.man.340) "\[MAN\] After the set of the backchannel you will be able to use all the ban commands from it and they will be applied on the mainchannel"

#TopWords

set black(say.en.man.341) "\[MAN\] \002TopWords\002 is a module which will record users activity on %chan% (number of written words)."
set black(say.en.man.342) "\[MAN\] \002Enable/Disable Syntax\002: %char%set (+/-)topwords | %botnick% set (+/-)topwords"
set black(say.en.man.343) "\[MAN\] \002Show setting syntax\002: %char%top words |  %char%top words erase (reset words top)"

#XBan

set black(say.en.man.344) "\[MAN\] \002XBan\002 is a module which enabled will make the eggdrop put a ban trough X as well for every ban he puts with the same ban-time and reason given."
set black(say.en.man.345) "\[MAN\] \002Enable/Disable Syntax\002: %char%set (+/-)xban | %botnick% set (+/-)xban"
set black(say.en.man.346) "\[MAN\] \002Optional settings Syntax\002: xbantime (set of X ban-time in hours), xbanlevel (set of X ban-level)"
set black(say.en.man.347) "\[MAN\] \002Set option Syntax\002: %char%set <setting> <number> | %botnick% set <setting> <number>"
set black(say.en.man.348) "\[MAN\] \002Show setting syntax\002: %char%show <setting> | %botnick% show <setting>"

#AntiTake

set black(say.en.man.349) "\[MAN\] \002Antitake\002 is a module which has 2 settings: First is for protect against those without access at eggdrop and do DEOP , and second is for those without access at eggdrop and do OP."
set black(say.en.man.350) "\[MAN\] \002Enable/Disable Syntax\002: %char%set (+/-)dontdeop | %botnick% set (+/-)dontdeop  (deop prevention), %char%set (+/-)dontop | %botnick% set (+/-)dontop (op prevention)"

#Private

set black(say.en.man.351) "\[MAN\] \002Private\002 is a module which enabled will not let those without access or those who arent in except list to join %chan%"
set black(say.en.man.352) "\[MAN\] \002Enable/Disable Syntax\002: %char%private <on>/<off> | eggy private <on>/<off>"
set black(say.en.man.353) "\[MAN\] \002Optional settings Syntax\002: %char%private <add> <name> <host> (adding exception), %char%private <list> (list exceptions), %char%private del <name> (remove exception)"
set black(say.en.man.353_1) "\[MAN\] \002Optional settings\002: \002private-reason\002 (setting default reason), \002private-bantime\002 (setting default ban-time)"
set black(say.en.man.353_2) "\[MAN\] \002Set option settings\002: \002%char%set <setare> <text>/<number> | %botnick% set <setare> <text>/<number>\002"
set black(say.en.man.353_3) "\[MAN\] \002Show setting syntax\002: \002%char%show <setare> | %botnick% show <setare>\002"

#AutoBroadCast

set black(say.en.man.354) "\[MAN\] \002AutoBroadCast\002 is a module which enabled will broadcast messages on all channels he is in at a time"
set black(say.en.man.355) "\[MAN\] \002Enable/Disable Syntax\002: %char%bt <on>/<off> | %botnick% bt <on>/<off>"
set black(say.en.man.356) "\[MAN\] \002Add/Remove Syntax\002: %char%bt <add> <message> | <list> | <del> <number>"
set black(say.en.man.357) "\[MAN\] \002Optional setting\002 Syntax\002: %char%set <chan> (+/-)silent (will not paste the broadcast message to channel)"

#AntiBotIdle

set black(say.en.man.358) "\[MAN\] \002AntiBotIdle\002 is a module which enabled will not let the eggdrop do IDLE."
set black(say.en.man.359) "\[MAN\] \002Enable/Disable Syntax\002: %char%botidle <on>/<off> | %botnick% botidle <on>/<off>"

#Language

set black(say.en.man.360) "\[MAN\] \002Language\002 is a module which will set the language for kick/ban reasons."
set black(say.en.man.361) "\[MAN\] \002Choose language setting\002: %char%set lang <language> (RO | EN)"

#BadWordAdd

set black(say.en.man.362) "\[MAN\] \002BadWordAdd\002 is a module trough which you can add bad words for AntiBadWord protection."
set black(say.en.man.363) "\[MAN\] \002Add/Remove Syntax\002: %char%badword <add> <* word *> | <list> | <del> <number>"

#AntiPubExcept

set black(say.en.man.364) "\[MAN\] \002AntiPubExcept\002 is a module trough wich you can add links/channels as exceptions from Antipub protection. Whoever will use these links/channels will not be banned."
set black(say.en.man.365) "\[MAN\] \002Add/Remove Syntax\002: %char%antipub <chan> <add> <*link*> / <#chan> | <list> | <del> <link> / <#chan>"

#TCL

set black(say.en.man.366) "\[MAN\] \002TCL\002 is a module with what you can load tcl scripts, list loaded scripts and see all scripts from your eggdrop scripts directory"
set black(say.en.man.367) "\[MAN\] \002Commands\002: %char%tcl <list> (see loaded scripts), %char%tcl <load> <name.tcl> (load a tcl script), %char%tcl <unload> <name.tcl> (unload a tcl script),  %char%tcl <all> (see all tcl scripts),  %char%tcl <info> <name.tcl> (information of tcl script)"

#Next

set black(say.en.man.368) "\[MAN\] \002Next\002 is a module used on help channels trough wich you can assist users who need your help."
set black(say.en.man.369) "\[MAN\] \002Enable/Disable Syntax\002: %char%set (+/-)next | %botnick% set (+/-)next"
set black(say.en.man.370) "\[MAN\] \002Commands\002: %char%next / %char%next list (show list), %char%helped <nick>, %char%noidle <nick>, %char%skip <nick>"
set black(say.en.man.371) "\[MAN\] \002Optional setting\002 Syntax\002: \002next-noidlreason\002 (setting default reason), \002noidle-bantime\002 (setting default ban-time), \002next-backchan\002 (backchannel set)"
set black(say.en.man.372) "\[MAN\] \002Set option Syntax\002: %char%set <setting> <text>/<number> | %botnick% set <setting> <text>/<number>"
set black(say.en.man.373) "\[MAN\] \002Show setting syntax\002: %char%show <setting> | %botnick% show <setting>"


#########################(EN) h cmds ##################### 

#h

set black(say.en.man.5) "\[MAN\] \002h\002 is the most important command from Blacktools. It allows to navigate trough the scripts menu options"
set black(say.en.man.6) "\[MAN\] \002Syntax\002: \002%char%h <category> | %botnick% h <category>\002"
set black(say.en.man.7) "\[MAN\] \002Show setting syntax\002: \002%char%h | %botnick% h\002"

#v

set black(say.en.man.8) "\[MAN\] \002v\002 is a command trough which you can give voice status (+) to users from channel."
set black(say.en.man.9) "\[MAN\] \002Syntax\002: %char%v <nick1> <nick2>.. | %botnick% v <nick1 <nick2>..."

#o

set black(say.en.man.10) "\[MAN\] \002o\002 is a command trough which you can give op status (@) to users from channel."
set black(say.en.man.11) "\[MAN\] \002Syntax\002: %char%o <nick1> <nick2>.. | %botnick% o <nick1 <nick2>..."

#userlist

set black(say.en.man.12) "\[MAN\] \002userlist\002 is a command trough which you can view the entire access list of users from %chan%."
set black(say.en.man.13) "\[MAN\] \002Syntax\002: %char%userlist <category> | %botnick% userlist <category>"
set black(say.en.man.14) "\[MAN\] List of \002<category>\002 is:\002autovoice\002 (users with autovoice), \002autoop\002 (users with autoop) \002online\002 (users with online access), \002protect\002, \002all\002, \002voice\002 , \002op\002 , \002senior\002 , \002admin\002 , \002manager\002"
set black(say.en.man.15) "\[MAN\] List of \002<category>\002 is: \002autovoice\002 (users with autovoice), \002autoop\002 (users with autoop) \002online\002 (users with online access), \002protect\002, \002all\002, \002voice\002 , \002op\002 , \002senior\002 , \002admin\002 , \002manager\002 , \002owner\002"

#version

set black(say.en.man.16) "\[MAN\] \002version\002 is a command trough which you can view script version of BlackTools."
set black(say.en.man.17) "\[MAN\] \002Syntax\002: %char%version | %botnick% version"

#info

set black(say.en.man.18) "\[MAN\] \002info\002 is a command trough which you can view informations about users / channels"
set black(say.en.man.19) "\[MAN\] \002Syntax\002: %char%info <user> / <chan> | %botnick% info <user> / <chan>"

#ping

set black(say.en.man.20) "\[MAN\] \002ping\002 is a command trough which you can find your own lag trough your eggdrop support."
set black(say.en.man.21) "\[MAN\] \002Syntax\002: %char%ping | %botnick% ping"

#act

set black(say.en.man.22) "\[MAN\] \002act\002 is a command trough which eggdrop will send a message to channel via /me (ACTION)"
set black(say.en.man.23) "\[MAN\] \002Syntax\002: %char%act <text> | %botnick% act <text>"

#addinfo

set black(say.en.man.424) "\[MAN\] \002addinfo\002 is a command trough which you can add yourself a personalized message. This will be available in .info command but it will be said by the eggdrop when you join channel."
set black(say.en.man.425) "\[MAN\] \002Syntax\002: %char%addinfo <text> | %botnick% addinfo <text>"
set black(say.en.man.426) "\[MAN\] \002Disable Syntax\002: %char%addinfo <off>"

#t

set black(say.en.man.24) "\[MAN\] \002t\002 is a command trough which your eggdrop will set a topic with your desired text."
set black(say.en.man.25) "\[MAN\] \002Syntax\002: %char%t <text> | %botnick% t <text>"
set black(say.en.man.26) "\[MAN\] To have your nick in the topic text please use: %char%set +showhandle"

#l

set black(say.en.man.27) "\[MAN\] \002l\002 is a command trough which your eggdrop will apply (+m) mode for <t> seconds on %chan%"
set black(say.en.man.28) "\[MAN\] \002Syntax\002: %char%l <seconds> | %botnick% l <seconds>"

#ul

set black(say.en.man.29) "\[MAN\] \002ul\002 is a command trough which your eggdrop will remove (+m) mode applied by .l command"
set black(say.en.man.30) "\[MAN\] \002Syntax\002: %char%ul | %botnick% ul"

#cycle

set black(say.en.man.31) "\[MAN\] \002cycle\002 is a command trough which your eggdrop will do a /hop on %chan% with a specified reason"
set black(say.en.man.32) "\[MAN\] \002Syntax\002: %char%cycle <reason> | %botnick% cycle <reason>"

#mode

set black(say.en.man.33) "\[MAN\] \002mode\002 is a command trough which your eggdrop will apply a mode on %chan%"
set black(say.en.man.34) "\[MAN\] \002Syntax\002: %char%mode +<mode> | %botnick% mode +<mode>"

#i

set black(say.en.man.35) "\[MAN\] \002i\002 is a command trough which your eggdrop will invite one or more users on %chan%"
set black(say.en.man.36) "\[MAN\] \002Syntax\002: %char%i <nick1> <nick2>.. | %botnick% i <nick1> <nick2> .."

#vers

set black(say.en.man.37) "\[MAN\] \002vers\002 is a command trough which your eggdrop will find out what version of script a user is using"
set black(say.en.man.38) "\[MAN\] \002Syntax\002: %char%vers <nick> | %botnick% vers <nick>"

#whois

set black(say.en.man.39) "\[MAN\] \002whois\002 is a command trough which your eggdrop will reply informations as (host,realname,channels) about a nickname"
set black(say.en.man.40) "\[MAN\] \002Syntax\002: %char%whois <nick> | %botnick% whois <nick>"

#cc

set black(say.en.man.41) "\[MAN\] \002cc\002 is a command trough which your eggdrop will reply the date when a channel was created."
set black(say.en.man.42) "\[MAN\] \002Syntax\002: %char%cc <#channel> | %botnick% cc <#channel>"

#time

set black(say.en.man.43) "\[MAN\] \002time\002 is a command trough which you can find the current time"
set black(say.en.man.44) "\[MAN\] \002Syntax\002: %char%time | %botnick% time"

#clear

set black(say.en.man.45) "\[MAN\] \002clear\002 is a command trough which you can use to reset some options"
set black(say.en.man.46) "\[MAN\] \002Syntax\002: %char%clear <option> | %botnick% clear <option>"
set black(say.en.man.47) "\[MAN\] List of \002<option>\002 is: \002<userlist>\002 (removing all accesses from channel), \002<banlist>\002 (removing all bans from channel), \002<activ>\002 (reset users activity)"

#purge

set black(say.en.man.422) "\[MAN\] \002purge\002 is a command trough which it can delete a channel from eggdrops channel-list by Owner or that channel Manager."
set black(say.en.man.423) "\[MAN\] \002Syntax\002: %char%purge <chan> <reason> | %botnick% purge <chan> <reason>"

#set

set black(say.en.man.378) "\[MAN\] \002set\002 is a command trough which you can set any options of eggdrop (flags)"
set black(say.en.man.379) "\[MAN\] \002Syntax\002: %char%set (+/-)flag ; <flag> <option> | %botnick% set (+/-)flag ; <flag> <option>"
set black(say.en.man.380) "\[MAN\] \002Optional settings Syntax\002: %char%set global (+/-)flag ; <flag> <option> (set for all channels), %char%set chanmode +k <key> (setting key for channel)"
set black(say.en.man.381) "\[MAN\] \002Optional setting\002: \002%char%set chanmode +k <key>\002 (set channel key)"

#PRIVATE op

set black(say.en.man.48) "\[MAN\] \002op\002 is a command given in PRIVATE to request op on a channel."
set black(say.en.man.49) "\[MAN\] \002Syntax\002: op <#chan> <nick>"

#PRIVATE voice

set black(say.en.man.50) "\[MAN\] \002voice\002 is a command given in PRIVATE to request voice on a channel."
set black(say.en.man.51) "\[MAN\] \002Syntax\002: voice <#chan> <nick>"

#PRIVATE deop

set black(say.en.man.52) "\[MAN\] \002deop\002 is a command given in PRIVATE to request deop on a channel."
set black(say.en.man.53) "\[MAN\] \002Syntax\002: deop <#chan> <nick>"

#PRIVATE devoice

set black(say.en.man.54) "\[MAN\] \002devoice\002 is a command given in PRIVATE to request devoice on a channel."
set black(say.en.man.55) "\[MAN\] \002Syntax\002: devoice <#chan> <nick>"

#invite

set black(say.en.man.427) "\[MAN\] \002invite\002 is a command given in PRIVATE to request invite to some channel."
set black(say.en.man.428) "\[MAN\] \002Syntax\002: invite <#chan> <nick>"

#################(EN) h ban ###########################

#k

set black(say.en.man.56) "\[MAN\] \002k\002 is a command trough which a user or more will receive kick with a given reason"
set black(say.en.man.57) "\[MAN\] \002Syntax\002: \002%char%k <nick1>,<nick2>.. | %botnick% k <nick1>,<nick2>..\002"
set black(say.en.man.58) "\[MAN\] \002Optional settings\002: \002k-reason\002 (default reason set)"
set black(say.en.man.59) "\[MAN\] \002Set Option Syntax\002: \002%char%set <setting> <text> | %botnick% set <setting> <text>\002"
set black(say.en.man.60) "\[MAN\] \002View options settings\002: \002%char%show <setting> | %botnick% show <setting>\002"

#w

set black(say.en.man.61) "\[MAN\] \002w\002 is a command trough which a user or more will receive a warning trough a kick with a given reason"
set black(say.en.man.62) "\[MAN\] \002Syntax\002: \002%char%w <nick1>,<nick2>..| %botnick% w <nick1>,<nick2>..\002"
set black(say.en.man.63) "\[MAN\] \002Optional settings\002: \002w-reason\002 (default reason set)"
set black(say.en.man.64) "\[MAN\] \002Set Option Syntax\002: \002%char%set <setting> <text> | %botnick% set <setting> <text>\002"
set black(say.en.man.65) "\[MAN\] \002View options settings\002: \002%char%show <setting> | %botnick% show <setting>\002"

#check

set black(say.en.man.66) "\[MAN\] \002check\002 is a command trough which a user is verified with a private message if is virused or making advertise"
set black(say.en.man.67) "\[MAN\] \002Syntax\002: \002%char%check <nick> | %botnick% check <nick>\002"
set black(say.en.man.68) "\[MAN\] \002Optional settings\002: \002check-message\002 (set command check message)"
set black(say.en.man.69) "\[MAN\] \002Set Option Syntax\002: \002%char%set <setting> <text> | %botnick% set <setting> <text>\002"
set black(say.en.man.70) "\[MAN\] \002View options settings\002: \002%char%show <setting> | %botnick% show <setting>\002"

#sb

set black(say.en.man.71) "\[MAN\] \002sb\002 is a command trough which it can be see details about a given ban"
set black(say.en.man.72) "\[MAN\] \002Syntax\002: \002%char%sb <host>/<nick> | %botnick% sb <host>/<nick>\002"
set black(say.en.man.73) "\[MAN\] \002Syntax\002: \002%char%sb <host>/<nick> \[global\] | %botnick% sb <host>/<nick> \[global\]\002"
set black(say.en.man.74) "\[MAN\] In case that \002<nick>\002 is not on %chan% eggdrop will \002WHOIS\002 it and check if it has ban on \002ident/host/nick\002 showing informations about it."

#id

set black(say.en.man.75) "\[MAN\] \002id\002 is a command trough which it can be set a ban on one or more IDENTs. If a user is specified, eggdrop will automatically take his ident."
set black(say.en.man.76) "\[MAN\] \002Syntax\002: \002%char%id <nick1>,<nick2>../<ident>,<ident2>.. | %botnick% id <nick>,<nick2>../<ident>,<ident2>..\002"
set black(say.en.man.77) "\[MAN\] \002Optional settings\002: \002id-reason\002 (default reason set), \002id-bantime\002 (default ban-time in minutes)"
set black(say.en.man.78) "\[MAN\] \002Set Option Syntax\002: \002%char%set <setting> <text>/<number> | %botnick% set <setting> <text>/<number>\002"
set black(say.en.man.79) "\[MAN\] \002View options settings\002: \002%char%show <setting> | %botnick% show <setting>\002"

#n

set black(say.en.man.80) "\[MAN\] \002n\002 is a command trough which it can be set a ban on one or more NICKNAMES."
set black(say.en.man.81) "\[MAN\] \002Syntax\002: \002%char%n <nick1>,<nick2> .. | <botnick> <nick1>,<nick2>..\002"
set black(say.en.man.82) "\[MAN\] \002Optional settings\002: \002n-reason\002 (default reason set), \002n-bantime\002 (default ban-time in minutes)"
set black(say.en.man.83) "\[MAN\] \002Set Option Syntax\002: \002%char%set <setting> <text>/<number> | %botnick% set <setting> <text>/<number>\002"
set black(say.en.man.84) "\[MAN\] \002View options settings\002: \002%char%show <setting> | %botnick% show <setting>\002"

#spam

set black(say.en.man.85) "\[MAN\] \002spam\002 is a command trough which a user or more will receive ban with a default spam reason"
set black(say.en.man.86) "\[MAN\] \002Syntax\002: \002%char%spam <nick1>,<nick2>/<host1>,<host2> | %botnick% spam <nick1>,<nick2>/<host1>,<host2>\002"
set black(say.en.man.88) "\[MAN\] \002Optional settings\002: \002spam-reason\002 (default reason set), \002spam-bantime\002 (default ban-time in minutes)"
set black(say.en.man.89) "\[MAN\] \002Set Option Syntax\002: \002%char%set <setting> <text>/<number> | %botnick% set <setting> <text>/<number>\002"
set black(say.en.man.90) "\[MAN\] \002View options settings\002: \002%char%show <setting> | %botnick% show <setting>\002"

#dr

set black(say.en.man.91) "\[MAN\] \002dr\002 is a command trough which a user or more will receive ban with a default drone reason"
set black(say.en.man.92) "\[MAN\] \002Syntax\002: \002%char%dr <nick1>,<nick2>/<host1>,<host2> | %botnick% dr <nick1>,<nick2>/<host1>,<host2>\002"
set black(say.en.man.94) "\[MAN\] \002Optional settings\002: \002dr-reason\002 (default reason set), \002dr-bantime\002 (default ban-time in minutes)"
set black(say.en.man.95) "\[MAN\] \002Set Option Syntax\002: \002%char%set <setting> <text>/<number> | %botnick% set <setting> <text>/<number>\002"
set black(say.en.man.96) "\[MAN\] \002View options settings\002: \002%char%show <setting> | %botnick% show <setting>\002"

#b

set black(say.en.man.97) "\[MAN\] \002b\002 is a command trough which a user or more will receive ban with a given reason and given ban-time"
set black(say.en.man.98) "\[MAN\] \002Syntax\002: \002%char%b <nick1>,<nick2>/<host1>,<host2> <time> <reason> | %botnick% b <nick1>,<nick2>/<host1>,<host2> <time> <reason>\002"
set black(say.en.man.99) "\[MAN\] \002Syntax\002: \002%char%b <nick1>,<nick2>/<host1>,<host2> <time> \[global\] <reason> | %botnick% b <nick1>,<nick2>/<host1>,<host2> <time> \[global\] <reason>\002"
set black(say.en.man.101) "\[MAN\] \002Optional settings\002: \002b-reason\002 (default reason set), \002b-bantime\002 (default ban-time in minutes)"
set black(say.en.man.102) "\[MAN\] \002Set Option Syntax\002: \002%char%set <setting> <text>/<number> | %botnick% set <setting> <text>/<number>\002"
set black(say.en.man.103) "\[MAN\] \002View options settings\002: \002%char%show <setting> | %botnick% show <setting>\002"

#ub

set black(say.en.man.104) "\[MAN\] \002ub\002 is a command trough which you can remove an added ban"
set black(say.en.man.105) "\[MAN\] \002Syntax\002: \002%char%ub <nick>/<host> | %botnick% ub <nick>/<host>\002"
set black(say.en.man.106) "\[MAN\] \002Syntax\002: \002%char%ub <nick>/<host> \[global\] | %botnick% ub <nick>/<host> \[global\]\002"
set black(say.en.man.107) "\[MAN\] In case that \002<nick>\002 is not on %chan% eggdrop will \002WHOIS\002 it and check if has ban on \002ident/host/nick\002 and will unban it."

#d

set black(say.en.man.108) "\[MAN\] \002d\002 is a command trough which a user or more will receive ban on a time interval expressed in days"
set black(say.en.man.109) "\[MAN\] \002Syntax\002: \002%char%d <nr zile> <nick> / <host> <reason> | %botnick%d <nr zile> <nick> / <host> <reason>\002"
set black(say.en.man.111) "\[MAN\] \002Optional settings\002: \002d-reason\002 (default reason set), \002d-bantime\002 (default ban-time in days)"
set black(say.en.man.112) "\[MAN\] \002Set Option Syntax\002: \002%char%set <setting> <text>/<number> | %botnick% set <setting> <text>/<number>\002"
set black(say.en.man.113) "\[MAN\] \002View options settings\002: \002%char%show <setting> | %botnick% show <setting>\002"

#bot


set black(say.en.man.114) "\[MAN\] \002bot\002 is a command trough which a user or more will receive ban with a given reason as bot(mech)"
set black(say.en.man.115) "\[MAN\] \002Syntax\002: \002%char%bot <nick1>,<nick2>/<host1>,<host2> | %botnick% bot <nick1>,<nick2>/<host1>,<host2>\002"
set black(say.en.man.117) "\[MAN\] \002Optional settings\002: \002bot-reason\002 (default reason set), \002bot-bantime\002 (default ban-time in minutes)"
set black(say.en.man.118) "\[MAN\] \002Set Option Syntax\002: \002%char%set <setting> <text>/<number> | %botnick% set <setting> <text>/<number>\002"
set black(say.en.man.119) "\[MAN\] \002View options settings\002: \002%char%show <setting> | %botnick% show <setting>\002"

#bw

set black(say.en.man.120) "\[MAN\] \002bw\002 is a command trough which a user or more will receive ban with a default forbidden word said"
set black(say.en.man.121) "\[MAN\] \002Syntax\002: \002%char%bw <nick1>,<nick2>/<host1>,<host2> | %botnick% bw <nick1>,<nick2>/<host1>,<host2>\002"
set black(say.en.man.123) "\[MAN\] \002Optional settings\002: \002bw-reason\002 (default reason set), \002bw-bantime\002 (default ban-time in minutes)"
set black(say.en.man.124) "\[MAN\] \002Set Option Syntax\002: \002%char%set <setting> <text>/<number> | %botnick% set <setting> <text>/<number>\002"
set black(say.en.man.125) "\[MAN\] \002View options settings\002: \002%char%show <setting> | %botnick% show <setting>\002"

#black

set black(say.en.man.126) "\[MAN\] \002black\002 is a command trough which a user or more will receive ban for UNLIMITED time"
set black(say.en.man.127) "\[MAN\] \002Syntax\002: \002%char%black <nick1>,<nick2>/<host1>,<host2> <reason> | %botnick% black <nick1>,<nick2>/<host1>,<host2> <reason>\0002"
set black(say.en.man.129) "\[MAN\] \002Optional settings\002: \002black-reason\002 (default reason set)"
set black(say.en.man.130) "\[MAN\] \002Set Option Syntax\002: \002%char%set <setting> <text> | %botnick% set <setting> <text>\002"
set black(say.en.man.131) "\[MAN\] \002View options settings\002: \002%char%show <setting> | %botnick% show <setting>\002"

#stick 

set black(say.en.man.132) "\[MAN\] \002stick\002 is a command trough which a user or more will receive ban with given reason and give ban-time but with a 'sticky' character (it will be mentained in channel banlist)"
set black(say.en.man.133) "\[MAN\] \002Syntax\002: \002%char%stick <nick> / <host> <time> <reason> | %botnick% stick <nick> / <host> <time> <reason>\002"
set black(say.en.man.134) "\[MAN\] \002Optional settings\002: \002stick-reason\002 (default reason set), \002stick-bantime\002 (default ban-time in minutes)"
set black(say.en.man.135) "\[MAN\] \002Set Option Syntax\002: \002%char%set <setting> <text>/<number> | %botnick% set <setting> <text>/<number>\002"
set black(say.en.man.136) "\[MAN\] \002View options settings\002: \002%char%show <setting> | %botnick% show <setting>\002"

#gag

set black(say.en.man.137) "\[MAN\] \002gag\002 is a command trough which a user can be silenced (cannot write on %chan%) for a period of time."
set black(say.en.man.138) "\[MAN\] \002Syntax\002: \002%char%gag <nick> <time> <reason> | %botnick% gag <nick> <time> <reason>\002. For gag list type: \002%char%gag -list | %botnick% gag -list\002"
set black(say.en.man.139) "\[MAN\] \002Optional settings\002: \002gag-reason\002 (default reason set), \002gag-time\002 (default time set)"
set black(say.en.man.140) "\[MAN\] \002Set Option Syntax\002: \002%char%set <setting> <text> | %botnick% set <setting> <text>\002"
set black(say.en.man.141) "\[MAN\] \002View options settings\002: \002%char%show <setting> | %botnick% show <setting>\002"

#ungag

set black(say.en.man.159) "\[MAN\] \002ungag\002 is a command trough which it can be removed an added 'gag' command"
set black(say.en.man.160) "\[MAN\] \002Syntax\002: \002%char%ungag <nick>/<host> | %botnick% ungag <nick>/<host>\002"

#banlist

set black(say.en.man.161) "\[MAN\] \002banlist\002 is a command trough which it can be viewed bans of %chan%"
set black(say.en.man.162) "\[MAN\] \002Syntax\002: \002%char%banlist <user>/<-all> | %botnick% banlist <user>/<-all>\002"
set black(say.en.man.163) "\[MAN\] \002Syntax\002: \002%char%banlist <user>/<-all>/<global> | %botnick% banlist <user>/<-all>/<global>\002"

##################(EN) h add ################################

#add

set black(say.en.man.142) "\[MAN\] \002add\002 is a command trough which you can give access to one user or more. As user it uses X username, and his host will automatically be added to : *!*@%user%.users.undernet.org"
set black(say.en.man.143) "\[MAN\] \002Syntax\002: \002%char%add <level> <user1> <user2>..\002 | %botnick% \002add <level> <user1> <user2>..\002"
set black(say.en.man.144) "\[MAN\] Available \002<levels>\002 are: \002protect\002, \002voice\002, \002op\002, \002senior\002, \002admin\002, \002manager\002, \002owner\002."
set black(say.en.man.145) "\[MAN\] Available \002<levels>\002 are: \002protect\002, \002voice\002, \002op\002, \002senior\002, \002admin\002, \002manager\002."
set black(say.en.man.146) "\[MAN\] Available \002<levels>\002 are: \002protect\002, \002voice\002, \002op\002, \002senior\002, \002admin\002."
set black(say.en.man.147) "\[MAN\] Available \002<levels>\002 are: \002protect\002, \002voice\002, \002op\002, \002senior\002."

#adduser

set black(say.en.man.148) "\[MAN\] \002adduser\002 is a command trough which you can give access to one user or more. As user it uses NICKNAME , and his host will automatically be added to his current one which is at that time connected on IRC."
set black(say.en.man.149) "\[MAN\] \002Syntax\002: \002%char%adduser <level> <nick1> <nick2>..\002 | %botnick% \002adduser <level> <nick1> <nick2>..\002"
set black(say.en.man.150) "\[MAN\] Available \002<levels>\002 are: \002protect\002, \002voice\002, \002op\002, \002senior\002, \002admin\002, \002manager\002, \002owner\002."
set black(say.en.man.151) "\[MAN\] Available \002<levels>\002 are: \002protect\002, \002voice\002, \002op\002, \002senior\002, \002admin\002, \002manager\002."
set black(say.en.man.152) "\[MAN\] Available \002<levels>\002 are: \002protect\002, \002voice\002, \002op\002, \002senior\002, \002admin\002."
set black(say.en.man.153) "\[MAN\] Available \002<levels>\002 are: \002protect\002, \002voice\002, \002op\002, \002senior\002."

#delacc

set black(say.en.man.154) "\[MAN\] \002delacc\002 is a command trough which you can remove the access of one or more users from %chan%."
set black(say.en.man.155) "\[MAN\] \002Syntax\002 1: \002%char%delacc <user1> <user2>..\002 | %botnick% \002delacc <user1> <user2>..\002"
set black(say.en.man.156) "\[MAN\] \002Syntax\002 2: \002%char%delacc owner <user1> <user2>\002 | %botnick% \002delacc owner <user1> <user2>\002 (remove global owner access)"

#del

set black(say.en.man.157) "\[MAN\] \002del\002 is a command trough which you can remove one or more users from eggdrop database"
set black(say.en.man.158) "\[MAN\] \002Syntax\002: \002%char%del <user1> <user2>..\002 | %botnick% \002del <user1> <user2>..\002"

#addhost

set black(say.en.man.164) "\[MAN\] \002addhost\002 is a command trough which it can be added a host to a <user>"
set black(say.en.man.165) "\[MAN\] \002Syntax\002: \002%char%addhost <user> <host>\002 | %botnick% \002addhost <user> <host>\002"

#chuser

set black(say.en.man.168) "\[MAN\] \002chuser\002 is a command trough which you can change the <handle> (name) of a <user> in <newuser>"
set black(say.en.man.169) "\[MAN\] \002Syntax\002: \002%char%chuser <user> <newuser>\002 | %botnick% \002chuser <user> <newuser>\002"

#s

set black(say.en.man.170) "\[MAN\] \002s\002 is a command trough which it can be suspended a <user> access on %chan%"
set black(say.en.man.171) "\[MAN\] \002Syntax\002: \002%char%s <user>\002 | %botnick% \002s <user>\002"

#us

set black(say.en.man.172) "\[MAN\] \002us\002 is a command trough which it can be removed a suspension for <user> access on %chan%"
set black(say.en.man.173) "\[MAN\] \002Syntax\002: \002%char%us <user>\002 | %botnick% \002us <user>\002"

#delhost

set black(say.en.man.166) "\[MAN\] \002delhost\002 is a command trough which it can be removed a host from a <user>"
set black(say.en.man.167) "\[MAN\] \002Syntax\002: \002%char%delhost <user> <host>\002 | %botnick% \002delhost <user> <host>\002"

#auto

set black(say.en.man.174) "\[MAN\] \002auto\002 is a command trough which it can be added an autoop/autovoice to <user>"
set black(say.en.man.175) "\[MAN\] \002Syntax\002 1: \002%char%auto (+/-)v <user> | %botnick% auto (+/-)v <user>\002 (adding autovoice)"
set black(say.en.man.176) "\[MAN\] \002Syntax\002 2: \002%char%auto (+/-)o <user> | %botnick% auto (+/-)o <user>\002 (adding autoop)"
set black(say.en.man.177) "\[MAN\] \002Syntax\002 1: \002%char%auto (+/-)v <user> \[-global\] | %botnick% auto (+/-)v <user> \[-global\]\002 (adding autovoice)"
set black(say.en.man.178) "\[MAN\] \002Syntax\002 2: \002%char%auto (+/-)o <user> \[-global\] | %botnick% auto (+/-)o <user> \[-global\]\002 (adding autoop)"

##########################(EN) h blacktools ################

#antipub

set black(say.en.man.179) "\[MAN\] \002antipub\002 is a protection which helps dealing against those users who make advertising by *#* or by *www.*"
set black(say.en.man.180) "\[MAN\] \002Enable/Disable Syntax\002: %char%set (+/-)antipub | %botnick% set (+/-)antipub"
set black(say.en.man.181) "\[MAN\] \002Optional setting Syntax\002: \002antipub-reason\002 (setting default reason), \002antipub-bantime\002 (setting default ban-time in minutes)"
set black(say.en.man.182) "\[MAN\] \002Set option Syntax\002: %char%set <setting> <text>/<number> | %botnick% set <setting> <text>/<number>"
set black(say.en.man.183) "\[MAN\] \002Show settings Syntax\002: %char%show <setting> | %botnick% show <setting>"

#antinotice

set black(say.en.man.184) "\[MAN\] \002antinotice\002 is a protection which helps dealing against those users who give 'NOTICE' on %chan%"
set black(say.en.man.185) "\[MAN\] \002Enable/Disable Syntax\002: %char%set (+/-)antinotice | %botnick% set (+/-)antinotice"
set black(say.en.man.186) "\[MAN\] \002Optional settings Syntax\002: \002antinotice-reason\002 (setting default reason), \002antinotice-bantime\002 (setting default ban-time in minutes)"
set black(say.en.man.187) "\[MAN\] \002Set option Syntax\002: %char%set <setting> <text>/<number> | %botnick% set <setting> <text>/<number>"
set black(say.en.man.188) "\[MAN\] \002Show settings Syntax\002: %char%show <setting> | %botnick% show <setting>"

#antictcp

set black(say.en.man.189) "\[MAN\] \002antictcp\002 is a protection which helps dealing against those users who give actions as 'CTCP' on %chan%"
set black(say.en.man.190) "\[MAN\] \002Enable/Disable Syntax\002: %char%set (+/-)antictcp | %botnick% set (+/-)antictcp"
set black(say.en.man.191) "\[MAN\] \002Optional settings Syntax\002: \002antictcp-reason\002 (setting default reason), \002antictcp-bantime\002 (setting default ban-time in minutes)"
set black(say.en.man.192) "\[MAN\] \002Set option Syntax\002: %char%set <setting> <text>/<number> | %botnick% set <setting> <text>/<number>"
set black(say.en.man.193) "\[MAN\] \002Show settings Syntax\002: %char%show <setting> | %botnick% show <setting>"

#antibadword

set black(say.en.man.194) "\[MAN\] \002antibadword\002 is a protection which helps dealing against those users who use *forbidden* words on %chan%"
set black(say.en.man.195) "\[MAN\] \002Enable/Disable Syntax\002: %char%set (+/-)antibadword | %botnick% set (+/-)antibadword"
set black(say.en.man.196) "\[MAN\] \002Optional settings Syntax\002: \002antibadword-reason\002 (setting default reason), \002antibadword-bantime\002 (setting default ban-time in minutes)"
set black(say.en.man.197) "\[MAN\] \002Set option Syntax\002: %char%set <setting> <text>/<number> | %botnick% set <setting> <text>/<number>"
set black(say.en.man.198) "\[MAN\] \002Show settings Syntax\002: %char%show <setting> | %botnick% show <setting>"

#antilongtext

set black(say.en.man.199) "\[MAN\] \002antilongtext\002 is a protection which helps dealing against those users who write too many words in one line on %chan%"
set black(say.en.man.200) "\[MAN\] \002Enable/Disable Syntax\002: %char%set (+/-)antilongtext | %botnick% set (+/-)antilongtext"
set black(say.en.man.201) "\[MAN\] \002Optional settings Syntax\002: \002antilongtext-reason\002 (setting default reason), \002antilongtext-bantime\002 (setting default ban-time in minutes)"
set black(say.en.man.202) "\[MAN\] \002Set option Syntax\002: %char%set <setting> <text>/<number> | %botnick% set <setting> <text>/<number>"
set black(say.en.man.203) "\[MAN\] \002Show settings Syntax\002: %char%show <setting> | %botnick% show <setting>"

#badquitpart

set black(say.en.man.204) "\[MAN\] \002badquitpart\002 is a protection which helps dealing against those users who use *forbidden* words on their leave from %chan%"
set black(say.en.man.205) "\[MAN\] \002Enable/Disable Syntax\002: %char%set (+/-)badquitpart | %botnick% set (+/-)badquitpart"
set black(say.en.man.206) "\[MAN\] \002Optional settings Syntax\002: \002antibadquitpart-reason\002 (setting default reason), \002antibadquitpart-bantime\002 (setting default ban-time in minutes)"
set black(say.en.man.207) "\[MAN\] \002Set option Syntax\002: %char%set <setting> <text>/<number> | %botnick% set <setting> <text>/<number>"
set black(say.en.man.208) "\[MAN\] \002Show settings Syntax\002: %char%show <setting> | %botnick% show <setting>"

#antijoinpart

set black(say.en.man.209) "\[MAN\] \002antijoinpart\002 is a protection which helps dealing against those users who join and leave too fast from %chan%"
set black(say.en.man.210) "\[MAN\] \002Enable/Disable Syntax\002: %char%set (+/-)antijoinpart | %botnick% set (+/-)antijoinpart"
set black(say.en.man.211) "\[MAN\] \002Optional settings Syntax\002: \002antijoinpart-reason\002 (setting default reason), \002antijoinpart-bantime\002 (setting default ban-time in minutes)"
set black(say.en.man.212) "\[MAN\] \002Set option Syntax\002: %char%set <setting> <text>/<number> | %botnick% set <setting> <text>/<number>"
set black(say.en.man.213) "\[MAN\] \002Show settings Syntax\002: %char%show <setting> | %botnick% show <setting>"

#antispam

set black(say.en.man.214) "\[MAN\] \002antispam\002 is a protection which helps dealing against those users who do spam trough messages sent to eggdrop containing '#' or '*www.*'."
set black(say.en.man.215) "\[MAN\] \002Enable/Disable Syntax\002: %char%set (+/-)antispam | %botnick% set (+/-)antispam"
set black(say.en.man.216) "\[MAN\] \002Optional settings Syntax\002: \002antispam-reason\002 (setting default reason), \002antispam-bantime\002 (setting default ban-time in minutes), antispam-message (setting default message onjoin)"
set black(say.en.man.217) "\[MAN\] \002Set option Syntax\002: %char%set <setting> <text>/<number> | %botnick% set <setting> <text>/<number>"
set black(say.en.man.218) "\[MAN\] \002Show settings Syntax\002: %char%show <setting> | %botnick% show <setting>"

#antirepeat

set black(say.en.man.219) "\[MAN\] \002antirepeat\002 is a protection which helps dealing against those users who repeat to much on %chan%."
set black(say.en.man.220) "\[MAN\] \002Enable/Disable Syntax\002: %char%set (+/-)antirepeat | %botnick% set (+/-)antirepeat"
set black(say.en.man.221) "\[MAN\] \002Optional settings Syntax\002: \002antirepeat-reason\002 (setting default reason), \002antirepeat-bantime\002 (setting default ban-time in minutes), antirepeat-setting (<repeats>:<seconds>)"
set black(say.en.man.222) "\[MAN\] \002Set option Syntax\002: %char%set <setting> <text>/<number> | %botnick% set <setting> <text>/<number>"
set black(say.en.man.223) "\[MAN\] \002Show settings Syntax\002: %char%show <setting> | %botnick% show <setting>"

#anticolor

set black(say.en.man.224) "\[MAN\] \002anticolor\002 is a protection which helps dealing against those users who use colours on %chan%"
set black(say.en.man.225) "\[MAN\] \002Enable/Disable Syntax\002: %char%set (+/-)anticolor | %botnick% set (+/-)anticolor"
set black(say.en.man.226) "\[MAN\] \002Optional settings Syntax\002: \002anticolor-reason\002 (setting default reason), \002anticolor-bantime\002 (setting default ban-time in minutes)"
set black(say.en.man.227) "\[MAN\] \002Set option Syntax\002: %char%set <setting> <text>/<number> | %botnick% set <setting> <text>/<number>"
set black(say.en.man.228) "\[MAN\] \002Show settings Syntax\002: %char%show <setting> | %botnick% show <setting>"

#antibold

set black(say.en.man.229) "\[MAN\] \002anticolor\002 is a protection which helps dealing against those users who use BOLD on %chan%"
set black(say.en.man.230) "\[MAN\] \002Enable/Disable Syntax\002: %char%set (+/-)antibold | %botnick% set (+/-)antibold"
set black(say.en.man.231) "\[MAN\] \002Optional settings Syntax\002: \002antibold-reason\002 (setting default reason), \002antibold-bantime\002 (setting default ban-time in minutes)"
set black(say.en.man.232) "\[MAN\] \002Set option Syntax\002: %char%set <setting> <text>/<number> | %botnick% set <setting> <text>/<number>"
set black(say.en.man.233) "\[MAN\] \002Show settings Syntax\002: %char%show <setting> | %botnick% show <setting>"

#antiunderline

set black(say.en.man.234) "\[MAN\] \002antiunderline\002 is a protection which helps dealing against those users who use UNDERLINE on %chan%"
set black(say.en.man.235) "\[MAN\] \002Enable/Disable Syntax\002: %char%set (+/-)antiunderline | %botnick% set (+/-)antiunderline"
set black(say.en.man.236) "\[MAN\] \002Optional settings Syntax\002: \002antiunderline-reason\002 (setting default reason), \002antiunderline-bantime\002 (setting default ban-time in minutes)"
set black(say.en.man.237) "\[MAN\] \002Set option Syntax\002: %char%set <setting> <text>/<number> | %botnick% set <setting> <text>/<number>"
set black(say.en.man.238) "\[MAN\] \002Show settings Syntax\002: %char%show <setting> | %botnick% show <setting>"

#anticaps

set black(say.en.man.239) "\[MAN\] \002antiunderline\002 is a protection which helps dealing against those users who use CAPS LOCK on %chan%"
set black(say.en.man.240) "\[MAN\] \002Enable/Disable Syntax\002: %char%set (+/-)anticaps | %botnick% set (+/-)anticaps"
set black(say.en.man.241) "\[MAN\] \002Optional settings Syntax\002: \002anticaps-reason\002 (setting default reason), \002anticaps-bantime\002 (setting default ban-time in minutes)"
set black(say.en.man.242) "\[MAN\] \002Set option Syntax\002: %char%set <setting> <text>/<number> | %botnick% set <setting> <text>/<number>"
set black(say.en.man.243) "\[MAN\] \002Show settings Syntax\002: %char%show <setting> | %botnick% show <setting>"

#badnick

set black(say.en.man.244) "\[MAN\] \002badnick\002 is a protection which helps dealing against those users who use bad NICKNAMES with bad characters"
set black(say.en.man.245) "\[MAN\] \002Enable/Disable Syntax\002: %char%set (+/-)badnick | %botnick% set (+/-)badnick"
set black(say.en.man.246) "\[MAN\] \002Optional settings Syntax\002: \002badnick-reason\002 (setting default reason), \002badnick-bantime\002 (setting default ban-time in minutes)"
set black(say.en.man.247) "\[MAN\] \002Set option Syntax\002: %char%set <setting> <text>/<number> | %botnick% set <setting> <text>/<number>"
set black(say.en.man.248) "\[MAN\] \002Show settings Syntax\002: %char%show <setting> | %botnick% show <setting>"

#badfullname

set black(say.en.man.249) "\[MAN\] \002badfullname\002 is a protection which helps dealing against those users who use bad fullnames (realnames) with bad characters"
set black(say.en.man.250) "\[MAN\] \002Enable/Disable Syntax\002: %char%set (+/-)badfullname | %botnick% set (+/-)badfullname"
set black(say.en.man.251) "\[MAN\] \002Optional settings Syntax\002: \002badfullname-reason\002 (setting default reason), \002badfullname-bantime\002 (setting default ban-time in minutes)"
set black(say.en.man.252) "\[MAN\] \002Set option Syntax\002: %char%set <setting> <text>/<number> | %botnick% set <setting> <text>/<number>"
set black(say.en.man.253) "\[MAN\] \002Show settings Syntax\002: %char%show <setting> | %botnick% show <setting>"

#autoop

set black(say.en.man.254) "\[MAN\] \002autoop\002 is an option which enabled give the opportunity to every user who joins %chan% to have OP"
set black(say.en.man.255) "\[MAN\] \002Enable/Disable Syntax\002: %char%set (+/-)autoop | %botnick% set (+/-)autoop"

#autovoice

set black(say.en.man.256) "\[MAN\] \002autovoice\002 is an option which enabled give the opportunity to every user who joins %chan% to have VOICE"
set black(say.en.man.257) "\[MAN\] \002Enable/Disable Syntax\002: %char%set (+/-)autovoice | %botnick% set (+/-)autovoice"

#antijoinflood

set black(say.en.man.258) "\[MAN\] \002antijoinflood\002 is a protection which helps dealing against massjoin action setting channel with different modes."
set black(say.en.man.259) "\[MAN\] \002Enable/Disable Syntax\002: %char%set (+/-)antijoinflood | %botnick% set (+/-)antijoinflood"
set black(say.en.man.260) "\[MAN\] \002Optional settings Syntax\002: joinflood (<joins>:<seconds>)"
set black(say.en.man.261) "\[MAN\] \002Set option Syntax\002: %char%set <setting> <text>/<number> | %botnick% set <setting> <text>/<number>"
set black(say.en.man.262) "\[MAN\] \002Show settings Syntax\002: %char%show <setting> | %botnick% show <setting>"

#antichanflood

set black(say.en.man.263) "\[MAN\] \002antichanflood\002 is a protection which helps dealing against those users who flood channel %chan% with texts(words)."
set black(say.en.man.264) "\[MAN\] \002Enable/Disable Syntax\002: %char%set (+/-)antichanflood | %botnick% set (+/-)antichanflood"
set black(say.en.man.265) "\[MAN\] \002Optional settings Syntax\002: \002antichanflood-reason\002 (setting default reason), \002antichanflood-bantime\002 (setting default ban-time in minutes), chanflood (<lines number>:<seconds>)"
set black(say.en.man.266) "\[MAN\] \002Set option Syntax\002: %char%set <setting> <text>/<number> | %botnick% set <setting> <text>/<number>"
set black(say.en.man.267) "\[MAN\] \002Show settings Syntax\002: %char%show <setting> | %botnick% show <setting>"

#badident

set black(say.en.man.268) "\[MAN\] \002badident\002 is a protection which helps dealing against those users who use bad IDENTs with *forbidden* characters"
set black(say.en.man.269) "\[MAN\] \002Enable/Disable Syntax\002: %char%set (+/-)badident | %botnick% set (+/-)badident"
set black(say.en.man.270) "\[MAN\] \002Optional settings Syntax\002: \002badident-reason\002 (setting default reason), \002badident-bantime\002 (setting default ban-time in minutes)"
set black(say.en.man.271) "\[MAN\] \002Set option Syntax\002: %char%set <setting> <text>/<number> | %botnick% set <setting> <text>/<number>"
set black(say.en.man.272) "\[MAN\] \002Show settings Syntax\002: %char%show <setting> | %botnick% show <setting>"

#showtime

set black(say.en.man.273) "\[MAN\] \002showtime\002 is an option which enabled will put also the expiration date of the ban added"
set black(say.en.man.274) "\[MAN\] \002Enable/Disable Syntax\002: %char%set (+/-)showtime | %botnick% set (+/-)showtime"

#showhandle

set black(say.en.man.275) "\[MAN\] \002showhandle\002 is an option which enabled will put also the user(handle) who added the ban"
set black(say.en.man.276) "\[MAN\] \002Enable/Disable Syntax\002: %char%set (+/-)showhandle | %botnick% set (+/-)showhandle"

#showcount

set black(say.en.man.277) "\[MAN\] \002showcount\002 is an option which enabled will put also the next number(up feature) in list for the added ban"
set black(say.en.man.278) "\[MAN\] \002Enable/Disable Syntax\002: %char%set (+/-)showcount | %botnick% set (+/-)showcount"

#xbantime

set black(say.en.man.279) "\[MAN\] \002xbantime\002 is an option trough which it can be set the X ban-time (ONLY if Xban module is enabled)"
set black(say.en.man.280) "\[MAN\] \002Enable/Disable Syntax\002: %char%set xbantime <hours> | %botnick% set xbantime <hours>"

#xbanlevel

set black(say.en.man.281) "\[MAN\] \002xbanlevel\002 is an option trough which it can be set the level of ban at X (ONLY if Xban module is enabled)"
set black(say.en.man.282) "\[MAN\] \002Enable/Disable Syntax\002: .set xbanlevel <number> | eggy- set xbanlevel <number>"

#oprotect

set black(say.en.man.283) "\[MAN\] \002oprotect\002 is an option which enabled will except those who have OP from all protection"
set black(say.en.man.284) "\[MAN\] \002Enable/Disable Syntax\002: .set oprotect <ON>/<OFF> | eggy- set oprotect <on>/<off>"

#vprotect

set black(say.en.man.285) "\[MAN\] \002vprotect\002 is an option which enabled will except those who have VOICE from all protection"
set black(say.en.man.286) "\[MAN\] \002Enable/Disable Syntax\002: .set vprotect <ON>/<OFF> | eggy- set vprotect <on>/<off>"

##################(EN) h owner #########


#uptime

set black(say.en.man.374) "\[MAN\] \002uptime\002 is a command trough which you can find for how long the eggdrop is started, connecting time at the server and also the server where is connected too"
set black(say.en.man.375) "\[MAN\] \002Syntax\002: .uptime | eggy- uptime"

#status

set black(say.en.man.376) "\[MAN\] \002status\002 is a command trough which you can find informations from .uptime command also the channels where eggdrop is and the uptime on the server which is connected."
set black(say.en.man.377) "\[MAN\] \002Syntax\002: .status | eggy- status"

#away

set black(say.en.man.382) "\[MAN\] \002away\002 is a command trough which you can set your eggdrops away. Setting this will make the eggdrop put the away line on every connect."
set black(say.en.man.383) "\[MAN\] \002Syntax\002:  .away <away> | eggy- away <away>"
set black(say.en.man.384) "\[MAN\] \002Optional Syntax\002:  .away <off> (disable away status)"

#silence

set black(say.en.man.385) "\[MAN\] \002silence\002 is a command trough which you can set your eggdrop to deny every private message to him."
set black(say.en.man.386) "\[MAN\] \002Enable/Disable Syntax\002:  .silence <on>/<off> | eggy- silence <on>/<off>"

#jump

set black(say.en.man.387) "\[MAN\] \002jump\002 is a command trough which you can change the server where your eggdrop is connected too."
set black(say.en.man.388) "\[MAN\] \002Syntax\002:  .jump <server> | eggy- jump <server>"

#msg

set black(say.en.man.389) "\[MAN\] \002msg\002 is a command trough which you can give a private message from eggdrop to a channel or a user."
set black(say.en.man.390) "\[MAN\] \002Syntax\002:  .msg <nick/chan> <text> | eggy- msg <nick/chan> <text>"

#broadcast

set black(say.en.man.391) "\[MAN\] \002broadcast\002 is a command trough which you can send a message to all channels where eggdrop is."
set black(say.en.man.392) "\[MAN\] \002Syntax\002:  .broadcast <text> | eggy- broadcast <text>"

#ignore

set black(say.en.man.393) "\[MAN\] \002ignore\002 is a command trough which you can list, add, remove ignore recordings from your eggdrop."
set black(say.en.man.394) "\[MAN\] \002List/Enable/Disable Syntax\002: .ignore <list> | <add> <host> <time> <reason> | <delete> <host>"

#chat

set black(say.en.man.395) "\[MAN\] \002chat\002 is a command trough which you can connect to your eggdrops botnet (same as /CTCP CHAT eggy)."
set black(say.en.man.396) "\[MAN\] \002Syntax\002: .chat | eggy- chat"

#login

set black(say.en.man.397) "\[MAN\] \002login\002 is a command trough which you can manual login your eggdrop to Chanserv(X)"
set black(say.en.man.398) "\[MAN\] \002Syntax\002: .login | eggy- login"

#channels

set black(say.en.man.399) "\[MAN\] \002channels\002 is a command trough which you can view all channels where your eggdrop is connected."
set black(say.en.man.400) "\[MAN\] \002Syntax\002: .channels | eggy- channels"

#find

set black(say.en.man.420) "\[MAN\] \002find\002 is a command trough which you can search users after their names or hosts from eggdrop memory, listing their hosts, channels where they have access, also where they have been seen lately."
set black(say.en.man.421) "\[MAN\] \002Syntax\002: %char%find <host> / <user> | %botnick% find <host> / <user>"

#nick

set black(say.en.man.401) "\[MAN\] \002nick\002 is a command trough which you can change your eggdrops nickname."
set black(say.en.man.402) "\[MAN\] \002Syntax\002: (PRIVMSG) nick <newnick> | eggy- nick <newnick>"

#restart

set black(say.en.man.403) "\[MAN\] \002restart\002 is a command trough which you can restart your eggdrop."
set black(say.en.man.404) "\[MAN\] \002Syntax\002: (PRIVMSG) restart | eggy- nick restart"

#rehash

set black(say.en.man.405) "\[MAN\] \002rehash\002 is a command trough which you can rehash your eggdrop files."
set black(say.en.man.406) "\[MAN\] \002Syntax\002: (PRIVMSG) rehash | eggy- nick rehash"

#die

set black(say.en.man.407) "\[MAN\] \002die\002 is a command trough which you can shutdown your eggdrop"
set black(say.en.man.408) "\[MAN\] \002Syntax\002: (PRIVMSG) die | eggy- nick die"

#save

set black(say.en.man.413) "\[MAN\] \002save\002 is a command trough which you can save your eggdrop files."
set black(say.en.man.414) "\[MAN\] \002Syntax\002: (PRIVMSG) save | eggy- save"

#suspend

set black(say.en.man.409) "\[MAN\] \002suspend\002 is a command trough which you can suspend a channel from your eggdrops channel-list."
set black(say.en.man.410) "\[MAN\] \002Syntax\002: (PRIVMSG) suspend <chan> <reason> | eggy- suspend <chan> <reason>"

#unsuspend

set black(say.en.man.411) "\[MAN\] \002unsuspend\002 is a command trough which you can rollback the suspend option for a channel from your eggdrop channel-list"
set black(say.en.man.412) "\[MAN\] \002Syntax\002: (PRIVMSG) unsuspend <chan> | eggy- unsuspend <chan>"

#delchan

set black(say.en.man.418) "\[MAN\] \002delchan\002 is a command trough which you can delete a channel from your eggdrops channel-list"
set black(say.en.man.419) "\[MAN\] \002Syntax\002: (PRIVMSG) delchan <chan> <reason> | eggy- delchan <chan> <reason>"

#addchan

set black(say.en.man.415) "\[MAN\] \002addchan\002 is a command trough which you can add a channel into your eggdrop channel-list"
set black(say.en.man.416) "\[MAN\] \002Syntax\002: (PRIVMSG) addchan <chan> \[key\] | eggy- addchan <chan> \[key\]"
set black(say.en.man.417) "\[MAN\] If \[key\] is specified eggdrop will join <chan> using that key."


