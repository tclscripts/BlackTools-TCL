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


set black(say.es.man.1) "\005\[BT\]\005 Use: \002%char%man\002 <Comando>"
set black(say.es.man.2) "\005\[BT\]\005 Use: \002%botnick% man\002 <Comando>"
set black(say.es.man.2_1) "\005\[BT\]\005 Use: \002man\002 <Comando>"

#Man

set black(say.es.man.3) "\[MAN\] \002Man\002 es el segundo más importante de la secuencia de comandos de control de canales de BlackTools utilizado para leer el \001manual de usuario\001."
set black(say.es.man.4) "\[MAN\] Muestra información sobre cómo usar o configurar cada comando, protección y módulo."
set black(say.es.man.4_1) "\[MAN\] SINTAXIS:"
set black(say.es.man.5) "\[MAN\] \002%char%man\002 <Comando> ; \002%botnick% man\002 <Comando> ; \002(PRIVMSG) man\002 <Comando>"

#h

set black(say.es.man.6) "\[MAN\] \002h\002 es el comando más importante de Blacktools Channel Control Script."
set black(say.es.man.7) "\[MAN\] Muestra todos los comandos disponibles y permite a los usuarios navegar por el menú del script de acuerdo con su nivel de acceso en un canal específico."
set black(say.es.man.8) "\[MAN\] SINTAXIS:"
set black(say.es.man.9) "\[MAN\] \002%char%h\002 <Categoría> ; \002%botnick% h\002 <Categoría> ; \002(PRIVMSG) h\002 \[#chan\] <Categoría>"
set black(say.es.man.10) "\[MAN\] Para saber qué comandos están disponibles para usted, intente: \002%char%h\002 ; \002%botnick% h\002 ; \002(PRIVMSG) h\002 \[#chan\]"

#tip

set black(say.es.man.6666) "\[MAN\] \002TIP\002 muestra automáticamente \002consejos aleatorios\002 al final de cada información del \001manual de usuario\001."

#v

set black(say.es.man.11) "\[MAN\] \002v\002 da/quita voice \002(+v)\002 a uno o más usuarios en el canal."
set black(say.es.man.12) "\[MAN\] ** Nota: Si no se especifica ningún nick, y no tienes voice en el canal, te dará voice \002(+v)\002. **"
set black(say.es.man.13) "\[MAN\] SINTAXIS:"
set black(say.es.man.14) "\[MAN\] \002%char%v\002 <nick1> <nick2>.. ; \002%botnick% v\002 <nick1 <nick2>.. ; \002(PRIVMSG) v\002 <#chan> <nick1 <nick2>.."
set black(say.es.man.15) "\[MAN\] \002%char%v +\002 (Dará voice a todos) ; \002%char%v -\002 (Quitará voice a todos)"

#o

set black(say.es.man.16) "\[MAN\] \002o\002 da/quitaa op \001(@)\001 a uno o más usuarios en el canal."
set black(say.es.man.17) "\[MAN\] ** Nota: Si no se especifica ningún nick, y no tienes op en el canal, te dará op \002(@)\002. **"
set black(say.es.man.18) "\[MAN\] SINTAXIS:"
set black(say.es.man.19) "\[MAN\] \002%char%o\002 <nick1> <nick2>.. ; \002%botnick% o\002 <nick1 <nick2>.. ; \002(PRIVMSG) o\002 <#chan> <nick1 <nick2>.."
set black(say.es.man.20) "\[MAN\] \002%char%o +\002 (Dará op a todos)\002 ; %char%o -\002 (Quitará voice a todos)"

#UserList

set black(say.es.man.22) "\[MAN\] \002UserList\002 muestra la lista de acceso completa para un canal específico."
set black(say.es.man.23) "\[MAN\] SINTAXIS:"
set black(say.es.man.24) "\[MAN\] \002%char%userlist\002 <level|all> ; \002%botnick% userlist\002 <level|all> ; \002(PRIVMSG) userlist\002 <#chan> <level|all>"
set black(say.es.man.25) "\[MAN\] Como acceso \002<nivel>\002 tiene: \002%msg.1%\002 ; \002%msg.2%\002 ; \002%msg.3%\002 ; \002%msg.4%\002"
set black(say.es.man.26) "\[MAN\] Como acceso \002<nivel>\002 tiene: \002%msg.1%\002 ; \002%msg.2%\002 ; \002%msg.3%\002 ; \002%msg.4%\002 ; \002%msg.12%\002"
set black(say.es.man.27) "\[MAN\] Como acceso \002<nivel>\002 tiene: \002%msg.1%\002 ; \002%msg.2%\002 ; \002%msg.3%\002 ; \002%msg.4%\002 ; \002%msg.12%\002 ; \002%msg.13%\002 ; \002%msg.15%\002"
set black(say.es.man.28_1) "\[MAN\] Como acceso \002<nivel>\002 tiene: \002%msg.1%\002 ; \002%msg.2%\002 ; \002%msg.3%\002"

#Version

set black(say.es.man.28) "\[MAN\] \002Version\002 muestra información sobre la \001BlackTools versión\001 que se está ejecutando en eggdrop."
set black(say.es.man.29) "\[MAN\] SINTAXIS:"
set black(say.es.man.30) "\[MAN\] \002%char%version\002 ; %botnick% version ; \002(PRIVMSG) version\002"

#Info

set black(say.es.man.31) "\[MAN\] \002Info\002 muestra información sobre usuarios o canales de la base de datos de eggdrop."
set black(say.es.man.32) "\[MAN\] Información como nivel de acceso, modo de canal, saludo, host(s) agregado(s) por el usuario, modo automático, información vista por última vez, etc."
set black(say.es.man.33) "\[MAN\] SINTAXIS:"
set black(say.es.man.34) "\[MAN\] \002%char%info\002 <handle|#chan> ; \002%botnick% info\002 <handle|#chan> ; \002(PRIVMSG) info\002 <handle|#chan>"

#Act

set black(say.es.man.35) "\[MAN\] \002Act\002 hace que el eggdrop envíe una acción (\001/me\001) con <Mensaje> en los canales."
set black(say.es.man.36) "\[MAN\] SINTAXIS:"
set black(say.es.man.37) "\[MAN\] \002%char%act\002 <Mensaje> ; \002%botnick% act\002 <Mensaje> ; \002(PRIVMSG) act\002 <#chan> <Mensaje>"

#t

set black(say.es.man.38) "\[MAN\] \002t\002 establece un topic con su <texto> deseado."
set black(say.es.man.39) "\[MAN\] SINTAXIS:"
set black(say.es.man.40) "\[MAN\] \002%char%t\002 \[#chan\] <Texto> ; \002%botnick% t\002 \[#chan\] <Texto> ; \002(PRIVMSG) t\002 <#chan> <Texto>"
set black(say.es.man.41) "\[MAN\] ** Nota: Si desea que Eggdrop se muestre en el topic y el handle del usuario que lo cambió, use: \002%char%set +showhandle\002 **"

#Cycle

set black(say.es.man.42) "\[MAN\] \002Cycle\002 hace que el ciclo eggdrop (\001/hop\001), salga y entre en un canal específico."
set black(say.es.man.43) "\[MAN\] SINTAXIS:"
set black(say.es.man.44) "\[MAN\] \002%char%cycle\002 \[duración|razón\] ; \002%botnick% cycle\002 \[duración|razón\] ; \002(PRIVMSG) cycle\002 <#chan> \[duración|razón\]"

#Mode

set black(say.es.man.45) "\[MAN\] \002Mode\002 aplica o elimina <modos> específicos  en los canales."
set black(say.es.man.46) "\[MAN\] SINTAXIS:"
set black(say.es.man.47) "\[MAN\] \002%char%mode\002 (+/-)<modos> ; %botnick% mode\002 (+/-)<modos> ; \002(PRIVMSG) mode\002 <#chan> (+/-)<modos>"

#i

set black(say.es.man.48) "\[MAN\] \002i\002 invita a un usuario específico a un canal específico."
set black(say.es.man.49) "\[MAN\] SINTAXIS:"
set black(say.es.man.50) "\[MAN\] \002%char%i\002 <nick> ; \002%botnick% i\002 <nick> ; \002(PRIVMSG) i\002 <#chan> <nick>"

#k

set black(say.es.man.62) "\[MAN\] \002k\002 expulsa a un usuario específico del canal. La razón es opcional."
set black(say.es.man.63) "\[MAN\] SINTAXIS:"
set black(say.es.man.64) "\[MAN\] \002%char%k\002 <nick|mask> \[razón\] ; \002%botnick% k\002 <nick|mask> \[razón\] ; \002(PRIVMSG) k\002 <#chan> <nick|mask> \[razón\]"
set black(say.es.man.65) "\[MAN\] Configuraciones opcionales: \002k-reason\002 (configuración de razón predeterminada)"

#w

set black(say.es.man.66) "\[MAN\] \002w\002 Da un kick de advertencia a un usuario con una razón dada."
set black(say.es.man.67) "\[MAN\] SINTAXIS:"
set black(say.es.man.68) "\[MAN\] \002%char%w\002 <nick> ; \002%botnick% w\002 <nick> ; \002(PRIVMSG) w\002 <#chan> <nick>"
set black(say.es.man.69) "\[MAN\] Configuraciones opcionales \002w-reason\002 (motivo de advertencia predeterminado) ; \002w-message\002 (mensaje de advertencia predeterminado)"

#Check

set black(say.es.man.70) "\[MAN\] \002Check\002 Verifica a un usuario con un mensaje privado si es un virus o hace publicidad."
set black(say.es.man.71) "\[MAN\] SINTAXIS:"
set black(say.es.man.72) "\[MAN\] \002%char%check\002 <nick>\002 ; \002%botnick% check\002 <nick> ; \002(PRIVMSG) check\002 \[#chan\] <nick>"
set black(say.es.man.73) "\[MAN\] Configuraciones opcionales \002%char%set\002 check-message <Mensaje> ; \002(PRIVMSG) set\002 check-message <Mensaje> (mensaje de verificación predeterminado)"

#sb

set black(say.es.man.74) "\[MAN\] \002sb\002 busca y/o muestra detalles sobre una prohibición determinada (admite comodines)."
set black(say.es.man.75) "\[MAN\] SINTAXIS:"
set black(say.es.man.76) "\[MAN\] \002%char%sb\002 <nick|mask|id> ; \002%botnick% sb\002 <nick|mask|id> ; \002(PRIVMSG) sb\002 <#chan> <nick|mask|id>"
set black(say.es.man.77) "\[MAN\] \002%char%sb\002 <nick|mask|id> \[global\] ; \002%botnick% sb\002 <nick|mask|id> \[global\] ; \002(PRIVMSG) sb\002 <#chan> <nick|mask|id> \[global\]"
set black(say.es.man.78) "\[MAN\] ** Nota: En caso de que \002<nick>\002 no esté en %chan%, eggdrop le hará \002WHOIS\002 y comprobará si tiene prohibición de \002ident/host/nick\002 mostrando información sobre el. **"

#id

set black(say.es.man.79) "\[MAN\] \002id\002 establece una prohibición a una determinada \001IDENT\001. Si se especifica un apodo de usuario, eggdrop tomará automáticamente su ident."
set black(say.es.man.80) "\[MAN\] SINTAXIS:"
set black(say.es.man.81) "\[MAN\] \002%char%id\002 <nick|ident> ; \002%botnick% id\002 <nick|ident> ; \002(PRIVMSG) id\002 <#chan> <nick|ident>"
set black(say.es.man.82) "\[MAN\] Configuraciones opcionales \002id-reason\002 (razón por defecto); \002id-bantime\002 (tiempo de ban predeterminado); \002id-banmask\002 (banmask predeterminada)"

#n

set black(say.es.man.83) "\[MAN\] \002n\002 establece una prohibición a un determinado \001NiCK\001."
set black(say.es.man.84) "\[MAN\] SINTAXIS:"
set black(say.es.man.85) "\[MAN\] \002%char%n\002 <nick> ; \002%botnick% n\002 <nick> ; \002(PRIVMSG) n\002 <#chan> <nick>"
set black(say.es.man.86) "\[MAN\] Configuraciones opcionales \002n-reason\002 (razón por defecto); \002n-bantime\002 (tiempo de ban predeterminado) ; \002n-banmask\002 (banmask predeterminada)"

#Spam

set black(say.es.man.87) "\[MAN\] \002Spam\002 prohíbe a un usuario con un motivo predeterminado \001SPAM\001."
set black(say.es.man.88) "\[MAN\] SINTAXIS:"
set black(say.es.man.89) "\[MAN\] \002%char%spam\002 <nick|mask> ; \002%botnick% spam\002 <nick|mask> ; \002(PRIVMSG) spam\002 <#chan> <nick|mask>"
set black(say.es.man.90) "\[MAN\] Configuraciones opcionales \002spam-reason\002 (motivo predeterminado de spam); \002spam-bantime\002 (tiempo predeterminado de ban de spam); \002spam-banmask\002 (máscara de spam predeterminada)"

#dr

set black(say.es.man.91) "\[MAN\] \002dr\002 Prohíbe a un usuario con un motivo predeterminado \001DRONE\001."
set black(say.es.man.92) "\[MAN\] SINTAXIS:"
set black(say.es.man.93) "\[MAN\] \002%char%dr\002 <nick|mask> ; \002%botnick% dr\002 <nick|mask> ; \002(PRIVMSG) dr\002 <#chan> <nick|mask>"
set black(say.es.man.94) "\[MAN\] Configuraciones opcionales \002dr-reason\002 (razón por defecto); \002dr-bantime\002 (tiempo de ban predeterminado); \002dr-banmask\002 (banmask predeterminada)"

#b

set black(say.es.man.95) "\[MAN\] \002b\002 Banea a un usuario de un canal durante un tiempo de prohibición específico. Si no especifica un \001\[duración\]\001 se utilizará el valor predeterminado, pero si especifica \0020\002 se convertirá en una prohibición permanente (en la lista negra)."
set black(say.es.man.96) "\[MAN\] Duración del formato: <X>\002m\002 = minutos, <X>\002h\002 = horas, <X>\002d\002 = días, \0020\002 = permanente"
set black(say.es.man.97) "\[MAN\] SINTAXIS:"
set black(say.es.man.98) "\[MAN\] \002%char%b\002 <nick|mask> \[-level\] \[duración\] \[razón\] \[-c/comment\] ; \002%botnick% b\002 <nick|mask> \[-level\] \[duración\] \[razón\] \[-c/comment\] ; \002(PRIVMSG) b\002 <#chan> <nick|mask> \[-level\] \[duración\] \[razón\] \[-c/comment\]"
set black(say.es.man.98_1) "\[MAN\] ** Nota: El uso de la opción \[-c/comment\] hará que eggdrop muestre una segunda línea de información de la entrada de prohibición con ese comentario. **"
set black(say.es.man.99) "\[MAN\] \002%char%b\002 <nick|mask>  \[-level\] \[duración\] \[global|link\] \[razón\] \[-c/comment\] ; \002%botnick% b\002 <nick|mask> \[-level\] \[duración\] \[global|link\] \[razón\] \[-c/comment\] ; \002(PRIVMSG) b\002 <#chan> <nick|mask> \[-level\] \[duración\] \[global|link\] \[razón\] \[-c/comment\]"
set black(say.es.man.100) "\[MAN\] Configuraciones opcionales \002b-reason\002 (razón por defecto); \002b-bantime\002 (tiempo de ban predeterminado); \002b-banmask\002 (banmask predeterminada)"
set black(say.es.man.100_1) "\[MAN\] ** Nota: Puede usar la prohibición de REGEX en \002<nick>!<ident>@<hostname>/\[realname\]/\[tipo de máscara\]\002 (los campos entre\[\] son opcionales. Para obtener información sobre \002tipo de máscara\002 use \001%char%man banmask\001"
#ub

set black(say.es.man.101) "\[MAN\] \002ub\002 elimina una prohibición de un canal específico (admite comodines). \002ATENCIÓN\002: si especifica SOLO \002*\002, Eggdrop elimina todas las prohibiciones del canal."
set black(say.es.man.102) "\[MAN\] SINTAXIS:"
set black(say.es.man.103) "\[MAN\] \002%char%ub\002 <nick|mask|id> ; \002%botnick% ub\002 <nick|mask|id> ; \002(PRIVMSG) ub\002 <#chan> <nick|mask|id>\002"
set black(say.es.man.104) "\[MAN\] \002%char%ub\002 <nick|mask|id> \[global\]\002 ; \002%botnick% ub\002 <nick|mask|id> \[global|link\] ; \002(PRIVMSG) ub\002 <#chan> <nick|mask|id> \[global|link\]"
set black(say.es.man.105) "\[MAN\] ** Nota: En caso de que \002<nick>\002 no esté activado, %chan% eggdrop le hará \002WHOIS\002 lo verificará y comprobará si tiene prohibido \002ident/host/nick\002 y lo desbaneará. **"

#Bot

set black(say.es.man.106) "\[MAN\] \002Bot\002 prohíbe a un usuario con un motivo predeterminado \001BOT\001."
set black(say.es.man.107) "\[MAN\] SINTAXIS:"
set black(say.es.man.108) "\[MAN\] \002%char%bot\002 <nick|mask>\002 ; \002%botnick% bot\002 <nick|mask> ; \002(PRIVMSG) bot\002 <#chan> <nick|mask>"
set black(say.es.man.109) "\[MAN\] Configuraciones opcionales \002bot-reason\002 (razón por defecto); \002bot-bantime\002 (tiempo de ban predeterminado); \002bot-banmask\002 (banmask predeterminada)"

#bw

set black(say.es.man.110) "\[MAN\] \002bw\002 bans a user with a default reason."
set black(say.es.man.111) "\[MAN\] SINTAXIS:"
set black(say.es.man.112) "\[MAN\] \002%char%bw\002 <nick|mask> ; \002%botnick% bw\002 <nick|mask> ; \002(PRIVMSG) bw\002 <#chan> <nick|mask>\002"
set black(say.es.man.113) "\[MAN\] Configuraciones opcionales \002bw-reason\002 (razón por defecto); \002bw-bantime\002 (tiempo de ban predeterminado); \002bw-banmask\002 (banmask predeterminada)"

#Black

set black(say.es.man.114) "\[MAN\] \002Black\002 prohíbe a un usuario \001tiempo ILIMITADO\001 (prohibición permanente)."
set black(say.es.man.115) "\[MAN\] SINTAXIS:"
set black(say.es.man.116) "\[MAN\] \002%char%black\002 <nick|mask> \[razón\] \[-c/comment\] ; \002%botnick% black\002 <nick|mask> \[razón\] \[-c/comment\] ; \002(PRIVMSG) black\002 <#chan> <nick|mask> \[razón\] \[-c/comment\]\002"
set black(say.es.man.116_1) "\[MAN\] ** Nota: El uso de la opción \[-c/comment\] hará que eggdrop muestre una segunda línea de información de la entrada de prohibición con ese comentario. **"
set black(say.es.man.117) "\[MAN\] Configuraciones opcionales \002black-reason\002 (razón por defecto); \002black-banmask\002 (banmask predeterminada)"

#Stick 

set black(say.es.man.118) "\[MAN\] \002Stick\002 prohíbe a un usuario con un motivo y tiempo de prohibición determinados, pero con un carácter \001sticky\001. El bot reactivará una prohibición permanente si alguien la elimina del canal."
set black(say.es.man.118_1) "\[MAN\] Format duration: <X>\002m\002 = minutos, <X>\002h\002 = horas, <X>\002d\002 = días, \0020\002 = permanente"
set black(say.es.man.119) "\[MAN\] SINTAXIS:"
set black(say.es.man.120) "\[MAN\] \002%char%stick\002 <nick|mask> \[duración\] \[razón\] \[-c/comment\] ; %botnick% stick\002 <nick|mask> \[duración\] \[razón\] \[-c/comment\] ; \002(PRIVMSG) stick\002 <#chan> <nick|mask> \[duración\] \[razón\] \[-c/comment\]"
set black(say.es.man.120_1) "\[MAN\] ** Nota: El uso de la opción \[-c/comment\] hará que eggdrop muestre una segunda línea de información de la entrada de prohibición con ese comentario. **"
set black(say.es.man.121) "\[MAN\] Configuraciones opcionales \002stick-reason\002 (razón por defecto); \002stick-bantime\002 (tiempo de ban predeterminado); \002stick-banmask\002 (banmask predeterminada)"

#Gag

set black(say.es.man.122) "\[MAN\] \002Gag\002 silenciar (no puede escribir en el canal) a un usuario por un período de tiempo. Si no especifica un tiempo de \002\[duración\]\002 se utilizará el valor predeterminado."
set black(say.es.man.122_1) "\[MAN\] Format duration: <X>\002m\002 = minutos, <X>\002h\002 = horas, <X>\002d\002 = días"
set black(say.es.man.123) "\[MAN\] SINTAXIS:"
set black(say.es.man.124) "\[MAN\] \002%char%gag\002 <nick> \[duración\] \[razón\] ; \002%botnick% gag\002 <nick> \[duración\] \[razón\] ; \002(PRIVMSG) gag\002 <#chan> <nick> \[duración\] \[razón\]\002."
set black(say.es.man.125) "\[MAN\] Configuraciones opcionales \002gag-reason\002 (razón por defecto); \002gag-bantime\002 (tiempo de ban predeterminado); \002gag-banmask\002 (banmask predeterminada)"

#Add

set black(say.es.man.126) "\[MAN\] \002Add\002 Agrega un usuario a la lista de usuarios del canal."
set black(say.es.man.127) "\[MAN\] ** Note: Si el usuario está en el canal, la máscara de host añadida automáticamente para ese usuario será la actual. **"
set black(say.es.man.128) "\[MAN\] ** Note: Si el usuario NO está en el canal, la máscara de host añadida automáticamente para ese usuario será: *!*@%user% **"
set black(say.es.man.134) "\[MAN\] SINTAXIS:"
set black(say.es.man.135) "\[MAN\] \002%char%add\002 <level> <nick> ; \002%botnick% add\002 <level> <nick> ; \002(PRIVMSG) add\002 <#chan> <level> <nick>"

#Adduser

set black(say.es.man.136) "\[MAN\] Para obtener información sobre \002cómo dar acceso a alguien\002, consulte: \002%char%man add\002"

#DelAcc

