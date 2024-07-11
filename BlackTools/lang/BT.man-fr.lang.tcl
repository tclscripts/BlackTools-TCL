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


set black(say.fr.man.1) "\005\[BT\]\005 Utilisation : \002%char%man\002 <commande>"
set black(say.fr.man.2) "\005\[BT\]\005 Utilisation : \002%botnick% man\002 <commande>"
set black(say.fr.man.2_1) "\005\[BT\]\005 Utilisation : \002man\002 <commande>"

#Man

set black(say.fr.man.3) "\[MAN\] \002Man\002 est la deuxième commande la plus importante du script de contrôle de canal BlackTools utilisée pour lire le \001manuel utilisateur\001."
set black(say.fr.man.4) "\[MAN\] Affiche des informations sur la façon d'utiliser ou de définir chaque commande, protection et module."
set black(say.fr.man.4_1) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.5) "\[MAN\] \002%char%man\002 <commande> ; \002%botnick% man\002 <commande> ; \002(PRIVMSG) man\002 <commande>"

#h

set black(say.fr.man.6) "\[MAN\] \002h\002 est la commande la plus importante du script de contrôle de canal Blacktools."
set black(say.fr.man.7) "\[MAN\] Affiche toutes les commandes disponibles et permet aux utilisateurs de parcourir le menu du script en fonction de leur niveau d'accès sur un canal spécifié."
set black(say.fr.man.8) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.9) "\[MAN\] \002%char%h\002 <catégorie> ; \002%botnick% h\002 <catégorie> ; \002(PRIVMSG) h\002 \[#chan\] <catégorie>"
set black(say.fr.man.10) "\[MAN\] Pour savoir quelles commandes sont disponibles pour vous, essayez : \002%char%h\002 ; \002%botnick% h\002 ; \002(PRIVMSG) h\002 \[#chan\]"

#tip

set black(say.fr.man.6666) "\[MAN\] \002tip\002 affiche automatiquement des \002conseils aléatoires\002 à la fin de chaque information du \001manuel utilisateur\001."

#v

set black(say.fr.man.11) "\[MAN\] \002v\002 donne/enlève la voix \002(+v)\002 à/de un ou plusieurs utilisateurs dans le canal."
set black(say.fr.man.12) "\[MAN\] ** Remarque : Si aucun pseudo n'est spécifié et que vous n'avez pas la voix dans le canal, cela vous donnera la voix \002(+v)\002. **"
set black(say.fr.man.13) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.14) "\[MAN\] \002%char%v\002 <nick1> <nick2>.. ; \002%botnick% v\002 <nick1 <nick2>.. ; \002(PRIVMSG) v\002 <#chan> <nick1 <nick2>.."
set black(say.fr.man.15) "\[MAN\] \002%char%v +\002 (effectue une voix de masse) ; \002%char%v -\002 (effectue une dé-voix de masse)"

#o

set black(say.fr.man.16) "\[MAN\] \002o\002 donne/enlève le statut d'opérateur \001(@)\001 à/de un ou plusieurs utilisateurs dans le canal."
set black(say.fr.man.17) "\[MAN\] ** Remarque : Si aucun pseudo n'est spécifié et que vous n'êtes pas opérateur dans le canal, cela vous donnera le statut d'opérateur \002(@)\002. **"
set black(say.fr.man.18) "\[MAN\] SYNTAXES D'UTILISATION :"
set black(say.fr.man.19) "\[MAN\] \002%char%o\002 <nick1> <nick2>.. ; \002%botnick% o\002 <nick1 <nick2>.. ; \002(PRIVMSG) o\002 <#chan> <nick1 <nick2>.."
set black(say.fr.man.20) "\[MAN\] \002%char%o +\002 (effectue une op de masse)\002 ; \002%char%o -\002 (effectue une dé-op de masse)"

#UserList

set black(say.fr.man.22) "\[MAN\] \002UserList\002 affiche toute la liste d'accès pour un canal spécifié."
set black(say.fr.man.23) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.24) "\[MAN\] \002%char%userlist\002 <level|all> ; \002%botnick% userlist\002 <level|all> ; \002(PRIVMSG) userlist\002 <#chan> <level|all>"
set black(say.fr.man.25) "\[MAN\] En tant qu'accès \002<level>\002 vous avez : \002%msg.1%\002 ; \002%msg.2%\002 ; \002%msg.3%\002 ; \002%msg.4%\002"
set black(say.fr.man.26) "\[MAN\] En tant qu'accès \002<level>\002 vous avez : \002%msg.1%\002 ; \002%msg.2%\002 ; \002%msg.3%\002 ; \002%msg.4%\002 ; \002%msg.12%\002"
set black(say.fr.man.27) "\[MAN\] En tant qu'accès \002<level>\002 vous avez : \002%msg.1%\002 ; \002%msg.2%\002 ; \002%msg.3%\002 ; \002%msg.4%\002 ; \002%msg.12%\002 ; \002%msg.13%\002 ; \002%msg.15%\002"
set black(say.fr.man.28_1) "\[MAN\] En tant qu'accès \002<level>\002 vous avez : \002%msg.1%\002 ; \002%msg.2%\002 ; \002%msg.3%\002"

#Version

set black(say.fr.man.28) "\[MAN\] \002Version\002 affiche des informations sur la \001version de BlackTools\001 que l'eggdrop utilise."
set black(say.fr.man.29) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.30) "\[MAN\] \002%char%version\002 ; \002%botnick% version ; \002(PRIVMSG) version\002"

#Info

set black(say.fr.man.31) "\[MAN\] \002Info\002 affiche des informations sur les utilisateurs ou les canaux de la base de données de l'eggdrop."
set black(say.fr.man.32) "\[MAN\] Informations telles que le niveau d'accès, le mode du canal, le message de bienvenue, les hôtes ajoutés par l'utilisateur, l'automode, la dernière fois vu, etc."
set black(say.fr.man.33) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.34) "\[MAN\] \002%char%info\002 <handle|#chan> ; \002%botnick% info\002 <handle|#chan> ; \002(PRIVMSG) info\002 <handle|#chan>"

#Act

set black(say.fr.man.35) "\[MAN\] \002Act\002 fait envoyer une action (\001/me\001) avec <message> par l'eggdrop sur les canaux."
set black(say.fr.man.36) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.37) "\[MAN\] \002%char%act\002 <message> ; \002%botnick% act\002 <message> ; \002(PRIVMSG) act\002 <#chan> <message>"

#t

set black(say.fr.man.38) "\[MAN\] \002t\002 définit un sujet avec le <texte> souhaité."
set black(say.fr.man.39) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.40) "\[MAN\] \002%char%t\002 \[#chan\] <texte> ; \002%botnick% t\002 \[#chan\] <texte> ; \002(PRIVMSG) t\002 <#chan> <texte>"
set black(say.fr.man.41) "\[MAN\] ** Remarque : Si vous souhaitez que l'eggdrop affiche dans le sujet le pseudo de l'utilisateur qui l'a changé, utilisez : \002%char%set +showhandle\002 **"

#Cycle

set black(say.fr.man.42) "\[MAN\] \002Cycle\002 fait cycler (\001/hop\001), ou quitter et rejoindre, un canal spécifié par l'eggdrop."
set black(say.fr.man.43) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.44) "\[MAN\] \002%char%cycle\002 \[durée|raison\] ; \002%botnick% cycle\002 \[durée|raison\] ; \002(PRIVMSG) cycle\002 <#chan> \[durée|raison\]"

#Mode

set black(say.fr.man.45) "\[MAN\] \002Mode\002 applique ou enlève les <modes> spécifiés sur les canaux."
set black(say.fr.man.46) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.47) "\[MAN\] \002%char%mode\002 (+/-)<modes> ; \002%botnick% mode\002 (+/-)<modes> ; \002(PRIVMSG) mode\002 <#chan> (+/-)<modes>"

#i

set black(say.fr.man.48) "\[MAN\] \002i\002 invite un utilisateur spécifié à rejoindre un canal spécifié."
set black(say.fr.man.49) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.50) "\[MAN\] \002%char%i\002 <nick> ; \002%botnick% i\002 <nick> ; \002(PRIVMSG) i\002 <#chan> <nick>"

#k

set black(say.fr.man.62) "\[MAN\] \002k\002 expulse un utilisateur spécifié du canal. La raison est facultative."
set black(say.fr.man.63) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.64) "\[MAN\] \002%char%k\002 <nick|mask> \[reason\] ; \002%botnick% k\002 <nick|mask> \[reason\] ; \002(PRIVMSG) k\002 <#chan> <nick|mask> \[reason\]"
set black(say.fr.man.65) "\[MAN\] Paramètres optionnels : \002k-reason\002 (raison par défaut)"

#w

set black(say.fr.man.66) "\[MAN\] \002w\002 envoie un avertissement par expulsion à un utilisateur avec une raison donnée."
set black(say.fr.man.67) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.68) "\[MAN\] \002%char%w\002 <nick> ; \002%botnick% w\002 <nick> ; \002(PRIVMSG) w\002 <#chan> <nick>"
set black(say.fr.man.69) "\[MAN\] Paramètres optionnels : \002w-reason\002 (raison d'avertissement par défaut) ; \002w-message\002 (message d'avertissement par défaut)"

#Check

set black(say.fr.man.70) "\[MAN\] \002Check\002 vérifie si un utilisateur avec un message privé est infecté par un virus ou fait de la publicité."
set black(say.fr.man.71) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.72) "\[MAN\] \002%char%check\002 <nick>\002 ; \002%botnick% check\002 <nick> ; \002(PRIVMSG) check\002 \[#chan\] <nick>"
set black(say.fr.man.73) "\[MAN\] Paramètres optionnels : \002%char%set\002 check-message <message> ; \002(PRIVMSG) set\002 check-message <message> (message de vérification par défaut)"

#sb

set black(say.fr.man.74) "\[MAN\] \002sb\002 recherche et/ou affiche des détails sur une interdiction donnée (prend en charge les caractères génériques)."
set black(say.fr.man.75) "\[MAN\] SYNTAXES D'UTILISATION :"
set black(say.fr.man.76) "\[MAN\] \002%char%sb\002 \[-regex\] <nick|mask|id|regex> ; \002%botnick% sb\002 \[-regex\] <nick|mask|id|regex> ; \002(PRIVMSG) sb\002 <#chan> \[-regex\] <nick|mask|id|regex>"
set black(say.fr.man.77) "\[MAN\] \002%char%sb\002 \[-regex\] <nick|mask|id|regex> \[global\] ; \002%botnick% sb\002 \[-regex\] <nick|mask|id|regex> \[global\] ; \002(PRIVMSG) sb\002 <#chan> \[-regex\] <nick|mask|id|regex> \[global\]"
set black(say.fr.man.78) "\[MAN\] ** Remarque : Dans le cas où \002<nick>\002 n'est pas sur %chan%, l'eggdrop fera un \002WHOIS\002 et vérifiera s'il a une interdiction sur \002ident/host/nick\002 en montrant les informations à ce sujet. Si l'hôte correspond à une interdiction \002REGEX\002, il affichera les informations correspondantes. **"

#id

set black(say.fr.man.79) "\[MAN\] \002id\002 met une interdiction sur un \001IDENT\001 donné. Si un pseudo d'utilisateur est spécifié, l'eggdrop prendra automatiquement son ident."
set black(say.fr.man.80) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.81) "\[MAN\] \002%char%id\002 <nick|ident> ; \002%botnick% id\002 <nick|ident> ; \002(PRIVMSG) id\002 <#chan> <nick|ident>"
set black(say.fr.man.82) "\[MAN\] Paramètres optionnels : \002id-reason\002 (raison par défaut) ; \002id-bantime\002 (durée d'interdiction par défaut) ; \002id-banmask\002 (masque d'interdiction par défaut)"

#n

set black(say.fr.man.83) "\[MAN\] \002n\002 met une interdiction sur un \001NICKNAME\001 donné."
set black(say.fr.man.84) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.85) "\[MAN\] \002%char%n\002 <nick> ; \002%botnick% n\002 <nick> ; \002(PRIVMSG) n\002 <#chan> <nick>"
set black(say.fr.man.86) "\[MAN\] Paramètres optionnels : \002n-reason\002 (raison par défaut) ; \002n-bantime\002 (durée d'interdiction par défaut) ; \002n-banmask\002 (masque d'interdiction par défaut)"

#Spam

set black(say.fr.man.87) "\[MAN\] \002Spam\002 interdit un utilisateur avec une raison \001SPAM\001 par défaut."
set black(say.fr.man.88) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.89) "\[MAN\] \002%char%spam\002 <nick|mask> ; \002%botnick% spam\002 <nick|mask> ; \002(PRIVMSG) spam\002 <#chan> <nick|mask>"
set black(say.fr.man.90) "\[MAN\] Paramètres optionnels : \002spam-reason\002 (raison de spam par défaut) ; \002spam-bantime\002 (durée d'interdiction de spam par défaut) ; \002spam-banmask\002 (masque d'interdiction de spam par défaut)"

#dr

set black(say.fr.man.91) "\[MAN\] \002dr\002 interdit un utilisateur avec une raison \001DRONE\001 par défaut."
set black(say.fr.man.92) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.93) "\[MAN\] \002%char%dr\002 <nick|mask> ; \002%botnick% dr\002 <nick|mask> ; \002(PRIVMSG) dr\002 <#chan> <nick|mask>"
set black(say.fr.man.94) "\[MAN\] Paramètres optionnels : \002dr-reason\002 (raison par défaut) ; \002dr-bantime\002 (durée d'interdiction par défaut) ; \002dr-banmask\002 (masque d'interdiction par défaut)"

#b

set black(say.fr.man.95) "\[MAN\] \002b\002 interdit un utilisateur d'un canal pour une durée spécifiée. Si vous ne spécifiez pas de \001\[durée\]\001, la valeur par défaut sera utilisée, mais si vous spécifiez \0020\002, ce sera une interdiction permanente (liste noire)."
set black(say.fr.man.96) "\[MAN\] Format de la durée : <X>\002m\002 = minutes, <X>\002h\002 = heures, <X>\002d\002 = jours, \0020\002 = permanent"
set black(say.fr.man.97) "\[MAN\] SYNTAXES D'UTILISATION :"
set black(say.fr.man.98) "\[MAN\] \002%char%b\002 \[-regex\] <nick|mask|regex> \[-level\] \[durée\] \[raison\] \[-c/comment\] ; \002%botnick% b\002 \[-regex\] <nick|mask|regex> \[-level\] \[durée\] \[raison\] \[-c/comment\] ; \002(PRIVMSG) b\002 \[-regex\] <#chan> <nick|mask|regex> \[-level\] \[durée\] \[raison\] \[-c/comment\]"
set black(say.fr.man.98_1) "\[MAN\] ** Remarque : En utilisant l'option facultative \[-c/comment\], l'eggdrop affichera une seconde ligne d'information de l'entrée d'interdiction avec ce commentaire. **"
set black(say.fr.man.99) "\[MAN\] \002%char%b\002 \[-regex\] <nick|mask|regex> \[-level\] \[durée\] \[global|link\] \[raison\] \[-c/comment\] ; \002%botnick% b\002 \[-regex\] <nick|mask|regex> \[-level\] \[durée\] \[global|link\] \[raison\] \[-c/comment\] ; \002(PRIVMSG) b\002 <#chan> \[-regex\] <nick|mask|regex> \[-level\] \[durée\] \[global|link\] \[raison\] \[-c/comment\]"
set black(say.fr.man.100) "\[MAN\] Paramètres optionnels : \002b-reason\002 (raison par défaut) ; \002b-bantime\002 (durée d'interdiction par défaut) ; \002b-banmask\002 (masque d'interdiction par défaut)"
set black(say.fr.man.100_1) "\[MAN\] ** Remarque : Vous pouvez utiliser une interdiction REGEX sur \002<nick>!<ident>@<hostname>/\[realname\]/\[banmask type\]\002 (les champs entre \[ \] sont facultatifs). Pour obtenir des informations sur \002banmask type\002, utilisez \001%char%man banmask\001"

#ub

set black(say.fr.man.101) "\[MAN\] \002ub\002 enlève une interdiction d'un canal spécifié (prend en charge les caractères génériques). \002ATTENTION\002 : Si vous spécifiez SEULEMENT \002*\002, l'eggdrop enlèvera toutes les interdictions du canal."
set black(say.fr.man.102) "\[MAN\] SYNTAXES D'UTILISATION :"
set black(say.fr.man.103) "\[MAN\] \002%char%ub\002 \[-regex\] <nick|mask|id|regex> ; \002%botnick% ub\002 \[-regex\] <nick|mask|id|regex> ; \002(PRIVMSG) ub\002 <#chan> \[-regex\] <nick|mask|id|regex>\002"
set black(say.fr.man.104) "\[MAN\] \002%char%ub\002 \[-regex\] <nick|mask|id|regex> \[global\]\002 ; \002%botnick% ub\002 \[-regex\] <nick|mask|id|regex> \[global|link\] ; \002(PRIVMSG) ub\002 <#chan> \[-regex\] <nick|mask|id|regex> \[global|link\]"
set black(say.fr.man.105) "\[MAN\] ** Remarque : Dans le cas où \002<nick>\002 n'est pas sur %chan%, l'eggdrop fera un \002WHOIS\002 et vérifiera s'il a une interdiction sur \002ident/host/nick\002 et l'annulera."

#Bot

set black(say.fr.man.106) "\[MAN\] \002Bot\002 interdit un utilisateur avec une raison \001BOT\001 par défaut."
set black(say.fr.man.107) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.108) "\[MAN\] \002%char%bot\002 <nick|mask>\002 ; \002%botnick% bot\002 <nick|mask> ; \002(PRIVMSG) bot\002 <#chan> <nick|mask>"
set black(say.fr.man.109) "\[MAN\] Paramètres optionnels : \002bot-reason\002 (raison par défaut) ; \002bot-bantime\002 (durée d'interdiction par défaut) ; \002bot-banmask\002 (masque d'interdiction par défaut)"

#bw

set black(say.fr.man.110) "\[MAN\] \002bw\002 interdit un utilisateur avec une raison par défaut."
set black(say.fr.man.111) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.112) "\[MAN\] \002%char%bw\002 <nick|mask> ; \002%botnick% bw\002 <nick|mask> ; \002(PRIVMSG) bw\002 <#chan> <nick|mask>\002"
set black(say.fr.man.113) "\[MAN\] Paramètres optionnels : \002bw-reason\002 (raison par défaut) ; \002bw-bantime\002 (durée d'interdiction par défaut) ; \002bw-banmask\002 (masque d'interdiction par défaut)"

#Black

set black(say.fr.man.114) "\[MAN\] \002Black\002 interdit un utilisateur pour un \001temps ILLIMITÉ\001 (interdiction permanente)."
set black(say.fr.man.115) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.116) "\[MAN\] \002%char%black\002 <nick|mask> \[raison\] \[-c/comment\] ; \002%botnick% black\002 <nick|mask> \[raison\] \[-c/comment\] ; \002(PRIVMSG) black\002 <#chan> <nick|mask> \[raison\] \[-c/comment\]\002"
set black(say.fr.man.116_1) "\[MAN\] ** Remarque : En utilisant l'option facultative \[-c/comment\], l'eggdrop affichera une seconde ligne d'information de l'entrée d'interdiction avec ce commentaire. **"
set black(say.fr.man.117) "\[MAN\] Paramètres optionnels : \002black-reason\002 (raison par défaut) ; \002black-banmask\002 (masque d'interdiction par défaut)"

#Stick 

set black(say.fr.man.118) "\[MAN\] \002Stick\002 interdit un utilisateur avec une raison et une durée d'interdiction données, mais avec un caractère \001collant\001. Une interdiction collante sera réactivée par le bot si quelqu'un la retire du canal."
set black(say.fr.man.118_1) "\[MAN\] Format de la durée : <X>\002m\002 = minutes, <X>\002h\002 = heures, <X>\002d\002 = jours, \0020\002 = permanent"
set black(say.fr.man.119) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.120) "\[MAN\] \002%char%stick\002 <nick|mask> \[durée\] \[raison\] \[-c/comment\] ; \002%botnick% stick\002 <nick|mask> \[durée\] \[raison\] \[-c/comment\] ; \002(PRIVMSG) stick\002 <#chan> <nick|mask> \[durée\] \[raison\] \[-c/comment\]"
set black(say.fr.man.120_1) "\[MAN\] ** Remarque : En utilisant l'option facultative \[-c/comment\], l'eggdrop affichera une seconde ligne d'information de l'entrée d'interdiction avec ce commentaire. **"
set black(say.fr.man.121) "\[MAN\] Paramètres optionnels : \002stick-reason\002 (raison par défaut) ; \002stick-bantime\002 (durée d'interdiction par défaut) ; \002stick-banmask\002 (masque d'interdiction par défaut)"

#Gag

set black(say.fr.man.122) "\[MAN\] \002Gag\002 fait taire (ne peut pas écrire sur le canal) un utilisateur pour une période de temps. Si vous ne spécifiez pas de \002\[durée\]\002, une valeur par défaut sera utilisée."
set black(say.fr.man.122_1) "\[MAN\] Format de la durée : <X>\002m\002 = minutes, <X>\002h\002 = heures, <X>\002d\002 = jours"
set black(say.fr.man.123) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.124) "\[MAN\] \002%char%gag\002 <nick> \[durée\] \[raison\] ; \002%botnick% gag\002 <nick> \[durée\] \[raison\] ; \002(PRIVMSG) gag\002 <#chan> <nick> \[durée\] \[raison\]\002"
set black(say.fr.man.125) "\[MAN\] Paramètres optionnels : \002gag-reason\002 (raison par défaut) ; \002gag-bantime\002 (durée d'interdiction par défaut) ; \002gag-banmask\002 (masque d'interdiction par défaut)"

#Add

set black(say.fr.man.126) "\[MAN\] \002Add\002 ajoute un utilisateur à la liste des utilisateurs du canal."
set black(say.fr.man.127) "\[MAN\] ** Remarque : Si l'utilisateur est sur le canal, le masque d'hôte ajouté automatiquement pour cet utilisateur sera celui actuel. **"
set black(say.fr.man.128) "\[MAN\] ** Remarque : Si l'utilisateur n'est PAS sur le canal, le masque d'hôte ajouté automatiquement pour cet utilisateur sera : *!*@%user%.users.undernet.org. **"
set black(say.fr.man.134) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.135) "\[MAN\] \002%char%add\002 <niveau> <nick|Xusername> ; \002%botnick% add\002 <niveau> <nick|Xusername> ; \002(PRIVMSG) add\002 <#chan> <niveau> <nick|Xusername>"

#Adduser

