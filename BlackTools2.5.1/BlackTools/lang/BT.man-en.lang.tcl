#########################################################################################################################################
##                                          BlackTools - The Ultimate Channel Control Script                                           ##
##                                                     One TCL. One smart Eggdrop                                                      ##
#########################################################################################################################################
## This file goes along with BlackTools.tcl and is loaded automatically if exist in /lang folder (this file is required)               ##
#########################################################################################################################################
#                                                                                                                                       #
#                                                      *** The Future is Here ***                                                       #
#                                                                                            Copyright 2008 - 2017 @ www.tclscripts.net #
#########################################################################################################################################
#                                                                                                                                       #
#   ENGLISH LANGUAGE                                                                                                            ®       #
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

set black(say.en.man.3) "\[MAN\] \002Man\002 is the command used to read the \001BlackToolS manual\001."
set black(say.en.man.4) "\[MAN\] Display information about how to use or set each commands, protections and modules."
set black(say.en.man.4_1) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.5) "\[MAN\] \002%char%man\002 <command> ; \002%botnick% man\002 <command> ; \002(PRIVMSG) man\002 <command>"

#h

set black(say.en.man.6) "\[MAN\] \002h\002 is the most important command from Blacktools Channel Control Script."
set black(say.en.man.7) "\[MAN\] Display all available commands and allows users to browse the script menu according to their access level on a specified channel."
set black(say.en.man.8) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.9) "\[MAN\] \002%char%h\002 <category> ; \002%botnick% h\002 <category> ; \002(PRIVMSG) h\002 \[#chan\] <category>"
set black(say.en.man.10) "\[MAN\] To view the main menu, use: \002%char%h\002 ; \002%botnick% h\002 ; \002(PRIVMSG) h\002 \[#chan\]"

#v

set black(say.en.man.11) "\[MAN\] \002v\002 is used to give/remove voice \002(+v)\002 to/from a specified user."
set black(say.en.man.12) "\[MAN\] If no nick is specified, and you are not voiced on the channel, it will voice \002(+v)\002 you."
set black(say.en.man.13) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.14) "\[MAN\] \002%char%v\002 <nick1> <nick2>.. ; \002%botnick% v\002 <nick1 <nick2>.. ; \002(PRIVMSG) v\002 <#chan> <nick1 <nick2>.."
set black(say.en.man.15) "\[MAN\] \002%char%v +\002 (massvoice) ; \002%char%v -\002 (massdevoice)"

#o

set black(say.en.man.16) "\[MAN\] \002o\002 is used to give/remove op \001(@)\001 to/from a specified user."
set black(say.en.man.17) "\[MAN\] If no nick is specified, and you are not opped on the channel, it will op \002(@)\002 you."
set black(say.en.man.18) "\[MAN\] USAGE SYNTAXES:"
set black(say.en.man.19) "\[MAN\] \002%char%o\002 <nick1> <nick2>.. ; \002%botnick% o\002 <nick1 <nick2>.. ; \002(PRIVMSG) o\002 <#chan> <nick1 <nick2>.."
set black(say.en.man.20) "\[MAN\] \002%char%o +\002 (massop)\002 ; %char%o -\002 (massdeop)"

#UserList

set black(say.en.man.22) "\[MAN\] \002UserList\002 is used to view the entire access list of users from a specified channel."
set black(say.en.man.23) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.24) "\[MAN\] \002%char%userlist\002 <level / all> ; \002%botnick% userlist\002 <level / all> ; \002(PRIVMSG) userlist\002 <#chan> <level / all>"
set black(say.en.man.25) "\[MAN\] As access \002<level>\002 you have: \002%msg.1%\002 ; \002%msg.2%\002 ; \002%msg.3%\002 ; \002%msg.4%\002"
set black(say.en.man.26) "\[MAN\] As access \002<level>\002 you have: \002%msg.1%\002 ; \002%msg.2%\002 ; \002%msg.3%\002 ; \002%msg.4%\002 ; \002%msg.12%\002"
set black(say.en.man.27) "\[MAN\] As access \002<level>\002 you have: \002%msg.1%\002 ; \002%msg.2%\002 ; \002%msg.3%\002 ; \002%msg.4%\002 ; \002%msg.12%\002 ; \002%msg.13%\002 ; \002%msg.15%\002"
set black(say.en.man.28) "\[MAN\] As access \002<level>\002 you have: \002%msg.1%\002 ; \002%msg.2%\002 ; \002%msg.3%\002"

#Version

set black(say.en.man.28) "\[MAN\] \002Version\002 displays information about the \001BlackTools version\001 that the eggdrop is running."
set black(say.en.man.29) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.30) "\[MAN\] \002%char%version\002 ; %botnick% version ; \002(PRIVMSG) version\002"

#Info

set black(say.en.man.31) "\[MAN\] \002Info\002 gets information on users or channels from eggdrop's database."
set black(say.en.man.32) "\[MAN\] This will show you such information as access level, channel mode, greet, user added host(s), etc."
set black(say.en.man.33) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.34) "\[MAN\] \002%char%info\002 <user / #chan> ; \002%botnick% info\002 <user / #chan> ; \002(PRIVMSG) info\002 <user / #chan>"

#Act

set black(say.en.man.35) "\[MAN\] \002Act\002 makes the eggdrop do a specified action (\001/me\001) in a specified channel."
set black(say.en.man.36) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.37) "\[MAN\] \002%char%act\002 <text> ; \002%botnick% act\002 <text> ; \002(PRIVMSG) act\002 <#chan> <text>"

#t

set black(say.en.man.38) "\[MAN\] \002t\002 sets a topic with your desired text."
set black(say.en.man.39) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.40) "\[MAN\] \002%char%t\002 <text> ; \002%botnick% t\002 <text> ; \002(PRIVMSG) t\002 <#chan> <text>"
set black(say.en.man.41) "\[MAN\] To include in topic the handle of the user who changed it, use: \002%char%set +showhandle\002"

#Cycle

set black(say.en.man.42) "\[MAN\] \002Cycle\002 makes the eggdrop cycle (\001/hop\001), or part and re-join, a specified channel."
set black(say.en.man.43) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.44) "\[MAN\] \002%char%cycle\002 \[time / reason\] ; \002%botnick% cycle\002 \[time / reason\] ; \002(PRIVMSG) cycle\002 <#chan> \[time / reason\]"

#Mode

set black(say.en.man.45) "\[MAN\] \002Mode\002 applies or removes a mode on a specified channel."
set black(say.en.man.46) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.47) "\[MAN\] \002%char%mode\002 (+/-)<modes> ; %botnick% mode\002 (+/-)<modes> ; \002(PRIVMSG) mode\002 <#chan> (+/-)<modes>"

#i

set black(say.en.man.48) "\[MAN\] \002i\002 invites a specified user to a specified channel."
set black(say.en.man.49) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.50) "\[MAN\] \002%char%i\002 <nick> ; \002%botnick% i\002 <nick> ; \002(PRIVMSG) i\002 <#chan> <nick>"

#k

set black(say.en.man.62) "\[MAN\] \002k\002 kicks (removes) a user from a specific channel. Reason is optional."
set black(say.en.man.63) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.64) "\[MAN\] \002%char%k\002 <nick> \[reason\] ; \002%botnick% k\002 <nick> \[reason\] ; \002(PRIVMSG) k\002 <#chan> <nick> \[reason\]"
set black(say.en.man.65) "\[MAN\] Optional settings: \002k-reason\002 (default reason setting)"

#w

set black(say.en.man.66) "\[MAN\] \002w\002 deliver a warning by a kick to a user with a given reason."
set black(say.en.man.67) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.68) "\[MAN\] \002%char%w\002 <nick> ; \002%botnick% w\002 <nick> ; \002(PRIVMSG) w\002 <#chan> <nick>"
set black(say.en.man.69) "\[MAN\] Optional settings: \002w-reason\002 (default warning reason) ; \002w-message\002 (default warning message)"

#Check

set black(say.en.man.70) "\[MAN\] \002Check\002 verifies a user with a private message if is virused or making advertise."
set black(say.en.man.71) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.72) "\[MAN\] \002%char%check\002 <nick>\002 ; \002%botnick% check\002 <nick> ; \002(PRIVMSG) check\002 \[#chan\] <nick>"
set black(say.en.man.73) "\[MAN\] Optional settings: \002%char%set\002 check-message <text> ; \002(PRIVMSG) set\002 check-message <text> (default check message)"

#sb

set black(say.en.man.74) "\[MAN\] \002sb\002 search and/or show details about a given ban (support wildcards)."
set black(say.en.man.75) "\[MAN\] USAGE SYNTAXES:"
set black(say.en.man.76) "\[MAN\] \002%char%sb\002 <host / nick> ; \002%botnick% sb\002 <*host* / nick> ; \002(PRIVMSG) sb\002 <#chan> <*host* / nick>"
set black(say.en.man.77) "\[MAN\] \002%char%sb\002 <host / nick> \[global\] ; \002%botnick% sb\002 <*host* / nick> \[global\] ; \002(PRIVMSG) sb\002 <#chan> <*host* / nick> \[global\]"
set black(say.en.man.78) "\[MAN\] In case that \002<nick>\002 is not on %chan%, eggdrop will \002WHOIS\002 it and check if it has ban on \002ident/host/nick\002 showing information about."

#id

set black(say.en.man.79) "\[MAN\] \002id\002 sets a ban on a given \001IDENT\001. If a user nickname is specified, eggdrop will automatically take his ident."
set black(say.en.man.80) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.81) "\[MAN\] \002%char%id\002 <nick> / ident> ; \002%botnick% id\002 <nick / ident> ; \002(PRIVMSG) id\002 <#chan> <nick / ident>"
set black(say.en.man.82) "\[MAN\] Optional settings: \002id-reason\002 (default reason); \002id-bantime\002 (default ban time); \002id-banmask\002 (default banmask)"

#n

set black(say.en.man.83) "\[MAN\] \002n\002 sets a ban on a given \001NICKNAME\001."
set black(say.en.man.84) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.85) "\[MAN\] \002%char%n\002 <nick> ; \002%botnick% n\002 <nick> ; \002(PRIVMSG) n\002 <#chan> <nick>"
set black(say.en.man.86) "\[MAN\] Optional settings: \002n-reason\002 (default reason); \002n-bantime\002 (default ban time)"

#Spam

set black(say.en.man.87) "\[MAN\] \002Spam\002 ban a user with a default \001SPAM\001 reason."
set black(say.en.man.88) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.89) "\[MAN\] \002%char%spam\002 <nick / host> ; \002%botnick% spam\002 <nick / host> ; \002(PRIVMSG) spam\002 <#chan> <nick / host>"
set black(say.en.man.90) "\[MAN\] Optional settings: \002spam-reason\002 (default spam reason); \002spam-bantime\002 (default spam ban time); \002spam-banmask\002 (default spam banmask)"

#dr

set black(say.en.man.91) "\[MAN\] \002dr\002 ban a user with a default \001DRONE\001 reason."
set black(say.en.man.92) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.93) "\[MAN\] \002%char%dr\002 <nick / host> ; \002%botnick% dr\002 <nick / host> ; \002(PRIVMSG) dr\002 <#chan> <nick / host>"
set black(say.en.man.94) "\[MAN\] Optional settings: \002dr-reason\002 (default reason); \002dr-bantime\002 (default ban time); \002dr-banmask\002 (default banmask)"

#b

set black(say.en.man.95) "\[MAN\] \002b\002 ban a user from a channel for a specified ban-time. If you do not specify a \001\[period\]\001 will be used default value, but if you specify \0020\002 will become a permanent ban (blacklisted)."
set black(say.en.man.96) "\[MAN\] Format period: <x>\002m\002 = minutes, <x>\002h\002 = hours, <x>\002d\002 = days, \0020\002 = permanent"
set black(say.en.man.97) "\[MAN\] USAGE SYNTAXES:"
set black(say.en.man.98) "\[MAN\] \002%char%b\002 <nick / host> \[-level\] \[period\] \[reason\] ; \002%botnick% b\002 <nick / host> \[-level\] \[period\] \[reason\] ; \002(PRIVMSG) b\002 <#chan> <nick / host> \[-level\] \[period\] \[reason\]"
set black(say.en.man.99) "\[MAN\] \002%char%b\002 <nick / host>  \[-level\] \[period\] \[global\] \[reason\] ; \002%botnick% b\002 <nick / host> \[-level\] \[period\] \[global\] \[reason\] ; \002(PRIVMSG) b\002 <#chan> <nick / host> \[-level\] \[period\] \[global\] \[reason\]"
set black(say.en.man.100) "\[MAN\] Optional settings: \002b-reason\002 (default reason); \002b-bantime\002 (default ban time); \002b-banmask\002 (default banmask)"

#ub

set black(say.en.man.101) "\[MAN\] \002ub\002 removes a ban from a specified channel (supports wildcards). \002ATTENTION\002: If you specify ONLY \002*\002 the eggdrop removes all channel bans."
set black(say.en.man.102) "\[MAN\] USAGE SYNTAXES:"
set black(say.en.man.103) "\[MAN\] \002%char%ub\002 <nick / *host* / id> ; \002%botnick% ub\002 <nick / *host* / id> ; \002(PRIVMSG) ub\002 <#chan> <nick / *host* / id>\002"
set black(say.en.man.104) "\[MAN\] \002%char%ub\002 <nick / *host* / id> \[global\]\002 ; \002%botnick% ub\002 <nick / *host* / id> \[global\] ; \002(PRIVMSG) ub\002 <#chan> <nick / *host* / id> \[global\]"
set black(say.en.man.105) "\[MAN\] In case that \002<nick>\002 is not on %chan% eggdrop will \002WHOIS\002 it and check if has ban on \002ident/host/nick\002 and will unban it."

#Bot

set black(say.en.man.106) "\[MAN\] \002Bot\002 ban a user with a default \001BOT\001 reason."
set black(say.en.man.107) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.108) "\[MAN\] \002%char%bot\002 <nick / host>\002 ; \002%botnick% bot\002 <nick / host> ; \002(PRIVMSG) bot\002 <#chan> <nick / host>"
set black(say.en.man.109) "\[MAN\] Optional settings: \002bot-reason\002 (default reason); \002bot-bantime\002 (default ban time); \002bot-banmask\002 (default banmask)"

#bw

set black(say.en.man.110) "\[MAN\] \002bw\002 ban a user with a default reason."
set black(say.en.man.111) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.112) "\[MAN\] \002%char%bw\002 <nick / host> ; \002%botnick% bw\002 <nick / host> ; \002(PRIVMSG) bw\002 <#chan> <nick / host>\002"
set black(say.en.man.113) "\[MAN\] Optional settings: \002bw-reason\002 (default reason); \002bw-bantime\002 (default ban time); \002bw-banmask\002 (default banmask)"

#Black