set black(say.es.man.142) "\[MAN\] \002DelAcc\002 elimina a un usuario de la lista de acceso de un canal."
set black(say.es.man.142_1) "\[MAN\] ** Nota: debe tener mayor acceso que el usuario que desea eliminar (por lo tanto, si tiene \002OP\002 y el usuario especificado tiene \002ADMIN\002, no puede eliminarlo). **"
set black(say.es.man.143) "\[MAN\] SINTAXIS:"
set black(say.es.man.144) "\[MAN\] \002%char%delacc\002 <handle> ; %botnick% delacc\002 <handle> ; \002(PRIVMSG) delacc\002 <#chan> <handle>"
set black(say.es.man.145) "\[MAN\] \002%char%delacc\002 <owner|master> <handle> ; \002%botnick% delacc\002 <owner|master> <handle> ; \002(PRIVMSG) delacc\002 <#chan> <owner|master> <handle> (remove access global)"

#Del

set black(say.es.man.146) "\[MAN\] \002Del\002 elimina totalmente a un usuario de la base de datos de eggdrop."
set black(say.es.man.147) "\[MAN\] SINTAXIS:"
set black(say.es.man.148) "\[MAN\] \002%char%del\002 <handle> ; \002%botnick% del\002 <handle> ; \002(PRIVMSG) del\002 <#chan> <handle>"

#unGag

set black(say.es.man.149) "\[MAN\] \002unGag\002 Elimina el \002gag\002 de un usuario específico."
set black(say.es.man.150) "\[MAN\] SINTAXIS:"
set black(say.es.man.151) "\[MAN\] \002%char%ungag\002 <nick|mask> ; \002%botnick% ungag\002 <nick|mask> ; \002(PRIVMSG) ungag\002 <#chan> <nick|mask>"

#BanList

set black(say.es.man.152) "\[MAN\] \002BanList\002 muestra la lista de máscaras prohibidas que están activas en el canal específico."
set black(say.es.man.153) "\[MAN\] SINTAXIS:"
set black(say.es.man.154) "\[MAN\] \002%char%banlist\002 <handle|all|other> ; \002%botnick% banlist\002 <handle|all|other> ; \002(PRIVMSG) banlist\002 <#chan> <handle|all|other>"
set black(say.es.man.155) "\[MAN\] \002%char%banlist\002 <handle|all|other|global> ; \002%botnick% banlist\002 <handle|all|other|global> ; \002(PRIVMSG) banlist\002 <#chan> <handle|all|other|global>"

#AddHost

set black(say.es.man.156) "\[MAN\] \002AddHost\002 agrega una nueva máscara de host a un usuario específico."
set black(say.es.man.157) "\[MAN\] SINTAXIS:"
set black(say.es.man.158) "\[MAN\] \002%char%addhost\002 <handle> <mask> ; \002%botnick% addhost\002 <handle> <mask> ; \002(PRIVMSG) addhost\002 <handle> <mask>"

#DelHost

set black(say.es.man.159) "\[MAN\] \002DelHost\002 elimina una máscara de host de un usuario específico."
set black(say.es.man.160) "\[MAN\] SINTAXIS:"
set black(say.es.man.161) "\[MAN\] \002%char%delhost\002 <handle> <mask> ; \002%botnick% delhost\002 <handle> <mask> ; \002(PRIVMSG) delhost\002 <handle> <mask>"

#chUser

set black(say.es.man.162) "\[MAN\] \002chUser\002 cambie el <handle> (nombre) de un usuario a <newhandle>."
set black(say.es.man.163) "\[MAN\] SINTAXIS:"
set black(say.es.man.164) "\[MAN\] \002%char%chuser\002 <handle> <newhandle> ; \002%botnick% chuser\002 <handle> <newhandle> ; \002(PRIVMSG) chuser\002 <handle> <newhandle>"

#s

set black(say.es.man.165) "\[MAN\] \002s\002 suspende el acceso de un usuario a un canal por un período de tiempo específico. Si no especifica un tiempo de \002\[duración\]\002, se utilizará el valor predeterminado."
set black(say.es.man.165_1) "\[MAN\] ** Note: You can only SUSPEND someone with access lower than your own. **"
set black(say.es.man.165_2) "\[MAN\] Format duration: <X>\002m\002 = minutes, <X>\002h\002 = hours, <X>\002d\002 = days"
set black(say.es.man.166) "\[MAN\] SINTAXIS:"
set black(say.es.man.167) "\[MAN\] \002%char%s\002 <handle> \[duración\] \[razón\] ; \002%botnick% s\002 <handle> \[duración\] \[razón\] ; \002(PRIVMSG) s\002 <#chan> <handle> \[duración\] \[razón\]"

#us

set black(say.es.man.168) "\[MAN\] \002us\002 elimina la suspensión de un acceso de usuario de un canal determinado."
set black(say.es.man.168_1) "\[MAN\] ** Nota: Solo puede quitar la SUSPENSIÓN a alguien con un acceso inferior al suyo. Además, el nivel de suspensión debe ser menor o igual que su propio nivel de acceso. **"
set black(say.es.man.169) "\[MAN\] SINTAXIS:"
set black(say.es.man.170) "\[MAN\] \002%char%us\002 <handle> ; \002%botnick% us\002 <handle> ; \002(PRIVMSG) us\002 <#chan> <handle>"

#Auto

set black(say.es.man.171) "\[MAN\] \002Auto\002 cambia el modo automático para un canal específico. ATENCIÓN el usuario debe tener acceso en ese canal primero."
set black(say.es.man.172) "\[MAN\] SINTAXIS:"
set black(say.es.man.173) "\[MAN\] AutoVOICE: \002%char%auto (+/-)v\002 <nick|handle> ; %botnick% auto (+/-)v <nick|handle> ; \002(PRIVMSG) auto\002 <#chan> (+/-)v <nick|handle>"
set black(say.es.man.174) "\[MAN\] AutoOP: \002%char%auto (+/-)o\002 <nick|handle> ; %botnick% auto (+/-)o <nick|handle> ; \002(PRIVMSG) auto\002 <#chan> (+/-)o <nick|handle>"
set black(say.es.man.175) "\[MAN\] AutoVOICE: \002%char%auto (+/-)v\002 <nick|handle> \[-global\] ; %botnick% auto\002 (+/-)v <nick|handle> \[-global\] ; \002(PRIVMSG) auto\002 <#chan> (+/-)v <nick|handle> \[-global\]"
set black(say.es.man.176) "\[MAN\] AutoOP: \002%char%auto (+/-)o\002 <nick|handle> \[-global\] ; %botnick% auto\002 (+/-)o <nick|handle> \[-global\] ; \002(PRIVMSG) auto\002 <#chan> (+/-)o <nick|handle> \[-global\]"


################################################# MAN PROTECTIONS #####################################################


#AntiPub

set black(say.es.man.177) "\[MAN\] \002AntiPub\002 Prohíbe a los usuarios que hacen publicidad, usando *#*, *http://* o *www.* (admite comodines)."
set black(say.es.man.178) "\[MAN\] SINTAXIS:"
set black(say.es.man.179) "\[MAN\] \002%char%set\002 (+/-)antipub ; \002%botnick% set\002 (+/-)antipub ; \002(PRIVMSG) set\002 (+/-)antipub"
set black(say.es.man.180) "\[MAN\] \002%char%antipub\002 \[#chan\] add <link|#chan> ; \002%char%antipub\002 \[#chan\] list"
set black(say.es.man.180_1) "\[MAN\] \002%char%antipub\002 \[#chan\] add <+word> (add exceptions) ; \002%char%antipub\002 \[#chan\] del <no. list> (remove antipub from list)"
set black(say.es.man.181) "\[MAN\] Configuraciones opcionales \002antipub-reason\002; antipub-bantime; \002antipub-warn\002; antipub-banmethod; \002antipub-banmask\002"

#AntiNotice

set black(say.es.man.183) "\[MAN\] \002AntiNotice\002 prohíbe a los usuarios que usan \"NOTICE\" en un canal."
set black(say.es.man.184) "\[MAN\] SINTAXIS:"
set black(say.es.man.185) "\[MAN\] \002%char%set\002 (+/-)antinotice ; \002%botnick% set\002 (+/-)antinotice ; \002(PRIVMSG) set\002 <#chan> (+/-)antinotice"
set black(say.es.man.186) "\[MAN\] Configuraciones opcionales \002antinotice-reason\002; antinotice-bantime; \002antinotice-warn\002; antinotice-banmethod; \002antinotice-banmask\002"
set black(say.es.man.187) "\[MAN\] Ver configuración de opciones: \002%char%show\002 <ajuste> ; \002%botnick% show\002 <ajuste> ; \002(PRIVMSG) show\002 <#chan> <ajuste>"

#AntiCtcp

set black(say.es.man.188) "\[MAN\] \002AntiCtcp\002 prohíbe a los usuarios que usan \"CTCP\" en un canal."
set black(say.es.man.189) "\[MAN\] SINTAXIS:"
set black(say.es.man.190) "\[MAN\] \002%char%set\002 (+/-)antictcp ; \002%botnick% set\002 (+/-)antictcp ; \002(PRIVMSG) set\002 <#chan> (+/-)antictcp"
set black(say.es.man.191) "\[MAN\] Configuraciones opcionales \002antictcp-reason\002, antictcp-bantime, \002antictcp-warn\002, antictcp-banmethod, \002antictcp-banmask\002"
set black(say.es.man.192) "\[MAN\] Ver configuración de opciones: \002%char%show\002 <ajuste> ; \002%botnick% show\002 <ajuste> ; \002(PRIVMSG) show\002 <#chan> <ajuste>"

#AntiBadWord

set black(say.es.man.193) "\[MAN\] \002AntiBadWord\002 prohíbe a los usuarios que usan *malas palabras/frases prohibidas* (admite comodines)."
set black(say.es.man.194) "\[MAN\] SINTAXIS:"
set black(say.es.man.195) "\[MAN\] \002%char%set\002 (+/-)antibadword ; \002%botnick% set\002 (+/-)antibadword ; \002(PRIVMSG) set\002 <#chan> (+/-)antibadword"
set black(say.es.man.196) "\[MAN\] \002%char%badword\002 \[#chan\] add <word|phrase> ; \002%char%badword\002 \[#chan\] list ; \002%char%badword\002 \[#chan\] del <no. list>"
set black(say.es.man.197) "\[MAN\] \002%char%badword\002 \[#chan\] add <+word> (add exceptions) ; \002%char%badword\002 \[#chan\] add <word:no. method> (see \002%char%man banmethod\002)"
set black(say.es.man.198) "\[MAN\] Configuraciones opcionales \002antibadword-reason\002, antibadword-bantime, \002antibadword-warn\002, antibadword-banmethod, \002antibadword-banmask\002"

#AntiLongText

set black(say.es.man.199) "\[MAN\] \002AntiLongText\002 prohíbe a los usuarios que escriben demasiadas palabras en una línea."
set black(say.es.man.200) "\[MAN\] SINTAXIS:"
set black(say.es.man.201) "\[MAN\] \002%char%set\002 (+/-)antilongtext ; \002%botnick% set\002 (+/-)antilongtext ; \002(PRIVMSG) set\002 <#chan> (+/-)antilongtext"
set black(say.es.man.202) "\[MAN\] Configuraciones opcionales \002antilongtext-reason\002, antilongtext-bantime, \002antilongtext-warn\002, antilongtext-banmethod, \002antilongtextmax\002, antilongtext-banmask"
set black(say.es.man.203) "Ver configuración de opciones: \002%char%show\002 <ajuste> ; \002%botnick% show\002 <ajuste> ; \002(PRIVMSG) show\002 <#chan> <ajuste>"

#BadQuitPart

set black(say.es.man.204) "\[MAN\] \002AntiBadQuitPart\002 prohíbe a los usuarios que usan palabras *malas/prohibidas* cuando salen de un canal (admite comodines)."
set black(say.es.man.205) "\[MAN\] SINTAXIS:"
set black(say.es.man.206) "\[MAN\] \002%char%set\002 (+/-)badquitpart ; \002%botnick% set\002 (+/-)badquitpart ; \002(PRIVMSG) set\002 <#chan> (+/-)badquitpart"
set black(say.es.man.207) "\[MAN\] \002%char%badquitpart\002 \[#chan\] add <word> ; \002%char%badquitpart\002 \[#chan\] list"
set black(say.es.man.208) "\[MAN\] \002%char%badquitpart\002 \[#chan\] add <+word> (add exceptions) ; \002%char%badquitpart\002 \[#chan\] del <no. list> (remove badquitpart from list)"
set black(say.es.man.209) "\[MAN\] Configuraciones opcionales \002antibadquitpart-reason\002, antibadquitpart-bantime, \002antibadquitpart-banmethod\002, antibadquitpart-banmask"

#AntiJoinPart

set black(say.es.man.210) "\[MAN\] \002AntiJoinPart\002 prohíbe los usuarios que hace Join/Part demasiado rápido en un canal."
set black(say.es.man.211) "\[MAN\] SINTAXIS:"
set black(say.es.man.212) "\[MAN\] \002%char%set (+/-)antijoinpart\002 ; %botnick% set (+/-)antijoinpart ; \002(PRIVMSG) set <#chan> (+/-)antijoinpart\002"
set black(say.es.man.213) "\[MAN\] Configuraciones opcionales \002antijoinpart-reason\002, antijoinpart-bantime, \002antijoinpart-banmethod\002, antijoinpart-banmask"
set black(say.es.man.214) "Ver configuración de opciones: \002%char%show\002 <ajuste> ; \002%botnick% show\002 <ajuste> ; \002(PRIVMSG) show\002 <#chan> <ajuste>"

#AntiSpam

set black(say.es.man.215) "\[MAN\] \002AntiSpam\002 prohíbe a los usuarios que envíen mensajes de spam que contengan \001#\001 o \001*www.*\001 (consulte también \002!man spamjoinmessage\002)."
set black(say.es.man.216) "\[MAN\] SINTAXIS:"
set black(say.es.man.217) "\[MAN\] \002%char%set\002 (+/-)antispam ; \002%botnick% set\002 (+/-)antispam ; \002(PRIVMSG) set\002 <#chan> (+/-)antispam"
set black(say.es.man.217_1) "\[MAN\] \002%char%antispam\002 \[#chan\] add <*text*> ; \002%char%antispam \[#chan\] list\002"
set black(say.es.man.217_2) "\[MAN\] \002%char%antispam\002 \[#chan\] add <+word> (add except) ; \002%char%antispam\002 \[#chan\] del <no. list> (remove antispam from list)"
set black(say.es.man.218) "\[MAN\] Configuraciones opcionales \002antispam-reason\002, antispam-message, \002antispam-bantime\002, antispam-banmask, \002antispam-scantime\002"
set black(say.es.man.219) "Ver configuración de opciones: \002%char%show\002 <ajuste> ; \002%botnick% show\002 <ajuste> ; \002(PRIVMSG) show\002 <#chan> <ajuste>"

#AntiRepeat

set black(say.es.man.221) "\[MAN\] \002AntiRepeat\002 prohíbe a los usuarios que repiten el mismo texto con demasiada frecuencia en un canal."
set black(say.es.man.222) "\[MAN\] SINTAXIS:"
set black(say.es.man.223) "\[MAN\] \002%char%set\002 (+/-)antirepeat ; \002%botnick% set\002 (+/-)antirepeat ; \002(PRIVMSG) set\002 <#chan> (+/-)antirepeat"
set black(say.es.man.224) "\[MAN\] Configuraciones opcionales \002antirepeat-reason\002, antirepeat-bantime, \002antirepeat-warn\002, antirepeat-banmethod, \002antirepeat-banmask\002, antirepeat-setting"
set black(say.es.man.225) "Ver configuración de opciones: \002%char%show\002 <ajuste> ; \002%botnick% show\002 <ajuste> ; \002(PRIVMSG) show\002 <#chan> <ajuste>"

#AntiColor

set black(say.es.man.226) "\[MAN\] \002AntiColor\002 prohíbe a los usuarios que usan \002COLORES\002 en sus mensajes."
set black(say.es.man.227) "\[MAN\] SINTAXIS:"
set black(say.es.man.228) "\[MAN\] \002%char%set\002 (+/-)anticolor ; \002%botnick% set\002 (+/-)anticolor ; \002(PRIVMSG) set\002 <#chan> (+/-)anticolor"
set black(say.es.man.229) "\[MAN\] Configuraciones opcionales \002anticolor-reason\002, anticolor-bantime, \002anticolor-warn\002, anticolor-banmethod, \002anticolor-banmask\002"
set black(say.es.man.230) "Ver configuración de opciones: \002%char%show\002 <ajuste> ; \002%botnick% show\002 <ajuste> ; \002(PRIVMSG) show\002 <#chan> <ajuste>"

#AntiBold

set black(say.es.man.231) "\[MAN\] \002AntiBold\002 prohíbe a los usuarios que usan \002NEGRITA\002 es sus mensajes."
set black(say.es.man.232) "\[MAN\] SINTAXIS:"
set black(say.es.man.233) "\[MAN\] \002%char%set\002 (+/-)antibold ; \002%botnick% set\002 (+/-)antibold ; \002(PRIVMSG) set\002 <#chan> (+/-)antibold"
set black(say.es.man.234) "\[MAN\] Configuraciones opcionales \002antibold-reason\002, antibold-bantime, \002antibold-warn\002, antibold-banmethod, \002antibold-banmask\002"
set black(say.es.man.235) "Ver configuración de opciones: \002%char%show\002 <ajuste> ; \002%botnick% show\002 <ajuste> ; \002(PRIVMSG) show\002 <#chan> <ajuste>"

#AntiUnderline

set black(say.es.man.236) "\[MAN\] \002AntiUnderline\002 prohíbe a los usuarios que usan \002SUBRAYADO\002 es sus mensajes."
set black(say.es.man.237) "\[MAN\] SINTAXIS:"
set black(say.es.man.238) "\[MAN\] \002%char%set\002 (+/-)antiunderline ; \002%botnick% set\002 (+/-)antiunderline ; \002(PRIVMSG) set\002 <#chan> (+/-)antiunderline"
set black(say.es.man.239) "\[MAN\] Configuraciones opcionales \002antiunderline-reason\002, antiunderline-bantime, \002antiunderline-warn\002, antiunderline-banmethod, \002antiunderline-banmask\002"
set black(say.es.man.240) "Ver configuración de opciones: \002%char%show\002 <ajuste> ; \002%botnick% show\002 <ajuste> ; \002(PRIVMSG) show\002 <#chan> <ajuste>"

#AntiCaps

set black(say.es.man.241) "\[MAN\] \002AntiCaps\002 prohíbe a los usuarios que abusen de las \002MAYÚSCULAS\002."
set black(say.es.man.242) "\[MAN\] SINTAXIS:"
set black(say.es.man.243) "\[MAN\] \002%char%set\002 (+/-)anticaps ; \002%botnick% set\002 (+/-)anticaps ; \002(PRIVMSG) set\002 <#chan> (+/-)anticaps"
set black(say.es.man.244) "\[MAN\] Configuraciones opcionales \002anticaps-reason\002, anticaps-bantime, \002anticaps-warn\002, anticaps-banmethod, \002anticaps-banmask\002"
set black(say.es.man.245) "Ver configuración de opciones: \002%char%show\002 <ajuste> ; \002%botnick% show\002 <ajuste> ; \002(PRIVMSG) show\002 <#chan> <ajuste>"

#BadNick

set black(say.es.man.246) "\[MAN\] \002BadNick\002 prohíbe a los usuarios que usan NiCK que contengan *palabras/caracteres *malos/prohibidos* (admite comodines)."
set black(say.es.man.247) "\[MAN\] SINTAXIS:"
set black(say.es.man.248) "\[MAN\] \002%char%set\002 (+/-)badnick ; \002%botnick% set\002 (+/-)badnick ; \002(PRIVMSG) set\002 <#chan> (+/-)badnick"
set black(say.es.man.249) "\[MAN\] \002%char%badnick\002 \[#chan\] add <word> ; \002%char%badnick \[#chan\] list\002"
set black(say.es.man.250) "\[MAN\] \002%char%badnick\002 \[#chan\] add <+word> (add exceptions) ; \002%char%badnick\002 \[#chan\] del <no. list> (remove badnick from list)"
set black(say.es.man.251) "\[MAN\] Configuraciones opcionales \002badnick-reason\002, badnick-bantime, \002badnick-banmask\002, badnick-bmethod, \002badnick-banwait\002"

#BadRealname

set black(say.es.man.252) "\[MAN\] \002BadRealname\002 prohíbe a los usuarios que usan FULLNAME que contengan *palabras/caracteres* malos/prohibidos (admite comodines)."
set black(say.es.man.253) "\[MAN\] SINTAXIS:"
set black(say.es.man.254) "\[MAN\] \002%char%set\002 (+/-)badrealname ; \002%botnick% set\002 (+/-)badrealname ; \002(PRIVMSG) set\002 <#chan> (+/-)badrealname"
set black(say.es.man.255) "\[MAN\] \002%char%badrealname\002 \[#chan\] add <word> ; \002%char%badrealname \[#chan\] list\002"
set black(say.es.man.256) "\[MAN\] \002%char%badrealname\002 \[#chan\] add <+word> (add exceptions) ; \002%char%badrealname\002 \[#chan\] del <no. list> (remove badrealname from list)"
set black(say.es.man.257) "\[MAN\] Configuraciones opcionales \002badrealname-reason\002, badrealname-bantime, \002badrealname-banmask\002"

#AutoOp

set black(say.es.man.258) "\[MAN\] \002AutoOp\002 da la oportunidad a cada usuario que se une a un canal para tener \002OP (@)\002."
set black(say.es.man.259) "\[MAN\] SINTAXIS:"
set black(say.es.man.260) "\[MAN\] \002%char%set\002 (+/-)autoop ; \002%botnick% set\002 (+/-)autoop ; \002(PRIVMSG) set\002 <#chan> (+/-)autoop"

#AutoVoice

set black(say.es.man.261) "\[MAN\] \002AutoVoice\002 da la oportunidad a cada usuario que se une a un canal para tener \002VOICE (+v)\002."
set black(say.es.man.262) "\[MAN\] SINTAXIS:"
set black(say.es.man.263) "\[MAN\] \002%char%set\002 (+/-)autovoice ; \002%botnick% set\002 (+/-)autovoice ; \002(PRIVMSG) set\002 <#chan> (+/-)autovoice"

#AntiJoinFlood