set black(say.fr.man.136) "\[MAN\] Pour des informations sur \002comment donner l'accès à quelqu'un\002, veuillez consulter : \002%char%man add\002"

#DelAcc

set black(say.fr.man.142) "\[MAN\] \002DelAcc\002 supprime un utilisateur de la liste d'accès d'un canal."
set black(say.fr.man.142_1) "\[MAN\] ** Remarque : Vous devez avoir un accès supérieur à celui de l'utilisateur que vous souhaitez supprimer (donc, si vous avez \002OP\002 et que l'utilisateur spécifié a \002ADMIN\002, vous ne pouvez pas le supprimer). **"
set black(say.fr.man.143) "\[MAN\] SYNTAXES D'UTILISATION :"
set black(say.fr.man.144) "\[MAN\] \002%char%delacc\002 <handle> ; \002%botnick% delacc\002 <handle> ; \002(PRIVMSG) delacc\002 <#chan> <handle>"
set black(say.fr.man.145) "\[MAN\] \002%char%delacc\002 <owner|master> <handle> ; \002%botnick% delacc\002 <owner|master> <handle> ; \002(PRIVMSG) delacc\002 <#chan> <owner|master> <handle> (supprimer l'accès global)"

#Del

set black(say.fr.man.146) "\[MAN\] \002Del\002 supprime totalement un utilisateur de la base de données de l'eggdrop."
set black(say.fr.man.147) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.148) "\[MAN\] \002%char%del\002 <handle> ; \002%botnick% del\002 <handle> ; \002(PRIVMSG) del\002 <#chan> <handle>"

#unGag

set black(say.fr.man.149) "\[MAN\] \002unGag\002 enlève le \002gag\002 d'un utilisateur spécifié."
set black(say.fr.man.150) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.151) "\[MAN\] \002%char%ungag\002 <nick|mask> ; \002%botnick% ungag\002 <nick|mask> ; \002(PRIVMSG) ungag\002 <#chan> <nick|mask>"

#BanList

set black(say.fr.man.152) "\[MAN\] \002BanList\002 affiche la liste des masques interdits actifs sur le canal spécifié."
set black(say.fr.man.153) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.154) "\[MAN\] \002%char%banlist\002 <handle|all|regex|gag|other> ; \002%botnick% banlist\002 <handle|all|regex|gag|other> ; \002(PRIVMSG) banlist\002 <#chan> <handle|all|regex|gag|other>"
set black(say.fr.man.155) "\[MAN\] \002%char%banlist\002 <handle|all|regex|gag|other|global> ; \002%botnick% banlist\002 <handle|all|regex|gag|other|global> ; \002(PRIVMSG) banlist\002 <#chan> <handle|all|regex|gag|other|global>"

#AddHost

set black(say.fr.man.156) "\[MAN\] \002AddHost\002 ajoute un nouveau masque d'hôte à un utilisateur spécifié."
set black(say.fr.man.157) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.158) "\[MAN\] \002%char%addhost\002 <handle> <mask> ; \002%botnick% addhost\002 <handle> <mask> ; \002(PRIVMSG) addhost\002 <handle> <mask>"

#DelHost

set black(say.fr.man.159) "\[MAN\] \002DelHost\002 supprime un masque d'hôte d'un utilisateur spécifié."
set black(say.fr.man.160) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.161) "\[MAN\] \002%char%delhost\002 <handle> <mask> ; \002%botnick% delhost\002 <handle> <mask> ; \002(PRIVMSG) delhost\002 <handle> <mask>"

#chUser

set black(say.fr.man.162) "\[MAN\] \002chUser\002 change le <handle> (nom) d'un utilisateur en <newhandle>."
set black(say.fr.man.163) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.164) "\[MAN\] \002%char%chuser\002 <handle> <newhandle> ; \002%botnick% chuser\002 <handle> <newhandle> ; \002(PRIVMSG) chuser\002 <handle> <newhandle>"

#s

set black(say.fr.man.165) "\[MAN\] \002s\002 suspend l'accès d'un utilisateur à un canal pour une période de temps spécifiée. Si vous ne spécifiez pas de \002\[durée\]\002, une valeur par défaut sera utilisée."
set black(say.fr.man.165_1) "\[MAN\] ** Remarque : Vous ne pouvez suspendre que quelqu'un ayant un accès inférieur au vôtre. **"
set black(say.fr.man.165_2) "\[MAN\] Format de la durée : <X>\002m\002 = minutes, <X>\002h\002 = heures, <X>\002d\002 = jours"
set black(say.fr.man.166) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.167) "\[MAN\] \002%char%s\002 <handle> \[durée\] \[raison\] ; \002%botnick% s\002 <handle> \[durée\] \[raison\] ; \002(PRIVMSG) s\002 <#chan> <handle> \[durée\] \[raison\]"

#us

set black(say.fr.man.168) "\[MAN\] \002us\002 enlève la suspension de l'accès d'un utilisateur à un canal donné."
set black(say.fr.man.168_1) "\[MAN\] ** Remarque : Vous ne pouvez annuler la suspension que de quelqu'un ayant un accès inférieur au vôtre. De plus, le niveau de suspension doit être inférieur ou égal à votre propre niveau d'accès. **"
set black(say.fr.man.169) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.170) "\[MAN\] \002%char%us\002 <handle> ; \002%botnick% us\002 <handle> ; \002(PRIVMSG) us\002 <#chan> <handle>"

#Auto

set black(say.fr.man.171) "\[MAN\] \002Auto\002 modifie l'automode d'un utilisateur spécifié pour un canal donné. ATTENTION, l'utilisateur doit d'abord avoir accès à ce canal."
set black(say.fr.man.172) "\[MAN\] SYNTAXES D'UTILISATION :"
set black(say.fr.man.173) "\[MAN\] AutoVOICE : \002%char%auto (+/-)v\002 <nick|handle> ; \002%botnick% auto (+/-)v <nick|handle> ; \002(PRIVMSG) auto\002 <#chan> (+/-)v <nick|handle>"
set black(say.fr.man.174) "\[MAN\] AutoOP : \002%char%auto (+/-)o\002 <nick|handle> ; \002%botnick% auto (+/-)o <nick|handle> ; \002(PRIVMSG) auto\002 <#chan> (+/-)o <nick|handle>"
set black(say.fr.man.175) "\[MAN\] AutoVOICE : \002%char%auto (+/-)v\002 <nick|handle> \[global\] ; \002%botnick% auto (+/-)v <nick|handle> \[global\] ; \002(PRIVMSG) auto\002 <#chan> (+/-)v <nick|handle> \[global\]"
set black(say.fr.man.176) "\[MAN\] AutoOP : \002%char%auto (+/-)o\002 <nick|handle> \[global\] ; \002%botnick% auto (+/-)o <nick|handle> \[global\] ; \002(PRIVMSG) auto\002 <#chan> (+/-)o <nick|handle> \[global\]"


################################################# MAN PROTECTIONS #####################################################


#AntiPub

set black(say.fr.man.177) "\[MAN\] \002AntiPub\002 interdit les utilisateurs qui font de la publicité en utilisant *#*, *http://* ou *www.* (prend en charge les caractères génériques)."
set black(say.fr.man.178) "\[MAN\] SYNTAXES D'UTILISATION :"
set black(say.fr.man.179) "\[MAN\] \002%char%set\002 (+/-)antipub ; \002%botnick% set\002 (+/-)antipub ; \002(PRIVMSG) set\002 (+/-)antipub"
set black(say.fr.man.180) "\[MAN\] \002%char%antipub\002 \[#chan\] add <link|#chan> ; \002%char%antipub\002 \[#chan\] list"
set black(say.fr.man.180_1) "\[MAN\] \002%char%antipub\002 \[#chan\] add <+word> (ajouter des exceptions) ; \002%char%antipub\002 \[#chan\] del <no. list> (supprimer antipub de la liste)"
set black(say.fr.man.181) "\[MAN\] Paramètres optionnels : \002antipub-reason\002 ; antipub-bantime ; \002antipub-warn\002 ; antipub-banmethod ; \002antipub-banmask\002"

#AntiNotice

set black(say.fr.man.183) "\[MAN\] \002AntiNotice\002 interdit les utilisateurs qui utilisent \"NOTICE\" sur un canal."
set black(say.fr.man.184) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.185) "\[MAN\] \002%char%set\002 (+/-)antinotice ; \002%botnick% set\002 (+/-)antinotice ; \002(PRIVMSG) set\002 <#chan> (+/-)antinotice"
set black(say.fr.man.186) "\[MAN\] Paramètres optionnels : \002antinotice-reason\002 ; antinotice-bantime ; \002antinotice-warn\002 ; antinotice-banmethod ; \002antinotice-banmask\002"
set black(say.fr.man.187) "\[MAN\] Afficher les paramètres d'options : \002%char%show\002 <setting> ; \002%botnick% show\002 <setting> ; \002(PRIVMSG) show\002 <#chan> <setting>"

#AntiCtcp

set black(say.fr.man.188) "\[MAN\] \002AntiCtcp\002 interdit les utilisateurs qui utilisent \"CTCP\" sur un canal."
set black(say.fr.man.189) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.190) "\[MAN\] \002%char%set\002 (+/-)antictcp ; \002%botnick% set\002 (+/-)antictcp ; \002(PRIVMSG) set\002 <#chan> (+/-)antictcp"
set black(say.fr.man.191) "\[MAN\] Paramètres optionnels : \002antictcp-reason\002, antictcp-bantime, \002antictcp-warn\002, antictcp-banmethod, \002antictcp-banmask\002"
set black(say.fr.man.192) "\[MAN\] Afficher les paramètres d'options : \002%char%show\002 <setting> ; \002%botnick% show\002 <setting> ; \002(PRIVMSG) show\002 <#chan> <setting>"

#AntiBadWord

set black(say.fr.man.193) "\[MAN\] \002AntiBadWord\002 interdit les utilisateurs qui utilisent des mots/phrases *interdits* (prend en charge les caractères génériques)."
set black(say.fr.man.194) "\[MAN\] SYNTAXES D'UTILISATION :"
set black(say.fr.man.195) "\[MAN\] \002%char%set\002 (+/-)antibadword ; \002%botnick% set\002 (+/-)antibadword ; \002(PRIVMSG) set\002 <#chan> (+/-)antibadword"
set black(say.fr.man.196) "\[MAN\] \002%char%badword\002 \[#chan\] add <word|phrase> ; \002%char%badword\002 \[#chan\] list ; \002%char%badword\002 \[#chan\] del <no. list>"
set black(say.fr.man.197) "\[MAN\] \002%char%badword\002 \[#chan\] add <+word> (ajouter des exceptions) ; \002%char%badword\002 \[#chan\] add <word:no. method> (voir \002%char%man banmethod\002)"
set black(say.fr.man.198) "\[MAN\] Paramètres optionnels : \002antibadword-reason\002, antibadword-bantime, \002antibadword-warn\002, antibadword-banmethod, \002antibadword-banmask\002"

#AntiLongText

set black(say.fr.man.199) "\[MAN\] \002AntiLongText\002 interdit les utilisateurs qui écrivent trop de mots en une seule ligne."
set black(say.fr.man.200) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.201) "\[MAN\] \002%char%set\002 (+/-)antilongtext ; \002%botnick% set\002 (+/-)antilongtext ; \002(PRIVMSG) set\002 <#chan> (+/-)antilongtext"
set black(say.fr.man.202) "\[MAN\] Paramètres optionnels : \002antilongtext-reason\002, antilongtext-bantime, \002antilongtext-warn\002, antilongtext-banmethod, \002antilongtextmax\002, antilongtext-banmask"
set black(say.fr.man.203) "Afficher les paramètres d'options : \002%char%show\002 <setting> ; \002%botnick% show\002 <setting> ; \002(PRIVMSG) show\002 <#chan> <setting>"

#BadQuitPart

set black(say.fr.man.204) "\[MAN\] \002AntiBadQuitPart\002 interdit les utilisateurs qui utilisent des mots *interdits* lors de leur départ d'un canal (prend en charge les caractères génériques)."
set black(say.fr.man.205) "\[MAN\] SYNTAXES D'UTILISATION :"
set black(say.fr.man.206) "\[MAN\] \002%char%set\002 (+/-)badquitpart ; \002%botnick% set\002 (+/-)badquitpart ; \002(PRIVMSG) set\002 <#chan> (+/-)badquitpart"
set black(say.fr.man.207) "\[MAN\] \002%char%badquitpart\002 \[#chan\] add <word> ; \002%char%badquitpart\002 \[#chan\] list"
set black(say.fr.man.208) "\[MAN\] \002%char%badquitpart\002 \[#chan\] add <+word> (ajouter des exceptions) ; \002%char%badquitpart\002 \[#chan\] del <no. list> (supprimer badquitpart de la liste)"
set black(say.fr.man.209) "\[MAN\] Paramètres optionnels : \002antibadquitpart-reason\002, antibadquitpart-bantime, \002antibadquitpart-banmethod\002, antibadquitpart-banmask"

#AntiJoinPart

set black(say.fr.man.210) "\[MAN\] \002AntiJoinPart\002 interdit les utilisateurs qui rejoignent et quittent un canal trop rapidement."
set black(say.fr.man.211) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.212) "\[MAN\] \002%char%set (+/-)antijoinpart\002 ; \002%botnick% set (+/-)antijoinpart\002 ; \002(PRIVMSG) set <#chan> (+/-)antijoinpart\002"
set black(say.fr.man.213) "\[MAN\] Paramètres optionnels : \002antijoinpart-reason\002, antijoinpart-bantime, \002antijoinpart-banmethod\002, antijoinpart-banmask"
set black(say.fr.man.214) "Afficher les paramètres d'options : \002%char%show\002 <setting> ; \002%botnick% show\002 <setting> ; \002(PRIVMSG) show\002 <#chan> <setting>"

#AntiSpam

set black(say.fr.man.215) "\[MAN\] \002AntiSpam\002 interdit les utilisateurs qui envoient des messages de spam contenant \001#\001 ou \001*www.*\001 (voir aussi \002!man spamjoinmessage\002)."
set black(say.fr.man.216) "\[MAN\] SYNTAXES D'UTILISATION :"
set black(say.fr.man.217) "\[MAN\] \002%char%set\002 (+/-)antispam ; \002%botnick% set\002 (+/-)antispam ; \002(PRIVMSG) set\002 <#chan> (+/-)antispam"
set black(say.fr.man.217_1) "\[MAN\] \002%char%antispam\002 \[#chan\] add <*text*> ; \002%char%antispam \[#chan\] list\002"
set black(say.fr.man.217_2) "\[MAN\] \002%char%antispam\002 \[#chan\] add <+word> (ajouter des exceptions) ; \002%char%antispam\002 \[#chan\] del <no. list> (supprimer antispam de la liste)"
set black(say.fr.man.218) "\[MAN\] Paramètres optionnels : \002antispam-reason\002, antispam-message, \002antispam-bantime\002, antispam-banmask, \002antispam-scantime\002"
set black(say.fr.man.219) "Afficher les paramètres d'options : \002%char%show\002 <setting> ; \002%botnick% show\002 <setting> ; \002(PRIVMSG) show\002 <#chan> <setting>"

#AntiRepeat

set black(say.fr.man.221) "\[MAN\] \002AntiRepeat\002 interdit les utilisateurs qui répètent trop souvent le même texte sur un canal."
set black(say.fr.man.222) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.223) "\[MAN\] \002%char%set\002 (+/-)antirepeat ; \002%botnick% set\002 (+/-)antirepeat ; \002(PRIVMSG) set\002 <#chan> (+/-)antirepeat"
set black(say.fr.man.224) "\[MAN\] Paramètres optionnels : \002antirepeat-reason\002, antirepeat-bantime, \002antirepeat-warn\002, antirepeat-banmethod, \002antirepeat-banmask\002, antirepeat-setting"
set black(say.fr.man.225) "Afficher les paramètres d'options : \002%char%show\002 <setting> ; \002%botnick% show\002 <setting> ; \002(PRIVMSG) show\002 <#chan> <setting>"

#AntiColor

set black(say.fr.man.226) "\[MAN\] \002AntiColor\002 interdit les utilisateurs qui utilisent des \002COULEURS\002 dans leurs messages."
set black(say.fr.man.227) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.228) "\[MAN\] \002%char%set\002 (+/-)anticolor ; \002%botnick% set\002 (+/-)anticolor ; \002(PRIVMSG) set\002 <#chan> (+/-)anticolor"
set black(say.fr.man.229) "\[MAN\] Paramètres optionnels : \002anticolor-reason\002, anticolor-bantime, \002anticolor-warn\002, anticolor-banmethod, \002anticolor-banmask\002"
set black(say.fr.man.230) "Afficher les paramètres d'options : \002%char%show\002 <setting> ; \002%botnick% show\002 <setting> ; \002(PRIVMSG) show\002 <#chan> <setting>"

#AntiBold

set black(say.fr.man.231) "\[MAN\] \002AntiBold\002 interdit les utilisateurs qui utilisent des caractères \002GRAS\002."
set black(say.fr.man.232) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.233) "\[MAN\] \002%char%set\002 (+/-)antibold ; \002%botnick% set\002 (+/-)antibold ; \002(PRIVMSG) set\002 <#chan> (+/-)antibold"
set black(say.fr.man.234) "\[MAN\] Paramètres optionnels : \002antibold-reason\002, antibold-bantime, \002antibold-warn\002, antibold-banmethod, \002antibold-banmask\002"
set black(say.fr.man.235) "Afficher les paramètres d'options : \002%char%show\002 <setting> ; \002%botnick% show\002 <setting> ; \002(PRIVMSG) show\002 <#chan> <setting>"

#AntiUnderline

set black(say.fr.man.236) "\[MAN\] \002AntiUnderline\002 interdit les utilisateurs qui utilisent des caractères \002SOULIGNÉS\002."
set black(say.fr.man.237) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.238) "\[MAN\] \002%char%set\002 (+/-)antiunderline ; \002%botnick% set\002 (+/-)antiunderline ; \002(PRIVMSG) set\002 <#chan> (+/-)antiunderline"
set black(say.fr.man.239) "\[MAN\] Paramètres optionnels : \002antiunderline-reason\002, antiunderline-bantime, \002antiunderline-warn\002, antiunderline-banmethod, \002antiunderline-banmask\002"
set black(say.fr.man.240) "Afficher les paramètres d'options : \002%char%show\002 <setting> ; \002%botnick% show\002 <setting> ; \002(PRIVMSG) show\002 <#chan> <setting>"

#AntiCaps

set black(say.fr.man.241) "\[MAN\] \002AntiCaps\002 interdit les utilisateurs qui abusent des caractères en \002MAJUSCULES\002."
set black(say.fr.man.242) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.243) "\[MAN\] \002%char%set\002 (+/-)anticaps ; \002%botnick% set\002 (+/-)anticaps ; \002(PRIVMSG) set\002 <#chan> (+/-)anticaps"
set black(say.fr.man.244) "\[MAN\] Paramètres optionnels : \002anticaps-reason\002, anticaps-bantime, \002anticaps-warn\002, anticaps-banmethod, \002anticaps-banmask\002"
set black(say.fr.man.245) "Afficher les paramètres d'options : \002%char%show\002 <setting> ; \002%botnick% show\002 <setting> ; \002(PRIVMSG) show\002 <#chan> <setting>"

#BadNick

set black(say.fr.man.246) "\[MAN\] \002BadNick\002 interdit les utilisateurs qui utilisent des PSEUDONYMES contenant des mots/caractères *interdits* (prend en charge les caractères génériques)."
set black(say.fr.man.247) "\[MAN\] SYNTAXES D'UTILISATION :"
set black(say.fr.man.248) "\[MAN\] \002%char%set\002 (+/-)badnick ; \002%botnick% set\002 (+/-)badnick ; \002(PRIVMSG) set\002 <#chan> (+/-)badnick"
set black(say.fr.man.249) "\[MAN\] \002%char%badnick\002 \[#chan\] add <word> ; \002%char%badnick \[#chan\] list\002"
set black(say.fr.man.250) "\[MAN\] \002%char%badnick\002 \[#chan\] add <+word> (ajouter des exceptions) ; \002%char%badnick\002 \[#chan\] del <no. list> (supprimer badnick de la liste)"
set black(say.fr.man.251) "\[MAN\] Paramètres optionnels : \002badnick-reason\002, badnick-bantime, \002badnick-banmask\002, badnick-bmethod, \002badnick-banwait\002"

#BadRealname

set black(say.fr.man.252) "\[MAN\] \002BadRealname\002 interdit les utilisateurs qui utilisent des NOMS RÉELS contenant des mots/caractères *interdits* (prend en charge les caractères génériques)."
set black(say.fr.man.253) "\[MAN\] SYNTAXES D'UTILISATION :"
set black(say.fr.man.254) "\[MAN\] \002%char%set\002 (+/-)badrealname ; \002%botnick% set\002 (+/-)badrealname ; \002(PRIVMSG) set\002 <#chan> (+/-)badrealname"
set black(say.fr.man.255) "\[MAN\] \002%char%badrealname\002 \[#chan\] add <word> ; \002%char%badrealname \[#chan\] list\002"
set black(say.fr.man.256) "\[MAN\] \002%char%badrealname\002 \[#chan\] add <+word> (ajouter des exceptions) ; \002%char%badrealname\002 \[#chan\] del <no. list> (supprimer badrealname de la liste)"
set black(say.fr.man.257) "\[MAN\] Paramètres optionnels : \002badrealname-reason\002, badrealname-bantime, \002badrealname-banmask\002"

#AutoOp

set black(say.fr.man.258) "\[MAN\] \002AutoOp\002 donne la possibilité à chaque utilisateur qui rejoint un canal d'obtenir \002OP (@)\002."
set black(say.fr.man.259) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.260) "\[MAN\] \002%char%set\002 (+/-)autoop ; \002%botnick% set\002 (+/-)autoop ; \002(PRIVMSG) set\002 <#chan> (+/-)autoop"

#AutoVoice

set black(say.fr.man.261) "\[MAN\] \002AutoVoice\002 donne la possibilité à chaque utilisateur qui rejoint un canal d'obtenir \002VOICE (+v)\002."
set black(say.fr.man.262) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.263) "\[MAN\] \002%char%set\002 (+/-)autovoice ; \002%botnick% set\002 (+/-)autovoice ; \002(PRIVMSG) set\002 <#chan> (+/-)autovoice"

#AntiJoinFlood