set black(say.en.man.114) "\[MAN\] \002Black\002 ban a user for \001UNLIMITED time\001 (permanent ban)."
set black(say.en.man.115) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.116) "\[MAN\] \002%char%black\002 <nick / host> \[reason\] ; \002%botnick% black\002 <nick / host> \[reason\] ; \002(PRIVMSG) black\002 <#chan> <nick / host> \[reason\]\002"
set black(say.en.man.117) "\[MAN\] Optional settings: \002black-reason\002 (default reason); \002black-banmask\002 (default banmask)"

#Stick 

set black(say.en.man.118) "\[MAN\] \002Stick\002 ban a user with a given reason and ban-time, but with a \001sticky\001 character. A sticky ban will be reactivated by the bot if anyone removes it from the channel."
set black(say.en.man.118_1) "\[MAN\] Format period: <x>\002m\002 = minutes, <x>\002h\002 = hours, <x>\002d\002 = days, \0020\002 = permanent"
set black(say.en.man.119) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.120) "\[MAN\] \002%char%stick\002 <nick / host> \[period\] \[reason\] ; %botnick% stick\002 <nick / host> \[period\] \[reason\] ; \002(PRIVMSG) stick\002 <#chan> <nick / host> \[period\] \[reason\]"
set black(say.en.man.121) "\[MAN\] Optional settings: \002stick-reason\002 (default reason); \002stick-bantime\002 (default ban time); \002stick-banmask\002 (default banmask)"

#Gag

set black(say.en.man.122) "\[MAN\] \002Gag\002 silence/mute (cannot write on channel) a user for a period of time. If you do not specify a \002\[period\]\002 will be used a default value."
set black(say.en.man.122_1) "\[MAN\] Format period: <x>\002m\002 = minutes, <x>\002h\002 = hours, <x>\002d\002 = days"
set black(say.en.man.123) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.124) "\[MAN\] \002%char%gag\002 <nick> \[period\] \[reason\] ; \002%botnick% gag\002 <nick> \[period\] \[reason\] ; \002(PRIVMSG) gag\002 <#chan> <nick> \[period\] \[reason\]\002."
set black(say.en.man.125) "\[MAN\] Optional settings: \002gag-reason\002 (default reason); \002gag-bantime\002 (default ban time); \002gag-banmask\002 (default banmask)"

#Add

set black(say.en.man.126) "\[MAN\] \002Add\002 give access to a user. As user it uses \001X username\001, and his host will automatically be added to : *!*@%user%.users.undernet.org"
set black(say.en.man.127) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.128) "\[MAN\] \002%char%add\002 <level> <user> ; \002%botnick% add\002 <level> <user> ; \002(PRIVMSG) add\002 <#chan> <level> <user>"

#Adduser

set black(say.en.man.134) "\[MAN\] \002Adduser\002 give access to a user. As user it uses \001NICKNAME\001 and his host will automatically be added the current one."
set black(say.en.man.135) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.136) "\[MAN\] \002%char%adduser\002 <level> <nick> ; \002%botnick% adduser\002 <level> <nick> ; \002(PRIVMSG) adduser\002 <#chan> <level> <nick>"

#DelAcc

set black(say.en.man.142) "\[MAN\] \002DelAcc\002 remove a user from the eggdrop userlist in a specified channel."
set black(say.en.man.142_1) "\[MAN\] \002REMEMBER\002: to delete a user from a channel userlist, your access level must be greater than access level of the specified user (so, if you have \002OP\002 and specified user have \002ADMIN\002 you can't delete him)."
set black(say.en.man.143) "\[MAN\] USAGE SYNTAXES:"
set black(say.en.man.144) "\[MAN\] \002%char%delacc\002 <user> ; %botnick% delacc\002 <user> ; \002(PRIVMSG) delacc\002 <#chan> <user>"
set black(say.en.man.145) "\[MAN\] \002%char%delacc\002 <owner / master> <user> ; \002%botnick% delacc\002 <owner / master> <user> ; \002(PRIVMSG) delacc\002 <#chan> <owner / master> <user> (remove access global)"

#Del

set black(say.en.man.146) "\[MAN\] \002Del\002 remove a user from eggdrop database."
set black(say.en.man.147) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.148) "\[MAN\] \002%char%del\002 <user> ; \002%botnick% del\002 <user> ; \002(PRIVMSG) del\002 <#chan> <user>"

#unGag

set black(say.en.man.149) "\[MAN\] \002unGag\002 remove the \002gag\002 from a specified user."
set black(say.en.man.150) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.151) "\[MAN\] \002%char%ungag\002 <nick / host> ; \002%botnick% ungag\002 <nick / host> ; \002(PRIVMSG) ungag\002 <#chan> <nick / host>"

#BanList

set black(say.en.man.152) "\[MAN\] \002BanList\002 show the list of banned masks that are active on the specified channel."
set black(say.en.man.153) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.154) "\[MAN\] \002%char%banlist\002 <user / all / other> ; \002%botnick% banlist\002 <user / all / other> ; \002(PRIVMSG) banlist\002 <#chan> <user / all / other>"
set black(say.en.man.155) "\[MAN\] \002%char%banlist\002 <user / all>  / other / global> ; \002%botnick% banlist\002 <user / all / other / global> ; \002(PRIVMSG) banlist\002 <#chan> <user / all / other / global>"

#AddHost

set black(say.en.man.156) "\[MAN\] \002AddHost\002 adds a new hostmask to a specified user."
set black(say.en.man.157) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.158) "\[MAN\] \002%char%addhost\002 <user> <host> ; \002%botnick% addhost\002 <user> <host> ; \002(PRIVMSG) addhost\002 <#chan> <user> <host>"

#DelHost

set black(say.en.man.159) "\[MAN\] \002DelHost\002 removes a hostmask from a specified user."
set black(say.en.man.160) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.161) "\[MAN\] \002%char%delhost\002 <user> <host> ; \002%botnick% delhost\002 <user> <host> ; \002(PRIVMSG) delhost\002 <#chan> <user> <host>"

#chUser

set black(say.en.man.162) "\[MAN\] \002chUser\002 change the <handle> (name) of a user into <newhandle>."
set black(say.en.man.163) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.164) "\[MAN\] \002%char%chuser\002 <handle> <newhandle> ; \002%botnick% chuser\002 <handle> <newhandle> ; \002(PRIVMSG) chuser\002 <handle> <newhandle>"

#s

set black(say.en.man.165) "\[MAN\] \002s\002 suspends a user access on a specified channel. If you do not specify a \002\[period\]\002 will be used a default value."
set black(say.en.man.165_1) "\[MAN\] Format period: <x>\002m\002 = minutes, <x>\002h\002 = hours, <x>\002d\002 = days"
set black(say.en.man.166) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.167) "\[MAN\] \002%char%s\002 <user> \[period\] \[reason\] ; \002%botnick% s\002 <user> \[period\] \[reason\] ; \002(PRIVMSG) s\002 <#chan> <user> \[period\] \[reason\]"

#us

set black(say.en.man.168) "\[MAN\] \002us\002 removes the suspension for a specified user access from a given channel."
set black(say.en.man.169) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.170) "\[MAN\] \002%char%us\002 <user> ; \002%botnick% us\002 <user> ; \002(PRIVMSG) us\002 <#chan> <user>"

#Auto

set black(say.en.man.171) "\[MAN\] \002Auto\002 adds autoop/autovoice to a specified user for a given channel."
set black(say.en.man.172) "\[MAN\] USAGE SYNTAXES:"
set black(say.en.man.173) "\[MAN\] AutoVOICE: \002%char%auto (+/-)v\002 <user> ; %botnick% auto (+/-)v <user> ; \002(PRIVMSG) auto\002 <#chan> (+/-)v <user>"
set black(say.en.man.174) "\[MAN\] AutoOP: \002%char%auto (+/-)o\002 <user> ; %botnick% auto (+/-)o <user> ; \002(PRIVMSG) auto\002 <#chan> (+/-)o <user>"
set black(say.en.man.175) "\[MAN\] AutoVOICE: \002%char%auto (+/-)v\002 <user> \[-global\] ; %botnick% auto\002 (+/-)v <user> \[-global\] ; \002(PRIVMSG) auto\002 <#chan> (+/-)v <user> \[-global\]"
set black(say.en.man.176) "\[MAN\] AutoOP: \002%char%auto (+/-)o\002 <user> \[-global\] ; %botnick% auto\002 (+/-)o <user> \[-global\] ; \002(PRIVMSG) auto\002 <#chan> (+/-)o <user> \[-global\]"


################################################# MAN PROTECTIONS #####################################################


#AntiPub

set black(say.en.man.177) "\[MAN\] \002AntiPub\002 protection module against users who advertise by *#* or *www.*"
set black(say.en.man.178) "\[MAN\] USAGE SYNTAXES:"
set black(say.en.man.179) "\[MAN\] \002%char%set\002 (+/-)antipub ; \002%botnick% set\002 (+/-)antipub ; \002(PRIVMSG) set\002 (+/-)antipub"
set black(say.en.man.180) "\[MAN\] \002%char%antipub\002 add \[#chan\] <*link* / #*chan*> ; \002%char%antipub\002 list ; \002%char%antipub\002 del <no. list>"
set black(say.en.man.181) "\[MAN\] Optional settings: \002antipub-reason\002; antipub-bantime; \002antipub-warn\002; antipub-banmethod; \002antipub-banmask\002"

#AntiNotice

set black(say.en.man.183) "\[MAN\] \002AntiNotice\002 protection module against users who use \"NOTICE\" on a channel."
set black(say.en.man.184) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.185) "\[MAN\] \002%char%set\002 (+/-)antinotice ; \002%botnick% set\002 (+/-)antinotice ; \002(PRIVMSG) set\002 <#chan> (+/-)antinotice"
set black(say.en.man.186) "\[MAN\] Optional settings: \002antinotice-reason\002; antinotice-bantime; \002antinotice-warn\002; antinotice-banmethod; \002antinotice-banmask\002"
set black(say.en.man.187) "\[MAN\] View options settings: \002%char%show\002 <setting> ; \002%botnick% show\002 <setting> ; \002(PRIVMSG) show\002 <#chan> <setting>"

#AntiCtcp

set black(say.en.man.188) "\[MAN\] \002AntiCtcp\002 protection module against users who use \"CTCP\" on a channel."
set black(say.en.man.189) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.190) "\[MAN\] \002%char%set\002 (+/-)antictcp ; \002%botnick% set\002 (+/-)antictcp ; \002(PRIVMSG) set\002 <#chan> (+/-)antictcp"
set black(say.en.man.191) "\[MAN\] Optional settings: \002antictcp-reason\002, antictcp-bantime, \002antictcp-warn\002, antictcp-banmethod, \002antictcp-banmask\002"
set black(say.en.man.192) "\[MAN\] View options settings: \002%char%show\002 <setting> ; \002%botnick% show\002 <setting> ; \002(PRIVMSG) show\002 <#chan> <setting>"

#AntiBadWord

set black(say.en.man.193) "\[MAN\] \002AntiBadWord\002 protection module against users who use *bad/forbidden* words/phrases on a channel."
set black(say.en.man.194) "\[MAN\] USAGE SYNTAXES:"
set black(say.en.man.195) "\[MAN\] \002%char%set\002 (+/-)antibadword ; \002%botnick% set\002 (+/-)antibadword ; \002(PRIVMSG) set\002 <#chan> (+/-)antibadword"
set black(say.en.man.196) "\[MAN\] \002%char%badword add\002 \[#chan\] <*word*/ *phrase*> ; \002%char%badword list\002 ; \002%char%badword del\002 <no. list>"
set black(say.en.man.197) "\[MAN\] Optional settings: \002antibadword-reason\002, antibadword-bantime, \002antibadword-warn\002, antibadword-banmethod, \002antibadword-banmask\002"
set black(say.en.man.198) "View options settings: \002%char%show\002 <setting> ; \002%botnick% show\002 <setting> ; \002(PRIVMSG) show\002 <#chan> <setting>"

#AntiLongText

set black(say.en.man.199) "\[MAN\] \002AntiLongText\002 protection module against users who write too many words in one line."
set black(say.en.man.200) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.201) "\[MAN\] \002%char%set\002 (+/-)antilongtext ; \002%botnick% set\002 (+/-)antilongtext ; \002(PRIVMSG) set\002 <#chan> (+/-)antilongtext"
set black(say.en.man.202) "\[MAN\] Optional settings: \002antilongtext-reason\002, antilongtext-bantime, \002antilongtext-warn\002, antilongtext-banmethod, \002antilongtextmax\002, antilongtext-banmask"
set black(say.en.man.203) "View options settings: \002%char%show\002 <setting> ; \002%botnick% show\002 <setting> ; \002(PRIVMSG) show\002 <#chan> <setting>"

#BadQuitPart

set black(say.en.man.204) "\[MAN\] \002AntiBadQuitPart\002 protection module against users who use *bad/forbidden* words when parting a channel."
set black(say.en.man.205) "\[MAN\] USAGE SYNTAXES:"
set black(say.en.man.206) "\[MAN\] \002%char%set\002 (+/-)badquitpart ; \002%botnick% set\002 (+/-)badquitpart ; \002(PRIVMSG) set\002 <#chan> (+/-)badquitpart"
set black(say.en.man.207) "\[MAN\] \002%char%badquitpart add\002 \[#chan\] <*text*> ; \002%char%badquitpart\002 list ; \002%char%badquitpart del\002 <no. list>"
set black(say.en.man.208) "\[MAN\] Optional settings: \002antibadquitpart-reason\002, antibadquitpart-bantime, \002antibadquitpart-banmethod\002, antibadquitpart-banmask"
set black(say.en.man.209) "View options settings: \002%char%show\002 <setting> ; \002%botnick% show\002 <setting> ; \002(PRIVMSG) show\002 <#chan> <setting>"

#AntiJoinPart

set black(say.en.man.210) "\[MAN\] \002AntiJoinPart\002 protection module against users who joins and part too fast on a channel."
set black(say.en.man.211) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.212) "\[MAN\] \002%char%set (+/-)antijoinpart\002 ; %botnick% set (+/-)antijoinpart ; \002(PRIVMSG) set <#chan> (+/-)antijoinpart\002"
set black(say.en.man.213) "\[MAN\] Optional settings: \002antijoinpart-reason\002, antijoinpart-bantime, \002antijoinpart-banmethod\002, antijoinpart-banmask"
set black(say.en.man.214) "View options settings: \002%char%show\002 <setting> ; \002%botnick% show\002 <setting> ; \002(PRIVMSG) show\002 <#chan> <setting>"

#AntiSpam

set black(say.en.man.215) "\[MAN\] \002AntiSpam\002 protection module against users who send spam messages containing \001#\001 or \001*www.*\001 (see also \002!man spamjoinmessage\002)."
set black(say.en.man.216) "\[MAN\] USAGE SYNTAXES:"
set black(say.en.man.217) "\[MAN\] \002%char%set\002 (+/-)antispam ; \002%botnick% set\002 (+/-)antispam ; \002(PRIVMSG) set\002 <#chan> (+/-)antispam"
set black(say.en.man.218) "\[MAN\] \002%char%antispam add\002 \[#chan\] <*text*> ; \002%char%antispam list\002 ; \002%char%antispam del\002 <no. list>"
set black(say.en.man.219) "\[MAN\] Optional settings: \002antispam-reason\002, antispam-message, \002antispam-bantime\002, antispam-banmask, \002antispam-cycletime\002"
set black(say.en.man.220) "View options settings: \002%char%show\002 <setting> ; \002%botnick% show\002 <setting> ; \002(PRIVMSG) show\002 <#chan> <setting>"

