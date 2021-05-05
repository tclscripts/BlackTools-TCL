#########################################################################################################################################
#                                         _   _   _   _   _   _   _   _   _   _   _   _   _   _                                         #
#                                        / \ / \ / \ / \ / \ / \ / \ / \ / \ / \ / \ / \ / \ / \                                        #
#                                       ( T | C | L | S | C | R | I | P | T | S | . | N | E | T )                                       #
#                                        \_/ \_/ \_/ \_/ \_/ \_/ \_/ \_/ \_/ \_/ \_/ \_/ \_/ \_/                                        #
#                                                                                                                                       #
#########################################################################################################################################
##                                          BlackTools - The Ultimate Channel Control Script                                           ##
##                                                     One TCL. One smart Eggdrop                                                      ##
#########################################################################################################################################
## This file goes along with BlackTools.tcl and is loaded automatically if exist in /lang folder (this file is required)               ##
#########################################################################################################################################
#                                                                                                                                       #
#                                                      *** The Future is Here ***                                                       #
#                                                                                            Copyright 2008 - 2021 @ www.tclscripts.net #
#########################################################################################################################################
#                                                                                                                                       #
#   ENGLISH LANGUAGE                                                                                                            �       #
#   ######  #          #     #####  #    # ####### ####### ####### #        #####     #     #    #    #     # #     #    #    #         #
#   #     # #         # #   #     # #   #     #    #     # #     # #       #     #    ##   ##   # #   ##    # #     #   # #   #         #
#   #     # #        #   #  #       #  #      #    #     # #     # #       #          # # # #  #   #  # #   # #     #  #   #  #         #
#   ######  #       #     # #       ###       #    #     # #     # #        #####     #  #  # #     # #  #  # #     # #     # #         #
#   #     # #       ####### #       #  #      #    #     # #     # #             #    #     # ####### #   # # #     # ####### #         #
#   #     # #       #     # #     # #   #     #    #     # #     # #       #     #    #     # #     # #    ## #     # #     # #         #
#   ######  ####### #     #  #####  #    #    #    ####### ####### #######  #####     #     # #     # #     #  #####  #     # #######   #
#                                                                                                                                       #
#########################################################################################################################################


################################################# MAN COMMANDS ##########################################################################


set black(say.en.man.1) "\005\[BT\]\005 Usage: \002%char%man\002 <command>"
set black(say.en.man.2) "\005\[BT\]\005 Usage: \002%botnick% man\002 <command>"
set black(say.en.man.2_1) "\005\[BT\]\005 Usage: \002man\002 <command>"

#Man

set black(say.en.man.3) "\[MAN\] \002Man\002 is the second most important from BlackTools Channel Control Script used to read the \001user manual\001."
set black(say.en.man.4) "\[MAN\] Displays information about how to use or set each commands, protections and modules."
set black(say.en.man.4_1) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.5) "\[MAN\] \002%char%man\002 <command> ; \002%botnick% man\002 <command> ; \002(PRIVMSG) man\002 <command>"

#h

set black(say.en.man.6) "\[MAN\] \002h\002 is the most important command from Blacktools Channel Control Script."
set black(say.en.man.7) "\[MAN\] Displays all available commands and allows users to browse the script menu according to their access level on a specified channel."
set black(say.en.man.8) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.9) "\[MAN\] \002%char%h\002 <category> ; \002%botnick% h\002 <category> ; \002(PRIVMSG) h\002 \[#chan\] <category>"
set black(say.en.man.10) "\[MAN\] To find out what commands are available to you, try: \002%char%h\002 ; \002%botnick% h\002 ; \002(PRIVMSG) h\002 \[#chan\]"

#tip

set black(say.en.man.6666) "\[MAN\] \002tip\002 shows automatically \002random tips\002 at the end of each information from the \001user manual\001."

#v

set black(say.en.man.11) "\[MAN\] \002v\002 gives/removes voice \002(+v)\002 to/from one or more users in the channel."
set black(say.en.man.12) "\[MAN\] ** Note: If no nick is specified, and you are not voiced on the channel, it will voice \002(+v)\002 you. **"
set black(say.en.man.13) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.14) "\[MAN\] \002%char%v\002 <nick1> <nick2>.. ; \002%botnick% v\002 <nick1 <nick2>.. ; \002(PRIVMSG) v\002 <#chan> <nick1 <nick2>.."
set black(say.en.man.15) "\[MAN\] \002%char%v +\002 (performs a mass voice) ; \002%char%v -\002 (performs a mass devoice)"

#o

set black(say.en.man.16) "\[MAN\] \002o\002 gives/removes op \001(@)\001 to/from one or more users in the channel."
set black(say.en.man.17) "\[MAN\] ** Note: If no nick is specified, and you are not opped on the channel, it will op \002(@)\002 you. **"
set black(say.en.man.18) "\[MAN\] USAGE SYNTAXES:"
set black(say.en.man.19) "\[MAN\] \002%char%o\002 <nick1> <nick2>.. ; \002%botnick% o\002 <nick1 <nick2>.. ; \002(PRIVMSG) o\002 <#chan> <nick1 <nick2>.."
set black(say.en.man.20) "\[MAN\] \002%char%o +\002 (performs a mass op)\002 ; %char%o -\002 (performs a mass deop)"

#UserList

set black(say.en.man.22) "\[MAN\] \002UserList\002 shows the entire access list for a specified channel."
set black(say.en.man.23) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.24) "\[MAN\] \002%char%userlist\002 <level|all> ; \002%botnick% userlist\002 <level|all> ; \002(PRIVMSG) userlist\002 <#chan> <level|all>"
set black(say.en.man.25) "\[MAN\] As access \002<level>\002 you have: \002%msg.1%\002 ; \002%msg.2%\002 ; \002%msg.3%\002 ; \002%msg.4%\002"
set black(say.en.man.26) "\[MAN\] As access \002<level>\002 you have: \002%msg.1%\002 ; \002%msg.2%\002 ; \002%msg.3%\002 ; \002%msg.4%\002 ; \002%msg.12%\002"
set black(say.en.man.27) "\[MAN\] As access \002<level>\002 you have: \002%msg.1%\002 ; \002%msg.2%\002 ; \002%msg.3%\002 ; \002%msg.4%\002 ; \002%msg.12%\002 ; \002%msg.13%\002 ; \002%msg.15%\002"
set black(say.en.man.28_1) "\[MAN\] As access \002<level>\002 you have: \002%msg.1%\002 ; \002%msg.2%\002 ; \002%msg.3%\002"

#Version

set black(say.en.man.28) "\[MAN\] \002Version\002 displays information about the \001BlackTools version\001 that the eggdrop is running."
set black(say.en.man.29) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.30) "\[MAN\] \002%char%version\002 ; %botnick% version ; \002(PRIVMSG) version\002"

#Info

set black(say.en.man.31) "\[MAN\] \002Info\002 displays information about users or channels from eggdrop's database."
set black(say.en.man.32) "\[MAN\] Informations such as access level, channel mode, greet, user added host(s), automode, last seen information, etc."
set black(say.en.man.33) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.34) "\[MAN\] \002%char%info\002 <handle|#chan> ; \002%botnick% info\002 <handle|#chan> ; \002(PRIVMSG) info\002 <handle|#chan>"

#Act

set black(say.en.man.35) "\[MAN\] \002Act\002 makes the eggdrop send an action (\001/me\001) with <message> on channels."
set black(say.en.man.36) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.37) "\[MAN\] \002%char%act\002 <message> ; \002%botnick% act\002 <message> ; \002(PRIVMSG) act\002 <#chan> <message>"

#t

set black(say.en.man.38) "\[MAN\] \002t\002 sets a topic with your desired <text>."
set black(say.en.man.39) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.40) "\[MAN\] \002%char%t\002 \[#chan\] <text> ; \002%botnick% t\002 \[#chan\] <text> ; \002(PRIVMSG) t\002 <#chan> <text>"
set black(say.en.man.41) "\[MAN\] ** Note: If you want that the eggdrop to show in topic and the handle of the user who changed it, use: \002%char%set +showhandle\002 **"

#Cycle

set black(say.en.man.42) "\[MAN\] \002Cycle\002 makes the eggdrop cycle (\001/hop\001), or part and re-join, a specified channel."
set black(say.en.man.43) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.44) "\[MAN\] \002%char%cycle\002 \[duration|reason\] ; \002%botnick% cycle\002 \[duration|reason\] ; \002(PRIVMSG) cycle\002 <#chan> \[duration|reason\]"

#Mode

set black(say.en.man.45) "\[MAN\] \002Mode\002 applies or removes specified <modes> on channels."
set black(say.en.man.46) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.47) "\[MAN\] \002%char%mode\002 (+/-)<modes> ; %botnick% mode\002 (+/-)<modes> ; \002(PRIVMSG) mode\002 <#chan> (+/-)<modes>"

#i

set black(say.en.man.48) "\[MAN\] \002i\002 invites a specified user to a specified channel."
set black(say.en.man.49) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.50) "\[MAN\] \002%char%i\002 <nick> ; \002%botnick% i\002 <nick> ; \002(PRIVMSG) i\002 <#chan> <nick>"

#k

set black(say.en.man.62) "\[MAN\] \002k\002 kicks specified user from channel. Reason is optional."
set black(say.en.man.63) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.64) "\[MAN\] \002%char%k\002 <nick|mask> \[reason\] ; \002%botnick% k\002 <nick|mask> \[reason\] ; \002(PRIVMSG) k\002 <#chan> <nick|mask> \[reason\]"
set black(say.en.man.65) "\[MAN\] Optional settings: \002k-reason\002 (default reason setting)"

#w

set black(say.en.man.66) "\[MAN\] \002w\002 delivers a warning kick to a user with a given reason."
set black(say.en.man.67) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.68) "\[MAN\] \002%char%w\002 <nick> ; \002%botnick% w\002 <nick> ; \002(PRIVMSG) w\002 <#chan> <nick>"
set black(say.en.man.69) "\[MAN\] Optional settings: \002w-reason\002 (default warning reason) ; \002w-message\002 (default warning message)"

#Check

set black(say.en.man.70) "\[MAN\] \002Check\002 verifies a user with a private message if is virused or making advertise."
set black(say.en.man.71) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.72) "\[MAN\] \002%char%check\002 <nick>\002 ; \002%botnick% check\002 <nick> ; \002(PRIVMSG) check\002 \[#chan\] <nick>"
set black(say.en.man.73) "\[MAN\] Optional settings: \002%char%set\002 check-message <message> ; \002(PRIVMSG) set\002 check-message <message> (default check message)"

#sb

set black(say.en.man.74) "\[MAN\] \002sb\002 search and/or show details about a given ban (supports wildcards)."
set black(say.en.man.75) "\[MAN\] USAGE SYNTAXES:"
set black(say.en.man.76) "\[MAN\] \002%char%sb\002 \[-regex\] <nick|mask|id|regex> ; \002%botnick% sb\002 \[-regex\] <nick|mask|id|regex> ; \002(PRIVMSG) sb\002 <#chan> \[-regex\] <nick|mask|id|regex>"
set black(say.en.man.77) "\[MAN\] \002%char%sb\002 \[-regex\] <nick|mask|id|regex> \[global\] ; \002%botnick% sb\002 \[-regex\] <nick|mask|id|regex> \[global\] ; \002(PRIVMSG) sb\002 <#chan> \[-regex\] <nick|mask|id|regex> \[global\]"
set black(say.en.man.78) "\[MAN\] ** Note: In case that \002<nick>\002 is not on %chan%, eggdrop will \002WHOIS\002 it and check if it has ban on \002ident/host/nick\002 showing information about. If host matches a \002REGEX\002 ban, it will show the it's info. **"

#id

set black(say.en.man.79) "\[MAN\] \002id\002 sets a ban on a given \001IDENT\001. If a user nickname is specified, eggdrop will automatically take his ident."
set black(say.en.man.80) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.81) "\[MAN\] \002%char%id\002 <nick|ident> ; \002%botnick% id\002 <nick|ident> ; \002(PRIVMSG) id\002 <#chan> <nick|ident>"
set black(say.en.man.82) "\[MAN\] Optional settings: \002id-reason\002 (default reason); \002id-bantime\002 (default ban time); \002id-banmask\002 (default banmask)"

#n

set black(say.en.man.83) "\[MAN\] \002n\002 sets a ban on a given \001NICKNAME\001."
set black(say.en.man.84) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.85) "\[MAN\] \002%char%n\002 <nick> ; \002%botnick% n\002 <nick> ; \002(PRIVMSG) n\002 <#chan> <nick>"
set black(say.en.man.86) "\[MAN\] Optional settings: \002n-reason\002 (default reason); \002n-bantime\002 (default ban time) ; \002n-banmask\002 (default banmask)"

#Spam

set black(say.en.man.87) "\[MAN\] \002Spam\002 bans a user with a default \001SPAM\001 reason."
set black(say.en.man.88) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.89) "\[MAN\] \002%char%spam\002 <nick|mask> ; \002%botnick% spam\002 <nick|mask> ; \002(PRIVMSG) spam\002 <#chan> <nick|mask>"
set black(say.en.man.90) "\[MAN\] Optional settings: \002spam-reason\002 (default spam reason); \002spam-bantime\002 (default spam ban time); \002spam-banmask\002 (default spam banmask)"

#dr

set black(say.en.man.91) "\[MAN\] \002dr\002 bans a user with a default \001DRONE\001 reason."
set black(say.en.man.92) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.93) "\[MAN\] \002%char%dr\002 <nick|mask> ; \002%botnick% dr\002 <nick|mask> ; \002(PRIVMSG) dr\002 <#chan> <nick|mask>"
set black(say.en.man.94) "\[MAN\] Optional settings: \002dr-reason\002 (default reason); \002dr-bantime\002 (default ban time); \002dr-banmask\002 (default banmask)"

#b

set black(say.en.man.95) "\[MAN\] \002b\002 bans a user from a channel for a specified ban-time. If you do not specify a \001\[duration\]\001 will be used default value, but if you specify \0020\002 will become a permanent ban (blacklisted)."
set black(say.en.man.96) "\[MAN\] Format duration: <X>\002m\002 = minutes, <X>\002h\002 = hours, <X>\002d\002 = days, \0020\002 = permanent"
set black(say.en.man.97) "\[MAN\] USAGE SYNTAXES:"
set black(say.en.man.98) "\[MAN\] \002%char%b\002 \[-regex\] <nick|mask|regex> \[-level\] \[duration\] \[reason\] \[-c/comment\] ; \002%botnick% b\002 \[-regex\] <nick|mask|regex> \[-level\] \[duration\] \[reason\] \[-c/comment\] ; \002(PRIVMSG) b\002 \[-regex\] <#chan> <nick|mask|regex> \[-level\] \[duration\] \[reason\] \[-c/comment\]"
set black(say.en.man.98_1) "\[MAN\] ** Note: Using the optional \[-c/comment\] option will make eggdrop shows a second informations line of the ban entry with that comment. **"
set black(say.en.man.99) "\[MAN\] \002%char%b\002 \[-regex\] <nick|mask|regex> \[-level\] \[duration\] \[global|link\] \[reason\] \[-c/comment\] ; \002%botnick% b\002 \[-regex\] <nick|mask|regex> \[-level\] \[duration\] \[global|link\] \[reason\] \[-c/comment\] ; \002(PRIVMSG) b\002 <#chan> \[-regex\] <nick|mask|regex> \[-level\] \[duration\] \[global|link\] \[reason\] \[-c/comment\]"
set black(say.en.man.100) "\[MAN\] Optional settings: \002b-reason\002 (default reason); \002b-bantime\002 (default ban time); \002b-banmask\002 (default banmask)"
set black(say.en.man.100_1) "\[MAN\] ** Note: You can use REGEX ban on \002<nick>!<ident>@<hostname>/\[realname\]/\[banmask type\]\002 (fields between \[ \] are optional. To get info about \002banmask type\002 use \001%char%man banmask\001"
#ub

set black(say.en.man.101) "\[MAN\] \002ub\002 removes a ban from a specified channel (supports wildcards). \002ATTENTION\002: If you specify ONLY \002*\002 the eggdrop removes all channel bans."
set black(say.en.man.102) "\[MAN\] USAGE SYNTAXES:"
set black(say.en.man.103) "\[MAN\] \002%char%ub\002 \[-regex\] <nick|mask|id|regex> ; \002%botnick% ub\002 \[-regex\] <nick|mask|id|regex> ; \002(PRIVMSG) ub\002 <#chan> \[-regex\] <nick|mask|id|regex>\002"
set black(say.en.man.104) "\[MAN\] \002%char%ub\002 \[-regex\] <nick|mask|id|regex> \[global\]\002 ; \002%botnick% ub\002 \[-regex\] <nick|mask|id|regex> \[global|link\] ; \002(PRIVMSG) ub\002 <#chan> \[-regex\] <nick|mask|id|regex> \[global|link\]"
set black(say.en.man.105) "\[MAN\] ** Note: In case that \002<nick>\002 is not on %chan% eggdrop will \002WHOIS\002 it and check if has ban on \002ident/host/nick\002 and will unban it. If host matches a \002REGEX\002 ban, it will be REMOVED. **"

#Bot

set black(say.en.man.106) "\[MAN\] \002Bot\002 bans a user with a default \001BOT\001 reason."
set black(say.en.man.107) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.108) "\[MAN\] \002%char%bot\002 <nick|mask>\002 ; \002%botnick% bot\002 <nick|mask> ; \002(PRIVMSG) bot\002 <#chan> <nick|mask>"
set black(say.en.man.109) "\[MAN\] Optional settings: \002bot-reason\002 (default reason); \002bot-bantime\002 (default ban time); \002bot-banmask\002 (default banmask)"

#bw

set black(say.en.man.110) "\[MAN\] \002bw\002 bans a user with a default reason."
set black(say.en.man.111) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.112) "\[MAN\] \002%char%bw\002 <nick|mask> ; \002%botnick% bw\002 <nick|mask> ; \002(PRIVMSG) bw\002 <#chan> <nick|mask>\002"
set black(say.en.man.113) "\[MAN\] Optional settings: \002bw-reason\002 (default reason); \002bw-bantime\002 (default ban time); \002bw-banmask\002 (default banmask)"

#Black

set black(say.en.man.114) "\[MAN\] \002Black\002 bans a user for \001UNLIMITED time\001 (permanent ban)."
set black(say.en.man.115) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.116) "\[MAN\] \002%char%black\002 <nick|mask> \[reason\] \[-c/comment\] ; \002%botnick% black\002 <nick|mask> \[reason\] \[-c/comment\] ; \002(PRIVMSG) black\002 <#chan> <nick|mask> \[reason\] \[-c/comment\]\002"
set black(say.en.man.116_1) "\[MAN\] ** Note: Using the optional \[-c/comment\] option will make eggdrop shows a second informations line of the ban entry with that comment. **"
set black(say.en.man.117) "\[MAN\] Optional settings: \002black-reason\002 (default reason); \002black-banmask\002 (default banmask)"

#Stick 

set black(say.en.man.118) "\[MAN\] \002Stick\002 bans a user with a given reason and ban-time, but with a \001sticky\001 character. A sticky ban will be reactivated by the bot if anyone removes it from the channel."
set black(say.en.man.118_1) "\[MAN\] Format duration: <X>\002m\002 = minutes, <X>\002h\002 = hours, <X>\002d\002 = days, \0020\002 = permanent"
set black(say.en.man.119) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.120) "\[MAN\] \002%char%stick\002 <nick|mask> \[duration\] \[reason\] \[-c/comment\] ; %botnick% stick\002 <nick|mask> \[duration\] \[reason\] \[-c/comment\] ; \002(PRIVMSG) stick\002 <#chan> <nick|mask> \[duration\] \[reason\] \[-c/comment\]"
set black(say.en.man.120_1) "\[MAN\] ** Note: Using the optional \[-c/comment\] option will make eggdrop shows a second informations line of the ban entry with that comment. **"
set black(say.en.man.121) "\[MAN\] Optional settings: \002stick-reason\002 (default reason); \002stick-bantime\002 (default ban time); \002stick-banmask\002 (default banmask)"