set black(say.es.man.264) "\[MAN\] \002AntiJoinFlood\002 establece ciertos modos de canal y prohíbe a los usuarios que realicen acciones \002massjoin\002. También prohíbe a los usuarios que se unen y hacen Part/quit demasiado rápido."
set black(say.es.man.265) "\[MAN\] SINTAXIS:"
set black(say.es.man.266) "\[MAN\] \002%char%set\002 (+/-)antijoinflood ; \002%botnick% set\002 (+/-)antijoinflood ; \002(PRIVMSG) set\002 <#chan> (+/-)antijoinflood"
set black(say.es.man.267) "\[MAN\] Configuraciones opcionales \002joinflood\002 (<number joins>:<seconds>)"
set black(say.es.man.268) "Ver configuración de opciones: \002%char%show\002 <ajuste> ; \002%botnick% show\002 <ajuste> ; \002(PRIVMSG) show\002 <#chan> <ajuste>"

#AntiChanFlood

set black(say.es.man.269) "\[MAN\] \002AntiChanFlood\002 prohíbe a los usuarios que inundan un canal con texto/palabras."
set black(say.es.man.270) "\[MAN\] SINTAXIS:"
set black(say.es.man.271) "\[MAN\] \002%char%set\002 (+/-)antichanflood ; \002%botnick% set\002 (+/-)antichanflood ; \002(PRIVMSG) set\002 <#chan> (+/-)antichanflood"
set black(say.es.man.272) "\[MAN\] Configuraciones opcionales \002antichanflood-reason\002 (razón por defecto), \002antichanflood-bantime\002 (default bantime), \002chanflood\002 (<number lines>:<seconds>)"
set black(say.es.man.273) "Ver configuración de opciones: \002%char%show\002 <ajuste> ; \002%botnick% show\002 <ajuste> ; \002(PRIVMSG) show\002 <#chan> <ajuste>"

#BadIdent

set black(say.es.man.274) "\[MAN\] \002BadIdent\002 prohíbe a los usuarios que usan IDENT que contengan *palabras/caracteres *malos/prohibidos* (admite comodines)."
set black(say.es.man.275) "\[MAN\] SINTAXIS:"
set black(say.es.man.276) "\[MAN\] \002%char%set\002 (+/-)badident ; \002%botnick% set\002 (+/-)badident ; \002(PRIVMSG) set\002 <#chan> (+/-)badident"
set black(say.es.man.277) "\[MAN\] \002%char%badident\002 \[#chan\] add <word> ; \002%char%badident \[#chan\] list\002"
set black(say.es.man.278) "\[MAN\] \002%char%badident\002 \[#chan\] add <+word> (add exceptions) ; \002%char%badident\002 \[#chan\] del <no. list> (remove badident from list)"
set black(say.es.man.279) "\[MAN\] Configuraciones opcionales \002badident-reason\002 (razón por defecto), \002badident-bantime\002 (default bantime), \002badident-banmask\002 (banmask predeterminada)"

#ShowHandle

set black(say.es.man.280) "\[MAN\] \002ShowHandle\002 agregará el handle de usuario que agrega una prohibición al mensaje de prohibición."
set black(say.es.man.281) "\[MAN\] SINTAXIS:"
set black(say.es.man.282) "\[MAN\] \002%char%set\002 (+/-)showhandle ; \002%botnick% set\002 (+/-)showhandle ; \002(PRIVMSG) set\002 <#chan> (+/-)showhandle"

#ShowCount

set black(say.es.man.283) "\[MAN\] \002ShowCount\002 agregará el número total de prohibiciones al mensaje de prohibición."
set black(say.es.man.284) "\[MAN\] SINTAXIS:"
set black(say.es.man.285) "\[MAN\] \002%char%set\002 (+/-)showcount ; \002%botnick% set\002 (+/-)showcount ; \002(PRIVMSG) set\002 <#chan> (+/-)showcount"

#Showtime

set black(say.es.man.286) "\[MAN\] \002Showtime\002 agregará el tiempo de vencimiento al mensaje de prohibición."
set black(say.es.man.287) "\[MAN\] SINTAXIS:"
set black(say.es.man.288) "\[MAN\] \002%char%set\002 (+/-)showtime ; \002%botnick% set\002 (+/-)showtime ; \002(PRIVMSG) set\002 <#chan> (+/-)showtime"

#ShowUrl

set black(say.es.man.289) "\[MAN\] \002ShowUrl\002 agregará la URL del canal al motivo de prohibición (ver \002!man url\002)."
set black(say.es.man.290) "\[MAN\] SINTAXIS:"
set black(say.es.man.291) "\[MAN\] \002%char%set\002 (+/-)showurl ; \002%botnick% set\002 (+/-)showurl ; \002(PRIVMSG) set\002 <#chan> (+/-)showurl"

#xBanTime

set black(say.es.man.292) "\[MAN\] \002xBanTime\002 establece el tiempo de prohibición X (SOLO si el módulo \002+xonly\002 está habilitado)."
set black(say.es.man.293) "\[MAN\] SINTAXIS:"
set black(say.es.man.294) "\[MAN\] \002%char%set\002 xbantime <bantime X> ; %botnick% set\002 xbantime <bantime X> ; \002(PRIVMSG) set\002 <#chan> xbantime <bantime X>"

#xBanLevel

set black(say.es.man.295) "\[MAN\] \002xBanLevel\002 establece el nivel de acceso X (SOLO si el módulo \002+xonly\002 está habilitado)"
set black(say.es.man.296) "\[MAN\] SINTAXIS:"
set black(say.es.man.297) "\[MAN\] \002%char%set\002 xbanlevel <level X> ; \002%botnick% set\002 xbanlevel <level X> ; \002(PRIVMSG) set\002 <#chan> xbanlevel <level X>"

#oProtect

set black(say.es.man.298) "\[MAN\] \002oProtect\002 exceptúa aquellos que tienen \002OP (@)\002 de toda protección."
set black(say.es.man.299) "\[MAN\] SINTAXIS:"
set black(say.es.man.300) "\[MAN\] \002%char%set\002 (+/-)oprotect ; \002%botnick% set\002 (+/-)oprotect ; \002(PRIVMSG) set\002 <#chan> (+/-)oprotect"

#vProtect

set black(say.es.man.301) "\[MAN\] \002vProtect\002 exceptúa aquellos que tienen \002VOICE (+v)\002 de toda protección."
set black(say.es.man.302) "\[MAN\] SINTAXIS:"
set black(say.es.man.303) "\[MAN\] \002%char%set\002 (+/-)vprotect ; \002%botnick% set\002 (+/-)vprotect ; \002(PRIVMSG) set\002 <#chan> (+/-)vprotect"

#hoProtect

set black(say.es.man.304) "\[MAN\] \002hoProtect\002 exceptúa aquellos que tienen \002HALFOP (+h %)\002 de toda protección."
set black(say.es.man.305) "\[MAN\] SINTAXIS:"
set black(say.es.man.306) "\[MAN\] \002%char%set\002 (+/-)hoprotect ; \002%botnick% set\002 (+/-)hoprotect ; \002(PRIVMSG) set\002 <#chan> (+/-)hoprotect"

#ShowID

set black(say.es.man.307) "\[MAN\] \002ShowID\002 agregará el \ 002ID número \ 002 de prohibición de la lista de exclusión de eggdrop a la razón de la prohibición."
set black(say.es.man.308) "\[MAN\] SINTAXIS:"
set black(say.es.man.309) "\[MAN\] \002%char%set\002 (+/-)showid ; \002%botnick% set\002 (+/-)showid; \002(PRIVMSG) set\002 <#chan> (+/-)showid"


################################################# MAN MODULES #####################################################

 
#xTools

set black(say.es.man.407) "\[MAN\] \002xTools\002 le da a eggdrop el permiso para solicitar Op, Voice, Invite o Unban por *X*."
set black(say.es.man.408) "\[MAN\] SINTAXIS:"
set black(say.es.man.409) "\[MAN\] \002%char%set\002 (+/-)xtools ; \002%botnick% set\002 (+/-)xtools ; \002(PRIVMSG) set\002 <#chan> (+/-)xtools"

#BadChan

set black(say.es.man.410) "\[MAN\] \002BadChan\002 prohíbe a las personas que están en canales *malos/prohibidos* (admite comodines)."
set black(say.es.man.411) "\[MAN\] SINTAXIS:"
set black(say.es.man.412) "\[MAN\] \002%char%badchan\002 <ON|OFF> ; \002%botnick% badchan\002 <ON|OFF> ; \002(PRIVMSG) badchan\002 <#chan> <ON|OFF>"
set black(say.es.man.413) "\[MAN\] \002%char%badchan add\002 <#badchan> \[razón\] (add badchan) ; \002%char%badchan \[#chan\] list\002 (see badchans list)"
set black(say.es.man.414) "\[MAN\] \002%char%badchan add\002 <#badchan> \[global\] \[razón\]\002 ; %char%badchan del\002 <no. list> \[-global\] ; \002%char%badchan list\002 \[-global\]"
set black(say.es.man.415) "\[MAN\] \002%char%badchan add\002 <+#badchan> (add exceptions) ; \002%char%badchan del\002 <no. list> (remove badchan from list)"
set black(say.es.man.416) "\[MAN\] Configuraciones opcionales \002badchan-reason\002, badchan-bantime, \002badchan-bmethod\002, badchan-scantime, \002badchan-banwait\002, badchan-floodcontrol, \002showbadchan\002"

#Anunt

set black(say.es.man.417) "\[MAN\] \002Anunt/Advert\002 muestra anuncios en un canal durante un cierto período de tiempo y dependiendo de la actividad del canal (ver también \002%char%man anunt-showtime\002 & supports !%chan% y !%botnick%)."
set black(say.es.man.417_1) "\[MAN\] ** Nota: Estos mensajes se mostrarán uno por uno y SOLO si hay actividad en ese canal. De lo contrario, el eggdrop espera  hasta que haya actividad en el canal (Join, part, chat, etc.). **"
set black(say.es.man.418) "\[MAN\] SINTAXIS:"
set black(say.es.man.419) "\[MAN\] \002%char%anunt <ON|OFF>\002 ; %botnick% anunt <ON|OFF> ; \002(PRIVMSG) anunt <#chan> <ON|OFF>\002"
set black(say.es.man.420) "\[MAN\] \002%char%anunt\002 \[#chan\] add <Texto> ; \002%char%anunt \[#chan\] list\002 ; \002%char%anunt\002 \[#chan\] del <no. list>"
set black(say.es.man.421) "\[MAN\] \002Recuerda:\002 Para agregar más de 1 oración en un add usa \002%char% anunt add <text1>~<text2> ..\002 y eggdrop mostrará el add como 2 oraciones diferentes."

#Limit

set black(say.es.man.422) "\[MAN\] \002Limit\002 tiene el rol de \"manejo\" del límite del canal."
set black(say.es.man.423) "\[MAN\] SINTAXIS:"
set black(say.es.man.424) "\[MAN\] \002%char%limit\002 <ON|OFF> ; \002%botnick% limit\002 <ON|OFF> ; \002(PRIVMSG) limit\002 <#chan> <ON|OFF>"
set black(say.es.man.425) "\[MAN\] \002%char%limit set <number>\002 (default limit number)"
set black(say.es.man.426) "Ver configuración de opciones: \002%char%show\002 <ajuste> ; \002%botnick% show\002 <ajuste> ; \002(PRIVMSG) show\002 <#chan> <ajuste>"

#Topic

set black(say.es.man.427) "\[MAN\] \002Topic\002 establece el topic del canal, que se puede ver en la respuesta \002%char%info #canal\002. Si no se especifica ningún texto de topic, se agregará el tema del canal actual."
set black(say.es.man.427_1) "\[MAN\] ** Note: If you want to reset/remove the topic use: \002%char%topic unset\002. **"
set black(say.es.man.428) "\[MAN\] SINTAXIS:"
set black(say.es.man.429) "\[MAN\] \002%char%topic\002 \[#chan\] set <Texto> ; \002%botnick% topic\002 \[#chan\] set <Texto> ; \002(PRIVMSG) topic\002 \[#chan\] set <Texto>"
set black(say.es.man.430) "Ver configuración de opciones: \002%char%show\002 <ajuste> ; \002%botnick% show\002 <ajuste> ; \002(PRIVMSG) show\002 <#chan> <ajuste>"

#CloneScan

set black(say.es.man.431) "\[MAN\] \002CloneScan\002 escanea el canal en busca de clones y los prohíbe."
set black(say.es.man.432) "\[MAN\] SINTAXIS:"
set black(say.es.man.433) "\[MAN\] \002%char%set\002 (+/-)clonescan ; \002%botnick% set\002 (+/-)clonescan ; \002(PRIVMSG) set\002 <#chan> (+/-)clonescan"
set black(say.es.man.433_1) "\[MAN\] \002%char%clonescan add\002 <ip|mask> ; \002%char%clonescan del\002 <no. list> ; \002%char%clonescan list\002"
set black(say.es.man.434) "\[MAN\] Configuraciones opcionales \002clonescan-maxclone\002 (max clones number), \002clonescan-bantime\002 (default bantime), \002clonescan-reason\002 (razón por defecto)"
set black(say.es.man.435) "Ver configuración de opciones: \002%char%show\002 <ajuste> ; \002%botnick% show\002 <ajuste> ; \002(PRIVMSG) show\002 <#chan> <ajuste>"

#Seen

set black(say.es.man.436) "\[MAN\] \002Seen\002 busca una persona con un nick específico (admite comodines). Además, tiene una base de datos para cada canal."
set black(say.es.man.437) "\[MAN\] SINTAXIS:"
set black(say.es.man.438_1) "\[MAN\] SINTAXIS:"
set black(say.es.man.438) "\[MAN\] \002%char%set\002 (+/-)seen ; \002%botnick% set\002 (+/-)seen ; \002(PRIVMSG) set\002 <#canal> (+/-)seen"
set black(say.es.man.438_2) "\[MAN\] \002%char%seen\002 <nick|ip|host> ; \002%botnick% seen\002 <nick|ip|host> ; \002(PRIVMSG) seen\002 \[#chan\] <nick|ip|host>"
set black(say.es.man.438_3) "\[MAN\] \002%char%seen\002 \[global\] <nick|ip|host> ; \002%botnick% seen\002 \[global\] <nick|ip|host> ; \002(PRIVMSG) seen\002 \[#chan|global\] <nick|ip|host>"
set black(say.es.man.439) "\[MAN\] Configuraciones opcionales \002%char%seenreply\002"
set black(say.es.man.440) "Ver configuración de opciones: \002%char%show\002 <ajuste> ; \002%botnick% show\002 <ajuste> ; \002(PRIVMSG) show\002 <#chan> <ajuste>"

#Greet

set black(say.es.man.441) "\[MAN\] \002Greet\002 agrega un mensaje de bienvenida y lo envía a todos los usuarios que se unen a ese canal (consulte también \002%char%man infoline\002 y \002%char%man count\002)."
set black(say.es.man.442) "\[MAN\] SINTAXIS:"
set black(say.es.man.443) "\[MAN\] \002%char%greet\002 <ON|OFF> ; \002%botnick% greet\002 <ON|OFF> ; \002(PRIVMSG) greet\002 <#chan> <ON|OFF>"
set black(say.es.man.444) "\[MAN\] \002%char%greet\002 \[#chan\] set <Mensaje>\002 ; \002%botnick% greet\002 \[#chan\] set <Mensaje> ; \002(PRIVMSG) greet\002 \[#chan\] set <Mensaje>"
set black(say.es.man.445) "\[MAN\] \002%char%set greet-method <method>\002 ( NOTICE | PRIVMSG )"
set black(say.es.man.446) "\[MAN\] ** Nota: Para agregar más de 1 oración en un saludo, use \002%char%greet add <message1>~<message2>\002.. y eggdrop mostrará el saludo como 2 oraciones diferentes (admite %countchan%, %nick%, %time% y %count%). **"

#Leave

set black(say.es.man.447) "\[MAN\] \002Leave\002 agrega un mensaje parcial y lo envía a todos los usuarios que abandonan ese canal."
set black(say.es.man.448) "\[MAN\] SINTAXIS:"
set black(say.es.man.449) "\[MAN\] \002%char%leave\002 <ON|OFF> ; \002%botnick% leave\002 <ON|OFF> ; \002(PRIVMSG) leave\002 <#chan> <ON|OFF>"
set black(say.es.man.450) "\[MAN\] \002%char%leave\002 \[#chan\] set <Mensaje>\002 ; \002%botnick% leave\002 \[#chan\] set <Mensaje> ; \002(PRIVMSG) leave\002 \[#chan\] set <Mensaje>"
set black(say.es.man.451) "\[MAN\] \002%char%set leave-method <method>\002 ( NOTICE | PRIVMSG )"
set black(say.es.man.452) "\[MAN\] ** Nota: Para agregar más de 1 oración en un permiso, use \002%char%leave add <message1>~<message2>\002.. y eggdrop mostrará el permiso como 2 oraciones diferentes. **"

#Idle

set black(say.es.man.453) "\[MAN\] \002Idle\002 prohíbe a los usuarios con \002op (@)\002, \002halfop (+h %)\002 o \002voice (+v)\002 que estén inactivos."
set black(say.es.man.453_1) "\[MAN\] Periodo de formato: <X>\002m\002 = minutes, <X>\002h\002 = hours, <X>\002d\002 = days"
set black(say.es.man.454) "\[MAN\] SINTAXIS:"
set black(say.es.man.455) "\[MAN\] \002%char%idle\002 <(+/-)o / (+/-)v / (+/-)ho> ; \002%botnick% idle\002 <(+/-)o / (+/-)v / (+/-)ho> ; \002(PRIVMSG) idle\002 <#chan> <(+/-)o / (+/-)v / (+/-)ho>"
set black(say.es.man.456) "\[MAN\] \002%char%idle add\002 <nick> (add exception from idle), \002%char%idle <list>\002 (list exceptions), \002%char%idle del\002 <nick> (delete exception)"
set black(say.es.man.457) "\[MAN\] Configuraciones opcionales \002idleopmax\002 <Periodo> (default time idledeop) ; \002idlevoicemax\002 <Periodo> (default time idlevoice) ; \002idlehalfopmax\002 <Periodo> (default time idlehalfop) ; \002idle-scantime\002 <Periodo> (scan time)"
set black(say.es.man.458) "Ver configuración de opciones: \002%char%show\002 <ajuste> ; \002%botnick% show\002 <ajuste> ; \002(PRIVMSG) show\002 <#chan> <ajuste>"
set black(say.es.man.458_1) "\[MAN\] Para obtener información sobre \002idlevoice\002, consulte: \002%char%man idle\002"
set black(say.es.man.458_2) "\[MAN\] Para obtener información sobre \002idleop\002 consulte: \002%char%man idle\002"
set black(say.es.man.458_3) "\[MAN\] Para obtener información sobre \002idlehalfop\002 consulte: \002%char%man idle\002"

#BackChan

set black(say.es.man.459) "\[MAN\] \002BackChan\002 da la opción de que cada canal tenga un canal posterior, en el cual eggdrop dirá las prohibiciones que él dió en el canal principal."
set black(say.es.man.460) "\[MAN\] SINTAXIS:"
set black(say.es.man.461) "\[MAN\] \002%char%set\002 \[#chan\] backchan <#backchan> ; \002%botnick% set\002 \[#chan\] backchan <#backchan> ; \002(PRIVMSG) set\002 <#chan> backchan <#backchan>"
set black(say.es.man.462) "\[MAN\] ** Nota: Después de configurar el canal de retorno, podrá usar todos los comandos de prohibición, pero se aplicarán en \002<#chan>\002 (el canal principal). Admite solo un canal principal con un solo canal de retorno, no puede manejar 2 o más canales con el mismo canal de retorno. **"
set black(say.es.man.463) "\[MAN\] \002ChanReport\002 (BackChan) es un módulo que, cuando está habilitado, dará la opción de que cada canal tenga un canal posterior, en el que eggdrop dirá las prohibiciones que le dio a \002<#chan>\002 (el canal principal)."

#TopWords

set black(say.es.man.464) "\[MAN\] \002TopWords\002 registra la actividad de los usuarios de un canal (número de palabras escritas, líneas, letras, etc.)."
set black(say.es.man.465) "\[MAN\] SINTAXIS:"
set black(say.es.man.466) "\[MAN\] \002%char%set\002 (+/-)topwords ; \002%botnick% set\002 (+/-)topwords ; \002(PRIVMSG) set\002 <#chan> (+/-)topwords"
set black(say.es.man.467) "\[MAN\] \002%char%topwords\002 \[#chan\] <nick> \[total\] ; \002%char%topwords\002 \[#chan\] <nick> \[total\] ; \002(PRIVMSG) topwords\002 \[#chan\] <nick> \[total\]"
set black(say.es.man.467_1) "\[MAN\] \002%char%topwords\002 \[#chan\] <nick> \[total|reset\]  ; \002(PRIVMSG) topwords\002 \[#chan\] <nick> \[total|reset\]"
set black(say.es.man.467_2) "\[MAN\] \002%char%topwords\002 \[#chan\] add <nick> (agregando excepción) ; \002%char%topwords\002 \[#chan\] list (enumerar excepciones) ; \002%char%topwords\002 \[#chan\] del <nick> (eliminar excepción)"


#AntiTake

set black(say.es.man.473) "\[MAN\] \002Antitake\002tiene 2 configuraciones: la primera configuración detiene a los usuarios sin acceso desde \002taking OP (@)\002 desde otras operaciones. Deopeará la operación de toma de operaciones, y volverá a abrir la operación que perdió las operaciones. La segunda configuración detiene a los usuarios sin acceso desde \002dando OP (@)\002 a otro usuario. En tal caso, ambos usuarios serán eliminados."
set black(say.es.man.474) "\[MAN\] SINTAXIS:"
set black(say.es.man.475) "\[MAN\] \002%char%set\002 (+/-)dontdeop ; \002%botnick% set\002 (+/-)dontdeop (deop protection) ; \002%char%set\002 (+/-)dontop ; \002%botnick% set\002 (+/-)dontop (op protection)"
set black(say.es.man.475_1) "\[MAN\] For informations about \002dontdeop\002 please check: \002%char%man antitake\002"
set black(say.es.man.475_2) "\[MAN\] For informations about \002dontop\002 please check: \002%char%man antitake\002"

#Private