#AntiRepeat

set black(say.en.man.221) "\[MAN\] \002AntiRepeat\002 protection module against users who repeats the same text too often on a channel."
set black(say.en.man.222) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.223) "\[MAN\] \002%char%set\002 (+/-)antirepeat ; \002%botnick% set\002 (+/-)antirepeat ; \002(PRIVMSG) set\002 <#chan> (+/-)antirepeat"
set black(say.en.man.224) "\[MAN\] Optional settings: \002antirepeat-reason\002, antirepeat-bantime, \002antirepeat-warn\002, antirepeat-banmethod, \002antirepeat-banmask\002"
set black(say.en.man.225) "View options settings: \002%char%show\002 <setting> ; \002%botnick% show\002 <setting> ; \002(PRIVMSG) show\002 <#chan> <setting>"

#AntiColor

set black(say.en.man.226) "\[MAN\] \002AntiColor\002 protection module against users who use \002COLOURS\002 on a channel."
set black(say.en.man.227) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.228) "\[MAN\] \002%char%set\002 (+/-)anticolor ; \002%botnick% set\002 (+/-)anticolor ; \002(PRIVMSG) set\002 <#chan> (+/-)anticolor"
set black(say.en.man.229) "\[MAN\] Optional settings: \002anticolor-reason\002, anticolor-bantime, \002anticolor-warn\002, anticolor-banmethod, \002anticolor-banmask\002"
set black(say.en.man.230) "View options settings: \002%char%show\002 <setting> ; \002%botnick% show\002 <setting> ; \002(PRIVMSG) show\002 <#chan> <setting>"

#AntiBold

set black(say.en.man.231) "\[MAN\] \002AntiBold\002 protection module against users who use \002BOLD\002 on a channel."
set black(say.en.man.232) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.233) "\[MAN\] \002%char%set\002 (+/-)antibold ; \002%botnick% set\002 (+/-)antibold ; \002(PRIVMSG) set\002 <#chan> (+/-)antibold"
set black(say.en.man.234) "\[MAN\] Optional settings: \002antibold-reason\002, antibold-bantime, \002antibold-warn\002, antibold-banmethod, \002antibold-banmask\002"
set black(say.en.man.235) "View options settings: \002%char%show\002 <setting> ; \002%botnick% show\002 <setting> ; \002(PRIVMSG) show\002 <#chan> <setting>"

#AntiUnderline

set black(say.en.man.236) "\[MAN\] \002AntiUnderline\002 protection module against users who use \002UNDERLINE\002 on a channel."
set black(say.en.man.237) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.238) "\[MAN\] \002%char%set\002 (+/-)antiunderline ; \002%botnick% set\002 (+/-)antiunderline ; \002(PRIVMSG) set\002 <#chan> (+/-)antiunderline"
set black(say.en.man.239) "\[MAN\] Optional settings: \002antiunderline-reason\002, antiunderline-bantime, \002antiunderline-warn\002, antiunderline-banmethod, \002antiunderline-banmask\002"
set black(say.en.man.240) "View options settings: \002%char%show\002 <setting> ; \002%botnick% show\002 <setting> ; \002(PRIVMSG) show\002 <#chan> <setting>"

#AntiCaps

set black(say.en.man.241) "\[MAN\] \002AntiCaps\002 protection module against users who abuse using \002CAPS LOCK\002 on a channel."
set black(say.en.man.242) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.243) "\[MAN\] \002%char%set\002 (+/-)anticaps ; \002%botnick% set\002 (+/-)anticaps ; \002(PRIVMSG) set\002 <#chan> (+/-)anticaps"
set black(say.en.man.244) "\[MAN\] Optional settings: \002anticaps-reason\002, anticaps-bantime, \002anticaps-warn\002, anticaps-banmethod, \002anticaps-banmask\002"
set black(say.en.man.245) "View options settings: \002%char%show\002 <setting> ; \002%botnick% show\002 <setting> ; \002(PRIVMSG) show\002 <#chan> <setting>"

#BadNick

set black(say.en.man.246) "\[MAN\] \002BadNick\002 protection module against users who are using NICKNAMEs which contains *bad/forbidden* characters."
set black(say.en.man.247) "\[MAN\] USAGE SYNTAXES:"
set black(say.en.man.248) "\[MAN\] \002%char%set\002 (+/-)badnick ; \002%botnick% set\002 (+/-)badnick ; \002(PRIVMSG) set\002 <#chan> (+/-)badnick"
set black(say.en.man.249) "\[MAN\] \002%char%badnick add\002 \[#chan\] <*text*> ; \002%char%badnick list\002 ; \002%char%badnick del\002 <no. list>"
set black(say.en.man.250) "\[MAN\] Optional settings: \002badnick-reason\002, badnick-bantime, \002badnick-banmask\002"
set black(say.en.man.251) "View options settings: \002%char%show\002 <setting> ; \002%botnick% show\002 <setting> ; \002(PRIVMSG) show\002 <#chan> <setting>"

#BadRealname

set black(say.en.man.252) "\[MAN\] \002BadRealname\002 protection module against users who are using REALNAMEs which contains *bad/forbidden* characters."
set black(say.en.man.253) "\[MAN\] USAGE SYNTAXES:"
set black(say.en.man.254) "\[MAN\] \002%char%set\002 (+/-)badrealname ; \002%botnick% set\002 (+/-)badrealname ; \002(PRIVMSG) set\002 <#chan> (+/-)badrealname"
set black(say.en.man.255) "\[MAN\] \002%char%badrealname add\002 \[#chan\] <*text*> ; \002%char%badrealname list\002 ; \002%char%badrealname del\002 <no. list>"
set black(say.en.man.256) "\[MAN\] Optional settings: \002badrealname-reason\002, badrealname-bantime, \002badrealname-banmask\002"
set black(say.en.man.257) "View options settings: \002%char%show\002 <setting> ; \002%botnick% show\002 <setting> ; \002(PRIVMSG) show\002 <#chan> <setting>"

#AutoOp

set black(say.en.man.258) "\[MAN\] \002AutoOp\002 is an option which, when enabled, gives the opportunity to every user who joins a channel to have \002OP (@)\002."
set black(say.en.man.259) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.260) "\[MAN\] \002%char%set\002 (+/-)autoop ; \002%botnick% set\002 (+/-)autoop ; \002(PRIVMSG) set\002 <#chan> (+/-)autoop"

#AutoVoice

set black(say.en.man.261) "\[MAN\] \002AutoVoice\002 is an option which, when enabled, gives the opportunity to every user who joins a channel to have \002VOICE (+v)\002."
set black(say.en.man.262) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.263) "\[MAN\] \002%char%set\002 (+/-)autovoice ; \002%botnick% set\002 (+/-)autovoice ; \002(PRIVMSG) set\002 <#chan> (+/-)autovoice"

#AntiJoinFlood

set black(say.en.man.264) "\[MAN\] \002AntiJoinFlood\002 protection module against \002massjoin\002 actions, setting to channel different modes."
set black(say.en.man.265) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.266) "\[MAN\] \002%char%set\002 (+/-)antijoinflood ; \002%botnick% set\002 (+/-)antijoinflood ; \002(PRIVMSG) set\002 <#chan> (+/-)antijoinflood"
set black(say.en.man.267) "\[MAN\] Optional settings: \002joinflood\002 (<number joins>:<seconds>)"
set black(say.en.man.268) "View options settings: \002%char%show\002 <setting> ; \002%botnick% show\002 <setting> ; \002(PRIVMSG) show\002 <#chan> <setting>"

#AntiChanFlood

set black(say.en.man.269) "\[MAN\] \002AntiChanFlood\002 protection module against users who flood a channel with text/words."
set black(say.en.man.270) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.271) "\[MAN\] \002%char%set\002 (+/-)antichanflood ; \002%botnick% set\002 (+/-)antichanflood ; \002(PRIVMSG) set\002 <#chan> (+/-)antichanflood"
set black(say.en.man.272) "\[MAN\] Optional settings: \002antichanflood-reason\002 (default reason), \002antichanflood-bantime\002 (default bantime), \002chanflood\002 (<number lines>:<seconds>)"
set black(say.en.man.273) "View options settings: \002%char%show\002 <setting> ; \002%botnick% show\002 <setting> ; \002(PRIVMSG) show\002 <#chan> <setting>"

#BadIdent

set black(say.en.man.274) "\[MAN\] \002BadIdent\002 protection module against users who are using IDENTs which contains *bad/forbidden* characters."
set black(say.en.man.275) "\[MAN\] USAGE SYNTAXES:"
set black(say.en.man.276) "\[MAN\] \002%char%set\002 (+/-)badident ; \002%botnick% set\002 (+/-)badident ; \002(PRIVMSG) set\002 <#chan> (+/-)badident"
set black(say.en.man.277) "\[MAN\] \002%char%badident add\002 \[#chan\] <*text*> ; \002%char%badident list\002 ; \002%char%badident del\002 <no. list>"
set black(say.en.man.278) "\[MAN\] Optional settings: \002badident-reason\002 (default reason), \002badident-bantime\002 (default bantime), \002badident-banmask\002 (default banmask)"
set black(say.en.man.279) "View options settings: \002%char%show\002 <setting> ; \002%botnick% show\002 <setting> ; \002(PRIVMSG) show\002 <#chan> <setting>"

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

set black(say.en.man.298) "\[MAN\] \002oProtect\002 is an option which, when enabled, will except those who have \002OP (@)\002 from all protection."
set black(say.en.man.299) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.300) "\[MAN\] \002%char%set\002 (+/-)oprotect ; \002%botnick% set\002 (+/-)oprotect ; \002(PRIVMSG) set\002 <#chan> (+/-)oprotect"

#vProtect

set black(say.en.man.301) "\[MAN\] \002vProtect\002 is an option which, when enabled, will except those who have \002VOICE (+v)\002 from all protection."
set black(say.en.man.302) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.303) "\[MAN\] \002%char%set\002 (+/-)vprotect ; \002%botnick% set\002 (+/-)vprotect ; \002(PRIVMSG) set\002 <#chan> (+/-)vprotect"

#hoProtect

set black(say.en.man.304) "\[MAN\] \002hoProtect\002 is an option which, when enabled, will except those who have \002HALFOP (+h %)\002 from all protection."
set black(say.en.man.305) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.306) "\[MAN\] \002%char%set\002 (+/-)hoprotect ; \002%botnick% set\002 (+/-)hoprotect ; \002(PRIVMSG) set\002 <#chan> (+/-)hoprotect"

#ShowID

set black(say.en.man.307) "\[MAN\] \002ShowID\002 will append the \002ID number\002 of ban from the eggdrop banlist to the ban reason."
set black(say.en.man.308) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.309) "\[MAN\] \002%char%set\002 (+/-)showid ; \002%botnick% set\002 (+/-)showid; \002(PRIVMSG) set\002 <#chan> (+/-)showid"


################################################# MAN MODULES #####################################################

 
#xTools

set black(say.en.man.407) "\[MAN\] \002xTools\002 is a module which will give eggdrop permission to take Op, Voice, to do Unban or Invite from *X*."
set black(say.en.man.408) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.409) "\[MAN\] \002%char%set\002 (+/-)xtools ; \002%botnick% set\002 (+/-)xtools ; \002(PRIVMSG) set\002 <#chan> (+/-)xtools"

#BadChan

set black(say.en.man.410) "\[MAN\] \002BadChan\002 is a module which will not let people who are co-channeling *bad/forbidden* channels to stay on a specified channel (support wildcards)."
set black(say.en.man.411) "\[MAN\] USAGE SYNTAXES:"
set black(say.en.man.412) "\[MAN\] \002%char%badchan\002 <ON/OFF> ; \002%botnick% badchan\002 <ON/OFF> ; \002(PRIVMSG) badchan\002 <#chan> <ON/OFF>"
set black(say.en.man.413) "\[MAN\] \002%char%badchan add\002 <#*chan*> \[reason\] ; \002%char%badchan del\002 <no. list> ; \002%char%badchan list\002"
set black(say.en.man.414) "\[MAN\] \002%char%badchan add\002 <#*chan*> \[global\] \[reason\]\002 ; %char%badchan del\002 <no. list> \[-global\] ; \002%char%badchan list\002 \[-global\]"
set black(say.en.man.415) "\[MAN\] Optional settings: \002badchan-reason\002, badchan-bantime, \002badchan-bmethod\002, badchan-scantime, \002showbadchan\002"
set black(say.en.man.416) "View options settings: \002%char%show\002 <setting> ; \002%botnick% show\002 <setting> ; \002(PRIVMSG) show\002 <#chan> <setting>"

#Anunt

set black(say.en.man.417) "\[MAN\] \002Anunt/Advert\002 is a module that will display announcements/ads on a channel over a certain amount of time. The eggdrop will display them one by one in order only if the channel is active."
set black(say.en.man.418) "\[MAN\] USAGE SYNTAXES:"
set black(say.en.man.419) "\[MAN\] \002%char%anunt <ON/OFF>\002 ; %botnick% anunt <ON/OFF> ; \002(PRIVMSG) anunt <#chan> <ON/OFF>\002"
set black(say.en.man.420) "\[MAN\] \002%char%anunt add\002 \[#chan\] <text> ; \002%char%anunt list\002 ; \002%char%anunt del\002 <no. list>"
set black(say.en.man.421) "\[MAN\] \002Remember:\002 To add more than 1 sentence in an add use \002%char%anunt add <text1>~<text2>..\002 and eggdrop will show the add as 2 different senteces."

#Limit

set black(say.en.man.422) "\[MAN\] \002Limit\002 is a module that has the role of \"handling\" of the channel limit."
set black(say.en.man.423) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.424) "\[MAN\] \002%char%limit\002 <ON/OFF> ; \002%botnick% limit\002 <ON/OFF> ; \002(PRIVMSG) limit\002 <#chan> <ON/OFF>"
set black(say.en.man.425) "\[MAN\] \002%char%limit set <number>\002 (default limit number)"
set black(say.en.man.426) "View options settings: \002%char%show\002 <setting> ; \002%botnick% show\002 <setting> ; \002(PRIVMSG) show\002 <#chan> <setting>"

#Topic