set black(say.fr.man.264) "\[MAN\] \002AntiJoinFlood\002 définit certains modes de canal et interdit les utilisateurs qui effectuent des actions de \002massjoin\002. Interdit également les utilisateurs qui rejoignent et quittent trop rapidement."
set black(say.fr.man.265) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.266) "\[MAN\] \002%char%set\002 (+/-)antijoinflood ; \002%botnick% set\002 (+/-)antijoinflood ; \002(PRIVMSG) set\002 <#chan> (+/-)antijoinflood"
set black(say.fr.man.267) "\[MAN\] Paramètres optionnels : \002joinflood\002 (<nombre de joins>:<secondes>)"
set black(say.fr.man.268) "Afficher les paramètres d'options : \002%char%show\002 <setting> ; \002%botnick% show\002 <setting> ; \002(PRIVMSG) show\002 <#chan> <setting>"

#AntiChanFlood

set black(say.fr.man.269) "\[MAN\] \002AntiChanFlood\002 interdit les utilisateurs qui inondent un canal avec du texte/des mots."
set black(say.fr.man.270) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.271) "\[MAN\] \002%char%set\002 (+/-)antichanflood ; \002%botnick% set\002 (+/-)antichanflood ; \002(PRIVMSG) set\002 <#chan> (+/-)antichanflood"
set black(say.fr.man.272) "\[MAN\] Paramètres optionnels : \002antichanflood-reason\002 (raison par défaut), \002antichanflood-bantime\002 (durée d'interdiction par défaut), \002chanflood\002 (<nombre de lignes>:<secondes>)"
set black(say.fr.man.273) "Afficher les paramètres d'options : \002%char%show\002 <setting> ; \002%botnick% show\002 <setting> ; \002(PRIVMSG) show\002 <#chan> <setting>"

#BadIdent

set black(say.fr.man.274) "\[MAN\] \002BadIdent\002 interdit les utilisateurs qui utilisent des IDENTs contenant des mots/caractères *interdits* (prend en charge les caractères génériques)."
set black(say.fr.man.275) "\[MAN\] SYNTAXES D'UTILISATION :"
set black(say.fr.man.276) "\[MAN\] \002%char%set\002 (+/-)badident ; \002%botnick% set\002 (+/-)badident ; \002(PRIVMSG) set\002 <#chan> (+/-)badident"
set black(say.fr.man.277) "\[MAN\] \002%char%badident\002 \[#chan\] add <word> ; \002%char%badident \[#chan\] list\002"
set black(say.fr.man.278) "\[MAN\] \002%char%badident\002 \[#chan\] add <+word> (ajouter des exceptions) ; \002%char%badident\002 \[#chan\] del <no. list> (supprimer badident de la liste)"
set black(say.fr.man.279) "\[MAN\] Paramètres optionnels : \002badident-reason\002 (raison par défaut), \002badident-bantime\002 (durée d'interdiction par défaut), \002badident-banmask\002 (masque d'interdiction par défaut)"

#ShowHandle

set black(say.fr.man.280) "\[MAN\] \002ShowHandle\002 ajoutera le handle de l'utilisateur qui ajoute une interdiction au message d'interdiction."
set black(say.fr.man.281) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.282) "\[MAN\] \002%char%set\002 (+/-)showhandle ; \002%botnick% set\002 (+/-)showhandle ; \002(PRIVMSG) set\002 <#chan> (+/-)showhandle"

#ShowCount

set black(say.fr.man.283) "\[MAN\] \002ShowCount\002 ajoutera le nombre total d'interdictions au message d'interdiction."
set black(say.fr.man.284) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.285) "\[MAN\] \002%char%set\002 (+/-)showcount ; \002%botnick% set\002 (+/-)showcount ; \002(PRIVMSG) set\002 <#chan> (+/-)showcount"

#Showtime

set black(say.fr.man.286) "\[MAN\] \002Showtime\002 ajoutera le temps d'expiration au message d'interdiction."
set black(say.fr.man.287) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.288) "\[MAN\] \002%char%set\002 (+/-)showtime ; \002%botnick% set\002 (+/-)showtime ; \002(PRIVMSG) set\002 <#chan> (+/-)showtime"

#ShowUrl

set black(say.fr.man.289) "\[MAN\] \002ShowUrl\002 ajoutera l'URL du canal à la raison de l'interdiction (voir \002!man url\002)."
set black(say.fr.man.290) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.291) "\[MAN\] \002%char%set\002 (+/-)showurl ; \002%botnick% set\002 (+/-)showurl ; \002(PRIVMSG) set\002 <#chan> (+/-)showurl"

#xBanTime

set black(say.fr.man.292) "\[MAN\] \002xBanTime\002 définit la durée d'interdiction X (UNIQUEMENT si le module \002+xonly\002 est activé)."
set black(say.fr.man.293) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.294) "\[MAN\] \002%char%set\002 xbantime <bantime X> ; \002%botnick% set\002 xbantime <bantime X> ; \002(PRIVMSG) set\002 <#chan> xbantime <bantime X>"

#xBanLevel

set black(say.fr.man.295) "\[MAN\] \002xBanLevel\002 définit le niveau d'accès X (UNIQUEMENT si le module \002+xonly\002 est activé)."
set black(say.fr.man.296) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.297) "\[MAN\] \002%char%set\002 xbanlevel <level X> ; \002%botnick% set\002 xbanlevel <level X> ; \002(PRIVMSG) set\002 <#chan> xbanlevel <level X>"

#oProtect

set black(say.fr.man.298) "\[MAN\] \002oProtect\002 exclut ceux qui ont \002OP (@)\002 de toutes les protections."
set black(say.fr.man.299) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.300) "\[MAN\] \002%char%set\002 (+/-)oprotect ; \002%botnick% set\002 (+/-)oprotect ; \002(PRIVMSG) set\002 <#chan> (+/-)oprotect"

#vProtect

set black(say.fr.man.301) "\[MAN\] \002vProtect\002 exclut ceux qui ont \002VOICE (+v)\002 de toutes les protections."
set black(say.fr.man.302) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.303) "\[MAN\] \002%char%set\002 (+/-)vprotect ; \002%botnick% set\002 (+/-)vprotect ; \002(PRIVMSG) set\002 <#chan> (+/-)vprotect"

#hoProtect

set black(say.fr.man.304) "\[MAN\] \002hoProtect\002 exclut ceux qui ont \002HALFOP (+h %)\002 de toutes les protections."
set black(say.fr.man.305) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.306) "\[MAN\] \002%char%set\002 (+/-)hoprotect ; \002%botnick% set\002 (+/-)hoprotect ; \002(PRIVMSG) set\002 <#chan> (+/-)hoprotect"

#ShowID

set black(say.fr.man.307) "\[MAN\] \002ShowID\002 ajoutera le \002numéro ID\002 de l'interdiction de la liste des interdictions de l'eggdrop à la raison de l'interdiction."
set black(say.fr.man.308) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.309) "\[MAN\] \002%char%set\002 (+/-)showid ; \002%botnick% set\002 (+/-)showid ; \002(PRIVMSG) set\002 <#chan> (+/-)showid"


################################################# MAN MODULES #####################################################

#xTools

set black(say.fr.man.407) "\[MAN\] \002xTools\002 donne à eggdrop la permission de demander Op, Voice, Invite ou de se débannir lui-même via *X*."
set black(say.fr.man.408) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.409) "\[MAN\] \002%char%set\002 (+/-)xtools ; \002%botnick% set\002 (+/-)xtools ; \002(PRIVMSG) set\002 <#chan> (+/-)xtools"

#BadChan

set black(say.fr.man.410) "\[MAN\] \002BadChan\002 interdit aux personnes qui sont co-canal avec des canaux *interdits* de rester sur un canal spécifié (prend en charge les caractères génériques). Supporte maintenant l'ajout de type \002REGEX\002 badchans."
set black(say.fr.man.411) "\[MAN\] SYNTAXES D'UTILISATION :"
set black(say.fr.man.412) "\[MAN\] \002%char%badchan\002 <ON|OFF> ; \002%botnick% badchan\002 <ON|OFF> ; \002(PRIVMSG) badchan\002 <#chan> <ON|OFF>"
set black(say.fr.man.413) "\[MAN\] \002%char%badchan add\002 <#badchan> \[raison\] (ajouter badchan) ; \002%char%badchan \[#chan\] list\002 (voir la liste des badchans)"
set black(say.fr.man.414) "\[MAN\] \002%char%badchan add\002 <#badchan> \[global\] \[raison\]\002 ; \002%char%badchan del\002 <no. list> \[global\] ; \002%char%badchan list\002 \[global\]"
set black(say.fr.man.415) "\[MAN\] \002%char%badchan add\002 <+#badchan> (ajouter des exceptions) ; \002%char%badchan regex\002 <#regex> \[raison\] \001(regex \001exemple : #\[a-z\]+\[0-9\]\[0-9\])\001 , ajoute un type BADCHAN REGEX, les canaux qui correspondent à cette expression seront considérés comme des BADCHANS)"
set black(say.fr.man.416) "\[MAN\] Paramètres optionnels : \002badchan-reason\002, badchan-bantime, \002badchan-bmethod\002, badchan-scantime, \002badchan-banwait\002, showbadchan"

#Anunt

set black(say.fr.man.417) "\[MAN\] \002Anunt/Advert\002 affiche des annonces/publicités sur un canal après un certain laps de temps et en fonction de l'activité du canal (voir aussi \002%char%man anunt-showtime\002 & prend en charge !%chan% et !%botnick%)."
set black(say.fr.man.417_1) "\[MAN\] ** Remarque : Ces messages seront affichés un par un et UNIQUEMENT s'il y a de l'activité sur ce canal. Sinon, l'eggdrop attend en veille jusqu'au premier signe d'activité sur le canal (join, part, chat, etc.). **"
set black(say.fr.man.418) "\[MAN\] SYNTAXES D'UTILISATION :"
set black(say.fr.man.419) "\[MAN\] \002%char%anunt <ON|OFF>\002 ; \002%botnick% anunt <ON|OFF> ; \002(PRIVMSG) anunt <#chan> <ON|OFF>\002"
set black(say.fr.man.420) "\[MAN\] \002%char%anunt\002 \[#chan\] add <text> ; \002%char%anunt \[#chan\] list\002 ; \002%char%anunt\002 \[#chan\] del <no. list>"
set black(say.fr.man.421) "\[MAN\] \002Rappel :\002 Pour ajouter plus d'une phrase dans une annonce, utilisez \002%char%anunt add <text1>~<text2>..\002 et l'eggdrop affichera l'annonce sous forme de 2 phrases différentes."

#Limit

set black(say.fr.man.422) "\[MAN\] \002Limit\002 a pour rôle de \"gérer\" la limite du canal."
set black(say.fr.man.423) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.424) "\[MAN\] \002%char%limit\002 <ON|OFF> ; \002%botnick% limit\002 <ON|OFF> ; \002(PRIVMSG) limit\002 <#chan> <ON|OFF>"
set black(say.fr.man.425) "\[MAN\] \002%char%limit set <nombre>\002 (nombre limite par défaut)"
set black(say.fr.man.426) "Afficher les paramètres d'options : \002%char%show\002 <setting> ; \002%botnick% show\002 <setting> ; \002(PRIVMSG) show\002 <#chan> <setting>"


#Topic

set black(say.fr.man.427) "\[MAN\] \002Topic\002 définit le sujet du canal, qui peut être vu dans la réponse de \002%char%info #channel\002. Si aucun texte de sujet n'est spécifié, le sujet actuel du canal sera ajouté."
set black(say.fr.man.427_1) "\[MAN\] ** Remarque : Si vous souhaitez réinitialiser/supprimer le sujet, utilisez : \002%char%topic unset\002. **"
set black(say.fr.man.428) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.429) "\[MAN\] \002%char%topic\002 \[#chan\] set <texte> ; \002%botnick% topic\002 \[#chan\] set <texte> ; \002(PRIVMSG) topic\002 \[#chan\] set <texte>"
set black(say.fr.man.430) "Afficher les paramètres d'options : \002%char%show\002 <setting> ; \002%botnick% show\002 <setting> ; \002(PRIVMSG) show\002 <#chan> <setting>"

#CloneScan

set black(say.fr.man.431) "\[MAN\] \002CloneScan\002 scanne le canal pour détecter les clones et les bannir."
set black(say.fr.man.432) "\[MAN\] SYNTAXES D'UTILISATION :"
set black(say.fr.man.433) "\[MAN\] \002%char%set\002 (+/-)clonescan ; \002%botnick% set\002 (+/-)clonescan ; \002(PRIVMSG) set\002 <#chan> (+/-)clonescan"
set black(say.fr.man.433_1) "\[MAN\] \002%char%clonescan add\002 <ip|mask> ; \002%char%clonescan del\002 <no. list> ; \002%char%clonescan list\002"
set black(say.fr.man.434) "\[MAN\] Paramètres optionnels : \002clonescan-maxclone\002 (nombre maximum de clones), \002clonescan-bantime\002 (durée d'interdiction par défaut), \002clonescan-reason\002 (raison par défaut)"
set black(say.fr.man.435) "Afficher les paramètres d'options : \002%char%show\002 <setting> ; \002%botnick% show\002 <setting> ; \002(PRIVMSG) show\002 <#chan> <setting>"

#Seen

set black(say.fr.man.436) "\[MAN\] \002Seen\002 recherche une personne avec le pseudo spécifié (prend en charge les caractères génériques). Il possède également une base de données pour chaque canal."
set black(say.fr.man.437) "\[MAN\] SYNTAXES D'UTILISATION :"
set black(say.fr.man.438_1) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.438) "\[MAN\] \002%char%set\002 (+/-)seen ; \002%botnick% set\002 (+/-)seen ; \002(PRIVMSG) set\002 <#canal> (+/-)seen"
set black(say.fr.man.438_2) "\[MAN\] \002%char%seen\002 <nick|ip|host> ; \002%botnick% seen\002 <nick|ip|host> ; \002(PRIVMSG) seen\002 \[#chan\] <nick|ip|host>"
set black(say.fr.man.438_3) "\[MAN\] \002%char%seen\002 \[global\] <nick|ip|host> ; \002%botnick% seen\002 \[global\] <nick|ip|host> ; \002(PRIVMSG) seen\002 \[#chan|global\] <nick|ip|host>"
set black(say.fr.man.439) "\[MAN\] Paramètres optionnels : \002%char%seenreply\002"
set black(say.fr.man.440) "Afficher les paramètres d'options : \002%char%show\002 <setting> ; \002%botnick% show\002 <setting> ; \002(PRIVMSG) show\002 <#chan> <setting>"

#Greet

set black(say.fr.man.441) "\[MAN\] \002Greet\002 ajoute un message de bienvenue et l'envoie à tous les utilisateurs qui rejoignent ce canal (voir aussi \002%char%man infoline\002 et \002%char%man count\002)."
set black(say.fr.man.442) "\[MAN\] SYNTAXES D'UTILISATION :"
set black(say.fr.man.443) "\[MAN\] \002%char%greet\002 <ON|OFF> ; \002%botnick% greet\002 <ON|OFF> ; \002(PRIVMSG) greet\002 <#chan> <ON|OFF>"
set black(say.fr.man.444) "\[MAN\] \002%char%greet\002 \[#chan\] set <message>\002 ; \002%botnick% greet\002 \[#chan\] set <message> ; \002(PRIVMSG) greet\002 \[#chan\] set <message>"
set black(say.fr.man.445) "\[MAN\] \002%char%set greet-method <method>\002 ( NOTICE | PRIVMSG )"
set black(say.fr.man.446) "\[MAN\] ** Remarque : Pour ajouter plus d'une phrase dans un accueil, utilisez \002%char%greet add <message1>~<message2>\002.. et l'eggdrop affichera l'accueil sous forme de 2 phrases différentes (prend en charge %countchan%, %nick%, %time% et %count%). **"

#Leave

set black(say.fr.man.447) "\[MAN\] \002Leave\002 ajoute un message de départ et l'envoie à tous les utilisateurs qui quittent ce canal."
set black(say.fr.man.448) "\[MAN\] SYNTAXES D'UTILISATION :"
set black(say.fr.man.449) "\[MAN\] \002%char%leave\002 <ON|OFF> ; \002%botnick% leave\002 <ON|OFF> ; \002(PRIVMSG) leave\002 <#chan> <ON|OFF>"
set black(say.fr.man.450) "\[MAN\] \002%char%leave\002 \[#chan\] set <message>\002 ; \002%botnick% leave\002 \[#chan\] set <message> ; \002(PRIVMSG) leave\002 \[#chan\] set <message>"
set black(say.fr.man.451) "\[MAN\] \002%char%set leave-method <method>\002 ( NOTICE | PRIVMSG )"
set black(say.fr.man.452) "\[MAN\] ** Remarque : Pour ajouter plus d'une phrase dans un message de départ, utilisez \002%char%leave add <message1>~<message2>\002.. et l'eggdrop affichera le message de départ sous forme de 2 phrases différentes. **"

#Idle

set black(say.fr.man.453) "\[MAN\] \002Idle\002 interdit aux utilisateurs avec \002op (@)\002, \002halfop (+h %)\002 ou \002voice (+v)\002 d'être inactifs."
set black(say.fr.man.453_1) "\[MAN\] Format de la période : <X>\002m\002 = minutes, <X>\002h\002 = heures, <X>\002d\002 = jours"
set black(say.fr.man.454) "\[MAN\] SYNTAXES D'UTILISATION :"
set black(say.fr.man.455) "\[MAN\] \002%char%idle\002 <(+/-)o / (+/-)v / (+/-)ho> ; \002%botnick% idle\002 <(+/-)o / (+/-)v / (+/-)ho> ; \002(PRIVMSG) idle\002 <#chan> <(+/-)o / (+/-)v / (+/-)ho>"
set black(say.fr.man.456) "\[MAN\] \002%char%idle add\002 <nick> (ajouter une exception à l'inactivité), \002%char%idle <list>\002 (lister les exceptions), \002%char%idle del\002 <nick> (supprimer l'exception)"
set black(say.fr.man.457) "\[MAN\] Paramètres optionnels : \002idleopmax\002 <période> (temps d'inactivité par défaut pour op) ; \002idlevoicemax\002 <période> (temps d'inactivité par défaut pour voice) ; \002idlehalfopmax\002 <période> (temps d'inactivité par défaut pour halfop) ; \002idle-scantime\002 <période> (temps de scan)"
set black(say.fr.man.458) "Afficher les paramètres d'options : \002%char%show\002 <setting> ; \002%botnick% show\002 <setting> ; \002(PRIVMSG) show\002 <#chan> <setting>"
set black(say.fr.man.458_1) "\[MAN\] Pour des informations sur \002idlevoice\002, veuillez consulter : \002%char%man idle\002"
set black(say.fr.man.458_2) "\[MAN\] Pour des informations sur \002idleop\002, veuillez consulter : \002%char%man idle\002"
set black(say.fr.man.458_3) "\[MAN\] Pour des informations sur \002idlehalfop\002, veuillez consulter : \002%char%man idle\002"

#BackChan

set black(say.fr.man.459) "\[MAN\] \002BackChan\002 donne l'option à chaque canal d'avoir un canal secondaire, où l'eggdrop annoncera les interdictions données par lui au canal principal."
set black(say.fr.man.460) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.461) "\[MAN\] \002%char%set\002 \[#chan\] backchan <#backchan> ; \002%botnick% set\002 \[#chan\] backchan <#backchan> ; \002(PRIVMSG) set\002 <#chan> backchan <#backchan>"
set black(say.fr.man.462) "\[MAN\] ** Remarque : Après la configuration du canal secondaire, vous pourrez utiliser toutes les commandes d'interdiction, mais elles seront appliquées sur \002<#chan>\002 (le canal principal). Prend en charge uniquement un canal principal avec un seul backchan, ne peut pas gérer 2 ou plusieurs canaux avec le même backchan. **"
set black(say.fr.man.463) "\[MAN\] \002ChanReport\002 (BackChan) est un module qui, lorsqu'il est activé, donne l'option à chaque canal d'avoir un canal secondaire, où l'eggdrop annoncera les interdictions données par lui à \002<#chan>\002 (le canal principal)."

#TopWords

set black(say.fr.man.464) "\[MAN\] \002TopWords\002 enregistre l'activité des utilisateurs d'un canal (nombre de mots écrits, lignes, lettres, etc.)."
set black(say.fr.man.465) "\[MAN\] SYNTAXES D'UTILISATION :"
set black(say.fr.man.466) "\[MAN\] \002%char%set\002 (+/-)topwords ; \002%botnick% set\002 (+/-)topwords ; \002(PRIVMSG) set\002 <#chan> (+/-)topwords"
set black(say.fr.man.467) "\[MAN\] \002%char%topwords\002 \[#chan\] <nick> \[total\] ; \002%char%topwords\002 \[#chan\] <nick> \[total\] ; \002(PRIVMSG) topwords\002 \[#chan\] <nick> \[total\]"
set black(say.fr.man.467_1) "\[MAN\] \002%char%topwords\002 \[#chan\] <nick> \[total|reset\] ; \002(PRIVMSG) topwords\002 \[#chan\] <nick> \[total|reset\]"
set black(say.fr.man.467_2) "\[MAN\] \002%char%topwords\002 \[#chan\] add <nick> (ajouter des exceptions) ; \002%char%topwords\002 \[#chan\] list (lister les exceptions) ; \002%char%topwords\002 \[#chan\] del <nick> (supprimer l'exception)"

#AntiTake

set black(say.fr.man.473) "\[MAN\] \002Antitake\002 a 2 réglages : Le premier réglage empêche les utilisateurs sans accès de \002prendre OP (@)\002 à d'autres ops. Il désopérera l'op prenant les ops et réopérera l'op qui a perdu les ops. Le deuxième réglage empêche les utilisateurs sans accès de \002donner OP (@)\002 à un autre utilisateur. Dans ce cas, les deux utilisateurs seront désopérés."
set black(say.fr.man.474) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.475) "\[MAN\] \002%char%set\002 (+/-)dontdeop ; \002%botnick% set\002 (+/-)dontdeop (protection de déop) ; \002%char%set\002 (+/-)dontop ; \002%botnick% set\002 (+/-)dontop (protection d'op)"
set black(say.fr.man.475_1) "\[MAN\] Pour des informations sur \002dontdeop\002, veuillez consulter : \002%char%man antitake\002"
set black(say.fr.man.475_2) "\[MAN\] Pour des informations sur \002dontop\002, veuillez consulter : \002%char%man antitake\002"

#Private