set black(say.es.man.476) "\[MAN\] \002Private\002 prohíbe a los usuarios sin acceso unirse a un canal específico (prohibiéndolos) a menos que se hayan agregado a la lista de excepciones."
set black(say.es.man.477) "\[MAN\] SINTAXIS:"
set black(say.es.man.478) "\[MAN\] \002%char%set\002 (+/-)private ; \002%botnick% set\002 (+/-)private ; \002(PRIVMSG) set\002 <#chan> (+/-)private"
set black(say.es.man.479) "\[MAN\] \002%char%private add\002 <nick> <ip|mask> (add exception), \002%char%private list\002 (list exceptions), \002%char%private del\002 <nick> (del exception)"
set black(say.es.man.480) "\[MAN\] Configuraciones opcionales \002private-reason\002 (razón por defecto); \002private-bantime\002 (default bantime)"
set black(say.es.man.481) "Ver configuración de opciones: \002%char%show\002 <ajuste> ; \002%botnick% show\002 <ajuste> ; \002(PRIVMSG) show\002 <#chan> <ajuste>"

#AutoBroadcast

set black(say.es.man.482) "\[MAN\] \002AutoBroadCast\002 transmitirá mensajes, uno a la vez, en todos los canales en los que se encuentra el eggdrop."
set black(say.es.man.483) "\[MAN\] SINTAXIS:"
set black(say.es.man.484) "\[MAN\] \002%char%bt\002 <ON|OFF> ; \002%botnick% bt\002 <ON|OFF> ; \002(PRIVMSG) bt\002 <#chan> <ON|OFF>"
set black(say.es.man.485) "\[MAN\] \002%char%bt add\002 <Mensaje> ; \002%char%bt\002 list ; \002%char%bt del\002 <no. list>"
set black(say.es.man.486) "\[MAN\] \002%char%set\002 <#chan> (+/-)silent (NO se transmitirá en ese canal)"
set black(say.es.man.486_1) "\[MAN\] Para obtener información sobre \002silent\002, consulte: \002%char%man autobroadcast\002"

#Language

set black(say.es.man.487) "\[MAN\] \002Lang\002 le permite seleccionar el idioma en el que Eggdrop le responderá y también establece los mensajes de idioma predeterminados utilizados en razones de expulsión/prohibición."
set black(say.es.man.487_1) "\[MAN\] Idiomas disponibles: \002RO\002 = romanian ; \002EN\002 = english ; \002ES\002 = spanish"
set black(say.es.man.488) "\[MAN\] SINTAXIS:"
set black(say.es.man.489) "\[MAN\] \002%char%set\002 \[#chan\] lang <lenguaje> ; \002%botnick% set\002 \[#chan\] lang <lenguaje> ; \002(PRIVMSG) set\002 \[#chan\] lang <lenguaje>"
set black(say.es.man.489_1) "\[MAN\] \002%char%myset\002 lang <lenguaje> ; \002%botnick% myset\002 lang <lenguaje> ; \002(PRIVMSG) myset\002 lang <lenguaje> (idioma de usuario predeterminado)"

#TCL

set black(say.es.man.490) "\[MAN\] \002TCL\002 admite la carga, carga y descarga de secuencias de comandos Tcl directamente a través de su eggdrop (la carga está restringida a archivos \002.tcl\002 SOLAMENTE)."
set black(say.es.man.491) "\[MAN\] SINTAXIS:"
set black(say.es.man.492) "\[MAN\] \002%char%tcl <list>\002 (ver scripts); \002%char%tcl wget\002 <link/name.tcl>; \002%char%tcl load\002 <name.tcl> (cargar un script tcl); \002%char%tcl unload\002 <name.tcl> (descargar un script tcl); \002%char%tcl info\002 <name.tcl> (información sobre un tcl) "

#NeXt

set black(say.es.man.493) "\[MAN\] \002Next\002 le permite ayudar a los usuarios que necesitan su ayuda de manera ordenada (utilizada en los canales de ayuda)."
set black(say.es.man.494) "\[MAN\] SINTAXIS:"
set black(say.es.man.495) "\[MAN\] \002%char%set\002 (+/-)next ; \002%botnick% set\002 (+/-)next ; \002(PRIVMSG) set\002 <#chan> (+/-)next"
set black(say.es.man.496) "\[MAN\] \002%char%next\002 (voz siguiente usuario) ; \002%char%next list\002 (muestra la lista de espera), \002%char%helped\002 <nick>, \002%char%noidle\002 <nick>, \002%char%skip\002 <nick> (pasando al final de la lista)"
set black(say.es.man.497) "\[MAN\] Configuraciones opcionales \002next-reason\002 (razón por defecto), \002next-bantime\002 (default bantime)"
set black(say.es.man.498) "Ver configuración de opciones: \002%char%show\002 <ajuste> ; \002%botnick% show\002 <ajuste> ; \002(PRIVMSG) show\002 <#chan> <ajuste>"


################################################# MAN COMANDS #####################################################


#upTime

set black(say.es.man.605) "\[MAN\] \002upTime\002 le permite averiguar durante cuánto tiempo se inició el eggdrop, a qué hora estuvo conectado al servidor y también a qué servidor está conectado."
set black(say.es.man.606) "\[MAN\] SINTAXIS:"
set black(say.es.man.607) "\[MAN\] \002%char%uptime\002 ; %botnick% uptime ; \002(PRIVMSG) uptime\002"

#Status

set black(say.es.man.608) "\[MAN\] \002Status\002 le permite encontrar información sobre el eggdrop como los canales monitoreados, el propietario, la versión, el total de usuarios y el propietario del eggdrop."
set black(say.es.man.609) "\[MAN\] SINTAXIS:"
set black(say.es.man.610) "\[MAN\] \002%char%status\002 ; %botnick% status ; \002(PRIVMSG) status\002"

#Set

set black(say.es.man.611) "\[MAN\] \002Set\002 aplica o elimina las marcas de eggdrop para el canal (ciertas configuraciones que le indican a tu eggdrop cómo comportarse bajo ciertas condiciones)."
set black(say.es.man.612) "\[MAN\] SINTAXIS:"
set black(say.es.man.613) "\[MAN\] \002%char%set\002 (+/-)flag / <flag|str|option> <description> ; \002%botnick% set\002 (+/-)flag / <flag|str|option> <description> ; \002(PRIVMSG) set\002 <#chan> (+/-)flag / <flag|str|option> <description>"
set black(say.es.man.614) "\[MAN\] \002%char%set\002 global <flag|str|option> <description> (setting for all channels)"
set black(say.es.man.615) "\[MAN\] Ejemplo: \002%char%set\002 chanmode +k <key> (configuración de clave)"

#Jump

set black(say.es.man.620) "\[MAN\] \002Jump\002 cambia a qué servidor está conectado tu eggdrop."
set black(say.es.man.621) "\[MAN\] SINTAXIS:"
set black(say.es.man.622) "\[MAN\] \002%char%jump\002 <irc server> ; \002%botnick% jump\002 <irc server> ; \002(PRIVMSG) jump\002 <irc server>"

#msg

set black(say.es.man.623) "\[MAN\] \002MSG\002 envía <Mensaje> específico a \[Objetivo\] (canal, consulta o mensaje privado)."
set black(say.es.man.624) "\[MAN\] SINTAXIS:"
set black(say.es.man.625) "\[MAN\] \002%char%msg\002 \[Objetivo\] <Mensaje> ; \002%botnick% msg\002 \[Objetivo\] <Mensaje> ; \002(PRIVMSG) msg\002 \[Objetivo\] <Mensaje>"

#Broadcast

set black(say.es.man.626) "\[MAN\] \002Broadcast\002 le permite enviar mensajes a todos los canales en los que se encuentra el eggdrop."
set black(say.es.man.627) "\[MAN\] SINTAXIS:"
set black(say.es.man.628) "\[MAN\] \002%char%broadcast\002 <Mensaje> ; \002%botnick% broadcast\002 <Mensaje> ; \002(PRIVMSG) broadcast\002 <Mensaje>"

#Ignore

set black(say.es.man.629) "\[MAN\] \002Ignore\002 le permite agregar, enumerar y eliminar \002ignores\002 de su eggdrop. Si no especifica una \002\[duración\]\002, se utilizará el valor predeterminado."
set black(say.es.man.629_1) "\[MAN\] Duración del formato: <X>\002m\002 = minutos, <X>\002h\002 = horas, <X>\002d\002 = días"
set black(say.es.man.630) "\[MAN\] SINTAXIS:"
set black(say.es.man.631) "\[MAN\] \002%char%ignore list\002 ; \002%char%ignore add\002 <ip|mask> \[duración\] \[razón\] ; \002%char%ignore del\002 <ip|host>"

#Chat

set black(say.es.man.632) "\[MAN\] \002Chat\002 te permite conectarte a la botnet de tu eggdrop (igual que \002/CTCP CHAT\002 %botnick%)."
set black(say.es.man.633) "\[MAN\] SINTAXIS:"
set black(say.es.man.634) "\[MAN\] \002%char%chat\002 ; %botnick% chat ; \002(PRIVMSG) chat\002"

#Channels

set black(say.es.man.638) "\[MAN\] \002Channels\002 le permite ver todos los canales a los que se une su eggdrop."
set black(say.es.man.639) "\[MAN\] SINTAXIS:"
set black(say.es.man.640) "\[MAN\] \002%char%channels\002 ; %botnick% channels ; \002(PRIVMSG) channels\002"

#Nick

set black(say.es.man.641) "\[MAN\] \002Nick\002 le permite cambiar el NiCK de su eggdrop."
set black(say.es.man.642) "\[MAN\] SINTAXIS:"
set black(say.es.man.643) "\[MAN\] \002%char%nick\002 <newnick> ; \002%botnick% nick\002 <newnick> ; \002(PRIVMSG) nick\002 <newnick>"
set black(say.es.man.643_1) "\[MAN\] \002%char%set\002 nick <newnick> ; \002%botnick% set nick\002 <newnick> ; \002(PRIVMSG) set nick\002 <newnick> (ajuste permanente)"

#Restart 

set black(say.es.man.644) "\[MAN\] \002Restart\002 le permite reiniciar eggdrop como un proceso en segundo plano en el servidor de shell."
set black(say.es.man.645) "\[MAN\] SINTAXIS:"
set black(say.es.man.646) "\[MAN\] \002%char%restart\002 ; %botnick% restart ; \002(PRIVMSG) restart\002"
set black(say.es.man.647) "\[MAN\] ** Note: This command is mainly used if the bot is abnormally lagged or malfunctioning. **"

#Rehash

set black(say.es.man.648) "\[MAN\] \002Rehash\002 hace que el bot vuelva a cargar todos los archivos cada vez que se realizan cambios en los registros de usuario o canal de eggdrop."
set black(say.es.man.649) "\[MAN\] SINTAXIS:"
set black(say.es.man.650) "\[MAN\] \002%char%rehash\002 ; %botnick% rehash ; \002(PRIVMSG) rehash\002"

#Die

set black(say.es.man.651) "\[MAN\] \002Die\002 envía una señal de apagado a tu eggdrop."
set black(say.es.man.652) "\[MAN\] SINTAXIS:"
set black(say.es.man.653) "\[MAN\] \002%char%die\002 ; %botnick% die ; \002(PRIVMSG) die\002"

#Suspend

set black(say.es.man.654) "\[MAN\] \002Suspend\002 suspende un canal de la base de datos de canales de eggdrop. Esto evita que su bot se una al canal o actúe en él."
set black(say.es.man.655) "\[MAN\] SINTAXIS:"
set black(say.es.man.656) "\[MAN\] \002%char%suspend\002 <#chan> \[razón\] ; \002%botnick% suspend\002 <#chan> \[razón\] ; \002(PRIVMSG) suspend\002 <#chan> \[razón\]"

#unSuspend

set black(say.es.man.657) "\[MAN\] \002unSuspend\002 cancela la suspensión de un canal de su base de datos de canales eggdrop. Esto permite que su bot se una al canal y actúe en él."
set black(say.es.man.658) "\[MAN\] SINTAXIS:"
set black(say.es.man.659) "\[MAN\] \002%char%unsuspend\002 <#chan> ; \002%botnick% unsuspend\002 <#chan> ; \002(PRIVMSG) unsuspend\002 <#chan>"

#Save

set black(say.es.man.660) "\[MAN\] \002Save\002 guarda los cambios cada vez que se realiza un cambio en cualquiera de los canales o archivos de usuario."
set black(say.es.man.661) "\[MAN\] SINTAXIS:"
set black(say.es.man.662) "\[MAN\] \002%char%save\002 ; %botnick% save ; \002(PRIVMSG) save\002"

#AddChan

set black(say.es.man.663) "\[MAN\] \002AddChan\002 agrega un canal a su base de datos de canales eggdrop."
set black(say.es.man.664) "\[MAN\] SINTAXIS:"
set black(say.es.man.665) "\[MAN\] \002%char%addchan\002 <#chan> \[key\] ; \002%botnick% addchan\002 <#chan> \[\key\] ; \002(PRIVMSG) addchan\002 <#chan> \[\key\]\002"
set black(say.es.man.666) "\[MAN\] ** Note: If \002\[key\]\002 is specified eggdrop will join that \002<#chan>\002 using that key. **"

#DelChan

set black(say.es.man.667) "\[MAN\] \002DelChan\002 elimina un canal de su base de datos de canales eggdrop."
set black(say.es.man.668) "\[MAN\] SINTAXIS:"
set black(say.es.man.669) "\[MAN\] \002%char%delchan\002 <#chan> <reason> ; \002%botnick% delchan\002 <#chan> <reason> ; \002(PRIVMSG) delchan\002 <#chan> <reason>"

#Purge

set black(say.es.man.670) "\[MAN\] \002Purge\002 elimina un canal de la base de datos de canales de eggdrop. Esto SOLO puede ser utilizado por un administrador de canales."
set black(say.es.man.671) "\[MAN\] SINTAXIS:"
set black(say.es.man.672) "\[MAN\] \002%char%purge\002 <#chan> <reason> ; \002%botnick% purge\002 <#chan> <reason> ; \002(PRIVMSG) purge\002 <#chan> <reason>"

#AddInfo

set black(say.es.man.676) "\[MAN\] \002AddInfo\002 agregue un mensaje de saludo personalizado para usted. Estará disponible en el comando \002%char%info\002 pero el eggdrop lo dirá cuando te unas al canal."
set black(say.es.man.677) "\[MAN\] SINTAXIS:"
set black(say.es.man.678) "\[MAN\] \002%char%addinfo\002 <text|reset> ; \002%botnick% addinfo\002 <text|reset> ; \002(PRIVMSG) addinfo\002 <text|reset>"

#Invite 

set black(say.es.man.679) "\[MAN\] \002Invite\002 invita a un usuario al canal. El eggdrop debe ser un operador de canal (@)."
set black(say.es.man.680) "\[MAN\] SINTAXIS:"
set black(say.es.man.680) "\[MAN\] \002%char%invite\002 <#chan> <nick> ; \002%botnick% invite\002 <#chan> <nick> ; \002(PRIVMSG) invite\002 <#chan> <nick>"

#Say

set black(say.es.man.681) "\[MAN\] \002Say\002 hace que el eggdrop diga un <Mensaje> específico a un canal."
set black(say.es.man.682) "\[MAN\] SINTAXIS:"
set black(say.es.man.683) "\[MAN\] %char%say\002 \[#chan\] <Mensaje> ; \002%botnick% say\002 \[#chan\] <Mensaje> ; \002(PRIVMSG) say\002 <#chan> <Mensaje>"

#Refresh

set black(say.es.man.684) "\[MAN\] \002Topicrefresh\002 ayuda a mantener el topic de %chan% al volver a aplicar el topic después de un intervalo de tiempo establecido."
set black(say.es.man.685) "\[MAN\] SINTAXIS:"
set black(say.es.man.686) "\[MAN\] \002%char%set\002 (+/-)refresh | \002%botnick% set\002 (+/-)refresh ; \002(PRIVMSG) set\002 <#chan> (+/-)refresh"


############################################## MAN NEW MODULES/COMMANDS #####################################################


#NoLogged

set black(say.es.man.687) "\[MAN\] \002NoLogged\002 es una opción adicional para el módulo \002voiceme\002 que permite que el comando \002/msg %botnick% voiceme <#chan>\002 sea utilizado por usuarios sin un nombre de usuario."
set black(say.es.man.688) "\[MAN\] SINTAXIS:"
set black(say.es.man.689) "\[MAN\] \002%char%set\002 (+/-)nologged | \002%botnick% set\002 (+/-)nologged ; \002(PRIVMSG) set\002 <#chan> (+/-)nologged"

#Colors

set black(say.es.man.771) "\[MAN\] \002Colors\002 permite a los usuarios establecer ciertos \002colores\002 personales (de la lista de colores) para las respuestas de eggdrop."
set black(say.es.man.772) "\[MAN\] Colors list: bold, underline, red, blue, green, yellow, orange, cyan, grey, brown, purple, pink, black"
set black(say.es.man.773) "\[MAN\] SINTAXIS:"
set black(say.es.man.774) "\[MAN\] \002%char%myset\002 colors <color1 color2 color3 color4> ; \002%botnick% myset\002 colors <color1 color2 color3 color4> ; \002(PRIVMSG) myset\002 colors <color1 color2 color3 color4>"

#ReportNick

set black(say.es.man.775) "\[MAN\] \002ReportNick\002 es un comando que permite a los usuarios habituales del canal informar un NiCK específico para hacer anuncios o enviar mensajes no deseados (también los niveles de acceso \002voice\002 y \002protect\002 pueden usarlo)."
set black(say.es.man.776) "\[MAN\] ** Note: If you want this command to work, the eggdrop must be opped (@) on channel (uses @onotice to inform the channel operators). **"
set black(say.es.man.777) "\[MAN\] SINTAXIS:"
set black(say.es.man.778) "\[MAN\] \002%char%set\002 (+/-)reportnick ; \002%botnick% set\002 (+/-)reportnick ; \002(PRIVMSG) set\002 <#chan> (+/-)reportnick"
set black(say.es.man.779) "\[MAN\] \002%char%report\002 <nick> <Comentario> ; \002%botnick% report\002 <nick> <Comentario> ; \002(PRIVMSG) report\002 <#chan> <nick> <Comentario>"

#InviteBan

set black(say.es.man.780) "\[MAN\] \002InviteBan\002 prohíbe a los usuarios que intenten invitar el eggdrop a canales no autorizados."
set black(say.es.man.781) "\[MAN\] SINTAXIS:"
set black(say.es.man.782) "\[MAN\] \002%char%set\002 (+/-)inviteban ; \002%botnick% set\002 (+/-)inviteban ; \002(PRIVMSG) set\002 <#chan> (+/-)inviteban"
set black(say.es.man.783) "\[MAN\] Configuraciones opcionales \002inviteban-reason\002 (razón por defecto); \002inviteban-bantime\002 (default bantime)"

#BadHost

set black(say.es.man.784) "\[MAN\] \002BadHost\002 prohíbe a los usuarios que usan IP/vhosts que contienen \"malas\" palabras específicas (admite comodines)."
set black(say.es.man.785) "\[MAN\] SINTAXIS:"
set black(say.es.man.786) "\[MAN\] \002%char%set\002 (+/-)badhost ; \002%botnick% set\002 (+/-)badhost ; \002(PRIVMSG) set\002 <#chan> (+/-)badhost"
set black(say.es.man.787) "\[MAN\] \002%char%badhost\002 \[#chan\] add <ip|mask> ; \002%char%badhost \[#chan\] list\002 ; \002%char%badhost \[#chan\] del <no. list>\002"
set black(say.es.man.787_1) "\[MAN\] \002%char%badhost \[#chan\] add <+word> (add exception) ; \002%char%badhost\002 \[#chan\] del <no. list> (delete a badhost from list)"
set black(say.es.man.788) "\[MAN\] Configuraciones opcionales \002badhost-reason\002; badhost-bantime; \002badhost-bmethod\002"

#NickFlood

set black(say.es.man.789) "\[MAN\] \002NickFlood\002 prohíbe a los usuarios cambiar sus NiCK's con demasiada frecuencia dentro de un cierto período de tiempo."
set black(say.es.man.790) "\[MAN\] SINTAXIS:"
set black(say.es.man.791) "\[MAN\] \002%char%set\002 (+/-)nickflood ; \002%botnick% set\002 (+/-)nickflood ; \002(PRIVMSG) set\002 <#chan> (+/-)nickflood"
set black(say.es.man.792) "\[MAN\] Configuraciones opcionales \002nickflood-reason\002; nickflood-bantime; \002nickflood-warn\002; nickflood-repeat; \002nickflood-banmethod\002; nickflood-banmask"

#SecureMode

set black(say.es.man.793) "\[MAN\] \002SecureMode\002 evita la inundación de join/part desde las botnets (los usuarios con acceso se ignoran en estas comprobaciones). Este módulo está hecho específicamente para Undernet."
set black(say.es.man.794) "\[MAN\] ** Nota: solo funciona con los modos de canal \002+Dm\002 y se basa en un sistema que genera un código único para cada usuario que se une al canal, que debe confirmarse solo una vez (la primera vez que se une) si desea que se les permita para unirse al canal. **"
set black(say.es.man.795) "\[MAN\] SINTAXIS:"
set black(say.es.man.796) "\[MAN\] \002%char%set\002 (+/-)securemode ; \002%botnick% set\002 (+/-)securemode ; \002(PRIVMSG) set <#chan> (+/-)securemode\002"
set black(say.es.man.797) "\[MAN\] \002%char%securemode add\002 <ip|mask> (supports wildcards) ; \002%char%securemode del\002 <no. list> ; \002%char%securemode list\002"

#VoiceMe

set black(say.es.man.820) "\[MAN\] \002VoiceMe\002 da a los usuarios registrados con \002*X*\002, la capacidad de tener \002voice (+v)\002 simplemente usando el comando \002/msg %botnick% voiceme <#chan>\002 (ver también \002%char%man onlyonmode\002 y \002%char%man nologged\002)."
set black(say.es.man.821) "\[MAN\] SINTAXIS:"
set black(say.es.man.822) "\[MAN\] \002%char%set\002 (+/-)voiceme ; \002%botnick% set\002 (+/-)voiceme ; \002(PRIVMSG) set\002 <#chan> (+/-)voiceme"
set black(say.es.man.823) "Ver configuración de opciones: \002%char%show\002 <ajuste> ; \002%botnick% show\002 <ajuste> ; \002(PRIVMSG) show\002 <#chan> <ajuste>"

#OnlyOnMode