set black(say.en.man.427) "\[MAN\] \002Topic\002 is a module that sets the channel topic, which can be seen in the \002%char%info #channel\002 reply. If no topic text is specified, the current channel topic will be added."
set black(say.en.man.428) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.429) "\[MAN\] \002%char%topic\002 set \[#chan\] <text> ; \002%botnick% topic\002 set \[#chan\] <text> ; \002(PRIVMSG) topic\002 set \[#chan\] <text>"
set black(say.en.man.430) "\[MAN\] Options settings: \002%char%set\002 <setting> <text / number> ; \002%botnick% set\002 <setting> <text / number> ; \002(PRIVMSG) set\002 <#chan> <setting> <text / number>"

#CloneScan

set black(say.en.man.431) "\[MAN\] \002CloneScan\002 is a module which, when enabled, will scan channel for clones."
set black(say.en.man.432) "\[MAN\] USAGE SYNTAXES:"
set black(say.en.man.433) "\[MAN\] \002%char%set\002 (+/-)clonescan ; \002%botnick% set\002 (+/-)clonescan ; \002(PRIVMSG) set\002 <#chan> (+/-)clonescan"
set black(say.en.man.433_1) "\[MAN\] \002%char%clonescan add\002 <*ip* / *host*> ; \002%char%clonescan del\002 <no. list> ; \002%char%clonescan list\002"
set black(say.en.man.434) "\[MAN\] Optional settings: \002clonescan-maxclone\002 (max clones number), \002clonescan-bantime\002 (default bantime), \002clonescan-reason\002 (default reason)"
set black(say.en.man.435) "View options settings: \002%char%show\002 <setting> ; \002%botnick% show\002 <setting> ; \002(PRIVMSG) show\002 <#chan> <setting>"

#Seen

set black(say.en.man.436) "\[MAN\] \002Seen\002 search for a person with specified nick. It has a database for each channel."
set black(say.en.man.437) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.438) "\[MAN\] \002%char%set\002 (+/-)seen ; \002%botnick% set\002 (+/-)seen ; \002(PRIVMSG) set\002 <#chan> (+/-)seen"
set black(say.en.man.439) "\[MAN\] Optional settings: \002%char%seenreply\002 ; \002seenlastmsg\002"
set black(say.en.man.440) "View options settings: \002%char%show\002 <setting> ; \002%botnick% show\002 <setting> ; \002(PRIVMSG) show\002 <#chan> <setting>"

#Greet

set black(say.en.man.441) "\[MAN\] \002Greet\002 is a module which you can add a welcome message for the users who join a specified channel (see also \002%char%man infoline\002)."
set black(say.en.man.442) "\[MAN\] USAGE SYNTAXES:"
set black(say.en.man.443) "\[MAN\] \002%char%greet\002 <ON/OFF> ; \002%botnick% greet\002 <ON/OFF> ; \002(PRIVMSG) greet\002 <#chan> <ON/OFF>"
set black(say.en.man.444) "\[MAN\] \002%char%greet set\002 \[#chan\] <text>\002 ; \002%botnick% greet set\002 \[#chan\] <text> ; \002(PRIVMSG) greet set\002 \[#chan\] <text>"
set black(say.en.man.445) "\[MAN\] \002%char%set greet-method <method>\002 ( NOTICE | PRIVMSG )"
set black(say.en.man.446) "\[MAN\] \002Remember:\002 To add more than 1 sentence in an greet use \002%char%greet add <greet1>~<greet2>\002.. and eggdrop will show the greet as 2 different senteces."

#Leave

set black(say.en.man.447) "\[MAN\] \002Leave\002 is a module by which you can add a part message to the users who part a specified channel."
set black(say.en.man.448) "\[MAN\] USAGE SYNTAXES:"
set black(say.en.man.449) "\[MAN\] \002%char%leave\002 <ON/OFF> ; \002%botnick% leave\002 <ON/OFF> ; \002(PRIVMSG) leave\002 <#chan> <ON/OFF>"
set black(say.en.man.450) "\[MAN\] \002%char%leave set\002 \[#chan\] <text>\002 ; \002%botnick% leave set\002 \[#chan\] <text> ; \002(PRIVMSG) leave set\002 \[#chan\] <text>"
set black(say.en.man.451) "\[MAN\] \002%char%set leave-method <method>\002 ( NOTICE | PRIVMSG )"
set black(say.en.man.452) "\[MAN\] \002Remember:\002 To add more than 1 sentence in an leave use \002%char%leave add <leave1>~<leave2>\002.. and eggdrop will show the leave as 2 different senteces."

#Idle

set black(say.en.man.453) "\[MAN\] \002Idle\002 is a module which, when activated, will not allow users with \002op (@)\002, \002halfop (+h %)\002 or \002voice (+v)\002 to idle."
set black(say.en.man.453_1) "\[MAN\] Format period: X\002d\002 = days ; X\002h\002 = hours ; X\002m\002 = minutes"
set black(say.en.man.454) "\[MAN\] USAGE SYNTAXES:"
set black(say.en.man.455) "\[MAN\] \002%char%idle\002 <(+/-)o / (+/-)v / (+/-)ho> ; \002%botnick% idle\002 <(+/-)o / (+/-)v / (+/-)ho> ; \002(PRIVMSG) idle\002 <#chan> <(+/-)o / (+/-)v / (+/-)ho>"
set black(say.en.man.456) "\[MAN\] \002%char%idle add\002 <nick> (add exceptionfrom idle), \002%char%idle <list>\002 (list exceptions), \002%char%idle del\002 <nick> (delete exception)"
set black(say.en.man.457) "\[MAN\] Optional settings: \002idleopmax\002 <period> (default time idledeop) ; \002idlevoicemax\002 <period> (default time idlevoice) ; \002idlehalfopmax\002 <period> (default time idlehalfop)"
set black(say.en.man.458) "View options settings: \002%char%show\002 <setting> ; \002%botnick% show\002 <setting> ; \002(PRIVMSG) show\002 <#chan> <setting>"
set black(say.en.man.458_1) "\[MAN\] For informations about \002idlevoice\002 please check: \002%char%man idle\002"
set black(say.en.man.458_2) "\[MAN\] For informations about \002idleop\002 please check: \002%char%man idle\002"
set black(say.en.man.458_3) "\[MAN\] For informations about \002idlehalfop\002 please check: \002%char%man idle\002"

#BackChan

set black(say.en.man.459) "\[MAN\] \002BackChan\002 (ex ChanReport) is a module which, when enabled, will give the option for every channel to have a back-channel, in which eggdrop will say the bans given by him to the mainchannel."
set black(say.en.man.460) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.461) "\[MAN\] \002%char%set\002 \[#chan\] backchan <#backchan> ; \002%botnick% set\002 \[#chan\] backchan <#backchan> ; \002(PRIVMSG) set\002 <#chan> backchan <#backchan>"
set black(say.en.man.462) "\[MAN\] \002Remember:\002 After the set of the backchannel you will be able to use all the ban commands but they will be applied on \002<#chan>\002 (the main channel)."
set black(say.en.man.463) "\[MAN\] \002ChanReport\002 (BackChan) is a module which, when enabled, will give the option for every channel to have a back-channel, in which eggdrop will say the bans given by him to \002<#chan>\002 (the main channel)."

#TopWords

set black(say.en.man.464) "\[MAN\] \002TopWords\002 is a module which will record users activity from a channel (number of written words, lines, letters, etc.)."
set black(say.en.man.465) "\[MAN\] USAGE SYNTAXES:"
set black(say.en.man.466) "\[MAN\] \002%char%set\002 (+/-)topwords ; \002%botnick% set\002 (+/-)topwords ; \002(PRIVMSG) set\002 <#chan> (+/-)topwords"
set black(say.en.man.467) "\[MAN\] \002%char%topwords\002 ; \002%char%topwords\002 total ; \002%char%topwords\002 reset (reset top)"

#AntiTake

set black(say.en.man.473) "\[MAN\] \002Antitake\002 is a module which has 2 settings: The first setting stops users without access from \002taking OP (@)\002 from other ops. It will deop the op taking ops, and reop the op who lost ops. The second setting stops users without access from \002giving OP (@)\002 to another user. In such a case, both users will be deopped."
set black(say.en.man.474) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.475) "\[MAN\] \002%char%set\002 (+/-)dontdeop ; \002%botnick% set\002 (+/-)dontdeop (deop protection) ; \002%char%set\002 (+/-)dontop ; \002%botnick% set\002 (+/-)dontop (op protection)"
set black(say.en.man.475_1) "\[MAN\] For informations about \002dontdeop\002 please check: \002%char%man antitake\002"
set black(say.en.man.475_2) "\[MAN\] For informations about \002dontop\002 please check: \002%char%man antitake\002"

#Private

set black(say.en.man.476) "\[MAN\] \002Private\002 is a module which, when enabled, will not allow users without access to join a specified channel unless they have been added to the except list."
set black(say.en.man.477) "\[MAN\] USAGE SYNTAXES:"
set black(say.en.man.478) "\[MAN\] \002%char%set\002 (+/-)private ; \002%botnick% set\002 (+/-)private ; \002(PRIVMSG) set\002 <#chan> (+/-)private"
set black(say.en.man.479) "\[MAN\] \002%char%private add\002 <nick> <host> (add exception), \002%char%private list\002 (list exceptions), \002%char%private del\002 <nick> (del exception)"
set black(say.en.man.480) "\[MAN\] Optional settings: \002private-reason\002 (default reason); \002private-bantime\002 (default bantime)"
set black(say.en.man.481) "View options settings: \002%char%show\002 <setting> ; \002%botnick% show\002 <setting> ; \002(PRIVMSG) show\002 <#chan> <setting>"

#AutoBroadcast

set black(say.en.man.482) "\[MAN\] \002AutoBroadCast\002 is a module which, when enabled, will broadcast messages, one at a time, on all channels the eggdrop is in."
set black(say.en.man.483) "\[MAN\] USAGE SYNTAXES:"
set black(say.en.man.484) "\[MAN\] \002%char%bt\002 <ON/OFF> ; \002%botnick% bt\002 <ON/OFF> ; \002(PRIVMSG) bt\002 <#chan> <ON/OFF>"
set black(say.en.man.485) "\[MAN\] \002%char%bt add\002 <text> ; \002%char%bt\002 list ; \002%char%bt del\002 <no. list>"
set black(say.en.man.486) "\[MAN\] \002%char%set\002 <#chan> (+/-)silent (it will NOT broadcast in that channel)"
set black(say.en.man.486_1) "\[MAN\] For informations about \002silent\002 please check: \002%char%man autobroadcast\002"

#Language

set black(say.en.man.487) "\[MAN\] \002Language\002 (lang) is a module which allows you to set the default language to receive eggdrop's messages and is also the default language messages used by eggdrop in kick/ban reasons."
set black(say.en.man.487_1) "\[MAN\] \002Lang\002 (language) is a module which allows you to set the default language to receive eggdrop's messages and is also the default language messages used by eggdrop in kick/ban reasons."
set black(say.en.man.488) "\[MAN\] USAGE SYNTAXES:"
set black(say.en.man.489) "\[MAN\] \002%char%set\002 \[#chan\] lang <language> ; \002%botnick% set\002 \[#chan\] lang <language> ; \002(PRIVMSG) set\002 \[#chan\] lang <language>"
set black(say.en.man.489_1) "\[MAN\] \002%char%myset\002 lang <language> ; \002%botnick% myset\002 lang <language> ; \002(PRIVMSG) myset\002 lang <language> (default user language)"

#TCL

set black(say.en.man.490) "\[MAN\] \002TCL\002 is a module that supports uploading, loading and unloading Tcl scripts directly through your eggdrop (uploading is restricted to \002.tcl\002 files ONLY)."
set black(say.en.man.491) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.492) "\[MAN\] \002%char%tcl <list>\002 (see loaded scripts); \002%char%tcl wget\002 <link/name.tcl>; \002%char%tcl load\002 <name.tcl> (load a tcl script); \002%char%tcl unload\002 <name.tcl> (unload a tcl script); \002%char%tcl all\002 (see all tcl scripts); \002%char%tcl info\002 <name.tcl> (information about a tcl) "

#NeXt

set black(say.en.man.493) "\[MAN\] \002Next\002 is a module used on help channels which allows you to assist users who need your help in an orderly fashion."
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

set black(say.en.man.611) "\[MAN\] \002Set\002 sets any settings/options (flags) of eggdrop."
set black(say.en.man.612) "\[MAN\] USAGE SYNTAXES:"
set black(say.en.man.613) "\[MAN\] \002%char%set\002 (+/-)flag / <flag> <option> <description> ; \002%botnick% set\002 (+/-)flag / <flag> <option> <description> ; \002(PRIVMSG) set\002 <#chan> (+/-)flag / <flag> <option> <description>"
set black(say.en.man.614) "\[MAN\] \002%char%set\002 global (+/-)flag / <flag> <option> <description> (setting for all channels)"
set black(say.en.man.615) "\[MAN\] Example: \002%char%set\002 chanmode +k <key> (setting key)"

#Jump

set black(say.en.man.620) "\[MAN\] \002Jump\002 change which server your eggdrop is connected to."
set black(say.en.man.621) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.622) "\[MAN\] \002%char%jump\002 <irc server> ; \002%botnick% jump\002 <irc server> ; \002(PRIVMSG) jump\002 <irc server>"

#msg

set black(say.en.man.623) "\[MAN\] \002MSG\002 allows you to send a private message from eggdrop to a a specified user."
set black(say.en.man.624) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.625) "\[MAN\] \002%char%msg\002 <nick> <text> ; \002%botnick% msg\002 <nick> <text> ; \002(PRIVMSG) msg\002 <nick> <text>"

#Broadcast

set black(say.en.man.626) "\[MAN\] \002Broadcast\002 allows you to send messages to all channels the eggdrop is in."
set black(say.en.man.627) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.628) "\[MAN\] \002%char%broadcast\002 <message> ; \002%botnick% broadcast\002 <message> ; \002(PRIVMSG) broadcast\002 <message>"

#Ignore

set black(say.en.man.629) "\[MAN\] \002Ignore\002 allows you to add, list and remove \002ignores\002 from your eggdrop. If you do not specify a \002\[period\]\002, the default value will be used."
set black(say.en.man.629_1) "\[MAN\] Format period: <x>\002m\002 = minutes, <x>\002h\002 = hours, <x>\002d\002 = days"
set black(say.en.man.630) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.631) "\[MAN\] \002%char%ignore list\002 ; \002%char%ignore add\002 <host> \[period\] \[reason\] ; \002%char%ignore del\002 <host>"

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
set black(say.en.man.643_1) "\[MAN\] \002%char%nick egg\002 <newnick> ; \002%botnick% egg nick\002 <newnick> ; \002(PRIVMSG) egg nick\002 <newnick> (permanent setting)"

#Restart 

set black(say.en.man.644) "\[MAN\] \002Restart\002 allows you to make the eggdrop restart as a background process on the shell server."
set black(say.en.man.645) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.646) "\[MAN\] \002%char%restart\002 ; %botnick% restart ; \002(PRIVMSG) restart\002"
set black(say.en.man.647) "\[MAN\] \002Remember:\002 This command is mainly used if the bot is abnormally lagged or malfunctioning."

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
set black(say.en.man.666) "\[MAN\] If \002\[key\]\002 is specified eggdrop will join that \002<#chan>\002 using that key."

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
set black(say.en.man.678) "\[MAN\] \002%char%addinfo\002 <text / reset> ; \002%botnick% addinfo\002 <text / reset> ; \002(PRIVMSG) addinfo\002 <text / reset>"