set black(say.fr.man.476) "\[MAN\] \002Private\002 interdit aux utilisateurs sans accès de rejoindre un canal spécifié (en les bannissant) à moins qu'ils n'aient été ajoutés à la liste d'exceptions."
set black(say.fr.man.477) "\[MAN\] SYNTAXES D'UTILISATION :"
set black(say.fr.man.478) "\[MAN\] \002%char%set\002 (+/-)private ; \002%botnick% set\002 (+/-)private ; \002(PRIVMSG) set\002 <#chan> (+/-)private"
set black(say.fr.man.479) "\[MAN\] \002%char%private add\002 <nick> <ip|mask> (ajouter une exception), \002%char%private list\002 (lister les exceptions), \002%char%private del\002 <nick> (supprimer l'exception)"
set black(say.fr.man.480) "\[MAN\] Paramètres optionnels : \002private-reason\002 (raison par défaut) ; \002private-bantime\002 (durée d'interdiction par défaut)"
set black(say.fr.man.481) "Afficher les paramètres d'options : \002%char%show\002 <setting> ; \002%botnick% show\002 <setting> ; \002(PRIVMSG) show\002 <#chan> <setting>"

#AutoBroadcast

set black(say.fr.man.482) "\[MAN\] \002AutoBroadCast\002 diffusera des messages, un à la fois, sur tous les canaux où se trouve l'eggdrop."
set black(say.fr.man.483) "\[MAN\] SYNTAXES D'UTILISATION :"
set black(say.fr.man.484) "\[MAN\] \002%char%bt\002 <ON|OFF> ; \002%botnick% bt\002 <ON|OFF> ; \002(PRIVMSG) bt\002 <#chan> <ON|OFF>"
set black(say.fr.man.485) "\[MAN\] \002%char%bt add\002 <message> ; \002%char%bt\002 list ; \002%char%bt del\002 <no. list>"
set black(say.fr.man.486) "\[MAN\] \002%char%set\002 <#chan> (+/-)silent (il NE diffusera PAS dans ce canal)"
set black(say.fr.man.486_1) "\[MAN\] Pour des informations sur \002silent\002, veuillez consulter : \002%char%man autobroadcast\002"

#Language

set black(say.fr.man.487) "\[MAN\] \002Lang\002 vous permet de sélectionner la langue dans laquelle l'eggdrop vous répondra et définit également les messages de langue par défaut utilisés dans les raisons de kick/ban."
set black(say.fr.man.487_1) "\[MAN\] Langues disponibles : \002RO\002 = roumain ; \002EN\002 = anglais ; \002ES\002 = espagnol ; \002FR\002 = français"
set black(say.fr.man.488) "\[MAN\] SYNTAXES D'UTILISATION :"
set black(say.fr.man.489) "\[MAN\] \002%char%set\002 \[#chan\] lang <language> ; \002%botnick% set\002 \[#chan\] lang <language> ; \002(PRIVMSG) set\002 \[#chan\] lang <language>"
set black(say.fr.man.489_1) "\[MAN\] \002%char%myset\002 lang <language> ; \002%botnick% myset\002 lang <language> ; \002(PRIVMSG) myset\002 lang <language> (langue utilisateur par défaut)"

#TCL

set black(say.fr.man.490) "\[MAN\] \002TCL\002 prend en charge le téléchargement, le chargement et le déchargement de scripts Tcl directement via votre eggdrop (le téléchargement est limité aux fichiers \002.tcl\002 UNIQUEMENT)."
set black(say.fr.man.491) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.492) "\[MAN\] \002%char%tcl <list>\002 (voir les scripts) ; \002%char%tcl wget\002 <lien/nom.tcl> ; \002%char%tcl load\002 <nom.tcl> (charger un script tcl) ; \002%char%tcl unload\002 <nom.tcl> (décharger un script tcl) ; \002%char%tcl info\002 <nom.tcl> (informations sur un tcl)"


#NeXt

set black(say.fr.man.493) "\[MAN\] \002Next\002 vous permet d'aider les utilisateurs qui ont besoin de votre aide de manière ordonnée (utilisé dans les canaux d'aide)."
set black(say.fr.man.494) "\[MAN\] SYNTAXES D'UTILISATION :"
set black(say.fr.man.495) "\[MAN\] \002%char%set\002 (+/-)next ; \002%botnick% set\002 (+/-)next ; \002(PRIVMSG) set\002 <#chan> (+/-)next"
set black(say.fr.man.496) "\[MAN\] \002%char%next\002 (donner la voix au prochain utilisateur) ; \002%char%next list\002 (afficher la liste d'attente), \002%char%helped\002 <nick>, \002%char%noidle\002 <nick>, \002%char%skip\002 <nick> (déplacer à la fin de la liste)"
set black(say.fr.man.497) "\[MAN\] Paramètres optionnels : \002next-reason\002 (raison par défaut), \002next-bantime\002 (durée d'interdiction par défaut)"
set black(say.fr.man.498) "Afficher les paramètres d'options : \002%char%show\002 <setting> ; \002%botnick% show\002 <setting> ; \002(PRIVMSG) show\002 <#chan> <setting>"


################################################# MAN COMANDS #####################################################


#upTime

set black(say.fr.man.605) "\[MAN\] \002upTime\002 vous permet de savoir depuis combien de temps l'eggdrop est démarré, à quelle heure il s'est connecté au serveur et également le serveur auquel il est connecté."
set black(say.fr.man.606) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.607) "\[MAN\] \002%char%uptime\002 ; %botnick% uptime ; \002(PRIVMSG) uptime\002"

#Status

set black(say.fr.man.608) "\[MAN\] \002Status\002 vous permet de trouver des informations sur l'eggdrop comme les canaux surveillés, le propriétaire, la version, le nombre total d'utilisateurs et le propriétaire de l'eggdrop."
set black(say.fr.man.609) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.610) "\[MAN\] \002%char%status\002 ; %botnick% status ; \002(PRIVMSG) status\002"

#Set

set black(say.fr.man.611) "\[MAN\] \002Set\002 applique ou supprime les drapeaux de l'eggdrop pour le canal (certains réglages indiquant à votre eggdrop comment se comporter dans certaines conditions)."
set black(say.fr.man.612) "\[MAN\] SYNTAXES D'UTILISATION :"
set black(say.fr.man.613) "\[MAN\] \002%char%set\002 (+/-)flag / <flag|str|option> <description> ; \002%botnick% set\002 (+/-)flag / <flag|str|option> <description> ; \002(PRIVMSG) set\002 <#chan> (+/-)flag / <flag|str|option> <description>"
set black(say.fr.man.614) "\[MAN\] \002%char%set\002 global <flag|str|option> <description> (paramètre pour tous les canaux)"
set black(say.fr.man.615) "\[MAN\] Exemple : \002%char%set\002 chanmode +k <key> (définir la clé)"

#Jump

set black(say.fr.man.620) "\[MAN\] \002Jump\002 change le serveur auquel votre eggdrop est connecté."
set black(say.fr.man.621) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.622) "\[MAN\] \002%char%jump\002 <serveur irc> ; \002%botnick% jump\002 <serveur irc> ; \002(PRIVMSG) jump\002 <serveur irc>"

#msg

set black(say.fr.man.623) "\[MAN\] \002MSG\002 envoie un <message> spécifié à \[cible\] (canal, requête ou fenêtre de chat)."
set black(say.fr.man.624) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.625) "\[MAN\] \002%char%msg\002 \[cible\] <message> ; \002%botnick% msg\002 \[cible\] <message> ; \002(PRIVMSG) msg\002 \[cible\] <message>"

#Broadcast

set black(say.fr.man.626) "\[MAN\] \002Broadcast\002 vous permet d'envoyer des messages à tous les canaux où se trouve l'eggdrop."
set black(say.fr.man.627) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.628) "\[MAN\] \002%char%broadcast\002 <message> ; \002%botnick% broadcast\002 <message> ; \002(PRIVMSG) broadcast\002 <message>"

#Ignore

set black(say.fr.man.629) "\[MAN\] \002Ignore\002 vous permet d'ajouter, de lister et de supprimer des \002ignores\002 de votre eggdrop. Si vous ne spécifiez pas de \002\[durée\]\002, la valeur par défaut sera utilisée."
set black(say.fr.man.629_1) "\[MAN\] Format de la durée : <X>\002m\002 = minutes, <X>\002h\002 = heures, <X>\002d\002 = jours"
set black(say.fr.man.630) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.631) "\[MAN\] \002%char%ignore list\002 ; \002%char%ignore add\002 <ip|mask> \[durée\] \[raison\] ; \002%char%ignore del\002 <ip|host>"

#Chat

set black(say.fr.man.632) "\[MAN\] \002Chat\002 vous permet de vous connecter au botnet de votre eggdrop (identique à \002/CTCP CHAT\002 %botnick%)."
set black(say.fr.man.633) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.634) "\[MAN\] \002%char%chat\002 ; %botnick% chat ; \002(PRIVMSG) chat\002"

#Channels

set black(say.fr.man.638) "\[MAN\] \002Channels\002 vous permet de voir tous les canaux auxquels votre eggdrop est connecté."
set black(say.fr.man.639) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.640) "\[MAN\] \002%char%channels\002 ; %botnick% channels ; \002(PRIVMSG) channels\002"

#Nick

set black(say.fr.man.641) "\[MAN\] \002Nick\002 vous permet de changer le pseudonyme de votre eggdrop."
set black(say.fr.man.642) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.643) "\[MAN\] \002%char%nick\002 <newnick> ; \002%botnick% nick\002 <newnick> ; \002(PRIVMSG) nick\002 <newnick>"
set black(say.fr.man.643_1) "\[MAN\] \002%char%set\002 nick <newnick> ; \002%botnick% set nick\002 <newnick> ; \002(PRIVMSG) set nick\002 <newnick> (paramètre permanent)"

#Restart 

set black(say.fr.man.644) "\[MAN\] \002Restart\002 vous permet de redémarrer l'eggdrop en tant que processus d'arrière-plan sur le serveur shell."
set black(say.fr.man.645) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.646) "\[MAN\] \002%char%restart\002 ; %botnick% restart ; \002(PRIVMSG) restart\002"
set black(say.fr.man.647) "\[MAN\] ** Remarque : Cette commande est principalement utilisée si le bot est anormalement en retard ou ne fonctionne pas correctement. **"

#Rehash

set black(say.fr.man.648) "\[MAN\] \002Rehash\002 fait recharger tous les fichiers au bot chaque fois que des modifications sont apportées aux enregistrements utilisateur ou canal de l'eggdrop."
set black(say.fr.man.649) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.650) "\[MAN\] \002%char%rehash\002 ; %botnick% rehash ; \002(PRIVMSG) rehash\002"

#Die

set black(say.fr.man.651) "\[MAN\] \002Die\002 envoie un signal d'arrêt à votre eggdrop."
set black(say.fr.man.652) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.653) "\[MAN\] \002%char%die\002 ; %botnick% die ; \002(PRIVMSG) die\002"

#Suspend

set black(say.fr.man.654) "\[MAN\] \002Suspend\002 suspend un canal dans la base de données des canaux de votre eggdrop. Cela empêche votre bot de rejoindre le canal ou d'agir dans celui-ci."
set black(say.fr.man.655) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.656) "\[MAN\] \002%char%suspend\002 <#chan> \[raison\] ; \002%botnick% suspend\002 <#chan> \[raison\] ; \002(PRIVMSG) suspend\002 <#chan> \[raison\]"

#unSuspend

set black(say.fr.man.657) "\[MAN\] \002unSuspend\002 annule la suspension d'un canal dans la base de données des canaux de votre eggdrop. Cela permet à votre bot de rejoindre le canal et d'y agir."
set black(say.fr.man.658) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.659) "\[MAN\] \002%char%unsuspend\002 <#chan> ; \002%botnick% unsuspend\002 <#chan> ; \002(PRIVMSG) unsuspend\002 <#chan>"

#Save

set black(say.fr.man.660) "\[MAN\] \002Save\002 enregistre les modifications chaque fois qu'une modification est apportée à l'un des canaux ou fichiers utilisateur de l'eggdrop."
set black(say.fr.man.661) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.662) "\[MAN\] \002%char%save\002 ; %botnick% save ; \002(PRIVMSG) save\002"

#AddChan

set black(say.fr.man.663) "\[MAN\] \002AddChan\002 ajoute un canal à la base de données des canaux de votre eggdrop."
set black(say.fr.man.664) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.665) "\[MAN\] \002%char%addchan\002 <#chan> \[clé\] ; \002%botnick% addchan\002 <#chan> \[clé\] ; \002(PRIVMSG) addchan\002 <#chan> \[clé\]"
set black(say.fr.man.666) "\[MAN\] ** Remarque : Si une \002\[clé\]\002 est spécifiée, l'eggdrop rejoindra ce \002<#chan>\002 en utilisant cette clé. **"

#DelChan

set black(say.fr.man.667) "\[MAN\] \002DelChan\002 supprime un canal de la base de données des canaux de votre eggdrop."
set black(say.fr.man.668) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.669) "\[MAN\] \002%char%delchan\002 <#chan> \[raison\] ; \002%botnick% delchan\002 <#chan> \[raison\] ; \002(PRIVMSG) delchan\002 <#chan> \[raison\]"

#Purge

set black(say.fr.man.670) "\[MAN\] \002Purge\002 supprime un canal de la base de données des canaux de l'eggdrop. Cela ne peut être utilisé que par un gestionnaire de canal."
set black(say.fr.man.671) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.672) "\[MAN\] \002%char%purge\002 <#chan> <raison> ; \002%botnick% purge\002 <#chan> <raison> ; \002(PRIVMSG) purge\002 <#chan> <raison>"

#AddInfo

set black(say.fr.man.676) "\[MAN\] \002AddInfo\002 ajoute un message de bienvenue personnalisé pour vous-même. Cela sera disponible dans la commande \002%char%info\002, mais l'eggdrop le dira lorsque vous rejoindrez le canal."
set black(say.fr.man.677) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.678) "\[MAN\] \002%char%addinfo\002 <texte|reset> ; \002%botnick% addinfo\002 <texte|reset> ; \002(PRIVMSG) addinfo\002 <texte|reset>"

#Invite 

set black(say.fr.man.679) "\[MAN\] \002Invite\002 invite un utilisateur à rejoindre le canal. L'eggdrop doit être un opérateur de canal (@)."
set black(say.fr.man.680) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.680) "\[MAN\] \002%char%invite\002 <#chan> <nick> ; \002%botnick% invite\002 <#chan> <nick> ; \002(PRIVMSG) invite\002 <#chan> <nick>"

#Say

set black(say.fr.man.681) "\[MAN\] \002Say\002 fait dire à l'eggdrop un <message> spécifié sur un canal."
set black(say.fr.man.682) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.683) "\[MAN\] %char%say\002 \[#chan\] <message> ; \002%botnick% say\002 \[#chan\] <message> ; \002(PRIVMSG) say\002 <#chan> <message>"

#Refresh

set black(say.fr.man.684) "\[MAN\] \002Topicrefresh\002 aide à maintenir le sujet de %chan% en réappliquant le sujet après un intervalle de temps défini."
set black(say.fr.man.685) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.686) "\[MAN\] \002%char%set\002 (+/-)refresh | \002%botnick% set\002 (+/-)refresh ; \002(PRIVMSG) set\002 <#chan> (+/-)refresh"

############################################## MAN NEW MODULES/COMMANDS #####################################################


#NoLogged

set black(say.fr.man.687) "\[MAN\] \002NoLogged\002 est une option supplémentaire pour le module \002voiceme\002 qui permet d'utiliser la commande \002/msg %botnick% voiceme <#chan>\002 par des utilisateurs sans nom d'utilisateur CService."
set black(say.fr.man.688) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.689) "\[MAN\] \002%char%set\002 (+/-)nologged | \002%botnick% set\002 (+/-)nologged ; \002(PRIVMSG) set\002 <#chan> (+/-)nologged"

#Colors

set black(say.fr.man.771) "\[MAN\] \002Colors\002 permet aux utilisateurs de définir certaines \002couleurs\002 personnelles (à partir de la liste de couleurs) pour les réponses de l'eggdrop."
set black(say.fr.man.772) "\[MAN\] Liste des couleurs : gras, souligné, rouge, bleu, vert, jaune, orange, cyan, gris, marron, violet, rose, noir"
set black(say.fr.man.773) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.774) "\[MAN\] \002%char%myset\002 colors <couleur1 couleur2 couleur3 couleur4> ; \002%botnick% myset\002 colors <couleur1 couleur2 couleur3 couleur4> ; \002(PRIVMSG) myset\002 colors <couleur1 couleur2 couleur3 couleur4>"

#ReportNick

set black(say.fr.man.775) "\[MAN\] \002ReportNick\002 est une commande qui permet aux utilisateurs réguliers du canal de signaler un surnom spécifique pour publicité ou envoi de messages spam/lourds (les niveaux d'accès \002voice\002 et \002protect\002 peuvent également l'utiliser)."
set black(say.fr.man.776) "\[MAN\] ** Remarque : Pour que cette commande fonctionne, l'eggdrop doit être oppé (@) sur le canal (utilise @onotice pour informer les opérateurs du canal). **"
set black(say.fr.man.777) "\[MAN\] SYNTAXES D'UTILISATION :"
set black(say.fr.man.778) "\[MAN\] \002%char%set\002 (+/-)reportnick ; \002%botnick% set\002 (+/-)reportnick ; \002(PRIVMSG) set\002 <#chan> (+/-)reportnick"
set black(say.fr.man.779) "\[MAN\] \002%char%report\002 <nick> <commentaire> ; \002%botnick% report\002 <nick> <commentaire> ; \002(PRIVMSG) report\002 <#chan> <nick> <commentaire>"

#InviteBan

set black(say.fr.man.780) "\[MAN\] \002InviteBan\002 bannit les utilisateurs qui tentent d'inviter l'eggdrop dans des canaux non autorisés."
set black(say.fr.man.781) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.782) "\[MAN\] \002%char%set\002 (+/-)inviteban ; \002%botnick% set\002 (+/-)inviteban ; \002(PRIVMSG) set\002 <#chan> (+/-)inviteban"
set black(say.fr.man.783) "\[MAN\] Paramètres optionnels : \002inviteban-reason\002 (raison par défaut); \002inviteban-bantime\002 (temps de ban par défaut)"

#BadHost

set black(say.fr.man.784) "\[MAN\] \002BadHost\002 bannit les utilisateurs qui utilisent des IPs/vhosts contenant des mots spécifiés comme \"mauvais\" (prend en charge les jokers)."
set black(say.fr.man.785) "\[MAN\] SYNTAXES D'UTILISATION :"
set black(say.fr.man.786) "\[MAN\] \002%char%set\002 (+/-)badhost ; \002%botnick% set\002 (+/-)badhost ; \002(PRIVMSG) set\002 <#chan> (+/-)badhost"
set black(say.fr.man.787) "\[MAN\] \002%char%badhost\002 \[#chan\] add <ip|masque> ; \002%char%badhost \[#chan\] list\002 ; \002%char%badhost \[#chan\] del <no. list>\002"
set black(say.fr.man.787_1) "\[MAN\] \002%char%badhost \[#chan\] add <+mot> (ajouter une exception) ; \002%char%badhost\002 \[#chan\] del <no. list> (supprimer un badhost de la liste)"
set black(say.fr.man.788) "\[MAN\] Paramètres optionnels : \002badhost-reason\002; badhost-bantime; \002badhost-bmethod\002"

#NickFlood

set black(say.fr.man.789) "\[MAN\] \002NickFlood\002 bannit les utilisateurs qui changent trop souvent de pseudonyme en peu de temps."
set black(say.fr.man.790) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.791) "\[MAN\] \002%char%set\002 (+/-)nickflood ; \002%botnick% set\002 (+/-)nickflood ; \002(PRIVMSG) set\002 <#chan> (+/-)nickflood"
set black(say.fr.man.792) "\[MAN\] Paramètres optionnels : \002nickflood-reason\002; nickflood-bantime; \002nickflood-warn\002; nickflood-repeat; \002nickflood-banmethod\002; nickflood-banmask"

#SecureMode

set black(say.fr.man.793) "\[MAN\] \002SecureMode\002 empêche les inondations de join/part des botnets (les utilisateurs ayant des accès sont ignorés dans ces vérifications). Ce module est spécialement conçu pour Undernet."
set black(say.fr.man.794) "\[MAN\] ** Remarque : Il ne fonctionne qu'avec les modes de canal \002+Dm\002 et repose sur un système qui génère un code unique pour chaque utilisateur qui rejoint le canal, lequel doit être confirmé une seule fois (à la première connexion) pour être autorisé à rejoindre le canal. **"
set black(say.fr.man.795) "\[MAN\] SYNTAXES D'UTILISATION :"
set black(say.fr.man.796) "\[MAN\] \002%char%set\002 (+/-)securemode ; \002%botnick% set\002 (+/-)securemode ; \002(PRIVMSG) set <#chan> (+/-)securemode\002"
set black(say.fr.man.797) "\[MAN\] \002%char%securemode add\002 <ip|masque> (prend en charge les jokers) ; \002%char%securemode del\002 <no. list> ; \002%char%securemode list\002"

#VoiceMe

set black(say.fr.man.820) "\[MAN\] \002VoiceMe\002 permet aux utilisateurs connectés avec \002*X*\002 d'obtenir \002voice (+v)\002 en utilisant simplement la commande \002/msg %botnick% voiceme <#chan>\002 (voir aussi \002%char%man onlyonmode\002 et \002%char%man nologged\002)."
set black(say.fr.man.821) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.822) "\[MAN\] \002%char%set\002 (+/-)voiceme ; \002%botnick% set\002 (+/-)voiceme ; \002(PRIVMSG) set\002 <#chan> (+/-)voiceme"
set black(say.fr.man.823) "Voir les paramètres des options : \002%char%show\002 <setting> ; \002%botnick% show\002 <setting> ; \002(PRIVMSG) show\002 <#chan> <setting>"

#OnlyOnMode

set black(say.fr.man.824) "\[MAN\] \002OnlyOnMode\002 est une option supplémentaire pour le module \002voiceme\002 qui permet d'utiliser la commande \002/msg %botnick% voiceme <#chan>\002 UNIQUEMENT lorsque le mode \002+m\002 est activé sur le canal."
set black(say.fr.man.825) "\[MAN\] ** Remarque : Il enverra également un message spécifié au canal pour que tous les utilisateurs sachent que s'ils sont enregistrés et connectés à \002*X*\002, ils peuvent utiliser la commande ci-dessus pour recevoir \002voice (+v)\002 sur ce canal. S'ils n'ont pas de \002CService Username\002, ils seront informés dans le message où ils peuvent en enregistrer un. **"
set black(say.fr.man.826) "\[MAN\] \002Rappelez-vous\002 : Cette option supplémentaire fonctionne UNIQUEMENT avec le module \002voiceme\002 et sur les canaux \002+m\002 (modérés) (voir aussi \002%char%man voiceme\002)."
set black(say.fr.man.827) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.828) "\[MAN\] \002%char%set\002 (+/-)onlyonmode ; \002%botnick% set\002 (+/-)onlyonmode ; \002(PRIVMSG) set\002 <#chan> (+/-)onlyonmode"