#Gag

set black(say.en.man.122) "\[MAN\] \002Gag\002 silence/mute (cannot write on channel) a user for a period of time. If you do not specify a \002\[duration\]\002 will be used a default value."
set black(say.en.man.122_1) "\[MAN\] Format duration: <X>\002m\002 = minutes, <X>\002h\002 = hours, <X>\002d\002 = days"
set black(say.en.man.123) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.124) "\[MAN\] \002%char%gag\002 <nick> \[duration\] \[reason\] ; \002%botnick% gag\002 <nick> \[duration\] \[reason\] ; \002(PRIVMSG) gag\002 <#chan> <nick> \[duration\] \[reason\]\002."
set black(say.en.man.125) "\[MAN\] Optional settings: \002gag-reason\002 (default reason); \002gag-bantime\002 (default ban time); \002gag-banmask\002 (default banmask)"

#Add

set black(say.en.man.126) "\[MAN\] \002Add\002 adds a user to the channel's userlist."
set black(say.en.man.127) "\[MAN\] ** Note: If the user is on the channel, the automatically hostmask added for that user will be the current one. **"
set black(say.en.man.128) "\[MAN\] ** Note: If the user is NOT on the channel, the automatically hostmask added for that user will be: *!*@%user%.users.undernet.org. **"
set black(say.en.man.134) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.135) "\[MAN\] \002%char%add\002 <level> <nick|Xusername> ; \002%botnick% add\002 <level> <nick|Xusername> ; \002(PRIVMSG) add\002 <#chan> <level> <nick|Xusername>"

#Adduser

set black(say.en.man.136) "\[MAN\] For informations on \002how to give someone access\002 please check: \002%char%man add\002"

#DelAcc

set black(say.en.man.142) "\[MAN\] \002DelAcc\002 removes a user from the access list of a channel."
set black(say.en.man.142_1) "\[MAN\] ** Note: You must have higher access than the user you want to delete (so, if you have \002OP\002 and specified user have \002ADMIN\002 you can't delete him). **"
set black(say.en.man.143) "\[MAN\] USAGE SYNTAXES:"
set black(say.en.man.144) "\[MAN\] \002%char%delacc\002 <handle> ; %botnick% delacc\002 <handle> ; \002(PRIVMSG) delacc\002 <#chan> <handle>"
set black(say.en.man.145) "\[MAN\] \002%char%delacc\002 <owner|master> <handle> ; \002%botnick% delacc\002 <owner|master> <handle> ; \002(PRIVMSG) delacc\002 <#chan> <owner|master> <handle> (remove access global)"

#Del

set black(say.en.man.146) "\[MAN\] \002Del\002 removes a user totally from eggdrop's database."
set black(say.en.man.147) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.148) "\[MAN\] \002%char%del\002 <handle> ; \002%botnick% del\002 <handle> ; \002(PRIVMSG) del\002 <#chan> <handle>"

#unGag

set black(say.en.man.149) "\[MAN\] \002unGag\002 removes the \002gag\002 from a specified user."
set black(say.en.man.150) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.151) "\[MAN\] \002%char%ungag\002 <nick|mask> ; \002%botnick% ungag\002 <nick|mask> ; \002(PRIVMSG) ungag\002 <#chan> <nick|mask>"

#BanList

set black(say.en.man.152) "\[MAN\] \002BanList\002 shows the list of banned masks that are active on the specified channel."
set black(say.en.man.153) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.154) "\[MAN\] \002%char%banlist\002 <handle|all|regex|gag|other> ; \002%botnick% banlist\002 <handle|all|regex|gag|other> ; \002(PRIVMSG) banlist\002 <#chan> <handle|all|regex|gag|other>"
set black(say.en.man.155) "\[MAN\] \002%char%banlist\002 <handle|all|regex|gag|other|global> ; \002%botnick% banlist\002 <handle|all|regex|gag|other|global> ; \002(PRIVMSG) banlist\002 <#chan> <handle|all|regex|gag|other|global>"

#AddHost

set black(say.en.man.156) "\[MAN\] \002AddHost\002 adds a new hostmask to a specified user."
set black(say.en.man.157) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.158) "\[MAN\] \002%char%addhost\002 <handle> <mask> ; \002%botnick% addhost\002 <handle> <mask> ; \002(PRIVMSG) addhost\002 <handle> <mask>"

#DelHost

set black(say.en.man.159) "\[MAN\] \002DelHost\002 removes a hostmask from a specified user."
set black(say.en.man.160) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.161) "\[MAN\] \002%char%delhost\002 <handle> <mask> ; \002%botnick% delhost\002 <handle> <mask> ; \002(PRIVMSG) delhost\002 <handle> <mask>"

#chUser

set black(say.en.man.162) "\[MAN\] \002chUser\002 change the <handle> (name) of a user into <newhandle>."
set black(say.en.man.163) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.164) "\[MAN\] \002%char%chuser\002 <handle> <newhandle> ; \002%botnick% chuser\002 <handle> <newhandle> ; \002(PRIVMSG) chuser\002 <handle> <newhandle>"

#s

set black(say.en.man.165) "\[MAN\] \002s\002 suspends a user's access on a channel for a specified period of time. If you do not specify a \002\[duration\]\002 it will be used a default value."
set black(say.en.man.165_1) "\[MAN\] ** Note: You can only SUSPEND someone with access lower than your own. **"
set black(say.en.man.165_2) "\[MAN\] Format duration: <X>\002m\002 = minutes, <X>\002h\002 = hours, <X>\002d\002 = days"
set black(say.en.man.166) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.167) "\[MAN\] \002%char%s\002 <handle> \[duration\] \[reason\] ; \002%botnick% s\002 <handle> \[duration\] \[reason\] ; \002(PRIVMSG) s\002 <#chan> <handle> \[duration\] \[reason\]"

#us

set black(say.en.man.168) "\[MAN\] \002us\002 removes the suspension of a user access from a given channel."
set black(say.en.man.168_1) "\[MAN\] ** Note: You can only UNSUSPEND someone with access lower than your own. Also, the suspension level must be less than or equal to your own access level. **"
set black(say.en.man.169) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.170) "\[MAN\] \002%char%us\002 <handle> ; \002%botnick% us\002 <handle> ; \002(PRIVMSG) us\002 <#chan> <handle>"

#Auto

set black(say.en.man.171) "\[MAN\] \002Auto\002 changes the automode of a specified for a given channel. ATTENTION the user must have access on that channel first."
set black(say.en.man.172) "\[MAN\] USAGE SYNTAXES:"
set black(say.en.man.173) "\[MAN\] AutoVOICE: \002%char%auto (+/-)v\002 <nick|handle> ; %botnick% auto (+/-)v <nick|handle> ; \002(PRIVMSG) auto\002 <#chan> (+/-)v <nick|handle>"
set black(say.en.man.174) "\[MAN\] AutoOP: \002%char%auto (+/-)o\002 <nick|handle> ; %botnick% auto (+/-)o <nick|handle> ; \002(PRIVMSG) auto\002 <#chan> (+/-)o <nick|handle>"
set black(say.en.man.175) "\[MAN\] AutoVOICE: \002%char%auto (+/-)v\002 <nick|handle> \[global\] ; %botnick% auto\002 (+/-)v <nick|handle> \[global\] ; \002(PRIVMSG) auto\002 <#chan> (+/-)v <nick|handle> \[global\]"
set black(say.en.man.176) "\[MAN\] AutoOP: \002%char%auto (+/-)o\002 <nick|handle> \[global\] ; %botnick% auto\002 (+/-)o <nick|handle> \[global\] ; \002(PRIVMSG) auto\002 <#chan> (+/-)o <nick|handle> \[global\]"


################################################# MAN PROTECTIONS #####################################################


#AntiPub

set black(say.en.man.177) "\[MAN\] \002AntiPub\002 bans users who advertise using *#*, *http://* or *www.* (supports wildcards)."
set black(say.en.man.178) "\[MAN\] USAGE SYNTAXES:"
set black(say.en.man.179) "\[MAN\] \002%char%set\002 (+/-)antipub ; \002%botnick% set\002 (+/-)antipub ; \002(PRIVMSG) set\002 (+/-)antipub"
set black(say.en.man.180) "\[MAN\] \002%char%antipub\002 \[#chan\] add <link|#chan> ; \002%char%antipub\002 \[#chan\] list"
set black(say.en.man.180_1) "\[MAN\] \002%char%antipub\002 \[#chan\] add <+word> (add exceptions) ; \002%char%antipub\002 \[#chan\] del <no. list> (remove antipub from list)"
set black(say.en.man.181) "\[MAN\] Optional settings: \002antipub-reason\002; antipub-bantime; \002antipub-warn\002; antipub-banmethod; \002antipub-banmask\002"

#AntiNotice

set black(say.en.man.183) "\[MAN\] \002AntiNotice\002 bans users who use \"NOTICE\" on a channel."
set black(say.en.man.184) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.185) "\[MAN\] \002%char%set\002 (+/-)antinotice ; \002%botnick% set\002 (+/-)antinotice ; \002(PRIVMSG) set\002 <#chan> (+/-)antinotice"
set black(say.en.man.186) "\[MAN\] Optional settings: \002antinotice-reason\002; antinotice-bantime; \002antinotice-warn\002; antinotice-banmethod; \002antinotice-banmask\002"
set black(say.en.man.187) "\[MAN\] View options settings: \002%char%show\002 <setting> ; \002%botnick% show\002 <setting> ; \002(PRIVMSG) show\002 <#chan> <setting>"

#AntiCtcp

set black(say.en.man.188) "\[MAN\] \002AntiCtcp\002 bans users who use \"CTCP\" on a channel."
set black(say.en.man.189) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.190) "\[MAN\] \002%char%set\002 (+/-)antictcp ; \002%botnick% set\002 (+/-)antictcp ; \002(PRIVMSG) set\002 <#chan> (+/-)antictcp"
set black(say.en.man.191) "\[MAN\] Optional settings: \002antictcp-reason\002, antictcp-bantime, \002antictcp-warn\002, antictcp-banmethod, \002antictcp-banmask\002"
set black(say.en.man.192) "\[MAN\] View options settings: \002%char%show\002 <setting> ; \002%botnick% show\002 <setting> ; \002(PRIVMSG) show\002 <#chan> <setting>"

#AntiBadWord

set black(say.en.man.193) "\[MAN\] \002AntiBadWord\002 bans users who use *bad/forbidden* words/phrases (supports wildcards)."
set black(say.en.man.194) "\[MAN\] USAGE SYNTAXES:"
set black(say.en.man.195) "\[MAN\] \002%char%set\002 (+/-)antibadword ; \002%botnick% set\002 (+/-)antibadword ; \002(PRIVMSG) set\002 <#chan> (+/-)antibadword"
set black(say.en.man.196) "\[MAN\] \002%char%badword\002 \[#chan\] add <word|phrase> ; \002%char%badword\002 \[#chan\] list ; \002%char%badword\002 \[#chan\] del <no. list>"
set black(say.en.man.197) "\[MAN\] \002%char%badword\002 \[#chan\] add <+word> (add exceptions) ; \002%char%badword\002 \[#chan\] add <word:no. method> (see \002%char%man banmethod\002)"
set black(say.en.man.198) "\[MAN\] Optional settings: \002antibadword-reason\002, antibadword-bantime, \002antibadword-warn\002, antibadword-banmethod, \002antibadword-banmask\002"

#AntiLongText

set black(say.en.man.199) "\[MAN\] \002AntiLongText\002 bans users who write too many words in one line."
set black(say.en.man.200) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.201) "\[MAN\] \002%char%set\002 (+/-)antilongtext ; \002%botnick% set\002 (+/-)antilongtext ; \002(PRIVMSG) set\002 <#chan> (+/-)antilongtext"
set black(say.en.man.202) "\[MAN\] Optional settings: \002antilongtext-reason\002, antilongtext-bantime, \002antilongtext-warn\002, antilongtext-banmethod, \002antilongtextmax\002, antilongtext-banmask"
set black(say.en.man.203) "View options settings: \002%char%show\002 <setting> ; \002%botnick% show\002 <setting> ; \002(PRIVMSG) show\002 <#chan> <setting>"

#BadQuitPart

set black(say.en.man.204) "\[MAN\] \002AntiBadQuitPart\002 bans users who use *bad/forbidden* words when parting a channel (supports wildcards)."
set black(say.en.man.205) "\[MAN\] USAGE SYNTAXES:"
set black(say.en.man.206) "\[MAN\] \002%char%set\002 (+/-)badquitpart ; \002%botnick% set\002 (+/-)badquitpart ; \002(PRIVMSG) set\002 <#chan> (+/-)badquitpart"
set black(say.en.man.207) "\[MAN\] \002%char%badquitpart\002 \[#chan\] add <word> ; \002%char%badquitpart\002 \[#chan\] list"
set black(say.en.man.208) "\[MAN\] \002%char%badquitpart\002 \[#chan\] add <+word> (add exceptions) ; \002%char%badquitpart\002 \[#chan\] del <no. list> (remove badquitpart from list)"
set black(say.en.man.209) "\[MAN\] Optional settings: \002antibadquitpart-reason\002, antibadquitpart-bantime, \002antibadquitpart-banmethod\002, antibadquitpart-banmask"

#AntiJoinPart

set black(say.en.man.210) "\[MAN\] \002AntiJoinPart\002 bans users who join and part too fast on a channel."
set black(say.en.man.211) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.212) "\[MAN\] \002%char%set (+/-)antijoinpart\002 ; %botnick% set (+/-)antijoinpart ; \002(PRIVMSG) set <#chan> (+/-)antijoinpart\002"
set black(say.en.man.213) "\[MAN\] Optional settings: \002antijoinpart-reason\002, antijoinpart-bantime, \002antijoinpart-banmethod\002, antijoinpart-banmask"
set black(say.en.man.214) "View options settings: \002%char%show\002 <setting> ; \002%botnick% show\002 <setting> ; \002(PRIVMSG) show\002 <#chan> <setting>"

#AntiSpam

set black(say.en.man.215) "\[MAN\] \002AntiSpam\002 bans users who send spam messages containing \001#\001 or \001*www.*\001 (see also \002!man spamjoinmessage\002)."
set black(say.en.man.216) "\[MAN\] USAGE SYNTAXES:"
set black(say.en.man.217) "\[MAN\] \002%char%set\002 (+/-)antispam ; \002%botnick% set\002 (+/-)antispam ; \002(PRIVMSG) set\002 <#chan> (+/-)antispam"
set black(say.en.man.217_1) "\[MAN\] \002%char%antispam\002 \[#chan\] add <*text*> ; \002%char%antispam \[#chan\] list\002"
set black(say.en.man.217_2) "\[MAN\] \002%char%antispam\002 \[#chan\] add <+word> (add except) ; \002%char%antispam\002 \[#chan\] del <no. list> (remove antispam from list)"
set black(say.en.man.218) "\[MAN\] Optional settings: \002antispam-reason\002, antispam-message, \002antispam-bantime\002, antispam-banmask, \002antispam-scantime\002"
set black(say.en.man.219) "View options settings: \002%char%show\002 <setting> ; \002%botnick% show\002 <setting> ; \002(PRIVMSG) show\002 <#chan> <setting>"

#AntiRepeat

set black(say.en.man.221) "\[MAN\] \002AntiRepeat\002 bans users who repeats the same text too often on a channel."
set black(say.en.man.222) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.223) "\[MAN\] \002%char%set\002 (+/-)antirepeat ; \002%botnick% set\002 (+/-)antirepeat ; \002(PRIVMSG) set\002 <#chan> (+/-)antirepeat"
set black(say.en.man.224) "\[MAN\] Optional settings: \002antirepeat-reason\002, antirepeat-bantime, \002antirepeat-warn\002, antirepeat-banmethod, \002antirepeat-banmask\002, antirepeat-setting"
set black(say.en.man.225) "View options settings: \002%char%show\002 <setting> ; \002%botnick% show\002 <setting> ; \002(PRIVMSG) show\002 <#chan> <setting>"

#AntiColor

set black(say.en.man.226) "\[MAN\] \002AntiColor\002 bans users who use \002COLORS\002 in their messages."
set black(say.en.man.227) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.228) "\[MAN\] \002%char%set\002 (+/-)anticolor ; \002%botnick% set\002 (+/-)anticolor ; \002(PRIVMSG) set\002 <#chan> (+/-)anticolor"
set black(say.en.man.229) "\[MAN\] Optional settings: \002anticolor-reason\002, anticolor-bantime, \002anticolor-warn\002, anticolor-banmethod, \002anticolor-banmask\002"
set black(say.en.man.230) "View options settings: \002%char%show\002 <setting> ; \002%botnick% show\002 <setting> ; \002(PRIVMSG) show\002 <#chan> <setting>"

#AntiBold

set black(say.en.man.231) "\[MAN\] \002AntiBold\002 bans users who use \002BOLD\002 characters."
set black(say.en.man.232) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.233) "\[MAN\] \002%char%set\002 (+/-)antibold ; \002%botnick% set\002 (+/-)antibold ; \002(PRIVMSG) set\002 <#chan> (+/-)antibold"
set black(say.en.man.234) "\[MAN\] Optional settings: \002antibold-reason\002, antibold-bantime, \002antibold-warn\002, antibold-banmethod, \002antibold-banmask\002"
set black(say.en.man.235) "View options settings: \002%char%show\002 <setting> ; \002%botnick% show\002 <setting> ; \002(PRIVMSG) show\002 <#chan> <setting>"

#AntiUnderline

set black(say.en.man.236) "\[MAN\] \002AntiUnderline\002 bans users who use \002UNDERLINE\002 characters."
set black(say.en.man.237) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.238) "\[MAN\] \002%char%set\002 (+/-)antiunderline ; \002%botnick% set\002 (+/-)antiunderline ; \002(PRIVMSG) set\002 <#chan> (+/-)antiunderline"
set black(say.en.man.239) "\[MAN\] Optional settings: \002antiunderline-reason\002, antiunderline-bantime, \002antiunderline-warn\002, antiunderline-banmethod, \002antiunderline-banmask\002"
set black(say.en.man.240) "View options settings: \002%char%show\002 <setting> ; \002%botnick% show\002 <setting> ; \002(PRIVMSG) show\002 <#chan> <setting>"

#AntiCaps

set black(say.en.man.241) "\[MAN\] \002AntiCaps\002 bans users who abuse using of \002CAPS LOCK\002 characters."
set black(say.en.man.242) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.243) "\[MAN\] \002%char%set\002 (+/-)anticaps ; \002%botnick% set\002 (+/-)anticaps ; \002(PRIVMSG) set\002 <#chan> (+/-)anticaps"
set black(say.en.man.244) "\[MAN\] Optional settings: \002anticaps-reason\002, anticaps-bantime, \002anticaps-warn\002, anticaps-banmethod, \002anticaps-banmask\002"
set black(say.en.man.245) "View options settings: \002%char%show\002 <setting> ; \002%botnick% show\002 <setting> ; \002(PRIVMSG) show\002 <#chan> <setting>"

#BadNick

set black(say.en.man.246) "\[MAN\] \002BadNick\002 bans users who are using NICKNAMEs which contains *bad/forbidden* words/characters (supports wildcards)."
set black(say.en.man.247) "\[MAN\] USAGE SYNTAXES:"
set black(say.en.man.248) "\[MAN\] \002%char%set\002 (+/-)badnick ; \002%botnick% set\002 (+/-)badnick ; \002(PRIVMSG) set\002 <#chan> (+/-)badnick"
set black(say.en.man.249) "\[MAN\] \002%char%badnick\002 \[#chan\] add <word> ; \002%char%badnick \[#chan\] list\002"
set black(say.en.man.250) "\[MAN\] \002%char%badnick\002 \[#chan\] add <+word> (add exceptions) ; \002%char%badnick\002 \[#chan\] del <no. list> (remove badnick from list)"
set black(say.en.man.251) "\[MAN\] Optional settings: \002badnick-reason\002, badnick-bantime, \002badnick-banmask\002, badnick-bmethod, \002badnick-banwait\002"

#BadRealname