#Invite 

set black(say.en.man.679) "\[MAN\] \002Invite\002 invites a user to the channel. The eggdrop must be a channel operator (@)."
set black(say.en.man.680) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.680) "\[MAN\] \002%char%invite\002 <#chan> <nick> ; \002%botnick% invite\002 <#chan> <nick> ; \002(PRIVMSG) invite\002 <#chan> <nick>"

#Say

set black(say.en.man.681) "\[MAN\] \002Say\002 makes the eggdrop say a specified text to a channel."
set black(say.en.man.682) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.683) "\[MAN\] %char%say\002 \[#chan\] <text> ; \002%botnick% say\002 \[#chan\] <text> ; \002(PRIVMSG) say\002 <#chan> <text>"

#Refresh

set black(say.en.man.684) "\[MAN\] \002Topicrefresh\002 helps maintains topic of %chan% by re-applying the topic after a set interval of time."
set black(say.en.man.685) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.686) "\[MAN\] \002%char%set\002 (+/-)refresh | \002%botnick% set\002 (+/-)refresh ; \002(PRIVMSG) set\002 <#chan> (+/-)refresh"


############################################## MAN NEW MODULES/COMMANDS #####################################################

#NoLogged

set black(say.en.man.687) "\[MAN\] \002NoLogged\002 is an extra option for the \002voiceme\002 module, which, once activated, will allow the command \002/msg %botnick% voiceme <#chan>\002 to be used and by users without a CService Username."
set black(say.en.man.688) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.689) "\[MAN\] \002%char%set\002 (+/-)nologged | \002%botnick% set\002 (+/-)nologged ; \002(PRIVMSG) set\002 <#chan> (+/-)nologged"

#Colors

set black(say.en.man.771) "\[MAN\] \002Colors\002 allows users to set certains personal \002colors\002 (from colors list) for the eggdrop replies."
set black(say.en.man.772) "\[MAN\] Colors list: bold, underline, red, blue, green, yellow, orange, cyan, grey, brown, purple, pink, black"
set black(say.en.man.773) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.774) "\[MAN\] \002%char%myset\002 colors <color1 color2 color3 color4> ; \002%botnick% myset\002 colors <color1 color2 color3 color4> ; \002(PRIVMSG) myset\002 colors <color1 color2 color3 color4>"

#ReportNick

set black(say.en.man.775) "\[MAN\] \002ReportNick\002 is a command that allows channel regular users to report a specific nickname for doing adverts or sending spam/lame messages (also access levels \002voice\002 and \002protect\002 can use it)."
set black(say.en.man.776) "\[MAN\] \002Remember\002: If you want this command to work, the eggdrop must be opped (@) on channel (uses @onotice to inform the channel operators)."
set black(say.en.man.777) "\[MAN\] USAGE SYNTAXES:"
set black(say.en.man.778) "\[MAN\] \002%char%set\002 (+/-)reportnick ; \002%botnick% set\002 (+/-)reportnick ; \002(PRIVMSG) set\002 <#chan> (+/-)reportnick"
set black(say.en.man.779) "\[MAN\] \002%char%report\002 <nick> <comment> ; \002%botnick% report\002 <nick> <comment> ; \002(PRIVMSG) report\002 <nick> <comment>"

#InviteBan

set black(say.en.man.780) "\[MAN\] \002InviteBan\002 this is a protection module that bans users who attempt to invite the eggdrop to unauthorized channels."
set black(say.en.man.781) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.782) "\[MAN\] \002%char%set\002 (+/-)inviteban ; \002%botnick% set\002 (+/-)inviteban ; \002(PRIVMSG) set\002 <#chan> (+/-)inviteban"
set black(say.en.man.783) "\[MAN\] Optional settings: \002inviteban-reason\002 (default reason); \002inviteban-bantime\002 (default bantime)"

#BadHost

set black(say.en.man.784) "\[MAN\] \002BadHost\002 this is a protection module that bans users who use IPs/vhosts containing specified \"bad\" words. (supports wildcards)."
set black(say.en.man.785) "\[MAN\] USAGE SYNTAXES:"
set black(say.en.man.786) "\[MAN\] \002%char%set\002 (+/-)badhost ; \002%botnick% set\002 (+/-)badhost ; \002(PRIVMSG) set\002 <#chan> (+/-)badhost"
set black(say.en.man.787) "\[MAN\] \002%char%badhost add\002 <*bad ip* / *bad vhost*> ; \002%char%badhost del\002 <no. list> ; \002%char%badhost list\002"
set black(say.en.man.788) "\[MAN\] Optional settings: \002badhost-reason\002; badhost-bantime; \002badhost-bmethod\002"

#NickFlood

set black(say.en.man.789) "\[MAN\] \002NickFlood\002 this is a protection module that bans users for changing their nicknames too often within a certain period of time."
set black(say.en.man.790) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.791) "\[MAN\] \002%char%set\002 (+/-)nickflood ; \002%botnick% set\002 (+/-)nickflood ; \002(PRIVMSG) set\002 <#chan> (+/-)nickflood"
set black(say.en.man.792) "\[MAN\] Optional settings: \002nickflood-reason\002; nickflood-bantime; \002nickflood-warn\002; nickflood-repeat; \002nickflood-banmethod\002; nickflood-banmask"

#SecureMode

set black(say.en.man.793) "\[MAN\] \002SecureMode\002 this is a protection module made to prevent join/part flood from botnets (users with access are ignored in this checks). This module is made specifically for Undernet."
set black(say.en.man.794) "\[MAN\] It only works with channel modes \002+Dm\002 and based on a system that generates a unique code for each user who joins the channel, which needs to be confirmed only once (first time join) if they wish to be allowed to join in the channel."
set black(say.en.man.795) "\[MAN\] USAGE SYNTAXES:"
set black(say.en.man.796) "\[MAN\] \002%char%set\002 (+/-)securemode ; \002%botnick% set\002 (+/-)securemode ; \002(PRIVMSG) set <#chan> (+/-)securemode\002"
set black(say.en.man.797) "\[MAN\] \002%char%securemode add\002 <*ip* / *host*> (supports wildcards) ; \002%char%securemode del\002 <no. list> ; \002%char%securemode list\002"

#VoiceMe

set black(say.en.man.820) "\[MAN\] \002VoiceMe\002 is a module which, once activated, will give users logged with \002*X*\002, the ability to have \002voice (+v)\002 simply using command \002/msg %botnick% voiceme <#chan>\002 (see also \002%char%man onlyonmode\002 and \002%char%man nologged\002)."
set black(say.en.man.821) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.822) "\[MAN\] \002%char%set\002 (+/-)voiceme ; \002%botnick% set\002 (+/-)voiceme ; \002(PRIVMSG) set\002 <#chan> (+/-)voiceme"
set black(say.en.man.823) "View options settings: \002%char%show\002 <setting> ; \002%botnick% show\002 <setting> ; \002(PRIVMSG) show\002 <#chan> <setting>"

#OnlyOnMode

set black(say.en.man.824) "\[MAN\] \002OnlyOnMode\002 is an extra option for the \002voiceme\002 module, which, once activated, will allow the command \002/msg %botnick% voiceme <#chan>\002 to be used ONLY when \002mode +m\002 is set on the channel."
set black(say.en.man.825) "\[MAN\] It will also send a specified message to channel so all users know that if they are registered and logged into \002*X*\002 can use the above command to receive \002voice (+v)\002 on that channel. If they don't have a \002CService Username\002 they will be told in the message where they can go to register one."
set black(say.en.man.826) "\[MAN\] \002Remember\002: This extra option works ONLY with \002voiceme\002 module and on \002+m\002 (moderate) channels (see also \002%char%man voiceme\002)."
set black(say.en.man.827) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.828) "\[MAN\] \002%char%set\002 (+/-)onlyonmode ; \002%botnick% set\002 (+/-)onlyonmode ; \002(PRIVMSG) set\002 <#chan> (+/-)onlyonmode"

#BanStats

set black(say.en.man.834) "\[MAN\] \002BanStats\002 is a module that will allow the eggdrop to keep statistics of each kick and ban given on a specified channel."
set black(say.en.man.835) "\[MAN\] USAGE SYNTAXES:"
set black(say.en.man.836) "\[MAN\] \002%char%set\002 (+/-)banstats ; \002%botnick% set\002 (+/-)banstats ; \002(PRIVMSG) set\002 <#chan> (+/-)banstats"
set black(say.en.man.837) "\[MAN\] \002%char%banstats\002 <total / reset> ; \002%botnick% banstats\002 <total / reset> ; \002(PRIVMSG) banstats\002 <#chan> <total / reset>\002"

#GuestNick

set black(say.en.man.838) "\[MAN\] \002GuestNick\002 is a module that once activated sends a predefined message to all users who join a channel and whose nick contains \"words\" defined in the eggdrop's database."
set black(say.en.man.839) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.840) "\[MAN\] \002%char%guestnick\002 <ON/OFF> ; \002%botnick% guestnick\002 <ON/OFF> ; \002(PRIVMSG) guestnick\002 <#chan> <ON/OFF>"
set black(say.en.man.841) "\[MAN\] Optional settings: \002%char%set guestnick-msgmethod\002 <method> ( CHAN | NOTICE | PRIVMSG ) ; \002%char%set guestnick-message\002 <text>"

#CP

set black(say.en.man.842) "\[MAN\] \002cp\002 is a module that allows you to copy a channel settings to another channel, including the userlist and banlist."
set black(say.en.man.843) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.844) "\[MAN\] %char%cp\002 <option> <#chan1> <#chan2> ; \002%botnick% cp\002 <option> <#chan1> <#chan2> ; \002(PRIVMSG) cp\002 <option> <#chan1> <#chan2>"
set black(say.en.man.845) "\[MAN\] As \002<options>\002 you have: \002<userlist>\002 (copy channel userlist); \002<banlist>\002 (copy channel banlist); \002<settings>\002 (copy channel settings)"

#VoiceOnMsg 

set black(say.en.man.846) "\[MAN\] \002VoiceOnMsg\002 is a module that voices users who have said a certain number of lines on a channel (active chatters)."
set black(say.en.man.847) "\[MAN\] It also devoices users who have been idling for more than a certain amount of time on the channel (inactive chatters)."
set black(say.en.man.848) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.849) "\[MAN\] \002%char%set\002 (+/-)voiceonmsg ; \002%botnick% set\002 (+/-)voiceonsmg ; \002(PRIVMSG) set <#chan> (+/-)voiceonsmg"
set black(say.en.man.850) "\[MAN\] Optional settings: \002%char%set voiceonmsg-linenum\002 <no. lines> (default no. lines) ; \002%char%set voiceonmsg-idletime\002 <period> (default idle time)"

#Troll

set black(say.en.man.851) "\[MAN\] \002Troll\002 bans a user with a default \002TROLL\002 reason (see also \002%char%man showtroll\002)."
set black(say.en.man.852) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.853) "\[MAN\] \002%char%troll\002 <nick> ; \002%botnick% troll\002 <nick> ; \002(PRIVMSG) troll\002 <#chan> <nick>"
set black(say.en.man.854) "\[MAN\] Optional settings: \002%char%set\002 troll-reason <text>; \002(PRIVMSG) set\002 <#chan> troll-reason <text> (default reason)"

#vr

set black(say.en.man.856) "\[MAN\] \002vr\002 bans a user with a default \002VIRUS/TROJAN\002 reason."
set black(say.en.man.857) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.858) "\[MAN\] \002%char%vr\002 <nick / host> ; \002%botnick% vr\002 <nick / host> ; \002(PRIVMSG) vr\002 <#chan> <nick / host>"
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
set black(say.en.man.867) "\[MAN\] If the channel is idle, the topic will not be reset during that time (idle = no users joining)."
set black(say.en.man.868) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.869) "\[MAN\] \002%char%set\002 (+/-)autotopic ; \002%botnick% set\002 (+/-)autotopic ; \002(PRIVMSG) autotopic\002 <#chan> (+/-)autotopic"
set black(say.en.man.870) "View options settings: \002%char%show\002 <setting> ; \002%botnick% show\002 <setting> ; \002(PRIVMSG) show\002 <#chan> <setting>"

#MySet

set black(say.en.man.871) "\[MAN\] \002MySet\002 is a command through which every user with access can setup his/her own settings/info."
set black(say.en.man.872) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.873) "\[MAN\] \002%char%myset\002 <option> \[description\] <reset / show> ; \002(PRIVMSG) myset\002 <option> \[description\] <reset / show>"
set black(say.en.man.874) "\[MAN\] As \002<option>\002 you have:"
set black(say.en.man.875) "\[MAN\] \002lang\002 <language> ; \002output\002 <method> ; \002mychar\002 <trigger> ; \002colors\002 <colors> ; \002noteexpire\002 <period> ; \002autoinvite\002 <ON/OFF>"
set black(say.en.man.877) "\[MAN\] \002auto\002 (+/-)v/o (AUTOMODE OP/VOICE) ; \002greet\002 <text> ; \002mychan\002 <#chan>"
set black(say.en.man.878) "\[MAN\] \002auto\002 (+/-)v/o \[-global\] (AUTOMODE OP/VOICE) ; \002addhost/delhost\002 <host> ; \002handle\002 <new handle> ; \002greet\002 <text> ; \002mychan\002 <#chan>"

#ho

set black(say.en.man.882) "\[MAN\] \002ho\002 gives/removes halfop \002(+h %)\002 to/from a specified user."
set black(say.en.man.882_1) "\[MAN\] If no nick is specified, and you are not halfoped on the channel, it will halfop you (rarely used)."
set black(say.en.man.883) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.884) "\[MAN\] \002%char%ho\002 <nick> ; \002%botnick% ho\002 <nick> ; \002(PRIVMSG) ho\002 <#chan> <nick>"
set black(say.en.man.884_1) "\[MAN\] \002%char%ho +\002 (masshalfop) ; \002%char%ho -\002 (masshalfdeop)"

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
set black(say.en.man.895) "\[MAN\] \002%char%q\002 \[#chan\] <phrase> (add quote) ; \002%char%q\002 \[#chan\] <word> (search) ; \002%char%q\002 \[#chan\] <list> ; \002%char%q\002 \[#chan\] del <no. quote>"
set black(say.en.man.896) "\[MAN\] \002Remember:\002 To add more than 1 sentence use \002%char%q add \[#chan\] <text1>~<text2>\002.. and eggdrop will show the quotes as 2 different senteces."

#QuoteOfDay