#BanStats

set black(say.fr.man.834) "\[MAN\] \002BanStats\002 permet à l'eggdrop de garder des statistiques de chaque kick et ban donné sur un canal spécifié."
set black(say.fr.man.835) "\[MAN\] SYNTAXES D'UTILISATION :"
set black(say.fr.man.836) "\[MAN\] \002%char%set\002 (+/-)banstats ; \002%botnick% set\002 (+/-)banstats ; \002(PRIVMSG) set\002 <#chan> (+/-)banstats"
set black(say.fr.man.837) "\[MAN\] \002%char%banstats\002 <total|reset> ; \002%botnick% banstats\002 <total|reset> ; \002(PRIVMSG) banstats\002 <#chan> <total|reset>\002"

#CP

set black(say.fr.man.842) "\[MAN\] \002cp\002 vous permet de copier les paramètres d'un canal vers un autre, y compris la liste des utilisateurs, la liste des bans et les badchans."
set black(say.fr.man.843) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.844) "\[MAN\] %char%cp\002 <option> <#chan1> <#chan2> ; \002%botnick% cp\002 <option> <#chan1> <#chan2> ; \002(PRIVMSG) cp\002 <option> <#chan1> <#chan2>"
set black(say.fr.man.845) "\[MAN\] En tant que \002<options>\002, vous avez : \002<userlist>\002 (copier la liste des utilisateurs du canal) ; \002<banlist>\002 (copier la liste des bans du canal) ; \002<settings>\002 (copier les paramètres du canal) ; \002<badchans>\002 (copier la liste des badchans)"

#VoiceOnMsg

set black(say.fr.man.846) "\[MAN\] \002VoiceOnMsg\002 donne la voix aux utilisateurs qui ont envoyé un certain nombre de lignes sur un canal (utilisateurs actifs). De plus, les utilisateurs avec des accès sont exclus."
set black(say.fr.man.847) "\[MAN\] ** Remarque : Cela retire également la voix aux utilisateurs qui sont restés inactifs pendant plus d'une certaine période sur le canal (utilisateurs inactifs). **"
set black(say.fr.man.848) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.849) "\[MAN\] \002%char%set\002 (+/-)voiceonmsg ; \002%botnick% set\002 (+/-)voiceonmsg ; \002(PRIVMSG) set <#chan> (+/-)voiceonmsg"
set black(say.fr.man.850) "\[MAN\] Paramètres optionnels : \002%char%set voiceonmsg-linenum\002 <no. de lignes> (nombre de lignes par défaut) ; \002%char%set voiceonmsg-idletime\002 <durée> (temps d'inactivité par défaut)"

#Troll

set black(say.fr.man.851) "\[MAN\] \002Troll\002 bannit un utilisateur avec une raison par défaut \002TROLL\002 (voir aussi \002%char%man showtroll\002)."
set black(say.fr.man.852) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.853) "\[MAN\] \002%char%troll\002 <nick> ; \002%botnick% troll\002 <nick> ; \002(PRIVMSG) troll\002 <#chan> <nick>"
set black(say.fr.man.854) "\[MAN\] Paramètres optionnels : \002%char%set\002 troll-reason <texte>; \002(PRIVMSG) set\002 <#chan> troll-reason <texte> (raison par défaut)"

#vr

set black(say.fr.man.856) "\[MAN\] \002vr\002 bannit un utilisateur avec une raison par défaut \002VIRUS/TROJAN\002."
set black(say.fr.man.857) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.858) "\[MAN\] \002%char%vr\002 <nick|masque> ; \002%botnick% vr\002 <nick|masque> ; \002(PRIVMSG) vr\002 <#chan> <nick|masque>"
set black(say.fr.man.859) "\[MAN\] Paramètres optionnels : \002vr-reason\002 (raison par défaut); \002vr-banmask\002 (masque de bannissement par défaut); \002vr-bantime\002 (temps de bannissement par défaut)"
set black(say.fr.man.860) "Voir les paramètres des options : \002%char%show\002 <setting> ; \002%botnick% show\002 <setting> ; \002(PRIVMSG) show\002 <#chan> <setting>"

#XOnly

set black(say.fr.man.861) "\[MAN\] \002XOnly\002 permet une administration complète du canal via le bot officiel d'Undernet \002*X*\002."
set black(say.fr.man.862) "\[MAN\] L'eggdrop effectuera toutes les commandes BlackToolS via \002X\002 même s'il n'est pas opérateur (@)."
set black(say.fr.man.863) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.864) "\[MAN\] \002%char%set\002 (+/-)xonly ; \002%botnick% set\002 (+/-)xonly ; \002(PRIVMSG) set\002 <#chan> (+/-)xonly"
set black(say.fr.man.865) "\[MAN\] Paramètres optionnels : \002xbantime\002 (temps de bannissement par défaut de X); \002xbanlevel\002 (niveau d'accès de bannissement par défaut de X)"

#AutoTopic

set black(say.fr.man.866) "\[MAN\] \002AutoTopic\002 fait en sorte que votre eggdrop réinitialise le sujet au TOPIC et à l'URL du canal à chaque fois qu'il est changé par quelqu'un."
set black(say.fr.man.867) "\[MAN\] ** Remarque : Si le canal est inactif, le sujet ne sera pas réinitialisé pendant cette période (inactivité = aucun utilisateur ne rejoint). **"
set black(say.fr.man.868) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.869) "\[MAN\] \002%char%set\002 (+/-)autotopic ; \002%botnick% set\002 (+/-)autotopic ; \002(PRIVMSG) autotopic\002 <#chan> (+/-)autotopic"
set black(say.fr.man.870) "Voir les paramètres des options : \002%char%show\002 <setting> ; \002%botnick% show\002 <setting> ; \002(PRIVMSG) show\002 <#chan> <setting>"

#MySet

set black(say.fr.man.871) "\[MAN\] \002MySet\002 est une commande par laquelle chaque utilisateur avec accès peut définir ses propres paramètres/infos."
set black(say.fr.man.872) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.873) "\[MAN\] \002%char%myset\002 <option> \[description\] <show|reset> ; \002(PRIVMSG) myset\002 <option> \[description\] <show|reset>"
set black(say.fr.man.874) "\[MAN\] En tant que \002<option>\002 vous avez :"
set black(say.fr.man.875) "\[MAN\] \002lang\002 <langue> ; \002output\002 <méthode> ; \002mychar\002 <trigger> ; \002colors\002 <couleurs> ; \002noteexpire\002 <période> ; \002autoinvite\002 <ON|OFF>"
set black(say.fr.man.877) "\[MAN\] \002auto\002 (+/-)v/o (AUTOMODE OP/VOICE) ; \002greet\002 <message> ; \002mychan\002 <#chan>"
set black(say.fr.man.878) "\[MAN\] \002auto\002 (+/-)v/o \[-global\] (AUTOMODE OP/VOICE) ; \002addhost/delhost\002 <hôte> ; \002handle\002 <nouveau handle> ; \002greet\002 <message> ; \002mychan\002 <#chan> ; \002notes\002 <ON|OFF>"

#ho

set black(say.fr.man.882) "\[MAN\] \002ho\002 attribue/retire le halfop \002(+h %)\002 aux utilisateurs spécifiés."
set black(say.fr.man.882_1) "\[MAN\] ** Remarque : Si aucun pseudo n'est spécifié, et que vous n'êtes pas halfop sur le canal, cela vous attribuera le halfop (rarement utilisé). **"
set black(say.fr.man.883) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.884) "\[MAN\] \002%char%ho\002 <nick1> <nick2> .. ; \002%botnick% ho\002 <nick1> <nick2> .. ; \002(PRIVMSG) ho\002 <#chan> <nick1> <nick2> .."
set black(say.fr.man.884_1) "\[MAN\] \002%char%ho +\002 (effectue une attribution de halfop en masse) ; \002%char%ho -\002 (effectue un retrait de halfop en masse)"

#r

set black(say.fr.man.885) "\[MAN\] \002r\002 fait manuellement rafraîchir/recharger le sujet du canal par l'eggdrop (s'il y a un sujet)."
set black(say.fr.man.886) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.887) "\[MAN\] \002%char%r\002 \[#chan\] ; \002%botnick% r\002 \[#chan\] ; \002(PRIVMSG) r\002 <#chan>"

#SeenLastMsg

set black(say.fr.man.888) "\[MAN\] \002SeenLastMsg\002 est une information complémentaire de 'seen' qui montre à l'utilisateur spécifié quel a été son dernier message sur ce canal."
set black(say.fr.man.889) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.890) "\[MAN\] \002%char%set\002 (+/-)seenlastmsg ; \002%botnick% set\002 (+/-)seenlastmsg ; \002(PRIVMSG) set\002 <#chan> (+/-)seenlastmsg"
set black(say.fr.man.891) "Voir les paramètres des options : \002%char%show\002 <setting> ; \002%botnick% show\002 <setting> ; \002(PRIVMSG) show\002 <#chan> <setting>"

#Quote

set black(say.fr.man.892) "\[MAN\] \002Quote\002 est un système de citations avec des commandes publiques pour ajouter, supprimer et afficher des citations (inclut également une fonction de recherche)."
set black(say.fr.man.893) "\[MAN\] SYNTAXES D'UTILISATION :"
set black(say.fr.man.894) "\[MAN\] \002%char%set\002 (+/-)quote ; \002%botnick% set\002 (+/-)quote ; \002(PRIVMSG) set\002 <#chan> (+/-)quote"
set black(say.fr.man.895) "\[MAN\] \002%char%q\002 \[#chan\] <texte> (ajouter une citation) ; \002%char%q\002 \[#chan\] <mot> (rechercher) ; \002%char%q\002 \[#chan\] <liste> ; \002%char%q\002 \[#chan\] del <no. de citation>"
set black(say.fr.man.896) "\[MAN\] ** Remarque : Pour ajouter plus d'une phrase, utilisez \002%char%q add \[#chan\] <texte1>~<texte2>\002.. et l'eggdrop affichera les citations comme deux phrases différentes. **"
set black(say.fr.man.896_2) "\[MAN\] \002%char%set\002 (+/-)quote ; \002%botnick% set\002 (+/-)quote ; \002(PRIVMSG) set\002 <#chan> (+/-)quote ; \002%char%set\002 quote-usage <1/0> ; \002%botnick% set\002 quote-usage <1/0> ; \002(PRIVMSG) set\002 <#canal> quote-usage <1/0> (\0010\001 - tous peuvent utiliser ce module ; \0011\001 - seuls les utilisateurs valides)"

#QuoteOfDay

set black(say.fr.man.897) "\[MAN\] \002QuoteOfDay\002 affiche des citations enregistrées de manière aléatoire à un intervalle de temps spécifié."
set black(say.fr.man.898) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.899) "\[MAN\] \002%char%set\002 (+/-)quoteofday ; \002%botnick% set\002 (+/-)quoteofday ; \002(PRIVMSG) set\002 <#chan> (+/-)quoteofday"
set black(say.fr.man.900) "\[MAN\] Paramètres optionnels : \002%char%set\002 quoteofday-showtime <période> ; \002(PRIVMSG) set\002 <#chan> quoteofday-showtime <période> (<X>\002h\002 = heures ; <X>\002m\002 = minutes)"

#Note

set black(say.fr.man.901) "\[MAN\] \002Note\002 permet de stocker des notes personnelles ou d'envoyer une note <message> à <handle>."
set black(say.fr.man.902) "\[MAN\] SYNTAXES D'UTILISATION :"
set black(say.fr.man.903) "\[MAN\] \002%char%set\002 (+/-)note ; \002%botnick% set\002 (+/-)note ; \002(PRIVMSG) set\002 <#chan> (+/-)note"
set black(say.fr.man.904) "\[MAN\] \002%char%note\002 send <handle> <message> ; \002%char%note\002 <read|list|inbox> ; \002%char%note\002 del <no. de note|toutes>"
set black(say.fr.man.905) "\[MAN\] ** Remarque : Pour ajouter plus d'une phrase, utilisez \002%char%note send <utilisateur> <message1>~<message2>..\002 et l'eggdrop affichera les notes comme deux phrases différentes. **"

#bMethod

set black(say.fr.man.906) "\[MAN\] \002bMethod\002 (BanMethod) définit la manière dont l'eggdrop punira les utilisateurs (avertissement/expulsion/bannissement). Cela signifie, première fois Avertissement, puis Expulsion, puis Bannissement (si l'infraction se répète)."
set black(say.fr.man.907) "\[MAN\] Méthodes de bannissement disponibles :"
set black(say.fr.man.908) "\[MAN\] \002#1\002 avertissement ; \002#2\002 expulsion ; \002#3\002 bannissement ; \002#4\002 avertissement -> expulsion ; \002#5\002 avertissement -> expulsion -> bannissement ; \002#6\002 expulsion -> bannissement ; \002#7\002 avertissement -> bannissement"
set black(say.fr.man.909) "\[MAN\] SYNTAXE D'UTILISATION : \002%char%set\002 <paramètre> <no. de méthode> ; \002%botnick% set\002 <paramètre> <no. de méthode> ; \002(PRIVMSG) set\002 <#chan> <paramètre> <no. de méthode>"
set black(say.fr.man.910) "\[MAN\] \002BanMethod\002 (bMethod) définit la manière dont l'eggdrop punira les utilisateurs (avertissement/expulsion/bannissement). Cela signifie, première fois Avertissement, puis Expulsion, puis Bannissement (si l'infraction se répète)."

#BanMask

set black(say.fr.man.911) "\[MAN\] \002BanMask\002 définit la manière dont l'eggdrop gérera les masques de bannissement."
set black(say.fr.man.912) "\[MAN\] Masques de bannissement disponibles :"
set black(say.fr.man.913) "\[MAN\] \002#1\002 *!*@host ; \002#2\002 *!user@host ; \002#3\002 nick!user@host ; \002#4\002 nick!*@* ; \002#5\002 *!user@*"
set black(say.fr.man.914) "\[MAN\] SYNTAXE D'UTILISATION : \002%char%set\002 <paramètre> <no. de méthode> ; \002%botnick% set\002 <paramètre> <no. de méthode> ; \002(PRIVMSG) set\002 <#chan> <paramètre> <no. de méthode>"

#Url

set black(say.fr.man.916) "\[MAN\] \002Url\002 indique l'URL du site web du canal (jusqu'à 50 caractères). L'URL peut être consultée avec \002%char%info <#chan>\002. Si aucune URL n'est spécifiée, le réglage actuel de l'URL sera vide."
set black(say.fr.man.917) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.918) "\[MAN\] \002%char%set\002 url \[url(s)\] ; \002%botnick% set\002 url \[url(s)\] ; \002(PRIVMSG) set\002 <#chan> url \[url(s)\]"
set black(say.fr.man.919) "\[MAN\] Pour afficher l'URL à côté des raisons de bannissement, utilisez : \002%char%set\002 +showurl ; \002%botnick% set\002 +showurl ; \002(PRIVMSG) set\002 <#chan> +showurl"
set black(say.fr.man.920) "\[MAN\] Voir les paramètres des options : \002%char%show\002 <paramètre> ; \002%botnick% show\002 <paramètre> ; \002(PRIVMSG) show\002 <#chan> <paramètre>"

#Timer

set black(say.fr.man.921) "\[MAN\] \002Timer\002 est un module \002PRO\002 qui vous permet de démarrer/arrêter des minuteries de processus ou de voir la liste des minuteries actives."
set black(say.fr.man.921_1) "\[MAN\] \002ATTENTION !\002 Ne touchez pas à ce module système, à moins de bien savoir ce que vous faites !"
set black(say.fr.man.922) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.923) "\[MAN\] \002%char%timer\002 start \[#chan\] <timer:setting> ; \002%char%timer\002 kill \[#chan\] <pid timer> (de la liste) ; \002%char%timer\002 list"

#Enable

set black(say.fr.man.924) "\[MAN\] \002Enable\002 permet d'activer une commande désactivée. Si l'option \002global\002 est utilisée, la commande sera activée sur tous les canaux de l'eggdrop."
set black(say.fr.man.924_1) "\[MAN\] \002ATTENTION\002 : L'option d'activation globale est disponible uniquement pour les commandes, pas pour les utilisateurs."
set black(say.fr.man.925) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.926) "\[MAN\] \002%char%enable\002 \[#chan\] <commande|tout> \[utilisateur\] \[global\] ; \002(PRIVMSG) enable\002 <#chan> <commande|tout> \[utilisateur\] \[global\]"

#Disable

set black(say.fr.man.927) "\[MAN\] \002Disable\002 permet de désactiver une commande donnée. Si l'option \002global\002 est utilisée, la commande sera désactivée sur tous les canaux de l'eggdrop."
set black(say.fr.man.927_1) "\[MAN\] \002ATTENTION\002 : L'option de désactivation globale est disponible uniquement pour les commandes, pas pour les utilisateurs."
set black(say.fr.man.928) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.929) "\[MAN\] \002%char%disable\002 \[#chan\] <commande|tout> \[utilisateur\] \[global\] ; \002(PRIVMSG) disable\002 <#chan> <commande|tout> \[utilisateur\] \[global\]"

#Stats

set black(say.fr.man.930) "\[MAN\] \002Stats\002 affiche des informations statistiques sur les bannissements et les commandes utilisées par un utilisateur spécifié."
set black(say.fr.man.930_1) "\[MAN\] Pour des informations sur \002toute activité utilisateur\002, veuillez consulter : \002%char%man stats\002"
set black(say.fr.man.931) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.932) "\[MAN\] \002%char%stats\002 \[#chan>\] <handle> \[total\] ; \002%botnick% stats\002 \[#chan>\] <handle> \[total\] ; \002(PRIVMSG) stats\002 \[#chan>\] <handle> \[total\]"
set black(say.fr.man.932_1) "\[MAN\] \002%char%stats\002 \[#chan>\] <handle> \[total|reset\] ; \002(PRIVMSG) stats\002 \[#chan>\] <handle> \[total|reset\]"

#Output

set black(say.fr.man.933) "\[MAN\] \002Output\002 spécifie comment l'eggdrop répondra à vos messages ou commandes de canal (méthodes : CHAN|NOTICE)."
set black(say.fr.man.934) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.935) "\[MAN\] \002%char%myset output\002 <méthode> ; \002(PRIVMSG) myset output\002 <méthode>"

#GreetLine

set black(say.fr.man.936) "\[MAN\] \002GreetLine\002 vous permet de définir une ligne de salutation à votre entrée. Celle-ci est affichée via \002%char%info\002 et/ou chaque fois que vous rejoignez un canal (la seconde ne fonctionne que si \002+greet\002 est activé)."
set black(say.fr.man.937) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.938) "\[MAN\] \002%char%myset greet\002 <texte|reset> ; \002%botnick% myset\002 greet <texte|reset> ; \002(PRIVMSG) myset greet\002 <texte|reset> (\002reset\002 supprime votre ligne de salutation)."

#UnSet

set black(say.fr.man.939) "\[MAN\] \002UnSet\002 annule/réinitialise les paramètres/options spécifiés (flags)."
set black(say.fr.man.940) "\[MAN\] SYNTAXES D'UTILISATION :"
set black(say.fr.man.941) "\[MAN\] \002%char%unset\002 <flag|str|option> ; \002%botnick% unset\002 <flag|str|option> ; \002(PRIVMSG) unset\002 <#chan> <flag|str|option>"
set black(say.fr.man.942) "\[MAN\] \002%char%unset\002 global <flag|str|option> (désactiver sur tous les canaux)"
set black(say.fr.man.943) "\[MAN\] Voir les paramètres des options : \002%char%show\002 <paramètre> ; \002%botnick% show\002 <paramètre> ; \002(PRIVMSG) show\002 <#chan> <paramètre>"

#NextShortCmd

set black(say.fr.man.944) "\[MAN\] \002NextShortCmd\002 est la version courte du module \002next\002 utilisé sur les canaux d'aide pour assister les utilisateurs nécessitant de l'aide."
set black(say.fr.man.945) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.946) "\[MAN\] \002%char%set\002 (+/-)nextshortcmd ; \002%botnick% set\002 (+/-)next nextshortcmd ; \002(PRIVMSG) set\002 (+/-)next nextshortcmd"
set black(say.fr.man.947) "\[MAN\] Commandes : \002%char%n\002 (donner la voix au prochain utilisateur) ; \002%char%n\002 list (montrer la liste d'attente) ; \002%char%h\002 <nick> (aidé); \002%char%b\002 <nick> (ban noidle); \002%char%skip\002 <nick> (déplacer à la fin de la liste)"

#AutoInvite

set black(say.fr.man.948) "\[MAN\] \002AutoInvite\002 lorsque banni, l'eggdrop vous invitera à ce canal, vous évitant ainsi d'utiliser \002/msg X invite #chan\002 vous-même."
set black(say.fr.man.949) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.950) "\[MAN\] \002%char%myset autoinvite\002 <#chan> <ON|OFF> ; \002%botnick% autoinvite\002 <#chan> <ON|OFF> ; \002(PRIVMSG) <#chan> autoinvite\002 <#chan> <ON|OFF>"

#Show

set black(say.fr.man.952) "\[MAN\] \002Show\002 vous permet de voir les valeurs de chaque paramètre."
set black(say.fr.man.953) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.954) "\[MAN\] \002%char%show\002 <paramètre> ; \002%botnick% show\002 <paramètre> ; \002(PRIVMSG) show\002 <#chan> <paramètre>"

#Link

set black(say.fr.man.955) "\[MAN\] \002ChanLink\002 permet la synchronisation de tous les modules de protection sur deux ou plusieurs canaux en même temps."
set black(say.fr.man.956) "\[MAN\] ** Remarque : Une fois activé, l'eggdrop ajoutera le même bannissement d'un canal donné simultanément à tous les autres canaux et vice versa (fonctionne uniquement entre les canaux liés, pas les autres). **"
set black(say.fr.man.957) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.958) "\[MAN\] \002%char%link\002 <#chan1> <#chan2> / <all> ; \002%char%link del\002 <#chan> ; \002%char%link <list|reset>\002"
set black(say.fr.man.958_1) "\[MAN\] Fonctionne également ainsi : \002%char%b\002 <nick|mask> \[durée\] link \[raison\] ; \002%char%ub\002 <nick|mask> link"

#AccessOnly