set black(say.es.man.824) "\[MAN\] \002OnlyOnMode\002 es una opción adicional para el módulo \002voiceme\002 que permite que el comando \002/msg %botnick% voiceme <#chan>\002 se use SOLO cuando \002mode +m\002 está configurado en el canal."
set black(say.es.man.825) "\[MAN\] ** Nota: También enviará un mensaje específico al canal para que todos los usuarios sepan que si están registrados y registrados en \002*X*\002 pueden usar el comando anterior para recibir \002voice (+v)\002 en ese canal. Si no tienen un \002CService Username\002, se les indicará en el mensaje dónde pueden ir para registrar uno. **"
set black(say.es.man.826) "\[MAN\] \002Recuerda\002: esta opción adicional funciona SOLO con el módulo \002voiceme\002 y en los canales \002+m\002 (moderados) (ver también \002%char%man voiceme\002)."
set black(say.es.man.827) "\[MAN\] SINTAXIS:"
set black(say.es.man.828) "\[MAN\] \002%char%set\002 (+/-)onlyonmode ; \002%botnick% set\002 (+/-)onlyonmode ; \002(PRIVMSG) set\002 <#chan> (+/-)onlyonmode"

#BanStats

set black(say.es.man.834) "\[MAN\] \002BanStats\002 permite que eggdrop mantenga estadísticas de cada patada y prohibición dada en un canal específico."
set black(say.es.man.835) "\[MAN\] SINTAXIS:"
set black(say.es.man.836) "\[MAN\] \002%char%set\002 (+/-)banstats ; \002%botnick% set\002 (+/-)banstats ; \002(PRIVMSG) set\002 <#chan> (+/-)banstats"
set black(say.es.man.837) "\[MAN\] \002%char%banstats\002 <total|reset> ; \002%botnick% banstats\002 <total|reset> ; \002(PRIVMSG) banstats\002 <#chan> <total|reset>\002"

#CP

set black(say.es.man.842) "\[MAN\] \002cp\002 le permite copiar la configuración de un canal a otro canal, incluida la lista de usuarios, la lista de prohibición y los badchans."
set black(say.es.man.843) "\[MAN\] SINTAXIS:"
set black(say.es.man.844) "\[MAN\] %char%cp\002 <option> <#chan1> <#chan2> ; \002%botnick% cp\002 <option> <#chan1> <#chan2> ; \002(PRIVMSG) cp\002 <option> <#chan1> <#chan2>"
set black(say.es.man.845) "\[MAN\] As \002<options>\002 you have: \002<userlist>\002 (copy channel userlist); \002<banlist>\002 (copy channel banlist); \002<settings>\002 (copy channel settings); \002<badchans>\002 (copy badchans list)"

#VoiceOnMsg 

set black(say.es.man.846) "\[MAN\] \002VoiceOnMsg\002 da voz a los usuarios que han dicho un cierto número de líneas en un canal (chateadores activos). Además, los usuarios con acceso están excluidos."
set black(say.es.man.847) "\[MAN\] ** Nota: También absorbe a los usuarios que han estado inactivos durante más de una cierta cantidad de tiempo en el canal (chateadores inactivos). **"
set black(say.es.man.848) "\[MAN\] SINTAXIS:"
set black(say.es.man.849) "\[MAN\] \002%char%set\002 (+/-)voiceonmsg ; \002%botnick% set\002 (+/-)voiceonsmg ; \002(PRIVMSG) set <#chan> (+/-)voiceonsmg"
set black(say.es.man.850) "\[MAN\] Configuraciones opcionales \002%char%set voiceonmsg-linenum\002 <no. lines> (default no. lines) ; \002%char%set voiceonmsg-idletime\002 <duration> (default idle time)"

#Troll

set black(say.es.man.851) "\[MAN\] \002Troll\002 prohíbe a un usuario con un motivo predeterminado \002TROLL\002 (consulte también \002%char%man showtroll\002)."
set black(say.es.man.852) "\[MAN\] SINTAXIS:"
set black(say.es.man.853) "\[MAN\] \002%char%troll\002 <nick> ; \002%botnick% troll\002 <nick> ; \002(PRIVMSG) troll\002 <#chan> <nick>"
set black(say.es.man.854) "\[MAN\] Configuraciones opcionales \002%char%set\002 troll-reason <Texto>; \002(PRIVMSG) set\002 <#chan> troll-reason <Texto> (razón por defecto)"

#vr

set black(say.es.man.856) "\[MAN\] \002vr\002 prohíbe a un usuario con un motivo predeterminado \002VIRUS/TROJANO\002."
set black(say.es.man.857) "\[MAN\] SINTAXIS:"
set black(say.es.man.858) "\[MAN\] \002%char%vr\002 <nick|mask> ; \002%botnick% vr\002 <nick|mask> ; \002(PRIVMSG) vr\002 <#chan> <nick|mask>"
set black(say.es.man.859) "\[MAN\] Configuraciones opcionales \002vr-reason\002 (razón por defecto); \002vr-banmask\002 (banmask predeterminada); \002vr-bantime\002 (default bantime)"
set black(say.es.man.860) "Ver configuración de opciones: \002%char%show\002 <ajuste> ; \002%botnick% show\002 <ajuste> ; \002(PRIVMSG) show\002 <#chan> <ajuste>"

#XOnly

set black(say.es.man.861) "\[MAN\] \002XOnly\002 permite una administración completa del canal a través del bot oficial de Undernet \002*X*\002."
set black(say.es.man.862) "\[MAN\] Eggdrop ejecutará todos los comandos de BlackToolS a través de \002X\002 incluso si no es un operador (@)."
set black(say.es.man.863) "\[MAN\] SINTAXIS:"
set black(say.es.man.864) "\[MAN\] \002%char%set\002 (+/-)xonly ; \002%botnick% set\002 (+/-)xonly ; \002(PRIVMSG) set\002 <#chan> (+/-)xonly"
set black(say.es.man.865) "\[MAN\] Configuraciones opcionales \002xbantime\002 (default X bantime); \002xbanlevel\002 (default X ban level access)"

#AutoTopic

set black(say.es.man.866) "\[MAN\] \002AutoTopic\002 hace que su eggdrop restablezca el topic y la URL del canal cada vez que alguien lo cambie."
set black(say.es.man.867) "\[MAN\] ** Note: Si el canal está inactivo, el tema no se restablecerá durante ese tiempo (inactivo = no se unirán usuarios). **"
set black(say.es.man.868) "\[MAN\] SINTAXIS:"
set black(say.es.man.869) "\[MAN\] \002%char%set\002 (+/-)autotopic ; \002%botnick% set\002 (+/-)autotopic ; \002(PRIVMSG) autotopic\002 <#chan> (+/-)autotopic"
set black(say.es.man.870) "Ver configuración de opciones: \002%char%show\002 <ajuste> ; \002%botnick% show\002 <ajuste> ; \002(PRIVMSG) show\002 <#chan> <ajuste>"

#MySet

set black(say.es.man.871) "\[MAN\] \002MySet\002 es un comando a través del cual cada usuario con acceso puede establecer su propia configuración/información."
set black(say.es.man.872) "\[MAN\] SINTAXIS:"
set black(say.es.man.873) "\[MAN\] \002%char%myset\002 <option> \[description\] <show|reset> ; \002(PRIVMSG) myset\002 <option> \[description\] <show|reset>"
set black(say.es.man.874) "\[MAN\] As \002<option>\002 you have:"
set black(say.es.man.875) "\[MAN\] \002lang\002 <lenguaje> ; \002output\002 <method> ; \002mychar\002 <trigger> ; \002colors\002 <colors> ; \002noteexpire\002 <Periodo> ; \002autoinvite\002 <ON|OFF>"
set black(say.es.man.877) "\[MAN\] \002auto\002 (+/-)v/o (AUTOMODE OP/VOICE) ; \002greet\002 <Mensaje> ; \002mychan\002 <#chan>"
set black(say.es.man.878) "\[MAN\] \002auto\002 (+/-)v/o \[-global\] (AUTOMODE OP/VOICE) ; \002addhost/delhost\002 <host> ; \002handle\002 <new handle> ; \002greet\002 <Mensaje> ; \002mychan\002 <#chan> ; \002notes\002 <ON|OFF>"

#ho

set black(say.es.man.882) "\[MAN\] \002ho\002 da/elimina halfop \002(+h %)\002 a los usuarios específicos."
set black(say.es.man.882_1) "\[MAN\] ** Nota: Si no se especifica ningún nick, y no estás halfopeado en el canal, te doblará a la mitad (rara vez se usa). **"
set black(say.es.man.883) "\[MAN\] SINTAXIS:"
set black(say.es.man.884) "\[MAN\] \002%char%ho\002 <nick1> <nick2> .. ; \002%botnick% ho\002 <nick1> <nick2> .. ; \002(PRIVMSG) ho\002 <#chan> <nick1> <nick2> .."
set black(say.es.man.884_1) "\[MAN\] \002%char%ho +\002 (performs a mass halfop) ; \002%char%ho -\002 (performs a mass halfdeop)"

#r

set black(say.es.man.885) "\[MAN\] \002r\002 manualmente hace que eggdrop actualice/vuelva a cargar el topic del canal (si hay un topic)."
set black(say.es.man.886) "\[MAN\] SINTAXIS:"
set black(say.es.man.887) "\[MAN\] \002%char%r\002 \[#chan\] ; \002%botnick% r\002 \[#chan\] ; \002(PRIVMSG) r\002 <#chan>"

#SeenLastMsg

set black(say.es.man.888) "\[MAN\] \002SeenLastMsg\002 es una información adicional vista que muestra al nick especificado cuál fue su último mensaje para ese canal."
set black(say.es.man.889) "\[MAN\] SINTAXIS:"
set black(say.es.man.890) "\[MAN\] \002%char%set\002 (+/-)seenlastmsg ; \002%botnick% set\002 (+/-)seenlastmsg ; \002(PRIVMSG) set\002 <#chan> (+/-)seenlastmsg"
set black(say.es.man.891) "Ver configuración de opciones: \002%char%show\002 <ajuste> ; \002%botnick% show\002 <ajuste> ; \002(PRIVMSG) show\002 <#chan> <ajuste>"

#Quote

set black(say.es.man.892) "\[MAN\] \002Quote\002 es un sistema de quotes con comandos públicos para agregar, eliminar y mostrar quotes (incluye también una función de búsqueda)."
set black(say.es.man.893) "\[MAN\] SINTAXIS:"
set black(say.es.man.894) "\[MAN\] \002%char%set\002 (+/-)quote ; \002%botnick% set\002 (+/-)quote ; \002(PRIVMSG) set\002 <#chan> (+/-)quote"
set black(say.es.man.895) "\[MAN\] \002%char%q\002 \[#chan\] <Texto> (add quote) ; \002%char%q\002 \[#chan\] <word> (search) ; \002%char%q\002 \[#chan\] <list> ; \002%char%q\002 \[#chan\] del <no. quote>"
set black(say.es.man.896) "\[MAN\] ** Nota: Para agregar más de 1 oración use \002%char%q add \[#chan\] <text1>~<text2>\002.. y eggdrop mostrará las citas como 2 oraciones diferentes. **"
set black(say.es.man.896_2) "\[MAN\] \002%char%set\002 (+/-)quote ; \002%botnick% set\002 (+/-)quote ; \002(PRIVMSG) set\002 <#chan> (+/-)quote ; \002%char%set\002 quote-usage <1/0> ; \002%botnick% set\002 quote-usage <1/0> ; \002(PRIVMSG) set\002 <#canal> quote-usage <1/0> (\0010\001 - todos pueden usar este módulo; \0011\001 - solo usuarios válidos)"

#QuoteOfDay

set black(say.es.man.897) "\[MAN\] \002QuoteOfDay\002 muestra las quotes almacenadas al azar en un intervalo de tiempo específico."
set black(say.es.man.898) "\[MAN\] SINTAXIS:"
set black(say.es.man.899) "\[MAN\] \002%char%set\002 (+/-)quoteofday ; \002%botnick% set\002 (+/-)quoteofday ; \002(PRIVMSG) set\002 <#chan> (+/-)quoteofday"
set black(say.es.man.900) "\[MAN\] Configuraciones opcionales \002%char%set\002 quoteofday-showtime <Periodo> ; \002(PRIVMSG) set\002 <#chan> quoteofday-showtime <Periodo> (<X>\002h\002 = hours ; <X>\002m\002 = minutes)"

#Note

set black(say.es.man.901) "\[MAN\] \002Note\002 permite almacenar notas personales o envíar una nota <Mensaje> a <handle>."
set black(say.es.man.902) "\[MAN\] SINTAXIS:"
set black(say.es.man.903) "\[MAN\] \002%char%set\002 (+/-)note ; \002%botnick% set\002 (+/-)note ; \002(PRIVMSG) set\002 <#chan> (+/-)note"
set black(say.es.man.904) "\[MAN\] \002%char%note\002 send <handle> <Mensaje> ; \002%char%note\002 <read|list|inbox> ; \002%char%note\002 del <no. note|all>"
set black(say.es.man.905) "\[MAN\] ** Nota: Para agregar más de 1 oración use \002%char%note send <user> <message1>~<message2>..\002 y eggdrop mostrará las notas como 2 oraciones diferentes. **"

#bMethod

set black(say.es.man.906) "\[MAN\] \002bMethod\002 (BanMethod) establece la forma en que eggdrop castigará a los usuarios (advertir/patear/prohibir). Esto significa, por primera vez, advertir, luego patear y luego prohibir (si la ofensa se repite)."
set black(say.es.man.907) "\[MAN\] Available banmethods:"
set black(say.es.man.908) "\[MAN\] \002#1\002 warn ; \002#2\002 kick ; \002#3\002 ban ; \002#4\002 warn -> kick ; \002#5\002 warn -> kick -> ban ; \002#6\002 kick -> ban ; \002#7\002 warn -> ban"
set black(say.es.man.909) "\[MAN\] SINTAXIS: \002%char%set\002 <ajuste> <no. method> ; \002%botnick% set\002 <ajuste> <no. method> ; \002(PRIVMSG) set\002 <#chan> <ajuste> <no. method>"
set black(say.es.man.910) "\[MAN\] \002BanMethod\002 (bMethod) establece la forma en que eggdrop castigará a los usuarios (advertir/patear/prohibir). Esto significa, por primera vez, advertir, luego patear y luego prohibir (si la ofensa se repite)."

#BanMask

set black(say.es.man.911) "\[MAN\] \002BanMask\002 establece la forma en que eggdrop manejará las prohibiciones de banmasks."
set black(say.es.man.912) "\[MAN\] Banmasks disponibles:"
set black(say.es.man.913) "\[MAN\] \002#1\002 *!*@host ; \002#2\002 *!user@host ; \002#3\002 nick!user@host ; \002#4\002 nick!*@* ; \002#5\002 *!user@*"
set black(say.es.man.914) "\[MAN\] SINTAXIS: \002%char%set\002 <ajuste> <no. method> ; \002%botnick% set\002 <ajuste> <no. method> ; \002(PRIVMSG) set\002 <#chan> <ajuste> <no. method>"

#Url

set black(say.es.man.916) "\[MAN\] \002Url\002 indica la URL del sitio web del canal (hasta 50 caracteres). La URL se puede ver en \002%char%info <#chan>\002. Si no se especifica ninguna URL, la configuración de URL actual estará vacía."
set black(say.es.man.917) "\[MAN\] SINTAXIS:"
set black(say.es.man.918) "\[MAN\] \002%char%set\002 url \[url(s)\] ; \002%botnick% set\002 url \[url(s)\] ; \002(PRIVMSG) set\002 <#chan> url \[url(s)\]"
set black(say.es.man.919) "\[MAN\] Para mostrar la URL junto a los motivos de prohibición, use: \002%char%set\002 +showurl ; \002%botnick% set\002 +showurl ; \002(PRIVMSG) set\002 <#chan> +showurl"
set black(say.es.man.920) "\[MAN\] Ver configuración de opciones: \002%char%show\002 <ajuste> ; \002%botnick% show\002 <ajuste> ; \002(PRIVMSG) show\002 <#chan> <ajuste>"

#Timer

set black(say.es.man.921) "\[MAN\] \002Timer\002 es un módulo \002PRO\002 que le permite iniciar/detener los temporizadores de procesos o ver la lista de los activos."
set black(say.es.man.921_1) "\[MAN\] \002ATENCIÓN!\002 ¡NO toque este módulo del sistema, a menos que sepa muy bien lo que está haciendo!"
set black(say.es.man.922) "\[MAN\] SINTAXIS:"
set black(say.es.man.923) "\[MAN\] \002%char%timer\002 start \[#chan\] <timer:setting> ; \002%char%timer\002 kill \[#chan\] <pid timer> (from list) ; \002%char%timer\002 list"

#Enable

set black(say.es.man.924) "\[MAN\] \002Enable\002 permite habilitar un comando deshabilitado. Si se usa la opción \002global\002, el comando se habilitará en todos los canales de eggdrop."
set black(say.es.man.924_1) "\[MAN\] \002ATENCIÓN\002: The global activation option is available only for commands, not for users."
set black(say.es.man.925) "\[MAN\] SINTAXIS:"
set black(say.es.man.926) "\[MAN\] \002%char%enable\002 \[#chan\] <command|all> \[user\] \[global\] ; \002(PRIVMSG) enable\002 <#chan> <command|all> \[user\] \[global\]"

#Disable

set black(say.es.man.927) "\[MAN\] \002Disable\002 permite deshabilitar un comando dado. Si se usa la opción \002global\002, el comando se deshabilitará en todos los canales de eggdrop."
set black(say.es.man.927_1) "\[MAN\] \002ATENCIÓN\002: The global deactivation option is available only for commands, not for users."
set black(say.es.man.928) "\[MAN\] SINTAXIS:"
set black(say.es.man.929) "\[MAN\] \002%char%disable\002 \[#chan\] <command|all> \[user\] \[global\] ; \002(PRIVMSG) disable\002 <#chan> <command|all> \[user\] \[global\]"

#Stats

set black(say.es.man.930) "\[MAN\] \002Stats\002 muestra información estadística sobre las prohibiciones de un usuario específico y los comandos utilizados."
set black(say.es.man.930_1) "\[MAN\] Para obtener información sobre \002cualquier actividad del usuario\002, consulte: \002%char%man stats\002"
set black(say.es.man.931) "\[MAN\] SINTAXIS:"
set black(say.es.man.932) "\[MAN\] \002%char%stats\002 \[#chan>\] <handle> \[total\] ; \002%botnick% stats\002 \[#chan>\] <handle> \[total\] ; \002(PRIVMSG) stats\002 \[#chan>\] <handle> \[total\]"
set black(say.es.man.932_1) "\[MAN\] \002%char%stats\002 \[#chan>\] <handle> \[total|reset\] ; \002(PRIVMSG) stats\002 \[#chan>\] <handle> \[total|reset\]"

#Output

set black(say.es.man.933) "\[MAN\] \002Output\002 especifica cómo responderá eggdrop a su mensaje o comandos de canal (métodos: CHAN|NOTICE)."
set black(say.es.man.934) "\[MAN\] SINTAXIS:"
set black(say.es.man.935) "\[MAN\] \002%char%myset output\002 <method> ; \002(PRIVMSG) myset output\002 <method>"

#GreetLine

set black(say.es.man.936) "\[MAN\] \002GreetLine\002 establece una línea de saludo (información) de unión. Esto se muestra a través de \002%char%info\002 y/o cada vez que se une a un canal (el segundo solo funciona si \002+greet\002 está habilitado)."
set black(say.es.man.937) "\[MAN\] SINTAXIS:"
set black(say.es.man.938) "\[MAN\] \002%char%myset greet\002 <text|reset> ; \002%botnick% myset\002 greet <text|reset> ; \002(PRIVMSG) myset greet\002 <text|reset> (\002reset\002 elimina su línea de saludo (información)."

#UnSet

set black(say.es.man.939) "\[MAN\] \002UnSet\002 desarmar/restablecer configuraciones/opciones específicos (banderas)."
set black(say.es.man.940) "\[MAN\] SINTAXIS:"
set black(say.es.man.941) "\[MAN\] %char%unset\002 <flag|str|option> ; \002%botnick% unset\002 <flag|str|option> ; \002(PRIVMSG) unset\002 <#chan> <flag|str|option>"
set black(say.es.man.942) "\[MAN\] \002%char%unset\002 global <flag|str|option> (unset on all channels)"
set black(say.es.man.943) "\[MAN\] Ver configuración de opciones: \002%char%show\002 <ajuste> ; \002%botnick% show\002 <ajuste> ; \002(PRIVMSG) show\002 <#chan> <ajuste>"

#NextShortCmd

set black(say.es.man.944) "\[MAN\] \002NextShortCmd\002 la versión abreviada del \002siguiente módulo\002 utilizada en los canales de ayuda que le permite ayudar a los usuarios que necesitan ayuda."
set black(say.es.man.945) "\[MAN\] SINTAXIS:"
set black(say.es.man.946) "\[MAN\] \002%char%set\002 (+/-)nextshortcmd ; \002%botnick% set\002 (+/-)next nextshortcmd ; \002(PRIVMSG) set\002 (+/-)next nextshortcmd"
set black(say.es.man.947) "\[MAN\] Commands: \002%char%n\002 (voice next user) ; \002%char%n\002 list (show waiting list) ; \002%char%h\002 <nick> (helped); \002%char%b\002 <nick> (noidle ban); \002%char%skip\002 <nick> (pasando al final de la lista)"

#AutoInvite

set black(say.es.man.948) "\[MAN\] \002AutoInvite\002 cuando está prohibido, el eggdrop te invitará a ese canal, ahorrándote la molestia de usar \002/msg X invite #chan\002 tú mismo."
set black(say.es.man.949) "\[MAN\] SINTAXIS:"
set black(say.es.man.950) "\[MAN\] \002%char%myset autoinvite\002 <#chan> <ON|OFF> ; \002%botnick% autoinvite\002 <#chan> <ON|OFF> ; \002(PRIVMSG) <#chan> autoinvite\002 <#chan> <ON|OFF>"

#Show

set black(say.es.man.952) "\[MAN\] \002Show\002 le permite ver los valores de cada configuración."
set black(say.es.man.953) "\[MAN\] SINTAXIS:"
set black(say.es.man.954) "\[MAN\] \002%char%show\002 <ajuste> ; \002%botnick% show\002 <ajuste> ; \002(PRIVMSG) show\002 <#chan> <ajuste>"

#Link

set black(say.es.man.955) "\[MAN\] \002ChanLink\002 permite la sincronización de todos los módulos de protección en 2 o más canales al mismo tiempo."
set black(say.es.man.956) "\[MAN\] ** Nota: Una vez habilitado, el eggdrop agregará la misma prohibición de un canal dado simultáneamente a todos los demás canales y viceversa (funciona solo entre canales vinculados, no los demás). **"
set black(say.es.man.957) "\[MAN\] SINTAXIS:"
set black(say.es.man.958) "\[MAN\] \002%char%link\002 <#chan1> <#chan2> / <all> ; \002%char%link del\002 <#chan> ; \002%char%link <list|reset>\002"
set black(say.es.man.958_1) "\[MAN\] También funciona así: \002%char%b\002 <nick|mask> \[duración\] link \[razón\] ; \002%char%ub\002 <nick|mask> link"