set black(say.en.man.252) "\[MAN\] \002BadRealname\002 bans users who are using REALNAMEs which contains *bad/forbidden* words/characters (supports wildcards)."
set black(say.en.man.253) "\[MAN\] USAGE SYNTAXES:"
set black(say.en.man.254) "\[MAN\] \002%char%set\002 (+/-)badrealname ; \002%botnick% set\002 (+/-)badrealname ; \002(PRIVMSG) set\002 <#chan> (+/-)badrealname"
set black(say.en.man.255) "\[MAN\] \002%char%badrealname\002 \[#chan\] add <word> ; \002%char%badrealname \[#chan\] list\002"
set black(say.en.man.256) "\[MAN\] \002%char%badrealname\002 \[#chan\] add <+word> (add exceptions) ; \002%char%badrealname\002 \[#chan\] del <no. list> (remove badrealname from list)"
set black(say.en.man.257) "\[MAN\] Optional settings: \002badrealname-reason\002, badrealname-bantime, \002badrealname-banmask\002"

#AutoOp

set black(say.en.man.258) "\[MAN\] \002AutoOp\002 gives the opportunity to every user who joins a channel to have \002OP (@)\002."
set black(say.en.man.259) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.260) "\[MAN\] \002%char%set\002 (+/-)autoop ; \002%botnick% set\002 (+/-)autoop ; \002(PRIVMSG) set\002 <#chan> (+/-)autoop"

#AutoVoice

set black(say.en.man.261) "\[MAN\] \002AutoVoice\002 gives the opportunity to every user who joins a channel to have \002VOICE (+v)\002."
set black(say.en.man.262) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.263) "\[MAN\] \002%char%set\002 (+/-)autovoice ; \002%botnick% set\002 (+/-)autovoice ; \002(PRIVMSG) set\002 <#chan> (+/-)autovoice"

#AntiJoinFlood

set black(say.en.man.264) "\[MAN\] \002AntiJoinFlood\002 sets certain channel modes and bans users who undertake \002massjoin\002 actions. Also bans users who joins and part/quit too fast."
set black(say.en.man.265) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.266) "\[MAN\] \002%char%set\002 (+/-)antijoinflood ; \002%botnick% set\002 (+/-)antijoinflood ; \002(PRIVMSG) set\002 <#chan> (+/-)antijoinflood"
set black(say.en.man.267) "\[MAN\] Optional settings: \002joinflood\002 (<number joins>:<seconds>)"
set black(say.en.man.268) "View options settings: \002%char%show\002 <setting> ; \002%botnick% show\002 <setting> ; \002(PRIVMSG) show\002 <#chan> <setting>"

#AntiChanFlood

set black(say.en.man.269) "\[MAN\] \002AntiChanFlood\002 bans users who flood a channel with text/words."
set black(say.en.man.270) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.271) "\[MAN\] \002%char%set\002 (+/-)antichanflood ; \002%botnick% set\002 (+/-)antichanflood ; \002(PRIVMSG) set\002 <#chan> (+/-)antichanflood"
set black(say.en.man.272) "\[MAN\] Optional settings: \002antichanflood-reason\002 (default reason), \002antichanflood-bantime\002 (default bantime), \002chanflood\002 (<number lines>:<seconds>)"
set black(say.en.man.273) "View options settings: \002%char%show\002 <setting> ; \002%botnick% show\002 <setting> ; \002(PRIVMSG) show\002 <#chan> <setting>"

#BadIdent

set black(say.en.man.274) "\[MAN\] \002BadIdent\002 bans users who are using IDENTs which contains *bad/forbidden* words/characters (supports wildcards)."
set black(say.en.man.275) "\[MAN\] USAGE SYNTAXES:"
set black(say.en.man.276) "\[MAN\] \002%char%set\002 (+/-)badident ; \002%botnick% set\002 (+/-)badident ; \002(PRIVMSG) set\002 <#chan> (+/-)badident"
set black(say.en.man.277) "\[MAN\] \002%char%badident\002 \[#chan\] add <word> ; \002%char%badident \[#chan\] list\002"
set black(say.en.man.278) "\[MAN\] \002%char%badident\002 \[#chan\] add <+word> (add exceptions) ; \002%char%badident\002 \[#chan\] del <no. list> (remove badident from list)"
set black(say.en.man.279) "\[MAN\] Optional settings: \002badident-reason\002 (default reason), \002badident-bantime\002 (default bantime), \002badident-banmask\002 (default banmask)"

#ShowHandle

set black(say.en.man.280) "\[MAN\] \002ShowHandle\002 will append the handle of user who adds a ban to the ban message."
set black(say.en.man.281) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.282) "\[MAN\] \002%char%set\002 (+/-)showhandle ; \002%botnick% set\002 (+/-)showhandle ; \002(PRIVMSG) set\002 <#chan> (+/-)showhandle"

#ShowCount

set black(say.en.man.283) "\[MAN\] \002ShowCount\002 will append the total count number of bans to the ban message."
set black(say.en.man.284) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.285) "\[MAN\] \002%char%set\002 (+/-)showcount ; \002%botnick% set\002 (+/-)showcount ; \002(PRIVMSG) set\002 <#chan> (+/-)showcount"

#Showtime

set black(say.en.man.286) "\[MAN\] \002Showtime\002 will append the expiration time to the ban message."
set black(say.en.man.287) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.288) "\[MAN\] \002%char%set\002 (+/-)showtime ; \002%botnick% set\002 (+/-)showtime ; \002(PRIVMSG) set\002 <#chan> (+/-)showtime"

#ShowUrl

set black(say.en.man.289) "\[MAN\] \002ShowUrl\002 will append the channel URL to the ban reason (see \002!man url\002)."
set black(say.en.man.290) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.291) "\[MAN\] \002%char%set\002 (+/-)showurl ; \002%botnick% set\002 (+/-)showurl ; \002(PRIVMSG) set\002 <#chan> (+/-)showurl"

#xBanTime

set black(say.en.man.292) "\[MAN\] \002xBanTime\002 sets the X ban-time (ONLY if \002+xonly\002 module is enabled)."
set black(say.en.man.293) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.294) "\[MAN\] \002%char%set\002 xbantime <bantime X> ; %botnick% set\002 xbantime <bantime X> ; \002(PRIVMSG) set\002 <#chan> xbantime <bantime X>"

#xBanLevel

set black(say.en.man.295) "\[MAN\] \002xBanLevel\002 sets the X access-level (ONLY if \002+xonly\002 module is enabled)"
set black(say.en.man.296) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.297) "\[MAN\] \002%char%set\002 xbanlevel <level X> ; \002%botnick% set\002 xbanlevel <level X> ; \002(PRIVMSG) set\002 <#chan> xbanlevel <level X>"

#oProtect

set black(say.en.man.298) "\[MAN\] \002oProtect\002 excepts those who have \002OP (@)\002 from all protection."
set black(say.en.man.299) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.300) "\[MAN\] \002%char%set\002 (+/-)oprotect ; \002%botnick% set\002 (+/-)oprotect ; \002(PRIVMSG) set\002 <#chan> (+/-)oprotect"

#vProtect

set black(say.en.man.301) "\[MAN\] \002vProtect\002 excepts those who have \002VOICE (+v)\002 from all protection."
set black(say.en.man.302) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.303) "\[MAN\] \002%char%set\002 (+/-)vprotect ; \002%botnick% set\002 (+/-)vprotect ; \002(PRIVMSG) set\002 <#chan> (+/-)vprotect"

#hoProtect

set black(say.en.man.304) "\[MAN\] \002hoProtect\002 excepts those who have \002HALFOP (+h %)\002 from all protection."
set black(say.en.man.305) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.306) "\[MAN\] \002%char%set\002 (+/-)hoprotect ; \002%botnick% set\002 (+/-)hoprotect ; \002(PRIVMSG) set\002 <#chan> (+/-)hoprotect"

#ShowID

set black(say.en.man.307) "\[MAN\] \002ShowID\002 will append the \002ID number\002 of ban from the eggdrop banlist to the ban reason."
set black(say.en.man.308) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.309) "\[MAN\] \002%char%set\002 (+/-)showid ; \002%botnick% set\002 (+/-)showid; \002(PRIVMSG) set\002 <#chan> (+/-)showid"


################################################# MAN MODULES #####################################################

 
#xTools

set black(say.en.man.407) "\[MAN\] \002xTools\002 gives eggdrop the permission to request Op, Voice, Invite or to Unban himself by *X*."
set black(say.en.man.408) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.409) "\[MAN\] \002%char%set\002 (+/-)xtools ; \002%botnick% set\002 (+/-)xtools ; \002(PRIVMSG) set\002 <#chan> (+/-)xtools"

#BadChan

set black(say.en.man.410) "\[MAN\] \002BadChan\002 forbids people who are co-channeling *bad/forbidden* channels to stay on a specified channel (supports wildcards). Now supports adding \002REGEX\002 badchans type"
set black(say.en.man.411) "\[MAN\] USAGE SYNTAXES:"
set black(say.en.man.412) "\[MAN\] \002%char%badchan\002 <ON|OFF> ; \002%botnick% badchan\002 <ON|OFF> ; \002(PRIVMSG) badchan\002 <#chan> <ON|OFF>"
set black(say.en.man.413) "\[MAN\] \002%char%badchan add\002 <#badchan> \[reason\] (add badchan) ; \002%char%badchan \[#chan\] list\002 (see badchans list)"
set black(say.en.man.414) "\[MAN\] \002%char%badchan add\002 <#badchan> \[global\] \[reason\]\002 ; %char%badchan del\002 <no. list> \[global\] ; \002%char%badchan list\002 \[global\]"
set black(say.en.man.415) "\[MAN\] \002%char%badchan add\002 <+#badchan> (add exceptions) ; \002%char%badchan regex\002 <#regex> \[reason\] \001(regex \001example: #\[a-z\]+\[0-9\]\[0-9\])\001 , adds a REGEX type BADCHAN, the channels that matches this expression will be considered BADCHANS)"
set black(say.en.man.416) "\[MAN\] Optional settings: \002badchan-reason\002, badchan-bantime, \002badchan-bmethod\002, badchan-scantime, \002badchan-banwait\002, showbadchan"

#Anunt

set black(say.en.man.417) "\[MAN\] \002Anunt/Advert\002 displays announcements/ads on a channel over a certain amount of time and depending on the channel activity (see also \002%char%man anunt-showtime\002 & supports !%chan% and !%botnick%)."
set black(say.en.man.417_1) "\[MAN\] ** Note: These messages will be displayed one by one and ONLY if there's activity on that channel. Otherwise the eggdrop waits in stand by until the first sign of channel activity (join, part, chat, etc.). **"
set black(say.en.man.418) "\[MAN\] USAGE SYNTAXES:"
set black(say.en.man.419) "\[MAN\] \002%char%anunt <ON|OFF>\002 ; %botnick% anunt <ON|OFF> ; \002(PRIVMSG) anunt <#chan> <ON|OFF>\002"
set black(say.en.man.420) "\[MAN\] \002%char%anunt\002 \[#chan\] add <text> ; \002%char%anunt \[#chan\] list\002 ; \002%char%anunt\002 \[#chan\] del <no. list>"
set black(say.en.man.421) "\[MAN\] \002Remember:\002 To add more than 1 sentence in an add use \002%char%anunt add <text1>~<text2>..\002 and eggdrop will show the add as 2 different senteces."

#Limit

set black(say.en.man.422) "\[MAN\] \002Limit\002 has the role of \"handling\" of the channel limit."
set black(say.en.man.423) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.424) "\[MAN\] \002%char%limit\002 <ON|OFF> ; \002%botnick% limit\002 <ON|OFF> ; \002(PRIVMSG) limit\002 <#chan> <ON|OFF>"
set black(say.en.man.425) "\[MAN\] \002%char%limit set <number>\002 (default limit number)"
set black(say.en.man.426) "View options settings: \002%char%show\002 <setting> ; \002%botnick% show\002 <setting> ; \002(PRIVMSG) show\002 <#chan> <setting>"

#Topic

set black(say.en.man.427) "\[MAN\] \002Topic\002 sets the channel topic, which can be seen in the \002%char%info #channel\002 reply. If no topic text is specified, the current channel topic will be added."
set black(say.en.man.427_1) "\[MAN\] ** Note: If you want to reset/remove the topic use: \002%char%topic unset\002. **"
set black(say.en.man.428) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.429) "\[MAN\] \002%char%topic\002 \[#chan\] set <text> ; \002%botnick% topic\002 \[#chan\] set <text> ; \002(PRIVMSG) topic\002 \[#chan\] set <text>"
set black(say.en.man.430) "View options settings: \002%char%show\002 <setting> ; \002%botnick% show\002 <setting> ; \002(PRIVMSG) show\002 <#chan> <setting>"

#CloneScan

set black(say.en.man.431) "\[MAN\] \002CloneScan\002 scans channel for clones and ban them."
set black(say.en.man.432) "\[MAN\] USAGE SYNTAXES:"
set black(say.en.man.433) "\[MAN\] \002%char%set\002 (+/-)clonescan ; \002%botnick% set\002 (+/-)clonescan ; \002(PRIVMSG) set\002 <#chan> (+/-)clonescan"
set black(say.en.man.433_1) "\[MAN\] \002%char%clonescan add\002 <ip|mask> ; \002%char%clonescan del\002 <no. list> ; \002%char%clonescan list\002"
set black(say.en.man.434) "\[MAN\] Optional settings: \002clonescan-maxclone\002 (max clones number), \002clonescan-bantime\002 (default bantime), \002clonescan-reason\002 (default reason)"
set black(say.en.man.435) "View options settings: \002%char%show\002 <setting> ; \002%botnick% show\002 <setting> ; \002(PRIVMSG) show\002 <#chan> <setting>"

#Seen

set black(say.en.man.436) "\[MAN\] \002Seen\002 search for a person with specified nick (supports wildcards). Also, it has a database for each channel."
set black(say.en.man.437) "\[MAN\] USAGE SYNTAXES:"
set black(say.en.man.438_1) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.438) "\[MAN\] \002%char%set\002 (+/-)seen ; \002%botnick% set\002 (+/-)seen ; \002(PRIVMSG) set\002 <#canal> (+/-)seen"
set black(say.en.man.438_2) "\[MAN\] \002%char%seen\002 <nick|ip|host> ; \002%botnick% seen\002 <nick|ip|host> ; \002(PRIVMSG) seen\002 \[#chan\] <nick|ip|host>"
set black(say.en.man.438_3) "\[MAN\] \002%char%seen\002 \[global\] <nick|ip|host> ; \002%botnick% seen\002 \[global\] <nick|ip|host> ; \002(PRIVMSG) seen\002 \[#chan|global\] <nick|ip|host>"
set black(say.en.man.439) "\[MAN\] Optional settings: \002%char%seenreply\002"
set black(say.en.man.440) "View options settings: \002%char%show\002 <setting> ; \002%botnick% show\002 <setting> ; \002(PRIVMSG) show\002 <#chan> <setting>"

#Greet

set black(say.en.man.441) "\[MAN\] \002Greet\002 adds a welcome message and send it to all users who joins that channel (see also \002%char%man infoline\002 and \002%char%man count\002)."
set black(say.en.man.442) "\[MAN\] USAGE SYNTAXES:"
set black(say.en.man.443) "\[MAN\] \002%char%greet\002 <ON|OFF> ; \002%botnick% greet\002 <ON|OFF> ; \002(PRIVMSG) greet\002 <#chan> <ON|OFF>"
set black(say.en.man.444) "\[MAN\] \002%char%greet\002 \[#chan\] set <message>\002 ; \002%botnick% greet\002 \[#chan\] set <message> ; \002(PRIVMSG) greet\002 \[#chan\] set <message>"
set black(say.en.man.445) "\[MAN\] \002%char%set greet-method <method>\002 ( NOTICE | PRIVMSG )"
set black(say.en.man.446) "\[MAN\] ** Note: To add more than 1 sentence in an greet use \002%char%greet add <message1>~<message2>\002.. and eggdrop will show the greet as 2 different senteces (supports %countchan%, %nick%, %time% and %count%). **"

#Leave

set black(say.en.man.447) "\[MAN\] \002Leave\002 adds a part message and send it to all users who leaves that channel."
set black(say.en.man.448) "\[MAN\] USAGE SYNTAXES:"
set black(say.en.man.449) "\[MAN\] \002%char%leave\002 <ON|OFF> ; \002%botnick% leave\002 <ON|OFF> ; \002(PRIVMSG) leave\002 <#chan> <ON|OFF>"
set black(say.en.man.450) "\[MAN\] \002%char%leave\002 \[#chan\] set <message>\002 ; \002%botnick% leave\002 \[#chan\] set <message> ; \002(PRIVMSG) leave\002 \[#chan\] set <message>"
set black(say.en.man.451) "\[MAN\] \002%char%set leave-method <method>\002 ( NOTICE | PRIVMSG )"
set black(say.en.man.452) "\[MAN\] ** Note: To add more than 1 sentence in an leave use \002%char%leave add <message1>~<message2>\002.. and eggdrop will show the leave as 2 different senteces. **"

#Idle

set black(say.en.man.453) "\[MAN\] \002Idle\002 forbids users with \002op (@)\002, \002halfop (+h %)\002 or \002voice (+v)\002 to idle."
set black(say.en.man.453_1) "\[MAN\] Format period: <X>\002m\002 = minutes, <X>\002h\002 = hours, <X>\002d\002 = days"
set black(say.en.man.454) "\[MAN\] USAGE SYNTAXES:"
set black(say.en.man.455) "\[MAN\] \002%char%idle\002 <(+/-)o / (+/-)v / (+/-)ho> ; \002%botnick% idle\002 <(+/-)o / (+/-)v / (+/-)ho> ; \002(PRIVMSG) idle\002 <#chan> <(+/-)o / (+/-)v / (+/-)ho>"
set black(say.en.man.456) "\[MAN\] \002%char%idle add\002 <nick> (add exception from idle), \002%char%idle <list>\002 (list exceptions), \002%char%idle del\002 <nick> (delete exception)"
set black(say.en.man.457) "\[MAN\] Optional settings: \002idleopmax\002 <period> (default time idledeop) ; \002idlevoicemax\002 <period> (default time idlevoice) ; \002idlehalfopmax\002 <period> (default time idlehalfop) ; \002idle-scantime\002 <period> (scan time)"
set black(say.en.man.458) "View options settings: \002%char%show\002 <setting> ; \002%botnick% show\002 <setting> ; \002(PRIVMSG) show\002 <#chan> <setting>"
set black(say.en.man.458_1) "\[MAN\] For informations about \002idlevoice\002 please check: \002%char%man idle\002"
set black(say.en.man.458_2) "\[MAN\] For informations about \002idleop\002 please check: \002%char%man idle\002"
set black(say.en.man.458_3) "\[MAN\] For informations about \002idlehalfop\002 please check: \002%char%man idle\002"

#BackChan

set black(say.en.man.459) "\[MAN\] \002BackChan\002 gives the option for every channel to have a back-channel, in which eggdrop will say the bans given by him to the mainchannel."
set black(say.en.man.460) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.461) "\[MAN\] \002%char%set\002 \[#chan\] backchan <#backchan> ; \002%botnick% set\002 \[#chan\] backchan <#backchan> ; \002(PRIVMSG) set\002 <#chan> backchan <#backchan>"
set black(say.en.man.462) "\[MAN\] ** Note: After the set of the backchannel you will be able to use all the ban commands but they will be applied on \002<#chan>\002 (the main channel). Supports only one main channel with a single backchan, couldn't handle 2 or more channels with the same backchan. **"
set black(say.en.man.463) "\[MAN\] \002ChanReport\002 (BackChan) is a module which, when enabled, will give the option for every channel to have a back-channel, in which eggdrop will say the bans given by him to \002<#chan>\002 (the main channel)."

#TopWords