set black(say.fr.man.959) "\[MAN\] \002AccessOnly\002 est une option supplémentaire pour le module \002topwords\002 qui limite son fonctionnement uniquement aux utilisateurs ayant accès à l'eggdrop."
set black(say.fr.man.960) "\[MAN\] ** Remarque : Si cette option supplémentaire n'est pas activée, le module \002topwords\002 fonctionnera pour tous les utilisateurs du canal (à la fois pour ceux ayant accès et pour les autres). **"
set black(say.fr.man.961) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.962) "\[MAN\] \002%char%set\002 (+/-)accessonly ; \002%botnick% set\002 (+/-)accessonly ; \002(PRIVMSG) set\002 <#chan> (+/-)accessonly"
set black(say.fr.man.963) "\[MAN\] Voir les paramètres des options : \002%char%show\002 <paramètre> ; \002%botnick% show\002 <paramètre> ; \002(PRIVMSG) show\002 <#chan> <paramètre>"

#SeenReply

set black(say.fr.man.964) "\[MAN\] \002SeenReply\002 est une option supplémentaire pour le module \002seen\002 qui fera en sorte que l'eggdrop envoie un message d'information à l'utilisateur qui vient d'être recherché avec la commande \002%char%seen\002."
set black(say.fr.man.965) "\[MAN\] ** Remarque : Ce message d'information inclut des informations sur la personne qui l'a recherché, ainsi que la date, l'heure ou le canal où la commande \002%char%seen\002 a été utilisée. **"
set black(say.fr.man.966) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.967) "\[MAN\] \002%char%set\002 (+/-)seenreply ; \002%botnick% set\002 (+/-)seenreply ; \002(PRIVMSG) set\002 <#chan> (+/-)seenreply"

#SpamJoinMessage

set black(say.fr.man.968) "\[MAN\] \002SpamJoinMessage\002 est une option supplémentaire pour le module de protection \002antispam\002 qui fait en sorte que l'eggdrop envoie un message de vérification privé, contenant un texte prédéfini, à chaque utilisateur qui rejoint le canal."
set black(say.fr.man.969) "\[MAN\] SYNTAXES D'UTILISATION :"
set black(say.fr.man.970) "\[MAN\] \002%char%set\002 (+/-)spamjoinmessage ; \002%botnick% set\002 (+/-)spamjoinmessage ; \002(PRIVMSG) set\002 <#chan> (+/-)spamjoinmessage"
set black(say.fr.man.971) "\[MAN\] \002%char%set\002 antispam-message <message> ; \002%botnick% set\002 antispam-message <message> ; \002(PRIVMSG) set\002 <#chan> <message> (message par défaut à l'entrée)"
set black(say.fr.man.972) "\[MAN\] Voir les paramètres des options : \002%char%show\002 <paramètre> ; \002%botnick% show\002 <paramètre> ; \002(PRIVMSG) show\002 <#chan> <paramètre>"

#StrictSecured

set black(say.fr.man.973) "\[MAN\] \002StrictSecured\002 est une option supplémentaire pour le module de protection \002securemode\002 conçu pour prévenir les floods de join/part par des botnets."
set black(say.fr.man.974) "\[MAN\] ** Remarque : Une fois activée, cette option supplémentaire générera un code unique pour chaque utilisateur qui rejoint le canal et à chaque fois qu'il le rejoint, qui devra être confirmé, chaque fois, s'il souhaite être autorisé à rejoindre le canal. **"
set black(say.fr.man.975) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.976) "\[MAN\] \002%char%set\002 (+/-)strictsecured ; \002%botnick% set\002 (+/-)strictsecured ; \002(PRIVMSG) set\002 <#chan> (+/-)strictsecured"

#NoteExpire

set black(say.fr.man.977) "\[MAN\] \002NoteExpire\002 est une option supplémentaire pour le module \002note\002 permettant à chaque utilisateur de définir une période de temps par défaut pour l'expiration des notes (suppression automatique de la base de données)."
set black(say.fr.man.977_1) "\[MAN\] Format période : <X>\002d\002 = jours ; <X>\002h\002 = heures"
set black(say.fr.man.978) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.979) "\[MAN\] \002%char%myset\002 noteexpire <période> ; \002%botnick% myset\002 noteexpire <période> ; \002(PRIVMSG) myset\002 noteexpire <période>"

#MyChan

set black(say.fr.man.980) "\[MAN\] \002MyChan\002 permet à chaque utilisateur de définir un \002canal de base\002 (mychan) pour lequel, lorsqu'il envoie des commandes à l'eggdrop via PRIVMSG, il n'est plus nécessaire de spécifier un <#canal>, l'eggdrop appliquant automatiquement les commandes directement à \002mychan\002."
set black(say.fr.man.981) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.982) "\[MAN\] \002%char%myset\002 mychan <#chan> ; \002%botnick% myset\002 mychan <#chan> ; \002(PRIVMSG) myset\002 mychan <#chan>"

#Invisible

set black(say.fr.man.983) "\[MAN\] \002Invisible\002 active/désactive le paramètre d'invisibilité pour un canal, ce qui signifie que le canal n'apparaîtra plus dans la liste des canaux de l'eggdrop."
set black(say.fr.man.984) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.985) "\[MAN\] \002%char%set\002 (+/-)invisible ; \002%botnick% set\002 (+/-)invisible ; \002(PRIVMSG) set\002 <#chan> (+/-)invisible"
set black(say.fr.man.986) "\[MAN\] Voir les paramètres des options : \002%char%show\002 <paramètre> ; \002%botnick% show\002 <paramètre> ; \002(PRIVMSG) show\002 <#chan> <paramètre>"

#MyChar

set black(say.fr.man.987) "\[MAN\] \002MyChar\002 permet à chaque utilisateur de choisir et de définir un \002trigger\002 par défaut auquel il souhaite que l'eggdrop réagisse."
set black(say.fr.man.988) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.989) "\[MAN\] \002%char%myset\002 mychar <trigger> ; \002%botnick% myset\002 mychar <trigger> ; \002(PRIVMSG) myset\002 mychar <trigger>"

#Omsg

set black(say.fr.man.1207) "\[MAN\] \002Omsg\002 envoie un message spécifié à tous les utilisateurs avec \002OP (@/&)\002 sur un canal."
set black(say.fr.man.1208) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.1209) "\[MAN\] \002%char%omsg\002 <#chan|all> <texte> ; \002%botnick% omsg\002 <#chan|all> <texte> ; \002(PRIVMSG) omsg\002 <#chan|all> <texte>"

#ShowBadChan

set black(say.fr.man.1210) "\[MAN\] \002ShowBadChan\002 est une option supplémentaire pour le module \002BadChan\002 qui envoie un message à tous les utilisateurs avec \002OP (@/&)\002 concernant l'utilisateur banni et les canaux interdits sur lesquels il a été trouvé."
set black(say.fr.man.1211) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.1212) "\[MAN\] \002%char%set\002 (+/-)showbadchan ; \002%botnick% set\002 (+/-)showbadchan ; \002(PRIVMSG) set\002 <#chan> (+/-)showbadchan"
set black(say.fr.man.1213) "Voir les paramètres des options : \002%char%show\002 <paramètre> ; \002%botnick% show\002 <paramètre> ; \002(PRIVMSG) show\002 <#chan> <paramètre>"

#ShowTroll

set black(say.fr.man.1214) "\[MAN\] \002ShowTroll\002 est une option supplémentaire pour la commande \002Troll\002 qui, une fois activée, fait en sorte que l'eggdrop affiche une liste de messages de notification des trolls actuels de la journée lorsque des utilisateurs avec accès rejoignent le canal (la liste est réinitialisée chaque jour à minuit)."
set black(say.fr.man.1215) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.1216) "\[MAN\] \002%char%set\002 (+/-)showtroll ; \002%botnick% set\002 (+/-)showtroll ; \002(PRIVMSG) set\002 <#chan> (+/-)showtroll"
set black(say.fr.man.1217) "Voir les paramètres des options : \002%char%show\002 <paramètre> ; \002%botnick% show\002 <paramètre> ; \002(PRIVMSG) show\002 <#chan> <paramètre>"

#Forward

set black(say.fr.man.1218) "\[MAN\] \002Forward\002 redirige les messages privés reçus par l'eggdrop vers un canal spécifié (à l'exception des messages privés des utilisateurs avec accès)."
set black(say.fr.man.1219) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.1220) "\[MAN\] \002%char%set\002 (+/-)forward ; \002%botnick% set\002 (+/-)forward ; \002(PRIVMSG) set\002 <#chan> (+/-)forward"

#ExpireBans

set black(say.fr.man.1221) "\[MAN\] \002ExpireBans\002 définit la période de temps par défaut après laquelle toutes les bans d'un canal seront supprimées. Si ce paramètre est réglé sur \0020\002, l'eggdrop ne supprimera jamais les bans."
set black(say.fr.man.1222) "\[MAN\] Format période : <X>\002h\002 = heures ; <X>\002m\002 = minutes"
set black(say.fr.man.1223) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.1224) "\[MAN\] \002%char%set\002 expirebans <période> ; \002%botnick% set\002 expirebans <période> ; \002(PRIVMSG) set\002 <#chan> expirebans <période>"
set black(say.fr.man.1225) "Voir les paramètres des options : \002%char%show\002 <paramètre> ; \002%botnick% show\002 <paramètre> ; \002(PRIVMSG) show\002 <#chan> <paramètre>"

#mb

set black(say.fr.man.1226) "\[MAN\] \002mb\002 bannit automatiquement un surnom donné sur \001IDENT\001 avec une raison donnée."
set black(say.fr.man.1227) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.1228) "\[MAN\] \002%char%mb\002 <nick> \[raison\] ; \002%botnick% mb\002 <nick> \[raison\] ; \002(PRIVMSG) mb\002 <#chan> <nick> \[raison\]"
set black(say.fr.man.1229) "\[MAN\] Paramètres optionnels : \002mb-reason\002 (raison par défaut) ; \002mb-bantime\002 (durée du ban par défaut)"

################################################# MAN EGG #####################################################


#Egg

set black(say.fr.man.990) "\[MAN\] \002Egg\002 vous permet de configurer certaines options du fichier de configuration \002.conf\002 de l'eggdrop."
set black(say.fr.man.991) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.992) "\[MAN\] \002%char%set\002 <option> <paramètre> ; \002%botnick% set\002 <option> <paramètre> ; \002(PRIVMSG) set\002 <option> <paramètre>"

#Egg CmdChar

set black(say.fr.man.994) "\[MAN\] \002CmdChar\002 définit le \002trigger\002 par défaut auquel l'eggdrop réagira (vous pouvez ajouter plus d'un cmdchar)."
set black(say.fr.man.995) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.996) "\[MAN\] \002%char%set cmdchar\002 <trigger1 trigger2 ..> ; \002%botnick% set cmdchar\002 <trigger1 trigger2 ..> ; \002(PRIVMSG) set cmdchar\002 <trigger1 trigger2 ..>"

#Egg DefaultLang

set black(say.fr.man.998) "\[MAN\] \002DefaultLang\002 définit la langue par défaut du script BlackToolS."
set black(say.fr.man.998_1) "\[MAN\] Langues disponibles : \002RO\002 = roumain ; \002EN\002 = anglais ; ES - espagne ; FR - français"
set black(say.fr.man.999) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.1100) "\[MAN\] \002%char%set defaultlang\002 <langue> ; \002%botnick% set defaultlang\002 <langue> ; \002(PRIVMSG) set defaultlang\002 <langue>"

#Egg HomeChan

set black(say.fr.man.1102) "\[MAN\] \002HomeChan\002 définit le canal principal de l'eggdrop. L'eggdrop entrera d'abord dans ce canal. Ce canal sera également utilisé pour afficher tous les rapports de bans, kicks et tout type d'abus."
set black(say.fr.man.1103) "\[MAN\] ** Note : Il s'agit d'un canal \002statique\002 (l'eggdrop ne purgera/pas ce canal) et il s'agit généralement d'un canal privé/secret (ne prend en charge qu'un seul canal \002homechan\002). **"
set black(say.fr.man.1104) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.1105) "\[MAN\] \002%char%set homechan\002 <#chan> ; \002%botnick% set homechan\002 <#chan> ; \002(PRIVMSG) set homechan\002 <#chan>"

#Egg RealName

set black(say.fr.man.1107) "\[MAN\] \002RealName\002 définit ce qui doit être affiché dans le champ \002real-name\002 pour l'eggdrop sur IRC (nécessite un redémarrage)."
set black(say.fr.man.1108) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.1109) "\[MAN\] \002%char%set realname\002 <texte> ; \002%botnick% set realname\002 <texte> ; \002(PRIVMSG) set realname\002 <texte>"

#Egg Away

set black(say.fr.man.1111) "\[MAN\] \002Away\002 active le mode absent pour votre eggdrop avec <texte> comme message d'absence lorsqu'il se connecte à IRC."
set black(say.fr.man.1112) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.1113) "\[MAN\] \002%char%set away\002 <message> ; \002%botnick% set away\002 <message> ; \002(PRIVMSG) set away\002 <message>"
set black(say.fr.man.1113_1) "\[MAN\] \002%char%set away\002 ; \002%botnick% set away\002 ; \002(PRIVMSG) set away\002 (désactiver le mode absent)"

#Egg DefaultOutput

set black(say.fr.man.1115) "\[MAN\] \002DefaultOutput\002 définit la méthode par défaut pour recevoir les messages de l'eggdrop (la méthode par défaut est définie via \002CHAN\002)."
set black(say.fr.man.1115_1) "\[MAN\] Méthodes disponibles : \0020\002 = NOTICE ; \0021\002 = CHAN ; \0022\002 = PRIVMSG"
set black(say.fr.man.1116) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.1117) "\[MAN\] \002%char%set defaultoutput\002 <méthode> ; \002%botnick% set defaultoutput\002 <méthode> ; \002(PRIVMSG) set defaultoutput\002 <méthode>"


#Egg FloodMenuProt

set black(say.fr.man.1119) "\[MAN\] \002FloodMenuProt\002 protège l'eggdrop contre les \002inondations de commandes\002. Détermine combien de commandes/seconde un utilisateur peut envoyer à l'eggdrop avant qu'il ne soit considéré comme un flood et ignore toutes les commandes de cet utilisateur pendant une courte période."
set black(say.fr.man.1120) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.1121) "\[MAN\] \002%char%set floodmenuprot\002 <nb commandes:secondes> ; \002%botnick% set floodmenuprot\002 <nb commandes:secondes> ; \002(PRIVMSG) set floodmenuprot\002 <nb commandes:secondes>"

#Egg UserFloodMsgProt

set black(say.fr.man.1123) "\[MAN\] \002UserFloodMsgProt\002 protège l'eggdrop contre les \002inondations de messages PRIVMSG\002. Détermine combien de messages PRIVMSG/seconde l'eggdrop acceptera avant qu'il ne soit considéré comme un flood et ignore tous les messages de cet utilisateur pendant une courte période."
set black(say.fr.man.1124) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.1125) "\[MAN\] \002%char%set floodmsgprot\002 <nb messages:secondes> ; \002%botnick% set floodmsgprot\002 <nb messages:secondes> ; \002(PRIVMSG) set floodmsgprot\002 <nb messages:secondes>"

#Egg FloodNotcProt

set black(say.fr.man.1127) "\[MAN\] \002FloodNotcProt\002 protège l'eggdrop contre les \002inondations de notices\002. Détermine combien de notices/seconde l'eggdrop acceptera avant qu'il ne soit considéré comme un flood et ignore toutes les notices de cet utilisateur pendant une courte période."
set black(say.fr.man.1128) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.1129) "\[MAN\] \002%char%set floodnotcprot\002 <nb notices:secondes> ; \002%botnick% set floodnotcprot\002 <nb notices:secondes> ; \002(PRIVMSG) set floodnotcprot\002 <nb notices:secondes>"

#Egg ChanRemove-Setting

set black(say.fr.man.1131) "\[MAN\] \002ChanRemove-Setting\002 une fois activé, supprime tous les paramètres liés à un canal lorsque ce canal est supprimé de la liste des canaux du bot. Cela inclut des données telles que la liste des utilisateurs avec accès, la liste des bannis, la base de données des utilisateurs vus, etc."
set black(say.fr.man.1131_1) "\[MAN\] \0021\002 = oui ; \0020\002 = non"
set black(say.fr.man.1132) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.1133) "\[MAN\] \002%char%set chanremove-setting\002 <1|0> ; \002%botnick% set chanremove-setting\002 <1|0> ; \002(PRIVMSG) set chanremove-setting\002 <1|0>"

#Egg User-Expire

set black(say.fr.man.1135) "\[MAN\] \002User-Expire\002 vous permet de définir la période après laquelle l'eggdrop supprimera les utilisateurs de la base de données des utilisateurs vus qui sont plus anciens qu'une période spécifiée."
set black(say.fr.man.1135_1) "\[MAN\] Format période : <X>\002d\002 = jours"
set black(say.fr.man.1136) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.1137) "\[MAN\] \002%char%set user-expire\002 <période> ; \002%botnick% set user-expire\002 <période> ; \002(PRIVMSG) set user-expire\002 <période>"

#Egg PageLimit

set black(say.fr.man.1139) "\[MAN\] \002PageLimit\002 définit le \002nombre d'entrées par page\002 par défaut pour tous les modules qui utilisent la fonction \002- list -\002."
set black(say.fr.man.1140) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.1141) "\[MAN\] \002%char%set pagelimit\002 <nb entrées> ; \002%botnick% set pagelimit\002 <nb entrées> ; \002(PRIVMSG) set pagelimit\002 <nb entrées>"

#Egg Login

set black(say.fr.man.1143) "\[MAN\] \002Login\002 vous permet de connecter manuellement votre eggdrop à ChanServ (X, Q, etc.)."
set black(say.fr.man.1144) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.1145) "\[MAN\] \002%char%login\002 ; %botnick% login ; \002(PRIVMSG) login\002"

#Egg Chanserv

set black(say.fr.man.1147) "\[MAN\] \002Chanserv\002 définit le \002pseudo par défaut\002 que ChanServ (X, Q, etc.) utilise, en fonction du réseau IRC auquel l'eggdrop se connectera."
set black(say.fr.man.1148) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.1149) "\[MAN\] \002%char%set chanserv\002 <pseudochanserv> ; \002%botnick% set chanserv\002 <pseudochanserv> ; \002(PRIVMSG) set chanserv\002 <pseudochanserv>"

#Egg HostChanserv

set black(say.fr.man.1151) "\[MAN\] \002HostChanserv\002 définit le \002masque d'hôte par défaut\002 que ChanServ (X, Q, etc.) utilise en fonction du réseau IRC auquel l'eggdrop se connectera."
set black(say.fr.man.1152) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.1153) "\[MAN\] \002%char%set hostchanserv\002 <masquehôtechanserv> ; \002%botnick% set hostchanserv\002 <masquehôtechanserv> ; \002(PRIVMSG) set hostchanserv\002 <masquehôtechanserv>"

#Egg UserLogin

set black(say.fr.man.1155) "\[MAN\] \002UserLogin\002 définit le \002nom d'utilisateur\002 que l'eggdrop utilisera pour se connecter à ChanServ (X, Q, etc.)."
set black(say.fr.man.1156) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.1157) "\[MAN\] \002%char%set userlogin\002 <pseudochanserv> ; \002%botnick% set userlogin\002 <pseudochanserv> ; \002(PRIVMSG) set userlogin\002 <pseudochanserv>"

#Egg UserPass

set black(say.fr.man.1159) "\[MAN\] \002UserPass\002 définit le \002mot de passe\002 que l'eggdrop utilisera pour se connecter à ChanServ (X, Q, etc.)."
set black(say.fr.man.1160) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.1161) "\[MAN\] \002%char%set userpass\002 <motdepassechanserv> ; \002%botnick% set userpass\002 <motdepassechanserv> ; \002(PRIVMSG) set userpass\002 <motdepassechanserv>"

#Egg Add-Mask

set black(say.fr.man.1163) "\[MAN\] \002Add-Mask\002 définit le masque d'hôte par défaut que l'eggdrop utilisera lorsqu'un nouvel utilisateur est ajouté avec accès."
set black(say.fr.man.1163_1) "\[MAN\] Masques d'hôte disponibles :"
set black(say.fr.man.1163_2) "\[MAN\] \002#1\002 *!*@host ; \002#2\002 *!user@host ; \002#3\002 nick!user@host ; \002#4\002 nick!*@* ; \002#5\002 *!user@*"
set black(say.fr.man.1164) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.1165) "\[MAN\] \002%char%set add-mask\002 <no. masque> ; \002%botnick% set add-mask\002 <no. masque> ; \002(PRIVMSG) set add-mask\002 <no. masque>"

#Egg Add-DefaultMask

set black(say.fr.man.1167) "\[MAN\] \002Add-DefaultMask\002 définit le masque d'hôte par défaut, comme \001*!*@%user%.users.undernet.org\001, que l'eggdrop utilisera lorsqu'un nouvel utilisateur est ajouté avec accès."
set black(say.fr.man.1168) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.1169) "\[MAN\] \002%char%set add-defaultmask\002 <masquehôte> ; \002%botnick% set add-defaultmask\002 <masquehôte> ; \002(PRIVMSG) set add-defaultmask\002 <masquehôte>"

#AntiSpam-ScanTime

set black(say.fr.man.1175) "\[MAN\] \002AntiSpam-ScanTime\002 est une option supplémentaire pour le module \002antispam\002 qui permet de définir l'intervalle de temps maximal entre chaque \002/cycle\002 que l'eggdrop exécute pour détecter les spammeurs."
set black(say.fr.man.1175_1) "\[MAN\] Format de la période : <X>\002m\002 = minutes ; <X>\002h\002 = heures"
set black(say.fr.man.1176) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.1177) "\[MAN\] \002%char%set\002 antispam-scantime <période> ; \002%botnick% set\002 antispam-scantime <période> ; \002(PRIVMSG) set\002 antispam-scantime <période>"

#Idle-ScanTime

set black(say.fr.man.1179) "\[MAN\] \002Idle-ScanTime\002 est une option supplémentaire pour le module \002idle\002 qui permet de définir l'intervalle de temps maximal entre les scans des utilisateurs avec \002op (@)\002 ou \002voice (+v)\002 qui sont inactifs."
set black(say.fr.man.1179_1) "\[MAN\] Format de la période : <X>\002m\002 = minutes ; <X>\002h\002 = heures"
set black(say.fr.man.1180) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.1181) "\[MAN\] \002%char%set\002 idle-scantime <période> ; \002%botnick% set\002 idle-scantime <période> ; \002(PRIVMSG) set\002 idle-scantime <période>"

#CloneScan-ScanTime