#AccessOnly

set black(say.es.man.959) "\[MAN\] \002AccessOnly\002 es una opción adicional para el módulo \002topwords\002 que restringe su funcionamiento solo a los usuarios que tienen acceso a eggdrop."
set black(say.es.man.960) "\[MAN\] ** Nota: Si esta opción adicional no está habilitada, el módulo \002topwords\002 funcionará para todos los usuarios del canal (tanto para aquellos con acceso como para otros). **"
set black(say.es.man.961) "\[MAN\] SINTAXIS:"
set black(say.es.man.962) "\[MAN\] \002%char%set\002 (+/-)accessonly ; \002%botnick% set\002 (+/-)accessonly ; \002(PRIVMSG) set\002 <#chan> (+/-)accessonly"
set black(say.es.man.963) "\[MAN\] Ver configuración de opciones: \002%char%show\002 <ajuste> ; \002%botnick% show\002 <ajuste> ; \002(PRIVMSG) show\002 <#chan> <ajuste>"

#SeenReply

set black(say.es.man.964) "\[MAN\] \002SeenReply\002 es una opción adicional para el módulo \002seen\002 que hará que el eggdrop envíe un mensaje de información al usuario que acaba de buscar con \002%char%seen\002 comando."
set black(say.es.man.965) "\[MAN\] ** Nota: Este mensaje de información incluye información sobre la persona que lo buscó, así como la fecha, hora o canal donde se usó el comando \002%char%seen\002. **"
set black(say.es.man.966) "\[MAN\] SINTAXIS:"
set black(say.es.man.967) "\[MAN\] \002%char%set\002 (+/-)seenreply ; \002%botnick% set\002 (+/-)seenreply ; \002(PRIVMSG) set\002 <#chan> (+/-)seenreply"

#SpamJoinMessage

set black(say.es.man.968) "\[MAN\] \002SpamJoinMessage\002 es una opción adicional para el módulo de protección \002antispam\002 que hace que eggdrop envíe un mensaje de verificación privado, que contiene un texto predefinido, a cada usuario que se une al canal."
set black(say.es.man.969) "\[MAN\] SINTAXIS:"
set black(say.es.man.970) "\[MAN\] \002%char%set\002 (+/-)spamjoinmessage ; \002%botnick% set\002 (+/-)spamjoinmessage ; \002(PRIVMSG) set\002 <#chan> (+/-)spamjoinmessage"
set black(say.es.man.971) "\[MAN\] \002%char%set\002 antispam-message <Mensaje> ; \002%botnick% set\002 antispam-message <Mensaje> ; \002(PRIVMSG) set\002 <#chan> <Mensaje> (default join message)"
set black(say.es.man.972) "\[MAN\] Ver configuración de opciones: \002%char%show\002 <ajuste> ; \002%botnick% show\002 <ajuste> ; \002(PRIVMSG) show\002 <#chan> <ajuste>"

#StrictSecured

set black(say.es.man.973) "\[MAN\] \002StricSecured\002 es una opción adicional para el módulo de protección \ 002securemode \ 002 creado para evitar inundaciones de join/part de botnets."
set black(say.es.man.974) "\[MAN\] ** Nota: Una vez habilitada, esta opción adicional generará un código único para cada usuario que se una al canal y cada vez que se vuelva a unir, que debe confirmarse, cada vez, si desea que se le permita unirse al canal. **"
set black(say.es.man.975) "\[MAN\] SINTAXIS:"
set black(say.es.man.976) "\[MAN\] \002%char%set\002 (+/-)strictsecured ; \002%botnick% set\002 (+/-)strictsecured ; \002(PRIVMSG) set\002 <#chan> (+/-)strictsecured"

#NoteExpire

set black(say.es.man.977) "\[MAN\] \002NoteExpire\002 es una opción adicional para el módulo \002note\002 por el cual cada usuario puede establecer un período de tiempo predeterminado para el vencimiento de las notas (eliminación automática de la base de datos)."
set black(say.es.man.977_1) "\[MAN\] Periodo de formato: <X>\002d\002 = días ; <X>\002h\002 = horas"
set black(say.es.man.978) "\[MAN\] SINTAXIS:"
set black(say.es.man.979) "\[MAN\] \002%char%myset\002 noteexpire <Periodo> ; \002%botnick% myset\002 noteexpire <Periodo> ; \002(PRIVMSG) myset\002 noteexpire <Periodo>"

#MyChan

set black(say.es.man.980) "\[MAN\] \002MyChan\002 permite a cada usuario establecer un \002base channel\002 (mychan) para el cual, cuando envía comandos a eggdrop a través de PRIVMSG, ya no es necesario especificar un <#channel>, eggdrop aplica automáticamente comandos directamente a \002mychan\002."
set black(say.es.man.981) "\[MAN\] SINTAXIS:"
set black(say.es.man.982) "\[MAN\] \002%char%myset\002 mychan <#chan> ; \002%botnick% myset\002 mychan <#chan> ; \002(PRIVMSG) myset\002 mychan <#chan>"

#Invisible

set black(say.es.man.983) "\[MAN\] \002Invisible\002 alterna la configuración de invisibilidad para un canal, esto significa que el canal ya no aparecerá en la lista de canales de eggdrop."
set black(say.es.man.984) "\[MAN\] SINTAXIS:"
set black(say.es.man.985) "\[MAN\] \002%char%set\002 (+/-)invisible ; \002%botnick% set\002 (+/-)invisible ; \002(PRIVMSG) set\002 <#chan> (+/-)invisible"
set black(say.es.man.986) "\[MAN\] Ver configuración de opciones: \002%char%show\002 <ajuste> ; \002%botnick% show\002 <ajuste> ; \002(PRIVMSG) show\002 <#chan> <ajuste>"

#MyChar

set black(say.es.man.987) "\[MAN\] \002MyChar\002 permite a cada usuario elegir y establecer un \002trigger\002 predeterminado al que desea que reaccione el eggdrop."
set black(say.es.man.988) "\[MAN\] SINTAXIS:"
set black(say.es.man.989) "\[MAN\] \002%char%myset\002 mychar <trigger> ; \002%botnick% myset\002 mychar <trigger> ; \002(PRIVMSG) myset\002 mychar <trigger>"

#Omsg

set black(say.es.man.1207) "\[MAN\] \002Omsg\002 envía un mensaje específico a todos los usuarios con \002OP (@/&)\002 en un canal."
set black(say.es.man.1208) "\[MAN\] SINTAXIS:"
set black(say.es.man.1209) "\[MAN\] %char%omsg\002 <#chan|all> <Texto> ; \002%botnick% omsg\002 <#chan|all> <Texto> ; \002(PRIVMSG) omsg\002 <#chan|all> <Texto>"

#ShowBadChan

set black(say.es.man.1210) "\[MAN\] \002ShowBadChan\002 es una opción adicional para el módulo \002BadChan\002 que envía un mensaje a todos los usuarios con \002OP (@/&)\002 sobre el usuario prohibido y los canales prohibidos en los que se encontró."
set black(say.es.man.1211) "\[MAN\] SINTAXIS:"
set black(say.es.man.1212) "\[MAN\] \002%char%set\002 (+/-)showbadchan ; \002%botnick% set\002 (+/-)showbadchan ; \002(PRIVMSG) set\002 <#chan> (+/-)showbadchan"
set black(say.es.man.1213) "Ver configuración de opciones: \002%char%show\002 <ajuste> ; \002%botnick% show\002 <ajuste> ; \002(PRIVMSG) show\002 <#chan> <ajuste>"

#ShowTroll

set black(say.es.man.1214) "\[MAN\] \002ShowTroll\002 es una opción adicional para el comando \002Troll\002 que, una vez activado, hace que Eggdrop muestre una lista de mensajes de aviso de los trolls actuales del día, cuando los usuarios con acceso se unen al canal (la lista se restablece todos los días a medianoche)."
set black(say.es.man.1215) "\[MAN\] SINTAXIS:"
set black(say.es.man.1216) "\[MAN\] \002%char%set\002 (+/-)showtroll ; \002%botnick% set\002 (+/-)showtroll ; \002(PRIVMSG) set\002 <#chan> (+/-)showtroll"
set black(say.es.man.1217) "Ver configuración de opciones: \002%char%show\002 <ajuste> ; \002%botnick% show\002 <ajuste> ; \002(PRIVMSG) show\002 <#chan> <ajuste>"

#Forward

set black(say.es.man.1218) "\[MAN\] \002Forward\002's mensajes privados recibidos por eggdrop a un canal específico (excepto mensajes privados de usuarios con acceso)."
set black(say.es.man.1219) "\[MAN\] SINTAXIS:"
set black(say.es.man.1220) "\[MAN\] \002%char%set\002 (+/-)forward ; \002%botnick% set\002 (+/-)forward ; \002(PRIVMSG) set\002 <#chan> (+/-)forward"

#ExpireBans

set black(say.es.man.1221) "\[MAN\] \002ExpireBans\002 establece el período de tiempo predeterminado después del cual se eliminarán todas las prohibiciones de un canal. Si esta configuración se establece en \0020\002, el eggdrop nunca eliminará las prohibiciones."
set black(say.es.man.1222) "\[MAN\] Periodo de formato: <X>\002h\002 = horas ; <X>\002m\002 = minutos"
set black(say.es.man.1223) "\[MAN\] SINTAXIS:"
set black(say.es.man.1224) "\[MAN\] \002%char%set\002 expirebans <Periodo> ; \002%botnick% set\002 expirebans <Periodo> ; \002(PRIVMSG) set\002 <#chan> expirebans <Periodo>"
set black(say.es.man.1225) "Ver configuración de opciones: \002%char%show\002 <ajuste> ; \002%botnick% show\002 <ajuste> ; \002(PRIVMSG) show\002 <#chan> <ajuste>"

#mb

set black(say.es.man.1226) "\[MAN\] \002mb\002 prohíbe un NiCK dado automáticamente en \001IDENT\001 con un motivo dado."
set black(say.es.man.1227) "\[MAN\] SINTAXIS:"
set black(say.es.man.1228) "\[MAN\] \002%char%mb\002 <nick> \[razón\] ; \002%botnick% mb\002 <nick> \[razón\] ; \002(PRIVMSG) mb\002 <#chan> <nick> \[razón\]"
set black(say.es.man.1229) "\[MAN\] Configuraciones opcionales \002mb-reason\002 (razón por defecto); \002mb-bantime\002 (tiempo de ban predeterminado)"


################################################# MAN EGG #####################################################


#Egg

set black(say.es.man.990) "\[MAN\] \002Egg\002 le permite configurar algunas opciones desde la estructura de archivo \002.conf\002 de eggdrop."
set black(say.es.man.991) "\[MAN\] SINTAXIS:"
set black(say.es.man.992) "\[MAN\] \002%char%set\002 <option> <ajuste> ; \002%botnick% set\002 <option> <ajuste> ; \002(PRIVMSG) set\002 <option> <ajuste>"

#Egg CmdChar

set black(say.es.man.994) "\[MAN\] \002CmdChar\002 establece el \002trigger\002 predeterminado al que desea que reaccione el eggdrop (puede agregar más de un cmdchar)."
set black(say.es.man.995) "\[MAN\] SINTAXIS:"
set black(say.es.man.996) "\[MAN\] \002%char%set cmdchar\002 <trigger1 trigger2 ..> ; \002%botnick% set cmdchar\002 <trigger1 trigger2 ..> ; \002(PRIVMSG) set cmdchar\002 <trigger1 trigger2 ..>"

#Egg DefaultLang

set black(say.es.man.998) "\[MAN\] \002DefaultLang\002 establece el idioma predeterminado del script BlackToolS."
set black(say.es.man.998_1) "\[MAN\] Available languages: \002RO\002 = ROMANIAN ; \002EN\002 = ENGLISH"
set black(say.es.man.999) "\[MAN\] SINTAXIS:"
set black(say.es.man.1100) "\[MAN\] \002%char%set defaultlang\002 <lenguaje> ; \002%botnick% set defaultlang\002 <lenguaje> ; \002(PRIVMSG) set defaultlang\002 <lenguaje>"

#Egg HomeChan

set black(say.es.man.1102) "\[MAN\] \002HomeChan\002 configura el homechan del eggdrop. El eggdrop entrará primero en este canal. Este canal también se utilizará para mostrar todas las prohibiciones, patadas y cualquier tipo de abuso denunciado."
set black(say.es.man.1103) "\[MAN\] ** Nota: este es un canal \002estático\002 (el eggdrop NO purgará/ciclará este canal) y generalmente es un canal privado/secreto. (admite SOLO un canal\002homechan\002). **"
set black(say.es.man.1104) "\[MAN\] SINTAXIS:"
set black(say.es.man.1105) "\[MAN\] \002%char%set homechan\002 <#chan> ; \002%botnick% set homechan\002 <#chan> ; \002(PRIVMSG) set homechan\002 <#chan>"

#Egg RealName

set black(say.es.man.1107) "\[MAN\] \002RealName\002 establece lo que se debe mostrar en el campo \002real-name\002 para el eggdrop en IRC (requiere reinicio)."
set black(say.es.man.1108) "\[MAN\] SINTAXIS:"
set black(say.es.man.1109) "\[MAN\] \002%char%set realname\002 <Texto> ; \002%botnick% set realname\002 <Texto> ; \002(PRIVMSG) set realname\002 <Texto>"

#Egg Away

set black(say.es.man.1111) "\[MAN\] \002Away\002 establece el modo ausente en su eggdrop con <Texto> como mensaje de ausencia cuando se conecta a IRC."
set black(say.es.man.1112) "\[MAN\] SINTAXIS:"
set black(say.es.man.1113) "\[MAN\] \002%char%set away\002 <Mensaje> ; \002%botnick% set away\002 <Mensaje> ; \002(PRIVMSG) set away\002 <Mensaje>"
set black(say.es.man.1113_1) "\[MAN\] \002%char%set away\002; \002%botnick% set away\002; \002(PRIVMSG) set away\002 (disable away)"

#Egg DefaultOutput

set black(say.es.man.1115) "\[MAN\] \002DefaultOutput\002 establece el método predeterminado para recibir mensajes de eggdrop (el método predeterminado se establece a través de \002CHAN\002)."
set black(say.es.man.1115_1) "\[MAN\] Available methods: \0020\002 = NOTICE ; \002 1\002 = CHAN ; \002 2\002 = PRIVMSG"
set black(say.es.man.1116) "\[MAN\] SINTAXIS:"
set black(say.es.man.1117) "\[MAN\] \002%char%set defaultoutput\002 <method> ; \002%botnick% set defaultoutput\002 <method> ; \002(PRIVMSG) set defaultoutput\002 <method>"

#Egg FloodMenuProt

set black(say.es.man.1119) "\[MAN\] \002FloodMenuProt\002 protege el Eggdrop de \002flood\002. Determina cuántos comandos/segundos puede enviar un usuario la gota de huevo antes de que se considere una inundación e ignora todos los comandos de ese usuario durante un corto período de tiempo."
set black(say.es.man.1120) "\[MAN\] SINTAXIS:"
set black(say.es.man.1121) "\[MAN\] \002%char%set floodmenuprot\002 <no. commands:seconds> ; \002%botnick% set floodmenuprot\002 <no. commands:seconds> ; \002(PRIVMSG) set floodmenuprot\002 <no. commands:seconds>"

#Egg UserFloodMsgProt

set black(say.es.man.1123) "\[MAN\] \002UserFloodMsgProt\002 protege el Eggdrop de \002PRIVMSG flood\002. Determina cuántos mensajes PRIVMSG/segundos aceptará el eggdrop antes de que se considere una inundación e ignora todos los mensajes de ese usuario durante un corto período de tiempo."
set black(say.es.man.1124) "\[MAN\] SINTAXIS:"
set black(say.es.man.1125) "\[MAN\] \002%char%set floodmsgprot\002 <no. messages:seconds> ; \002%botnick% set floodmsgprot\002 <no. messages:seconds> ; \002(PRIVMSG) set floodmsgprot\002 <no. messages:seconds>"

#Egg FloodNotcProt

set black(say.es.man.1127) "\[MAN\] \002FloodNotcProt\002 protege el Eggdrop de \002NOTICE flood\002. Determina cuántos mensajes/segundos de AVISO aceptará el eggdrop antes de que se considere una inundación e ignora todos los avisos de ese usuario durante un corto período de tiempo."
set black(say.es.man.1128) "\[MAN\] SINTAXIS:"
set black(say.es.man.1129) "\[MAN\] \002%char%set floodnotcprot\002 <no. notices:seconds> ; \002%botnick% set floodnotcprot\002 <no. notices:seconds> ; \002(PRIVMSG) set floodnotcprot\002 <no. notices:seconds>"

#Egg ChanRemove-Setting

set black(say.es.man.1131) "\[MAN\] \002ChanRemove-Setting\002 una vez activado, elimina todas las configuraciones relacionadas con un canal, cuando ese canal se elimina de la lista de canales del bot. Esto incluye datos como la lista de usuarios de acceso, la lista de prohibición, la base de datos vista, etc."
set black(say.es.man.1131_1) "\[MAN\] \0021\002 = yes ; \0020\002 = no"
set black(say.es.man.1132) "\[MAN\] SINTAXIS:"
set black(say.es.man.1133) "\[MAN\] \002%char%set chanremove-setting\002 <1|0> ; \002%botnick% set chanremove-setting\002 <1|0> ; \002(PRIVMSG) set chanremove-setting\002 <1|0>"

#Egg User-Expire

set black(say.es.man.1135) "\[MAN\] \002User-Expire\002 le permite definir el período de tiempo después de que eggdrop eliminará a los usuarios de la base de datos vista que sean más antiguos que un período de tiempo específico."
set black(say.es.man.1135_1) "\[MAN\] Periodo de formato: <X>\002d\002 = days"
set black(say.es.man.1136) "\[MAN\] SINTAXIS:"
set black(say.es.man.1137) "\[MAN\] \002%char%set user-expire\002 <Periodo> ; \002%botnick% set user-expire\002 <Periodo> ; \002(PRIVMSG) set user-expire\002 <Periodo>"

#Egg PageLimit

set black(say.es.man.1139) "\[MAN\] \002PageLimit\002 establece el \002número predeterminado de entradas por página\002 para todos los módulos que usan la función \002- list - \002."
set black(say.es.man.1140) "\[MAN\] SINTAXIS:"
set black(say.es.man.1141) "\[MAN\] \002%char%set pagelimit\002 <no. entries> ; \002%botnick% set pagelimit\002 <no. entries> ; \002(PRIVMSG) set pagelimit\002 <no. entries>"

#Egg Login

set black(say.es.man.1143) "\[MAN\] \002Login\002 le permite iniciar sesión manualmente su eggdrop en CHaN."
set black(say.es.man.1144) "\[MAN\] SINTAXIS:"
set black(say.es.man.1145) "\[MAN\] \002%char%login\002 ; %botnick% login ; \002(PRIVMSG) login\002"

#Egg Chanserv

set black(say.es.man.1147) "\[MAN\] \002Chanserv\002 establece el \002NiCK predeterminado\002 que utiliza CHaN, dependiendo de la red IRC a la que se conectará el eggdrop."
set black(say.es.man.1148) "\[MAN\] SINTAXIS:"
set black(say.es.man.1149) "\[MAN\] \002%char%set chanserv\002 <chanservnickname> ; \002%botnick% set chanserv\002 <chanservnickname> ; \002(PRIVMSG) set chanserv\002 <chanservnickname>"

#Egg HostChanserv

set black(say.es.man.1151) "\[MAN\] \002HostChanserv\002 establece la \002máscara de host predeterminada\002 que utiliza CHaN dependiendo de la red IRC a la que se conectará el eggdrop."
set black(say.es.man.1152) "\[MAN\] SINTAXIS:"
set black(say.es.man.1153) "\[MAN\] \002%char%set hostchanserv\002 <chanservhostmask> ; \002%botnick% set hostchanserv\002 <chanservhostmask> ; \002(PRIVMSG) set hostchanserv\002 <chanserhostmask>"

#Egg UserLogin

set black(say.es.man.1155) "\[MAN\] \002UserLogin\002 establece el \002NiCK\002 que eggdrop usará para iniciar sesión en CHaN."
set black(say.es.man.1156) "\[MAN\] SINTAXIS:"
set black(say.es.man.1157) "\[MAN\] \002%char%set userlogin\002 <chanservusername> ; \002%botnick% set userlogin\002 <chanservusername> ; \002(PRIVMSG) set userlogin\002 <chanservusername>"

#Egg UserPass

set black(say.es.man.1159) "\[MAN\] \002UserPass\002 establece la \002password\002 que eggdrop usará para iniciar sesión en CHaN."
set black(say.es.man.1160) "\[MAN\] SINTAXIS:"
set black(say.es.man.1161) "\[MAN\] \002%char%set userpass\002 <chanservpassword> ; \002%botnick% set userpass\002 <chanservpassword> ; \002(PRIVMSG) set userpass\002 <chanservpassword>"

#Egg Add-Mask

set black(say.es.man.1163) "\[MAN\] \002Add-Mask\002 establece la máscara de host predeterminada que usará eggdrop cuando se agregue un nuevo usuario con acceso."
set black(say.es.man.1163_1) "\[MAN\] Available hostmasks:"
set black(say.es.man.1163_2) "\[MAN\] \002#1\002 *!*@host ; \002#2\002 *!user@host ; \002#3\002 nick!user@host ; \002#4\002 nick!*@* ; \002#5\002 *!user@*"
set black(say.es.man.1164) "\[MAN\] SINTAXIS:"
set black(say.es.man.1165) "\[MAN\] \002%char%set add-mask\002 <no. hostmask> ; \002%botnick% set add-mask\002 <no. hostmask> ; \002(PRIVMSG) set add-mask\002 <no. hostmask>"

#Egg Add-DefaultMask

set black(say.es.man.1167) "\[MAN\] \002Add-DefaultMask\002 establece la máscara de host predeterminada, como \001*!*@%user%\001, que usará eggdrop cuando se agregue un nuevo usuario con acceso."
set black(say.es.man.1168) "\[MAN\] SINTAXIS:"
set black(say.es.man.1169) "\[MAN\] \002%char%set add-defaultmask\002 <hostmask> ; \002%botnick% set add-defaultmask\002 <hostmask> ; \002(PRIVMSG) set add-defaultmask\002 <hostmask>"