set black(say.en.man.897) "\[MAN\] \002QuoteOfDay\002 is a module that displays stored quotes randomly at a specified interval of time."
set black(say.en.man.898) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.899) "\[MAN\] \002%char%set\002 (+/-)quoteofday ; \002%botnick% set\002 (+/-)quoteofday ; \002(PRIVMSG) set\002 <#chan> (+/-)quoteofday"
set black(say.en.man.900) "\[MAN\] Optional settings: \002%char%set\002 quoteofday-showtime <period> ; \002(PRIVMSG) set\002 <#chan> quoteofday-showtime <period> (X\002h\002 = hours ; X\002m\002 = minutes)"

#Note

set black(say.en.man.901) "\[MAN\] \002Note\002 is a module that allows users to store and send notes."
set black(say.en.man.902) "\[MAN\] USAGE SYNTAXES:"
set black(say.en.man.903) "\[MAN\] \002%char%set\002 (+/-)note ; \002%botnick% set\002 (+/-)note ; \002(PRIVMSG) set\002 <#chan> <#chan> (+/-)note"
set black(say.en.man.904) "\[MAN\] \002%char%note\002 send <user> <text> ; \002%char%note\002 <read / list / inbox> ; \002%char%note\002 del <no. note / all>"
set black(say.en.man.905) "\[MAN\] \002Remember:\002 To add more than 1 sentence use \002%char%note send <user> <text1>~<text2>..\002 and eggdrop will show the notes as 2 different senteces."

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

set black(say.en.man.921) "\[MAN\] \002Timer\002 is a \002PRO\002 module that allows you to start/stop processes timers or see the list of active timers."
set black(say.en.man.921_1) "\[MAN\] \002ATTENTION!\002 Do NOT touch this system module, unless you know very well what you are doing!"
set black(say.en.man.922) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.923) "\[MAN\] \002%char%timer\002 start \[#chan\] <timer:setting> ; \002%char%timer\002 kill \[#chan\] <pid timer> (from list) ; \002%char%timer\002 list"

#Enable

set black(say.en.man.924) "\[MAN\] \002Enable\002 allows to enable a disabled command. If \"global\" option used, the command will be enabled on all eggdrop's channels."
set black(say.en.man.925) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.926) "\[MAN\] \002%char%enable\002 \[#chan\] <command / all> \[-global\] ; \002(PRIVMSG) enable\002 <#chan> <command / all> \[-global\]"

#Disable

set black(say.en.man.927) "\[MAN\] \002Disable\002 allows to disable a given command. If \"global\" option used, the command will be disabled on all eggdrop's channels."
set black(say.en.man.928) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.929) "\[MAN\] \002%char%disable\002 \[#chan\] <command / all> \[-global\] ; \002(PRIVMSG) disable\002 <#chan> <command / all> \[-global\]"

#Activ

set black(say.en.man.930) "\[MAN\] \002Activ\002 display information about a specified user's bans and words statistics."
set black(say.en.man.931) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.932) "\[MAN\] \002%char%activ\002 \[#chan>\] <user> ; \002%botnick% activ\002 \[#chan>\] <user> ; \002(PRIVMSG) activ\002 \[#chan>\] <user>"

#Output

set black(say.en.man.933) "\[MAN\] \002Output\002 specifies how the eggdrop will reply to your message or channel commands."
set black(say.en.man.934) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.935) "\[MAN\] \002%char%myset output\002 <method> ( CHAN | NOTICE ) ; \002(PRIVMSG) myset output\002 <method> ( CHAN | NOTICE )"

#GreetLine

set black(say.en.man.936) "\[MAN\] \002GreetLine\002 sets you a join greet (info) line. This is shown via \002%char%info\002 and/or whenever you join a channel (the second one only works if \002+greet\002 enabled)."
set black(say.en.man.937) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.938) "\[MAN\] \002%char%myset greet\002 <text / reset> ; \002%botnick% myset\002 greet <text / reset> ; \002(PRIVMSG) myset greet\002 <text / reset> (\002reset\002 removes your greet (info) line)."

#UnSet

set black(say.en.man.939) "\[MAN\] \002UnSet\002 unset/reset specified settings/options (flags)."
set black(say.en.man.940) "\[MAN\] USAGE SYNTAXES:"
set black(say.en.man.941) "\[MAN\] %char%unset\002 <flag / str / option> ; \002%botnick% unset\002 <flag / str / option> ; \002(PRIVMSG) unset\002 <flag / str / option>"
set black(say.en.man.942) "\[MAN\] \002%char%unset\002 global <flag / str / option> (unset on all channels)"
set black(say.en.man.943) "\[MAN\] View options settings: \002%char%show\002 <setting> ; \002%botnick% show\002 <setting> ; \002(PRIVMSG) show\002 <#chan> <setting>"

#NextShortCmd

set black(say.en.man.944) "\[MAN\] \002NextShortCmd\002 is the short version of the \002next module\002 used on help channels that allows you to assist users who need help."
set black(say.en.man.945) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.946) "\[MAN\] \002%char%set\002 (+/-)nextshortcmd ; \002%botnick% set\002 (+/-)next nextshortcmd ; \002(PRIVMSG) set\002 (+/-)next nextshortcmd"
set black(say.en.man.947) "\[MAN\] Commands: \002%char%n\002 (voice next user) ; \002%char%n\002 list (show waiting list) ; \002%char%h\002 <nick> (helped); \002%char%b\002 <nick> (noidle ban); \002%char%skip\002 <nick> (moving to the end of the list)"

#AutoInvite

set black(say.en.man.948) "\[MAN\] \002AutoInvite\002 is a new personal channel setting, the first of it's kind, when turned on and banned, the eggdrop will invite you to that channel, saving you the trouble of using \002/msg X invite #chan\002 either yourself."
set black(say.en.man.949) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.950) "\[MAN\] \002%char%myset autoinvite\002 <#chan> <ON/OFF> ; \002%botnick% autoinvite\002 <#chan> <ON/OFF> ; \002(PRIVMSG) <#chan> autoinvite\002 <#chan> <ON/OFF>"

#Show

set black(say.en.man.952) "\[MAN\] \002Show\002 allows you to see the values of each setting."
set black(say.en.man.953) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.954) "\[MAN\] \002%char%show\002 <setting> ; \002%botnick% show\002 <setting> ; \002(PRIVMSG) show\002 <#chan> <setting>"

#Link

set black(say.en.man.955) "\[MAN\] \002ChanLink\002 allows synchronization of all protections modules on 2 or more channels at the same time."
set black(say.en.man.956) "\[MAN\] Once enabled, the eggdrop will add the same ban from a given channel simultaneously to all other channels and vice versa (works only between linked channels, not the others)."
set black(say.en.man.957) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.958) "\[MAN\] \002%char%link\002 <#chan1> <#chan2> / <all> ; \002%char%link del\002 <#chan> ; \002%char%link <list / reset>\002"

#AccessOnly

set black(say.en.man.959) "\[MAN\] \002AccessOnly\002 is an extra option for the \002topwords\002 module that restricts its operation only to users who owns access to eggdrop."
set black(say.en.man.960) "\[MAN\] If this extra option is not enabled, the module \002topwords\002 will work for all channel users (both for those with access and for others)."
set black(say.en.man.961) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.962) "\[MAN\] \002%char%set\002 (+/-)accessonly ; \002%botnick% set\002 (+/-)accessonly ; \002(PRIVMSG) set\002 <#chan> (+/-)accessonly"
set black(say.en.man.963) "\[MAN\] View options settings: \002%char%show\002 <setting> ; \002%botnick% show\002 <setting> ; \002(PRIVMSG) show\002 <#chan> <setting>"

#SeenReply

set black(say.en.man.964) "\[MAN\] \002SeenReply\002 is an extra option for the \002seen\002 module that will make the eggdrop send an info message to the user who has just been searched with \002%char%seen\002 command."
set black(say.en.man.965) "\[MAN\] This info message includes information about the person who searched for him/her, as well as the date, time or channel where the \002%char%seen\002 command was used."
set black(say.en.man.966) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.967) "\[MAN\] \002%char%set\002 (+/-)seenreply ; \002%botnick% set\002 (+/-)seenreply ; \002(PRIVMSG) set\002 <#chan> (+/-)seenreply"

#SpamJoinMessage

set black(say.en.man.968) "\[MAN\] \002SpamJoinMessage\002 is an extra option for the \002antispam\002 protection module that will make the eggdrop to send a private verification message, containing a predefined text, to every user who joins the channel."
set black(say.en.man.969) "\[MAN\] USAGE SYNTAXES:"
set black(say.en.man.970) "\[MAN\] \002%char%set\002 (+/-)spamjoinmessage ; \002%botnick% set\002 (+/-)spamjoinmessage ; \002(PRIVMSG) set\002 <#chan> (+/-)spamjoinmessage"
set black(say.en.man.971) "\[MAN\] \002%char%set\002 antispam-message <text> ; \002%botnick% set\002 antispam-message <text> ; \002(PRIVMSG) set\002 <#chan> <text> (default join message)"
set black(say.en.man.972) "\[MAN\] View options settings: \002%char%show\002 <setting> ; \002%botnick% show\002 <setting> ; \002(PRIVMSG) show\002 <#chan> <setting>"

#StrictSecured

set black(say.en.man.973) "\[MAN\] \002StricSecured\002 is an extra option for the \002securemode\002 protection module made to prevent join/part flood from botnets."
set black(say.en.man.974) "\[MAN\] Once enabled, this extra option will generate a unique code for each user who joins the channel and every time they re-join, which needs to be confirmed, every time, if they wish to be allowed to join the channel."
set black(say.en.man.975) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.976) "\[MAN\] \002%char%set\002 (+/-)strictsecured ; \002%botnick% set\002 (+/-)strictsecured ; \002(PRIVMSG) set\002 <#chan> (+/-)strictsecured"

#NoteExpire

set black(say.en.man.977) "\[MAN\] \002NoteExpire\002 is an extra option for the \002note\002 module whereby each user can set a default time period for notes expiration (automatic deletion from database)."
set black(say.en.man.977_1) "\[MAN\] Format period: X\002d\002 = days ; X\002h\002 = hours"
set black(say.en.man.978) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.979) "\[MAN\] \002%char%myset\002 noteexpire <period> ; \002%botnick% myset\002 noteexpire <period> ; \002(PRIVMSG) myset\002 noteexpire <period>"

#MyChan

set black(say.en.man.980) "\[MAN\] \002MyChan\002 allows each user to set a \002base channel\002 (mychan) for which, when sends commands to eggdrop via PRIVMSG, it is no longer necessary to specify a <#channel>, eggdrop automatically applying commands directly to \002mychan\002."
set black(say.en.man.981) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.982) "\[MAN\] \002%char%myset\002 mychan <#chan> ; \002%botnick% myset\002 mychan <#chan> ; \002(PRIVMSG) myset\002 mychan <#chan>"

#Invisible

set black(say.en.man.983) "\[MAN\] \002Invisible\002 hides a channel, this means that channel will no longer appear in the eggdrop channels list."
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
set black(say.en.man.1209) "\[MAN\] %char%omsg\002 <#chan / all> <text> ; \002%botnick% omsg\002 <#chan / all> <text> ; \002(PRIVMSG) omsg\002 <#chan / all> <text>"

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
set black(say.en.man.1222) "\[MAN\] Format period: X\002h\002 = hours ; X\002m\002 = minutes"
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
set black(say.en.man.992) "\[MAN\] \002%char%egg\002 <option> <setting> ; \002%botnick% egg\002 <option> <setting> ; \002(PRIVMSG) egg\002 <option> <setting>"

#Egg CmdChar

set black(say.en.man.994) "\[MAN\] \002CmdChar\002 sets the default \002trigger\002 you want the eggdrop to react to (you can add more than one cmdchar)."
set black(say.en.man.995) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.996) "\[MAN\] \002%char%egg cmdchar\002 <trigger1 trigger2 ..> ; \002%botnick% egg cmdchar\002 <trigger1 trigger2 ..> ; \002(PRIVMSG) egg cmdchar\002 <trigger1 trigger2 ..>"

#Egg DefaultLang

set black(say.en.man.998) "\[MAN\] \002DefaultLang\002 sets the default language of the BlackToolS script."
set black(say.en.man.999) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.1100) "\[MAN\] \002%char%egg defaultlang\002 <language> ; \002%botnick% egg defaultlang\002 <language> ; \002(PRIVMSG) egg defaultlang\002 <language>"

#Egg HomeChan

set black(say.en.man.1102) "\[MAN\] \002HomeChan\002 set the eggdrop's homechan. The eggdrop will enter this channel first. This channel will also be used to display all reported bans, kicks & any type of abuse."
set black(say.en.man.1103) "\[MAN\] \002Remember\002: this is a \002static\002 channel (the eggdrop will NOT purge/cycle this chan) and usually it's a private/secret channel. (supports ONLY one \002homechan\002 channel)."
set black(say.en.man.1104) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.1105) "\[MAN\] \002%char%egg homechan\002 <#chan> ; \002%botnick% egg homechan\002 <#chan> ; \002(PRIVMSG) egg homechan\002 <#chan>"

#Egg RealName

set black(say.en.man.1107) "\[MAN\] \002RealName\002 set what should be displayed in the \002real-name\002 field for the eggdrop on IRC (requires restart)."
set black(say.en.man.1108) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.1109) "\[MAN\] \002%char%egg realname\002 <text> ; \002%botnick% egg realname\002 <text> ; \002(PRIVMSG) egg realname\002 <text>"

#Egg Away

set black(say.en.man.1111) "\[MAN\] \002Away\002 sets your eggdrop to away with a specified away message when it connects to IRC."
set black(say.en.man.1112) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.1113) "\[MAN\] \002%char%egg away\002 <away message> ; \002%botnick% egg away\002 away message> ; \002(PRIVMSG) egg away\002 <away message>"
set black(say.en.man.1113_1) "\[MAN\] \002 %char%egg away\002 OFF ; \002%botnick% egg away\002 OFF> ; \002(PRIVMSG) egg away\002 OFF (disable away)"

#Egg DefaultOutput

set black(say.en.man.1115) "\[MAN\] \002DefaultOutput\002 sets the default method for receiving eggdrop's messages (default method is set via \002CHAN\002)."
set black(say.en.man.1116) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.1117) "\[MAN\] \002%char%egg defaultoutput\002 <method> ( CHAN | NOTICE | PRIVMSG ) ; \002(PRIVMSG) egg defaultoutput\002 <method> ( CHAN | NOTICE | PRIVMSG )"

#Egg FloodMenuProt

set black(say.en.man.1119) "\[MAN\] \002FloodMenuProt\002 protects the eggdrop from \002flood\002. Determines how many commands/seconds a user can send the eggdrop before it is considered a flood and ignores all commands from that user for a short period of time."
set black(say.en.man.1120) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.1121) "\[MAN\] \002%char%egg floodmenuprot\002 <no. commands:seconds> ; \002%botnick% egg floodmenuprot\002 <no. commands:seconds> ; \002(PRIVMSG) egg floodmenuprot\002 <no. commands:seconds>"

#Egg FloodMsgProt