set black(say.fr.man.1183) "\[MAN\] \002CloneScan-ScanTime\002 est une option supplémentaire pour le module \002clonescan\002 qui permet de définir l'intervalle de temps maximal entre les scans des utilisateurs utilisant des clones."
set black(say.fr.man.1183_1) "\[MAN\] Format de la période : <X>\002m\002 = minutes ; <X>\002h\002 = heures"
set black(say.fr.man.1184) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.1185) "\[MAN\] \002%char%set\002 clonescan-scantime <période> ; \002%botnick% set\002 clonescan-scantime <période> ; \002(PRIVMSG) set\002 clonescan-scantime <période>"

#Broadcast-ShowTime

set black(say.fr.man.1187) "\[MAN\] \002Broadcast-ShowTime\002 est une option supplémentaire pour le module \002broadcast\002 qui permet de définir l'intervalle de temps maximal entre les messages à diffuser sur le canal."
set black(say.fr.man.1187_1) "\[MAN\] Format de la période : <X>\002m\002 = minutes ; <X>\002h\002 = heures"
set black(say.fr.man.1188) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.1189) "\[MAN\] \002%char%set\002 broadcast-showtime <période> ; \002%botnick% set\002 broadcast-showtime <période> ; \002(PRIVMSG) set\002 broadcast-showtime <période>"

#BadChan-ScanTime

set black(say.fr.man.1191) "\[MAN\] \002BadChan-ScanTime\002 est une option supplémentaire pour le module \002badchan\002 qui permet de définir l'intervalle de temps maximal entre les scans des utilisateurs se trouvant sur des canaux non autorisés."
set black(say.fr.man.1191_1) "\[MAN\] Format de la période : <X>\002m\002 = minutes ; <X>\002h\002 = heures"
set black(say.fr.man.1192) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.1193) "\[MAN\] \002%char%set\002 badchan-scantime <période> ; \002%botnick% set\002 badchan-scantime <période> ; \002(PRIVMSG) set\002 badchan-scantime <période>"

#Anunt-ShowTime

set black(say.fr.man.1195) "\[MAN\] \002Anunt-ShowTime\002 est une option supplémentaire pour le module \002anunt/advert\002 qui permet de définir l'intervalle de temps maximal entre les annonces/publicités à afficher sur le canal."
set black(say.fr.man.1195_1) "\[MAN\] Format de la période : <X>\002m\002 = minutes ; <X>\002h\002 = heures"
set black(say.fr.man.1196) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.1197) "\[MAN\] \002%char%set\002 anunt-showtime <période> ; \002%botnick% set\002 anunt-showtime <période> ; \002(PRIVMSG) set\002 anunt-showtime <période>"

#QuoteOfDay-ShowTime

set black(say.fr.man.1199) "\[MAN\] \002QuoteOfDay-ShowTime\002 est une option supplémentaire pour le module \002quote\002 qui permet de définir l'intervalle de temps maximal entre les citations à afficher sur le canal."
set black(say.fr.man.1199_1) "\[MAN\] Format de la période : <X>\002m\002 = minutes ; <X>\002h\002 = heures"
set black(say.fr.man.1200) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.1201) "\[MAN\] \002%char%set\002 quoteofday-showtime <période> ; \002%botnick% set\002 quoteofday-showtime <période> ; \002(PRIVMSG) set\002 quoteofday-showtime <période>"

#QuitPartColor

set black(say.fr.man.1203) "\[MAN\] \002QuitPartColor\002 est une option supplémentaire pour le module \002AntiBadQuitPart\002 qui permet à l'eggdrop d'agir contre les utilisateurs qui utilisent des mots en *couleurs* lorsqu'ils quittent un canal."
set black(say.fr.man.1204) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.1205) "\[MAN\] \002%char%set\002 (+/-)quitpartcolor ; \002%botnick% set\002 (+/-)quitpartcolor ; \002(PRIVMSG) set\002 <#chan> (+/-)quitpartcolor"
set black(say.fr.man.1206) "Voir les options de configuration : \002%char%show\002 <setting> ; \002%botnick% show\002 <setting> ; \002(PRIVMSG) show\002 <#chan> <setting>"

#VoiceMe-ShowTime

set black(say.fr.man.1230) "\[MAN\] \002VoiceMe-ShowTime\002 est une option supplémentaire pour le module \002Voiceme\002 qui permet de définir l'intervalle de temps maximal entre les messages spécifiques envoyés au canal."
set black(say.fr.man.1231) "\[MAN\] Format de la période : <X>\002m\002 = minutes ; <X>\002h\002 = heures"
set black(say.fr.man.1232) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.1233) "\[MAN\] \002%char%set\002 voiceme-showtime <période> ; \002%botnick% set\002 voiceme-showtime <période> ; \002(PRIVMSG) set\002 voiceme-showtime <période>"

#BadChan-BanWait

set black(say.fr.man.1234) "\[MAN\] \002BadChan-BanWait\002 est une option supplémentaire pour le module \002BadChan\002 qui permet de définir l'intervalle de temps maximal pour que les utilisateurs quittent les canaux interdits avant d'être bannis."
set black(say.fr.man.1235) "\[MAN\] Format de la période : <X>\002s\002 = secondes"
set black(say.fr.man.1236) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.1237) "\[MAN\] \002%char%set\002 badchan-banwait <période> ; \002%botnick% set\002 badchan-banwait <période> ; \002(PRIVMSG) set\002 \[#chan\] badchan-banwait <période>"

#BadNick-BanWait

set black(say.fr.man.1238) "\[MAN\] \002BadNick-BanWait\002 est une option supplémentaire pour le module \002BadNick\002 qui permet de définir l'intervalle de temps maximal pour que les utilisateurs changent de mauvais pseudonyme avant d'être bannis."
set black(say.fr.man.1239) "\[MAN\] Format de la période : <X>\002s\002 = secondes"
set black(say.fr.man.1240) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.1241) "\[MAN\] \002%char%set\002 badnick-banwait <période> ; \002%botnick% set\002 badnick-banwait <période> ; \002(PRIVMSG) set\002 \[#chan\] badnick-banwait <période>"

#BadNick-BMethod

set black(say.fr.man.1242) "\[MAN\] \002BadNick-BMethod\002 est une option supplémentaire pour le module \002BadNick\002 qui permet de choisir la méthode de bannissement."
set black(say.fr.man.1243) "\[MAN\] Format de la méthode :\002 #1\002 - message d'avertissement -> bannissement ;\002 #2\002 - bannissement"
set black(say.fr.man.1244) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.1245) "\[MAN\] \002%char%set\002 badnick-bmethod <méthode> ; \002%botnick% set\002 badnick-bmethod <méthode> ; \002(PRIVMSG) set\002 \[#chan\] badnick-bmethod <méthode>"

#BadChan-BMethod

set black(say.fr.man.1246) "\[MAN\] \002BadChan-BMethod\002 est une option supplémentaire pour le module \002BadChan\002 qui permet de choisir la méthode de bannissement."
set black(say.fr.man.1247) "\[MAN\] Format de la méthode :\002 #1\002 - message d'avertissement -> bannissement ;\002 #2\002 - bannissement"
set black(say.fr.man.1248) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.1249) "\[MAN\] \002%char%set\002 badchan-bmethod <méthode> ; \002%botnick% set\002 badchan-bmethod <méthode> ; \002(PRIVMSG) set\002 \[#chan\] badchan-bmethod <méthode>"

#RepetitiveChars

set black(say.fr.man.1250) "\[MAN\] \002RepetitiveChars\002 bannit les utilisateurs qui utilisent des caractères consécutifs répétés."
set black(say.fr.man.1251) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.1252) "\[MAN\] \002%char%set\002 (+/-)repetitivechars ; \002%botnick% set\002 (+/-)repetitivechars ; \002(PRIVMSG) set\002 \[#chan\] (+/-)repetitivechars"
set black(say.fr.man.1253) "\[MAN\] Paramètres optionnels : \002repetitivechars-reason\002 ; repetitivechars-bantime ; \002repetitivechars-warn\002 ; repetitivechars-banmethod ; \002repetitivechars-banmask\002 ; repetitivechars-char"
set black(say.fr.man.1254) "Voir les options de configuration : \002%char%show\002 <setting> ; \002%botnick% show\002 <setting> ; \002(PRIVMSG) show\002 <#chan> <setting>"

#QuitPartMsgFlood

set black(say.fr.man.1255) "\[MAN\] \002QuitPartMsgFlood\002 est une option supplémentaire pour le module \002AntiBadQuitPart\002 qui permet à l'eggdrop d'agir contre les utilisateurs qui utilisent des *messages de flood* lorsqu'ils quittent ou partent d'un canal."
set black(say.fr.man.1256) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.1257) "\[MAN\] \002%char%set (+/-)quitpartmsgflood\002 ; %botnick% set (+/-)quitpartmsgflood ; \002(PRIVMSG) set <#chan> (+/-)quitpartmsgflood\002"
set black(say.fr.man.1258) "\[MAN\] Paramètres optionnels : \002quitpartmsgflood-char\002"
set black(say.fr.man.1259) "Voir les options de configuration : \002%char%show\002 <setting> ; \002%botnick% show\002 <setting> ; \002(PRIVMSG) show\002 <#chan> <setting>"

#MassFloodSilenceTime

set black(say.fr.man.1260) "\[MAN\] \002MassFloodSilenceTime\002 protège l'eggdrop contre les floods massifs par ctcp/ctcr, notice ou msg en utilisant la commande silence du serveur."
set black(say.fr.man.1261) "\[MAN\] ** Note : Il s'agit d'une protection personnelle du bot qui se déclenche automatiquement en cas de flood massif par botnet ou flood privé. **"
set black(say.fr.man.1262) "\[MAN\] Format de la période : <X>\002s\002 = secondes"
set black(say.fr.man.1263) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.1264) "\[MAN\] \002%char%set\002 massfloodsilencetime <période> ; \002%botnick% set\002 massfloodsilencetime <période> ; \002(PRIVMSG) set\002 massfloodsilencetime <période>"

#BanMethod-Expire

set black(say.fr.man.1265) "\[MAN\] \002BanMethod-Expire\002 permet de définir l'intervalle de temps après lequel chaque comptage des protections expirera."
set black(say.fr.man.1266) "\[MAN\] Format de la période : <X>\002m\002 = minutes"
set black(say.fr.man.1267) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.1268) "\[MAN\] \002%char%set\002 banmethod-expire <période> ; \002%botnick% set\002 banmethod-expire <période> ; \002(PRIVMSG) set\002 <#chan> banmethod-expire <période>"

#Count

set black(say.fr.man.1269) "\[MAN\] \002Count\002 permet de définir un message de bienvenue lors de la connexion en utilisant certaines variables. Pour fonctionner, nécessite \001+greet\001, pour plus d'informations, voir \002%char%man greet\002."
set black(say.fr.man.1270) "\[MAN\] Variables disponibles : \002%countchan%\002 = nom du canal ; \002%nick%\002 = utilisateur qui rejoint ; \002%count%\002 = nombre de connexions ; \002%time%\002 = date depuis"
set black(say.fr.man.1271) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.1272) "\[MAN\] \002%char%greet\002 set <texte> ; \002%botnick% greet\002 set <texte> ; \002(PRIVMSG) greet\002 <#chan> set <texte>"
set black(say.fr.man.1273) "\[MAN\] \001Exemple\001 : Bienvenue %nick%, vous êtes l'utilisateur numéro %count% à avoir rejoint %countchan% depuis %time%."

#BadChan-FloodControl

set black(say.fr.man.1274) "\[MAN\] \002BadChan-FloodControl\002 est une option supplémentaire pour le module \002BadChan\002 dont le rôle est de protéger l'eggdrop contre les actions de \002massjoin\002 en arrêtant la vérification des utilisateurs lors de leur connexion pendant une période de\002 30\002 secondes. Après l'expiration de cette période, le module \002BadChan\002 reprend son fonctionnement normal."
set black(say.fr.man.1275) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.1276) "\[MAN\] \002%char%set\002 (+/-)badchan-floodcontrol <nombre de connexions>:<nombre de secondes> ; \002%botnick% set\002 (+/-)badchan-floodcontrol <nombre de connexions>:<nombre de secondes> ; \002(PRIVMSG) set\002 <#chan> (+/-)badchan-floodcontrol <nombre de connexions>:<nombre de secondes>"
set black(say.fr.man.1277) "Voir les options de configuration : \002%char%show\002 <setting> ; \002%botnick% show\002 <setting> ; \002(PRIVMSG) show\002 <#chan> <setting>"

#Exempt

set black(say.fr.man.1278) "\[MAN\] \002Exempt\002 Ajoute une exemption de ban à la liste des exemptions stockées sur le bot, avec un commentaire optionnel et une période d'exemption."
set black(say.fr.man.1279) "\[MAN\] ** NOTE : Si <global> est spécifié, l'exemption sera pour tous les canaux où se trouve le bot. **"
set black(say.fr.man.1280) "\[MAN\] Format de la période : <X>\002h\002 = heures ; <X>\002m\002 = minutes ; <X>\002d\002 = jours"
set black(say.fr.man.1281) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.1282) "\[MAN\] \002%char%exempt\002 \[#chan\] add <ip/host> <période> <raison> (ajouter une exemption) ; \002%char%exempt\002 \[#chan\] list; \002%char%exempt\002 \[#chan\] del <ip/host> (retirer une exemption de la liste)"
set black(say.fr.man.1283) "\[MAN\] \002%char%exempt\002 \[#chan\] add <ip/host> <période> \[global\] <raison> (ajouter une exemption) ; \002%char%exempt\002 \[#chan\] list \[global\] ; \002%char%exempt\002 \[#chan\] del <ip/host> \[global\] (retirer une exemption de la liste)"

#For

set black(say.fr.man.1284) "\[MAN\] \002For\002 permet à plusieurs eggdrops d'exécuter simultanément la même commande/commandes."
set black(say.fr.man.1285) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.1286) "\[MAN\] \002for\002 <botnick1>,<botnick2>.. <commande> <option>"


##################################### TIPS #############################################

set black(say.fr.man.showtip) { 
 "\[CONSEIL\] Saviez-vous que vous pouvez utiliser comme période pour les bans des formes telles que :\002 10m\002 (minutes) ;\002 10h\002 (heures) ;\002 10d\002 (jours) ?"
 "\[CONSEIL\] Si vous avez un problème avec le script \002BlackTools\002 ou si vous trouvez un \002BUG\002, postez sur le forum \002tclscripts.net\002 une explication du problème/bug."
 "\[CONSEIL\] Saviez-vous que vous pouvez maintenant utiliser \002CIDR\002 dans la méthode de ban ? ex :\002 %char%b <ip/cidr>\002 | %char%b *!*@192.168.0.1/17"
 "\[CONSEIL\] \002(\$)\002 Vous voulez un \002script TCL personnalisé\002 pour votre eggdrop ? Facile, dites-nous ce dont vous avez besoin ! Nous pouvons créer \002presque n'importe quoi en TCL\002 basé sur vos idées et vos dons. Envoyez un e-mail à \002blackshadow@tclscripts.net\002 ou \002info@tclscripts.net\002 avec vos informations de demande et nous vous contacterons \002dès que possible\002."
 "\[CONSEIL\] Saviez-vous que vous pouvez ajouter des annonces multi-lignes ? ex :\002 %char%anunt add <advert1>~<advert2>~<advert3>\002 | %char%anunt add Bienvenue à %chan%~Amusez-vous~La Nouvelle Génération TCL"
 "\[CONSEIL\] \002ATTENTION !!\002 Les utilisateurs qui utilisent à la fois les scripts \002a&a\002 et \002BlackTools\002 ensemble doivent savoir que cela fonctionne en théorie. Donc \002NE DEMANDEZ PAS\002 d'aide pour ce script si vous l'utilisez avec \002le script a&a\002.."
 "\[CONSEIL\] Saviez-vous que vous pouvez copier les paramètres, la liste des bans ou la liste des accès utilisateurs d'un canal à un autre ? ex :\002 %char%cp userlist <#chan1> <#chan2>\002 | Pour plus d'infos : \002%char%man cp\002"
 "\[CONSEIL\] Consultez notre forum à\002 http://tclscripts.net\002 pour les dernières mises à jour et informations."
 "\[CONSEIL\] Saviez-vous que vous pouvez maintenant télécharger des fichiers correspondant au modèle\002 *.tcl\002 à partir d'une URL dans le répertoire \002scripts\002 de votre eggdrop ? ex :\002 %char%tcl wget <link/name.tcl>\002 | Pour plus d'infos : \002%char%man tcl\002"
 "\[CONSEIL\] Utilisez les scripts tcl dont vous avez vraiment besoin sur votre eggdrop. Tous les scripts sympas et amusants que vous trouvez peuvent être bogués et peu sûrs. Recherchez la fonctionnalité plutôt que le fun dans votre eggdrop."
 "\[CONSEIL\] Saviez-vous que vous pouvez utiliser la commande \002for\002 sur plusieurs eggdrops pour \002exécuter simultanément\002 la même commande ? ex : for Bot1,Bot2,Bot3 say bla bla | Pour plus d'infos : \002%char%man for\002"
 "\[CONSEIL\] \002WwW.TclScripts.Net\002 propose en téléchargement une large gamme de TCL pour votre eggdrop (Blackip.tcl, YoutbeTitle.tcl, BlackCountry.tcl, CSC.tcl et bien d'autres), pour que vous puissiez faire tourner un bot professionnel de dernière génération."
 "\[CONSEIL\] Saviez-vous que vous pouvez maintenant ajouter des \002exceptions pour des mots particuliers\002 à toutes les protections \002pour éviter de kicker et bannir des utilisateurs\002 quand ce n'est pas vraiment nécessaire ? Pour plus d'infos : \002%char%man exempt\002"
 "\[CONSEIL\] Saviez-vous que vous pouvez ajouter \002un commentaire\002 à presque toutes les commandes de ban\002, et les autres utilisateurs ayant accès à l'eggdrop peuvent le voir\002, lorsqu'ils demandent des informations sur cette entrée de ban ?? ex : \002%char%b nick juste un test -c ne pas enlever\002 | \[BT\] Raison : juste un test | \[BT\] \002\[COMMENTAIRE DU BAN\]\002 ne pas enlever"
}


##################################### MAN EGGDROP INTERN SETTINGS #############################################


#Ban-Time

set black(say.fr.man.2101) "\[MAN\] \002Ban-Time/BanTime\002 est un paramètre interne d'eggdrop non lié au \002script BlackToolS\002 et définit la durée des bans temporaires (en minutes). Si ce paramètre est défini à 0, le bot ne supprimera jamais les bans."
set black(say.fr.man.2102) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.2103) "\[MAN\] \002%char%set\002 ban-time <période> ; \002%botnick% set\002 ban-time <période> ; \002(PRIVMSG) set\002 <#chan> ban-time <période>"

#ChanMode

set black(say.fr.man.2104) "\[MAN\] \002ChanMode\002 est un paramètre interne d'eggdrop non lié au \002script BlackToolS\002 et permet au bot d'appliquer les modes de canal. Il ajoutera toujours les modes +<modes> et supprimera les modes -<modes>."
set black(say.fr.man.2105) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.2106) "\[MAN\] \002%char%set\002 chanmode (+/-)<modes> ; \002%botnick% set\002 chanmode (+/-)<modes> ; \002(PRIVMSG) set\002 <#chan> chanmode (+/-)<modes>"

#DontKickOps

set black(say.fr.man.2107) "\[MAN\] \002DontKickOps\002 est un paramètre interne d'eggdrop non lié au \002script BlackToolS\002 et empêche le bot de kicker les utilisateurs ayant le flag +o."
set black(say.fr.man.2108) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.2109) "\[MAN\] \002%char%set\002 (+/-)dontkickops ; \002%botnick% set\002 (+/-)dontkickops ; \002(PRIVMSG) set\002 <#chan> (+/-)dontkickops"

#EnforceBans 

set black(say.fr.man.2110) "\[MAN\] \002EnforceBans\002 est un paramètre interne d'eggdrop non lié au \002script BlackToolS\002 et lorsqu'un ban est appliqué, ce paramètre fera en sorte que le bot kick les personnes qui sont sur le canal et qui correspondent au ban."
set black(say.fr.man.2111) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.2112) "\[MAN\] \002%char%set\002 (+/-)enforcebans ; \002%botnick% set\002 (+/-)enforcebans ; \002(PRIVMSG) set\002 <#chan> (+/-)enforcebans"

#DynamicBans 

set black(say.fr.man.2113) "\[MAN\] \002DynamicBans\002 est un paramètre interne d'eggdrop non lié au \002script BlackToolS\002 et n'active les bans sur le canal que lorsqu'ils sont nécessaires. Cela empêche la liste des bans du canal de devenir excessivement longue. Le bot se souvient de chaque ban, mais n'active un ban sur le canal que lorsqu'il voit quelqu'un rejoindre qui correspond à ce ban."
set black(say.fr.man.2114) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.2115) "\[MAN\] \002%char%set\002 (+/-)dynamicbans ; \002%botnick% set\002 (+/-)dynamicbans ; \002(PRIVMSG) set\002 <#chan> (+/-)dynamicbans"

#UserBans 

set black(say.fr.man.2116) "\[MAN\] \002UserBans\002 est un paramètre interne d'eggdrop non lié au \002script BlackToolS\002 et permet aux utilisateurs de définir des bans directement sur IRC. Si cette option est désactivée, le bot exigera que tous les bans soient définis via la console du bot."
set black(say.fr.man.2117) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.2118) "\[MAN\] \002%char%set\002 (+/-)userbans ; \002%botnick% set\002 (+/-)userbans ; \002(PRIVMSG) set\002 <#chan> (+/-)userbans"

#AutoOp 

set black(say.fr.man.2119) "\[MAN\] \002AutoOp\002 est un paramètre interne d'eggdrop non lié au \002script BlackToolS\002 et fera en sorte que le bot donne les privilèges d'operator (op) aux utilisateurs ayant le flag +o dès qu'ils rejoignent le canal (c'est non sécurisé et non recommandé)."
set black(say.fr.man.2120) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.2121) "\[MAN\] \002%char%set\002 (+/-)autoop ; \002%botnick% set\002 (+/-)autoop ; \002(PRIVMSG) set\002 <#chan> (+/-)autoop"

#AutoHalfOp 

set black(say.fr.man.2122) "\[MAN\] \002AutoHalfOp\002 est un paramètre interne d'eggdrop non lié au \002script BlackToolS\002 et fera en sorte que le bot donne les privilèges de demi-opérateur (halfop) aux utilisateurs ayant le flag +l dès qu'ils rejoignent le canal (c'est non sécurisé et non recommandé)."
set black(say.fr.man.2123) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.2124) "\[MAN\] \002%char%set\002 (+/-)autohalfop ; \002%botnick% set\002 (+/-)autohalfop ; \002(PRIVMSG) set\002 <#chan> (+/-)autohalfop"