#AntiSpam-ScanTime

set black(say.es.man.1175) "\[MAN\] \002AntiSpam-ScanTime\002 es una opción adicional para el módulo \002antispam\002 que le permite definir el intervalo de tiempo máximo entre cada \002/ciclo\002 que se ejecuta eggdrop para detectar spammers."
set black(say.es.man.1175_1) "\[MAN\] Periodo de formato: <X>\002m\002 = minutos ; <X>\002h\002 = horas"
set black(say.es.man.1176) "\[MAN\] SINTAXIS:"
set black(say.es.man.1177) "\[MAN\] \002%char%set\002 antispam-scantime <Periodo> ; \002%botnick% set\002 antispam-scantime <Periodo> ; \002(PRIVMSG) set\002 antispam-scantime <Periodo>"

#Idle-ScanTime

set black(say.es.man.1179) "\[MAN\] \002Idle-ScanTime\002 es una opción adicional para el módulo \002idle\002 que le permite definir el intervalo de tiempo máximo entre escaneos después de usuarios con \002op (@)\002 o \002voice (+v)\002 que están inactivos."
set black(say.es.man.1179_1) "\[MAN\] Periodo de formato: <X>\002m\002 = minutos ; <X>\002h\002 = horas"
set black(say.es.man.1180) "\[MAN\] SINTAXIS:"
set black(say.es.man.1181) "\[MAN\] \002%set%set\002 idle-scantime <Periodo> ; \002%botnick% set\002 idle-scantime <Periodo> ; \002(PRIVMSG) set\002 idle-scantime <Periodo>"

#CloneScan-ScanTime

set black(say.es.man.1183) "\[MAN\] \002CloneScan-ScanTime\002 es una opción adicional para el módulo \002clonescan\002 que le permite definir el intervalo de tiempo máximo entre exploraciones después de ciertos usuarios que usan clones."
set black(say.es.man.1183_1) "\[MAN\] Periodo de formato: <X>\002m\002 = minutos ; <X>\002h\002 = horas"
set black(say.es.man.1184) "\[MAN\] SINTAXIS:"
set black(say.es.man.1185) "\[MAN\] \002%char%set\002 clonescan-scantime <Periodo> ; \002%botnick% set\002 clonescan-scantime <Periodo> ; \002(PRIVMSG) set\002 clonescan-scantime <Periodo>"

#Broadcast-ShowTime

set black(say.es.man.1187) "\[MAN\] \002Broadcast-ShowTime\002 es una opción adicional para el módulo \002broadcast\002 que le permite definir el intervalo de tiempo máximo entre los mensajes que se transmitirán en el canal."
set black(say.es.man.1187_1) "\[MAN\] Periodo de formato: <X>\002m\002 = minutos ; <X>\002h\002 = horas"
set black(say.es.man.1188) "\[MAN\] SINTAXIS:"
set black(say.es.man.1189) "\[MAN\] \002%char%set\002 broadcast-showtime <Periodo> ; \002%botnick% egg\002 broadcast-showtime <Periodo> ; \002(PRIVMSG) egg\002 broadcast-showtime <Periodo>"

#BadChan-ScanTime

set black(say.es.man.1191) "\[MAN\] \002BadChan-ScanTime\002 es una opción adicional para el módulo \002badchan\002 que le permite definir el intervalo de tiempo máximo entre exploraciones después de ciertos usuarios que se encuentran en canales no permitidos."
set black(say.es.man.1191_1) "\[MAN\] Periodo de formato: <X>\002m\002 = minutos ; <X>\002h\002 = horas"
set black(say.es.man.1192) "\[MAN\] SINTAXIS:"
set black(say.es.man.1193) "\[MAN\] \002%char%set\002 badchan-scantime <Periodo> ; \002%botnick% set\002 badchan-scantime <Periodo> ; \002(PRIVMSG) set\002 badchan-scantime <Periodo>"

#Anunt-ShowTime

set black(say.es.man.1195) "\[MAN\] \002Anunt-ShowTime\002 es una opción adicional para el módulo \002anunt/advert\002 que le permite definir el intervalo de tiempo máximo entre anuncios/anuncios que se mostrarán en el canal."
set black(say.es.man.1195_1) "\[MAN\] Periodo de formato: <X>\002m\002 = minutos ; <X>\002h\002 = horas"
set black(say.es.man.1196) "\[MAN\] SINTAXIS:"
set black(say.es.man.1197) "\[MAN\] \002%char%set\002 anunt-showtime <Periodo> ; \002%botnick% set\002 anunt-showtime <Periodo> ; \002(PRIVMSG) set\002 anunt-showtime <Periodo>"

#QuoteOfDay-ShowTime

set black(say.es.man.1199) "\[MAN\] \002QuoteOfDay-ShowTime\002 es una opción adicional para el módulo \002quote\002 que le permite definir el intervalo de tiempo máximo entre quotes que se mostrará en el canal."
set black(say.es.man.1199_1) "\[MAN\] Periodo de formato: <X>\002m\002 = minutos ; <X>\002h\002 = horas"
set black(say.es.man.1200) "\[MAN\] SINTAXIS:"
set black(say.es.man.1201) "\[MAN\] \002%char%set\002 quoteofday-showtime <Periodo> ; \002%botnick% set\002 quoteofday-showtime <Periodo> ; \002(PRIVMSG) set\002 quoteofday-showtime <Periodo>"

#QuitPartColor

set black(say.es.man.1203) "\[MAN\] \002QuitPartColor\002 es una opción adicional para el módulo \002AntiBadQuitPart\002 que hace que eggdrop tome medidas contra los usuarios que usan palabras *colores* al separar un canal."
set black(say.es.man.1204) "\[MAN\] SINTAXIS:"
set black(say.es.man.1205) "\[MAN\] \002%char%set\002 (+/-)quitpartcolor ; \002%botnick% set\002 (+/-)quitpartcolor ; \002(PRIVMSG) set\002 <#chan> (+/-)quitpartcolor"
set black(say.es.man.1206) "Ver configuración de opciones: \002%char%show\002 <ajuste> ; \002%botnick% show\002 <ajuste> ; \002(PRIVMSG) show\002 <#chan> <ajuste>"

#VoiceMe-ShowTime

set black(say.es.man.1230) "\[MAN\] \002VoiceMe-ShowTime\002 es una opción adicional para el módulo \002Voiceme\002 que le permite definir el intervalo de tiempo máximo entre los mensajes específicos enviados al canal."
set black(say.es.man.1231) "\[MAN\] Periodo de formato: <X>\002m\002 = minutos ; <X>\002h\002 = horas"
set black(say.es.man.1232) "\[MAN\] SINTAXIS:"
set black(say.es.man.1233) "\[MAN\] \002%char%set\002 voiceme-showtime <Periodo> ; \002%botnick% set\002 voiceme-showtime <Periodo> ; \002(PRIVMSG) set\002 voiceme-showtime <Periodo>"

#BadChan-BanWait

set black(say.es.man.1234) "\[MAN\] \002BadChan-BanWait\002 es una opción adicional para el módulo \002BadChan\002 que le permite definir el intervalo de tiempo máximo para que los usuarios dejen los canales prohibidos antes de que se les prohiba la entrada."
set black(say.es.man.1235) "\[MAN\] Periodo de formato: <X>\002s\002 = seconds"
set black(say.es.man.1236) "\[MAN\] SINTAXIS:"
set black(say.es.man.1237) "\[MAN\] \002%char%set\002 badchan-banwait <Periodo> ; \002%botnick% set\002 badchan-banwait <Periodo> ; \002(PRIVMSG) set\002 \[#chan\] badchan-banwait <Periodo>"

#BadNick-BanWait

set black(say.es.man.1238) "\[MAN\] \002Badnick-BanWait\002 es una opción adicional para el módulo \002BadNick\002 que le permite definir el intervalo de tiempo máximo para que los usuarios cambien los nicks incorrectos antes de que sean prohibidos."
set black(say.es.man.1239) "\[MAN\] Periodo de formato: <X>\002s\002 = seconds"
set black(say.es.man.1240) "\[MAN\] SINTAXIS:"
set black(say.es.man.1241) "\[MAN\] \002%char%set\002 badnick-banwait <Periodo> ; \002%botnick% set\002 badnick-banwait <Periodo> ; \002(PRIVMSG) set\002 \[#chan\] badnick-banwait <Periodo>"

#BadNick-BMethod

set black(say.es.man.1242) "\[MAN\] \002BadNick-BMethod\002 es una opción adicional para el módulo \002BadNick\002 que le permite elegir el método de prohibición."
set black(say.es.man.1243) "\[MAN\] Format method:\002 #1\002 - warn message -> ban ;\002 #2\002 - ban"
set black(say.es.man.1244) "\[MAN\] SINTAXIS:"
set black(say.es.man.1245) "\[MAN\] \002%char%set\002 badnick-bmethod <method> ; \002%botnick% set\002 badnick-bmethod <method> ; \002(PRIVMSG) set\002 \[#chan\] badnick-bmethod <method>"

#BadChan-BMethod

set black(say.es.man.1246) "\[MAN\] \002BadChan-BMethod\002 es una opción adicional para el módulo \002BadChan\002 que le permite elegir el método de prohibición."
set black(say.es.man.1247) "\[MAN\] Format method:\002 #1\002 - warn message -> ban ;\002 #2\002 - ban"
set black(say.es.man.1248) "\[MAN\] SINTAXIS:"
set black(say.es.man.1249) "\[MAN\] \002%char%set\002 badchan-bmethod <method> ; \002%botnick% set\002 badchan-bmethod <method> ; \002(PRIVMSG) set\002 \[#chan\] badchan-bmethod <method>"

#RepetitiveChars

set black(say.es.man.1250) "\[MAN\] \002RepetitiveChars\002 prohíbe a los usuarios que usan caracteres repetidos consecutivos."
set black(say.es.man.1251) "\[MAN\] SINTAXIS:"
set black(say.es.man.1252) "\[MAN\] \002%char%set\002 (+/-)repetitivechars ; \002%botnick% set\002 (+/-)repetitivechars ; \002(PRIVMSG) set\002 \[#chan\] (+/-)repetitivechars"
set black(say.es.man.1253) "\[MAN\] Configuraciones opcionales \002repetitivechars-reason\002 ; repetitivechars-bantime ; \002repetitivechars-warn\002 ; repetitivechars-banmethod ; \002repetitivechars-banmask\002 ; repetitivechars-char"
set black(say.es.man.1254) "Ver configuración de opciones: \002%char%show\002 <ajuste> ; \002%botnick% show\002 <ajuste> ; \002(PRIVMSG) show\002 <#chan> <ajuste>"

#QuitPartMsgFlood

set black(say.es.man.1255) "\[MAN\] \002QuitPartMsgFlood\002 es una opción adicional para el módulo \002AntiBadQuitPart\002 que hace que eggdrop tome medidas contra los usuarios que usan *mensajes de inundación* cuando part/quit del canal."
set black(say.es.man.1256) "\[MAN\] SINTAXIS:"
set black(say.es.man.1257) "\[MAN\] \002%char%set (+/-)quitpartmsgflood\002 ; %botnick% set (+/-)quitpartmsgflood ; \002(PRIVMSG) set <#chan> (+/-)quitpartmsgflood\002"
set black(say.es.man.1258) "\[MAN\] Configuraciones opcionales \002quitpartmsgflood-char\002"
set black(say.es.man.1259) "Ver configuración de opciones: \002%char%show\002 <ajuste> ; \002%botnick% show\002 <ajuste> ; \002(PRIVMSG) show\002 <#chan> <ajuste>"

#MassFloodSilenceTime

set black(say.es.man.1260) "\[MAN\] \002MassFloodSilenceTime\002 protege el eggdrop contra inundaciones masivas mediante ctcp / ctcr, aviso o mensaje usando el comando de silence del servidor."
set black(say.es.man.1261) "\[MAN\] ** Note: This is a personal bot protection that automatically triggers when gets mass botnet and private flood. **"
set black(say.es.man.1262) "\[MAN\] Periodo de formato: <X>\002s\002 = seconds"
set black(say.es.man.1263) "\[MAN\] SINTAXIS:"
set black(say.es.man.1264) "\[MAN\] \002%char%set\002 massfloodsilencetime <Periodo> ; \002%botnick% set\002 massfloodsilencetime <Periodo> ; \002(PRIVMSG) set\002 massfloodsilencetime <Periodo>"

#BanMethod-Expire

set black(say.es.man.1265) "\[MAN\] \002BanMethod-Expire\002 le permite definir el intervalo de tiempo después de que caduque cada recuento de las protecciones."
set black(say.es.man.1266) "\[MAN\] Periodo de formato: <X>\002m\002 = minutes"
set black(say.es.man.1267) "\[MAN\] SINTAXIS:"
set black(say.es.man.1268) "\[MAN\] \002%char%set\002 banmethod-expire <Periodo> ; \002%botnick% set\002 banmethod-expire <Periodo> ; \002(PRIVMSG) set\002 <#chan> banmethod-expire <Periodo>"

#Count

set black(say.es.man.1269) "\[MAN\] \002Count\002 le permite definir un mensaje de bienvenida al unirse usando algunas variables. Para funcionar requiere \001+greet\001, para más información sobre ver \002%char%man greet\002."
set black(say.es.man.1270) "\[MAN\] Available variables: \002%countchan%\002 = channel name ; \002%nick%\002 = user who joins ; \002%count%\002 = joins count ; \002%time%\002 = date since"
set black(say.es.man.1271) "\[MAN\] SINTAXIS:"
set black(say.es.man.1272) "\[MAN\] \002%char%greet\002 set <Texto> ; \002%botnick% greet\002 set <Texto> ; \002(PRIVMSG) greet\002 <#chan> set <Texto>"
set black(say.es.man.1273) "\[MAN\] \001Example\001: Welcome %nick%, you are user with number %count% who joined in %countchan% since %time%."

#BadChan-FloodControl

set black(say.es.man.1274) "\[MAN\] \002BadChan-FloodControl\002 es una opción adicional para el módulo \002BadChan\002 con la función de proteger el eggdrop de las acciones de \002massjoin\002 al detener el escaneo al unirse de los usuarios durante un período de \00230\002 segundos. Después de la expiración de este período, el módulo \002BadChan\002 reanuda su funcionamiento normal."
set black(say.es.man.1275) "\[MAN\] SINTAXIS:"
set black(say.es.man.1276) "\[MAN\] \002%char%set\002 (+/-)badchan-floodcontrol <no. joins>:<no. seconds> ; \002%botnick% set\002 (+/-)badchan-floodcontrol <no. joins>:<no. seconds> ; \002(PRIVMSG) set\002 <#chan> (+/-)badchan-floodcontrol <no. joins>:<no. seconds>"
set black(say.es.man.1277) "Ver configuración de opciones: \002%char%show\002 <ajuste> ; \002%botnick% show\002 <ajuste> ; \002(PRIVMSG) show\002 <#chan> <ajuste>"

#Exempt

set black(say.es.man.1278) "\[MAN\] \002Exempt\002 Agrega una prohibición de exención a la lista de exenciones almacenadas en el bot, con comentarios opcionales y un período de tiempo exento."
set black(say.es.man.1279) "\[MAN\] ** NOTE: If <global> is specified, the exempt will be for every channel the bot is in. **"
set black(say.es.man.1280) "\[MAN\] Periodo de formato: <X>\002h\002 = hours ; <X>\002m\002 = minutes ; <X>\002d\002 = days"
set black(say.es.man.1281) "\[MAN\] SINTAXIS:"
set black(say.es.man.1282) "\[MAN\] \002%char%exempt\002 \[#chan\] add <ip/host> <Periodo> <reason> (add exempt) ; \002%char%exempt\002 \[#chan\] list; \002%char%exempt\002 \[#chan\] del <ip/host> (remove exempt from list)"
set black(say.es.man.1283) "\[MAN\] \002%char%exempt\002 \[#chan\] add <ip/host> <Periodo> \[global\] <reason> (add exempt) ; \002%char%exempt\002 \[#chan\] list \[global\] ; \002%char%exempt\002 \[#chan\] del <ip/host> \[global\] (remove exempt from list)"

#For

set black(say.es.man.1284) "\[MAN\] \002For\002 permite que múltiples eggdrops ejecuten simultáneamente el mismo comando/comandos."
set black(say.es.man.1285) "\[MAN\] SINTAXIS:"
set black(say.es.man.1286) "\[MAN\] \002for\002 <botnick1>,<botnick2>.. <Comando> <option>"


##################################### MAN TIPS #############################################


set black(say.es.man.showtip) { 
 "\[TIP\] ¿Sabía que puede usar como período para prohibir Usuarios como:\002 10m\002 (minutos) ;\002 10h\002 (horas) ;\002 10d\002 (días)?"
}


##################################### MAN EGGDROP INTERN SETTINGS #############################################


#Ban-Time

set black(say.es.man.2101) "\[MAN\] \002Ban-Time/BanTime\002 esta es una configuración interna de eggdrop no relacionada con \002BlackToolS script\002 y define cuánto durarán las prohibiciones temporales (en minutos). Si esta configuración se establece en 0, el bot nunca eliminará las prohibiciones."
set black(say.es.man.2102) "\[MAN\] SINTAXIS:"
set black(say.es.man.2103) "\[MAN\] \002%char%set\002 ban-time <Periodo> ; \002%botnick% set\002 ban-time <Periodo> ; \002(PRIVMSG) set\002 <#chan> ban-time <Periodo>"

#ChanMode

set black(say.es.man.2104) "\[MAN\] \002ChanMode\002 Esta es una configuración interna de eggdrop no relacionada con \002BlackToolS script\002 y hace que el bot imponga modos de canal. Siempre agregará los +<modos> y eliminará los modos -<modos>."
set black(say.es.man.2105) "\[MAN\] SINTAXIS:"
set black(say.es.man.2106) "\[MAN\] \002%char%set\002 chanmode (+/-)<modos> ; \002%botnick% set\002 chanmode (+/-)<modos> ; \002(PRIVMSG) set\002 <#chan> chanmode (+/-)<modos>"

#DontKickOps

set black(say.es.man.2107) "\[MAN\] \002DontKickOps\002 esta es una configuración interna de eggdrop no relacionada con \002BlackToolS script\002 y evita que el bot expulse a los usuarios que tienen el +o flag."
set black(say.es.man.2108) "\[MAN\] SINTAXIS:"
set black(say.es.man.2109) "\[MAN\] \002%char%set\002 (+/-)dontkickops ; \002%botnick% set\002 (+/-)dontkickops ; \002(PRIVMSG) set\002 <#chan> (+/-)dontkickops"

#EnforceBans 

set black(say.es.man.2110) "\[MAN\] \002EnforceBans\002 es una configuración interna de eggdrop no relacionada con \002BlackToolS script\002 y cuando se establece una prohibición, esta configuración provocará que el bot patee a las personas que están en el canal y coincida con la prohibición."
set black(say.es.man.2111) "\[MAN\] SINTAXIS:"
set black(say.es.man.2112) "\[MAN\] \002%char%set\002 (+/-)enforcebans ; \002%botnick% set\002 (+/-)enforcebans ; \002(PRIVMSG) set\002 <#chan> (+/-)enforcebans"

#DynamicBans 

set black(say.es.man.2113) "\[MAN\] \002DynamicBans\002 esta es una configuración interna de eggdrop no relacionada con \002BlackToolS script\002 y solo activa las prohibiciones en el canal cuando es necesario. Esto evita que la lista de prohibición del canal sea demasiado larga. El bot aún recuerda cada prohibición, pero solo activa una prohibición en el canal cuando ve a alguien unirse que coincide con esa prohibición."
set black(say.es.man.2114) "\[MAN\] SINTAXIS:"
set black(say.es.man.2115) "\[MAN\] \002%char%set\002 (+/-)dynamicbans ; \002%botnick% set\002 (+/-)dynamicbans ; \002(PRIVMSG) set\002 <#chan> (+/-)dynamicbans"

#UserBans 

set black(say.es.man.2116) "\[MAN\] \002UserBans\002 Esta es una configuración interna de eggdrop no relacionada con \002BlackToolS script\002 y permite que los usuarios establezcan prohibiciones directamente en IRC. Si esto está desactivado, el bot requerirá que todas las prohibiciones se establezcan a través de la consola del bot."
set black(say.es.man.2117) "\[MAN\] SINTAXIS:"
set black(say.es.man.2118) "\[MAN\] \002%char%set\002 (+/-)userbans ; \002%botnick% set\002 (+/-)userbans ; \002(PRIVMSG) set\002 <#chan> (+/-)userbans"

#AutoOp 

set black(say.es.man.2119) "\[MAN\] \002AutoOp\002 esta es una configuración interna de eggdrop no relacionada con \002BlackToolS script\002 y hará que el bot opere a los usuarios con el indicador +o tan pronto como se unan al canal (esto es inseguro y no se recomienda)."
set black(say.es.man.2120) "\[MAN\] SINTAXIS:"
set black(say.es.man.2121) "\[MAN\] \002%char%set\002 (+/-)autoop ; \002%botnick% set\002 (+/-)autoop ; \002(PRIVMSG) set\002 <#chan> (+/-)autoop"

#AutoHalfOp 

set black(say.es.man.2122) "\[MAN\] \002AutoHalfOp\002 esta es una configuración interna de eggdrop no relacionada con \002BlackToolS script\002 y hará que el bot ponga a los usuarios en la mitad con el indicador +l tan pronto como se unan al canal (esto es inseguro y no se recomienda)."
set black(say.es.man.2123) "\[MAN\] SINTAXIS:"
set black(say.es.man.2124) "\[MAN\] \002%char%set\002 (+/-)autohalfop ; \002%botnick% set\002 (+/-)autohalfop ; \002(PRIVMSG) set\002 <#chan> (+/-)autohalfop"

#AutoVoice 

set black(say.es.man.2125) "\[MAN\] \002AutoVoice\002 Esta es una configuración interna de eggdrop no relacionada con \002BlackToolS script\002 y hará que el bot exprese a los usuarios con el indicador +v cuando se unan al canal."
set black(say.es.man.2126) "\[MAN\] SINTAXIS:"
set black(say.es.man.2127) "\[MAN\] \002%char%set\002 (+/-)autovoice ; \002%botnick% set\002 (+/-)autovoice ; \002(PRIVMSG) set\002 <#chan> (+/-)autovoice"