set black(say.en.man.464) "\[MAN\] \002TopWords\002 records users activity from a channel (number of written words, lines, letters, etc.)."
set black(say.en.man.465) "\[MAN\] USAGE SYNTAXES:"
set black(say.en.man.466) "\[MAN\] \002%char%set\002 (+/-)topwords ; \002%botnick% set\002 (+/-)topwords ; \002(PRIVMSG) set\002 <#chan> (+/-)topwords"
set black(say.en.man.467) "\[MAN\] \002%char%topwords\002 \[#chan\] <nick> \[total\] ; \002%char%topwords\002 \[#chan\] <nick> \[total\] ; \002(PRIVMSG) topwords\002 \[#chan\] <nick> \[total\]"
set black(say.en.man.467_1) "\[MAN\] \002%char%topwords\002 \[#chan\] <nick> \[total|reset\]  ; \002(PRIVMSG) topwords\002 \[#chan\] <nick> \[total|reset\]"
set black(say.en.man.467_2) "\[MAN\] \002%char%topwords\002 \[#chan\] add <nick> (add exceptions) ; \002%char%topwords\002 \[#chan\] list (list exceptions) ; \002%char%topwords\002 \[#chan\] del <nick> (remove exception)"

#AntiTake

set black(say.en.man.473) "\[MAN\] \002Antitake\002 has 2 settings: The first setting stops users without access from \002taking OP (@)\002 from other ops. It will deop the op taking ops, and reop the op who lost ops. The second setting stops users without access from \002giving OP (@)\002 to another user. In such a case, both users will be deopped."
set black(say.en.man.474) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.475) "\[MAN\] \002%char%set\002 (+/-)dontdeop ; \002%botnick% set\002 (+/-)dontdeop (deop protection) ; \002%char%set\002 (+/-)dontop ; \002%botnick% set\002 (+/-)dontop (op protection)"
set black(say.en.man.475_1) "\[MAN\] For informations about \002dontdeop\002 please check: \002%char%man antitake\002"
set black(say.en.man.475_2) "\[MAN\] For informations about \002dontop\002 please check: \002%char%man antitake\002"

#Private

set black(say.en.man.476) "\[MAN\] \002Private\002 forbids users without access to join a specified channel (by banning them) unless they have been added to the except list."
set black(say.en.man.477) "\[MAN\] USAGE SYNTAXES:"
set black(say.en.man.478) "\[MAN\] \002%char%set\002 (+/-)private ; \002%botnick% set\002 (+/-)private ; \002(PRIVMSG) set\002 <#chan> (+/-)private"
set black(say.en.man.479) "\[MAN\] \002%char%private add\002 <nick> <ip|mask> (add exception), \002%char%private list\002 (list exceptions), \002%char%private del\002 <nick> (del exception)"
set black(say.en.man.480) "\[MAN\] Optional settings: \002private-reason\002 (default reason); \002private-bantime\002 (default bantime)"
set black(say.en.man.481) "View options settings: \002%char%show\002 <setting> ; \002%botnick% show\002 <setting> ; \002(PRIVMSG) show\002 <#chan> <setting>"

#AutoBroadcast

set black(say.en.man.482) "\[MAN\] \002AutoBroadCast\002 will broadcast messages, one at a time, on all channels the eggdrop is in."
set black(say.en.man.483) "\[MAN\] USAGE SYNTAXES:"
set black(say.en.man.484) "\[MAN\] \002%char%bt\002 <ON|OFF> ; \002%botnick% bt\002 <ON|OFF> ; \002(PRIVMSG) bt\002 <#chan> <ON|OFF>"
set black(say.en.man.485) "\[MAN\] \002%char%bt add\002 <message> ; \002%char%bt\002 list ; \002%char%bt del\002 <no. list>"
set black(say.en.man.486) "\[MAN\] \002%char%set\002 <#chan> (+/-)silent (it will NOT broadcast in that channel)"
set black(say.en.man.486_1) "\[MAN\] For informations about \002silent\002 please check: \002%char%man autobroadcast\002"

#Language

set black(say.en.man.487) "\[MAN\] \002Lang\002 allows you to select the language in which eggdrop will reply to you and also sets the default language messages used in kick/ban reasons."
set black(say.en.man.487_1) "\[MAN\] Languages available: \002RO\002 = romanian ; \002EN\002 = english ; \002ES\002 = spanish"
set black(say.en.man.488) "\[MAN\] USAGE SYNTAXES:"
set black(say.en.man.489) "\[MAN\] \002%char%set\002 \[#chan\] lang <language> ; \002%botnick% set\002 \[#chan\] lang <language> ; \002(PRIVMSG) set\002 \[#chan\] lang <language>"
set black(say.en.man.489_1) "\[MAN\] \002%char%myset\002 lang <language> ; \002%botnick% myset\002 lang <language> ; \002(PRIVMSG) myset\002 lang <language> (default user language)"

#TCL

set black(say.en.man.490) "\[MAN\] \002TCL\002 supports uploading, loading and unloading Tcl scripts directly through your eggdrop (uploading is restricted to \002.tcl\002 files ONLY)."
set black(say.en.man.491) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.492) "\[MAN\] \002%char%tcl <list>\002 (see scripts); \002%char%tcl wget\002 <link/name.tcl>; \002%char%tcl load\002 <name.tcl> (load a tcl script); \002%char%tcl unload\002 <name.tcl> (unload a tcl script); \002%char%tcl info\002 <name.tcl> (information about a tcl) "


#NeXt

set black(say.en.man.493) "\[MAN\] \002Next\002 allows you to assist users who need your help in an orderly fashion (used in help channels)."
set black(say.en.man.494) "\[MAN\] USAGE SYNTAXES:"
set black(say.en.man.495) "\[MAN\] \002%char%set\002 (+/-)next ; \002%botnick% set\002 (+/-)next ; \002(PRIVMSG) set\002 <#chan> (+/-)next"
set black(say.en.man.496) "\[MAN\] \002%char%next\002 (voice next user) ; \002%char%next list\002 (shows waiting list), \002%char%helped\002 <nick>, \002%char%noidle\002 <nick>, \002%char%skip\002 <nick> (moving to the end of the list)"
set black(say.en.man.497) "\[MAN\] Optional settings: \002next-reason\002 (default reason), \002next-bantime\002 (default bantime)"
set black(say.en.man.498) "View options settings: \002%char%show\002 <setting> ; \002%botnick% show\002 <setting> ; \002(PRIVMSG) show\002 <#chan> <setting>"


################################################# MAN COMANDS #####################################################


#upTime

set black(say.en.man.605) "\[MAN\] \002upTime\002 allows you to find out how long the eggdrop has been started for, what time was connected to the server and also the server is connected to."
set black(say.en.man.606) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.607) "\[MAN\] \002%char%uptime\002 ; %botnick% uptime ; \002(PRIVMSG) uptime\002"

#Status

set black(say.en.man.608) "\[MAN\] \002Status\002 allows you to find information about the eggdrop like channels monitored, owner, version, total users and the eggdrop owner."
set black(say.en.man.609) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.610) "\[MAN\] \002%char%status\002 ; %botnick% status ; \002(PRIVMSG) status\002"

#Set

set black(say.en.man.611) "\[MAN\] \002Set\002 applies or removes eggdrop flags for the channel (certain settings that tells your eggdrop how to behave under certain conditions)."
set black(say.en.man.612) "\[MAN\] USAGE SYNTAXES:"
set black(say.en.man.613) "\[MAN\] \002%char%set\002 (+/-)flag / <flag|str|option> <description> ; \002%botnick% set\002 (+/-)flag / <flag|str|option> <description> ; \002(PRIVMSG) set\002 <#chan> (+/-)flag / <flag|str|option> <description>"
set black(say.en.man.614) "\[MAN\] \002%char%set\002 global <flag|str|option> <description> (setting for all channels)"
set black(say.en.man.615) "\[MAN\] Example: \002%char%set\002 chanmode +k <key> (setting key)"

#Jump

set black(say.en.man.620) "\[MAN\] \002Jump\002 change which server your eggdrop is connected to."
set black(say.en.man.621) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.622) "\[MAN\] \002%char%jump\002 <irc server> ; \002%botnick% jump\002 <irc server> ; \002(PRIVMSG) jump\002 <irc server>"

#msg

set black(say.en.man.623) "\[MAN\] \002MSG\002 sends specified <message> to \[target\] (channel, query or chat window)."
set black(say.en.man.624) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.625) "\[MAN\] \002%char%msg\002 \[target\] <message> ; \002%botnick% msg\002 \[target\] <message> ; \002(PRIVMSG) msg\002 \[target\] <message>"

#Broadcast

set black(say.en.man.626) "\[MAN\] \002Broadcast\002 allows you to send messages to all channels the eggdrop is in."
set black(say.en.man.627) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.628) "\[MAN\] \002%char%broadcast\002 <message> ; \002%botnick% broadcast\002 <message> ; \002(PRIVMSG) broadcast\002 <message>"

#Ignore

set black(say.en.man.629) "\[MAN\] \002Ignore\002 allows you to add, list and remove \002ignores\002 from your eggdrop. If you do not specify a \002\[duration\]\002, the default value will be used."
set black(say.en.man.629_1) "\[MAN\] Format duration: <X>\002m\002 = minutes, <X>\002h\002 = hours, <X>\002d\002 = days"
set black(say.en.man.630) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.631) "\[MAN\] \002%char%ignore list\002 ; \002%char%ignore add\002 <ip|mask> \[duration\] \[reason\] ; \002%char%ignore del\002 <ip|host>"

#Chat

set black(say.en.man.632) "\[MAN\] \002Chat\002 allows you to connect to your eggdrop's botnet (same as \002/CTCP CHAT\002 %botnick%)."
set black(say.en.man.633) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.634) "\[MAN\] \002%char%chat\002 ; %botnick% chat ; \002(PRIVMSG) chat\002"

#Channels

set black(say.en.man.638) "\[MAN\] \002Channels\002 allows you to view all channels that your eggdrop is joined to."
set black(say.en.man.639) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.640) "\[MAN\] \002%char%channels\002 ; %botnick% channels ; \002(PRIVMSG) channels\002"

#Nick

set black(say.en.man.641) "\[MAN\] \002Nick\002 allows you to change your eggdrop's nickname."
set black(say.en.man.642) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.643) "\[MAN\] \002%char%nick\002 <newnick> ; \002%botnick% nick\002 <newnick> ; \002(PRIVMSG) nick\002 <newnick>"
set black(say.en.man.643_1) "\[MAN\] \002%char%set\002 nick <newnick> ; \002%botnick% set nick\002 <newnick> ; \002(PRIVMSG) set nick\002 <newnick> (permanent setting)"

#Restart 

set black(say.en.man.644) "\[MAN\] \002Restart\002 allows you to make the eggdrop restart as a background process on the shell server."
set black(say.en.man.645) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.646) "\[MAN\] \002%char%restart\002 ; %botnick% restart ; \002(PRIVMSG) restart\002"
set black(say.en.man.647) "\[MAN\] ** Note: This command is mainly used if the bot is abnormally lagged or malfunctioning. **"

#Rehash

set black(say.en.man.648) "\[MAN\] \002Rehash\002 causes the bot to reload all files whenever changes are made to a eggdrop's user or channel records."
set black(say.en.man.649) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.650) "\[MAN\] \002%char%rehash\002 ; %botnick% rehash ; \002(PRIVMSG) rehash\002"

#Die

set black(say.en.man.651) "\[MAN\] \002Die\002 sends a shutdown signal to your eggdrop."
set black(say.en.man.652) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.653) "\[MAN\] \002%char%die\002 ; %botnick% die ; \002(PRIVMSG) die\002"

#Suspend

set black(say.en.man.654) "\[MAN\] \002Suspend\002 suspends a channel from your eggdrop's channels database. This prevents your bot from joining the channel or acting in it."
set black(say.en.man.655) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.656) "\[MAN\] \002%char%suspend\002 <#chan> \[reason\] ; \002%botnick% suspend\002 <#chan> \[reason\] ; \002(PRIVMSG) suspend\002 <#chan> \[reason\]"

#unSuspend

set black(say.en.man.657) "\[MAN\] \002unSuspend\002 cancels the suspension for a channel from your eggdrop channels database. This allows your bot to join the channel and act in it."
set black(say.en.man.658) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.659) "\[MAN\] \002%char%unsuspend\002 <#chan> ; \002%botnick% unsuspend\002 <#chan> ; \002(PRIVMSG) unsuspend\002 <#chan>"

#Save

set black(say.en.man.660) "\[MAN\] \002Save\002 saves changes whenever a change is made to any of the eggdrop channels or userfiles."
set black(say.en.man.661) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.662) "\[MAN\] \002%char%save\002 ; %botnick% save ; \002(PRIVMSG) save\002"

#AddChan

set black(say.en.man.663) "\[MAN\] \002AddChan\002 adds a channel to your eggdrop channels database."
set black(say.en.man.664) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.665) "\[MAN\] \002%char%addchan\002 <#chan> \[key\] ; \002%botnick% addchan\002 <#chan> \[\key\] ; \002(PRIVMSG) addchan\002 <#chan> \[\key\]\002"
set black(say.en.man.666) "\[MAN\] ** Note: If \002\[key\]\002 is specified eggdrop will join that \002<#chan>\002 using that key. **"

#DelChan

set black(say.en.man.667) "\[MAN\] \002DelChan\002 removes a channel from your eggdrop channels database."
set black(say.en.man.668) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.669) "\[MAN\] \002%char%delchan\002 <#chan> <reason> ; \002%botnick% delchan\002 <#chan> <reason> ; \002(PRIVMSG) delchan\002 <#chan> <reason>"

#Purge

set black(say.en.man.670) "\[MAN\] \002Purge\002 deletes a channel from eggdrop's channel database. This can ONLY be used by a channel manager."
set black(say.en.man.671) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.672) "\[MAN\] \002%char%purge\002 <#chan> <reason> ; \002%botnick% purge\002 <#chan> <reason> ; \002(PRIVMSG) purge\002 <#chan> <reason>"

#AddInfo

set black(say.en.man.676) "\[MAN\] \002AddInfo\002 add a personalized greeting message for yourself. This will be available in \002%char%info\002 command but the eggdrop will say it when you join channel."
set black(say.en.man.677) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.678) "\[MAN\] \002%char%addinfo\002 <text|reset> ; \002%botnick% addinfo\002 <text|reset> ; \002(PRIVMSG) addinfo\002 <text|reset>"

#Invite 

set black(say.en.man.679) "\[MAN\] \002Invite\002 invites a user to the channel. The eggdrop must be a channel operator (@)."
set black(say.en.man.680) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.680) "\[MAN\] \002%char%invite\002 <#chan> <nick> ; \002%botnick% invite\002 <#chan> <nick> ; \002(PRIVMSG) invite\002 <#chan> <nick>"

#Say

set black(say.en.man.681) "\[MAN\] \002Say\002 makes the eggdrop say a specified <message> to a channel."
set black(say.en.man.682) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.683) "\[MAN\] %char%say\002 \[#chan\] <message> ; \002%botnick% say\002 \[#chan\] <message> ; \002(PRIVMSG) say\002 <#chan> <message>"

#Refresh

set black(say.en.man.684) "\[MAN\] \002Topicrefresh\002 helps maintains topic of %chan% by re-applying the topic after a set interval of time."
set black(say.en.man.685) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.686) "\[MAN\] \002%char%set\002 (+/-)refresh | \002%botnick% set\002 (+/-)refresh ; \002(PRIVMSG) set\002 <#chan> (+/-)refresh"


############################################## MAN NEW MODULES/COMMANDS #####################################################


#NoLogged

set black(say.en.man.687) "\[MAN\] \002NoLogged\002 is an extra option for the \002voiceme\002 module that allows the command \002/msg %botnick% voiceme <#chan>\002 to be used and by users without a CService Username."
set black(say.en.man.688) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.689) "\[MAN\] \002%char%set\002 (+/-)nologged | \002%botnick% set\002 (+/-)nologged ; \002(PRIVMSG) set\002 <#chan> (+/-)nologged"

#Colors

set black(say.en.man.771) "\[MAN\] \002Colors\002 allows users to set certains personal \002colors\002 (from colors list) for the eggdrop replies."
set black(say.en.man.772) "\[MAN\] Colors list: bold, underline, red, blue, green, yellow, orange, cyan, grey, brown, purple, pink, black"
set black(say.en.man.773) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.774) "\[MAN\] \002%char%myset\002 colors <color1 color2 color3 color4> ; \002%botnick% myset\002 colors <color1 color2 color3 color4> ; \002(PRIVMSG) myset\002 colors <color1 color2 color3 color4>"

#ReportNick

set black(say.en.man.775) "\[MAN\] \002ReportNick\002 is a command that allows channel regular users to report a specific nickname for doing adverts or sending spam/lame messages (also access levels \002voice\002 and \002protect\002 can use it)."
set black(say.en.man.776) "\[MAN\] ** Note: If you want this command to work, the eggdrop must be opped (@) on channel (uses @onotice to inform the channel operators). **"
set black(say.en.man.777) "\[MAN\] USAGE SYNTAXES:"
set black(say.en.man.778) "\[MAN\] \002%char%set\002 (+/-)reportnick ; \002%botnick% set\002 (+/-)reportnick ; \002(PRIVMSG) set\002 <#chan> (+/-)reportnick"
set black(say.en.man.779) "\[MAN\] \002%char%report\002 <nick> <comment> ; \002%botnick% report\002 <nick> <comment> ; \002(PRIVMSG) report\002 <#chan> <nick> <comment>"

#InviteBan

set black(say.en.man.780) "\[MAN\] \002InviteBan\002 bans users who attempt to invite the eggdrop to unauthorized channels."
set black(say.en.man.781) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.782) "\[MAN\] \002%char%set\002 (+/-)inviteban ; \002%botnick% set\002 (+/-)inviteban ; \002(PRIVMSG) set\002 <#chan> (+/-)inviteban"
set black(say.en.man.783) "\[MAN\] Optional settings: \002inviteban-reason\002 (default reason); \002inviteban-bantime\002 (default bantime)"

#BadHost

set black(say.en.man.784) "\[MAN\] \002BadHost\002 bans users who use IPs/vhosts containing specified \"bad\" words (supports wildcards)."
set black(say.en.man.785) "\[MAN\] USAGE SYNTAXES:"
set black(say.en.man.786) "\[MAN\] \002%char%set\002 (+/-)badhost ; \002%botnick% set\002 (+/-)badhost ; \002(PRIVMSG) set\002 <#chan> (+/-)badhost"
set black(say.en.man.787) "\[MAN\] \002%char%badhost\002 \[#chan\] add <ip|mask> ; \002%char%badhost \[#chan\] list\002 ; \002%char%badhost \[#chan\] del <no. list>\002"
set black(say.en.man.787_1) "\[MAN\] \002%char%badhost \[#chan\] add <+word> (add exception) ; \002%char%badhost\002 \[#chan\] del <no. list> (delete a badhost from list)"
set black(say.en.man.788) "\[MAN\] Optional settings: \002badhost-reason\002; badhost-bantime; \002badhost-bmethod\002"

#NickFlood

set black(say.en.man.789) "\[MAN\] \002NickFlood\002 bans users for changing their nicknames too often within a certain period of time."
set black(say.en.man.790) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.791) "\[MAN\] \002%char%set\002 (+/-)nickflood ; \002%botnick% set\002 (+/-)nickflood ; \002(PRIVMSG) set\002 <#chan> (+/-)nickflood"
set black(say.en.man.792) "\[MAN\] Optional settings: \002nickflood-reason\002; nickflood-bantime; \002nickflood-warn\002; nickflood-repeat; \002nickflood-banmethod\002; nickflood-banmask"

#SecureMode

set black(say.en.man.793) "\[MAN\] \002SecureMode\002 prevents join/part flood from botnets (users with access are ignored in this checks). This module is made specifically for Undernet."
set black(say.en.man.794) "\[MAN\] ** Note: It only works with channel modes \002+Dm\002 and based on a system that generates a unique code for each user who joins the channel, which needs to be confirmed only once (first time join) if they wish to be allowed to join in the channel. **"
set black(say.en.man.795) "\[MAN\] USAGE SYNTAXES:"
set black(say.en.man.796) "\[MAN\] \002%char%set\002 (+/-)securemode ; \002%botnick% set\002 (+/-)securemode ; \002(PRIVMSG) set <#chan> (+/-)securemode\002"
set black(say.en.man.797) "\[MAN\] \002%char%securemode add\002 <ip|mask> (supports wildcards) ; \002%char%securemode del\002 <no. list> ; \002%char%securemode list\002"