#AutoVoice 

set black(say.fr.man.2125) "\[MAN\] \002AutoVoice\002 est un paramètre interne d'eggdrop non lié au \002script BlackToolS\002 et fera en sorte que le bot donne les privilèges de voix (voice) aux utilisateurs ayant le flag +v dès qu'ils rejoignent le canal."
set black(say.fr.man.2126) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.2127) "\[MAN\] \002%char%set\002 (+/-)autovoice ; \002%botnick% set\002 (+/-)autovoice ; \002(PRIVMSG) set\002 <#chan> (+/-)autovoice"

#Bitch 

set black(say.fr.man.2128) "\[MAN\] \002Bitch\002 est un paramètre interne d'eggdrop non lié au \002script BlackToolS\002 et fera en sorte que le bot permette uniquement aux utilisateurs ayant le flag +o d'être oppés sur le canal (c'est non sécurisé et non recommandé)."
set black(say.fr.man.2129) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.2130) "\[MAN\] \002%char%set\002 (+/-)bitch ; \002%botnick% set\002 (+/-)bitch ; \002(PRIVMSG) set\002 <#chan> (+/-)bitch"

#Greet 

set black(say.fr.man.2131) "\[MAN\] \002Greet\002 est un paramètre interne d'eggdrop non lié au \002script BlackToolS\002 et fera en sorte que le bot affiche un message de bienvenue personnalisé (greet line) lorsqu'un utilisateur rejoint le canal (voir aussi \002%char%man myset\002)."
set black(say.fr.man.2132) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.2133) "\[MAN\] \002%char%set\002 (+/-)greet ; \002%botnick% set\002 (+/-)greet ; \002(PRIVMSG) set\002 <#chan> (+/-)greet"

#ProtectOps 

set black(say.fr.man.2134) "\[MAN\] \002ProtectOps\002 est un paramètre interne d'eggdrop non lié au \002script BlackToolS\002 et fera en sorte que le bot redonne les privilèges d'opérateur (op) à un utilisateur ayant le flag +o s'il est déoppé."
set black(say.fr.man.2135) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.2136) "\[MAN\] \002%char%set\002 (+/-)protectops ; \002%botnick% set\002 (+/-)protectops ; \002(PRIVMSG) set\002 <#chan> (+/-)protectops"

#ProtectFriends 

set black(say.fr.man.2137) "\[MAN\] \002ProtectFriends\002 est un paramètre interne d'eggdrop non lié au \002script BlackToolS\002 et fera en sorte que le bot redonne les privilèges d'opérateur (op) à un utilisateur ayant le flag +f s'il est déoppé."
set black(say.fr.man.2138) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.2139) "\[MAN\] \002%char%set\002 (+/-)protectfriends ; \002%botnick% set\002 (+/-)protectfriends ; \002(PRIVMSG) set\002 <#chan> (+/-)protectfriends"

#ProtectHalfOps 

set black(say.fr.man.2140) "\[MAN\] \002ProtectHalfOps\002 est un paramètre interne d'eggdrop non lié au \002script BlackToolS\002 et fera en sorte que le bot redonne les privilèges de demi-opérateur (halfop) à un utilisateur ayant le flag +l s'il est dé-halfoppé."
set black(say.fr.man.2141) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.2142) "\[MAN\] \002%char%set\002 (+/-)protecthalfops ; \002%botnick% set\002 (+/-)protecthalfops ; \002(PRIVMSG) set\002 <#chan> (+/-)protecthalfops"

#Inactive 

set black(say.fr.man.2143) "\[MAN\] \002Inactive\002 est un paramètre interne d'eggdrop non lié au \002script BlackToolS\002 et empêche le bot de rejoindre le canal (ou le fait quitter le canal s'il y est déjà). Cela peut être utile pour faire quitter un canal au bot sans perdre ses paramètres, les flags utilisateur spécifiques au canal, les bans du canal, et sans affecter le partage."
set black(say.fr.man.2144) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.2145) "\[MAN\] \002%char%set\002 (+/-)inactive ; \002%botnick% set\002 (+/-)inactive ; \002(PRIVMSG) set\002 <#chan> (+/-)inactive"

#StatusLog 

set black(say.fr.man.2146) "\[MAN\] \002StatusLog\002 est un paramètre interne d'eggdrop non lié au \002script BlackToolS\002 et fera en sorte que le bot enregistre la ligne de statut du canal toutes les 5 minutes. Cela montre le statut du bot sur le canal (op, voix, etc.), les modes du canal, et le nombre total de membres, ops, voix, utilisateurs réguliers, et les modes +b, +e, et +I sur le canal."
set black(say.fr.man.2147) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.2148) "\[MAN\] \002%char%set\002 (+/-)statuslog\002 ; \002%botnick% set\002 (+/-)statuslog ; \002(PRIVMSG) set\002 <#chan> (+/-)statuslog"

#Static 

set black(say.fr.man.2149) "\[MAN\] \002Static\002 est un paramètre interne d'eggdrop non lié au \002script BlackToolS\002 et permet uniquement aux propriétaires permanents de supprimer le canal."
set black(say.fr.man.2150) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.2151) "\[MAN\] \002%char%set\002 (+/-)static ; \002%botnick% set\002 (+/-)static ; \002(PRIVMSG) set\002 <#chan> (+/-)static"

#Revenge 

set black(say.fr.man.2152) "\[MAN\] \002Revenge\002 est un paramètre interne d'eggdrop non lié au \002script BlackToolS\002 et fera en sorte que le bot se souvienne des personnes qui déoppent/kickent/bannent le bot, les ops valides, ou les amis, et les punisse. Les utilisateurs avec le flag +f sont exemptés de la vengeance."
set black(say.fr.man.2153) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.2154) "\[MAN\] \002%char%set\002 (+/-)revenge ; \002%botnick% set\002 (+/-)revenge ; \002(PRIVMSG) set\002 <#chan> (+/-)revenge"

#RevengeBot 

set black(say.fr.man.2155) "\[MAN\] \002RevengeBot\002 est un paramètre interne d'eggdrop non lié au \002script BlackToolS\002 et est similaire à l'option 'revenge', mais il ne se déclenche que si un bot est déoppé, kické ou banni."
set black(say.fr.man.2156) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.2157) "\[MAN\] \002%char%set\002 (+/-)revengebot ; \002%botnick% set\002 (+/-)revengebot ; \002(PRIVMSG) set\002 <#chan> (+/-)revengebot"

#Secret 

set black(say.fr.man.2158) "\[MAN\] \002Secret\002 est un paramètre interne d'eggdrop non lié au \002script BlackToolS\002 et empêche le canal d'être listé sur le botnet."
set black(say.fr.man.2159) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.2160) "\[MAN\] \002%char%set\002 (+/-)secret ; \002%botnick% set\002 (+/-)secret ; \002(PRIVMSG) set\002 <#chan> (+/-)secret"

#Shared 

set black(say.fr.man.2161) "\[MAN\] \002Shared\002 est un paramètre interne d'eggdrop non lié au \002script BlackToolS\002 et fera en sorte que le bot partage les informations utilisateur liées au canal pour ce canal."
set black(say.fr.man.2162) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.2163) "\[MAN\] \002%char%set\002 (+/-)shared ; \002%botnick% set\002 (+/-)shared ; \002(PRIVMSG) set\002 <#chan> (+/-)shared"

#Cycle 

set black(say.fr.man.2164) "\[MAN\] \002Cycle\002 est un paramètre interne d'eggdrop non lié au \002script BlackToolS\002 et fera en sorte que le bot recycle le canal lorsqu'il n'a pas d'opérations (@)."
set black(say.fr.man.2165) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.2166) "\[MAN\] \002%char%set\002 (+/-)cycle ; \002%botnick% set\002 (+/-)cycle ; \002(PRIVMSG) set\002 <#chan> (+/-)cycle"

#NodeSynch 

set black(say.fr.man.2167) "\[MAN\] \002NodeSynch\002 est un paramètre interne d'eggdrop non lié au \002script BlackToolS\002 et permet aux non-ops d'effectuer des modes de canal. Cela peut éviter que le bot entre en conflit avec des services comme ChanServ, ou qu'il expulse des opérateurs IRC lorsqu'il définit des modes de canal sans avoir d'ops."
set black(say.fr.man.2168) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.2169) "\[MAN\] \002%char%set\002 (+/-)nodesynch ; \002%botnick% set\002 (+/-)nodesynch ; \002(PRIVMSG) set\002 <#chan> (+/-)nodesynch"

#DynamicExempts 

set black(say.fr.man.2170) "\[MAN\] \002DynamicExempts\002 est un paramètre interne d'eggdrop non lié au \002script BlackToolS\002 et n'active les exempts sur le canal que lorsque cela est nécessaire. Cela évite que la liste des exempts du canal ne devienne excessivement longue. Le bot se souvient toujours de chaque exempt, mais ils ne sont activés que lorsqu'un ban correspondant est appliqué sur le canal. L'exempt reste actif sur le canal tant que le ban est actif."
set black(say.fr.man.2171) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.2172) "\[MAN\] \002%char%set\002 (+/-)dynamicexempts ; \002%botnick% set\002 (+/-)dynamicexempts ; \002(PRIVMSG) set\002 <#chan> (+/-)dynamicexempts"

#UserExempts 

set black(say.fr.man.2173) "\[MAN\] \002UserExempts\002 est un paramètre interne d'eggdrop non lié au \002script BlackToolS\002 et permet aux exempts d'être créés directement par les utilisateurs sur IRC. Si cette option est désactivée, le bot exigera que tous les exempts soient créés via la console du bot."
set black(say.fr.man.2174) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.2175) "\[MAN\] \002%char%set\002 (+/-)userexempts ; \002%botnick% set\002 (+/-)userexempts ; \002(PRIVMSG) set\002 <#chan> (+/-)userexempts"

#DynamicInvites 

set black(say.fr.man.2176) "\[MAN\] \002DynamicInvites\002 est un paramètre interne d'eggdrop non lié au \002script BlackToolS\002 et n'active les invitations sur le canal que lorsque cela est nécessaire. Cela évite que la liste des invitations du canal ne devienne excessivement longue. Le bot se souvient toujours de chaque invitation, mais les invitations ne sont activées que lorsque le canal est défini en mode invite only et qu'un utilisateur rejoint après avoir demandé une invitation. Une fois définie, l'invitation reste active jusqu'à ce que le canal passe en mode -i."
set black(say.fr.man.2177) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.2178) "\[MAN\] \002%char%set\002 (+/-)dynamicinvites ; \002%botnick% set\002 (+/-)dynamicinvites ; \002(PRIVMSG) set\002 <#chan> (+/-)dynamicinvites"

#UserInvites 

set black(say.fr.man.2179) "\[MAN\] \002UserInvites\002 est un paramètre interne d'eggdrop non lié au \002script BlackToolS\002 et permet aux invitations d'être créées directement par les utilisateurs sur IRC. Si cette option est désactivée, le bot exigera que toutes les invitations soient créées via la console du bot."
set black(say.fr.man.2180) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.2181) "\[MAN\] \002%char%set\002 (+/-)userinvites ; \002%botnick% set\002 (+/-)userinvites ; \002(PRIVMSG) set\002 <#chan> (+/-)userinvites"

#Flood-Ctcp

set black(say.fr.man.2182) "\[MAN\] \002Flood-Ctcp\002 est un paramètre interne d'eggdrop non lié au \002script BlackToolS\002 et définit combien de ctcps de canal en combien de secondes en provenance d'un même hôte constituent un flood (+f les utilisateurs ne seront pas expulsés). Pour désactiver ce paramètre, spécifiez \0020\002 ou \0020:0\002."
set black(say.fr.man.2183) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.2184) "\[MAN\] \002%char%set\002 flood-ctcp <ctcp:seconds> ; \002%botnick% set\002 flood-ctcp <ctcp:seconds> ; \002(PRIVMSG) set\002 <#chan> flood-ctcp <ctcp:seconds>"
set black(say.fr.man.2185) "Voir les options : \002%char%show\002 <setting> ; \002%botnick% show\002 <setting> ; \002(PRIVMSG) show\002 <#chan> <setting>"

#Flood-Join

set black(say.fr.man.2186) "\[MAN\] \002Flood-Join\002 est un paramètre interne d'eggdrop non lié au \002script BlackToolS\002 et définit combien de joins en combien de secondes en provenance d'un même hôte constituent un flood (+f les utilisateurs ne seront pas expulsés). Pour désactiver ce paramètre, spécifiez \0020\002 ou \0020:0\002."
set black(say.fr.man.2187) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.2188) "\[MAN\] \002%char%set\002 flood-join <joins:seconds> ; \002%botnick% set\002 flood-join <joins:seconds> ; \002(PRIVMSG) set\002 <#chan> flood-join <joins:seconds>"
set black(say.fr.man.2189) "Voir les options : \002%char%show\002 <setting> ; \002%botnick% show\002 <setting> ; \002(PRIVMSG) show\002 <#chan> <setting>"

#Flood-Kick

set black(say.fr.man.2190) "\[MAN\] \002Flood-Kick\002 est un paramètre interne d'eggdrop non lié au \002script BlackToolS\002 et définit combien de kicks en combien de secondes en provenance d'un même hôte constituent un flood (+f les utilisateurs ne seront pas expulsés). Pour désactiver ce paramètre, spécifiez \0020\002 ou \0020:0\002."
set black(say.fr.man.2191) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.2192) "\[MAN\] \002%char%set\002 flood-kick <kicks:seconds> ; \002%botnick% set\002 flood-kick <kicks:seconds> ; \002(PRIVMSG) set\002 <#chan> flood-kick <kicks:seconds>"
set black(say.fr.man.2193) "Voir les options : \002%char%show\002 <setting> ; \002%botnick% show\002 <setting> ; \002(PRIVMSG) show\002 <#chan> <setting>"

#Flood-Deop

set black(say.fr.man.2194) "\[MAN\] \002Flood-Deop\002 est un paramètre interne d'eggdrop non lié au \002script BlackToolS\002 et définit combien de deops en combien de secondes en provenance d'un même hôte constituent un flood (+f les utilisateurs ne seront pas expulsés). Pour désactiver ce paramètre, spécifiez \0020\002 ou \0020:0\002."
set black(say.fr.man.2195) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.2196) "\[MAN\] \002%char%set\002 flood-deop <deops:seconds> ; \002%botnick% set\002 flood-deop <deops:seconds> ; \002(PRIVMSG) set\002 <#chan> flood-deop <deops:seconds>"
set black(say.fr.man.2197) "Voir les options : \002%char%show\002 <setting> ; \002%botnick% show\002 <setting> ; \002(PRIVMSG) show\002 <#chan> <setting>"

#Flood-Nick

set black(say.fr.man.2198) "\[MAN\] \002Flood-Nick\002 est un paramètre interne d'eggdrop non lié au \002script BlackToolS\002 et définit combien de changements de nick en combien de secondes en provenance d'un même hôte constituent un flood (+f les utilisateurs ne seront pas expulsés). Pour désactiver ce paramètre, spécifiez \0020\002 ou \0020:0\002."
set black(say.fr.man.2199) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.2200) "\[MAN\] \002%char%set\002 flood-nick <nicks:seconds> ; \002%botnick% set\002 flood-nick <nicks:seconds> ; \002(PRIVMSG) set\002 <#chan> flood-nick <nicks:seconds>"
set black(say.fr.man.2201) "Voir les options : \002%char%show\002 <setting> ; \002%botnick% show\002 <setting> ; \002(PRIVMSG) show\002 <#chan> <setting>"

#Flood-Chan

set black(say.fr.man.2202) "\[MAN\] \002Flood-Chan\002 est un paramètre interne d'eggdrop non lié au \002script BlackToolS\002 et définit combien de messages de canal en combien de secondes en provenance d'un même hôte constituent un flood (+f les utilisateurs ne seront pas expulsés). Pour désactiver ce paramètre, spécifiez \0020\002 ou \0020:0\002."
set black(say.fr.man.2203) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.2204) "\[MAN\] \002%char%set\002 flood-chan <lines:seconds> ; \002%botnick% set\002 flood-chan <lines:seconds> ; \002(PRIVMSG) set\002 <#chan> flood-chan <lines:seconds>"
set black(say.fr.man.2205) "Voir les options : \002%char%show\002 <setting> ; \002%botnick% show\002 <setting> ; \002(PRIVMSG) show\002 <#chan> <setting>"

#AutoUpdate

set black(say.fr.man.2206) "\[MAN\] \002AutoUpdate\002 permet au script de \001se mettre à jour\001 automatiquement (si une nouvelle version de BT ou une correction de bogue est disponible) par commande ou \002AUTO\002 (par minuterie). Les fichiers BT et les variables définies dans \001BlackTools.tcl\001 sont sauvegardés et restaurés."
set black(say.fr.man.2207) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.2208) "\[MAN\] \002%char%update <on>\002 (activer l'autoupdate) ; \002%char%update off\002 (désactiver l'autoupdate) ; \002%char%update check\002 (vérifier les nouvelles mises à jour) ; \002%char%update start\002 (démarrer la mise à jour) ; \002%char%update time\002 \[temps\] (définir l'intervalle de mise à jour, utilisant X\001m\001, X\001h\001, X\001j\001 ; si \001\[time\]\001 n'est pas spécifié, affiche le temps actuellement défini)"

#Alias

set black(say.fr.man.2209) "\[MAN\] \002ALIAS\002 permet aux utilisateurs de créer leurs propres commandes basées sur les commandes BT. Toutes les commandes sont disponibles."
set black(say.fr.man.2210) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.2211) "\[MAN\] \002%char%alias add\002 <commande> <commande BT> \[arguments\] ; \002%char%alias del\002 <commande>"
set black(say.fr.man.2212) "\[MAN\] Exemple 1 : \002%char%alias add\002 lamer \001b\001 %1% 0 Vous êtes un lamer !! \[%1% - pseudo ou hôte\]"
set black(say.fr.man.2213) "\[MAN\] Exemple 2 : \002%char%alias add\002 beer \001cycle\001 %1% %2% Je vais prendre une bière, je reviendrai \[%1% - canal ; %2% - durée du cycle\]"

#NoProxy

set black(say.fr.man.2214) "\[MAN\] \002NoProxy\002 bannit les utilisateurs qui utilisent des IPs considérées comme \001PROXY\001."
set black(say.fr.man.2215) "\[MAN\] SYNTAXES D'UTILISATION :"
set black(say.fr.man.2216) "\[MAN\] \002%char%set\002 (+/-)noproxy ; \002%botnick% set\002 (+/-)noproxy ; \002(PRIVMSG) set\002 <#chan> (+/-)noproxy"
set black(say.fr.man.2217) "\[MAN\] Paramètres optionnels : \002noproxy-reason\002 ; \002noproxy-bantime\002 (Vous pouvez utiliser dans \001noproxy-reason\001 le mot clé \"%isp%\" qui sera remplacé par l'ISP de l'IP)"

#Egg AntiBotidle

set black(say.fr.man.2218) "\[MAN\] \002AntiBotIdle\002 est un paramètre qui active ou désactive le \002IDLE\002 de l'eggdrop lui-même."
set black(say.fr.man.2218_1) "\[MAN\] \0021\002 = pas d'attente ; \0020\002 = attente"
set black(say.fr.man.2219) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.2220) "\[MAN\] \002%char%set antibotidle\002 <1|0> ; \002%botnick% set antibotidle\002 <1|0> ; \002(PRIVMSG) set antibotidle\002 <1|0>"

#Vote

set black(say.fr.man.2221) "\[MAN\] \002Vote\002 vous permet d'ouvrir un processus de vote où tous les utilisateurs (ceux avec accès ou tous) peuvent répondre avec l'une des options disponibles."
set black(say.fr.man.2222) "\[MAN\] SYNTAXE D'UTILISATION :"
set black(say.fr.man.2223) "\[MAN\] \002%char%set\002 (+/-)vote ; \002%botnick% set\002 (+/-)vote ; \002(PRIVMSG) set\002 <#chan> (+/-)vote"
set black(say.fr.man.2224) "\[MAN\] \002%char%vote \002\[#chan\] \002add\002 <nom_vote> -option <option1> -option <option2>.. \[-time \[JJ/MM/AA HH:MM\]\] (heure d'expiration) \[-type 1/0\] (1 - utilisateurs avec accès, 0 - tous les utilisateurs)"
set black(say.fr.man.2225) "\[MAN\] \002%char%vote \002\[#chan\]\002 \002list \[ID\]\002 (liste des votes, si un ID est spécifié, il listera les votes pour le vote spécifié par ID) ; \002%char%vote \002\[#chan\]\002 del <ID> (supprimer le vote)"
set black(say.fr.man.2226) "\[MAN\] \002%char%vote \002\[#chan\]\002 <ID> <lettre> (la lettre d'option de l'ID de vote) ; \002%char%vote \002\[#chan\] time\002 <ID> <JJ/MM/AA HH:MM> (définir une nouvelle heure d'expiration) ; \002%char%vote \002\[#chan\]\002 end <ID> (mettre fin au vote)"
set black(say.fr.man.2227) "\[MAN\] Paramètres optionnels : \002vote-mask\002 (voir \002%char%vote man\002 mask) ; \002(+/-)votegreet\002 (activer le message de bienvenue pour informer les utilisateurs de la disponibilité des votes)"
set black(say.fr.man.2228) "\[MAN\] \002%char%vote \002\[#chan\]\002 \002list \[ID\]\002 (liste des votes, si un ID est spécifié \[admin+ seulement\], il listera les votes pour le vote spécifié par ID)"
set black(say.fr.man.2229) "\[MAN\] \002%char%vote \002\[#chan\]\002 <ID> <lettre> (la lettre d'option de l'ID de vote)"

#Mask

set black(say.fr.man.2230) "\[MAN\] Masques disponibles :"
set black(say.fr.man.2231) "\[MAN\] \002#1\002 *!*@host ; \002#2\002 *!utilisateur@host ; \002#3\002 pseudo!utilisateur@host ; \002#4\002 pseudo!*@* ; \002#5\002 *!utilisateur@*"
set black(say.fr.man.2232) "\[MAN\] SYNTAXE D'UTILISATION : \002%char%set\002 <paramètre> <numéro méthode> ; \002%botnick% set\002 <paramètre> <numéro méthode> ; \002(PRIVMSG) set\002 <#chan> <paramètre> <numéro méthode>"

#+/-disablepubcmds

set black(say.fr.man.2233) "\[MAN\] Ce paramètre, une fois activé, provoquera la désactivation des commandes qui sont données sur le canal via le caractère de début (par exemple !w)"

##############################
############################################################################################################
#   END                                                                                                    #
############################################################################################################