#Bitch 

set black(say.es.man.2128) "\[MAN\] \002Bitch\002 esta es una configuración interna de eggdrop no relacionada con \002BlackToolS script\002 y hará que el bot solo permita que los usuarios con +o flag sean activados en el canal (esto es inseguro y no recomendado)."
set black(say.es.man.2129) "\[MAN\] SINTAXIS:"
set black(say.es.man.2130) "\[MAN\] \002%char%set\002 (+/-)bitch ; \002%botnick% set\002 (+/-)bitch ; \002(PRIVMSG) set\002 <#chan> (+/-)bitch"

#Greet 

set black(say.es.man.2131) "\[MAN\] \002Greet\002 esta es una configuración interna de eggdrop no relacionada con \002BlackToolS script\002 y hará que el bot diga la línea de saludo de un usuario cuando se una al canal (consulte también \002%char%man myset\002)."
set black(say.es.man.2132) "\[MAN\] SINTAXIS:"
set black(say.es.man.2133) "\[MAN\] \002%char%set\002 (+/-)greet ; \002%botnick% set\002 (+/-)greet ; \002(PRIVMSG) set\002 <#chan> (+/-)greet"

#ProtectOps 

set black(say.es.man.2134) "\[MAN\] \002ProtectOps\002 esta es una configuración interna de eggdrop no relacionada con \002BlackToolS script\002 y hará que el bot vuelva a operar a un usuario con el indicador \002+o\002 si se desactiva."
set black(say.es.man.2135) "\[MAN\] SINTAXIS:"
set black(say.es.man.2136) "\[MAN\] \002%char%set\002 (+/-)protectops ; \002%botnick% set\002 (+/-)protectops ; \002(PRIVMSG) set\002 <#chan> (+/-)protectops"

#ProtectFriends 

set black(say.es.man.2137) "\[MAN\] \002ProtectFriends\002 esta es una configuración interna de eggdrop que no está relacionada con el script \002BlackToolS\002 y hará que el bot vuelva a abrir un usuario con el indicador \002+f\002 si se desactiva."
set black(say.es.man.2138) "\[MAN\] SINTAXIS:"
set black(say.es.man.2139) "\[MAN\] \002%char%set\002 (+/-)protectfriends ; \002%botnick% set\002 (+/-)protectfriends ; \002(PRIVMSG) set\002 <#chan> (+/-)protectfriends"

#ProtectHalfOps 

set black(say.es.man.2140) "\[MAN\] \002ProtectHalfOps\002 Esta es una configuración interna de eggdrop que no está relacionada con el script \002BlackToolS\002 y hará que el bot vuelva a colocar a un usuario con la bandera \002+l\002 si se deshacen."
set black(say.es.man.2141) "\[MAN\] SINTAXIS:"
set black(say.es.man.2142) "\[MAN\] \002%char%set\002 (+/-)protecthalfops ; \002%botnick% set\002 (+/-)protecthalfops ; \002(PRIVMSG) set\002 <#chan> (+/-)protecthalfops"

#Inactive 

set black(say.es.man.2143) "\[MAN\] \002Inactive\002 esta es una configuración interna de eggdrop no relacionada con \002BlackToolS script\002 y evita que el bot se una al canal (o hace que abandone el canal si ya está allí). Puede ser útil hacer que el bot deje un canal sin perder su configuración, marcas de usuario específicas del canal, prohibiciones de canal y sin afectar el uso compartido."
set black(say.es.man.2144) "\[MAN\] SINTAXIS:"
set black(say.es.man.2145) "\[MAN\] \002%char%set\002 (+/-)inactive ; \002%botnick% set\002 (+/-)inactive ; \002(PRIVMSG) set\002 <#chan> (+/-)inactive"

#StatusLog 

set black(say.es.man.2146) "\[MAN\] \002StatusLog\002 Esta es una configuración interna de eggdrop no relacionada con \002BlackToolS script\002 y hará que el bot registre la línea de estado del canal cada 5 minutos. Esto muestra el estado del bot en el canal (op, voz, etc.), los modos del canal y el número total de miembros, operaciones, voces, usuarios regulares y modos +b, +e y +l en el canal."
set black(say.es.man.2147) "\[MAN\] SINTAXIS:"
set black(say.es.man.2148) "\[MAN\] \002%char%set\002 (+/-)statuslog\002 ; \002%botnick% set\002 (+/-)statuslog ; \002(PRIVMSG) set\002 <#chan> (+/-)statuslog"

#Static 

set black(say.es.man.2149) "\[MAN\] \002Static\002 Esta es una configuración interna de eggdrop no relacionada con \002BlackToolS script\002 y permite que solo los propietarios permanentes eliminen el canal."
set black(say.es.man.2150) "\[MAN\] SINTAXIS:"
set black(say.es.man.2151) "\[MAN\] \002%char%set\002 (+/-)static ; \002%botnick% set\002 (+/-)static ; \002(PRIVMSG) set\002 <#chan> (+/-)static"

#Revenge 

set black(say.es.man.2152) "\[MAN\] \002Revenge\002 Esta es una configuración interna de eggdrop no relacionada con \002BlackToolS script\002 y hará que el bot recuerde a las personas que desarman /patean/prohíben el bot, operaciones válidas o amigos y los castigan. Los usuarios con la bandera +f están exentos de venganza."
set black(say.es.man.2153) "\[MAN\] SINTAXIS:"
set black(say.es.man.2154) "\[MAN\] \002%char%set\002 (+/-)revenge ; \002%botnick% set\002 (+/-)revenge ; \002(PRIVMSG) set\002 <#chan> (+/-)revenge"

#RevengeBot 

set black(say.es.man.2155) "\[MAN\] \002RevengeBot\002 Esta es una configuración interna de eggdrop no relacionada con \002BlackToolS script\002 y es similar a la opción de 'venganza', pero solo se dispara si un bot se desopila, patea o prohíbe."
set black(say.es.man.2156) "\[MAN\] SINTAXIS:"
set black(say.es.man.2157) "\[MAN\] \002%char%set\002 (+/-)revengebot ; \002%botnick% set\002 (+/-)revengebot ; \002(PRIVMSG) set\002 <#chan> (+/-)revengebot"

#Secret 

set black(say.es.man.2158) "\[MAN\] \002Secret\002 esta es una configuración interna de eggdrop no relacionada con \002BlackToolS script\002 y evita que el canal aparezca en la lista de botnets."
set black(say.es.man.2159) "\[MAN\] SINTAXIS:"
set black(say.es.man.2160) "\[MAN\] \002%char%set\002 (+/-)secret ; \002%botnick% set\002 (+/-)secret ; \002(PRIVMSG) set\002 <#chan> (+/-)secret"

#Shared 

set black(say.es.man.2161) "\[MAN\] \002Shared\002 esta es una configuración interna de eggdrop no relacionada con \002BlackToolS script\002 y hará que el bot comparta información de usuario relacionada con el canal para este canal."
set black(say.es.man.2162) "\[MAN\] SINTAXIS:"
set black(say.es.man.2163) "\[MAN\] \002%char%set\002 (+/-)shared ; \002%botnick% set\002 (+/-)shared ; \002(PRIVMSG) set\002 <#chan> (+/-)shared"

#Cycle 

set black(say.es.man.2164) "\[MAN\] \002Cycle\002 Esta es una configuración interna de eggdrop no relacionada con \002BlackToolS script\002 y hará que el bot ciclo el canal cuando no tiene ops (@)."
set black(say.es.man.2165) "\[MAN\] SINTAXIS:"
set black(say.es.man.2166) "\[MAN\] \002%char%set\002 (+/-)cycle ; \002%botnick% set\002 (+/-)cycle ; \002(PRIVMSG) set\002 <#chan> (+/-)cycle"

#NodeSynch 

set black(say.es.man.2167) "\[MAN\] \002NodeSynch\002 Esta es una configuración interna de eggdrop que no está relacionada con \002BlackToolS script\002 y permite que los no operativos realicen modos de canal. Esto puede evitar que el bot pelee con servicios como CHaN, o que expulse a los operadores de IRC al configurar los modos de canal sin tener ops."
set black(say.es.man.2168) "\[MAN\] SINTAXIS:"
set black(say.es.man.2169) "\[MAN\] \002%char%set\002 (+/-)nodesynch ; \002%botnick% set\002 (+/-)nodesynch ; \002(PRIVMSG) set\002 <#chan> (+/-)nodesynch"

#DynamicExempts 

set black(say.es.man.2170) "\[MAN\] \002DynamicExempts\002 Esta es una configuración interna de eggdrop no relacionada con \002BlackToolS script\002 y solo activa exenciones en el canal cuando es necesario. Esto evita que la lista exenta del canal se alargue demasiado. El bot aún recuerda cada exención, pero solo activa una exención en el canal cuando ve un conjunto de prohibición que coincide con la exención. La exención permanece activa en el canal mientras la prohibición siga activa."
set black(say.es.man.2171) "\[MAN\] SINTAXIS:"
set black(say.es.man.2172) "\[MAN\] \002%char%set\002 (+/-)dynamicexempts ; \002%botnick% set\002 (+/-)dynamicexempts ; \002(PRIVMSG) set\002 <#chan> (+/-)dynamicexempts"

#UserExempts 

set black(say.es.man.2173) "\[MAN\] \002UserExempts\002 esta es una configuración interna de eggdrop no relacionada con \002BlackToolS script\002 y permite que los usuarios realicen exenciones directamente. Si está desactivado, el bot requerirá que todas las exenciones se realicen a través de la consola del bot."
set black(say.es.man.2174) "\[MAN\] SINTAXIS:"
set black(say.es.man.2175) "\[MAN\] \002%char%set\002 (+/-)userexempts ; \002%botnick% set\002 (+/-)userexempts ; \002(PRIVMSG) set\002 <#chan> (+/-)userexempts"

#DynamicInvites 

set black(say.es.man.2176) "\[MAN\] \002DynamicInvites\002 esta es una configuración interna de eggdrop no relacionada con \002BlackToolS script\002 y solo activa invitaciones en el canal cuando es necesario. Esto evita que la lista de invitados del canal sea demasiado larga. El bot aún recuerda cada invitación, pero las invitaciones solo se activan cuando el canal está configurado para invitar solo y un usuario se une después de solicitar una invitación. Una vez establecida, la invitación permanece hasta que el canal va a -i."
set black(say.es.man.2177) "\[MAN\] SINTAXIS:"
set black(say.es.man.2178) "\[MAN\] \002%char%set\002 (+/-)dynamicinvites ; \002%botnick% set\002 (+/-)dynamicinvites ; \002(PRIVMSG) set\002 <#chan> (+/-)dynamicinvites"

#UserInvites 

set black(say.es.man.2179) "\[MAN\] \002UserInvites\002 Esta es una configuración interna de eggdrop no relacionada con \002BlackToolS script\002 y permite que los usuarios realicen invitaciones directamente. Si está apagado, el bot requerirá que todas las invitaciones se realicen a través de la consola del bot."
set black(say.es.man.2180) "\[MAN\] SINTAXIS:"
set black(say.es.man.2181) "\[MAN\] \002%char%set\002 (+/-)userinvites ; \002%botnick% set\002 (+/-)userinvites ; \002(PRIVMSG) set\002 <#chan> (+/-)userinvites"

#Flood-Ctcp

set black(say.es.man.2182) "\[MAN\] \002Flood-Ctcp\002 esta es una configuración interna de eggdrop no relacionada con \002BlackToolS script\002 y define cuántos ctcps de canal en cuántos segundos desde un host constituye una inundación (los usuarios con +f no serán expulsados). Para desactivar esta configuración, especifique \0020\002 o \0020:0\002."
set black(say.es.man.2183) "\[MAN\] SINTAXIS:"
set black(say.es.man.2184) "\[MAN\] \002%char%set\002 flood-ctcp <ctcp:seconds> ; \002%botnick% set\002 flood-ctcp <ctcp:seconds> ; \002(PRIVMSG) set\002 <#chan> flood-ctcp <ctcp:seconds>"
set black(say.es.man.2185) "Ver configuración de opciones: \002%char%show\002 <ajuste> ; \002%botnick% show\002 <ajuste> ; \002(PRIVMSG) show\002 <#chan> <ajuste>"

#Flood-Join

set black(say.es.man.2186) "\[MAN\] \002Flood-Join\002 Esta es una configuración interna de eggdrop no relacionada con \002BlackToolS script\002 y define cuántas uniones en cuántos segundos desde un host constituye una inundación (no se expulsará a los usuarios +f). Para desactivar esta configuración, especifique \0020\002 o \0020:0\002."
set black(say.es.man.2187) "\[MAN\] SINTAXIS:"
set black(say.es.man.2188) "\[MAN\] \002%char%set\002 flood-join <joins:seconds> ; \002%botnick% set\002 flood-join <joins:seconds> ; \002(PRIVMSG) set\002 <#chan> flood-join <joins:seconds>"
set black(say.es.man.2189) "Ver configuración de opciones: \002%char%show\002 <ajuste> ; \002%botnick% show\002 <ajuste> ; \002(PRIVMSG) show\002 <#chan> <ajuste>"

#Flood-Kick 

set black(say.es.man.2190) "\[MAN\] \002Flood-Kick\002 Esta es una configuración interna de eggdrop que no está relacionada con \002BlackToolS script\002 y define cuántas patadas en cuántos segundos desde un host constituye una inundación (los usuarios con +f no serán expulsados). Para desactivar esta configuración, especifique \0020\002 o \0020:0\002."
set black(say.es.man.2191) "\[MAN\] SINTAXIS:"
set black(say.es.man.2192) "\[MAN\] \002%char%set\002 flood-kick <kicks:seconds> ; \002%botnick% set\002 flood-kick <kicks:seconds> ; \002(PRIVMSG) set\002 <#chan> flood-kick <kicks:seconds>"
set black(say.es.man.2193) "Ver configuración de opciones: \002%char%show\002 <ajuste> ; \002%botnick% show\002 <ajuste> ; \002(PRIVMSG) show\002 <#chan> <ajuste>"

#Flood-Deop 

set black(say.es.man.2194) "\[MAN\] \002Flood-Deop\002 Esta es una configuración interna de eggdrop no relacionada con \002BlackToolS script\002 y define cuántos deops en cuántos segundos desde un host constituye una inundación (los usuarios con +f no serán expulsados). Para desactivar esta configuración, especifique \0020\002 o \0020:0\002."
set black(say.es.man.2195) "\[MAN\] SINTAXIS:"
set black(say.es.man.2196) "\[MAN\] \002%char%set\002 flood-deop <deops:seconds> ; \002%botnick% set\002 flood-deop <deops:seconds> ; \002(PRIVMSG) set\002 <#chan> flood-deop <deops:seconds>"
set black(say.es.man.2197) "Ver configuración de opciones: \002%char%show\002 <ajuste> ; \002%botnick% show\002 <ajuste> ; \002(PRIVMSG) show\002 <#chan> <ajuste>"

#Flood-Nick 

set black(say.es.man.2198) "\[MAN\] \002Flood-Nick\002 esta es una configuración interna de eggdrop no relacionada con \002BlackToolS script\002 y cuántos cambios de nick en cuántos segundos de un host constituye una inundación (los usuarios con +f no serán expulsados). Para desactivar esta configuración, especifique \0020\002 o \0020:0\002."
set black(say.es.man.2199) "\[MAN\] SINTAXIS:"
set black(say.es.man.2200) "\[MAN\] \002%char%set\002 flood-nick <nicks:seconds> ; \002%botnick% set\002 flood-nick <nicks:seconds> ; \002(PRIVMSG) set\002 <#chan> flood-nick <nicks:seconds>"
set black(say.es.man.2201) "Ver configuración de opciones: \002%char%show\002 <ajuste> ; \002%botnick% show\002 <ajuste> ; \002(PRIVMSG) show\002 <#chan> <ajuste>"

#Flood-Chan 

set black(say.es.man.2202) "\[MAN\] \002Flood-Chan\002 esta es una configuración interna de eggdrop no relacionada con \002BlackToolS script\002 y define cuántos mensajes de canal en cuántos segundos desde un host constituye una inundación (los usuarios con +f no serán expulsados) Para desactivar esta configuración, specify \0020\002 o \0020:0\002."
set black(say.es.man.2203) "\[MAN\] SINTAXIS:"
set black(say.es.man.2204) "\[MAN\] \002%char%set\002 flood-chan <lines:seconds> ; \002%botnick% set\002 flood-chan <lines:seconds> ; \002(PRIVMSG) set\002 <#chan> flood-chan <lines:seconds>"
set black(say.es.man.2205) "Ver configuración de opciones: \002%char%show\002 <ajuste> ; \002%botnick% show\002 <ajuste> ; \002(PRIVMSG) show\002 <#chan> <ajuste>"


#AutoUpdate

set black(say.es.man.2206) "\[MAN\] \002AutoUpdate\002 da la capacidad para que el script \001update\001 en sí mismo (si hay una nueva versión de BT o corrección de errores disponible) por comando o \002AUTO\002 (por temporizador). Los archivos BT y las variables configuradas en \001BlackTools.tcl\001 se guardan y restauran."
set black(say.es.man.2207) "\[MAN\] SINTAXIS:"
set black(say.es.man.2208) "\[MAN\] \002%char%update <on>\002 (habilitar actualización automática); \002%char%update off\002 <deshabilitar actualización automática>; \002%char%update check\002 (buscar nuevas actualizaciones); \002%char%update start \002(start update); \002%char%update time \002\[time\] (establecer el intervalo de tiempo de actualización, puede usar X\001m\001,X\001h\001,X\001d\001; si no se especifica \001\[time\]\001, muestra la hora actual establecida) "

#Alias

set black(say.es.man.2209) "\[MAN\] \002ALIAS\002 permite a los usuarios crear sus propios comandos basados en los comandos BT. Todos los comandos están disponibles"
set black(say.es.man.2210) "\[MAN\] SINTAXIS:"
set black(say.es.man.2211) "\[MAN\] \002%char%alias add\002 <comando> <BT comando> \[argumentos\] ; \002%char%alias del\002 <comando>"
set black(say.es.man.2212) "\[MAN\] Ejemplo 1 : \002%char%alias add\002 lamer \001b\001 %1% 0 Eres un lamer !! \[%1% - nick ó host\]"
set black(say.es.man.2213) "\[MAN\] Ejemplo 2 : \002%char%alias add\002 cerveza \001cycle\001 %1% %2% Voy a tomarme una cerveza, volveré \[%1% - canal ; %2% - duración del ciclo\]"

#NoProxy

set black(say.es.man.2214) "\[MAN\] \002NoProxy\002 prohíbe a los usuarios que utilizan direcciones IP que se consideran \001PROXY\001"
set black(say.es.man.2215) "\[MAN\] SINTAXIS:"
set black(say.es.man.2216) "\[MAN\] \002%char%set\002 (+/-)noproxy ; \002%botnick% set\002 (+/-)noproxy ; \002(PRIVMSG) set\002 <#chan> (+/-)noproxy"
set black(say.es.man.2217) "\[MAN\] Optional settings: \noproxy-reason\002; noproxy-bantime (You can use in \001noproxy-reason\001 the keyword \"%isp%\" and it will be replaced with the IP's ISP)"

#Egg AntiBotidle

set black(say.es.man.2218) "\[MAN\] \002AntiBotIdle\002 es una configuración que deshabilita o habilita el propio \002IDLE\002 del eggdrop."
set black(say.es.man.2218_1) "\[MAN\] \0021\002 = no idle ; \0020\002 = idle"
set black(say.es.man.2219) "\[MAN\] SINTAXIS:"
set black(say.es.man.2220) "\[MAN\] \002%char%set antibotidle\002 <1|0> ; \002%botnick% set antibotidle\002 <1|0> ; \002(PRIVMSG) set antibotidle\002 <1|0>"

#Vote

set black(say.es.man.2221) "\[MAN\] \002Vote\002 te da la posibilidad de abrir un proceso de Votación donde todos los usuarios (los que tienen acceso o todos) pueden responder con una de las opciones disponibles."
set black(say.es.man.2222) "\[MAN\] SINTAXIS:"
set black(say.es.man.2223) "\[MAN\] \002%char%set\002 (+/-)vote ; \002%botnick% set\002 (+/-)vote ; \002(PRIVMSG) set\002 <#chan> (+/-)vote"
set black(say.es.man.2224) "\[MAN\] \002%char%vote \002\[#chan\] \002add\002 <vote_name> -option <opción1> -option <opción2>.. \[-time \[DD/MM/YY HH:MM\]\] (tiempo de expiración) \[-type 1/0\] (1 - Usuarios con acceso, 0 - todos los usuarios)"
set black(say.es.man.2225) "\[MAN\] \002%char%vote \002\[#chan\]\002 \002list \[ID\]\002 (lista de votaciones, si se especifica una ID, enumerará los votos para la votación especificada por ID) ; \002%char%vote \002\[#chan\]\002 del <ID> (eliminar la votación)"
set black(say.es.man.2226) "\[MAN\] \002%char%vote \002\[#chan\]\002 <ID> <letter> (la letra de opción del ID de votación) ; \002%char%vote \002\[#chan\] time\002 <ID> <DD/MM/YY HH:MM> (configurar una nueva hora de expiración) ; \002%char%vote \002\[#chan\]\002 end <ID> (finalizar la votación)"
set black(say.es.man.2227) "\[MAN\] Configuraciones opcionales: \002vote-mask\002 (see \002%char%vote man\002 mask)"
set black(say.es.man.2228) "\[MAN\] \002%char%vote \002\[#chan\]\002 \002list \[ID\]\002 (lista de votación, si se especifica una ID \[admin+ only\], se enumerarán los votos para la votación especificada por ID)"
set black(say.es.man.2229) "\[MAN\] \002%char%vote \002\[#chan\]\002 <ID> <letter> (la letra de opción del ID de votación)"

#Mask

set black(say.es.man.2230) "\[MAN\] Máscaras disponibles:"
set black(say.es.man.2231) "\[MAN\] \002#1\002 *!*@host ; \002#2\002 *!user@host ; \002#3\002 nick!user@host ; \002#4\002 nick!*@* ; \002#5\002 *!user@*"
set black(say.es.man.2232) "\[MAN\] SINTAXIS: \002%char%set\002 <setting> <no. method> ; \002%botnick% set\002 <setting> <no. method> ; \002(PRIVMSG) set\002 <#chan> <setting> <no. method>"

##############################
############################################################################################################
#   END                                                                                                    #
############################################################################################################