#VoiceMe

set black(say.en.man.820) "\[MAN\] \002VoiceMe\002 gives logged users with \002*X*\002, the ability to have \002voice (+v)\002 simply using command \002/msg %botnick% voiceme <#chan>\002 (see also \002%char%man onlyonmode\002 and \002%char%man nologged\002)."
set black(say.en.man.821) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.822) "\[MAN\] \002%char%set\002 (+/-)voiceme ; \002%botnick% set\002 (+/-)voiceme ; \002(PRIVMSG) set\002 <#chan> (+/-)voiceme"
set black(say.en.man.823) "View options settings: \002%char%show\002 <setting> ; \002%botnick% show\002 <setting> ; \002(PRIVMSG) show\002 <#chan> <setting>"

#OnlyOnMode

set black(say.en.man.824) "\[MAN\] \002OnlyOnMode\002 is an extra option for the \002voiceme\002 module that allows the command \002/msg %botnick% voiceme <#chan>\002 to be used ONLY when \002mode +m\002 is set on the channel."
set black(say.en.man.825) "\[MAN\] ** Note: It will also send a specified message to channel so all users know that if they are registered and logged into \002*X*\002 can use the above command to receive \002voice (+v)\002 on that channel. If they don't have a \002CService Username\002 they will be told in the message where they can go to register one. **"
set black(say.en.man.826) "\[MAN\] \002Remember\002: This extra option works ONLY with \002voiceme\002 module and on \002+m\002 (moderate) channels (see also \002%char%man voiceme\002)."
set black(say.en.man.827) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.828) "\[MAN\] \002%char%set\002 (+/-)onlyonmode ; \002%botnick% set\002 (+/-)onlyonmode ; \002(PRIVMSG) set\002 <#chan> (+/-)onlyonmode"

#BanStats

set black(say.en.man.834) "\[MAN\] \002BanStats\002 allows the eggdrop to keep statistics of each kick and ban given on a specified channel."
set black(say.en.man.835) "\[MAN\] USAGE SYNTAXES:"
set black(say.en.man.836) "\[MAN\] \002%char%set\002 (+/-)banstats ; \002%botnick% set\002 (+/-)banstats ; \002(PRIVMSG) set\002 <#chan> (+/-)banstats"
set black(say.en.man.837) "\[MAN\] \002%char%banstats\002 <total|reset> ; \002%botnick% banstats\002 <total|reset> ; \002(PRIVMSG) banstats\002 <#chan> <total|reset>\002"

#CP

set black(say.en.man.842) "\[MAN\] \002cp\002 allows you to copy a channel settings to another channel, including the userlist, banlist and badchans."
set black(say.en.man.843) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.844) "\[MAN\] %char%cp\002 <option> <#chan1> <#chan2> ; \002%botnick% cp\002 <option> <#chan1> <#chan2> ; \002(PRIVMSG) cp\002 <option> <#chan1> <#chan2>"
set black(say.en.man.845) "\[MAN\] As \002<options>\002 you have: \002<userlist>\002 (copy channel userlist); \002<banlist>\002 (copy channel banlist); \002<settings>\002 (copy channel settings); \002<badchans>\002 (copy badchans list)"

#VoiceOnMsg 

set black(say.en.man.846) "\[MAN\] \002VoiceOnMsg\002 voices users who have said a certain number of lines on a channel (active chatters). Also, users with access are excluded."
set black(say.en.man.847) "\[MAN\] ** Note: It also devoices users who have been idling for more than a certain amount of time on the channel (inactive chatters). **"
set black(say.en.man.848) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.849) "\[MAN\] \002%char%set\002 (+/-)voiceonmsg ; \002%botnick% set\002 (+/-)voiceonsmg ; \002(PRIVMSG) set <#chan> (+/-)voiceonsmg"
set black(say.en.man.850) "\[MAN\] Optional settings: \002%char%set voiceonmsg-linenum\002 <no. lines> (default no. lines) ; \002%char%set voiceonmsg-idletime\002 <duration> (default idle time)"

#Troll

set black(say.en.man.851) "\[MAN\] \002Troll\002 bans a user with a default \002TROLL\002 reason (see also \002%char%man showtroll\002)."
set black(say.en.man.852) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.853) "\[MAN\] \002%char%troll\002 <nick> ; \002%botnick% troll\002 <nick> ; \002(PRIVMSG) troll\002 <#chan> <nick>"
set black(say.en.man.854) "\[MAN\] Optional settings: \002%char%set\002 troll-reason <text>; \002(PRIVMSG) set\002 <#chan> troll-reason <text> (default reason)"

#vr

set black(say.en.man.856) "\[MAN\] \002vr\002 bans a user with a default \002VIRUS/TROJAN\002 reason."
set black(say.en.man.857) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.858) "\[MAN\] \002%char%vr\002 <nick|mask> ; \002%botnick% vr\002 <nick|mask> ; \002(PRIVMSG) vr\002 <#chan> <nick|mask>"
set black(say.en.man.859) "\[MAN\] Optional settings: \002vr-reason\002 (default reason); \002vr-banmask\002 (default banmask); \002vr-bantime\002 (default bantime)"
set black(say.en.man.860) "View options settings: \002%char%show\002 <setting> ; \002%botnick% show\002 <setting> ; \002(PRIVMSG) show\002 <#chan> <setting>"

#XOnly

set black(say.en.man.861) "\[MAN\] \002XOnly\002 allows a complete channel administration via Undernet's official bot \002*X*\002."
set black(say.en.man.862) "\[MAN\] The eggdrop will perform all BlackToolS commands through \002X\002 even if is not an operator (@)."
set black(say.en.man.863) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.864) "\[MAN\] \002%char%set\002 (+/-)xonly ; \002%botnick% set\002 (+/-)xonly ; \002(PRIVMSG) set\002 <#chan> (+/-)xonly"
set black(say.en.man.865) "\[MAN\] Optional settings: \002xbantime\002 (default X bantime); \002xbanlevel\002 (default X ban level access)"

#AutoTopic

set black(say.en.man.866) "\[MAN\] \002AutoTopic\002 makes your eggdrop to reset the topic to the channel TOPIC and URL every time was changed by someone."
set black(say.en.man.867) "\[MAN\] ** Note: If the channel is idle, the topic will not be reset during that time (idle = no users joining). **"
set black(say.en.man.868) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.869) "\[MAN\] \002%char%set\002 (+/-)autotopic ; \002%botnick% set\002 (+/-)autotopic ; \002(PRIVMSG) autotopic\002 <#chan> (+/-)autotopic"
set black(say.en.man.870) "View options settings: \002%char%show\002 <setting> ; \002%botnick% show\002 <setting> ; \002(PRIVMSG) show\002 <#chan> <setting>"

#MySet

set black(say.en.man.871) "\[MAN\] \002MySet\002 is a command through which every user with access can set his own settings/infos."
set black(say.en.man.872) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.873) "\[MAN\] \002%char%myset\002 <option> \[description\] <show|reset> ; \002(PRIVMSG) myset\002 <option> \[description\] <show|reset>"
set black(say.en.man.874) "\[MAN\] As \002<option>\002 you have:"
set black(say.en.man.875) "\[MAN\] \002lang\002 <language> ; \002output\002 <method> ; \002mychar\002 <trigger> ; \002colors\002 <colors> ; \002noteexpire\002 <period> ; \002autoinvite\002 <ON|OFF>"
set black(say.en.man.877) "\[MAN\] \002auto\002 (+/-)v/o (AUTOMODE OP/VOICE) ; \002greet\002 <message> ; \002mychan\002 <#chan>"
set black(say.en.man.878) "\[MAN\] \002auto\002 (+/-)v/o \[-global\] (AUTOMODE OP/VOICE) ; \002addhost/delhost\002 <host> ; \002handle\002 <new handle> ; \002greet\002 <message> ; \002mychan\002 <#chan> ; \002notes\002 <ON|OFF>"

#ho

set black(say.en.man.882) "\[MAN\] \002ho\002 gives/removes halfop \002(+h %)\002 to/from specified users."
set black(say.en.man.882_1) "\[MAN\] ** Note: If no nick is specified, and you are not halfoped on the channel, it will halfop you (rarely used). **"
set black(say.en.man.883) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.884) "\[MAN\] \002%char%ho\002 <nick1> <nick2> .. ; \002%botnick% ho\002 <nick1> <nick2> .. ; \002(PRIVMSG) ho\002 <#chan> <nick1> <nick2> .."
set black(say.en.man.884_1) "\[MAN\] \002%char%ho +\002 (performs a mass halfop) ; \002%char%ho -\002 (performs a mass halfdeop)"

#r

set black(say.en.man.885) "\[MAN\] \002r\002 manually makes the eggdrop refresh/reload the channel topic (if there is a topic)."
set black(say.en.man.886) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.887) "\[MAN\] \002%char%r\002 \[#chan\] ; \002%botnick% r\002 \[#chan\] ; \002(PRIVMSG) r\002 <#chan>"

#SeenLastMsg

set black(say.en.man.888) "\[MAN\] \002SeenLastMsg\002 is a seen extra info who shows the specified nick what their last message was to that channel."
set black(say.en.man.889) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.890) "\[MAN\] \002%char%set\002 (+/-)seenlastmsg ; \002%botnick% set\002 (+/-)seenlastmsg ; \002(PRIVMSG) set\002 <#chan> (+/-)seenlastmsg"
set black(say.en.man.891) "View options settings: \002%char%show\002 <setting> ; \002%botnick% show\002 <setting> ; \002(PRIVMSG) show\002 <#chan> <setting>"

#Quote

set black(say.en.man.892) "\[MAN\] \002Quote\002 is a quotes system with public commands for adding, removing and displaying quotes (includes also a search function)."
set black(say.en.man.893) "\[MAN\] USAGE SYNTAXES:"
set black(say.en.man.894) "\[MAN\] \002%char%set\002 (+/-)quote ; \002%botnick% set\002 (+/-)quote ; \002(PRIVMSG) set\002 <#chan> (+/-)quote"
set black(say.en.man.895) "\[MAN\] \002%char%q\002 \[#chan\] <text> (add quote) ; \002%char%q\002 \[#chan\] <word> (search) ; \002%char%q\002 \[#chan\] <list> ; \002%char%q\002 \[#chan\] del <no. quote>"
set black(say.en.man.896) "\[MAN\] ** Note: To add more than 1 sentence use \002%char%q add \[#chan\] <text1>~<text2>\002.. and eggdrop will show the quotes as 2 different senteces. **"
set black(say.en.man.896_2) "\[MAN\] \002%char%set\002 (+/-)quote ; \002%botnick% set\002 (+/-)quote ; \002(PRIVMSG) set\002 <#chan> (+/-)quote ; \002%char%set\002 quote-usage <1/0> ; \002%botnick% set\002 quote-usage <1/0> ; \002(PRIVMSG) set\002 <#canal> quote-usage <1/0> (\0010\001 - all can use this module ; \0011\001 - only valid users)"

#QuoteOfDay

set black(say.en.man.897) "\[MAN\] \002QuoteOfDay\002 displays stored quotes randomly at a specified interval of time."
set black(say.en.man.898) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.899) "\[MAN\] \002%char%set\002 (+/-)quoteofday ; \002%botnick% set\002 (+/-)quoteofday ; \002(PRIVMSG) set\002 <#chan> (+/-)quoteofday"
set black(say.en.man.900) "\[MAN\] Optional settings: \002%char%set\002 quoteofday-showtime <period> ; \002(PRIVMSG) set\002 <#chan> quoteofday-showtime <period> (<X>\002h\002 = hours ; <X>\002m\002 = minutes)"

#Note

set black(say.en.man.901) "\[MAN\] \002Note\002 allows to store personal notes or sends a note <message> to <handle>."
set black(say.en.man.902) "\[MAN\] USAGE SYNTAXES:"
set black(say.en.man.903) "\[MAN\] \002%char%set\002 (+/-)note ; \002%botnick% set\002 (+/-)note ; \002(PRIVMSG) set\002 <#chan> (+/-)note"
set black(say.en.man.904) "\[MAN\] \002%char%note\002 send <handle> <message> ; \002%char%note\002 <read|list|inbox> ; \002%char%note\002 del <no. note|all>"
set black(say.en.man.905) "\[MAN\] ** Note: To add more than 1 sentence use \002%char%note send <user> <message1>~<message2>..\002 and eggdrop will show the notes as 2 different senteces. **"

#bMethod

set black(say.en.man.906) "\[MAN\] \002bMethod\002 (BanMethod) sets the way in which eggdrop will punish users (warn/kick/ban). This means, first time Warn, then Kick and then Ban (if offense is repeated)."
set black(say.en.man.907) "\[MAN\] Available banmethods:"
set black(say.en.man.908) "\[MAN\] \002#1\002 warn ; \002#2\002 kick ; \002#3\002 ban ; \002#4\002 warn -> kick ; \002#5\002 warn -> kick -> ban ; \002#6\002 kick -> ban ; \002#7\002 warn -> ban"
set black(say.en.man.909) "\[MAN\] USAGE SYNTAX: \002%char%set\002 <setting> <no. method> ; \002%botnick% set\002 <setting> <no. method> ; \002(PRIVMSG) set\002 <#chan> <setting> <no. method>"
set black(say.en.man.910) "\[MAN\] \002BanMethod\002 (bMethod) sets the way in which eggdrop will punish users (warn/kick/ban). This means, first time Warn, then Kick and then Ban (if offense is repeated)."

#BanMask

set black(say.en.man.911) "\[MAN\] \002BanMask\002 sets the way in which eggdrop will handle banmasks bans."
set black(say.en.man.912) "\[MAN\] Available banmasks:"
set black(say.en.man.913) "\[MAN\] \002#1\002 *!*@host ; \002#2\002 *!user@host ; \002#3\002 nick!user@host ; \002#4\002 nick!*@* ; \002#5\002 *!user@*"
set black(say.en.man.914) "\[MAN\] USAGE SYNTAX: \002%char%set\002 <setting> <no. method> ; \002%botnick% set\002 <setting> <no. method> ; \002(PRIVMSG) set\002 <#chan> <setting> <no. method>"

#Url

set black(say.en.man.916) "\[MAN\] \002Url\002 indicates the URL of the channel website (up to 50 characters). The URL can be viewed at \002%char%info <#chan>\002. If no URL is specified, the current URL setting will be empty."
set black(say.en.man.917) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.918) "\[MAN\] \002%char%set\002 url \[url(s)\] ; \002%botnick% set\002 url \[url(s)\] ; \002(PRIVMSG) set\002 <#chan> url \[url(s)\]"
set black(say.en.man.919) "\[MAN\] To show the URL next to the ban reasons, use: \002%char%set\002 +showurl ; \002%botnick% set\002 +showurl ; \002(PRIVMSG) set\002 <#chan> +showurl"
set black(say.en.man.920) "\[MAN\] View options settings: \002%char%show\002 <setting> ; \002%botnick% show\002 <setting> ; \002(PRIVMSG) show\002 <#chan> <setting>"

#Timer

set black(say.en.man.921) "\[MAN\] \002Timer\002 is a \002PRO\002 module that allows you to start/stop processes timers or see the list of active ones."
set black(say.en.man.921_1) "\[MAN\] \002ATTENTION!\002 Do NOT touch this system module, unless you know very well what you are doing!"
set black(say.en.man.922) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.923) "\[MAN\] \002%char%timer\002 start \[#chan\] <timer:setting> ; \002%char%timer\002 kill \[#chan\] <pid timer> (from list) ; \002%char%timer\002 list"

#Enable

set black(say.en.man.924) "\[MAN\] \002Enable\002 allows to enable a disabled command. If \002global\002 option used, the command will be enabled on all eggdrop's channels."
set black(say.en.man.924_1) "\[MAN\] \002ATTENTION\002: The global activation option is available only for commands, not for users."
set black(say.en.man.925) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.926) "\[MAN\] \002%char%enable\002 \[#chan\] <command|all> \[user\] \[global\] ; \002(PRIVMSG) enable\002 <#chan> <command|all> \[user\] \[global\]"

#Disable

set black(say.en.man.927) "\[MAN\] \002Disable\002 allows to disable a given command. If \002global\002 option used, the command will be disabled on all eggdrop's channels."
set black(say.en.man.927_1) "\[MAN\] \002ATTENTION\002: The global deactivation option is available only for commands, not for users."
set black(say.en.man.928) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.929) "\[MAN\] \002%char%disable\002 \[#chan\] <command|all> \[user\] \[global\] ; \002(PRIVMSG) disable\002 <#chan> <command|all> \[user\] \[global\]"

#Stats

set black(say.en.man.930) "\[MAN\] \002Stats\002 displays statistic informations about a specified user's bans and used commands."
set black(say.en.man.930_1) "\[MAN\] For informations about \002any user activity\002 please check: \002%char%man stats\002"
set black(say.en.man.931) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.932) "\[MAN\] \002%char%stats\002 \[#chan>\] <handle> \[total\] ; \002%botnick% stats\002 \[#chan>\] <handle> \[total\] ; \002(PRIVMSG) stats\002 \[#chan>\] <handle> \[total\]"
set black(say.en.man.932_1) "\[MAN\] \002%char%stats\002 \[#chan>\] <handle> \[total|reset\] ; \002(PRIVMSG) stats\002 \[#chan>\] <handle> \[total|reset\]"

#Output

set black(say.en.man.933) "\[MAN\] \002Output\002 specifies how the eggdrop will reply to your message or channel commands (methods: CHAN|NOTICE)."
set black(say.en.man.934) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.935) "\[MAN\] \002%char%myset output\002 <method> ; \002(PRIVMSG) myset output\002 <method>"

#GreetLine

set black(say.en.man.936) "\[MAN\] \002GreetLine\002 sets you a join greet (info) line. This is shown via \002%char%info\002 and/or whenever you join a channel (the second one only works if \002+greet\002 enabled)."
set black(say.en.man.937) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.938) "\[MAN\] \002%char%myset greet\002 <text|reset> ; \002%botnick% myset\002 greet <text|reset> ; \002(PRIVMSG) myset greet\002 <text|reset> (\002reset\002 removes your greet (info) line)."

#UnSet

set black(say.en.man.939) "\[MAN\] \002UnSet\002 unset/reset specified settings/options (flags)."
set black(say.en.man.940) "\[MAN\] USAGE SYNTAXES:"
set black(say.en.man.941) "\[MAN\] %char%unset\002 <flag|str|option> ; \002%botnick% unset\002 <flag|str|option> ; \002(PRIVMSG) unset\002 <#chan> <flag|str|option>"
set black(say.en.man.942) "\[MAN\] \002%char%unset\002 global <flag|str|option> (unset on all channels)"
set black(say.en.man.943) "\[MAN\] View options settings: \002%char%show\002 <setting> ; \002%botnick% show\002 <setting> ; \002(PRIVMSG) show\002 <#chan> <setting>"

#NextShortCmd

set black(say.en.man.944) "\[MAN\] \002NextShortCmd\002 the short version of the \002next module\002 used on help channels that allows you to assist users who need help."
set black(say.en.man.945) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.946) "\[MAN\] \002%char%set\002 (+/-)nextshortcmd ; \002%botnick% set\002 (+/-)next nextshortcmd ; \002(PRIVMSG) set\002 (+/-)next nextshortcmd"
set black(say.en.man.947) "\[MAN\] Commands: \002%char%n\002 (voice next user) ; \002%char%n\002 list (show waiting list) ; \002%char%h\002 <nick> (helped); \002%char%b\002 <nick> (noidle ban); \002%char%skip\002 <nick> (moving to the end of the list)"

#AutoInvite

set black(say.en.man.948) "\[MAN\] \002AutoInvite\002 when banned, the eggdrop will invite you to that channel, saving you the trouble of using \002/msg X invite #chan\002 either yourself."
set black(say.en.man.949) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.950) "\[MAN\] \002%char%myset autoinvite\002 <#chan> <ON|OFF> ; \002%botnick% autoinvite\002 <#chan> <ON|OFF> ; \002(PRIVMSG) <#chan> autoinvite\002 <#chan> <ON|OFF>"