set black(say.en.man.1123) "\[MAN\] \002FloodMsgProt\002 protects the eggdrop from \002PRIVMSG flood\002. Determines how many PRIVMSG messages/seconds the eggdrop will accept before it is considered a flood and ignores all messages from that user for a short period of time."
set black(say.en.man.1124) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.1125) "\[MAN\] \002%char%egg floodmsgprot\002 <no. messages:seconds> ; \002%botnick% egg floodmsgprot\002 <no. messages:seconds> ; \002(PRIVMSG) egg floodmsgprot\002 <no. messages:seconds>"

#Egg FloodNotcProt

set black(say.en.man.1127) "\[MAN\] \002FloodNotcProt\002 protects the eggdrop from \002NOTICE flood\002. Determines how many NOTICE messages/seconds the eggdrop will accept before it is considered a flood and ignores all notices from that user for a short period of time."
set black(say.en.man.1128) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.1129) "\[MAN\] \002%char%egg floodnotcprot\002 <no. notices:seconds> ; \002%botnick% egg floodnotcprot\002 <no. notices:seconds> ; \002(PRIVMSG) egg floodnotcprot\002 <no. notices:seconds>"

#Egg ChanRemove-Setting

set black(say.en.man.1131) "\[MAN\] \002ChanRemove-Setting\002 is an option that, once activated, deletes all settings related to a channel, when that channel is deleted from the bot's channels list. This includes data such as the access userlist, the banlist, the seen database, etc."
set black(say.en.man.1131_1) "\[MAN\] \0021\002 = yes ; \0020\002 = no"
set black(say.en.man.1132) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.1133) "\[MAN\] \002%char%egg chanremove-setting\002 <1/0> ; \002%botnick% egg chanremove-setting\002 <1/0> ; \002(PRIVMSG) egg chanremove-setting\002 <1/0>"

#Egg User-Expire

set black(say.en.man.1135) "\[MAN\] \002User-Expire\002 allows you to define the time period after the eggdrop will remove users from the seen database that are older than a specified time period."
set black(say.en.man.1135_1) "\[MAN\] Format period: X\002d\002 = days"
set black(say.en.man.1136) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.1137) "\[MAN\] \002%char%egg user-expire\002 <period> ; \002%botnick% egg user-expire\002 <period> ; \002(PRIVMSG) egg user-expire\002 <period>"

#Egg PageLimit

set black(say.en.man.1139) "\[MAN\] \002PageLimit\002 sets the default \002number of entries per page\002 for all the modules that use the \002- list -\002 function."
set black(say.en.man.1140) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.1141) "\[MAN\] \002%char%egg pagelimit\002 <no. entries> ; \002%botnick% egg pagelimit\002 <no. entries> ; \002(PRIVMSG) egg pagelimit\002 <no. entries>"

#Egg Login

set black(say.en.man.1143) "\[MAN\] \002Login\002 allows you to manually login your eggdrop to ChanServ (X, Q, etc.)."
set black(say.en.man.1144) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.1145) "\[MAN\] \002%char%egg login\002 ; %botnick% egg login ; \002(PRIVMSG) egg login\002"

#Egg Chanserv

set black(say.en.man.1147) "\[MAN\] \002Chanserv\002 sets the \002default nickname\002 that ChanServ (X, Q, etc.) uses, depending on the IRC network that the eggdrop will connect to."
set black(say.en.man.1148) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.1149) "\[MAN\] \002%char%egg chanserv\002 <chanservnickname> ; \002%botnick% egg chanserv\002 <chanservnickname> ; \002(PRIVMSG) egg chanserv\002 <chanservnickname>"

#Egg HostChanserv

set black(say.en.man.1151) "\[MAN\] \002HostChanserv\002 sets the \002default hostmask\002 that ChanServ (X, Q, etc.) uses depending on the IRC network to which the eggdrop will connect to."
set black(say.en.man.1152) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.1153) "\[MAN\] \002%char%egg hostchanserv\002 <chanservhostmask> ; \002%botnick% egg hostchanserv\002 <chanservhostmask> ; \002(PRIVMSG) egg hostchanserv\002 <chanserhostmask>"

#Egg UserLogin

set black(say.en.man.1155) "\[MAN\] \002UserLogin\002 sets the \002username\002 that eggdrop will use to login to ChanServ (X, Q, etc.)."
set black(say.en.man.1156) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.1157) "\[MAN\] \002%char%egg userlogin\002 <chanservusername> ; \002%botnick% egg userlogin\002 <chanservusername> ; \002(PRIVMSG) egg userlogin\002 <chanservusername>"

#Egg UserPass

set black(say.en.man.1159) "\[MAN\] \002UserPass\002 sets the \002password\002 that eggdrop will use to login to ChanServ (X, Q, etc.)."
set black(say.en.man.1160) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.1161) "\[MAN\] \002%char%egg userpass\002 <chanservpassword> ; \002%botnick% egg userpass\002 <chanservpassword> ; \002(PRIVMSG) egg userpass\002 <chanservpassword>"

#Egg Add-Mask

set black(say.en.man.1163) "\[MAN\] \002Add-Mask\002 sets the default hostmask that eggdrop will use when a new user is added with access (add by username)."
set black(say.en.man.1164) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.1165) "\[MAN\] \002%char%egg add-mask\002 <hostmask> ; \002%botnick% egg add-mask\002 <hostmask> ; \002(PRIVMSG) egg add-mask\002 <hostmask>"

#Egg Adduser-Mask

set black(say.en.man.1167) "\[MAN\] \002Adduser-Mask\002 sets the default hostmask that eggdrop will use when a new user is added with access (add by nickname)."
set black(say.en.man.1168) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.1169) "\[MAN\] \002%char%egg adduser-mask\002 <hostmask> ; \002%botnick% egg adduser-mask\002 <hostmask> ; \002(PRIVMSG) egg adduser-mask\002 <hostmask>"

#AntiSpam-CycleTime

set black(say.en.man.1175) "\[MAN\] \002AntiSpam-CycleTime\002 is an extra option for the \002antispam\002 protection module that allows you to define the maximum time interval between every\002 /cycle\002 that eggdrop executes to detect spammers."
set black(say.en.man.1175_1) "\[MAN\] Format period: X\002m\002 = minutes ; X\002h\002 = hours"
set black(say.en.man.1176) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.1177) "\[MAN\] \002%char%egg\002 antispam-cycletime <period> ; \002%botnick% egg\002 antispam-cycletime <period> ; \002(PRIVMSG) egg\002 antispam-cycletime <period>"

#Idle-ScanTime

set black(say.en.man.1179) "\[MAN\] \002Idle-ScanTime\002 is an extra option for the \002idle\002 module that allows you to define the maximum time interval between scans after users with \002op (@)\002 or \002voice (+v)\002 who are idleing."
set black(say.en.man.1179_1) "\[MAN\] Format period: X\002m\002 = minutes ; X\002h\002 = hours"
set black(say.en.man.1180) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.1181) "\[MAN\] \002%char%egg\002 idle-scantime <period> ; \002%botnick% egg\002 idle-scantime <period> ; \002(PRIVMSG) egg\002 idle-scantime <period>"

#CloneScan-ScanTime

set black(say.en.man.1183) "\[MAN\] \002CloneScan-ScanTime\002 is an extra option for the \002clonescan\002 protection module that allows you to define the maximum time interval between scans after certain users who are using clones."
set black(say.en.man.1183_1) "\[MAN\] Format period: X\002m\002 = minutes ; X\002h\002 = hours"
set black(say.en.man.1184) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.1185) "\[MAN\] \002%char%egg\002 clonescan-scantime <period> ; \002%botnick% egg\002 clonescan-scantime <period> ; \002(PRIVMSG) egg\002 clonescan-scantime <period>"

#Broadcast-ShowTime

set black(say.en.man.1187) "\[MAN\] \002Broadcast-ShowTime\002 is an extra option for the \002broadcast\002 module that allows you to define the maximum time interval between the messages to be broadcast on channel."
set black(say.en.man.1187_1) "\[MAN\] Format period: X\002m\002 = minutes ; X\002h\002 = hours"
set black(say.en.man.1188) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.1189) "\[MAN\] \002%char%egg\002 broadcast-showtime <period> ; \002%botnick% egg\002 broadcast-showtime <period> ; \002(PRIVMSG) egg\002 broadcast-showtime <period>"

#BadChan-ScanTime

set black(say.en.man.1191) "\[MAN\] \002BadChan-ScanTime\002 is an extra option for the \002badchan\002 protection module that allows you to define the maximum time interval between scans after certain users who are on bad/non-allowed channels."
set black(say.en.man.1191_1) "\[MAN\] Format period: X\002m\002 = minutes ; X\002h\002 = hours"
set black(say.en.man.1192) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.1193) "\[MAN\] \002%char%egg\002 badchan-scantime <period> ; \002%botnick% egg\002 badchan-scantime <period> ; \002(PRIVMSG) egg\002 badchan-scantime <period>"

#Anunt-ShowTime

set black(say.en.man.1195) "\[MAN\] \002Anunt-ShowTime\002 is an extra option for the \002anunt/advert\002 module that will allows you to define the maximum time interval between announcements/ads to be shown on channel."
set black(say.en.man.1195_1) "\[MAN\] Format period: X\002m\002 = minutes ; X\002h\002 = hours"
set black(say.en.man.1196) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.1197) "\[MAN\] \002%char%egg\002 anunt-showtime <period> ; \002%botnick% egg\002 anunt-showtime <period> ; \002(PRIVMSG) egg\002 anunt-showtime <period>"

#QuoteOfDay-ShowTime

set black(say.en.man.1199) "\[MAN\] \002QuoteOfDay-ShowTime\002 is an extra option for the \002quote\002 module that will allows you to define the maximum time interval between quotes to be shown on channel."
set black(say.en.man.1199_1) "\[MAN\] Format period: X\002m\002 = minutes ; X\002h\002 = hours"
set black(say.en.man.1200) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.1201) "\[MAN\] \002%char%egg\002 quoteofday-showtime <period> ; \002%botnick% egg\002 quoteofday-showtime <period> ; \002(PRIVMSG) egg\002 quoteofday-showtime <period>"

#QuitPartColor

set black(say.en.man.1203) "\[MAN\] \002QuitPartColor\002 is an extra option for the \002AntiBadQuitPart\002 module that will make eggdrop take action against users who use *colors* words when parting a channel."
set black(say.en.man.1204) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.1205) "\[MAN\] \002%char%set\002 (+/-)quitpartcolor ; \002%botnick% set\002 (+/-)quitpartcolor ; \002(PRIVMSG) set\002 <#chan> (+/-)quitpartcolor"
set black(say.en.man.1206) "\[MAN\] \002Remember:\002 This extra option works ONLY if \002AntiBadQuitPart\002 module is activated."

#VoiceMe-ShowTime

set black(say.en.man.1230) "\[MAN\] \002VoiceMe-ShowTime\002 is an extra option for the \002voiceme\002 module that will allows you to define the maximum time interval between the specific messages sent to the channel."
set black(say.en.man.1231) "\[MAN\] Format period: X\002m\002 = minutes ; X\002h\002 = hours"
set black(say.en.man.1232) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.1233) "\[MAN\] \002%char%egg\002 voiceme-showtime <period> ; \002%botnick% egg\002 voiceme-showtime <period> ; \002(PRIVMSG) egg\002 voiceme-showtime <period>"


##################################### MAN EGGDROP INTERN SETTINGS #############################################


#Ban-Time

set black(say.en.man.2101) "\[MAN\] \002Ban-Time/BanTime\002 this is an internal eggdrop setting not related to \002BlackToolS script\002, which defines how long temporary bans will last (in minutes). If this setting is set to 0, the bot will never remove bans."
set black(say.en.man.2102) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.2103) "\[MAN\] \002%char%set\002 ban-time <period> ; \002%botnick% set\002 ban-time <period> ; \002(PRIVMSG) set\002 <#chan> ban-time <period>"

#ChanMode

set black(say.en.man.2104) "\[MAN\] \002ChanMode\002 this is an internal eggdrop setting not related to \002BlackToolS script\002, which makes the bot enforce channel modes. It will always add the +<modes> and remove the -<modes> modes."
set black(say.en.man.2105) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.2106) "\[MAN\] \002%char%set\002 chanmode (+/-)<modes> ; \002%botnick% set\002 chanmode (+/-)<modes> ; \002(PRIVMSG) set\002 <#chan> chanmode (+/-)<modes>"

#DontKickOps

set black(say.en.man.2107) "\[MAN\] \002DontKickOps\002 this is an internal eggdrop setting not related to \002BlackToolS script\002, which stops the bot from kicking users who have the +o flag."
set black(say.en.man.2108) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.2109) "\[MAN\] \002%char%set\002 (+/-)dontkickops ; \002%botnick% set\002 (+/-)dontkickops ; \002(PRIVMSG) set\002 <#chan> (+/-)dontkickops"

#EnforceBans 

set black(say.en.man.2110) "\[MAN\] \002EnforceBans\002 is an internal eggdrop setting not related to \002BlackToolS script\002, when a ban is set this setting will cause the bot kick to people who are on the channel and match the ban."
set black(say.en.man.2111) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.2112) "\[MAN\] \002%char%set\002 (+/-)enforcebans ; \002%botnick% set\002 (+/-)enforcebans ; \002(PRIVMSG) set\002 <#chan> (+/-)enforcebans"

#DynamicBans 

set black(say.en.man.2113) "\[MAN\] \002DynamicBans\002 this is an internal eggdrop setting not related to \002BlackToolS script\002, which only activates bans on the channel when necessary. This keeps the channel's ban list from getting excessively long. The bot still remembers every ban, but it only activates a ban on the channel when it sees someone join who matches that ban."
set black(say.en.man.2114) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.2115) "\[MAN\] \002%char%set\002 (+/-)dynamicbans ; \002%botnick% set\002 (+/-)dynamicbans ; \002(PRIVMSG) set\002 <#chan> (+/-)dynamicbans"

#UserBans 

set black(say.en.man.2116) "\[MAN\] \002UserBans\002 this is an internal eggdrop setting not related to \002BlackToolS script\002, which allow bans to be set by users on IRC directly. If this is turned off, the bot will require all bans to be set through the bot's console."
set black(say.en.man.2117) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.2118) "\[MAN\] \002%char%set\002 (+/-)userbans ; \002%botnick% set\002 (+/-)userbans ; \002(PRIVMSG) set\002 <#chan> (+/-)userbans"

#AutoOp 

set black(say.en.man.2119) "\[MAN\] \002AutoOp\002 this is an internal eggdrop setting not related to \002BlackToolS script\002, which will cause the bot to op users with the +o flag as soon as they join the channel (this is insecure and not recommended)."
set black(say.en.man.2120) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.2121) "\[MAN\] \002%char%set\002 (+/-)autoop ; \002%botnick% set\002 (+/-)autoop ; \002(PRIVMSG) set\002 <#chan> (+/-)autoop"

#AutoHalfOp 