#Show

set black(say.en.man.952) "\[MAN\] \002Show\002 allows you to see the values of each setting."
set black(say.en.man.953) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.954) "\[MAN\] \002%char%show\002 <setting> ; \002%botnick% show\002 <setting> ; \002(PRIVMSG) show\002 <#chan> <setting>"

#Link

set black(say.en.man.955) "\[MAN\] \002ChanLink\002 allows synchronization of all protections modules on 2 or more channels at the same time."
set black(say.en.man.956) "\[MAN\] ** Note: Once enabled, the eggdrop will add the same ban from a given channel simultaneously to all other channels and vice versa (works only between linked channels, not the others). **"
set black(say.en.man.957) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.958) "\[MAN\] \002%char%link\002 <#chan1> <#chan2> / <all> ; \002%char%link del\002 <#chan> ; \002%char%link <list|reset>\002"
set black(say.en.man.958_1) "\[MAN\] Also works like this: \002%char%b\002 <nick|mask> \[duration\] link \[reason\] ; \002%char%ub\002 <nick|mask> link"

#AccessOnly

set black(say.en.man.959) "\[MAN\] \002AccessOnly\002 is an extra option for the \002topwords\002 module that restricts its operation only to users who owns access to eggdrop."
set black(say.en.man.960) "\[MAN\] ** Note: If this extra option is not enabled, the module \002topwords\002 will work for all channel users (both for those with access and for others). **"
set black(say.en.man.961) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.962) "\[MAN\] \002%char%set\002 (+/-)accessonly ; \002%botnick% set\002 (+/-)accessonly ; \002(PRIVMSG) set\002 <#chan> (+/-)accessonly"
set black(say.en.man.963) "\[MAN\] View options settings: \002%char%show\002 <setting> ; \002%botnick% show\002 <setting> ; \002(PRIVMSG) show\002 <#chan> <setting>"

#SeenReply

set black(say.en.man.964) "\[MAN\] \002SeenReply\002 is an extra option for the \002seen\002 module that will make the eggdrop send an info message to the user who has just been searched with \002%char%seen\002 command."
set black(say.en.man.965) "\[MAN\] ** Note: This info message includes information about the person who searched for him/her, as well as the date, time or channel where the \002%char%seen\002 command was used. **"
set black(say.en.man.966) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.967) "\[MAN\] \002%char%set\002 (+/-)seenreply ; \002%botnick% set\002 (+/-)seenreply ; \002(PRIVMSG) set\002 <#chan> (+/-)seenreply"

#SpamJoinMessage

set black(say.en.man.968) "\[MAN\] \002SpamJoinMessage\002 is an extra option for the \002antispam\002 protection module that makes the eggdrop to send a private verification message, containing a predefined text, to every user who joins the channel."
set black(say.en.man.969) "\[MAN\] USAGE SYNTAXES:"
set black(say.en.man.970) "\[MAN\] \002%char%set\002 (+/-)spamjoinmessage ; \002%botnick% set\002 (+/-)spamjoinmessage ; \002(PRIVMSG) set\002 <#chan> (+/-)spamjoinmessage"
set black(say.en.man.971) "\[MAN\] \002%char%set\002 antispam-message <message> ; \002%botnick% set\002 antispam-message <message> ; \002(PRIVMSG) set\002 <#chan> <message> (default join message)"
set black(say.en.man.972) "\[MAN\] View options settings: \002%char%show\002 <setting> ; \002%botnick% show\002 <setting> ; \002(PRIVMSG) show\002 <#chan> <setting>"

#StrictSecured

set black(say.en.man.973) "\[MAN\] \002StricSecured\002 is an extra option for the \002securemode\002 protection module made to prevent join/part flood from botnets."
set black(say.en.man.974) "\[MAN\] ** Note: Once enabled, this extra option will generate a unique code for each user who joins the channel and every time they re-join, which needs to be confirmed, every time, if they wish to be allowed to join the channel. **"
set black(say.en.man.975) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.976) "\[MAN\] \002%char%set\002 (+/-)strictsecured ; \002%botnick% set\002 (+/-)strictsecured ; \002(PRIVMSG) set\002 <#chan> (+/-)strictsecured"

#NoteExpire

set black(say.en.man.977) "\[MAN\] \002NoteExpire\002 is an extra option for the \002note\002 module whereby each user can set a default time period for notes expiration (automatic deletion from database)."
set black(say.en.man.977_1) "\[MAN\] Format period: <X>\002d\002 = days ; <X>\002h\002 = hours"
set black(say.en.man.978) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.979) "\[MAN\] \002%char%myset\002 noteexpire <period> ; \002%botnick% myset\002 noteexpire <period> ; \002(PRIVMSG) myset\002 noteexpire <period>"

#MyChan

set black(say.en.man.980) "\[MAN\] \002MyChan\002 allows each user to set a \002base channel\002 (mychan) for which, when sends commands to eggdrop via PRIVMSG, it is no longer necessary to specify a <#channel>, eggdrop automatically applying commands directly to \002mychan\002."
set black(say.en.man.981) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.982) "\[MAN\] \002%char%myset\002 mychan <#chan> ; \002%botnick% myset\002 mychan <#chan> ; \002(PRIVMSG) myset\002 mychan <#chan>"

#Invisible

set black(say.en.man.983) "\[MAN\] \002Invisible\002 toggles the invisibility setting for a channel, this means that channel will no longer appear in the eggdrop channels list."
set black(say.en.man.984) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.985) "\[MAN\] \002%char%set\002 (+/-)invisible ; \002%botnick% set\002 (+/-)invisible ; \002(PRIVMSG) set\002 <#chan> (+/-)invisible"
set black(say.en.man.986) "\[MAN\] View options settings: \002%char%show\002 <setting> ; \002%botnick% show\002 <setting> ; \002(PRIVMSG) show\002 <#chan> <setting>"

#MyChar

set black(say.en.man.987) "\[MAN\] \002MyChar\002 allows each user to choose and set a default \002trigger\002 to which they want the eggdrop to react to."
set black(say.en.man.988) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.989) "\[MAN\] \002%char%myset\002 mychar <trigger> ; \002%botnick% myset\002 mychar <trigger> ; \002(PRIVMSG) myset\002 mychar <trigger>"

#Omsg

set black(say.en.man.1207) "\[MAN\] \002Omsg\002 sends a specified message to all users with \002OP (@/&)\002 on a channel."
set black(say.en.man.1208) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.1209) "\[MAN\] %char%omsg\002 <#chan|all> <text> ; \002%botnick% omsg\002 <#chan|all> <text> ; \002(PRIVMSG) omsg\002 <#chan|all> <text>"

#ShowBadChan

set black(say.en.man.1210) "\[MAN\] \002ShowBadChan\002 is an extra option for the \002BadChan\002 module who sends a message to all users with \002OP (@/&)\002 about the banned user and the forbidden channels on which that was found."
set black(say.en.man.1211) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.1212) "\[MAN\] \002%char%set\002 (+/-)showbadchan ; \002%botnick% set\002 (+/-)showbadchan ; \002(PRIVMSG) set\002 <#chan> (+/-)showbadchan"
set black(say.en.man.1213) "View options settings: \002%char%show\002 <setting> ; \002%botnick% show\002 <setting> ; \002(PRIVMSG) show\002 <#chan> <setting>"

#ShowTroll

set black(say.en.man.1214) "\[MAN\] \002ShowTroll\002 is an extra option for the \002Troll\002 command that, once activated, makes the eggdrop to display a notice message list of current trolls of the day, when users with access joins the channel (the list is reset everyday at midnight)."
set black(say.en.man.1215) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.1216) "\[MAN\] \002%char%set\002 (+/-)showtroll ; \002%botnick% set\002 (+/-)showtroll ; \002(PRIVMSG) set\002 <#chan> (+/-)showtroll"
set black(say.en.man.1217) "View options settings: \002%char%show\002 <setting> ; \002%botnick% show\002 <setting> ; \002(PRIVMSG) show\002 <#chan> <setting>"

#Forward

set black(say.en.man.1218) "\[MAN\] \002Forward\002's private messages received by the eggdrop to a specified channel (except private messages from users with access)."
set black(say.en.man.1219) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.1220) "\[MAN\] \002%char%set\002 (+/-)forward ; \002%botnick% set\002 (+/-)forward ; \002(PRIVMSG) set\002 <#chan> (+/-)forward"

#ExpireBans

set black(say.en.man.1221) "\[MAN\] \002ExpireBans\002 sets the default period of time after which all bans from a channel will be removed. If this setting is set to \0020\002, the eggdrop will never remove bans."
set black(say.en.man.1222) "\[MAN\] Format period: <X>\002h\002 = hours ; <X>\002m\002 = minutes"
set black(say.en.man.1223) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.1224) "\[MAN\] \002%char%set\002 expirebans <period> ; \002%botnick% set\002 expirebans <period> ; \002(PRIVMSG) set\002 <#chan> expirebans <period>"
set black(say.en.man.1225) "View options settings: \002%char%show\002 <setting> ; \002%botnick% show\002 <setting> ; \002(PRIVMSG) show\002 <#chan> <setting>"

#mb

set black(say.en.man.1226) "\[MAN\] \002mb\002 bans a given nickname automatically on \001IDENT\001 with a given reason."
set black(say.en.man.1227) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.1228) "\[MAN\] \002%char%mb\002 <nick> \[reason\] ; \002%botnick% mb\002 <nick> \[reason\] ; \002(PRIVMSG) mb\002 <#chan> <nick> \[reason\]"
set black(say.en.man.1229) "\[MAN\] Optional settings: \002mb-reason\002 (default reason); \002mb-bantime\002 (default ban time)"


################################################# MAN EGG #####################################################


#Egg

set black(say.en.man.990) "\[MAN\] \002Egg\002 allows you to configure some options from the eggdrop's \002.conf\002 file structure."
set black(say.en.man.991) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.992) "\[MAN\] \002%char%set\002 <option> <setting> ; \002%botnick% set\002 <option> <setting> ; \002(PRIVMSG) set\002 <option> <setting>"

#Egg CmdChar

set black(say.en.man.994) "\[MAN\] \002CmdChar\002 sets the default \002trigger\002 you want the eggdrop to react to (you can add more than one cmdchar)."
set black(say.en.man.995) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.996) "\[MAN\] \002%char%set cmdchar\002 <trigger1 trigger2 ..> ; \002%botnick% set cmdchar\002 <trigger1 trigger2 ..> ; \002(PRIVMSG) set cmdchar\002 <trigger1 trigger2 ..>"

#Egg DefaultLang

set black(say.en.man.998) "\[MAN\] \002DefaultLang\002 sets the default language of the BlackToolS script."
set black(say.en.man.998_1) "\[MAN\] Available languages: \002RO\002 = ROMANIAN ; \002EN\002 = ENGLISH"
set black(say.en.man.999) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.1100) "\[MAN\] \002%char%set defaultlang\002 <language> ; \002%botnick% set defaultlang\002 <language> ; \002(PRIVMSG) set defaultlang\002 <language>"

#Egg HomeChan

set black(say.en.man.1102) "\[MAN\] \002HomeChan\002 set the eggdrop's homechan. The eggdrop will enter this channel first. This channel will also be used to display all reported bans, kicks & any type of abuse."
set black(say.en.man.1103) "\[MAN\] ** Note: this is a \002static\002 channel (the eggdrop will NOT purge/cycle this chan) and usually it's a private/secret channel. (supports ONLY one \002homechan\002 channel). **"
set black(say.en.man.1104) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.1105) "\[MAN\] \002%char%set homechan\002 <#chan> ; \002%botnick% set homechan\002 <#chan> ; \002(PRIVMSG) set homechan\002 <#chan>"

#Egg RealName

set black(say.en.man.1107) "\[MAN\] \002RealName\002 set what should be displayed in the \002real-name\002 field for the eggdrop on IRC (requires restart)."
set black(say.en.man.1108) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.1109) "\[MAN\] \002%char%set realname\002 <text> ; \002%botnick% set realname\002 <text> ; \002(PRIVMSG) set realname\002 <text>"

#Egg Away

set black(say.en.man.1111) "\[MAN\] \002Away\002 sets away mode to your eggdrop with <text> as away message when it connects to IRC."
set black(say.en.man.1112) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.1113) "\[MAN\] \002%char%set away\002 <message> ; \002%botnick% set away\002 <message> ; \002(PRIVMSG) set away\002 <message>"
set black(say.en.man.1113_1) "\[MAN\] \002%char%set away\002; \002%botnick% set away\002; \002(PRIVMSG) set away\002 (disable away)"

#Egg DefaultOutput

set black(say.en.man.1115) "\[MAN\] \002DefaultOutput\002 sets the default method for receiving eggdrop's messages (default method is set via \002CHAN\002)."
set black(say.en.man.1115_1) "\[MAN\] Available methods: \0020\002 = NOTICE ; \002 1\002 = CHAN ; \002 2\002 = PRIVMSG"
set black(say.en.man.1116) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.1117) "\[MAN\] \002%char%set defaultoutput\002 <method> ; \002%botnick% set defaultoutput\002 <method> ; \002(PRIVMSG) set defaultoutput\002 <method>"

#Egg FloodMenuProt

set black(say.en.man.1119) "\[MAN\] \002FloodMenuProt\002 protects the eggdrop from \002flood\002. Determines how many commands/seconds a user can send the eggdrop before it is considered a flood and ignores all commands from that user for a short period of time."
set black(say.en.man.1120) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.1121) "\[MAN\] \002%char%set floodmenuprot\002 <no. commands:seconds> ; \002%botnick% set floodmenuprot\002 <no. commands:seconds> ; \002(PRIVMSG) set floodmenuprot\002 <no. commands:seconds>"

#Egg UserFloodMsgProt

set black(say.en.man.1123) "\[MAN\] \002UserFloodMsgProt\002 protects the eggdrop from \002PRIVMSG flood\002. Determines how many PRIVMSG messages/seconds the eggdrop will accept before it is considered a flood and ignores all messages from that user for a short period of time."
set black(say.en.man.1124) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.1125) "\[MAN\] \002%char%set floodmsgprot\002 <no. messages:seconds> ; \002%botnick% set floodmsgprot\002 <no. messages:seconds> ; \002(PRIVMSG) set floodmsgprot\002 <no. messages:seconds>"

#Egg FloodNotcProt

set black(say.en.man.1127) "\[MAN\] \002FloodNotcProt\002 protects the eggdrop from \002NOTICE flood\002. Determines how many NOTICE messages/seconds the eggdrop will accept before it is considered a flood and ignores all notices from that user for a short period of time."
set black(say.en.man.1128) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.1129) "\[MAN\] \002%char%set floodnotcprot\002 <no. notices:seconds> ; \002%botnick% set floodnotcprot\002 <no. notices:seconds> ; \002(PRIVMSG) set floodnotcprot\002 <no. notices:seconds>"

#Egg ChanRemove-Setting

set black(say.en.man.1131) "\[MAN\] \002ChanRemove-Setting\002 once activated deletes all settings related to a channel, when that channel is deleted from the bot's channels list. This includes data such as the access userlist, the banlist, the seen database, etc."
set black(say.en.man.1131_1) "\[MAN\] \0021\002 = yes ; \0020\002 = no"
set black(say.en.man.1132) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.1133) "\[MAN\] \002%char%set chanremove-setting\002 <1|0> ; \002%botnick% set chanremove-setting\002 <1|0> ; \002(PRIVMSG) set chanremove-setting\002 <1|0>"

#Egg User-Expire

set black(say.en.man.1135) "\[MAN\] \002User-Expire\002 allows you to define the time period after the eggdrop will remove users from the seen database that are older than a specified time period."
set black(say.en.man.1135_1) "\[MAN\] Format period: <X>\002d\002 = days"
set black(say.en.man.1136) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.1137) "\[MAN\] \002%char%set user-expire\002 <period> ; \002%botnick% set user-expire\002 <period> ; \002(PRIVMSG) set user-expire\002 <period>"

#Egg PageLimit

set black(say.en.man.1139) "\[MAN\] \002PageLimit\002 sets the default \002number of entries per page\002 for all the modules that use the \002- list -\002 function."
set black(say.en.man.1140) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.1141) "\[MAN\] \002%char%set pagelimit\002 <no. entries> ; \002%botnick% set pagelimit\002 <no. entries> ; \002(PRIVMSG) set pagelimit\002 <no. entries>"

#Egg Login

set black(say.en.man.1143) "\[MAN\] \002Login\002 allows you to manually login your eggdrop to ChanServ (X, Q, etc.)."
set black(say.en.man.1144) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.1145) "\[MAN\] \002%char%login\002 ; %botnick% login ; \002(PRIVMSG) login\002"

#Egg Chanserv

set black(say.en.man.1147) "\[MAN\] \002Chanserv\002 sets the \002default nickname\002 that ChanServ (X, Q, etc.) uses, depending on the IRC network that the eggdrop will connect to."
set black(say.en.man.1148) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.1149) "\[MAN\] \002%char%set chanserv\002 <chanservnickname> ; \002%botnick% set chanserv\002 <chanservnickname> ; \002(PRIVMSG) set chanserv\002 <chanservnickname>"

#Egg HostChanserv

set black(say.en.man.1151) "\[MAN\] \002HostChanserv\002 sets the \002default hostmask\002 that ChanServ (X, Q, etc.) uses depending on the IRC network to which the eggdrop will connect to."
set black(say.en.man.1152) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.1153) "\[MAN\] \002%char%set hostchanserv\002 <chanservhostmask> ; \002%botnick% set hostchanserv\002 <chanservhostmask> ; \002(PRIVMSG) set hostchanserv\002 <chanserhostmask>"

#Egg UserLogin

set black(say.en.man.1155) "\[MAN\] \002UserLogin\002 sets the \002username\002 that eggdrop will use to login to ChanServ (X, Q, etc.)."
set black(say.en.man.1156) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.1157) "\[MAN\] \002%char%set userlogin\002 <chanservusername> ; \002%botnick% set userlogin\002 <chanservusername> ; \002(PRIVMSG) set userlogin\002 <chanservusername>"

#Egg UserPass

set black(say.en.man.1159) "\[MAN\] \002UserPass\002 sets the \002password\002 that eggdrop will use to login to ChanServ (X, Q, etc.)."
set black(say.en.man.1160) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.1161) "\[MAN\] \002%char%set userpass\002 <chanservpassword> ; \002%botnick% set userpass\002 <chanservpassword> ; \002(PRIVMSG) set userpass\002 <chanservpassword>"

#Egg Add-Mask

set black(say.en.man.1163) "\[MAN\] \002Add-Mask\002 sets the default hostmask that eggdrop will use when a new user is added with access."
set black(say.en.man.1163_1) "\[MAN\] Available hostmasks:"
set black(say.en.man.1163_2) "\[MAN\] \002#1\002 *!*@host ; \002#2\002 *!user@host ; \002#3\002 nick!user@host ; \002#4\002 nick!*@* ; \002#5\002 *!user@*"
set black(say.en.man.1164) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.1165) "\[MAN\] \002%char%set add-mask\002 <no. hostmask> ; \002%botnick% set add-mask\002 <no. hostmask> ; \002(PRIVMSG) set add-mask\002 <no. hostmask>"

#Egg Add-DefaultMask

set black(say.en.man.1167) "\[MAN\] \002Add-DefaultMask\002 sets the default hostmask, as\001 *!*@%user%.users.undernet.org\001, that eggdrop will use when a new user is added with access."
set black(say.en.man.1168) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.1169) "\[MAN\] \002%char%set add-defaultmask\002 <hostmask> ; \002%botnick% set add-defaultmask\002 <hostmask> ; \002(PRIVMSG) set add-defaultmask\002 <hostmask>"

#AntiSpam-ScanTime

set black(say.en.man.1175) "\[MAN\] \002AntiSpam-ScanTime\002 is an extra option for the \002antispam\002 module that allows you to define the maximum time interval between every\002 /cycle\002 that eggdrop executes to detect spammers."
set black(say.en.man.1175_1) "\[MAN\] Format period: <X>\002m\002 = minutes ; <X>\002h\002 = hours"
set black(say.en.man.1176) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.1177) "\[MAN\] \002%char%set\002 antispam-scantime <period> ; \002%botnick% set\002 antispam-scantime <period> ; \002(PRIVMSG) set\002 antispam-scantime <period>"

#Idle-ScanTime

set black(say.en.man.1179) "\[MAN\] \002Idle-ScanTime\002 is an extra option for the \002idle\002 module that allows you to define the maximum time interval between scans after users with \002op (@)\002 or \002voice (+v)\002 who are idleing."
set black(say.en.man.1179_1) "\[MAN\] Format period: <X>\002m\002 = minutes ; <X>\002h\002 = hours"
set black(say.en.man.1180) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.1181) "\[MAN\] \002%set%set\002 idle-scantime <period> ; \002%botnick% set\002 idle-scantime <period> ; \002(PRIVMSG) set\002 idle-scantime <period>"

#CloneScan-ScanTime

set black(say.en.man.1183) "\[MAN\] \002CloneScan-ScanTime\002 is an extra option for the \002clonescan\002 module that allows you to define the maximum time interval between scans after certain users who are using clones."
set black(say.en.man.1183_1) "\[MAN\] Format period: <X>\002m\002 = minutes ; <X>\002h\002 = hours"
set black(say.en.man.1184) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.1185) "\[MAN\] \002%char%set\002 clonescan-scantime <period> ; \002%botnick% set\002 clonescan-scantime <period> ; \002(PRIVMSG) set\002 clonescan-scantime <period>"

#Broadcast-ShowTime

set black(say.en.man.1187) "\[MAN\] \002Broadcast-ShowTime\002 is an extra option for the \002broadcast\002 module that allows you to define the maximum time interval between the messages to be broadcast on channel."
set black(say.en.man.1187_1) "\[MAN\] Format period: <X>\002m\002 = minutes ; <X>\002h\002 = hours"
set black(say.en.man.1188) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.1189) "\[MAN\] \002%char%set\002 broadcast-showtime <period> ; \002%botnick% egg\002 broadcast-showtime <period> ; \002(PRIVMSG) egg\002 broadcast-showtime <period>"

#BadChan-ScanTime

set black(say.en.man.1191) "\[MAN\] \002BadChan-ScanTime\002 is an extra option for the \002badchan\002 module that allows you to define the maximum time interval between scans after certain users who are on bad/non-allowed channels."
set black(say.en.man.1191_1) "\[MAN\] Format period: <X>\002m\002 = minutes ; <X>\002h\002 = hours"
set black(say.en.man.1192) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.1193) "\[MAN\] \002%char%set\002 badchan-scantime <period> ; \002%botnick% set\002 badchan-scantime <period> ; \002(PRIVMSG) set\002 badchan-scantime <period>"

#Anunt-ShowTime

set black(say.en.man.1195) "\[MAN\] \002Anunt-ShowTime\002 is an extra option for the \002anunt/advert\002 module that allows you to define the maximum time interval between announcements/ads to be shown on channel."
set black(say.en.man.1195_1) "\[MAN\] Format period: <X>\002m\002 = minutes ; <X>\002h\002 = hours"
set black(say.en.man.1196) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.1197) "\[MAN\] \002%char%set\002 anunt-showtime <period> ; \002%botnick% set\002 anunt-showtime <period> ; \002(PRIVMSG) set\002 anunt-showtime <period>"

#QuoteOfDay-ShowTime

set black(say.en.man.1199) "\[MAN\] \002QuoteOfDay-ShowTime\002 is an extra option for the \002quote\002 module that allows you to define the maximum time interval between quotes to be shown on channel."
set black(say.en.man.1199_1) "\[MAN\] Format period: <X>\002m\002 = minutes ; <X>\002h\002 = hours"
set black(say.en.man.1200) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.1201) "\[MAN\] \002%char%set\002 quoteofday-showtime <period> ; \002%botnick% set\002 quoteofday-showtime <period> ; \002(PRIVMSG) set\002 quoteofday-showtime <period>"

#QuitPartColor

set black(say.en.man.1203) "\[MAN\] \002QuitPartColor\002 is an extra option for the \002AntiBadQuitPart\002 module that makes the eggdrop to take action against users who use *colors* words when parting a channel."
set black(say.en.man.1204) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.1205) "\[MAN\] \002%char%set\002 (+/-)quitpartcolor ; \002%botnick% set\002 (+/-)quitpartcolor ; \002(PRIVMSG) set\002 <#chan> (+/-)quitpartcolor"
set black(say.en.man.1206) "View options settings: \002%char%show\002 <setting> ; \002%botnick% show\002 <setting> ; \002(PRIVMSG) show\002 <#chan> <setting>"

#VoiceMe-ShowTime

set black(say.en.man.1230) "\[MAN\] \002VoiceMe-ShowTime\002 is an extra option for the \002Voiceme\002 module that allows you to define the maximum time interval between the specific messages sent to the channel."
set black(say.en.man.1231) "\[MAN\] Format period: <X>\002m\002 = minutes ; <X>\002h\002 = hours"
set black(say.en.man.1232) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.1233) "\[MAN\] \002%char%set\002 voiceme-showtime <period> ; \002%botnick% set\002 voiceme-showtime <period> ; \002(PRIVMSG) set\002 voiceme-showtime <period>"

#BadChan-BanWait

set black(say.en.man.1234) "\[MAN\] \002BadChan-BanWait\002 is an extra option for the \002BadChan\002 module that allows you to define the maximum time interval for users to leave bad/forbidden channels before gets banned for being in."
set black(say.en.man.1235) "\[MAN\] Format period: <X>\002s\002 = seconds"
set black(say.en.man.1236) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.1237) "\[MAN\] \002%char%set\002 badchan-banwait <period> ; \002%botnick% set\002 badchan-banwait <period> ; \002(PRIVMSG) set\002 \[#chan\] badchan-banwait <period>"

#BadNick-BanWait

set black(say.en.man.1238) "\[MAN\] \002Badnick-BanWait\002 is an extra option for the \002BadNick\002 module that allows you to define the maximum time interval for users to change bad nicks before gets banned."
set black(say.en.man.1239) "\[MAN\] Format period: <X>\002s\002 = seconds"
set black(say.en.man.1240) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.1241) "\[MAN\] \002%char%set\002 badnick-banwait <period> ; \002%botnick% set\002 badnick-banwait <period> ; \002(PRIVMSG) set\002 \[#chan\] badnick-banwait <period>"

#BadNick-BMethod

set black(say.en.man.1242) "\[MAN\] \002BadNick-BMethod\002 is an extra option for the \002BadNick\002 module that allows you to choose the method of ban."
set black(say.en.man.1243) "\[MAN\] Format method:\002 #1\002 - warn message -> ban ;\002 #2\002 - ban"
set black(say.en.man.1244) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.1245) "\[MAN\] \002%char%set\002 badnick-bmethod <method> ; \002%botnick% set\002 badnick-bmethod <method> ; \002(PRIVMSG) set\002 \[#chan\] badnick-bmethod <method>"

#BadChan-BMethod

set black(say.en.man.1246) "\[MAN\] \002BadChan-BMethod\002 is an extra option for the \002BadChan\002 module that allows you to choose the method of ban."
set black(say.en.man.1247) "\[MAN\] Format method:\002 #1\002 - warn message -> ban ;\002 #2\002 - ban"
set black(say.en.man.1248) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.1249) "\[MAN\] \002%char%set\002 badchan-bmethod <method> ; \002%botnick% set\002 badchan-bmethod <method> ; \002(PRIVMSG) set\002 \[#chan\] badchan-bmethod <method>"

#RepetitiveChars

set black(say.en.man.1250) "\[MAN\] \002RepetitiveChars\002 bans users who use consecutive repeated characters."
set black(say.en.man.1251) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.1252) "\[MAN\] \002%char%set\002 (+/-)repetitivechars ; \002%botnick% set\002 (+/-)repetitivechars ; \002(PRIVMSG) set\002 \[#chan\] (+/-)repetitivechars"
set black(say.en.man.1253) "\[MAN\] Optional settings: \002repetitivechars-reason\002 ; repetitivechars-bantime ; \002repetitivechars-warn\002 ; repetitivechars-banmethod ; \002repetitivechars-banmask\002 ; repetitivechars-char"
set black(say.en.man.1254) "View options settings: \002%char%show\002 <setting> ; \002%botnick% show\002 <setting> ; \002(PRIVMSG) show\002 <#chan> <setting>"

#QuitPartMsgFlood

set black(say.en.man.1255) "\[MAN\] \002QuitPartMsgFlood\002 is an extra option for the \002AntiBadQuitPart\002 module that makes the eggdrop to take action against users who use *flood messages* when part/quit from channel."
set black(say.en.man.1256) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.1257) "\[MAN\] \002%char%set (+/-)quitpartmsgflood\002 ; %botnick% set (+/-)quitpartmsgflood ; \002(PRIVMSG) set <#chan> (+/-)quitpartmsgflood\002"
set black(say.en.man.1258) "\[MAN\] Optional settings: \002quitpartmsgflood-char\002"
set black(say.en.man.1259) "View options settings: \002%char%show\002 <setting> ; \002%botnick% show\002 <setting> ; \002(PRIVMSG) show\002 <#chan> <setting>"

#MassFloodSilenceTime

set black(say.en.man.1260) "\[MAN\] \002MassFloodSilenceTime\002 protects the eggdrop against mass flood by ctcp/ctcr, notice or msg using the server silence command."
set black(say.en.man.1261) "\[MAN\] ** Note: This is a personal bot protection that automatically triggers when gets mass botnet and private flood. **"
set black(say.en.man.1262) "\[MAN\] Format period: <X>\002s\002 = seconds"
set black(say.en.man.1263) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.1264) "\[MAN\] \002%char%set\002 massfloodsilencetime <period> ; \002%botnick% set\002 massfloodsilencetime <period> ; \002(PRIVMSG) set\002 massfloodsilencetime <period>"

#BanMethod-Expire

set black(say.en.man.1265) "\[MAN\] \002BanMethod-Expire\002 allows you to define the time interval after each count of the protections will expire."
set black(say.en.man.1266) "\[MAN\] Format period: <X>\002m\002 = minutes"
set black(say.en.man.1267) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.1268) "\[MAN\] \002%char%set\002 banmethod-expire <period> ; \002%botnick% set\002 banmethod-expire <period> ; \002(PRIVMSG) set\002 <#chan> banmethod-expire <period>"

#Count

set black(say.en.man.1269) "\[MAN\] \002Count\002 allows you to define a greet message on-join using some variables. To function requires \001+greet\001, for more info about see \002%char%man greet\002."
set black(say.en.man.1270) "\[MAN\] Available variables: \002%countchan%\002 = channel name ; \002%nick%\002 = user who joins ; \002%count%\002 = joins count ; \002%time%\002 = date since"
set black(say.en.man.1271) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.1272) "\[MAN\] \002%char%greet\002 set <text> ; \002%botnick% greet\002 set <text> ; \002(PRIVMSG) greet\002 <#chan> set <text>"
set black(say.en.man.1273) "\[MAN\] \001Example\001: Welcome %nick%, you are user with number %count% who joined in %countchan% since %time%."

#BadChan-FloodControl

set black(say.en.man.1274) "\[MAN\] \002BadChan-FloodControl\002 is an extra option for the \002BadChan\002 module with role of protecting the eggdrop from \002massjoin\002 actions by stopping the on join scan of users for a period of\002 30\002 seconds. After the expiration of this period, the \002BadChan\002 module resumes it's normal operation."
set black(say.en.man.1275) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.1276) "\[MAN\] \002%char%set\002 (+/-)badchan-floodcontrol <no. joins>:<no. seconds> ; \002%botnick% set\002 (+/-)badchan-floodcontrol <no. joins>:<no. seconds> ; \002(PRIVMSG) set\002 <#chan> (+/-)badchan-floodcontrol <no. joins>:<no. seconds>"
set black(say.en.man.1277) "View options settings: \002%char%show\002 <setting> ; \002%botnick% show\002 <setting> ; \002(PRIVMSG) show\002 <#chan> <setting>"

#Exempt

set black(say.en.man.1278) "\[MAN\] \002Exempt\002 Adds a ban exempt to the list of exempts stored on the bot, with optional comment and exempt period of time."
set black(say.en.man.1279) "\[MAN\] ** NOTE: If <global> is specified, the exempt will be for every channel the bot is in. **"
set black(say.en.man.1280) "\[MAN\] Format period: <X>\002h\002 = hours ; <X>\002m\002 = minutes ; <X>\002d\002 = days"
set black(say.en.man.1281) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.1282) "\[MAN\] \002%char%exempt\002 \[#chan\] add <ip/host> <period> <reason> (add exempt) ; \002%char%exempt\002 \[#chan\] list; \002%char%exempt\002 \[#chan\] del <ip/host> (remove exempt from list)"
set black(say.en.man.1283) "\[MAN\] \002%char%exempt\002 \[#chan\] add <ip/host> <period> \[global\] <reason> (add exempt) ; \002%char%exempt\002 \[#chan\] list \[global\] ; \002%char%exempt\002 \[#chan\] del <ip/host> \[global\] (remove exempt from list)"

#For

set black(say.en.man.1284) "\[MAN\] \002For\002 allows multiple eggdrops to execute simultaneously the same command/ commands."
set black(say.en.man.1285) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.1286) "\[MAN\] \002for\002 <botnick1>,<botnick2>.. <command> <option>"


##################################### MAN TIPS #############################################


set black(say.en.man.showtip) { 
 "\[TIP\] Did you know that you can use as period for bans forms like:\002 10m\002 (minutes) ;\002 10h\002 (hours) ;\002 10d\002 (days)?"
 "\[TIP\] If you have any problem with \002BlackTools script\002 or if you found a \002BUG\002, post to \002tclscripts.net forum\002 an explanation of the problem/bug."
 "\[TIP\] Did you know that now you can use \002CIDR\002 in ban method? eq:\002 %char%b <ip/cidr>\002 | %char%b *!*@192.168.0.1/17"
 "\[TIP\] \002(\$)\002 You want a \002customised TCL Script\002 for your eggdrop? Easy-peasy, just \002tell us what you need\002! We can create \002almost anything in TCL\002 based on your ideas and donations. Email \002blackshadow@tclscripts.net\002 or \002info@tclscripts.net\002 with your request informations and we'll contact you \002as soon as possible\002."
 "\[TIP\] Did you know that you can add multi line ads? eq:\002 %char%anunt add <advert1>~<advert2>~<advert3>\002 | %char%anunt add Welcome to %chan%~Have fun~The Next Generation TCL"
 "\[TIP\] \002ATTENTION!!\002 Users who use both \002a&a\002 and \002BlackTools\002 scripts \002together\002 should know that this works in theory. So \002DO NOT ask\002 about help for this script if you use it together with \002a&a script\002.."
 "\[TIP\] Did you know that you copy settings and the banlist or users access list from one channel to another? eq:\002 %char%cp userlist <#chan1> <#chan2>\002 | For more info: \002%char%man cp\002"
 "\[TIP\] Check our forum at\002 http://tclscripts.net\002 for the latest updates & informations."
 "\[TIP\] Did you know that now you can upload files matching the pattern\002 *.tcl\002 from a url inside your eggdrop's \002scripts directory\002? eq:\002 %char%tcl wget <link/name.tcl>\002 | For more info: \002%char%man tcl\002"
 "\[TIP\] Use tcl scripts you really need on your eggdrop. All the nice & funny scripts you find around may be buggy and unsecure. Look for functionality instead of fun in your eggdrop."
 "\[TIP\] Did you know that now you can use \002for\002 command on multiple eggdrops \002to execute simultaneously\002 the same command? eq: for Bot1,Bot2,Bot3 say bla bla | For more info: \002%char%man for\002"
 "\[TIP\] \002WwW.TclScripts.Net\002 offers for download a wide range of TCL's for your eggdrop (Blackip.tcl, YoutbeTitle.tcl, BlackCountry.tcl, CSC.tcl and many more), so you can run a professional and last generation bot."
 "\[TIP\] Did you know that now you can add \002exceptions for particular words\002 from all protections \002to avoid kicking and banning users\002 when it is not really necessary? For more info: \002%char%man exempt\002"
 "\[TIP\] Did you know that you can add \002a comment\002 to almost all ban commands\002, and other users with access at the eggdrop can see it,\002 when request informations of that ban entry?? eq: \002%char%b nick just a test -c do not remove\002 | \[BT\] Reason: just a test | \[BT\] \002\[BAN COMMENT\]\002 do not remove"
}


##################################### MAN EGGDROP INTERN SETTINGS #############################################


#Ban-Time

set black(say.en.man.2101) "\[MAN\] \002Ban-Time/BanTime\002 this is an internal eggdrop setting not related to \002BlackToolS script\002 and defines how long temporary bans will last (in minutes). If this setting is set to 0, the bot will never remove bans."
set black(say.en.man.2102) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.2103) "\[MAN\] \002%char%set\002 ban-time <period> ; \002%botnick% set\002 ban-time <period> ; \002(PRIVMSG) set\002 <#chan> ban-time <period>"

#ChanMode

set black(say.en.man.2104) "\[MAN\] \002ChanMode\002 this is an internal eggdrop setting not related to \002BlackToolS script\002 and makes the bot enforce channel modes. It will always add the +<modes> and remove the -<modes> modes."
set black(say.en.man.2105) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.2106) "\[MAN\] \002%char%set\002 chanmode (+/-)<modes> ; \002%botnick% set\002 chanmode (+/-)<modes> ; \002(PRIVMSG) set\002 <#chan> chanmode (+/-)<modes>"

#DontKickOps

set black(say.en.man.2107) "\[MAN\] \002DontKickOps\002 this is an internal eggdrop setting not related to \002BlackToolS script\002 and stops the bot from kicking users who have the +o flag."
set black(say.en.man.2108) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.2109) "\[MAN\] \002%char%set\002 (+/-)dontkickops ; \002%botnick% set\002 (+/-)dontkickops ; \002(PRIVMSG) set\002 <#chan> (+/-)dontkickops"

#EnforceBans 

set black(say.en.man.2110) "\[MAN\] \002EnforceBans\002 is an internal eggdrop setting not related to \002BlackToolS script\002 and when a ban is set this setting will cause the bot kick to people who are on the channel and match the ban."
set black(say.en.man.2111) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.2112) "\[MAN\] \002%char%set\002 (+/-)enforcebans ; \002%botnick% set\002 (+/-)enforcebans ; \002(PRIVMSG) set\002 <#chan> (+/-)enforcebans"

#DynamicBans 

set black(say.en.man.2113) "\[MAN\] \002DynamicBans\002 this is an internal eggdrop setting not related to \002BlackToolS script\002 and only activates bans on the channel when necessary. This keeps the channel's ban list from getting excessively long. The bot still remembers every ban, but it only activates a ban on the channel when it sees someone join who matches that ban."
set black(say.en.man.2114) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.2115) "\[MAN\] \002%char%set\002 (+/-)dynamicbans ; \002%botnick% set\002 (+/-)dynamicbans ; \002(PRIVMSG) set\002 <#chan> (+/-)dynamicbans"

#UserBans 

set black(say.en.man.2116) "\[MAN\] \002UserBans\002 this is an internal eggdrop setting not related to \002BlackToolS script\002 and allow bans to be set by users on IRC directly. If this is turned off, the bot will require all bans to be set through the bot's console."
set black(say.en.man.2117) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.2118) "\[MAN\] \002%char%set\002 (+/-)userbans ; \002%botnick% set\002 (+/-)userbans ; \002(PRIVMSG) set\002 <#chan> (+/-)userbans"

#AutoOp 

set black(say.en.man.2119) "\[MAN\] \002AutoOp\002 this is an internal eggdrop setting not related to \002BlackToolS script\002 and will cause the bot to op users with the +o flag as soon as they join the channel (this is insecure and not recommended)."
set black(say.en.man.2120) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.2121) "\[MAN\] \002%char%set\002 (+/-)autoop ; \002%botnick% set\002 (+/-)autoop ; \002(PRIVMSG) set\002 <#chan> (+/-)autoop"