set black(say.en.man.2122) "\[MAN\] \002AutoHalfOp\002 this is an internal eggdrop setting not related to \002BlackToolS script\002, which will cause the bot to halfop users with the +l flag as soon as they join the channel (this is insecure and not recommended)."
set black(say.en.man.2123) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.2124) "\[MAN\] \002%char%set\002 (+/-)autohalfop ; \002%botnick% set\002 (+/-)autohalfop ; \002(PRIVMSG) set\002 <#chan> (+/-)autohalfop"

#AutoVoice 

set black(say.en.man.2125) "\[MAN\] \002AutoVoice\002 this is an internal eggdrop setting not related to \002BlackToolS script\002, which will cause the bot to voice users with the +v flag when they join the channel."
set black(say.en.man.2126) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.2127) "\[MAN\] \002%char%set\002 (+/-)autovoice ; \002%botnick% set\002 (+/-)autovoice ; \002(PRIVMSG) set\002 <#chan> (+/-)autovoice"

#Bitch 

set black(say.en.man.2128) "\[MAN\] \002Bitch\002 this is an internal eggdrop setting not related to \002BlackToolS script\002, which will cause the bot to only let users with +o flag be opped on the channel (this is insecure and not recommended)."
set black(say.en.man.2129) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.2130) "\[MAN\] \002%char%set\002 (+/-)bitch ; \002%botnick% set\002 (+/-)bitch ; \002(PRIVMSG) set\002 <#chan> (+/-)bitch"

#Greet 

set black(say.en.man.2131) "\[MAN\] \002Greet\002 this is an internal eggdrop setting not related to \002BlackToolS script\002, which will cause the bot to say a user's greet line when they join the channel (see also \002%char%man myset\002)."
set black(say.en.man.2132) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.2133) "\[MAN\] \002%char%set\002 (+/-)greet ; \002%botnick% set\002 (+/-)greet ; \002(PRIVMSG) set\002 <#chan> (+/-)greet"

#ProtectOps 

set black(say.en.man.2134) "\[MAN\] \002ProtectOps\002 this is an internal eggdrop setting not related to \002BlackToolS script\002, which will cause the bot to re-op a user with the \002+o flag\002 if they get deopped."
set black(say.en.man.2135) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.2136) "\[MAN\] \002%char%set\002 (+/-)protectops ; \002%botnick% set\002 (+/-)protectops ; \002(PRIVMSG) set\002 <#chan> (+/-)protectops"

#ProtectFriends 

set black(say.en.man.2137) "\[MAN\] \002ProtectFriends\002 this is an internal eggdrop setting not related to \002BlackToolS script\002, which will cause the bot to re-op a user with the \002+f flag\002 if they get deopped."
set black(say.en.man.2138) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.2139) "\[MAN\] \002%char%set\002 (+/-)protectfriends ; \002%botnick% set\002 (+/-)protectfriends ; \002(PRIVMSG) set\002 <#chan> (+/-)protectfriends"

#ProtectHalfOps 

set black(say.en.man.2140) "\[MAN\] \002ProtectHalfOps\002 this is an internal eggdrop setting not related to \002BlackToolS script\002, which will cause the bot to re-halfop a user with the \002+l flag\002 if they get dehalfopped."
set black(say.en.man.2141) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.2142) "\[MAN\] \002%char%set\002 (+/-)protecthalfops ; \002%botnick% set\002 (+/-)protecthalfops ; \002(PRIVMSG) set\002 <#chan> (+/-)protecthalfops"

#Inactive 

set black(say.en.man.2143) "\[MAN\] \002Inactive\002 this is an internal eggdrop setting not related to \002BlackToolS script\002, which prevents the bot from joining the channel (or makes it leave the channel if it is already there). It can be useful to make the bot leave a channel without losing its settings, channel-specific user flags, channel bans, and without affecting sharing."
set black(say.en.man.2144) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.2145) "\[MAN\] \002%char%set\002 (+/-)inactive ; \002%botnick% set\002 (+/-)inactive ; \002(PRIVMSG) set\002 <#chan> (+/-)inactive"

#StatusLog 

set black(say.en.man.2146) "\[MAN\] \002StatusLog\002 this is an internal eggdrop setting not related to \002BlackToolS script\002, which will cause the bot to log the channel status line every 5 minutes. This shows the bot's status on the channel (op, voice, etc.), the channel's modes, and the total number of members, ops, voices, regular users, and +b, +e, and +I modes on the channel."
set black(say.en.man.2147) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.2148) "\[MAN\] \002%char%set\002 (+/-)statuslog\002 ; \002%botnick% set\002 (+/-)statuslog ; \002(PRIVMSG) set\002 <#chan> (+/-)statuslog"

#Static 

set black(say.en.man.2149) "\[MAN\] \002Static\002 this is an internal eggdrop setting not related to \002BlackToolS script\002, which allow only permanent owners to remove the channel."
set black(say.en.man.2150) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.2151) "\[MAN\] \002%char%set\002 (+/-)static ; \002%botnick% set\002 (+/-)static ; \002(PRIVMSG) set\002 <#chan> (+/-)static"

#Revenge 

set black(say.en.man.2152) "\[MAN\] \002Revenge\002 this is an internal eggdrop setting not related to \002BlackToolS script\002, which will cause the bot to remember people who deop/kick/ban the bot, valid ops, or friends and punish them. Users with the +f flag are exempt from revenge."
set black(say.en.man.2153) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.2154) "\[MAN\] \002%char%set\002 (+/-)revenge ; \002%botnick% set\002 (+/-)revenge ; \002(PRIVMSG) set\002 <#chan> (+/-)revenge"

#RevengeBot 

set black(say.en.man.2155) "\[MAN\] \002RevengeBot\002 this is an internal eggdrop setting not related to \002BlackToolS script\002, which is similar to to the 'revenge' option, but it only triggers if a bot gets deopped, kicked or banned."
set black(say.en.man.2156) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.2157) "\[MAN\] \002%char%set\002 (+/-)revengebot ; \002%botnick% set\002 (+/-)revengebot ; \002(PRIVMSG) set\002 <#chan> (+/-)revengebot"

#Secret 

set black(say.en.man.2158) "\[MAN\] \002Secret\002 this is an internal eggdrop setting not related to \002BlackToolS script\002, which prevent the channel from being listed on the botnet."
set black(say.en.man.2159) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.2160) "\[MAN\] \002%char%set\002 (+/-)secret ; \002%botnick% set\002 (+/-)secret ; \002(PRIVMSG) set\002 <#chan> (+/-)secret"

#Shared 

set black(say.en.man.2161) "\[MAN\] \002Shared\002 this is an internal eggdrop setting not related to \002BlackToolS script\002, which will cause the bot to share channel-related user info for this channel."
set black(say.en.man.2162) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.2163) "\[MAN\] \002%char%set\002 (+/-)shared ; \002%botnick% set\002 (+/-)shared ; \002(PRIVMSG) set\002 <#chan> (+/-)shared"

#Cycle 

set black(say.en.man.2164) "\[MAN\] \002Cycle\002 this is an internal eggdrop setting not related to \002BlackToolS script\002, which will cause the bot to cycle the channel when it has no ops (@)."
set black(say.en.man.2165) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.2166) "\[MAN\] \002%char%set\002 (+/-)cycle ; \002%botnick% set\002 (+/-)cycle ; \002(PRIVMSG) set\002 <#chan> (+/-)cycle"

#NodeSynch 

set black(say.en.man.2167) "\[MAN\] \002NodeSynch\002 this is an internal eggdrop setting not related to \002BlackToolS script\002, which allow non-ops to perform channel modes. This can stop the bot from fighting with services such as ChanServ, or from kicking IRC Operators when setting channel modes without having ops."
set black(say.en.man.2168) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.2169) "\[MAN\] \002%char%set\002 (+/-)nodesynch ; \002%botnick% set\002 (+/-)nodesynch ; \002(PRIVMSG) set\002 <#chan> (+/-)nodesynch"

#DynamicExempts 

set black(say.en.man.2170) "\[MAN\] \002DynamicExempts\002 this is an internal eggdrop setting not related to \002BlackToolS script\002, which only activate exempts on the channel when necessary. This keeps the channel's exempt list from getting excessively long. The bot still remembers every exempt, but it only activates a exempt on the channel when it sees a ban set that matches the exempt. The exempt remains active on the channel for as long as the ban is still active."
set black(say.en.man.2171) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.2172) "\[MAN\] \002%char%set\002 (+/-)dynamicexempts ; \002%botnick% set\002 (+/-)dynamicexempts ; \002(PRIVMSG) set\002 <#chan> (+/-)dynamicexempts"

#UserExempts 

set black(say.en.man.2173) "\[MAN\] \002UserExempts\002 this is an internal eggdrop setting not related to \002BlackToolS script\002, which allow exempts to be made by users directly. If turned off, the bot will require all exempts to be made through the bot's console."
set black(say.en.man.2174) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.2175) "\[MAN\] \002%char%set\002 (+/-)userexempts ; \002%botnick% set\002 (+/-)userexempts ; \002(PRIVMSG) set\002 <#chan> (+/-)userexempts"

#DynamicInvites 

set black(say.en.man.2176) "\[MAN\] \002DynamicInvites\002 this is an internal eggdrop setting not related to \002BlackToolS script\002, and which only activate invites on the channel when necessary. This keeps the channel's invite list from getting excessively long. The bot still remembers every invite, but the invites are only activated when the channel is set to invite only and a user joins after requesting an invite. Once set, the invite remains until the channel goes to -i."
set black(say.en.man.2177) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.2178) "\[MAN\] \002%char%set\002 (+/-)dynamicinvites ; \002%botnick% set\002 (+/-)dynamicinvites ; \002(PRIVMSG) set\002 <#chan> (+/-)dynamicinvites"

#UserInvites 

set black(say.en.man.2179) "\[MAN\] \002UserInvites\002 this is an internal eggdrop setting not related to \002BlackToolS script\002, which allow invites to be made by users directly. If turned off, the bot will require all invites to be made through the bot's console."
set black(say.en.man.2180) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.2181) "\[MAN\] \002%char%set\002 (+/-)userinvites ; \002%botnick% set\002 (+/-)userinvites ; \002(PRIVMSG) set\002 <#chan> (+/-)userinvites"

#Flood-Ctcp

set black(say.en.man.2182) "\[MAN\] \002Flood-Ctcp\002 this is an internal eggdrop setting not related to \002BlackToolS script\002, which defines how many channel ctcps in how many seconds from one host constitutes a flood (+f users will not be kicked). To turn this setting off, specify \0020\002 or \0020:0\002."
set black(say.en.man.2183) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.2184) "\[MAN\] \002%char%set\002 flood-ctcp <ctcp:seconds> ; \002%botnick% set\002 flood-ctcp <ctcp:seconds> ; \002(PRIVMSG) set\002 <#chan> flood-ctcp <ctcp:seconds>"
set black(say.en.man.2185) "View options settings: \002%char%show\002 <setting> ; \002%botnick% show\002 <setting> ; \002(PRIVMSG) show\002 <#chan> <setting>"

#Flood-Join

set black(say.en.man.2186) "\[MAN\] \002Flood-Join\002 this is an internal eggdrop setting not related to \002BlackToolS script\002, which defines how many joins in how many seconds from one host constitutes a flood (+f users will not be kicked). To turn this setting off, specify \0020\002 or \0020:0\002."
set black(say.en.man.2187) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.2188) "\[MAN\] \002%char%set\002 flood-join <joins:seconds> ; \002%botnick% set\002 flood-join <joins:seconds> ; \002(PRIVMSG) set\002 <#chan> flood-join <joins:seconds>"
set black(say.en.man.2189) "View options settings: \002%char%show\002 <setting> ; \002%botnick% show\002 <setting> ; \002(PRIVMSG) show\002 <#chan> <setting>"

#Flood-Kick 

set black(say.en.man.2190) "\[MAN\] \002Flood-Kick\002 this is an internal eggdrop setting not related to \002BlackToolS script\002, which defines how many kicks in how many seconds from one host constitutes a flood (+f users will not be kicked). To turn this setting off, specify \0020\002 or \0020:0\002."
set black(say.en.man.2191) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.2192) "\[MAN\] \002%char%set\002 flood-kick <kicks:seconds> ; \002%botnick% set\002 flood-kick <kicks:seconds> ; \002(PRIVMSG) set\002 <#chan> flood-kick <kicks:seconds>"
set black(say.en.man.2193) "View options settings: \002%char%show\002 <setting> ; \002%botnick% show\002 <setting> ; \002(PRIVMSG) show\002 <#chan> <setting>"

#Flood-Deop 

set black(say.en.man.2194) "\[MAN\] \002Flood-Deop\002 this is an internal eggdrop setting not related to \002BlackToolS script\002, which defines how many deops in how many seconds from one host constitutes a flood (+f users will not be kicked). To turn this setting off, specify \0020\002 or \0020:0\002."
set black(say.en.man.2195) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.2196) "\[MAN\] \002%char%set\002 flood-deop <deops:seconds> ; \002%botnick% set\002 flood-deop <deops:seconds> ; \002(PRIVMSG) set\002 <#chan> flood-deop <deops:seconds>"
set black(say.en.man.2197) "View options settings: \002%char%show\002 <setting> ; \002%botnick% show\002 <setting> ; \002(PRIVMSG) show\002 <#chan> <setting>"

#Flood-Nick 

set black(say.en.man.2198) "\[MAN\] \002Flood-Nick\002 this is an internal eggdrop setting not related to \002BlackToolS script\002, which how many nick changes in how many seconds from one host constitutes a flood (+f users will not be kicked). To turn this setting off, specify \0020\002 or \0020:0\002."
set black(say.en.man.2199) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.2200) "\[MAN\] \002%char%set\002 flood-nick <nicks:seconds> ; \002%botnick% set\002 flood-nick <nicks:seconds> ; \002(PRIVMSG) set\002 <#chan> flood-nick <nicks:seconds>"
set black(say.en.man.2201) "View options settings: \002%char%show\002 <setting> ; \002%botnick% show\002 <setting> ; \002(PRIVMSG) show\002 <#chan> <setting>"

#Flood-Chan 

set black(say.en.man.2202) "\[MAN\] \002Flood-Chan\002 this is an internal eggdrop setting not related to \002BlackToolS script\002, which defines how many channel messages in how many seconds from one host constitutes a flood (+f users will not be kicked). To turn this setting off, specify \0020\002 or \0020:0\002."
set black(say.en.man.2203) "\[MAN\] USAGE SYNTAX:"
set black(say.en.man.2204) "\[MAN\] \002%char%set\002 flood-chan <lines:seconds> ; \002%botnick% set\002 flood-chan <lines:seconds> ; \002(PRIVMSG) set\002 <#chan> flood-chan <lines:seconds>"
set black(say.en.man.2205) "View options settings: \002%char%show\002 <setting> ; \002%botnick% show\002 <setting> ; \002(PRIVMSG) show\002 <#chan> <setting>"


##############################
############################################################################################################
#   END                                                                                                    #
############################################################################################################