#AutoHalfOp 

set black(say.en.man.2122) "\[MAN\] \002AutoHalfOp\002 this is an internal eggdrop setting not related to \002BlackToolS script\002 and will cause the bot to halfop users with the +l flag as soon as they join the channel (this is insecure and not recommended)."
set black(say.en.man.2123) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.2124) "\[MAN\] \002%char%set\002 (+/-)autohalfop ; \002%botnick% set\002 (+/-)autohalfop ; \002(PRIVMSG) set\002 <#chan> (+/-)autohalfop"

#AutoVoice 

set black(say.en.man.2125) "\[MAN\] \002AutoVoice\002 this is an internal eggdrop setting not related to \002BlackToolS script\002 and will cause the bot to voice users with the +v flag when they join the channel."
set black(say.en.man.2126) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.2127) "\[MAN\] \002%char%set\002 (+/-)autovoice ; \002%botnick% set\002 (+/-)autovoice ; \002(PRIVMSG) set\002 <#chan> (+/-)autovoice"

#Bitch 

set black(say.en.man.2128) "\[MAN\] \002Bitch\002 this is an internal eggdrop setting not related to \002BlackToolS script\002 and will cause the bot to only let users with +o flag be opped on the channel (this is insecure and not recommended)."
set black(say.en.man.2129) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.2130) "\[MAN\] \002%char%set\002 (+/-)bitch ; \002%botnick% set\002 (+/-)bitch ; \002(PRIVMSG) set\002 <#chan> (+/-)bitch"

#Greet 

set black(say.en.man.2131) "\[MAN\] \002Greet\002 this is an internal eggdrop setting not related to \002BlackToolS script\002 and will cause the bot to say a user's greet line when they join the channel (see also \002%char%man myset\002)."
set black(say.en.man.2132) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.2133) "\[MAN\] \002%char%set\002 (+/-)greet ; \002%botnick% set\002 (+/-)greet ; \002(PRIVMSG) set\002 <#chan> (+/-)greet"

#ProtectOps 

set black(say.en.man.2134) "\[MAN\] \002ProtectOps\002 this is an internal eggdrop setting not related to \002BlackToolS script\002 and will cause the bot to re-op a user with the \002+o flag\002 if they get deopped."
set black(say.en.man.2135) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.2136) "\[MAN\] \002%char%set\002 (+/-)protectops ; \002%botnick% set\002 (+/-)protectops ; \002(PRIVMSG) set\002 <#chan> (+/-)protectops"

#ProtectFriends 

set black(say.en.man.2137) "\[MAN\] \002ProtectFriends\002 this is an internal eggdrop setting not related to \002BlackToolS script\002 and will cause the bot to re-op a user with the \002+f flag\002 if they get deopped."
set black(say.en.man.2138) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.2139) "\[MAN\] \002%char%set\002 (+/-)protectfriends ; \002%botnick% set\002 (+/-)protectfriends ; \002(PRIVMSG) set\002 <#chan> (+/-)protectfriends"

#ProtectHalfOps 

set black(say.en.man.2140) "\[MAN\] \002ProtectHalfOps\002 this is an internal eggdrop setting not related to \002BlackToolS script\002 and will cause the bot to re-halfop a user with the \002+l flag\002 if they get dehalfopped."
set black(say.en.man.2141) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.2142) "\[MAN\] \002%char%set\002 (+/-)protecthalfops ; \002%botnick% set\002 (+/-)protecthalfops ; \002(PRIVMSG) set\002 <#chan> (+/-)protecthalfops"

#Inactive 

set black(say.en.man.2143) "\[MAN\] \002Inactive\002 this is an internal eggdrop setting not related to \002BlackToolS script\002 and prevents the bot from joining the channel (or makes it leave the channel if it is already there). It can be useful to make the bot leave a channel without losing its settings, channel-specific user flags, channel bans, and without affecting sharing."
set black(say.en.man.2144) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.2145) "\[MAN\] \002%char%set\002 (+/-)inactive ; \002%botnick% set\002 (+/-)inactive ; \002(PRIVMSG) set\002 <#chan> (+/-)inactive"

#StatusLog 

set black(say.en.man.2146) "\[MAN\] \002StatusLog\002 this is an internal eggdrop setting not related to \002BlackToolS script\002 and will cause the bot to log the channel status line every 5 minutes. This shows the bot's status on the channel (op, voice, etc.), the channel's modes, and the total number of members, ops, voices, regular users, and +b, +e, and +I modes on the channel."
set black(say.en.man.2147) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.2148) "\[MAN\] \002%char%set\002 (+/-)statuslog\002 ; \002%botnick% set\002 (+/-)statuslog ; \002(PRIVMSG) set\002 <#chan> (+/-)statuslog"

#Static 

set black(say.en.man.2149) "\[MAN\] \002Static\002 this is an internal eggdrop setting not related to \002BlackToolS script\002 and allow only permanent owners to remove the channel."
set black(say.en.man.2150) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.2151) "\[MAN\] \002%char%set\002 (+/-)static ; \002%botnick% set\002 (+/-)static ; \002(PRIVMSG) set\002 <#chan> (+/-)static"

#Revenge 

set black(say.en.man.2152) "\[MAN\] \002Revenge\002 this is an internal eggdrop setting not related to \002BlackToolS script\002 and will cause the bot to remember people who deop/kick/ban the bot, valid ops, or friends and punish them. Users with the +f flag are exempt from revenge."
set black(say.en.man.2153) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.2154) "\[MAN\] \002%char%set\002 (+/-)revenge ; \002%botnick% set\002 (+/-)revenge ; \002(PRIVMSG) set\002 <#chan> (+/-)revenge"

#RevengeBot 

set black(say.en.man.2155) "\[MAN\] \002RevengeBot\002 this is an internal eggdrop setting not related to \002BlackToolS script\002 and is similar to to the 'revenge' option, but it only triggers if a bot gets deopped, kicked or banned."
set black(say.en.man.2156) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.2157) "\[MAN\] \002%char%set\002 (+/-)revengebot ; \002%botnick% set\002 (+/-)revengebot ; \002(PRIVMSG) set\002 <#chan> (+/-)revengebot"

#Secret 

set black(say.en.man.2158) "\[MAN\] \002Secret\002 this is an internal eggdrop setting not related to \002BlackToolS script\002 and prevent the channel from being listed on the botnet."
set black(say.en.man.2159) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.2160) "\[MAN\] \002%char%set\002 (+/-)secret ; \002%botnick% set\002 (+/-)secret ; \002(PRIVMSG) set\002 <#chan> (+/-)secret"

#Shared 

set black(say.en.man.2161) "\[MAN\] \002Shared\002 this is an internal eggdrop setting not related to \002BlackToolS script\002 and will cause the bot to share channel-related user info for this channel."
set black(say.en.man.2162) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.2163) "\[MAN\] \002%char%set\002 (+/-)shared ; \002%botnick% set\002 (+/-)shared ; \002(PRIVMSG) set\002 <#chan> (+/-)shared"

#Cycle 

set black(say.en.man.2164) "\[MAN\] \002Cycle\002 this is an internal eggdrop setting not related to \002BlackToolS script\002 and will cause the bot to cycle the channel when it has no ops (@)."
set black(say.en.man.2165) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.2166) "\[MAN\] \002%char%set\002 (+/-)cycle ; \002%botnick% set\002 (+/-)cycle ; \002(PRIVMSG) set\002 <#chan> (+/-)cycle"

#NodeSynch 

set black(say.en.man.2167) "\[MAN\] \002NodeSynch\002 this is an internal eggdrop setting not related to \002BlackToolS script\002 and allow non-ops to perform channel modes. This can stop the bot from fighting with services such as ChanServ, or from kicking IRC Operators when setting channel modes without having ops."
set black(say.en.man.2168) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.2169) "\[MAN\] \002%char%set\002 (+/-)nodesynch ; \002%botnick% set\002 (+/-)nodesynch ; \002(PRIVMSG) set\002 <#chan> (+/-)nodesynch"

#DynamicExempts 

set black(say.en.man.2170) "\[MAN\] \002DynamicExempts\002 this is an internal eggdrop setting not related to \002BlackToolS script\002 and only activate exempts on the channel when necessary. This keeps the channel's exempt list from getting excessively long. The bot still remembers every exempt, but it only activates a exempt on the channel when it sees a ban set that matches the exempt. The exempt remains active on the channel for as long as the ban is still active."
set black(say.en.man.2171) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.2172) "\[MAN\] \002%char%set\002 (+/-)dynamicexempts ; \002%botnick% set\002 (+/-)dynamicexempts ; \002(PRIVMSG) set\002 <#chan> (+/-)dynamicexempts"

#UserExempts 

set black(say.en.man.2173) "\[MAN\] \002UserExempts\002 this is an internal eggdrop setting not related to \002BlackToolS script\002 and allow exempts to be made by users directly. If turned off, the bot will require all exempts to be made through the bot's console."
set black(say.en.man.2174) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.2175) "\[MAN\] \002%char%set\002 (+/-)userexempts ; \002%botnick% set\002 (+/-)userexempts ; \002(PRIVMSG) set\002 <#chan> (+/-)userexempts"

#DynamicInvites 

set black(say.en.man.2176) "\[MAN\] \002DynamicInvites\002 this is an internal eggdrop setting not related to \002BlackToolS script\002 and only activate invites on the channel when necessary. This keeps the channel's invite list from getting excessively long. The bot still remembers every invite, but the invites are only activated when the channel is set to invite only and a user joins after requesting an invite. Once set, the invite remains until the channel goes to -i."
set black(say.en.man.2177) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.2178) "\[MAN\] \002%char%set\002 (+/-)dynamicinvites ; \002%botnick% set\002 (+/-)dynamicinvites ; \002(PRIVMSG) set\002 <#chan> (+/-)dynamicinvites"

#UserInvites 

set black(say.en.man.2179) "\[MAN\] \002UserInvites\002 this is an internal eggdrop setting not related to \002BlackToolS script\002 and allow invites to be made by users directly. If turned off, the bot will require all invites to be made through the bot's console."
set black(say.en.man.2180) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.2181) "\[MAN\] \002%char%set\002 (+/-)userinvites ; \002%botnick% set\002 (+/-)userinvites ; \002(PRIVMSG) set\002 <#chan> (+/-)userinvites"

#Flood-Ctcp

set black(say.en.man.2182) "\[MAN\] \002Flood-Ctcp\002 this is an internal eggdrop setting not related to \002BlackToolS script\002 and defines how many channel ctcps in how many seconds from one host constitutes a flood (+f users will not be kicked). To turn this setting off, specify \0020\002 or \0020:0\002."
set black(say.en.man.2183) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.2184) "\[MAN\] \002%char%set\002 flood-ctcp <ctcp:seconds> ; \002%botnick% set\002 flood-ctcp <ctcp:seconds> ; \002(PRIVMSG) set\002 <#chan> flood-ctcp <ctcp:seconds>"
set black(say.en.man.2185) "View options settings: \002%char%show\002 <setting> ; \002%botnick% show\002 <setting> ; \002(PRIVMSG) show\002 <#chan> <setting>"

#Flood-Join

set black(say.en.man.2186) "\[MAN\] \002Flood-Join\002 this is an internal eggdrop setting not related to \002BlackToolS script\002 and defines how many joins in how many seconds from one host constitutes a flood (+f users will not be kicked). To turn this setting off, specify \0020\002 or \0020:0\002."
set black(say.en.man.2187) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.2188) "\[MAN\] \002%char%set\002 flood-join <joins:seconds> ; \002%botnick% set\002 flood-join <joins:seconds> ; \002(PRIVMSG) set\002 <#chan> flood-join <joins:seconds>"
set black(say.en.man.2189) "View options settings: \002%char%show\002 <setting> ; \002%botnick% show\002 <setting> ; \002(PRIVMSG) show\002 <#chan> <setting>"

#Flood-Kick 

set black(say.en.man.2190) "\[MAN\] \002Flood-Kick\002 this is an internal eggdrop setting not related to \002BlackToolS script\002 and defines how many kicks in how many seconds from one host constitutes a flood (+f users will not be kicked). To turn this setting off, specify \0020\002 or \0020:0\002."
set black(say.en.man.2191) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.2192) "\[MAN\] \002%char%set\002 flood-kick <kicks:seconds> ; \002%botnick% set\002 flood-kick <kicks:seconds> ; \002(PRIVMSG) set\002 <#chan> flood-kick <kicks:seconds>"
set black(say.en.man.2193) "View options settings: \002%char%show\002 <setting> ; \002%botnick% show\002 <setting> ; \002(PRIVMSG) show\002 <#chan> <setting>"

#Flood-Deop 

set black(say.en.man.2194) "\[MAN\] \002Flood-Deop\002 this is an internal eggdrop setting not related to \002BlackToolS script\002 and defines how many deops in how many seconds from one host constitutes a flood (+f users will not be kicked). To turn this setting off, specify \0020\002 or \0020:0\002."
set black(say.en.man.2195) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.2196) "\[MAN\] \002%char%set\002 flood-deop <deops:seconds> ; \002%botnick% set\002 flood-deop <deops:seconds> ; \002(PRIVMSG) set\002 <#chan> flood-deop <deops:seconds>"
set black(say.en.man.2197) "View options settings: \002%char%show\002 <setting> ; \002%botnick% show\002 <setting> ; \002(PRIVMSG) show\002 <#chan> <setting>"

#Flood-Nick 

set black(say.en.man.2198) "\[MAN\] \002Flood-Nick\002 this is an internal eggdrop setting not related to \002BlackToolS script\002 and how many nick changes in how many seconds from one host constitutes a flood (+f users will not be kicked). To turn this setting off, specify \0020\002 or \0020:0\002."
set black(say.en.man.2199) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.2200) "\[MAN\] \002%char%set\002 flood-nick <nicks:seconds> ; \002%botnick% set\002 flood-nick <nicks:seconds> ; \002(PRIVMSG) set\002 <#chan> flood-nick <nicks:seconds>"
set black(say.en.man.2201) "View options settings: \002%char%show\002 <setting> ; \002%botnick% show\002 <setting> ; \002(PRIVMSG) show\002 <#chan> <setting>"

#Flood-Chan 

set black(say.en.man.2202) "\[MAN\] \002Flood-Chan\002 this is an internal eggdrop setting not related to \002BlackToolS script\002 and defines how many channel messages in how many seconds from one host constitutes a flood (+f users will not be kicked). To turn this setting off, specify \0020\002 or \0020:0\002."
set black(say.en.man.2203) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.2204) "\[MAN\] \002%char%set\002 flood-chan <lines:seconds> ; \002%botnick% set\002 flood-chan <lines:seconds> ; \002(PRIVMSG) set\002 <#chan> flood-chan <lines:seconds>"
set black(say.en.man.2205) "View options settings: \002%char%show\002 <setting> ; \002%botnick% show\002 <setting> ; \002(PRIVMSG) show\002 <#chan> <setting>"


#AutoUpdate

set black(say.en.man.2206) "\[MAN\] \002AutoUpdate\002 gives the ability for the script to \001update\001 itself (if new version of BT or bugfix available) by command or \002AUTO\002 (by timer). The BT files and the variables set in \001BlackTools.tcl\001 are saved and restored."
set black(say.en.man.2207) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.2208) "\[MAN\] \002%char%update <on>\002 (enable autoupdate); \002%char%update off\002 <disable autoupdate>; \002%char%update check\002 (check for new updates); \002%char%update start\002 (start update); \002%char%update time\002 \[time\] (set update time interval, can use X\001m\001,X\001h\001,X\001d\001 ; if \001\[time\]\001 isn't specified, it shows the current set time)"

#Alias

set black(say.en.man.2209) "\[MAN\] \002ALIAS\002 allows users to create their own commands based on the BT commands. All commands are available"
set black(say.en.man.2210) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.2211) "\[MAN\] \002%char%alias add\002 <command> <BT command> \[arguments\] ; \002%char%alias del\002 <command>"
set black(say.en.man.2212) "\[MAN\] Example 1 : \002%char%alias add\002 lamer \001b\001 %1% 0 Your are a lamer !! \[%1% - nick or host\]"
set black(say.en.man.2213) "\[MAN\] Example 2 : \002%char%alias add\002 beer \001cycle\001 %1% %2% Going to have a beer, i will be back \[%1% - channel ;  %2% - cycle duration\]"

#NoProxy

set black(say.en.man.2214) "\[MAN\] \002NoProxy\002 bans users who use IPs that are considered to be \001PROXY\001"
set black(say.en.man.2215) "\[MAN\] USAGE SYNTAXES:"
set black(say.en.man.2216) "\[MAN\] \002%char%set\002 (+/-)noproxy ; \002%botnick% set\002 (+/-)noproxy ; \002(PRIVMSG) set\002 <#chan> (+/-)noproxy"
set black(say.en.man.2217) "\[MAN\] Optional settings: \noproxy-reason\002; noproxy-bantime (You can use in \001noproxy-reason\001 the keyword \"%isp%\" and it will be replaced with the IP's ISP)"

#Egg AntiBotidle

set black(say.en.man.2218) "\[MAN\] \002AntiBotIdle\002 is a setting that disables or enables the eggdrop's own \002IDLE\002."
set black(say.en.man.2218_1) "\[MAN\] \0021\002 = no idle ; \0020\002 = idle"
set black(say.en.man.2219) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.2220) "\[MAN\] \002%char%set antibotidle\002 <1|0> ; \002%botnick% set antibotidle\002 <1|0> ; \002(PRIVMSG) set antibotidle\002 <1|0>"

#Vote

set black(say.en.man.2221) "\[MAN\] \002Vote\002 gives you the posibility to open a Voting process where all users (those with access or all) can answer with one of the options available."
set black(say.en.man.2222) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.2223) "\[MAN\] \002%char%set\002 (+/-)vote ; \002%botnick% set\002 (+/-)vote ; \002(PRIVMSG) set\002 <#chan> (+/-)vote"
set black(say.en.man.2224) "\[MAN\] \002%char%vote \002\[#chan\] \002add\002 <vote_name> -option <option1> -option <option2>.. \[-time \[DD/MM/YY HH:MM\]\] (expire time) \[-type 1/0\] (1 - users with access, 0 - all users)"
set black(say.en.man.2225) "\[MAN\] \002%char%vote \002\[#chan\]\002 \002list \[ID\]\002 (voting list, if an ID is specified, it will list the votes for the voting specified by ID) ; \002%char%vote \002\[#chan\]\002 del <ID> (remove voting)"
set black(say.en.man.2226) "\[MAN\] \002%char%vote \002\[#chan\]\002 <ID> <letter> (the option letter from the voting ID) ; \002%char%vote \002\[#chan\] time\002 <ID> <DD/MM/YY HH:MM> (setup new expire time) ; \002%char%vote \002\[#chan\]\002 end <ID> (end voting)"
set black(say.en.man.2227) "\[MAN\] Optional settings: \002vote-mask\002 (see \002%char%vote man\002 mask) ; \002(+/-)votegreet\002 (enable greet for users to know if votings are available)"
set black(say.en.man.2228) "\[MAN\] \002%char%vote \002\[#chan\]\002 \002list \[ID\]\002 (voting list, if an ID is specified \[admin+ only\], it will list the votes for the voting specified by ID)"
set black(say.en.man.2229) "\[MAN\] \002%char%vote \002\[#chan\]\002 <ID> <letter> (the option letter from the voting ID)"

#Mask

set black(say.en.man.2230) "\[MAN\] Available masks:"
set black(say.en.man.2231) "\[MAN\] \002#1\002 *!*@host ; \002#2\002 *!user@host ; \002#3\002 nick!user@host ; \002#4\002 nick!*@* ; \002#5\002 *!user@*"
set black(say.en.man.2232) "\[MAN\] USAGE SYNTAX: \002%char%set\002 <setting> <no. method> ; \002%botnick% set\002 <setting> <no. method> ; \002(PRIVMSG) set\002 <#chan> <setting> <no. method>"

##############################
############################################################################################################
#   END                                                                                                    #
############################################################################################################
