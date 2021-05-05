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
# Acest fisier ruleaza impreuna cu BlackTools si este incarcat automat daca exista in folderul lang (fisier obligatoriu sa existe)      #
#########################################################################################################################################
#                                                                                                                                       #
#                                                      *** The Future is Here ***                                                       #
#                                                                                            Copyright 2008 - 2021 @ www.tclscripts.net #
#########################################################################################################################################
#                                                                                                                                       #
#   LIMBA ROMANA                                                                                                                        #
#   ######  #          #     #####  #    # ####### ####### ####### #        #####     #     #    #    #     # #     #    #    #         #
#   #     # #         # #   #     # #   #     #    #     # #     # #       #     #    ##   ##   # #   ##    # #     #   # #   #         #
#   #     # #        #   #  #       #  #      #    #     # #     # #       #          # # # #  #   #  # #   # #     #  #   #  #         #
#   ######  #       #     # #       ###       #    #     # #     # #        #####     #  #  # #     # #  #  # #     # #     # #         #
#   #     # #       ####### #       #  #      #    #     # #     # #             #    #     # ####### #   # # #     # ####### #         #
#   #     # #       #     # #     # #   #     #    #     # #     # #       #     #    #     # #     # #    ## #     # #     # #         #
#   ######  ####### #     #  #####  #    #    #    ####### ####### #######  #####     #     # #     # #     #  #####  #     # #######   #
#                                                                                                                                       #
#########################################################################################################################################


################################################# MAN COMENZI #####################################################


set black(say.ro.man.1) "\005\[BT\]\005 Sintaxa folosire: \002%char%man\002 <comanda>"
set black(say.ro.man.2) "\005\[BT\]\005 Sintaxa folosire: \002%botnick% man\002 <comanda>"
set black(say.ro.man.2_1) "\005\[BT\]\005 Sintaxa folosire: \002man\002 <comanda>"

#Man

set black(say.ro.man.3) "\[MAN\] \002Man\002 este a doua cea mai importanta comanda a Blacktools ce permite vizualizarea informatiilor din manualul de utilizare BlackTools."
set black(say.ro.man.4) "\[MAN\] Aceasta dezvaluie informatii despre modul de utilizare al protectiilor, modulelor si comenzilor."
set black(say.ro.man.4_1) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.5) "\[MAN\] \002%char%man\002 <comanda> ; \002%botnick% man\002 <comanda> ; \002(PRIVMSG) man\002 <comanda>"

#h

set black(say.ro.man.6) "\[MAN\] \002h\002 este cea mai importanta comanda din cadrul BlackTools."
set black(say.ro.man.7) "\[MAN\] Aceasta permite navigarea prin categoriile de optiuni ale scriptului."
set black(say.ro.man.8) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.9) "\[MAN\] \002%char%h\002 <categorie> ; \002%botnick% h\002 <categorie> ; \002(PRIVMSG) h\002 \[#canal\] <categorie>"
set black(say.ro.man.10) "\[MAN\] Pentru a vedea ce comenzi iti sunt disponibile, foloseste: \002%char%h\002 ; %botnick% h ; \002(PRIVMSG) h\002 \[#canal\]"

#tip

set black(say.ro.man.6666) "\[MAN\] \002tip\002 afiseaza automat \002sfaturi aleatoare\002 la sfarsitul fiecarei informatii din \001manualul de utilizare BlackTools\001."

#v

set black(say.ro.man.11) "\[MAN\] \002v\002 este o comanda prin care puteti da \002VOICE/DEVOICE\002 (+v) unuia sau mai multor useri de pe canal."
set black(say.ro.man.12) "\[MAN\] Daca nu e specificat niciun nick si nu aveti voice (+v) pe canal, atunci eggdrop-ul iti va da voice (+v)."
set black(say.ro.man.13) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.14) "\[MAN\] \002%char%v\002 <nick1> <nick2>.. ; \002%botnick% v\002 <nick1 <nick2>.. ; \002(PRIVMSG) v\002 <#canal> <nick1> <nick2>.."
set black(say.ro.man.15) "\[MAN\] \002%char%v +\002 (mass voice) ; \002%char%v -\002 (mass devoice)"

#o

set black(say.ro.man.16) "\[MAN\] \002o\002 este o comanda prin care puteti da \002OP/DEOP\002 (+@) unuia sau mai multor useri de pe canal."
set black(say.ro.man.17) "\[MAN\] Daca nu e specificat niciun nick si nu aveti op (@) pe canal, atunci eggdrop-ul iti va da op (@)."
set black(say.ro.man.18) "\[MAN\] SINTAXE FOLOSIRE:"
set black(say.ro.man.19) "\[MAN\] \002%char%o\002 <nick1> <nick2>.. ; \002%botnick% o\002 <nick1 <nick2>.. ; \002(PRIVMSG) o\002 <#canal> <nick1> <nick2>.."
set black(say.ro.man.20) "\[MAN\] \002%char%o +\002 (mass op)\002 ; %char%o -\002 (mass deop)"

#UserList

set black(say.ro.man.22) "\[MAN\] \002UserList\002 arata intreaga lista de accese a unui anumit canal."
set black(say.ro.man.23) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.24) "\[MAN\] \002%char%userlist\002 <nivel|all> ; \002%botnick% userlist\002 <nivel|all> ; \002(PRIVMSG) userlist\002 <#canal> <nivel|all>"
set black(say.ro.man.25) "\[MAN\] Ca \002<nivel>\002 de access avem: \002%msg.1%\002 ; \002%msg.2%\002 ; \002%msg.3%\002 ; \002%msg.4%\002"
set black(say.ro.man.26) "\[MAN\] Ca \002<nivel>\002 de access avem: \002%msg.1%\002 ; \002%msg.2%\002 ; \002%msg.3%\002 ; \002%msg.4%\002 ; \002%msg.12%\002"
set black(say.ro.man.27) "\[MAN\] Ca \002<nivel>\002 de access avem: \002%msg.1%\002 ; \002%msg.2%\002 ; \002%msg.3%\002 ; \002%msg.4%\002 ; \002%msg.12%\002 ; \002%msg.13%\002 ; \002%msg.15%\002"
set black(say.ro.man.28_1) "\[MAN\] Ca \002<nivel>\002 de access avem: \002%msg.1%\002 ; \002%msg.2%\002 ; \002%msg.3%\002"

#Version

set black(say.ro.man.28) "\[MAN\] \002Version\002 este o comanda prin care puteti vizualiza versiunea scriptului BlackTools pe care o foloseste eggdrop-ul."
set black(say.ro.man.29) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.30) "\[MAN\] \002%char%version\002 ; %botnick% version ; \002(PRIVMSG) version\002"

#Info

set black(say.ro.man.31) "\[MAN\] \002Info\002 arata informatii despre despre useri/canale din baza de date a eggdropului."
set black(say.ro.man.32) "\[MAN\] Informatii precum nivelul de acces, modurile unui canal, mesajul de intampinare, hostmask-urile userilor, suspendarea, cand au fost vazuti ultima data, etc."
set black(say.ro.man.33) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.34) "\[MAN\] \002%char%info\002 <handle|#canal> ; \002%botnick% info\002 <handle|#canal> ; \002(PRIVMSG) info\002 <handle|#canal>"

#Act

set black(say.ro.man.35) "\[MAN\] \002Act\002 este o comanda prin care eggdrop-ul va trimite un mesaj pe canal de tip /me (ACTION)."
set black(say.ro.man.36) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.37) "\[MAN\] \002%char%act\002 <mesaj> ; \002%botnick% act\002 <mesaj> ; \002(PRIVMSG) act\002 <#canal> <mesaj>"

#t

set black(say.ro.man.38) "\[MAN\] \002t\002 este o comanda prin care eggdrop-ul va schimba TOPIC-ul canalului cu textul dvs."
set black(say.ro.man.39) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.40) "\[MAN\] \002%char%t\002 \[#canal\] <text> ; \002%botnick% t\002 \[#canal\] <text> ; \002(PRIVMSG) t\002 <#canal> <text>"
set black(say.ro.man.41) "\[MAN\] Pentru ca eggdrop-ul sa includa si nick-ul celui care a schimbat topicul folositi: \002%char%set +showhandle\002"

#Cycle

set black(say.ro.man.42) "\[MAN\] \002Cycle\002 este o comanda care face eggdrop-ul sa dea \002/hop\002, sau part-rejoin la un anumit canal."
set black(say.ro.man.43) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.44) "\[MAN\] \002%char%cycle\002 \[durata|motiv\] ; \002%botnick% cycle\002 \[durata|motiv\] ; \002(PRIVMSG) cycle\002 <#canal> \[durata|motiv\]"

#Mode

set black(say.ro.man.45) "\[MAN\] \002Mode\002 seteaza sau scoate anumite moduri specificate pe canal."
set black(say.ro.man.46) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.47) "\[MAN\] \002%char%mode\002 (+/-)<moduri> ; %botnick% mode\002 (+/-)<moduri> ; \002(PRIVMSG) mode\002 <#canal> (+/-)<moduri>"

#i

set black(say.ro.man.48) "\[MAN\] \002i\002 este o comanda prin care eggdrop-ul va invita un anumit user pe canalul specificat."
set black(say.ro.man.49) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.50) "\[MAN\] \002%char%i\002 <nick> ; \002%botnick% i\002 <nick> ; \002(PRIVMSG) i\002 <#canal> <nick>"

#k

set black(say.ro.man.62) "\[MAN\] \002k\002 este o comanda prin care puteti da kick anumitor useri de pe canal. Motivul este optional."
set black(say.ro.man.63) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.64) "\[MAN\] \002%char%k\002 <nick|host> \[motiv\] ; \002%botnick% k\002 <nick|host> \[motiv\] ; \002(PRIVMSG) k\002 <#canal> <nick|host> \[motiv\]"
set black(say.ro.man.65) "\[MAN\] Setari optionale: \002k-reason\002 (setare motiv default)"

#w

set black(say.ro.man.66) "\[MAN\] \002w\002 este o comanda prin care un user primeste o avertizare printr-un kick cu motiv predefinit."
set black(say.ro.man.67) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.68) "\[MAN\] \002%char%w\002 <nick> ; \002%botnick% w\002 <nick> ; \002(PRIVMSG) w\002 <#canal> <nick>"
set black(say.ro.man.69) "\[MAN\] Setari optionale: \002w-reason\002 (setare motiv avertizare predefinit) ; \002w-message\002 (setare mesaj avertizare predefinit)"

#Check

set black(say.ro.man.70) "\[MAN\] \002Check\002 este o comanda prin care un user este verificat printr-un mesaj pe privat daca este virusat sau face reclama."
set black(say.ro.man.71) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.72) "\[MAN\] \002%char%check\002 <nick>\002 ; \002%botnick% check\002 <nick> ; \002(PRIVMSG) check\002 \[#canal\] <nick>"
set black(say.ro.man.73) "\[MAN\] Setari optionale: \002%char%set\002 check-message <mesaj> ; \002(PRIVMSG) set\002 check-message <mesaj> (setare mesaj verificare predefinit)"

#sb

set black(say.ro.man.74) "\[MAN\] \002sb\002 este o comanda prin care se pot cauta si vedea informatii despre un anumit ban (suporta wildcard-uri)."
set black(say.ro.man.75) "\[MAN\] SINTAXE FOLOSIRE:"
set black(say.ro.man.76) "\[MAN\] \002%char%sb\002 \[-regex\] <nick|host|id|regex> ; \002%botnick% sb\002 \[-regex\] <nick|host|id|regex> ; \002(PRIVMSG) sb\002 <#canal> \[-regex\] <nick|host|id|regex>"
set black(say.ro.man.77) "\[MAN\] \002%char%sb\002 \[-regex\] <nick|host|id|regex> \[global\] ; \002%botnick% sb\002 \[-regex\] <nick|host|id|regex> \[global\] ; \002(PRIVMSG) sb\002 <#canal> \[-regex\] <nick|host|id|regex> \[global\]"
set black(say.ro.man.78) "\[MAN\] In caz ca se specifica \002<nick>\002 si acesta nu este pe %chan%, eggdrop-ul va da \002WHOIS\002 si va verifica daca are ban  pe \002ident/host/nick\002 si afisa detalii despre el."

#id

set black(say.ro.man.79) "\[MAN\] \002id\002 este o comanda prin care se poate da ban pe \002IDENT\002. Daca se specifica nick-ul unui user, atunci eggdrop-ul ii va luat automat ident-ul."
set black(say.ro.man.80) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.81) "\[MAN\] \002%char%id\002 <nick|ident> ; \002%botnick% id\002 <nick|ident> ; \002(PRIVMSG) id\002 <#canal> <nick|ident>"
set black(say.ro.man.82) "\[MAN\] Setari optionale: \002id-reason\002 (setare motiv predefinit); \002id-bantime\002 (setare timp ban predefinit); \002id-banmask\002 (setare banmask predefinit)"

#n

set black(say.ro.man.83) "\[MAN\] \002n\002 este o comanda prin care se poate da ban pe \002NICK\002."
set black(say.ro.man.84) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.85) "\[MAN\] \002%char%n\002 <nick> ; \002%botnick% n\002 <nick> ; \002(PRIVMSG) n\002 <#canal> <nick>"
set black(say.ro.man.86) "\[MAN\] Setari optionale: \002n-reason\002 (setare motiv predefinit); \002n-bantime\002 (setare timp ban in minute) ; \002n-banmask\002 (setare banmask predefinit)"

#Spam

set black(say.ro.man.87) "\[MAN\] \002Spam\002 este o comanda prin care se poate da ban unui user cu un motiv predefinit de \002SPAM\002."
set black(say.ro.man.88) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.89) "\[MAN\] \002%char%spam\002 <nick|host> ; \002%botnick% spam\002 <nick|host> ; \002(PRIVMSG) spam\002 <#canal> <nick|host>"
set black(say.ro.man.90) "\[MAN\] Setari optionale: \002spam-reason\002 (setare motiv predefinit); \002spam-bantime\002 (setare timp ban in minute); \002spam-banmask\002 (setare banmask predefinit)"

#dr

set black(say.ro.man.91) "\[MAN\] \002dr\002 este o comanda prin care se poate da ban unui user cu un motiv predefinit de \002DRONA\002."
set black(say.ro.man.92) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.93) "\[MAN\] \002%char%dr <nick|host> ; %botnick% dr <nick|host> ; (PRIVMSG) dr <#canal> <nick|host>\002"
set black(say.ro.man.94) "\[MAN\] Setari optionale: \002dr-reason\002 (setare motiv predefinit); \002dr-bantime\002 (setare timp ban in minute); \002dr-banmask\002 (setare banmask predefinit)"

#b

set black(say.ro.man.95) "\[MAN\] \002b\002 este o comanda prin care se poate da ban unui user cu un motiv si un ban-time predefinit. Daca specificati durata \0020\002 banul devine permanent (blacklisted)."
set black(say.ro.man.96) "\[MAN\] Format durata: <x>\002m\002 = minute, <x>\002h\002 = ore, \002d\002 = zile, \0020\002 = permanent"
set black(say.ro.man.97) "\[MAN\] SINTAXE FOLOSIRE:"
set black(say.ro.man.98) "\[MAN\] \002%char%b\002 \[-regex\] <nick|host|regex> \[-nivel\] \[durata\] \[motiv\] \[-c/comment\] ; \002%botnick% b\002 \[-regex\] <nick|host|regex> \[-nivel\] \[durata\] \[motiv\] \[-c/comment\] ; \002(PRIVMSG) b\002 <#canal> \[-regex\] <nick|host|regex> \[-nivel\] \[durata\] \[motiv\] \[-c/comment\]"
set black(say.ro.man.98_1) "\[MAN\] ** Nota: Folosind optiunea \[-c/comment\] va face ca eggdropul sa arate o a doua linie cu informatii referitoare la acel ban incluzand si acel comentariu. **"
set black(say.ro.man.99) "\[MAN\] \002%char%b\002 \[-regex\] <nick|host> \[-nivel\] \[durata\] \[global|link\] \[motiv\] \[-c/comment\] ; \002%botnick% b\002 \[-regex\] <nick|host|regex> \[-nivel\] \[durata|link\] \[global\] \[motiv\] \[-c/comment\] ; \002(PRIVMSG) b\002 <#canal> \[-regex\] <nick|host> \[-nivel\] \[durata\] \[global|link\] \[motiv\] \[-c/comment\]"
set black(say.ro.man.100) "\[MAN\] Setari optionale: \002b-reason\002 (setare motiv predefinit); \002b-bantime\002 (setare timp ban in minute); \002b-banmask\002 (setare banmask predefinit)"
set black(say.ro.man.100_1) "\[MAN\] ** Nota: Poti folosi ban de tip REGEX pe \002<nick>!<ident>@<host>/\[realname\]/\[tip banmask\]\002 (campurile intre \[ \] sunt optionale. Pentru a vedea tipurile de \002banmask\002 foloseste \001%char%man banmask\001"

#ub

set black(say.ro.man.101) "\[MAN\] \002ub\002 este o comanda prin care se poate sterge unul sau mai multe banuri de pe un canal specificat (suporta wildcard). \002ATENTIE\002: Daca specificai DOAR \002*\002 eggdrop-ul va elimina toate banurile canalului."
set black(say.ro.man.102) "\[MAN\] SINTAXE FOLOSIRE:"
set black(say.ro.man.103) "\[MAN\] \002%char%ub\002 \[-regex\] <nick|host|id|regex> ; \002%botnick% ub\002 \[-regex\] <nick|host|id|regex> ; \002(PRIVMSG) ub\002 <#canal> \[-regex\] <nick|host|id|regex>\002"
set black(say.ro.man.104) "\[MAN\] \002%char%ub\002 \[-regex\] <nick|host|id|regex> \[global\]\002 \[link\] ; \002%botnick% ub\002 \[-regex\] <nick|host|id|regex> \[global\] \[link\] ; \002(PRIVMSG) ub\002 <#canal> \[-regex\] <nick|host|id|regex> \[global\] \[link\]"
set black(say.ro.man.105) "\[MAN\] In caz ca se specifica \002<nick>\002 si acesta nu este pe %chan%, eggdrop-ul va da \002WHOIS\002 si va verifica daca exista ban pe \002ident/host/nick\002 si va da unban. "

#Bot

set black(say.ro.man.106) "\[MAN\] \002Bot\002 este o comanda prin care se poate da ban unui user cu un motiv predefinit de \002BOT\002."
set black(say.ro.man.107) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.108) "\[MAN\] \002%char%bot\002 <nick|host>\002 ; \002%botnick% bot\002 <nick|host> ; \002(PRIVMSG) bot\002 <#canal> <nick|host>"
set black(say.ro.man.109) "\[MAN\] Setari optionale: \002bot-reason\002 (setare motiv predefinit); \002bot-bantime\002 (setare timp ban in minute); \002bot-banmask\002 (setare banmask predefinit)"

#bw

set black(say.ro.man.110) "\[MAN\] \002bw\002 este o comanda prin care se poate da ban unui user cu un motiv predefinit de \002CUVANT INTERZIS\002."
set black(say.ro.man.111) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.112) "\[MAN\] \002%char%bw\002 <nick|host> ; \002%botnick% bw\002 <nick|host> ; \002(PRIVMSG) bw\002 <#canal> <nick|host>\002"
set black(say.ro.man.113) "\[MAN\] Setari optionale: \002bw-reason\002 (setare motiv predefinit); \002bw-bantime\002 (setare timp ban in minute); \002bw-banmask\002 (setare banmask predefinit)"

#Black

set black(say.ro.man.114) "\[MAN\] \002Black\002 este o comanda prin care se poate da ban unui user cu un motiv dat pe o durata \002NELIMITATA\002 (ban permanent)."
set black(say.ro.man.115) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.116) "\[MAN\] \002%char%black\002 <nick|host> \[motiv\] \[-c/comment\] ; \002%botnick% black\002 <nick|host> \[motiv\] \[-c/comment\] ; \002(PRIVMSG) black\002 <#canal> <nick|host> \[motiv\] \[-c/comment\]\002"
set black(say.ro.man.116_1) "\[MAN\] ** Nota: Folosind optiunea \[-c/comment\] va face ca eggdropul sa arate o a doua linie cu informatii referitoare la acel ban incluzand si acel comentariu. **"
set black(say.ro.man.117) "\[MAN\] Setari optionale: \002black-reason\002 (setare motiv predefinit); \002black-banmask\002 (setare banmask predefinit)"

#Stick 

set black(say.ro.man.118) "\[MAN\] \002Stick\002 este o comanda prin care se poate da ban de tip \sticky\ unuia sau mai multor useri cu anumit motiv si durata. Acest ban va fi mentinut mereu in lista de ban-uri a canalului."
set black(say.ro.man.118_1) "\[MAN\] Format durata: <x>\002m\002 = minute, <x>\002h\002 = ore, \002d\002 = zile, \0020\002 = permanent"
set black(say.ro.man.119) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.120) "\[MAN\] \002%char%stick\002 <nick|host> \[durata\] \[motiv\] \[-c/comment\] ; %botnick% stick\002 <nick|host> \[durata\] \[motiv\] \[-c/comment\] ; \002(PRIVMSG) stick\002 <#canal> <nick|host> \[durata\] \[motiv\] \[-c/comment\]"
set black(say.ro.man.120_1) "\[MAN\] ** Nota: Folosind optiunea \[-c/comment\] va face ca eggdropul sa arate o a doua linie cu informatii referitoare la acel ban incluzand si acel comentariu. **"
set black(say.ro.man.121) "\[MAN\] Setari optionale: \002stick-reason\002 (setare motiv predefinit); \002stick-bantime\002 (setare timp ban in minute); \002stick-banmask\002 (setare banmask predefinit)"

#Gag

set black(say.ro.man.122) "\[MAN\] \002Gag\002 este o comanda prin care se poate reduce la tacere un user pe o anumita durata de timp (acesta numai poate tasta pe canal)."
set black(say.ro.man.122_1) "\[MAN\] Format durata: <x>\002m\002 = minute, <x>\002h\002 = ore, \002d\002 = zile"
set black(say.ro.man.123) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.124) "\[MAN\] \002%char%gag\002 <nick> \[durata\] \[motiv\] ; \002%botnick% gag\002 <nick> \[durata\] \[motiv\] ; \002(PRIVMSG) gag\002 <#canal> <nick> \[durata\] \[motiv\]\002."
set black(say.ro.man.125) "\[MAN\] Setari optionale: \002gag-reason\002 (setare motiv predefinit); \002gag-bantime\002 (setare timp predefinit); \002gag-banmask\002 (setare banmask predefinit)"

#Add

set black(say.ro.man.126) "\[MAN\] \002Add\002 adauga un user in lista de accese a canalului."
set black(say.ro.man.127) "\[MAN\] ** Nota: Daca userul este pe canal, hostmask-ul automat folosit la adaugarea acelui user va fi cel curent. **"
set black(say.ro.man.128) "\[MAN\] ** Nota: Daca userul nu este pe canal, hostmask-ul automat folosit la adaugarea acelui user va fi: *!*@%user%.users.undernet.org. **"
set black(say.ro.man.134) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.135) "\[MAN\] \002%char%add\002 <nivel> <nick|Xusername> ; \002%botnick% add\002 <nivel> <nick|Xusername> ; \002(PRIVMSG) add\002 <#canal> <nivel> <nick|Xusername>"

#Adduser

set black(say.ro.man.136) "\[MAN\] Pentru informatii despre\002 cum sa dai access cuiva \002vezi: \002%char%man add\002"

#DelAcc

set black(say.ro.man.142) "\[MAN\] \002DelAcc\002 este o comanda prin care se sterge un user din lista de accese a canalului."
set black(say.ro.man.142_1) "\[MAN\] \002RETINETI\002: Trebuie sa ai acces mai mare decat acel user (deci, daca tu ai acces de \002OP\002, iar userul respectv are \002ADMIN\002 atunci nu ii poti sterge accesul)."
set black(say.ro.man.143) "\[MAN\] SINTAXE FOLOSIRE:"
set black(say.ro.man.144) "\[MAN\] \002%char%delacc\002 <handle> ; %botnick% delacc\002 <handle> ; \002(PRIVMSG) delacc\002 <#canal> <handle>"
set black(say.ro.man.145) "\[MAN\] \002%char%delacc\002 <owner|master> <handle> ; \002%botnick% delacc\002 <owner|master> <handle> ; \002(PRIVMSG) delacc\002 <#canal> <owner|master> <handle> (stergere access global)"

#Del

set black(say.ro.man.146) "\[MAN\] \002Del\002 este o comanda prin care se sterge un user de tot din memoria eggdrop-ului."
set black(say.ro.man.147) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.148) "\[MAN\] \002%char%del\002 <handle> ; \002%botnick% del\002 <handle> ; \002(PRIVMSG) del\002 <#canal> <handle>"

#unGag

set black(say.ro.man.149) "\[MAN\] \002unGag\002 este o comanda prin care se poate anula un \002gag\002 dat."
set black(say.ro.man.150) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.151) "\[MAN\] \002%char%ungag\002 <nick|host> ; \002%botnick% ungag\002 <nick|host> ; \002(PRIVMSG) ungag\002 <#canal> <nick|host>"

#BanList

set black(say.ro.man.152) "\[MAN\] \002BanList\002 este o comanda prin care se pot vizualiza toate banurile din lista unui canal."
set black(say.ro.man.153) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.154) "\[MAN\] \002%char%banlist\002 <handle|all|regex|gag|other> ; \002%botnick% banlist\002 <handle|all|regex|gag|other> ; \002(PRIVMSG) banlist\002 <#canal> <handle|all|regex|gag|other>"
set black(say.ro.man.155) "\[MAN\] \002%char%banlist\002 <handle|all|regex|gag|other|global> ; \002%botnick% banlist\002 <handle|all|regex|gag|other|global> ; \002(PRIVMSG) banlist\002 <#canal> <handle|all|regex|gag|other|global>"

#AddHost

set black(say.ro.man.156) "\[MAN\] \002AddHost\002 este o comanda prin care se poate adauga un hostmask unui anumit user."
set black(say.ro.man.157) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.158) "\[MAN\] \002%char%addhost\002 <handle> <host> ; \002%botnick% addhost\002 <handle> <host> ; \002(PRIVMSG) addhost\002 <handle> <host>"

#DelHost

set black(say.ro.man.159) "\[MAN\] \002DelHost\002 este o comanda prin care se sterge un hostmask unui anumit user."
set black(say.ro.man.160) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.161) "\[MAN\] \002%char%delhost\002 <handle> <host> ; \002%botnick% delhost\002 <handle> <host> ; \002(PRIVMSG) delhost\002 <handle> <host>"

#chUser

set black(say.ro.man.162) "\[MAN\] \002chUser\002 este o comanda prin care se poate schimba <handle> (numele) unui anumit user in <handle nou>."
set black(say.ro.man.163) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.164) "\[MAN\] \002%char%chuser\002 <handle> <handle nou> ; \002%botnick% chuser\002 <handle> <handle nou> ; (PRIVMSG) \002chuser\002 <handle> <handle nou>"

#s

set black(say.ro.man.165) "\[MAN\] \002s\002 suspenda accesul unui user pe un anumit canal si pe o perioada specificata. Daca nu se specificata o \002\[durata\]\002, va fi utilizata o valoare implicita."
set black(say.ro.man.165_1) "\[MAN\] ** Nota: Poti SUSPENDA accesul cuiva doar daca este mai mic decat al tau. **"
set black(say.ro.man.165_2) "\[MAN\] Format durata: <x>\002m\002 = minute, <x>\002h\002 = ore, <x>\002d\002 = zile"
set black(say.ro.man.166) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.167) "\[MAN\] \002%char%s\002 <handle> \[durata\] \[motiv\] ; \002%botnick% s\002 <handle> \[durata\] \[motiv\] ; \002(PRIVMSG) s\002 <#canal> <handle> \[durata\] \[motiv\]"

#us

set black(say.ro.man.168) "\[MAN\] \002us\002 este o comanda prin care se scoate suspendul unui anumit user pe un anumit canal."
set black(say.ro.man.168_1) "\[MAN\] ** Note: Poti folosi comanda UNSUSPEND doar pe un user cu access mai mic ca al tau. De asemenea, level-ul suspendului trebuie sa fie mai mic sau egal cu propriul tau acces. **"
set black(say.ro.man.169) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.170) "\[MAN\] \002%char%us\002 <handle> ; \002%botnick% us\002 <handle> ; \002(PRIVMSG) us\002 <#canal> <handle>"

#Auto

set black(say.ro.man.171) "\[MAN\] \002Auto\002 schimba valoarea \002automode\002 a unui anumit user. ATENTIE: userul trebuie sa aiba access pe acel canal."
set black(say.ro.man.172) "\[MAN\] SINTAXE FOLOSIRE:"
set black(say.ro.man.173) "\[MAN\] AutoVOICE: \002%char%auto (+/-)v\002 <handle> ; %botnick% auto (+/-)v <handle> ; \002(PRIVMSG) auto\002 <#canal> (+/-)v <handle>"
set black(say.ro.man.174) "\[MAN\] AutoOP: \002%char%auto (+/-)o\002 <handle> ; %botnick% auto (+/-)o <handle> ; \002(PRIVMSG) auto\002 <#canal> (+/-)o <handle>"
set black(say.ro.man.175) "\[MAN\] AutoVOICE: \002%char%auto (+/-)v\002 <handle> \[global\] ; %botnick% auto\002 (+/-)v <handle> \[global\] ; \002(PRIVMSG) auto\002 <#canal> (+/-)v <handle> \[global\]"
set black(say.ro.man.176) "\[MAN\] AutoOP: \002%char%auto (+/-)o\002 <handle> \[global\] ; %botnick% auto\002 (+/-)o <handle> \[global\] ; \002(PRIVMSG) auto\002 <#canal> (+/-)o <handle> \[global\]"


################################################# MAN PROTECTII #####################################################


#AntiPub

set black(say.ro.man.177) "\[MAN\] \002AntiPub\002 este un modul de protectie impotriva userilor ce fac reclama de tipul \"#\" sau \"www.*\" (suporta wildcard-uri)."
set black(say.ro.man.178) "\[MAN\] SINTAXE FOLOSIRE:"
set black(say.ro.man.179) "\[MAN\] \002%char%set\002 (+/-)antipub ; \002%botnick% set\002 (+/-)antipub ; \002(PRIVMSG) set\002 (+/-)antipub"
set black(say.ro.man.180) "\[MAN\] \002%char%antipub\002 \[#canal\] add <link|#canal> ; \002%char%antipub\002 \[#canal\] list"
set black(say.ro.man.180_1) "\[MAN\] \002%char%antipub\002 \[#canal\] add <+cuvant> (adauga exceptie) ; \002%char%antipub\002 \[#canal\] del <nr. lista> (sterge antipub din lista)"
set black(say.ro.man.181) "\[MAN\] Setari optionale: \002antipub-reason\002; antipub-bantime; \002antipub-warn\002; antipub-banmethod; \002antipub-banmask\002"

#AntiNotice

set black(say.ro.man.183) "\[MAN\] \002AntiNotice\002 este un modul de protectie impotriva userilor ce executa o actiune tip \"NOTICE\" pe %chan%."
set black(say.ro.man.184) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.185) "\[MAN\] \002%char%set\002 (+/-)antinotice ; \002%botnick% set\002 (+/-)antinotice ; \002(PRIVMSG) set\002 <#canal> (+/-)antinotice"
set black(say.ro.man.186) "\[MAN\] Setari optionale: \002antinotice-reason\002; antinotice-bantime; \002antinotice-warn\002; antinotice-banmethod; \002antinotice-banmask\002"
set black(say.ro.man.187) "\[MAN\] Vizualizare setari optiuni: \002%char%show\002 <setare> ; \002%botnick% show\002 <setare> ; \002(PRIVMSG) show\002 <#canal> <setare>"

#AntiCtcp

set black(say.ro.man.188) "\[MAN\] \002AntiCtcp\002 este un modul de protectie impotriva userilor ce executa o actiune tip \"CTCP\" pe %chan%."
set black(say.ro.man.189) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.190) "\[MAN\] \002%char%set\002 (+/-)antictcp ; \002%botnick% set\002 (+/-)antictcp ; \002(PRIVMSG) set\002 <#canal> (+/-)antictcp"
set black(say.ro.man.191) "\[MAN\] Setari optionale: \002antictcp-reason\002, antictcp-bantime, \002antictcp-warn\002, antictcp-banmethod, \002antictcp-banmask\002"
set black(say.ro.man.192) "\[MAN\] Vizualizare setari optiuni: \002%char%show\002 <setare> ; \002%botnick% show\002 <setare> ; \002(PRIVMSG) show\002 <#canal> <setare>"

#AntiBadWord

set black(say.ro.man.193) "\[MAN\] \002AntiBadWord\002 este un modul de protectie impotriva userilor ce folosesc anumite cuvinte/fraze *interzise* pe %chan% (suporta wildcard-uri)."
set black(say.ro.man.194) "\[MAN\] SINTAXE FOLOSIRE:"
set black(say.ro.man.195) "\[MAN\] \002%char%set\002 (+/-)antibadword ; \002%botnick% set\002 (+/-)antibadword ; \002(PRIVMSG) set\002 <#canal> (+/-)antibadword"
set black(say.ro.man.196) "\[MAN\] \002%char%badword\002 \[#canal\] add <cuvant|fraza> ; \002%char%badword \[#canal\] list\002 ; \002%char%badword\002 \[#canal\] del <nr. lista>"
set black(say.ro.man.197) "\[MAN\] \002%char%badword\002 \[#canal\] add <+cuvant> (adauga exceptie) ; \002%char%badword\002 \[#canal\] add <cuvant:nr. metoda> (vezi \002%char%man banmethod\002)"
set black(say.ro.man.198) "\[MAN\] Setari optionale: \002antibadword-reason\002, antibadword-bantime, \002antibadword-warn\002, antibadword-banmethod, \002antibadword-banmask\002"

#AntiLongText

set black(say.ro.man.199) "\[MAN\] \002AntiLongText\002 este un modul de protectie impotriva userilor ce scriu fraze mult prea mari pe %chan%."
set black(say.ro.man.200) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.201) "\[MAN\] \002%char%set\002 (+/-)antilongtext ; \002%botnick% set\002 (+/-)antilongtext ; \002(PRIVMSG) set\002 <#canal> (+/-)antilongtext"
set black(say.ro.man.202) "\[MAN\] Setari optionale: \002antilongtext-reason\002, antilongtext-bantime, \002antilongtext-warn\002, antilongtext-banmethod, \002antilongtextmax\002, antilongtext-banmask"
set black(say.ro.man.203) "Vizualizare setari optiuni: \002%char%show\002 <setare> ; \002%botnick% show\002 <setare> ; \002(PRIVMSG) show\002 <#canal> <setare>"

#BadQuitPart

set black(say.ro.man.204) "\[MAN\] \002AntiBadQuitPart\002 este un modul de protectie impotriva userilor ce parasesc %chan% utilizand cuvinte *interzise* in mesajul de /part sau /quit (suporta wildcard-uri)."
set black(say.ro.man.205) "\[MAN\] SINTAXE FOLOSIRE:"
set black(say.ro.man.206) "\[MAN\] \002%char%set\002 (+/-)badquitpart ; \002%botnick% set\002 (+/-)badquitpart ; \002(PRIVMSG) set\002 <#canal> (+/-)badquitpart"
set black(say.ro.man.207) "\[MAN\] \002%char%badquitpart\002 \[#canal\] add <cuvant> ; \002%char%badquitpart\002 \[#canal\] list"
set black(say.ro.man.208) "\[MAN\] \002%char%badquitpart\002 \[#canal\] add <+cuvant> (adauga exceptie) ; \002%char%badquitpart\002 \[#canal\] del <nr. lista> (sterge badquitpart din lista)"
set black(say.ro.man.209) "\[MAN\] Setari optionale: \002antibadquitpart-reason\002, antibadquitpart-bantime,  \002antibadquitpart-banmethod\002, antibadquitpart-banmask"

#AntiJoinPart

set black(say.ro.man.210) "\[MAN\] \002AntiJoinPart\002 este un modul de protectie impotriva userilor ce intra pe %chan% si dau part mult prea rapid."
set black(say.ro.man.211) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.212) "\[MAN\] \002%char%set (+/-)antijoinpart\002 ; %botnick% set (+/-)antijoinpart ; \002(PRIVMSG) set <#canal> (+/-)antijoinpart\002"
set black(say.ro.man.213) "\[MAN\] Setari optionale: \002antijoinpart-reason\002, antijoinpart-bantime, \002antijoinpart-banmethod\002, antijoinpart-banmask"
set black(say.ro.man.214) "Vizualizare setari optiuni: \002%char%show\002 <setare> ; \002%botnick% show\002 <setare> ; \002(PRIVMSG) show\002 <#canal> <setare>"

#AntiSpam

set black(say.ro.man.215) "\[MAN\] \002AntiSpam\002 este un modul de protectie impotriva userilor ce fac spam prin mesaje catre eggdrop continand \001#\001 sau \001*www.*\001 (vezi si \002!man spamjoinmessage\002)."
set black(say.ro.man.216) "\[MAN\] SINTAXE FOLOSIRE:"
set black(say.ro.man.217) "\[MAN\] \002%char%set\002 (+/-)antispam ; \002%botnick% set\002 (+/-)antispam ; \002(PRIVMSG) set\002 <#canal> (+/-)antispam"
set black(say.ro.man.217_1) "\[MAN\] \002%char%antispam\002 \[#canal\] add <*text*> ; \002%char%antispam \[#canal\] list\002"
set black(say.ro.man.217_2) "\[MAN\] \002%char%antispam\002 \[#canal\] add <+cuvant> (adauga exceptie) ; \002%char%antispam\002 \[#canal\] del <nr. lista> (sterge antispam din lista)"
set black(say.ro.man.218) "\[MAN\] Setari optionale: \002antispam-reason\002, antispam-message, \002antispam-bantime\002, antispam-banmask, \002antispam-scantime\002"
set black(say.ro.man.219) "Vizualizare setari optiuni: \002%char%show\002 <setare> ; \002%botnick% show\002 <setare> ; \002(PRIVMSG) show\002 <#canal> <setare>"

#AntiRepeat

set black(say.ro.man.221) "\[MAN\] \002AntiRepeat\002 este un modul de protectie impotriva userilor ce se repeta prea mult pe %chan%."
set black(say.ro.man.222) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.223) "\[MAN\] \002%char%set\002 (+/-)antirepeat ; \002%botnick% set\002 (+/-)antirepeat ; \002(PRIVMSG) set\002 <#canal> (+/-)antirepeat"
set black(say.ro.man.224) "\[MAN\] Setari optionale: \002antirepeat-reason\002, antirepeat-bantime, \002antirepeat-warn\002, antirepeat-banmethod, \002antirepeat-banmask\002, antirepeat-setting"
set black(say.ro.man.225) "Vizualizare setari optiuni: \002%char%show\002 <setare> ; \002%botnick% show\002 <setare> ; \002(PRIVMSG) show\002 <#canal> <setare>"

#AntiColor

set black(say.ro.man.226) "\[MAN\] \002AntiColor\002 este un modul de protectie impotriva userilor ce folosesc \002CULORI\002 pe %chan%."
set black(say.ro.man.227) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.228) "\[MAN\] \002%char%set\002 (+/-)anticolor ; \002%botnick% set\002 (+/-)anticolor ; \002(PRIVMSG) set\002 <#canal> (+/-)anticolor"
set black(say.ro.man.229) "\[MAN\] Setari optionale: \002anticolor-reason\002, anticolor-bantime, \002anticolor-warn\002, anticolor-banmethod, \002anticolor-banmask\002"
set black(say.ro.man.230) "Vizualizare setari optiuni: \002%char%show\002 <setare> ; \002%botnick% show\002 <setare> ; \002(PRIVMSG) show\002 <#canal> <setare>"

#AntiBold

set black(say.ro.man.231) "\[MAN\] \002AntiBold\002 este un modul de protectie impotriva userilor ce folosesc \002BOLD\002 pe %chan%."
set black(say.ro.man.232) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.233) "\[MAN\] \002%char%set\002 (+/-)antibold ; \002%botnick% set\002 (+/-)antibold ; \002(PRIVMSG) set\002 <#canal> (+/-)antibold"
set black(say.ro.man.234) "\[MAN\] Setari optionale: \002antibold-reason\002, antibold-bantime, \002antibold-warn\002, antibold-banmethod, \002antibold-banmask\002"
set black(say.ro.man.235) "Vizualizare setari optiuni: \002%char%show\002 <setare> ; \002%botnick% show\002 <setare> ; \002(PRIVMSG) show\002 <#canal> <setare>"

#AntiUnderline

set black(say.ro.man.236) "\[MAN\] \002AntiUnderline\002 este un modul de protectie impotriva userilor ce folosesc \002UNDERLINE\002 pe %chan%."
set black(say.ro.man.237) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.238) "\[MAN\] \002%char%set\002 (+/-)antiunderline ; \002%botnick% set\002 (+/-)antiunderline ; \002(PRIVMSG) set\002 <#canal> (+/-)antiunderline"
set black(say.ro.man.239) "\[MAN\] Setari optionale: \002antiunderline-reason\002, antiunderline-bantime, \002antiunderline-warn\002, antiunderline-banmethod, \002antiunderline-banmask\002"
set black(say.ro.man.240) "Vizualizare setari optiuni: \002%char%show\002 <setare> ; \002%botnick% show\002 <setare> ; \002(PRIVMSG) show\002 <#canal> <setare>"

#AntiCaps

set black(say.ro.man.241) "\[MAN\] \002AntiCaps\002 este un modul de protectie impotriva userilor ce folosesc \002CAPS LOCK\002 pe %chan%."
set black(say.ro.man.242) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.243) "\[MAN\] \002%char%set\002 (+/-)anticaps ; \002%botnick% set\002 (+/-)anticaps ; \002(PRIVMSG) set\002 <#canal> (+/-)anticaps"
set black(say.ro.man.244) "\[MAN\] Setari optionale: \002anticaps-reason\002, anticaps-bantime, \002anticaps-warn\002, anticaps-banmethod, \002anticaps-banmask\002"
set black(say.ro.man.245) "Vizualizare setari optiuni: \002%char%show\002 <setare> ; \002%botnick% show\002 <setare> ; \002(PRIVMSG) show\002 <#canal> <setare>"

#BadNick

set black(say.ro.man.246) "\[MAN\] \002BadNick\002 este un modul de protectie impotriva userilor ce folosesc NICK-uri ce au in componenta caractere *interzise*."
set black(say.ro.man.247) "\[MAN\] SINTAXE FOLOSIRE:"
set black(say.ro.man.248) "\[MAN\] \002%char%set\002 (+/-)badnick ; \002%botnick% set\002 (+/-)badnick ; \002(PRIVMSG) set\002 <#canal> (+/-)badnick"
set black(say.ro.man.249) "\[MAN\] \002%char%badnick\002 \[#canal\] add <*text*> ; \002%char%badnick \[#canal\] list\002"
set black(say.ro.man.250) "\[MAN\] \002%char%badnick\002 \[#canal\] add <+cuvant> (adauga exceptie) ; \002%char%badnick\002 \[#canal\] del <nr. lista> (sterge badnick din lista)"
set black(say.ro.man.251) "\[MAN\] Setari optionale: \002badnick-reason\002, badnick-bantime, \002badnick-banmask\002, badnick-bmethod, \002badnick-banwait\002"

#BadRealname

set black(say.ro.man.252) "\[MAN\] \002BadRealname\002 este un modul de protectie impotriva userilor ce folosesc realname-uri ce au in componenta cuvinte/caractere *interzise* (suporta wildcard-uri)."
set black(say.ro.man.253) "\[MAN\] SINTAXE FOLOSIRE:"
set black(say.ro.man.254) "\[MAN\] \002%char%set\002 (+/-)badrealname ; \002%botnick% set\002 (+/-)badrealname ; \002(PRIVMSG) set\002 <#canal> (+/-)badrealname"
set black(say.ro.man.255) "\[MAN\] \002%char%badrealname\002 \[#canal\] add <cuvant> ; \002%char%badrealname \[#canal\] list\002"
set black(say.ro.man.256) "\[MAN\] \002%char%badrealname\002 \[#canal\] add <+cuvant> (adauga exceptie) ; \002%char%badrealname\002 \[#canal\] del <nr. lista> (sterge badrealname din lista)"
set black(say.ro.man.257) "\[MAN\] Setari optionale: \002badrealname-reason\002, badrealname-bantime, \002badrealname-banmask\002"

#AutoOp

set black(say.ro.man.258) "\[MAN\] \002AutoOp\002 este o optiune care odata activata va da \002OP\002 fiecarui user ce da join pe %chan%."
set black(say.ro.man.259) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.260) "\[MAN\] \002%char%set\002 (+/-)autoop ; \002%botnick% set\002 (+/-)autoop\002 ; \002(PRIVMSG) set\002 <#canal> (+/-)autoop"

#AutoVoice

set black(say.ro.man.261) "\[MAN\] \002AutoVoice\002 este o optiune care odata activata va da \002VOICE\002 fiecarui user ce da join pe %chan%."
set black(say.ro.man.262) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.263) "\[MAN\] \002%char%set\002 (+/-)autovoice ; \002%botnick% set\002 (+/-)autovoice ; \002(PRIVMSG) set\002 <#canal> (+/-)autovoice"

#AntiJoinFlood

set black(say.ro.man.264) "\[MAN\] \002AntiJoinFlood\002 este un modul de protectie impotriva actiunii de \002massjoin\002 prin blocarea canalului cu moduri. De asemenea, actioneaza si impotriva userilor ce executa join/part sau join/quit in exces."
set black(say.ro.man.265) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.266) "\[MAN\] \002%char%set\002 (+/-)antijoinflood ; \002%botnick% set\002 (+/-)antijoinflood ; \002(PRIVMSG) set\002 <#canal> (+/-)antijoinflood"
set black(say.ro.man.267) "\[MAN\] Setari optionale: \002joinflood\002 (<nr. joins>:<nr. secunde>)"
set black(say.ro.man.268) "Vizualizare setari optiuni: \002%char%show\002 <setare> ; \002%botnick% show\002 <setare> ; \002(PRIVMSG) show\002 <#canal> <setare>"

#AntiChanFlood

set black(say.ro.man.269) "\[MAN\] \002AntiChanFlood\002 este un modul de protectie impotriva userilor care fac text flood pe %chan%."
set black(say.ro.man.270) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.271) "\[MAN\] \002%char%set\002 (+/-)antichanflood ; \002%botnick% set\002 (+/-)antichanflood ; \002(PRIVMSG) set\002 <#canal> (+/-)antichanflood"
set black(say.ro.man.272) "\[MAN\] Setari optionale: \002antichanflood-reason\002 (setare motiv predefinit), \002antichanflood-bantime\002 (setare timp ban predefinit), \002chanflood\002 (<nr. linii>:<nr secunde>)"
set black(say.ro.man.273) "Vizualizare setari optiuni: \002%char%show\002 <setare> ; \002%botnick% show\002 <setare> ; \002(PRIVMSG) show\002 <#canal> <setare>"

#BadIdent

set black(say.ro.man.274) "\[MAN\] \002BadIdent\002 este un modul de protectie impotriva userilor ce folosesc IDENT-uri ce au in componenta cuvinte/caractere *interzise*  (suporta wildcard-uri)."
set black(say.ro.man.275) "\[MAN\] SINTAXE FOLOSIRE:"
set black(say.ro.man.276) "\[MAN\] \002%char%set\002 (+/-)badident ; \002%botnick% set\002 (+/-)badident ; \002(PRIVMSG) set\002 <#canal> (+/-)badident"
set black(say.ro.man.277) "\[MAN\] \002%char%badident\002 \[#canal\] add <cuvant> ; \002%char%badident \[#canal\] list\002"
set black(say.ro.man.278) "\[MAN\] \002%char%badident\002 \[#canal\] add <+cuvant> (adauga exceptie) ; \002%char%badident\002 \[#canal\] del <nr. lista> (sterge badident din lista)"
set black(say.ro.man.279) "\[MAN\] Setari optionale: \002badident-reason\002 (setare motiv predefinit), \002badident-bantime\002 (setare timp ban predefinit), \002badident-banmask\002 (setare metoda banmask)"

#ShowHandle

set black(say.ro.man.280) "\[MAN\] \002ShowHandle\002 este o optiune care odata activata va adauga langa motivul banurilor si userul celui care a dat banul, astfel incat persoana banata sa poata vedea cine i-a dat ban."
set black(say.ro.man.281) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.282) "\[MAN\] \002%char%set\002 (+/-)showhandle ; \002%botnick% set\002 (+/-)showhandle ; \002(PRIVMSG) set\002 <#canal> (+/-)showhandle"

#ShowCount

set black(say.ro.man.283) "\[MAN\] \002ShowCount\002 este o optiune care odata activata va adauga langa motivul banurilor si numaratoarea acestora."
set black(say.ro.man.284) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.285) "\[MAN\] \002%char%set\002 (+/-)showcount ; \002%botnick% set\002 (+/-)showcount ; \002(PRIVMSG) set\002 <#canal> (+/-)showcount"

#Showtime

set black(say.ro.man.286) "\[MAN\] \002Showtime\002 este o optiune care odata activata va adauga langa motivul banurilor si timpul de expirare, astfel incat persoana banata sa stie cand va expira respectivul ban."
set black(say.ro.man.287) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.288) "\[MAN\] \002%char%set\002 (+/-)showtime ; \002%botnick% set\002 (+/-)showtime ; \002(PRIVMSG) set\002 <#canal> (+/-)showtime"

#ShowUrl

set black(say.ro.man.289) "\[MAN\] \002ShowUrl\002 este o optiune care odata activata va adauga langa motivul banurilor si URL-ul canalului (vezi si \002!man url\002)."
set black(say.ro.man.290) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.291) "\[MAN\] \002%char%set\002 (+/-)showurl ; \002%botnick% set\002 (+/-)showurl ; \002(PRIVMSG) set\002 <#canal> (+/-)showurl"

#Xbantime

set black(say.ro.man.292) "\[MAN\] \002xbantime\002 este o optiune prin care se seteaza timpul de ban la X (doar daca \002+xban\002 este activat)."
set black(say.ro.man.293) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.294) "\[MAN\] \002%char%set\002 xbantime <nr. ore> ; %botnick% set\002 xbantime <nr. ore> ; \002(PRIVMSG) set\002 <#canal> xbantime <nr. ore>"

#XbanLevel

set black(say.ro.man.295) "\[MAN\] \002xBanLevel\002 este o optiune prin care se seteaza nivelul de ban la X (doar daca \002+xban\002 este activat)"
set black(say.ro.man.296) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.297) "\[MAN\] \002%char%set\002 xbanlevel <nivel X> ; \002%botnick% set\002 xbanlevel <nivel X> ; \002(PRIVMSG) set\002 <#canal> xbanlevel <nivel X>"

#oProtect

set black(say.ro.man.298) "\[MAN\] \002oProtect\002 este o optiune care odata activata va proteja pe cei cu \002OP (@)\002 de la protectii."
set black(say.ro.man.299) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.300) "\[MAN\] \002%char%set\002 (+/-)oprotect ; \002%botnick% set\002 (+/-)oprotect ; \002(PRIVMSG) set\002 <#canal> (+/-)oprotect"

#vProtect

set black(say.ro.man.301) "\[MAN\] \002vProtect\002 este o optiune care odata activata va proteja pe cei cu \002VOICE (+v)\002 de la protectii."
set black(say.ro.man.302) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.303) "\[MAN\] \002%char%set\002 (+/-)vprotect ; \002%botnick% set\002 (+/-)vprotect ; \002(PRIVMSG) set\002 <#canal> (+/-)vprotect"

#hoProtect

set black(say.ro.man.304) "\[MAN\] \002hoProtect\002 este o optiune care odata activata va proteja pe cei cu \002HALFOP (+h %)\002 de la protectii."
set black(say.ro.man.305) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.306) "\[MAN\] \002%char%set\002 (+/-)hoprotect ; \002%botnick% set\002 (+/-)hoprotect ; \002(PRIVMSG) set\002 <#canal> (+/-)hoprotect"

#ShowID

set black(say.ro.man.307) "\[MAN\] \002ShowID\002 este o optiune care odata activata va adauga la motivul banurilor \002ID-ul\002 respectivului ban din lista de banuri a eggdrop-ului."
set black(say.ro.man.308) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.309) "\[MAN\] \002%char%set\002 (+/-)showid ; \002%botnick% set\002 (+/-)showid; \002(PRIVMSG) set\002 <#canal> (+/-)showid"


################################################# MAN MODULE #####################################################

 
#xTools

set black(say.ro.man.407) "\[MAN\] \002xTools\002 este un modul care va avea grija ca eggdrop-ul sa isi ia Op, Voice, sa isi dea Unban, Invite prin *X*."
set black(say.ro.man.408) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.409) "\[MAN\] \002%char%set\002 (+/-)xtools ; \002%botnick% set\002 (+/-)xtools ; \002(PRIVMSG) set\002 <#canal> (+/-)xtools"

#BadChan

set black(say.ro.man.410) "\[MAN\] \002BadChan\002 este un modul de protectie care nu va lasa userii ce se afla pe anumite canale din blacklist sa intre pe %chan% (suporta wildcard-uri). Acum suporta canale de tip \002REGEX\002"
set black(say.ro.man.411) "\[MAN\] SINTAXE FOLOSIRE:"
set black(say.ro.man.412) "\[MAN\] \002%char%badchan\002 <ON|OFF> ; \002%botnick% badchan\002 <ON|OFF> ; \002(PRIVMSG) badchan\002 <#canal> <ON|OFF>"
set black(say.ro.man.413) "\[MAN\] \002%char%badchan add\002 <#badchan> \[motiv\] (adauga badchan) ; \002%char%badchan \[#canal\] list\002 (vezi lista badchans)"
set black(say.ro.man.414) "\[MAN\] \002%char%badchan add\002 <#badchan> \[global\] \[motiv\]\002 ; %char%badchan del\002 <nr. lista> \[global\] ; \002%char%badchan list\002 \[global\]"
set black(say.ro.man.415) "\[MAN\] \002%char%badchan add\002 <+#badchan> (adauga exceptie) ; \002%char%badchan regex\002 <#regex> \[motiv\] \001(exemplu \001regex: #\[a-z\]+\[0-9\]\[0-9\])\001 , adauga badchan de tip REGEX, canalele ce vor corespunde expresiei vor fi considerate BADCHAN)"
set black(say.ro.man.416) "\[MAN\] Setari optionale: \002badchan-reason\002, badchan-bantime, \002badchan-bmethod\002, badchan-scantime, \002badchan-banwait\002, showbadchan"

#Anunt

set black(say.ro.man.417) "\[MAN\] \002Anunt\002 este un modul care va avea rolul de a afisa anunturi pe %chan% la un anumit interval de timp si in functie de activitatea de pe canal (vezi si \002%char%man anunt-showtime & suporta !%chan% sau !%botnick%)."
set black(say.ro.man.417_1) "\[MAN\] ** Note: Aceste mesaje vor fi expuse unul cate unul si NUMAI daca pe acel canal exista activitate. In caz contrar eggdropul intra in stand by pana la primul semn de activitate (join, part, chat, etc.). **"
set black(say.ro.man.418) "\[MAN\] SINTAXE FOLOSIRE:"
set black(say.ro.man.419) "\[MAN\] \002%char%anunt <ON|OFF>\002 ; %botnick% anunt <ON|OFF> ; \002(PRIVMSG) anunt <#canal> <ON|OFF>\002"
set black(say.ro.man.420) "\[MAN\] \002%char%anunt\002 \[#canal\] add <mesaj> ; \002%char%anunt \[#canal\] list\002 ; \002%char%anunt\002 \[#canal\] del <nr. lista>"
set black(say.ro.man.421) "\[MAN\] Pentru a adauga mai mult de 1 propozitie intr-un anunt folositi \002%char%anunt add <mesaj1>~<mesaj2>..\002 iar eggdrop-ul va da anuntul ca doua propozitii diferite."

#Limit

set black(say.ro.man.422) "\[MAN\] \002Limit\002 este un modul care are rolul de a avea grija de limita canalului"
set black(say.ro.man.423) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.424) "\[MAN\] \002%char%limit\002 <ON|OFF> ; \002%botnick% limit\002 <ON|OFF> ; \002(PRIVMSG) limit\002 <#canal> <ON|OFF>"
set black(say.ro.man.425) "\[MAN\] \002%char%limit set <numar>\002 (setare valoare default pentru limita)"
set black(say.ro.man.426) "Vizualizare setari optiuni: \002%char%show\002 <setare> ; \002%botnick% show\002 <setare> ; \002(PRIVMSG) show\002 <#canal> <setare>"

#Topic

set black(say.ro.man.427) "\[MAN\] \002Topic\002 este un modul prin care se poate seta topic-ul, ce poate fi vazut la \002%char%info #canal\002. Daca se specifica niciun text, eggdrop-ul va adauga, automat, topic-ul curent al canalului."
set black(say.ro.man.427_1) "\[MAN\] ** Note: Daca vreti sa resetati/eliminati topic folositi: \002%char%topic unset\002. **"
set black(say.ro.man.428) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.429) "\[MAN\] \002%char%topic\002 \[#canal\] set <text> ; \002%botnick% topic\002 \[#canal\] set <text> ; \002(PRIVMSG) topic\002 \[#canal\] set <text>"
set black(say.ro.man.430) "Vizualizare setari optiuni: \002%char%show\002 <setare> ; \002%botnick% show\002 <setare> ; \002(PRIVMSG) show\002 <#canal> <setare>"

#CloneScan

set black(say.ro.man.431) "\[MAN\] \002CloneScan\002 este un modul care odata activat la un interval de timp va scana %chan% de clone."
set black(say.ro.man.432) "\[MAN\] SINTAXE FOLOSIRE:"
set black(say.ro.man.433) "\[MAN\] \002%char%set\002 (+/-)clonescan ; \002%botnick% set\002 (+/-)clonescan ; \002(PRIVMSG) set\002 <#canal> (+/-)clonescan"
set black(say.ro.man.433_1) "\[MAN\] \002%char%clonescan add\002 <ip|host> ; \002%char%clonescan del\002 <nr. lista> ; \002%char%clonescan list\002"
set black(say.ro.man.434) "\[MAN\] Setari optionale: \002clonescan-maxclone\002 (setare nr. maxim de clone), \002clonescan-bantime\002 (setare timp ban predefinit), \002clonescan-reason\002 (setare motiv predefinit)"
set black(say.ro.man.435) "Vizualizare setari optiuni: \002%char%show\002 <setare> ; \002%botnick% show\002 <setare> ; \002(PRIVMSG) show\002 <#canal> <setare>"

#Seen

set black(say.ro.man.436) "\[MAN\] \002Seen\002 este un modul care odata activat va salva inregistrari cu join/part/quit/netsplit/nickchange/lastmsg a userilor de pe acel canal. Are o baza de date pentru fiecare canal."
set black(say.ro.man.437) "\[MAN\] SINTAXE FOLOSIRE:"
set black(say.ro.man.438_1) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.438) "\[MAN\] \002%char%set\002 (+/-)seen ; \002%botnick% set\002 (+/-)seen ; \002(PRIVMSG) set\002 <#canal> (+/-)seen"
set black(say.ro.man.438_2) "\[MAN\] \002%char%seen\002 <nick|ip|host> ; \002%botnick% seen\002 <nick|ip|host> ; \002(PRIVMSG) seen\002 \[#canal\] <nick|ip|host>"
set black(say.ro.man.438_3) "\[MAN\] \002%char%seen\002 \[global\] <nick|ip|host> ; \002%botnick% seen\002 \[global\] <nick|ip|host> ; \002(PRIVMSG) seen\002 \[#canal|global\] <nick|ip|host>"
set black(say.ro.man.439) "\[MAN\] Setari optionale: \002seenreply\002"
set black(say.ro.man.440) "Vizualizare setari optiuni: \002%char%show\002 <setare> ; \002%botnick% show\002 <setare> ; \002(PRIVMSG) show\002 <#canal> <setare>"

#Greet

set black(say.ro.man.441) "\[MAN\] \002Greet\002 este un modul prin care puteti adauga un mesaj de intampinare catre userii care dau join pe %chan% (vezi si \002%char%man infoline\002 sau \002%char%man count\002)."
set black(say.ro.man.442) "\[MAN\] SINTAXE FOLOSIRE:"
set black(say.ro.man.443) "\[MAN\] \002%char%greet\002 <ON|OFF> ; \002%botnick% greet\002 <ON|OFF> ; \002(PRIVMSG) greet\002 <#canal> <ON|OFF>"
set black(say.ro.man.444) "\[MAN\] \002%char%greet\002 \[#canal\] set <mesaj>\002 ; \002%botnick% greet\002 \[#canal\] set <mesaj> ; \002(PRIVMSG) greet\002 \[#canal\] set <mesaj>"
set black(say.ro.man.445) "\[MAN\] Setari optionale: \002%char%set greet-method <metoda>\002 (NOTICE | PRIVMSG)"
set black(say.ro.man.446) "\[MAN\] Pentru a adauga mai mult de 1 propozitie intr-un greet folositi \002%char%set \[#canal\] greet <mesaj1>~<mesaj2>..\002 iar eggdrop-ul va da greet-ul ca doua propozitii diferite (suporta %countchan%, %nick%, %time% and %count%)."

#Leave

set black(say.ro.man.447) "\[MAN\] \002Leave\002 este un modul prin care puteti adauga mesaje catre userii care dau part de pe %chan%."
set black(say.ro.man.448) "\[MAN\] SINTAXE FOLOSIRE:"
set black(say.ro.man.449) "\[MAN\] \002%char%leave\002 <ON|OFF> ; \002%botnick% leave\002 <ON|OFF> ; \002(PRIVMSG) leave\002 <#canal> <ON|OFF>"
set black(say.ro.man.450) "\[MAN\] \002%char%leave\002 \[#canal\] set <mesaj>\002 ; \002%botnick% leave\002 \[#canal\] set <mesaj> ; \002(PRIVMSG) leave\002 \[#canal\] set <mesaj>"
set black(say.ro.man.451) "\[MAN\] Setari optionale: \002%char%set leave-method <metoda>\002 (NOTICE | PRIVMSG)"
set black(say.ro.man.452) "\[MAN\] Pentru a adauga mai mult de 1 propozitie intr-un greet folositi \002%char%set \[#canal\] leave <mesaj1>~<mesaj2>..\002 iar eggdrop-ul va da leave-ul ca doua propozitii diferite."

#Idle

set black(say.ro.man.453) "\[MAN\] \002Idle\002 este un modul care odata activat nu va lasa pe userii cu idle sa aibe \002op (@)\002 sau \002voice (+v)\002."
set black(say.ro.man.453_1) "\[MAN\] Format perioada: <x>\002m\002 = minute, <x>\002h\002 = ore, <x>\002d\002 = zile"
set black(say.ro.man.454) "\[MAN\] SINTAXE FOLOSIRE:"
set black(say.ro.man.455) "\[MAN\] \002%char%idle\002 <(+/-)o / (+/-)v / (+/-)ho> ; \002%botnick% idle\002 <(+/-)o / (+/-)v / (+/-)ho> ; \002(PRIVMSG) idle\002 <#canal> <(+/-)o / (+/-)v / (+/-)ho>"
set black(say.ro.man.456) "\[MAN\] \002%char%idle add\002 <nick> (adaugare exceptie de la idle), \002%char%idle <list>\002 (listare exceptii), \002%char%idle del\002 <nick> (stergere exceptie)"
set black(say.ro.man.457) "\[MAN\] Setari optionale: \002idleopmax\002 <perioada> (perioada timp idledeop) ; \002idlevoicemax\002 <perioada> (perioada timp idlevoice) ; \002idlehalfopmax\002 <perioada> (perioada timp idlehalfop) ; \002idle-scantime\002 <perioada> (timp scanare)"
set black(say.ro.man.458) "Vizualizare setari optiuni: \002%char%show\002 <setare> ; \002%botnick% show\002 <setare> ; \002(PRIVMSG) show\002 <#canal> <setare>"
set black(say.ro.man.458_1) "\[MAN\] Pentru informatii despre \002idlevoice\002 vezi: \002%char%man idle\002"
set black(say.ro.man.458_2) "\[MAN\] Pentru informatii despre \002idleop\002 vezi: \002%char%man idle\002"
set black(say.ro.man.458_3) "\[MAN\] Pentru informatii despre \002idlehalfop\002 vezi: \002%char%man idle\002"

#BackChan

set black(say.ro.man.459) "\[MAN\] \002BackChan\002 este un modul care odata activat da posibilitatea ca un anumit canal sa aibe un backchan in care eggdrop-ul va anunta banurile date de catre acesta pe canalul principal."
set black(say.ro.man.460) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.461) "\[MAN\] \002%char%set\002 \[#canal\] backchan <#backchan> ; \002%botnick% set\002 \[#canal\] backchan <#backchan> ; \002(PRIVMSG) set\002 <#canal> backchan <#backchan>"
set black(say.ro.man.462) "\[MAN\] Odata cu setarea canalului \002backchan\002 puteti folosi pe acesta toate comenzile de ban, iar acestea vor fi aplicate pe \002<#canal>\002 (canalul principal). Nu suporta 2 sau mai multe canale main pe un singur bakchan. Fiecare canal main cu backchan-ul lui."
set black(say.ro.man.463) "\[MAN\] \002ChanReport\002 (BackChan) este un modul care odata activat da posibilitatea ca un anumit canal sa aibe un backchan in care eggdrop-ul va anunta banurile date de catre acesta pe \002<#canal>\002 (canalul principal)."

#TopWords

set black(say.ro.man.464) "\[MAN\] \002TopWords\002 este un modul care odata activat va inregistra activitatea userilor de pe %chan% (numarul de cuvinte scrise)."
set black(say.ro.man.465) "\[MAN\] SINTAXE FOLOSIRE:"
set black(say.ro.man.466) "\[MAN\] \002%char%set\002 (+/-)topwords ; \002%botnick% set\002 (+/-)topwords ; \002(PRIVMSG) set\002 <#canal> (+/-)topwords"
set black(say.ro.man.467) "\[MAN\] \002%char%topwords\002 \[#canal\] <nick> \[total\] ; \002%char%topwords\002 \[#canal\] <nick> \[total\] ; \002(PRIVMSG) topwords\002 \[#canal\] <nick> \[total\]"
set black(say.ro.man.467_1) "\[MAN\] \002%char%topwords\002 \[#canal\] <nick> \[total|reset\]  ; \002(PRIVMSG) topwords\002 \[#canal\] <nick> \[total|reset\]"
set black(say.ro.man.467_2) "\[MAN\] \002%char%topwords\002 \[#canal\] add <nick> (adaugare exceptie) ; \002%char%topwords\002 \[#canal\] list (listare exceptii) ; \002%char%topwords\002 \[#canal\] del <nick> (stergere exceptie)"

#AntiTake

set black(say.ro.man.473) "\[MAN\] \002Antitake\002 este un modul care are doua componente: Prima avand functia de protejare impotriva celor care nu au access la Eggdrop si dau DEOP iar cea de-a doua pentru cei care nu au access la Eggdrop si dau OP."
set black(say.ro.man.474) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.475) "\[MAN\] \002%char%set\002 (+/-)dontdeop ; \002%botnick% set\002 (+/-)dontdeop (protectie la deop) ; \002%char%set\002 (+/-)dontop ; \002%botnick% set\002 (+/-)dontop (protectie la op)"
set black(say.ro.man.475_1) "\[MAN\] Pentru informatii despre \002dontdeop\002 vezi: \002%char%man antitake\002"
set black(say.ro.man.475_2) "\[MAN\] Pentru informatii despre \002dontop\002 vezi: \002%char%man antitake\002"

#Private

set black(say.ro.man.476) "\[MAN\] \002Private\002 este un modul care odata activat nu va lasa pe cei fara access sau pe cei care nu se afla in lista de exceptii la Eggdrop sa dea join pe %chan%."
set black(say.ro.man.477) "\[MAN\] SINTAXE FOLOSIRE:"
set black(say.ro.man.478) "\[MAN\] \002%char%set\002 (+/-)private ; \002%botnick% set\002 (+/-)private ; \002(PRIVMSG) set\002 <#canal> (+/-)private"
set black(say.ro.man.479) "\[MAN\] \002%char%private add\002 <nick> <host> (adaugare exceptie), \002%char%private list\002 (listare exceptii), \002%char%private del\002 <nick> (stergere exceptie)"
set black(say.ro.man.480) "\[MAN\] Setari optionale: \002private-reason\002 (setare motiv predefinit); \002private-bantime\002 (setare timp ban in minute)"
set black(say.ro.man.481) "Vizualizare setari optiuni: \002%char%show\002 <setare> ; \002%botnick% show\002 <setare> ; \002(PRIVMSG) show\002 <#canal> <setare>"

#AutoBroadcast

set black(say.ro.man.482) "\[MAN\] \002AutoBroadCast\002 este un modul care odata activat va da mesaje pe toate canalele eggdrop-ului odata la un interval de timp"
set black(say.ro.man.483) "\[MAN\] SINTAXE FOLOSIRE:"
set black(say.ro.man.484) "\[MAN\] \002%char%bt\002 <ON|OFF> ; \002%botnick% bt\002 <ON|OFF> ; \002(PRIVMSG) bt\002 <#canal> <ON|OFF>"
set black(say.ro.man.485) "\[MAN\] \002%char%bt add\002 <mesaj> ; \002%char%bt\002 list ; \002%char%bt del\002 <nr. lista>"
set black(say.ro.man.486) "\[MAN\] \002%char%set\002 <#canal> (+/-)silent (nu va da broadcast pe canal)"
set black(say.ro.man.486_1) "\[MAN\] Pentru informatii despre \002silent\002 vezi: \002%char%man autobroadcast\002"

#Language

set black(say.ro.man.487) "\[MAN\] \002Lang\002 permite schimbarea limbii in care eggdropul iti raspunde, precum si limba default a motivelor de kick/ban de pe un anumit canal."
set black(say.ro.man.487_1) "\[MAN\] Limbi disponibile: \002RO\002 = romana ; \002EN\002 = engleza ; \002ES\002 = spaniola"
set black(say.ro.man.488) "\[MAN\] SINTAXE FOLOSIRE:"
set black(say.ro.man.489) "\[MAN\] \002%char%set\002 \[#canal\] lang <limba> ; \002%botnick% set\002 \[#canal\] lang <limba> ; \002(PRIVMSG) set\002 \[#canal\] lang <limba>"
set black(say.ro.man.489_1) "\[MAN\] \002%char%myset\002 lang <limba> ; \002%botnick% myset\002 lang <limba> ; \002(PRIVMSG) myset\002 lang <limba> (setare limba default user)"

#TCL

set black(say.ro.man.490) "\[MAN\] \002TCL\002 este un modul cu care puteti incarca tcl-uri, lista atat cele incarcate cat si cele din scripts (upload restrictionat numai la fisiere\002 .tcl\002)."
set black(say.ro.man.491) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.492) "\[MAN\] \002%char%tcl <list>\002 (vizualizare tcl-uri); %char%tcl wget <link/nume.tcl>; \002%char%tcl load\002 <nume.tcl> (incarcare tcl); \002%char%tcl \002unload\002 <nume.tcl> (dezactivare tcl); \002%char%tcl info\002 <nume.tcl> (informatii tcl) "

#Next

set black(say.ro.man.493) "\[MAN\] \002Next\002 este un modul folosit pentru canalele de help prin care puteti asista useri ce au nevoie de ajutor."
set black(say.ro.man.494) "\[MAN\] SINTAXE FOLOSIRE:"
set black(say.ro.man.495) "\[MAN\] \002%char%set\002 (+/-)next ; \002%botnick% set\002 (+/-)next ; \002(PRIVMSG) set\002 <#canal> (+/-)next"
set black(say.ro.man.496) "\[MAN\] \002%char%next\002 (voice userul urmator) ; \002%char%next list\002 (afisare lista), \002%char%helped\002 <nick>, \002%char%noidle\002 <nick>, \002%char%skip\002 <nick>"
set black(say.ro.man.497) "\[MAN\] Setari optionale: \002next-reason\002 (setare motiv predefinit), \002next-bantime\002 (setare timp ban in minute)"
set black(say.ro.man.498) "Vizualizare setari optiuni: \002%char%show\002 <setare> ; \002%botnick% show\002 <setare> ; \002(PRIVMSG) show\002 <#canal> <setare>"


################################################# MAN COMENZI #####################################################


#upTime

set black(say.ro.man.605) "\[MAN\] \002upTime\002 este o comanda prin care puteti afla de cand este eggdrop-ul pornit, timpul de conectare la server, cat si server-ul pe care este conectat."
set black(say.ro.man.606) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.607) "\[MAN\] \002%char%uptime\002 ; %botnick% uptime ; \002(PRIVMSG) uptime\002"

#Status

set black(say.ro.man.608) "\[MAN\] \002Status\002 este o comanda prin care puteti afla atat informatiile din comanda %char%uptime, cat si canalele eggdrop-ului si uptime-ul serverului pe care e ridicat."
set black(say.ro.man.609) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.610) "\[MAN\] \002%char%status\002 ; %botnick% status ; \002(PRIVMSG) status\002"

#Set

set black(say.ro.man.611) "\[MAN\] \002Set\002 seteaza anumite flaguri pentru canal (anumite setari care ajuta eggdropul cum sa se comporte in anumite situatii)."
set black(say.ro.man.612) "\[MAN\] SINTAXE FOLOSIRE:"
set black(say.ro.man.613) "\[MAN\] \002%char%set\002 (+/-)flag / <flag|str|optiune> <descriere> ; \002%botnick% set\002 (+/-)flag / <flag|str|optiune> <descriere> ; \002(PRIVMSG) set\002 <#canal> (+/-)flag / <flag|str|optiune> <descriere>"
set black(say.ro.man.614) "\[MAN\] \002%char%set\002 global <flag|str|optiune> <descriere> (set pe toate canalele)"
set black(say.ro.man.615) "\[MAN\] Examplu: \002%char%set\002 chanmode +k <cheie> (setare cheie canal)"

#Jump

set black(say.ro.man.620) "\[MAN\] \002Jump\002 este o comanda prin care puteti schimba server-ul la care e conectat eggdrop-ul dvs."
set black(say.ro.man.621) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.622) "\[MAN\] \002 %char%jump\002 <server irc> ; \002%botnick% jump\002 <server irc> ; \002(PRIVMSG) jump\002 <server irc>"

#msg

set black(say.ro.man.623) "\[MAN\] \002msg\002 este o comanda prin care puteti da mesaj catre un canal sau un user."
set black(say.ro.man.624) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.625) "\[MAN\] \002 %char%msg\002 <nick> <mesaj> ; \002%botnick% msg\002 <nick> <mesaj> ; \002(PRIVMSG) msg\002 <nick> <mesaj>"

#Broadcast

set black(say.ro.man.626) "\[MAN\] \002Broadcast\002 este o comanda prin care puteti trimite un mesaj catre toate canalele eggdrop-ului."
set black(say.ro.man.627) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.628) "\[MAN\] \002 %char%broadcast\002 <mesaj> ; \002%botnick% broadcast\002 <mesaj> ; \002(PRIVMSG) broadcast\002 <mesaj>"

#Ignore

set black(say.ro.man.629) "\[MAN\] \002Ignore\002 este o comanda prin care puteti lista, adauga, sterge inregistrarile de tip \002ignore\002."
set black(say.ro.man.629_1) "\[MAN\] Format durata: <x>\002m\002 = minute, <x>\002h\002 = ore, \002d\002 = zile"
set black(say.ro.man.630) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.631) "\[MAN\] \002%char%ignore list\002 ; \002%char%ignore add\002 <ip|host> \[durata\] \[motiv\] ; \002%char%ignore del\002 <ip|host>"

#Chat

set black(say.ro.man.632) "\[MAN\] \002Chat\002 este o comanda prin care va puteti conecta la botnet-ul eggdrop-ului dvs."
set black(say.ro.man.633) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.634) "\[MAN\] \002%char%chat\002 ; %botnick% chat ; \002(PRIVMSG) chat\002"

#Channels

set black(say.ro.man.638) "\[MAN\] \002Channels\002 este o comanda prin care puteti vizualiza canalele aflate in memoria eggdrop-ului dvs."
set black(say.ro.man.639) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.640) "\[MAN\] \002%char%channels\002 ; %botnick% channels ; \002(PRIVMSG) channels\002"

#Nick

set black(say.ro.man.641) "\[MAN\] \002Nick\002 este o comanda prin care puteti schimba nick-ul eggdrop-ului dvs."
set black(say.ro.man.642) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.643) "\[MAN\] \002%char%nick\002 <nicknou> ; \002%botnick% nick\002 <nicknou> ; \002(PRIVMSG) nick\002 <nicknou>"
set black(say.ro.man.643_1) "\[MAN\] \002%char%set nick\002 <nicknou> ; \002%botnick% set nick\002 <nicknou> ; \002(PRIVMSG) set nick\002 <nicknou> (setare permanenta)"

#Restart 

set black(say.ro.man.644) "\[MAN\] \002Restart\002 este o comanda prin care puteti da restart eggdrop-ului dvs."
set black(say.ro.man.645) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.646) "\[MAN\] \002%char%restart\002 ; %botnick% nick restart ; \002(PRIVMSG) restart\002"
set black(say.ro.man.647) "\[MAN\] \002Retine:\002 Aceasta este folosita DOAR in cazul in care eggdrop-ul are prea mult lag sau functioneaza defectuos."

#Rehash

set black(say.ro.man.648) "\[MAN\] \002Rehash\002 este o comanda prin care puteti reincarca fisierele eggdrop-ului dvs."
set black(say.ro.man.649) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.650) "\[MAN\] \002%char%rehash\002 ; %botnick% nick rehash ; \002(PRIVMSG) rehash\002"

#Die

set black(say.ro.man.651) "\[MAN\] \002Die\002 este o comanda prin care puteti inchide eggdrop-ului dvs."
set black(say.ro.man.652) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.653) "\[MAN\] \002%char%die\002 ; %botnick% die ; \002(PRIVMSG) die\002"

#Suspend

set black(say.ro.man.654) "\[MAN\] \002Suspend\002 este o comanda prin care puteti da suspend unui canal din lista eggdrop-ului dvs."
set black(say.ro.man.655) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.656) "\[MAN\] \002%char%suspend\002 <#canal> \[motiv\] ; \002%botnick% suspend\002 <#canal> \[motiv\] ; \002(PRIVMSG) suspend\002 <#canal> \[motiv\]"

#unSuspend

set black(say.ro.man.657) "\[MAN\] \002unSuspend\002 este o comanda prin care puteti scoate suspend-ul unui canal din lista eggdrop-ului dvs."
set black(say.ro.man.658) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.659) "\[MAN\] \002%char%unsuspend\002 <#canal> ; \002%botnick% unsuspend\002 <#canal> ; \002(PRIVMSG) unsuspend\002 <#canal>"

#Save

set black(say.ro.man.660) "\[MAN\] \002Save\002 este o comanda prin care puteti salva fisierele eggdrop-ului dvs."
set black(say.ro.man.661) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.662) "\[MAN\] \002%char%save\002 ; %botnick% save ; \002(PRIVMSG) save\002"

#AddChan

set black(say.ro.man.663) "\[MAN\] \002AddChan\002 este o comanda prin care puteti adauga un canal in lista eggdrop-ului dvs."
set black(say.ro.man.664) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.665) "\[MAN\] \002%char%addchan\002 <#canal> \[key\] ; \002%botnick% addchan\002 <#canal> \[\key\] ; \002(PRIVMSG) addchan\002 <#canal> \[\key\]\002"
set black(say.ro.man.666) "\[MAN\] Daca se specifica \002\[key\]\002 eggdrop-ul va intra pe \002<#canal>\002 folosind cheia specificata."

#DelChan

set black(say.ro.man.667) "\[MAN\] \002DelChan\002 este o comanda prin care se sterge un canal din lista eggdrop-ului dvs."
set black(say.ro.man.668) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.669) "\[MAN\] \002%char%delchan\002 <#canal> <motiv> ; \002%botnick% delchan\002 <#canal> <motiv> ; \002(PRIVMSG) delchan\002 <#canal> <motiv>"

#Purge

set black(say.ro.man.670) "\[MAN\] \002Purge\002 este o comanda prin care se sterge un canal din lista eggdrop-ului DOAR de catre managerul acelui canal."
set black(say.ro.man.671) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.672) "\[MAN\] \002%char%purge\002 <#canal> <motiv> ; \002%botnick% purge\002 <#canal> <motiv> ; \002(PRIVMSG) purge\002 <#canal> <motiv>"

#AddInfo

set black(say.ro.man.676) "\[MAN\] \002AddInfo\002 este o comanda prin care iti poti adauga un mesaj personalizat la user. Acesta va fii disponibil in \002%char%info\002 dar va fii dat si la intrare pe canal."
set black(say.ro.man.677) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.678) "\[MAN\] \002%char%addinfo\002 <text|reset> ; \002%botnick% addinfo\002 <text|reset> ; \002(PRIVMSG) addinfo\002 <text|reset>"

#Invite 

set black(say.ro.man.679) "\[MAN\] \002Invite\002 este o comanda care data pe PRIVAT pentru a primi invite pe un anumit canal."
set black(say.ro.man.680) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.680) "\[MAN\] \002%char%invite\002 <#canal> <nick> ; \002%botnick% invite\002 <#canal> <nick> ; \002(PRIVMSG) invite\002 <#canal> <nick>"

#Say

set black(say.ro.man.681) "\[MAN\] \002Say\002 este o comanda folosita pentru a face eggdrop-ul sa zica un anumit text pe un canal specificat."
set black(say.ro.man.682) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.683) "\[MAN\] %char%say\002 \[#canal\] <text> ; \002%botnick% say\002 \[#canal\] <text> ; \002(PRIVMSG) say\002 <#canal> <text>"

#Refresh

set black(say.ro.man.684) "\[MAN\] \002Topicrefresh\002 ajuta la mentinerea topicului de pe %chan% prin reaplicarea lui la un interval de timp."
set black(say.ro.man.685) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.686) "\[MAN\] \002%char%set\002 (+/-)refresh | \002%botnick% set\002 (+/-)refresh ; \002(PRIVMSG) set\002 <#canal> (+/-)refresh"


################################################# MAN MODULE/COMENZI NOI #####################################################


#NoLogged

set black(say.ro.man.687) "\[MAN\] \002NoLogged\002 este o extra optiune a modulului \002voiceme\002, care odata activata, va permite utilizarea comenzii \002/msg %botnick% voiceme <#canal>\002 si de catre acei utilizatori care nu detin un username Cservice."
set black(say.ro.man.688) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.689) "\[MAN\] \002%char%set\002 (+/-)nologged | \002%botnick% set\002 (+/-)nologged ; \002(PRIVMSG) set\002 <#canal> (+/-)nologged"

#Colors

set black(say.ro.man.771) "\[MAN\] \002Colors\002 permite utilizatorilor sa-si seteze anumite \002culori\002 personale folosite in mesajele primite de la eggdrop."
set black(say.ro.man.772) "\[MAN\] Lista culori: bold, underline, red, blue, green, yellow, orange, cyan, grey, brown, purple, pink, black"
set black(say.ro.man.773) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.774) "\[MAN\] \002%char%myset\002 colors <culoare1 culoare2 culoare3 culoare4> ; \002%botnick% myset\002 colors <culoare1 culoare2 culoare3 culoare4> ; \002(PRIVMSG) myset\002 colors <culoare1 culoare2 culoare3 culoare4>"

#ReportNick

set black(say.ro.man.775) "\[MAN\] \002ReportNick\002 este o comanda care permite userilor regulari sa raporteze un anumit nick pentru ca face reclama sau trimite mesaje spam (de asemenea nivelele de acces \002voice\002 si \002protect\002 o pot folosi)."
set black(say.ro.man.776) "\[MAN\] \002Retineti\002: Daca doriti ca aceasta comanda sa functioneze, eggdropul trebuie neaparat sa fie operator (@) pe canal (utilizeaza @onotice pentru a informa operatorii)."
set black(say.ro.man.777) "\[MAN\] SINTAXE FOLOSIRE:"
set black(say.ro.man.778) "\[MAN\] \002%char%set\002 (+/-)reportnick ; \002%botnick% set\002 (+/-)reportnick ; \002(PRIVMSG) set\002 <#canal> (+/-)reportnick"
set black(say.ro.man.779) "\[MAN\] \002%char%report\002 <nick> <comentariu> ; \002%botnick% report\002 <nick> <comentariu> ; \002(PRIVMSG) report\002 <#canal> <nick> <comentariu>"

#InviteBan

set black(say.ro.man.780) "\[MAN\] \002InviteBan\002 este un modul de protectie impotriva userilor ce trimit eggdrop-ului invitatii pe alte canale."
set black(say.ro.man.781) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.782) "\[MAN\] \002%char%set\002 (+/-)inviteban ; \002%botnick% set\002 (+/-)inviteban ; \002(PRIVMSG) set\002 <#canal> (+/-)inviteban"
set black(say.ro.man.783) "\[MAN\] Setari optionale: \002inviteban-reason\002 (setare motiv predefinit); \002inviteban-bantime\002 (setare timp ban in minute)"

#BadHost

set black(say.ro.man.784) "\[MAN\] \002BadHost\002 este un modul de protectie impotriva acelor useri care folosesc IP-uri/vhost-uri \"interzise\" (suporta wildcard-uri)."
set black(say.ro.man.785) "\[MAN\] SINTAXE FOLOSIRE:"
set black(say.ro.man.786) "\[MAN\] \002%char%set\002 (+/-)badhost ; \002%botnick% set\002 (+/-)badhost ; \002(PRIVMSG) set\002 <#canal> (+/-)badhost"
set black(say.ro.man.787) "\[MAN\] \002%char%badhost\002 \[#canal\] add <ip|host>\002 ; \002%char%badhost \[#canal\] list\002"
set black(say.ro.man.787_1) "\[MAN\] \002%char%badhost\002 \[#canal\] add <+cuvant> (adauga exceptie) ; \002%char%badhost\002 \[#canal\] del <nr. lista> (sterge badhost din lista)"
set black(say.ro.man.788) "\[MAN\] Setari optionale: \002badhost-reason\002; badhost-bantime; \002badhost-bmethod\002"

#NickFlood

set black(say.ro.man.789) "\[MAN\] \002NickFlood\002 este un modul de protectie impotriva userilor care isi schimba nickname-ul prea des intr-un anumit interval de timp."
set black(say.ro.man.790) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.791) "\[MAN\] \002%char%set\002 (+/-)nickflood ; \002%botnick% set\002 (+/-)nickflood ; \002(PRIVMSG) set\002 <#canal> (+/-)nickflood"
set black(say.ro.man.792) "\[MAN\] Setari optionale: \002nickflood-reason\002; nickflood-bantime; \002nickflood-warn\002; nickflood-repeat; \002nickflood-banmethod\002; nickflood-banmask"

#SecureMode

set black(say.ro.man.793) "\[MAN\] \002SecureMode\002 este un modul de protectie menit sa previna join/part flood-ul cu boti (userii cu acces sunt exclusi de la verificare). Acest modul este facut special pentru Undernet."
set black(say.ro.man.794) "\[MAN\] Functioneaza doar cu modurile de canal \002+mD\002 si pe baza unui sistem ce genereaza un anumit cod pentru fiecare user care intra pe canal, pe care trebuie sa-l confirme o singura data (la primul join) daca vor le fie permisa intrarea pe canal."
set black(say.ro.man.795) "\[MAN\] SINTAXE FOLOSIRE:"
set black(say.ro.man.796) "\[MAN\] \002%char%set\002 (+/-)securemode ; \002%botnick% set\002 (+/-)securemode ; \002(PRIVMSG) set\002 <#canal> (+/-)securemode"
set black(say.ro.man.797) "\[MAN\] \002%char%securemode add\002 <ip|host> (suporta wildcard-uri) ; \002%char%securemode del\002 <nr. lista> ; \002%char%securemode list\002"

#VoiceMe

set black(say.ro.man.820) "\[MAN\] \002VoiceMe\002 este un modul prin care li se poate oferi, userilor logati la \002*X*\002, posibilitatea de a primi \002voice (+v)\002 folosind comanda \002/msg %botnick% voiceme <#canal>\002 (vezi si \002%char%man onlyonmode\002)."
set black(say.ro.man.821) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.822) "\[MAN\] \002%char%set\002 (+/-)voiceme ; \002%botnick% set\002 (+/-)voiceme ; \002(PRIVMSG) set\002 <#canal> (+/-)voiceme"
set black(say.ro.man.823) "Vizualizare setari optiuni: \002%char%show\002 <setare> ; \002%botnick% show\002 <setare> ; \002(PRIVMSG) show\002 <#canal> <setare>"

#OnlyOnMode

set black(say.ro.man.824) "\[MAN\] \002OnlyOnMode\002 este o extra optiune a modulului \002voiceme\002, care odata activata, va permite utilizarea comenzii \002/msg %botnick% voiceme <#canal>\002 NUMAI atunci cand \002modul +m\002 este setat pe canal."
set black(say.ro.man.825) "\[MAN\] De asemenea, eggdrop-ul va trimite pe canal, la un anumit interval de timp predefinit, un mesaj prin care toti userii sa afle ca, daca sunt inregistrati si logati la \002*X*\002, pot folosi comanda de mai sus pentru a primi \002voice (+v)\002 pe acel canal. Daca nu au un \002username Cservice\002 li se specifica in acelasi mesaj unde isi pot a crea unul."
set black(say.ro.man.826) "\[MAN\] \002Retineti\002: Aceasta extra optiune functioneaza DOAR impreuna cu modulul \002voiceme\002 si pe canalele \002+m\002 (moderate) (vezi si \002%char%man voiceme\002)."
set black(say.ro.man.827) "\[MAN\] SINTAXE FOLOSIRE:"
set black(say.ro.man.828) "\[MAN\] \002%char%set\002 (+/-)onlyonmode ; \002%botnick% set\002 (+/-)onlyonmode ; \002(PRIVMSG) set\002 <#canal> (+/-)onlyonmode"

#BanStats

set black(say.ro.man.834) "\[MAN\] \002BanStats\002 este un modul ce va permite eggdrop-ului sa tine o statistica referitoare la fiecare kick si ban executat pe un anumit canal."
set black(say.ro.man.835) "\[MAN\] SINTAXE FOLOSIRE:"
set black(say.ro.man.836) "\[MAN\] \002%char%set\002 (+/-)banstats ; \002%botnick% set\002 (+/-)banstats ; \002(PRIVMSG) set\002 <#canal> (+/-)banstats"
set black(say.ro.man.837) "\[MAN\] \002%char%banstats\002 <total|reset> ; \002%botnick% banstats\002 <total|reset> ; \002(PRIVMSG) banstats\002 <#canal> <total|reset>\002"

#cp

set black(say.ro.man.842) "\[MAN\] \002cp\002 este un modul care permite copierea setarilor unui canal pe alt canal, incluzand atat userii cu access, cat si lista de banuri, setarile canalului sau lista badchans."
set black(say.ro.man.843) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.844) "\[MAN\] %char%cp\002 <optiune> <#canal1> <#canal2> ; \002%botnick% cp\002 <optiune> <#canal1> <#canal2> ; \002(PRIVMSG) cp\002 <optiune> <#canal1> <#canal2>"
set black(say.ro.man.845) "\[MAN\] Ca \002<optiuni>\002 avem: \002<userlist>\002 (copiaza userlist-ul canalului); \002<banlist>\002 (copiaza banlist-ul canalului); \002<settings>\002 (copiaza setarile canalului); \002<badchans>\002 (copiaza lista badchans)"

#VoiceOnMsg 

set black(say.ro.man.846) "\[MAN\] \002VoiceOnMsg\002 este un modul care odata activat va face ca eggdrop-ul sa ofere voice (+v) utilizatorilor activi ce scriu un anumit numar predefinit de linii pe canal."
set black(say.ro.man.847) "\[MAN\] Totodata, le va lua acel voice (-v) utilizatorilor inactivi, cei cu un idle mai mare decat perioada de timp predefinita."
set black(say.ro.man.848) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.849) "\[MAN\] \002%char%set\002 (+/-)voiceonmsg ; \002%botnick% set\002 (+/-)voiceonsmg ; \002(PRIVMSG) set <#canal> (+/-)voiceonsmg"
set black(say.ro.man.850) "\[MAN\] Setari optionale: \002%char%set voiceonmsg-linenum\002 <nr. linii> (setare linii default) ; \002%char%set voiceonmsg-idletime\002 <perioada> (setare interval idle default)"

#Troll

set black(say.ro.man.851) "\[MAN\] \002Troll\002 este o comanda prin care un utilizator va primi ban cu un motiv implicit de \002troll\002 (vezi si \002%char%man showtroll\002)."
set black(say.ro.man.852) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.853) "\[MAN\] \002%char%troll\002 <nick> ; \002%botnick% troll\002 <nick> ; \002(PRIVMSG) troll\002 <#canal> <nick>"
set black(say.ro.man.854) "\[MAN\] Setari optionale: \002%char%set\002 troll-reason (motiv ban default) ; \002(PRIVMSG) set\002 <#canal> troll-reason (motiv ban default)"

#vr

set black(say.ro.man.856) "\[MAN\] \002vr\002 este o comanda prin care un utilizator sau mai multi vor primi ban cu un motiv implicit de \002virus/troian\002."
set black(say.ro.man.857) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.858) "\[MAN\] \002%char%vr\002 <nick|host> ; \002%botnick% vr\002 <nick|host> ; \002(PRIVMSG) vr\002 <#canal> <nick|host>"
set black(say.ro.man.859) "\[MAN\] Setari optionale: \002vr-reason\002 (motiv ban default); \002vr-banmask\002 (metoda banmask default); \002vr-bantime\002 (timp ban default)"
set black(say.ro.man.860) "Vizualizare setari optiuni: \002%char%show\002 <setare> ; \002%botnick% show\002 <setare> ; \002(PRIVMSG) show\002 <#canal> <setare>"

#XOnly

set black(say.ro.man.861) "\[MAN\] \002XOnly\002 este un modul de administrare al canalului prin botul oficial al Undernet \002*X*\002."
set black(say.ro.man.862) "\[MAN\] Acest modul face ca ggdrop-ul sa efecteze toate comenzile BlackToolS prin \002*X*\002, chiar daca nu este operator (@)."
set black(say.ro.man.863) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.864) "\[MAN\] \002%char%set\002 (+/-)xonly ; \002%botnick% set\002 (+/-)xonly ; \002(PRIVMSG) set\002 <#canal> (+/-)xonly"
set black(say.ro.man.865) "Vizualizare setari optiuni: \002%char%show\002 <setare> ; \002%botnick% show\002 <setare> ; \002(PRIVMSG) show\002 <#canal> <setare>"

#AutoTopic

set black(say.ro.man.866) "\[MAN\] \002AutoTopic\002 este un modul care va face ca eggdrop dvs. sa reseteze topicul TOPIC-ul si URL-ul canalului de fiecare data cand a fost schimbat de cineva."
set black(say.ro.man.867) "\[MAN\] Daca canalul este in idle, topicul nu va fi resetat in acel interval de timp. (idle = niciun utilizator nu a intrat pe canal)."
set black(say.ro.man.868) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.869) "\[MAN\] \002%char%set\002 (+/-)autotopic ; \002%botnick% set\002 (+/-)autotopic ; \002(PRIVMSG) autotopic\002 <#canal> (+/-)autotopic"
set black(say.ro.man.870) "Vizualizare setari optiuni: \002%char%show\002 <setare> ; \002%botnick% show\002 <setare> ; \002(PRIVMSG) show\002 <#canal> <setare>"

#MySet

set black(say.ro.man.871) "\[MAN\] \002MySet\002 este o comanda prin care fiecare user cu acces isi poate personaliza anumite optiuni."
set black(say.ro.man.872) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.873) "\[MAN\] \002%char%myset\002 <optiune> \[descriere\] <show|reset> ; \002(PRIVMSG) myset\002 <optiune> \[descriere\] <show|reset>"
set black(say.ro.man.874) "\[MAN\] Ca \002<optiune>\002 avem:"
set black(say.ro.man.875) "\[MAN\] \002lang\002 <limba> ; \002output\002 <metoda> ; \002mychar\002 <trigger> ; \002colors\002 <culori> ; \002noteexpire\002 <perioda> ; \002autoinvite\002 <ON|OFF>"
set black(say.ro.man.877) "\[MAN\] \002auto\002 (+/-)v/o (AUTOMODE OP/VOICE) ; \002greet\002 <mesaj personal de intampinare> ; \002mychan\002 <#canal>"
set black(say.ro.man.878) "\[MAN\] \002auto\002 (+/-)v/o \[-global\] (AUTOMODE OP/VOICE) ; \002addhost/delhost\002 <host> ; \002handle\002 <handle nou> ; \002greet\002 <mesaj personal de intampinare> ; \002mychan\002 <#canal> ; \002notes\002 <ON|OFF>"

#ho

set black(say.ro.man.882) "\[MAN\] \002ho\002 reprezinta o comanda prin care puteti da \002halfop/dehalfop\002 (+h %) userilor de pe canal (rar folosita)."
set black(say.ro.man.882_1) "\[MAN\] Daca nu e specificat niciun nick si nu aveti \002halfop\002 (+h %) pe canal, atunci eggdrop-ul iti va da halfop (+h %)."
set black(say.ro.man.883) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.884) "\[MAN\] \002%char%ho\002 <nick> ; \002%botnick% ho\002 <nick> ; \002(PRIVMSG) ho\002 <#canal> <nick>"
set black(say.ro.man.884_1) "\[MAN\] \002%char%ho +\002 (mass halfop) ; \002%char%ho -\002 (mass halfdeop)"

#r

set black(say.ro.man.885) "\[MAN\] \002r\002 reprezinta o comanda prin care puteti reimprospata/ reincarca topicul curent al unui canal (daca exista un topic)."
set black(say.ro.man.886) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.887) "\[MAN\] \002%char%r\002 \[#canal\] ; \002%botnick% r\002 \[#canal\] ; \002(PRIVMSG) r\002 <#canal>"

#SeenLastMsg

set black(say.ro.man.888) "\[MAN\] \002SeenLastMsg\002 este o setare suplimentara la \002modulul seen\002 care afiseaza si ultimul mesaj scris de respectivul nick cautat de pe acel canal."
set black(say.ro.man.889) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.890) "\[MAN\] \002%char%set\002 (+/-)seenlastmsg ; \002%botnick% set\002 (+/-)seenlastmsg ; \002(PRIVMSG) set\002 <#canal> (+/-)seenlastmsg"
set black(say.ro.man.891) "Vizualizare setari optiuni: \002%char%show\002 <setare> ; \002%botnick% show\002 <setare> ; \002(PRIVMSG) show\002 <#canal> <setare>"

#Quote

set black(say.ro.man.892) "\[MAN\] \002Quote\002 este un modul de citate (quote), cu comenzi publice de adaugare, stergere si afisare a citatelor (include si functie de cautare)."
set black(say.ro.man.893) "\[MAN\] SINTAXE FOLOSIRE:"
set black(say.ro.man.894) "\[MAN\] \002%char%set\002 (+/-)quote ; \002%botnick% set\002 (+/-)quote ; \002(PRIVMSG) set\002 <#canal> (+/-)quote"
set black(say.ro.man.895) "\[MAN\] \002%char%q\002 \[#canal\] <citat> (adaugare quote) ; \002%char%q\002 \[#canal\] <cuvant> (cauta quote) ; \002%char%q\002 \[#canal\] <list> ; \002%char%q\002 \[#canal\] del <nr quote>"
set black(say.ro.man.896) "\[MAN\] Pentru a adauga mai mult de o propozitie utilizati: \002%char%q add \[#canal\] <citat1>~<citat2>..\002 si eggdrop-ul va arata nota ca 2 propozitii diferite."
set black(say.ro.man.896_2) "\[MAN\] \002%char%set\002 (+/-)quote ; \002%botnick% set\002 (+/-)quote ; \002(PRIVMSG) set\002 <#canal> (+/-)quote ; \002%char%set\002 quote-usage <1/0> ; \002%botnick% set\002 quote-usage <1/0> ; \002(PRIVMSG) set\002 <#canal> quote-usage <1/0> (\0010\001 - toti pot folosi modulul ; \0011\001 - doar userii cu access)"
#QuoteOfDay

set black(say.ro.man.897) "\[MAN\] \002QuoteOfDay\002 este un modul care care odata activat va afisa aleatoriu citate (quote) stocate la un anumit interval de timp."
set black(say.ro.man.898) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.899) "\[MAN\] %char%set\002 (+/-)quoteofday ; \002%botnick% set\002 (+/-)quoteofday ; \002(PRIVMSG) set\002 <#canal> (+/-)quoteofday"
set black(say.ro.man.900) "\[MAN\] Setari optionale: \002%char%set\002 quoteofday-showtime <perioada> ; \002(PRIVMSG) set\002 <#canal> quoteofday-showtime <perioada> (X\002h\002 = ore ; X\002m\002 = minute)"

#Note

set black(say.ro.man.901) "\[MAN\] \002Note\002 este un modul care odata activat le va permite utilizatorilor sa stocheze note si sa trimita mesaje intre ei."
set black(say.ro.man.902) "\[MAN\] SINTAXE FOLOSIRE:"
set black(say.ro.man.903) "\[MAN\] \002%char%set\002 (+/-)note ; \002%botnick% set\002 (+/-)note ; \002(PRIVMSG) set\002 <#canal> (+/-)note"
set black(say.ro.man.904) "\[MAN\] \002%char%note\002 send <handle> <mesaj> ; \002%char%note\002 <read|list|inbox> ; \002%char%note\002 del <nr. nota|all>"
set black(say.ro.man.905) "\[MAN\] Pentru a adauga mai mult de o propozitie utilizati: \002%char%note send <user> <mesaj1>~<mesaj2>\002.. si eggdrop-ul va arata nota ca 2 propozitii diferite."

#bMethod

set black(say.ro.man.906) "\[MAN\] \002bMethod\002 (BanMethod) stabileste felul in care eggdrop-ul va pedepsi utilizatorii (warn/kick/ban). Si anume, prima oara warn, apoi Kick si apoi Ban (daca se repeta ofensarea)."
set black(say.ro.man.907) "\[MAN\] Aveti la dispozitie urmatoarele metode de ban:"
set black(say.ro.man.908) "\[MAN\] \002#1\002 warn ; \002#2\002 kick ; \002#3\002 ban ; \002#4\002 warn -> kick ; \002#5\002 warn -> kick -> ban ; \002#6\002 kick -> ban ; \002#7\002 warn -> ban"
set black(say.ro.man.909) "\[MAN\] SINTAXA FOLOSIRE: \002%char%set\002 <setare> <nr. metoda> ; \002%botnick% set\002 <setare> <nr. metoda> ; \002(PRIVMSG) set\002 <#canal> <setare> <nr. metoda>"
set black(say.ro.man.910) "\[MAN\] \002BanMethod\002 (bMethod) stabileste felul in care eggdrop-ul va pedepsi utilizatorii (warn/kick/ban). Si anume, prima oara warn, apoi Kick si apoi Ban (daca se repeta ofensarea)."

#BanMask

set black(say.ro.man.911) "\[MAN\] \002BanMask\002 stabileste felul in care eggdrop-ul va adauga banurile."
set black(say.ro.man.912) "\[MAN\] Aveti la dispozitie urmatoarele metode de banmask-uri pentru ban:"
set black(say.ro.man.913) "\[MAN\] \002#1\002 *!*@host ; \002#2\002 *!user@host ; \002#3\002 nick!user@host ; \002#4\002 nick!*@* ; \002#5\002 *!user@*"
set black(say.ro.man.914) "\[MAN\] SINTAXA FOLOSIRE: \002%char%set\002 <setare> <nr. metoda> ; \002%botnick% set\002 <setare> <nr. metoda> ; \002(PRIVMSG) set\002 <#canal> <setare> <nr. metoda>"

#Url

set black(say.ro.man.916) "\[MAN\] \002Url\002 indica URL-ul site-ului web al canalului (maximum 50 de caractere). Adresa URL poate fi vizualizata la \002%char%info <#canal>\002. Daca nu este specificat niciun URL, setarea actuala a adresei URL este goala."
set black(say.ro.man.917) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.918) "\[MAN\] \002%char%set\002 url \[url(s)\] ; \002%botnick% set\002 url \[url(s)\] ; \002(PRIVMSG) set\002 <#canal> url \[url(s)\]"
set black(say.ro.man.919) "\[MAN\] Pentru a arata URL-ul langa motivul banurilor, folositi: \002%char%set\002 +showurl ; \002%botnick% set\002 +showurl ; \002(PRIVMSG) set\002 <#canal> +showurl"
set black(say.ro.man.920) "\[MAN\] Vizualizare setari optiuni: \002%char%show\002 <setare> ; \002%botnick% show\002 <setare> ; \002(PRIVMSG) show\002 <#canal> <setare>"

#Timer

set black(say.ro.man.921) "\[MAN\] \002Timer\002 este un modul \002PRO\002 prin care puteti porni/opri timere ale proceselor si chiar vedea lista timerelor active."
set black(say.ro.man.921_1) "\[MAN\] \002ATENTIE!\002 NU umblati cu acest modul decat daca stiti foarte bine ce faceti!"
set black(say.ro.man.922) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.923) "\[MAN\] \002%char%timer\002 start \[#canal\] <timer:setare> ; \002%char%timer\002 kill \[#canal\] <nr timer> (din lista) ; \002%char%timer\002 list"

#Enable

set black(say.ro.man.924) "\[MAN\] \002Enable\002 este o comanda prin care se ACTIVEAZA o comanda dezactivata cu disable. Daca este folosita optiunea \002global\002, comanda va fi activata pe toate canalele eggdrop-ului."
set black(say.ro.man.924_1) "\[MAN\] \002ATENTIE\002: Optiunea de activare globala este disponibila numai pentru comenzi, nu si pentru useri."
set black(say.ro.man.925) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.926) "\[MAN\] %char%enable\002 \[#canal\] <comanda|all> \[user\] \[global\] ; \002(PRIVMSG) enable\002 <#canal> <comanda|all> \[user\] \[global\]"

#Disable

set black(say.ro.man.927) "\[MAN\] \002Disable\002 este o comanda prin care se DEZACTIVEAZA o comanda anume. Daca este folosita optiunea \002global\002, comanda va fi dezactivata pe toate canalele eggdrop-ului."
set black(say.ro.man.927_1) "\[MAN\] \002ATENTIE\002: Optiunea de dezactivare globala este disponibila numai pentru comenzi, nu si pentru useri."
set black(say.ro.man.928) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.929) "\[MAN\] %char%disable\002 \[#canal\] <comanda|all> \[user\] \[global\] ; \002(PRIVMSG) disable\002 <#canal> <comanda|all> \[user\] \[global\]"

#Stats

set black(say.ro.man.930) "\[MAN\] \002Stats\002 afiseaza informatii despre activitatea unui user cu acces (statistica banuri si comenzi utilizate, etc.)."
set black(say.ro.man.930_1) "\[MAN\] Pentru informatii despre \002activitatea unui user\002 vezi: \002%char%man stats\002"
set black(say.ro.man.931) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.932) "\[MAN\] \002%char%stats\002 \[#canal>\] <nick> \[total\] ; \002%botnick% stats\002 \[#canal>\] <nick> \[total\] ; \002(PRIVMSG) stats\002 \[#canal>\] <nick> \[total\]"
set black(say.ro.man.932_1) "\[MAN\] \002%char%stats\002 \[#canal>\] <nick> \[total|reset\] ; \002(PRIVMSG) stats\002 \[#canal>\] <nick> \[total|reset\]"

#Output

set black(say.ro.man.933) "\[MAN\] \002Output\002 este o comanda care specifica modul in care eggdrop-ul va raspunde la mesajele sau comenzile folosite de dvs."
set black(say.ro.man.934) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.935) "\[MAN\] \002%char%myset output\002 <metoda> ( CHAN | NOTICE ) ; \002(PRIVMSG) myset output\002 <metoda> ( CHAN | NOTICE )"

#GreetLine

set black(say.ro.man.936) "\[MAN\] \002Greet\002 seteaza mesajul tau de intampinare. Acesta va fi afisat la \002%char%info\002 si/sau atunci cand intrati pe un canal (a doua este valabila doar daca \002+greet\002 este activat)."
set black(say.ro.man.937) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.938) "\[MAN\] \002%char%myset greet\002 <mesaj|reset> ; \002%botnick% myset\002 greet <mesaj|reset> ; \002(PRIVMSG) myset greet\002 <mesaj|reset>  (\002reset\002 sterge mesajul de intampinare)"

#UnSet

set black(say.ro.man.939) "\[MAN\] \002UnSet\002 este o comanda prin care se poate reseta orice optiune a eggdrop-ului (sau flaguri)."
set black(say.ro.man.940) "\[MAN\] SINTAXE FOLOSIRE:"
set black(say.ro.man.941) "\[MAN\] %char%unset\002 <flag|str|optiune> ; \002%botnick% unset\002 <flag|str|optiune> ; \002(PRIVMSG) unset\002 <#canal> <flag|str|optiune>"
set black(say.ro.man.942) "\[MAN\] \002%char%unset\002 global <flag|str|optiune> (unset pe toate canalele)"
set black(say.ro.man.943) "\[MAN\] Vizualizare setari optiuni: \002%char%show\002 <setare> ; \002%botnick% show\002 <setare> ; \002(PRIVMSG) show\002 <#canal> <setare>"

#NextShortCmd

set black(say.ro.man.944) "\[MAN\] \002NextShortCmd\002 este versiunea scurta a modulului \002next\002 folosita pe canalele de ajutor prin care se asista utilizatorii care au nevoie de ajutor."
set black(say.ro.man.945) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.946) "\[MAN\] %char%set\002 (+/-)nextshortcmd ; \002%botnick% set\002 (+/-)nextshortcmd ; \002(PRIVMSG) set\002 <#canal> (+/-)nextshortcmd"
set black(say.ro.man.947) "\[MAN\] Comenzi: \002%char%n\002 (voice userul urmator) ; \002%char%n\002 list (afisare lista) ; \002%char%h\002 <nick> (helped); \002%char%b\002 <nick> (noidle ban); \002%char%skip\002 <nick>"

#AutoInvite

set black(say.ro.man.948) "\[MAN\] \002AutoInvite\002 este o noua setare personala, prima de genul acesta, prin care orice utilizator cu access daca primeste kick/ban, eggdrop-ul ii va scoate banul si ii va trimite invite pe acel canal."
set black(say.ro.man.949) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.950) "\[MAN\] \002%char%myset autoinvite\002 <#canal> <ON|OFF> ; \002%botnick% autoinvite\002 <#canal> <ON|OFF> ; \002(PRIVMSG) <#canal> autoinvite\002 <#canal> <ON|OFF>"

#Show

set black(say.ro.man.952) "\[MAN\] \002Show\002 este o comanda prin care se pot vedea/verifica valorile fiecarei setari, precum si daca un anumit modul este activat sau nu pe canal."
set black(say.ro.man.953) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.954) "\[MAN\] \002%char%show\002 <setare> ; \002%botnick% show\002 <setare> ; \002(PRIVMSG) show\002 <#canal> <setare>"

#Link

set black(say.ro.man.955) "\[MAN\] \002Link\002 este un modul care permite sincronizarea tuturor modulelor de protectie pe 2 sau mai multe canale in acelasi timp."
set black(say.ro.man.956) "\[MAN\] Odata activat, eggdrop-ul va adauga, simultan, aceleasi ban-uri de pe un anumit canal pe toate celelalte canale si viceversa (functioneaza doar intre canalele linkate, nu si celelalte)."
set black(say.ro.man.957) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.958) "\[MAN\] \002%char%link\002 <#canal1> <#canal2> / <all> ; \002%char%link del\002 <#canal> ; \002%char%link <list|reset>\002"
set black(say.ro.man.958_1) "\[MAN\] De asemenea functioneaza si asa: \002%char%b\002 <nick|host> \[durata\] link \[motiv\] ; \002%char%ub\002 <nick|host> link"

#AccessOnly

set black(say.ro.man.959) "\[MAN\] \002AccessOnly\002 este o extra optiune a modulului \002topwords\002 care restrictioneaza functionarea acestuia doar cu si pentru userii ce au access la eggdrop."
set black(say.ro.man.960) "\[MAN\] Daca aceasta extra optiune nu este activata, modulul \002topwords\002 va functiona pentru toti utilizatorii canalului (atat pentru cei cu access, cat si pentru ceilalti)."
set black(say.ro.man.961) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.962) "\[MAN\] \002%char%set\002 (+/-)accessonly ; \002%botnick% set\002 (+/-)accessonly ; \002(PRIVMSG) set\002 <#canal> (+/-)accessonly"
set black(say.ro.man.963) "\[MAN\] Vizualizare setari optiuni: \002%char%show\002 <setare> ; \002%botnick% show\002 <setare> ; \002(PRIVMSG) show\002 <#canal> <setare>"

#SeenReply

set black(say.ro.man.964) "\[MAN\] \002SeenReply\002 este o extra optiune a modulului \002seen\002 care va face ca eggdrop-ul sa trimita un mesaj de informare celui care tocmai a fost cautat prin comanda \002%char%seen\002."
set black(say.ro.man.965) "\[MAN\] Respectivul mesaj de avertizare include informatii despre persoana care l-a cautat, precum si data, ora sau canalul unde a avut loc cautarea."
set black(say.ro.man.966) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.967) "\[MAN\] \002%char%set\002 (+/-)seenreply ; \002%botnick% set\002 (+/-)seenreply ; \002(PRIVMSG) set\002 <#canal> (+/-)seenreply"

#SpamJoinMessage

set black(say.ro.man.968) "\[MAN\] \002SpamJoinMessage\002 este o extra optiune a modulului de protectie \002antispam\002 care va face ca eggdrop-ul sa trimita un mesaj privat de verificare, continand un text predefinit, fiecarui user care intra pe canal."
set black(say.ro.man.969) "\[MAN\] SINTAXE FOLOSIRE:"
set black(say.ro.man.970) "\[MAN\] \002%char%set\002 (+/-)spamjoinmessage ; \002%botnick% set\002 (+/-)spamjoinmessage ; \002(PRIVMSG) set\002 <#canal> (+/-)spamjoinmessage"
set black(say.ro.man.971) "\[MAN\] \002%char%set\002 antispam-message <mesaj> ; \002%botnick% set\002 antispam-message <mesaj> ; \002(PRIVMSG) set\002 <#canal> <mesaj> (mesaj join predefinit)"
set black(say.ro.man.972) "\[MAN\] Vizualizare setari optiuni: \002%char%show\002 <setare> ; \002%botnick% show\002 <setare> ; \002(PRIVMSG) show\002 <#canal> <setare>"

#StrictSecured

set black(say.ro.man.973) "\[MAN\] \002StricSecured\002 este o extra optiune a modulului de protectie \002securemode\002 menit sa previna join/part flood-ul cu boti."
set black(say.ro.man.974) "\[MAN\] Odata activata, aceasta extra optiune va genera un random cod pentru fiecare user care intra pe canal, de fiecare data cand acesta re-intra, pe care trebuie sa-l confirme daca doreste sa-i fie permisa intrarea pe canal."
set black(say.ro.man.975) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.976) "\[MAN\] \002%char%set\002 (+/-)strictsecured ; \002%botnick% set\002 (+/-)strictsecured ; \002(PRIVMSG) set\002 <#canal> (+/-)strictsecured"

#NoteExpire

set black(say.ro.man.977) "\[MAN\] \002NoteExpire\002 este o extra optiune a modulului \002note\002 prin care fiecare user isi poate seta o anumita perioada de timp predefinita pentru expirarea notelor (stergerea lor automata din baza)."
set black(say.ro.man.977_1) "\[MAN\] Format perioada: X\002d\002 = zile ; X\002h\002 = ore"
set black(say.ro.man.978) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.979) "\[MAN\] \002%char%myset\002 noteexpire <perioda> ; \002%botnick% myset\002 noteexpire <perioda> ; \002(PRIVMSG) myset\002 noteexpire <perioda>"

#MyChan

set black(say.ro.man.980) "\[MAN\] \002MyChan\002 este o comanda prin care fiecare user isi poate seta un \002canal de baza\002 (mychan) pentru care, atunci cand se trimit comenzi catre eggdrop prin PRIVMSG, sa nu mai fie necesar a se specifica un <#canal>, eggdrop-ul aplicand automat comenzile direct pe \002mychan\002."
set black(say.ro.man.981) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.982) "\[MAN\] \002%char%myset\002 mychan <#canal> ; \002%botnick% myset\002 mychan <#canal> ; \002(PRIVMSG) myset\002 mychan <#canal>"

#Invisible

set black(say.ro.man.983) "\[MAN\] \002Invisible\002 face ca un anumit canal sa devina invizibil pentru restul userilor cu access si sa nu mai apara in lista de canale ale eggdrop-ului."
set black(say.ro.man.984) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.985) "\[MAN\] \002%char%set\002 (+/-)invisible ; \002%botnick% set\002 (+/-)invisible ; \002(PRIVMSG) set\002 (+/-)invisible"
set black(say.ro.man.986) "\[MAN\] Vizualizare setari optiuni: \002%char%show\002 <setare> ; \002%botnick% show\002 <setare> ; \002(PRIVMSG) show\002 <#canal> <setare>"

#MyChar

set black(say.ro.man.987) "\[MAN\] \002MyChar\002 permite fiecarui utilizator sa isi aleaga si sa-si seteze un \002trigger\002 implicit la care vor ca eggdrop-ul sa reactioneze (sa raspunda la comenzi)."
set black(say.ro.man.988) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.989) "\[MAN\] \002%char%myset\002 mychar <trigger> ; \002%botnick% myset\002 mychar <trigger> ; \002(PRIVMSG) myset\002 mychar <trigger>"

#Omsg

set black(say.ro.man.1207) "\[MAN\] \002Omsg\002 trimite un mesaj specific tuturor utilizatorilor care au \002OP (@/&/)\002 pe un anumit canal."
set black(say.ro.man.1208) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.1209) "\[MAN\] %char%omsg\002 <#canal|all> <mesaj> ; \002%botnick% omsg\002 <#canal|all> <mesaj> ; \002(PRIVMSG) omsg\002 <#canal|all> <mesaj>"

#ShowBadChan

set black(say.ro.man.1210) "\[MAN\] \002ShowBadChan\002 este o extra optiune a modulului \002BadChan\002 care trimite un mesaj specific tuturor celor cu \002OP (@/&/)\002 cu privire la userul banat si canalele interzise pe care se afla."
set black(say.ro.man.1211) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.1212) "\[MAN\] \002%char%set\002 (+/-)showbadchan ; \002%botnick% set\002 (+/-)showbadchan ; \002(PRIVMSG) set\002 <#canal> (+/-)showbadchan"
set black(say.ro.man.1213) "\[MAN\] Vizualizare setari optiuni: \002%char%show\002 <setare> ; \002%botnick% show\002 <setare> ; \002(PRIVMSG) show\002 <#canal> <setare>"

#ShowTroll

set black(say.ro.man.1214) "\[MAN\] \002ShowTroll\002 este o extra optiune a comenzii \002Troll\002 care, odata activata va face ca eggdrop-ul sa afiseze userilor cu acces, prin notice la join, o lista cu trollii zilei curente (lista se reseteaza in fiecare zi la orele 24:00)."
set black(say.ro.man.1215) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.1216) "\[MAN\] \002%char%set\002 (+/-)showtroll ; \002%botnick% set\002 (+/-)showtroll ; \002(PRIVMSG) set\002 <#canal> (+/-)showtroll"
set black(say.ro.man.1217) "\[MAN\] Vizualizare setari optiuni: \002%char%show\002 <setare> ; \002%botnick% show\002 <setare> ; \002(PRIVMSG) show\002 <#canal> <setare>"

#Forward

set black(say.ro.man.1218) "\[MAN\] \002Forward\002 redirectioneaza toate mesajele private primite de eggdrop catre un anumit canal (cu exceptia mesajelor private de la userii cu acces)."
set black(say.ro.man.1219) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.1220) "\[MAN\] \002%char%set\002 (+/-)forward ; \002%botnick% set\002 (+/-)forward ; \002(PRIVMSG) set\002 <#canal> (+/-)forward"

#ExpireBans

set black(say.ro.man.1221) "\[MAN\] \002ExpireBans\002 stabileste perioada prestabilita de timp dupa care toate banurile de pe un canal vor fi scoase. Daca se specifica \0020\002 la aceasta optiune, eggdrop-ul nu va scoate niciodata banurile."
set black(say.ro.man.1222) "\[MAN\] Format perioada: X\002h\002 = ore ; X\002m\002 = minute"
set black(say.ro.man.1223) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.1224) "\[MAN\] \002%char%set\002 expirebans <perioada> ; \002%botnick% set\002 expirebans <perioada> ; \002(PRIVMSG) set\002 <#canal> expirebans <perioada>"
set black(say.ro.man.1225) "Vizualizare setari optiuni: \002%char%show\002 <setare> ; \002%botnick% show\002 <setare> ; \002(PRIVMSG) show\002 <#canal> <setare>"

#mb

set black(say.ro.man.1226) "\[MAN\] \002mb\002 baneaza un anumit user automat pe IDENT si cu un motiv dat (folosit pentru clienti IRC precum: mibbit, irccloud, etc.)."
set black(say.ro.man.1227) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.1228) "\[MAN\] \002%char%mb\002 <nick> \[motiv\] ; \002%botnick% mb\002 <nick> \[motiv\] ; \002(PRIVMSG) mb\002 <#canal> <nick> \[motiv\]"
set black(say.ro.man.1229) "\[MAN\] Setari optionale: \002mb-reason\002 (motiv predefinit); \002mb-bantime\002 (timp ban predefinit)"


################################################# MAN EGG #####################################################


#Egg

set black(say.ro.man.990) "\[MAN\] \002Egg\002 este un modul care permite configurarea anumitor setari/optiuni din structura fisierului \002.conf\002 al eggdrop-ului."
set black(say.ro.man.991) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.992) "\[MAN\] \002%char%egg\002 <optiune> <setare> ; \002%botnick% egg\002 <optiune> <setare> ; \002(PRIVMSG) egg\002 <optiune> <setare>"

#Egg CmdChar

set black(say.ro.man.994) "\[MAN\] \002CmdChar\002 este o comanda prin care puteti schimba \002cmdchar-ul default\002 la care vreti ca eggdrop-ul sa reactioneze (se pot adauga, de asemenea, mai multe cmdchar-uri)."
set black(say.ro.man.995) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.996) "\[MAN\] \002%char%set cmdchar\002 <trigger1 trigger2 ..> ; \002%botnick% set cmdchar\002 <trigger1 trigger2 ..> ; \002(PRIVMSG) set cmdchar\002 <trigger1 trigger2 ..>"

#Egg DefaultLang

set black(say.ro.man.998) "\[MAN\] \002DefaultLang\002 este o comanda prin care puteti schimba limba default a scriptului BlackToolS."
set black(say.ro.man.998_1) "\[MAN\] Limbi disponibile: \002RO\002 = ROMANA ; \002EN\002 = ENGLEZA"
set black(say.ro.man.999) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.1100) "\[MAN\] \002%char%set defaultlang\002 <limba> ; \002%botnick% set defaultlang\002 <limba> ; \002(PRIVMSG) set defaultlang\002 <limba>"

#Egg HomeChan

set black(say.ro.man.1102) "\[MAN\] \002HomeChan\002 este o comanda prin care puteti schimba canalul de origine (homechan) al eggdrop-ului. Canalul unde va intra eggdrop-ul sau va afisa anumite informatii, raporta kick/ban-urile si abuzurile."
set black(say.ro.man.1103) "\[MAN\] \002Retineti\002: acest canal este si unul \002static\002 (eggdrop-ul NU va da purge/cycle acestui canal) si de obicei este un canal privat/secret (suporta DOAR un singur canal de tip \002homechan\002)."
set black(say.ro.man.1104) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.1105) "\[MAN\] \002%char%set homechan\002 <#canal> ; \002%botnick% set homechan\002 <#canal> ; \002(PRIVMSG) set homechan\002 <#canal>"

#Egg RealName

set black(say.ro.man.1107) "\[MAN\] \002RealName\002 este o comanda prin care puteti schimba textul din campul \002real-name\002 pe care il afiseaza eggdrop-ul pe IRC (necesita restart pentru activare)."
set black(say.ro.man.1108) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.1109) "\[MAN\] \002%char%set realname\002 <text> ; \002%botnick% set realname\002 <text> ; \002(PRIVMSG) set realname\002 <text>"

#Egg Away

set black(say.ro.man.1111) "\[MAN\] \002Away\002 este o comanda prin care puteti seta un mesaj de away pe care eggdrop-ul sa-l seteze automat la conectarea pe IRC."
set black(say.ro.man.1112) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.1113) "\[MAN\] \002%char%set away\002 <mesaj away> ; \002%botnick% set away\002 <mesaj away> ; \002(PRIVMSG) set away\002 <mesaj away>"
set black(say.ro.man.1113_1) "\[MAN\] \002%char%set away\002; \002%botnick% set away\002; \002(PRIVMSG) set away\002 (dezactivare away)"

#Egg DefaultOutput

set black(say.ro.man.1115) "\[MAN\] \002DefaultOutput\002 este o comanda prin care puteti schimba metoda implicita de primire a mesajelor de la eggdrop (metoda implicita este \002CHAN\002)."
set black(say.ro.man.1115_1) "\[MAN\] Metode disponibile: \0020\002 = NOTICE ; \002 1\002 = CHAN ; \002 2\002 = PRIVMSG"
set black(say.ro.man.1116) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.1117) "\[MAN\] \002%char%set defaultoutput\002 <metoda> ; \002(PRIVMSG) set defaultoutput\002 <metoda>"

#Egg FloodMenuProt

set black(say.ro.man.1119) "\[MAN\] \002FloodMenuProt\002 este o comanda menita sa protejeze eggdrop-ul de \002flood\002. Stabileste cate comenzi/secunde poate un user trimite eggdrop-ului inainte de a fi considerat flood, urmand ca sa ignore toate comenzile de la acel user pentru o perioada scurta de timp."
set black(say.ro.man.1120) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.1121) "\[MAN\] \002%char%set floodmenuprot\002 <nr. comenzi:secunde> ; \002%botnick% set floodmenuprot\002 <nr. comenzi:secunde> ; \002(PRIVMSG) set floodmenuprot\002 <nr. comenzi:secunde>"

#Egg UserFloodMsgProt

set black(say.ro.man.1123) "\[MAN\] \002UserFloodMsgProt\002 este o comanda menita sa protejeze eggdrop-ul de \002PRIVMSG flood\002. Stabileste cate mesage/secunde va accepta eggdrop-ul in privat inainte de a fi considerat un flood, urmand ca sa ignore toate mesajele de la acel user pentru o perioada scurta de timp."
set black(say.ro.man.1124) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.1125) "\[MAN\] \002%char%set floodmsgprot\002 <nr. mesaje:secunde> ; \002%botnick% set floodmsgprot\002 <nr. mesaje:secunde> ; \002(PRIVMSG) set floodmsgprot\002 <nr. mesaje:secunde>"

#Egg FloodNotcProt

set black(say.ro.man.1127) "\[MAN\] \002FloodNotcProt\002 este o comanda menita sa protejeze eggdrop-ul de \002NOTICE flood\002. Stabileste cate mesage/secunde va accepta eggdrop-ul in privat inainte de a fi considerat un flood, urmand ca sa ignore toate mesajele de la acel user pentru o perioada scurta de timp."
set black(say.ro.man.1128) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.1129) "\[MAN\] \002%char%set floodnotcprot\002 <nr. notice:secunde> ; \002%botnick% set floodnotcprot\002 <nr. notice:secunde> ; \002(PRIVMSG) set floodnotcprot\002 <nr. notice:secunde>"

#Egg ChanRemove-Setting

set black(say.ro.man.1131) "\[MAN\] \002ChanRemove-Setting\002 este o optiune care, odata activata, atunci cand un canal este sters din lista de canale, eggdrop-ul va sterge inclusiv toate datele referitoare la acel canal, precum lista de useri, lista de banuri, baza de date seen, etc."
set black(say.ro.man.1131_1) "\[MAN\] \0021\002 = da ; \0020\002 = nu"
set black(say.ro.man.1132) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.1133) "\[MAN\] \002%char%set chanremove-setting\002 <1|0> ; \002%botnick% set chanremove-setting\002 <1|0> ; \002(PRIVMSG) set chanremove-setting\002 <1|0>"

#Egg User-Expire

set black(say.ro.man.1135) "\[MAN\] \002User-Expire\002 este o comanda prin care puteti defini perioada de timp dupa care eggdrop-ul va sterge din lista de seen userele ce sunt mai vechi decat acea perioada de timp."
set black(say.ro.man.1135_1) "\[MAN\] Format perioada: X\002d\002 = zile"
set black(say.ro.man.1136) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.1137) "\[MAN\] \002%char%set user-expire\002 <perioada> ; \002%botnick% set user-expire\002 <perioada> ; \002(PRIVMSG) set user-expire\002 <perioada>"

#Egg PageLimit

set black(say.ro.man.1139) "\[MAN\] \002PageLimit\002 este o comanda prin care puteti defini \002numarul default de afisari pe pagina\002 pentru toate modulele care folosesc functia \002- list -\002."
set black(say.ro.man.1140) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.1141) "\[MAN\] \002%char%set pagelimit\002 <nr. intrari> ; \002%botnick% set pagelimit\002 <nr. intrari> ; \002(PRIVMSG) set pagelimit\002 <nr. intrari>"

#Egg Login

set black(say.ro.man.1143) "\[MAN\] \002Login\002 este o comanda prin care puteti loga manual eggdrop-ul dvs. la Chanserv (X, Q, etc.)."
set black(say.ro.man.1144) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.1145) "\[MAN\] \002%char%login\002 ; %botnick% login ; \002(PRIVMSG) login\002"

#Egg Chanserv

set black(say.ro.man.1147) "\[MAN\] \002Chanserv\002 este o comanda prin care puteti seta \002nick-ul default\002, pe care ChanServ (X, Q, etc.), il foloseste in functie de reteaua de IRC la care eggdrop-ul se conecteaza."
set black(say.ro.man.1148) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.1149) "\[MAN\] \002%char%set chanserv\002 <nickchanserv> ; \002\002%botnick% set chanserv\002 <nickchanserv> ; \002(PRIVMSG) set chanserv\002 <nickchanserv>"

#Egg HostChanserv

set black(say.ro.man.1151) "\[MAN\] \002HostChanserv\002 este o comanda prin care puteti seta \002host-ul default\002, pe care ChanServ (X, Q, etc.), il foloseste in functie de reteaua de IRC la care eggdrop-ul se conecteaza."
set black(say.ro.man.1152) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.1153) "\[MAN\] \002%char%egg hostchanserv\002 <hostchanserv> ; \002%botnick% egg hostchanserv\002 <hostchanserv> ; \002(PRIVMSG) set hostchanserv\002 <hostchanserv>"

#Egg UserLogin

set black(say.ro.man.1155) "\[MAN\] \002UserLogin\002 este o comanda prin care puteti seta \002userul\002 cu care eggdrop-ul se va loga automat la ChanServ (X, Q, etc.)."
set black(say.ro.man.1156) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.1157) "\[MAN\] \002%char%set userlogin\002 <userchanserv> ; \002%botnick% set userlogin\002 <userchanserv> ; \002(PRIVMSG) set userlogin\002 <userchanserv>"

#Egg UserPass

set black(say.ro.man.1159) "\[MAN\] \002UserPass\002 este o comanda prin care puteti seta \002parola userului\002 cu care eggdrop-ul se va loga automat la ChanServ (X, Q, etc.)."
set black(say.ro.man.1160) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.1161) "\[MAN\] \002%char%set userpass\002 <passchanserv> ; \002%botnick% set userpass\002 <passchanserv> ; \002(PRIVMSG) set userpass\002 <passchanserv>"

#Egg Add-Mask

set black(say.ro.man.1163) "\[MAN\] \002Add-Mask\002 este o comanda prin care puteti seta host-ul default pe care eggdrop-ul va il va folosi la adaugarea de noi useri cu acces."
set black(say.ro.man.1163_1) "\[MAN\] Hostmask-uri disponibile:"
set black(say.ro.man.1163_2) "\[MAN\] \002#1\002 *!*@host ; \002#2\002 *!user@host ; \002#3\002 nick!user@host ; \002#4\002 nick!*@* ; \002#5\002 *!user@*"
set black(say.ro.man.1164) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.1165) "\[MAN\] \002%char%set add-mask\002 <nr. hostmask> ; \002%botnick% set add-mask\002 <nr. hostmask> ; \002(PRIVMSG) set add-mask\002 <nr. hostmask>"

#Egg Adduser-Mask

set black(say.ro.man.1167) "\[MAN\] \002Adduser-Mask\002 este o comanda prin care puteti seta host-ul default, ca\001 *!*@%user%.users.undernet.org\001, pe care eggdrop-ul va il va folosi la adaugarea de noi useri cu acces."
set black(say.ro.man.1168) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.1169) "\[MAN\] \002%char%set adduser-mask\002 <hostmask> ; \002%botnick% set adduser-mask\002 <hostmask> ; \002(PRIVMSG) set adduser-mask\002 <hostmask>"

#AntiSpam-ScanTime

set black(say.ro.man.1175) "\[MAN\] \002AntiSpam-ScanTime\002 este o extra optiune a modulului \002antispam\002 prin care puteti defini perioada maxima de timp dintre fiecare\002 /cycle\002 pe care eggdrop-ul il executa pentru a detecta mesajele de spam."
set black(say.ro.man.1175_1) "\[MAN\] Format perioada: X\002m\002 = minute ; X\002h\002 = ore"
set black(say.ro.man.1176) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.1177) "\[MAN\] \002%char%set\002 antispam-scantime <perioada> ; \002%botnick% set\002 antispam-scantime <perioada> ; \002(PRIVMSG) set\002 antispam-scantime <perioada>"

#Idle-ScanTime

set black(say.ro.man.1179) "\[MAN\] \002Idle-ScanTime\002 este o extra optiune a modulului \002idle\002 prin care puteti defini perioada maxima de timp dintre scanarile dupa utilizatorii cu \002op (@)\002 sau \002voice (+ v)\002 ce fac idle."
set black(say.ro.man.1179_1) "\[MAN\] Format perioada: X\002m\002 = minute ; X\002h\002 = ore"
set black(say.ro.man.1180) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.1181) "\[MAN\] \002%char%set\002 idle-scantime <perioada> ; \002%botnick% set\002 idle-scantime <perioada> ; \002(PRIVMSG) set\002 idle-scantime <perioada>"

#CloneScan-ScanTime

set black(say.ro.man.1183) "\[MAN\] \002CloneScan-ScanTime\002 este o extra optiune a modulului \002clonescan\002 prin care puteti defini perioada maxima de timp dintre scanarile dupa utilizatorii ce sunt clone."
set black(say.ro.man.1183_1) "\[MAN\] Format perioada: X\002m\002 = minute ; X\002h\002 = ore"
set black(say.ro.man.1184) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.1185) "\[MAN\] \002%char%set\002 clonescan-scantime <perioada> ; \002%botnick% set\002 clonescan-scantime <perioada> ; \002(PRIVMSG) set\002 clonescan-scantime <perioada>"

#Broadcast-ShowTime

set black(say.ro.man.1187) "\[MAN\] \002Broadcast-ShowTime\002 este o extra optiune a modulului \002broadcast\002 prin care puteti defini perioada maxima de timp dintre \002mesajele de tip broadcast\002 ce urmeaza sa fie difuzate pe canal."
set black(say.ro.man.1187_1) "\[MAN\] Format perioada: X\002m\002 = minute ; X\002h\002 = ore"
set black(say.ro.man.1188) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.1189) "\[MAN\] \002%char%egg\002 broadcast-showtime <perioada> ; \002%botnick% egg\002 broadcast-showtime <perioada> ; \002(PRIVMSG) egg\002 broadcast-showtime <perioada>"

#BadChan-ScanTime

set black(say.ro.man.1191) "\[MAN\] \002BadChan-ScanTime\002 este o extra optiune a modulului \002badchan\002 prin care puteti defini perioada maxima de timp dintre scanarile dupa utilizatorii ce se gasesc pe anumite canale nepermise."
set black(say.ro.man.1191_1) "\[MAN\] Format perioada: X\002m\002 = minute ; X\002h\002 = ore"
set black(say.ro.man.1192) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.1193) "\[MAN\] \002%char%set\002 badchan-scantime <perioada> ; \002%botnick% set\002 badchan-scantime <perioada> ; \002(PRIVMSG) set\002 badchan-scantime <perioada>"

#Anunt-ShowTime

set black(say.ro.man.1195) "\[MAN\] \002Anunt-ShowTime\002 este o extra optiune a modulului \002anunt\002 prin care puteti defini perioada maxima de timp dintre \002anunturile\002 ce urmeaza sa fie difuzate pe canal."
set black(say.ro.man.1195_1) "\[MAN\] Format perioada: X\002m\002 = minute ; X\002h\002 = ore"
set black(say.ro.man.1196) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.1197) "\[MAN\] \002%char%set\002 anunt-showtime <perioada> ; \002%botnick% set\002 anunt-showtime <perioada> ; \002(PRIVMSG) set\002 anunt-showtime <perioada>"

#QuoteOfDay-ShowTime

set black(say.ro.man.1199) "\[MAN\] \002QuoteOfDay-ShowTime\002 este o extra optiune a modulului \002quote\002 prin care puteti defini perioada maxima de timp dintre \002citatele\002 (quotes) ce urmeaza sa fie difuzate pe canal."
set black(say.ro.man.1199_1) "\[MAN\] Format perioada: X\002m\002 = minute ; X\002h\002 = ore"
set black(say.ro.man.1200) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.1201) "\[MAN\] \002%char%set\002 quoteofday-showtime <perioada> ; \002%botnick% set\002 quoteofday-showtime <perioada> ; \002(PRIVMSG) set\002 quoteofday-showtime <perioada>"

#QuitPartColor

set black(say.ro.man.1203) "\[MAN\] \002QuitPartColor\002 este o extra optiune a modulului \002AntiBadQuitPart\002 care actioneaza impotriva userilor ce parasesc %chan% utilizand *culori* in mesajul de /part sau /quit."
set black(say.ro.man.1204) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.1205) "\[MAN\] \002%char%set\002 (+/-)quitpartcolor ; \002%botnick% set\002 (+/-)quitpartcolor ; \002(PRIVMSG) set\002 <#canal> (+/-)quitpartcolor"
set black(say.ro.man.1206) "Vizualizare setari optiuni: \002%char%show\002 <setare> ; \002%botnick% show\002 <setare> ; \002(PRIVMSG) show\002 <#canal> <setare>"

#VoiceMe-ShowTime

set black(say.ro.man.1230) "\[MAN\] \002VoiceMe-ShowTime\002 este o extra optiune a modulului \002VoiceMe\002 prin care puteti defini perioada maxima de timp dintre mesajele specifice trimise pe canal."
set black(say.ro.man.1231) "\[MAN\] Format perioada: X\002m\002 = minute ; X\002h\002 = ore"
set black(say.ro.man.1232) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.1233) "\[MAN\] \002%char%set\002 voiceme-showtime <perioada> ; \002%botnick% set\002 voiceme-showtime <perioada> ; \002(PRIVMSG) set\002 voiceme-showtime <perioada>"

#BadChan-BanWait

set black(say.ro.man.1234) "\[MAN\] \002BadChan-BanWait\002 este o extra optiune a modulului \002BadChan\002 prin care puteti defini perioada maxima de timp in care userul poate sa paraseasca canalele interzise inainte sa primeasca ban."
set black(say.ro.man.1235) "\[MAN\] Format perioada: X\002s\002 = secunde"
set black(say.ro.man.1236) "\[MAN\] SYNTAXA FOLOSIRE:"
set black(say.ro.man.1237) "\[MAN\] \002%char%set\002 badchan-banwait <perioada> ; \002%botnick% set\002 badchan-banwait <perioada> ; \002(PRIVMSG) set\002 \[#canal\] badchan-banwait <perioada>"

#BadNick-BanWait

set black(say.ro.man.1238) "\[MAN\] \002Badnick-BanWait\002 este o extra optiune a modulului \002BadNick\002 prin care puteti defini perioada maxima de timp in care userul poate sa isi schimbe nickul nepermis inainte sa primeasca ban."
set black(say.ro.man.1239) "\[MAN\] Format perioada: X\002s\002 = secunde"
set black(say.ro.man.1240) "\[MAN\] SYNTAXA FOLOSIRE:"
set black(say.ro.man.1241) "\[MAN\] \002%char%set\002 badnick-banwait <perioada> ; \002%botnick% set\002 badnick-banwait <perioada> ; \002(PRIVMSG) set\002 \[#canal\] badnick-banwait <perioada>"

#BadNick-BMethod

set black(say.ro.man.1242) "\[MAN\] \002BadNick-BMethod\002 este o extra optiune a modulului \002BadNick\002 care va permite sa alegeti metoda de ban."
set black(say.ro.man.1243) "\[MAN\] Format metoda:\002 #1\002 - mesaj avertizare -> ban ;\002 #2\002 - ban"
set black(say.ro.man.1244) "\[MAN\] SYNTAXA FOLOSIRE:"
set black(say.ro.man.1245) "\[MAN\] \002%char%set\002 badnick-bmethod <nr. metoda> ; \002%botnick% set\002 badnick-bmethod <nr. metoda> ; \002(PRIVMSG) set\002 \[#canal\] badnick-bmethod <nr. metoda>"

#BadChan-BMethod

set black(say.ro.man.1246) "\[MAN\] \002BadChan-BMethod\002 este o extra optiune a modulului \002BadChan\002 care va permite sa alegeti metoda de ban."
set black(say.ro.man.1247) "\[MAN\] Format metoda:\002 #1\002 - mesaj avertizare -> ban ;\002 #2\002 - ban"
set black(say.ro.man.1248) "\[MAN\] SYNTAXA FOLOSIRE:"
set black(say.ro.man.1249) "\[MAN\] \002%char%set\002 badchan-bmethod <nr. metoda> ; \002%botnick% set\002 badchan-bmethod <nr. metoda> ; \002(PRIVMSG) set\002 \[#canal\] badchan-bmethod <nr. metoda>"

#RepetitiveChars

set black(say.ro.man.1250) "\[MAN\] \002RepetitiveChars\002 este un modul care odata activat va face ca eggdrop-ul sa ia masuri impotriva oricarui utilizator ce va utiliza caractere repetate si consecutive."
set black(say.ro.man.1251) "\[MAN\] SYNTAXA FOLOSIRE:"
set black(say.ro.man.1252) "\[MAN\] \002%char%set\002 (+/-)repetitivechars ; \002%botnick% set\002 (+/-)repetitivechars ; \002(PRIVMSG) set\002 \[#canal\] (+/-)repetitivechars"
set black(say.ro.man.1253) "\[MAN\] Setari optionale: \002repetitivechars-reason\002 ; repetitivechars-bantime ; \002repetitivechars-warn\002 ; repetitivechars-banmethod ; \002repetitivechars-banmask\002 ; repetitivechars-char"
set black(say.ro.man.1254) "Vizualizare setari optiuni: \002%char%show\002 <setare> ; \002%botnick% show\002 <setare> ; \002(PRIVMSG) show\002 <#canal> <setare>"

#QuitPartMsgFlood

set black(say.ro.man.1255) "\[MAN\] \002QuitPartMsgFlood\002 este o extra optiune a modulului \002AntiBadQuitPart\002 care actioneaza impotriva userilor ce parasesc %chan% utilizand *mesaje de flood* la /part sau /quit."
set black(say.ro.man.1256) "\[MAN\] SYNTAXA FOLOSIRE:"
set black(say.ro.man.1257) "\[MAN\] \002%char%set (+/-)quitpartmsgflood\002 ; %botnick% set (+/-)quitpartmsgflood ; \002(PRIVMSG) set <#canal> (+/-)quitpartmsgflood\002"
set black(say.ro.man.1258) "\[MAN\] Setari optionale: \002quitpartmsgflood-char\002"
set black(say.ro.man.1259) "Vizualizare setari optiuni: \002%char%show\002 <setare> ; \002%botnick% show\002 <setare> ; \002(PRIVMSG) show\002 <#canal> <setare>"

#MassFloodSilenceTime

set black(say.ro.man.1260) "\[MAN\] \002MassFloodSilenceTime\002 protejeaza eggdrop impotriva mass flood prin ctcp/ctcr, notice sau msg folosind comanda silence."
set black(say.ro.man.1261) "\[MAN\] ** Note: Este o protectie personala a botului care se declanseaza automat atunci cand acesta primeste mass flood botnet sau in privat. **"
set black(say.ro.man.1262) "\[MAN\] Format perioada: <X>\002s\002 = secunde"
set black(say.ro.man.1263) "\[MAN\] SYNTAXA FOLOSIRE:"
set black(say.ro.man.1264) "\[MAN\] \002%char%set\002 massfloodsilencetime <perioada> ; \002%botnick% set\002 massfloodsilencetime <perioada> ; \002(PRIVMSG) set\002 massfloodsilencetime <perioada>"

#BanMethod-Expire

set black(say.ro.man.1265) "\[MAN\] \002BanMethod-Expire\002 permite sa definiti intervalul de timp dupa fiecare contorizare a protectiilor va expira."
set black(say.ro.man.1266) "\[MAN\] Format perioada: <X>\002m\002 = minute"
set black(say.ro.man.1267) "\[MAN\] SYNTAXA FOLOSIRE:"
set black(say.ro.man.1268) "\[MAN\] \002%char%set\002 banmethod-expire <perioada> ; \002%botnick% set\002 banmethod-expire <perioada> ; \002(PRIVMSG) set\002 <#canal> banmethod-expire <perioada>"

#Count

set black(say.ro.man.1269) "\[MAN\] \002Count\002 permite definirea unui mesaj de intampinare la join folosind anumite \002variabile\002. Pentru a functiona este necesar \001+greet\001, pentru mai multe informatii vezi \002%char%man greet\002."
set black(say.ro.man.1270) "\[MAN\] Variabile disponibile: \002%countchan%\002 = nume canal ; \002%nick%\002 = nick-ul care da join ; \002%count%\002 = contor join ; \002%time%\002 = data inregistrare canal"
set black(say.ro.man.1271) "\[MAN\] SYNTAXA FOLOSIRE:"
set black(say.ro.man.1272) "\[MAN\] \002%char%greet\002 set <text> ; \002%botnick% greet\002 set <text> ; \002(PRIVMSG) greet\002 <#canal> set <text>"
set black(say.ro.man.1273) "\[MAN\] \001Exemplu\001: Bine ai venit %nick%, esti persoana cu numarul %count% care intra pe %countchan% din %time%."

#Exempt

set black(say.ro.man.1278) "\[MAN\] \002Exempt\002 Adauga o exceptie de la banurile stocate de eggdrop, cu un motiv si o perioada de timp optionale."
set black(say.ro.man.1279) "\[MAN\] ** NOTA: Daca <global> este specificat, exceptia va fi pentru toate canalele pe care se afla eggdropul. **"
set black(say.ro.man.1280) "\[MAN\] Format perioada: <X>\002h\002 = ore ; <X>\002m\002 = minute ; <X>\002d\002 = zile"
set black(say.ro.man.1281) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.1282) "\[MAN\] \002%char%exempt\002 \[#canal\] add <ip/host> <perioada> <motiv> (adauga exceptie) ; \002%char%exempt\002 \[#canal\] list ; \002%char%exempt\002 \[#canal\] del <ip/host> (sterge exceptie din lista)"
set black(say.ro.man.1283) "\[MAN\] \002%char%exempt\002 \[#canal\] add <ip/host> <perioada> \[global\] <motiv> (adauga exceptie) ; \002%char%exempt\002 \[#canal\] list \[global\] ; \002%char%exempt\002 \[#canal\] del <ip/host> \[global\] (sterge exceptie din lista)"

#For

set black(say.ro.man.1284) "\[MAN\] \002For\002 permite mai multor eggdropi sa execute simultan aceeasi comanda/ comenzi."
set black(say.ro.man.1285) "\[MAN\] SYNTAXA FOLOSRE:"
set black(say.ro.man.1286) "\[MAN\] \002for\002 <botnick1>,<botnick2>.. <comanda> <optiune>"


##################################### MAN TIPS #############################################


set black(say.ro.man.showtip) {
 "\[TIP\] Stiai ca poti utiliza ca durata pentru ban forme ca de ex:\002 10m\002 (minute) ;\002 10h\002 (ore) ;\002 10d\002 (zile)?"
 "\[TIP\] Daca intalnesti vreo problema la \002Blacktools script\002 sau daca ai dat de vreun \002BUG\002, posteaza pe \002forumul tclscripts.net\002 o explicatie a problemei/bugului."
 "\[TIP\] Stiai ca poti utiliza \002CIDR\002 in metodele de ban? ex:\002 %char%b <ip/cidr>\002 | %char%b *!*@192.168.0.1/17"
 "\[TIP\] \002ATENTIE!!\002 Cei care folosesc \002impreuna\002 atat \002a&a\002, cat si \002Blacktools\002, ar trebui sa stii ca acest lucru functioneaza, dar in teorie. Deci, \002nu cereti ajutor\002 pentru acest script, daca il utilizati impreuna cu \002a&a script\002.."
 "\[TIP\] Stiai ca poti adauga \002mai mult de 1 propozitie\002 intr-un anunt? ex:\002 %char%anunt add <anunt1>~<anunt2>~<anunt3>\002 | %char%anunt add Bine ai venit pe %chan%~Distractie placuta~The Next Generation TCL"
 "\[TIP\] Verificati forumul nostru la\002 http://tclscripts.net\002 pentru cele mai recente actualizari si informatii."
 "\[TIP\] Stiai ca poti copia atat setarile, cat si lista de banuri sau cea de useri cu access de pe un canal pe altul? ex:\002 %char%cp userlist <#canal1> <#canal2>\002 | Pentru mai multe detalii: \002%char%man cp\002"
 "\[TIP\] Utilizati script-uri TCL de care chiar aveti nevoie pentru eggdropul dvs. Toate aceste script-uri dragute si amuzante pe care le gasesti pe net pot fi stricate si nesigure. Gandeste-te la functionalitatea eggdrop-ului tau!" 
 "\[TIP\] Stiai ca acum poti descarca fisiere de tip\002 *.tcl\002 de pe un URL direct in \002fisierul scripts\002 al eggdropului? eq:\002 %char%tcl wget <link/nume.tcl>\002 | Pentru mai multe detalii: \002%char%man tcl\002"
 "\[TIP\] \002WwW.TclScripts.Net\002 ofera spre download o gama variata de TcL-uri pentru eggdrop-ul tau (BlackIP.tcl, YoutubeTitle.tcl, BlackCountry.tcl, CSC.tcl si multe altele), pentru a avea un BOT profesional si de ultima generatie."
 "\[TIP\] Stiai ca acum poti folosi comanda \002for\002 pe mai multi eggdropi pentru a \002executa simultan\002 aceeasi comanda? ex: for Bot1,Bot2,Bot3 say bla bla | Pentru mai multe detalii: \002%char%man for\002"
 "\[TIP\] \002(\$)\002 Vrei un \002TCL script personalizat\002 pentru eggdropul tau? Nimic mai simplu, doar \002spune-ne ce ai dori\002! Putem crea \002aproape orice TCL\002 pe baza ideilor si donatiilor tale. Email \002blackshadow@tclscripts.net\002 or \002info@tclscripts.net\002 cu informatiile solicitate si va vom contacta \002cat mai curand posibil\002."
 "\[TIP\] Stiai ca acum poti adauga \002exceptii pentru anumite cuvinte\002 de la protectiile scriptului \002pentru a evita kick-ul sau banarea utilizatorilor\002 atunci cand nu este intradevar necesar? Pentru mai multe detalii: \002%char%man exempt\002"
 "\[TIP\] Stiai ca acum poti adauga \002un comentariu\002 la cateva comenzi de ban\002, pe care ceilalti useri cu acces la eggdrop sa il vada,\002 atunci cand solicita informatii despre acel ban?? eq: \002%char%b nick just a test -c do not remove\002 | \[BT\] Motiv: just a test | \[BT\] \002\[COMENTARIU BAN\]\002 do not remove"
}


####################################### MAN SETARI INTERNE EGGDROP #############################################


#Ban-Time

set black(say.ro.man.2101) "\[MAN\] \002Ban-Time/BanTime\002 este o setare interna a eggdrop ce nu are legatura cu scriptul \002BlackToolS\002, dar care seteaza cat timp vor tine ban-urile temporare (in minute). Daca se specifica \0020\002 la aceasta optiune, eggdrop-ul nu va scoate niciodata acest ban-uri."
set black(say.ro.man.2102) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.2103) "\[MAN\] \002%char%set\002 ban-time <perioada> ; \002%botnick% set\002 ban-time <perioada> ; \002(PRIVMSG) set\002 <#canal> ban-time <perioada>"

#ChanMode

set black(say.ro.man.2104) "\[MAN\] \002ChanMode\002 este o setare interna a eggdrop ce nu are legatura cu scriptul \002BlackToolS\002, dar care va face ca eggdrop-ul sa forteze anumite moduri de canal. Acesta va adauga intotdeauna modurile +<modes> si va elimina modurile -<modes>."
set black(say.ro.man.2105) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.2106) "\[MAN\] \002%char%set\002 chanmode (+/-)<modes> ; \002%botnick% set\002 chanmode (+/-)<modes> ; \002(PRIVMSG) set\002 <#canal> chanmode (+/-)<modes>"

#DontKickOps

set black(say.ro.man.2107) "\[MAN\] \002DontKickOps\002 este o setare interna a eggdrop ce nu are legatura cu scriptul \002BlackToolS\002, dar care va face ca eggdrop-ul sa nu dea kick userilor cu flagul \002+o\002, lasandu-i pe acestia sa faca flood-kick pentru a proteja canalul impotriva atacului cu clone."
set black(say.ro.man.2108) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.2109) "\[MAN\] \002%char%set\002 (+/-)dontkickops ; \002%botnick% set\002 (+/-)dontkickops ; \002(PRIVMSG) set\002 <#canal> (+/-)dontkickops"

#EnforceBans 

set black(say.ro.man.2110) "\[MAN\] \002EnforceBans\002 este o setare interna a eggdrop ce nu are legatura cu scriptul \002BlackToolS\002, iar cand un ban este setat, da kick la userii care sunt pe canal si se potrivesc ban-ului respectiv (userii cu access nu vor primi kick)."
set black(say.ro.man.2111) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.2112) "\[MAN\] \002%char%set\002 (+/-)enforcebans ; \002%botnick% set\002 (+/-)enforcebans ; \002(PRIVMSG) set\002 <#canal> (+/-)enforcebans"

#DynamicBans 

set black(say.ro.man.2113) "\[MAN\] \002DynamicBans\002 este o setare interna a eggdrop ce nu are legatura cu scriptul \002BlackToolS\002, dar care activeaza ban-urile de canal doar cand este necesar. Aceasta setare previne ca lista de ban-uri a canalului sa devina excesiv de lunga. Eggdrop-ul inca va mai tine minte fiecare ban, dar activeaza ban-ul pe canal doar atunci cand vede pe cineva care intra pe canal si se potriveste unui ban."
set black(say.ro.man.2114) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.2115) "\[MAN\] \002%char%set\002 (+/-)dynamicbans ; \002%botnick% set\002 (+/-)dynamicbans ; \002(PRIVMSG) set\002 <#canal> (+/-)dynamicbans"

#UserBans 

set black(say.ro.man.2116) "\[MAN\] \002UserBans\002 este o setare interna a eggdrop ce nu are legatura cu scriptul \002BlackToolS\002, dar care permite ca banurile sa fie executate direct de useri. Daca este dezactivata, eggdrop-ul va cere ca toate ban-urile sa fie facute prin consola acestuia."
set black(say.ro.man.2117) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.2118) "\[MAN\] \002%char%set\002 (+/-)userbans ; \002%botnick% set\002 (+/-)userbans ; \002(PRIVMSG) set\002 <#canal> (+/-)userbans"

#AutoOp 

set black(say.ro.man.2119) "\[MAN\] \002AutoOp\002 este o setare interna a eggdrop ce nu are legatura cu scriptul \002BlackToolS\002, dar care va obliga eggdrop-ul sa dea op (@) userilor cu flagul \002+o\002 automat si imediat cum intra pe canal (aceasta setare este nesigura si nerecomandata)."
set black(say.ro.man.2120) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.2121) "\[MAN\] \002%char%set\002 (+/-)autoop ; \002%botnick% set\002 (+/-)autoop ; \002(PRIVMSG) set\002 <#canal> (+/-)autoop"

#AutoHalfOp 

set black(say.ro.man.2122) "\[MAN\] \002AutoHalfOp\002 este o setare interna a eggdrop ce nu are legatura cu scriptul \002BlackToolS\002, dar care va obliga eggdrop-ul sa dea half-op (%/+h) userilor cu flagul \002+l\002 automat si imediat cum intra pe canal (aceasta setare este nesigura si nerecomandata)."
set black(say.ro.man.2123) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.2124) "\[MAN\] \002%char%set\002 (+/-)autohalfop ; \002%botnick% set\002 (+/-)autohalfop ; \002(PRIVMSG) set\002 <#canal> (+/-)autohalfop"

#AutoVoice 

set black(say.ro.man.2125) "\[MAN\] \002AutoVoice\002 este o setare interna a eggdrop ce nu are legatura cu scriptul \002BlackToolS\002, dar care va obliga eggdrop-ul sa dea voice (+v) userilor cu flagul \002+v\002 automat si imediat cum intra pe canal."
set black(say.ro.man.2126) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.2127) "\[MAN\] \002%char%set\002 (+/-)autovoice ; \002%botnick% set\002 (+/-)autovoice ; \002(PRIVMSG) set\002 <#canal> (+/-)autovoice"

#Bitch 

set black(say.ro.man.2128) "\[MAN\] \002Bitch\002 este o setare interna a eggdrop ce nu are legatura cu scriptul \002BlackToolS\002, prin care eggdrop-ul va lasa doar userii cu flagul \002+o\002 sa aiba op (@) pe canal. Daca pe canal exista \002X\002 sau \002ChanServ\002, cu siguranta, userii vor incerca sa-i dea deop/kick/ban eggdrop-ului ca razbunare (aceasta comanda nu este recomandata)."
set black(say.ro.man.2129) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.2130) "\[MAN\] \002%char%set\002 (+/-)bitch ; \002%botnick% set\002 (+/-)bitch ; \002(PRIVMSG) set\002 <#canal> (+/-)bitch"

#Greet 

set black(say.ro.man.2131) "\[MAN\] \002Greet\002 este o setare interna a eggdrop ce nu are legatura cu scriptul \002BlackToolS\002, prin care eggdrop-ul va spune oricarui user ce intra pe canal mesajul setat ca mesaj de greet (vezi si \002%char%man myset\002)."
set black(say.ro.man.2132) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.2133) "\[MAN\] \002%char%set\002 (+/-)greet ; \002%botnick% set\002 (+/-)greet ; \002(PRIVMSG) set\002 <#canal> (+/-)greet"

#ProtectOps 

set black(say.ro.man.2134) "\[MAN\] \002ProtectOps\002 este o setare interna a eggdrop ce nu are legatura cu scriptul \002BlackToolS\002, prin care eggdrop-ul re-opeaza automat un user cu flagul \002+o\002 daca acesta primeste deop."
set black(say.ro.man.2135) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.2136) "\[MAN\] \002%char%set\002 (+/-)protectops ; \002%botnick% set\002 (+/-)protectops ; \002(PRIVMSG) set\002 <#canal> (+/-)protectops"

#ProtectFriends 

set black(say.ro.man.2137) "\[MAN\] \002ProtectFriends\002 este o setare interna a eggdrop ce nu are legatura cu scriptul \002BlackToolS\002, prin care eggdrop-ul re-opeaza automat un user cu flagul \002+f\002 daca acesta primeste deop."
set black(say.ro.man.2138) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.2139) "\[MAN\] \002%char%set\002 (+/-)protectfriends ; \002%botnick% set\002 (+/-)protectfriends ; \002(PRIVMSG) set\002 <#canal> (+/-)protectfriends"

#ProtectHalfOps 

set black(say.ro.man.2140) "\[MAN\] \002ProtectHalfOps\002 este o setare interna a eggdrop ce nu are legatura cu scriptul \002BlackToolS\002, prin care eggdrop-ul re-half-opeaza automat un user cu flagul \002+l\002 daca acesta primeste de-half."
set black(say.ro.man.2141) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.2142) "\[MAN\] \002%char%set\002 (+/-)protecthalfops ; \002%botnick% set\002 (+/-)protecthalfops ; \002(PRIVMSG) set\002 <#canal> (+/-)protecthalfops"

#Inactive 

set black(say.ro.man.2143) "\[MAN\] \002Inactive\002 este o setare interna a eggdrop ce nu are legatura cu scriptul \002BlackToolS\002, prin care se poate previni ca eggdrop-ul sa mai intre pe un anumit canal (sau il face sa plece de pe canal daca este deja acolo). Poate fi utila deoarece face eggdrop-ul sa plece de pe canal fara sa piarda setarile, accesele userilor de pe canal si lista de ban-uri."
set black(say.ro.man.2144) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.2145) "\[MAN\] \002%char%set\002 (+/-)inactive ; \002%botnick% set\002 (+/-)inactive ; \002(PRIVMSG) set\002 <#canal> (+/-)inactive"

#StatusLog 

set black(say.ro.man.2146) "\[MAN\] \002StatusLog\002 este o setare interna a eggdrop ce nu are legatura cu scriptul \002BlackToolS\002, prin care eggdrop-ul va tine log-uri ale status-ului de canal la fiecare 5 minute. Aceasta setare arata statutul eggdrop-ului pe canal (@, +v), modurile canalului si numarul de useri cu \002+m/+o/+v/+n/+b/+e/+l\002 pe canal."
set black(say.ro.man.2147) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.2148) "\[MAN\] \002%char%set\002 (+/-)statuslog\002 ; \002%botnick% set\002 (+/-)statuslog ; \002(PRIVMSG) set\002 <#canal> (+/-)statuslog"

#Static 

set black(say.ro.man.2149) "\[MAN\] \002Static\002 este o setare interna a eggdrop ce nu are legatura cu scriptul \002BlackToolS\002, dar care permite numai ownerilor permanenti sa elimine canalul respectiv."
set black(say.ro.man.2150) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.2151) "\[MAN\] \002%char%set\002 (+/-)static ; \002%botnick% set\002 (+/-)static ; \002(PRIVMSG) set\002 <#canal> (+/-)static"

#Revenge 

set black(say.ro.man.2152) "\[MAN\] \002Revenge\002 este o setare interna a eggdrop ce nu are legatura cu scriptul \002BlackToolS\002, prin care eggdrop-ul memoreaza userii ce i-au dat deop/kick/ban (actuali op si/sau prieteni) si ii pedepseste. (Userii cu flagul \002+f\002 sunt exceptati de la razbunare)."
set black(say.ro.man.2153) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.2154) "\[MAN\] \002%char%set\002 (+/-)revenge ; \002%botnick% set\002 (+/-)revenge ; \002(PRIVMSG) set\002 <#canal> (+/-)revenge"

#RevengeBot 

set black(say.ro.man.2155) "\[MAN\] \002RevengeBot\002 este o setare interna a eggdrop ce nu are legatura cu scriptul \002BlackToolS\002, similara cu \002Revenge\002, dar care se declanseaza doar atunci cand eggdrop-ul primeste deop, kick sau ban."
set black(say.ro.man.2156) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.2157) "\[MAN\] \002%char%set\002 (+/-)revengebot ; \002%botnick% set\002 (+/-)revengebot ; \002(PRIVMSG) set\002 <#canal> (+/-)revengebot"

#Secret 

set black(say.ro.man.2158) "\[MAN\] \002Secret\002 este o setare interna a eggdrop ce nu are legatura cu scriptul \002BlackToolS\002, dar care nu permite eggdrop-ului sa afiseze respectivul canal in botnet si in baza de date seen (intervine de asemenea in comenzile de statistica)."
set black(say.ro.man.2159) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.2160) "\[MAN\] \002%char%set\002 (+/-)secret ; \002%botnick% set\002 (+/-)secret ; \002(PRIVMSG) set\002 <#canal> (+/-)secret"

#Shared 

set black(say.ro.man.2161) "\[MAN\] \002Shared\002 este o setare interna a eggdrop ce nu are legatura cu scriptul \002BlackToolS\002, prin care eggdrop-ul imparte informatii despre useri sau referitoare la canal."
set black(say.ro.man.2162) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.2163) "\[MAN\] \002%char%set\002 (+/-)shared ; \002%botnick% set\002 (+/-)shared ; \002(PRIVMSG) set\002 <#canal> (+/-)shared"

#Cycle 

set black(say.ro.man.2164) "\[MAN\] \002Cycle\002 este o setare interna a eggdrop ce nu are legatura cu scriptul \002BlackToolS\002, dar care face ca eggdrop-ul sa iasa si sa reintre de pe canal cand nu are op (@)."
set black(say.ro.man.2165) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.2166) "\[MAN\] \002%char%set\002 (+/-)cycle ; \002%botnick% set\002 (+/-)cycle ; \002(PRIVMSG) set\002 <#canal> (+/-)cycle"

#NodeSynch 

set black(say.ro.man.2167) "\[MAN\] \002NodeSynch\002 este o setare interna a eggdrop ce nu are legatura cu scriptul \002BlackToolS\002, dar care permite userilor fara op sa seteze moduri pe canal. (aceasta setare poate opri eggdrop-ul sa se bata cu servicii ca \002X\002 sau \002ChanServ\002 sau sa dea kick IRCoperatorilor cand seteaza, fara a avea op, moduri pe canal)."
set black(say.ro.man.2168) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.2169) "\[MAN\] \002%char%set\002 (+/-)nodesynch ; \002%botnick% set\002 (+/-)nodesynch ; \002(PRIVMSG) set\002 <#canal> (+/-)nodesynch"

#DynamicExempts 

set black(say.ro.man.2170) "\[MAN\] \002DynamicExempts\002 este o setare interna a eggdrop ce nu are legatura cu scriptul \002BlackToolS\002, dar care activeaza scutirile pe canal doar cand este necesar. Aceasta previne ca lista de scutiri a canalului sa devina excesiv de lunga. Eggdrop-ul isi aminteste toate scutirile, dar activeaza o scutire pe canal cand vede un ban setat care se potriveste cu acea scutire. Scutirea ramane activa pe canal atata timp cat banul este activ."
set black(say.ro.man.2171) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.2172) "\[MAN\] \002%char%set\002 (+/-)dynamicexempts ; \002%botnick% set\002 (+/-)dynamicexempts ; \002(PRIVMSG) set\002 <#canal> (+/-)dynamicexempts"

#UserExempts 

set black(say.ro.man.2173) "\[MAN\] \002UserExempts\002 este o setare interna a eggdrop ce nu are legatura cu scriptul \002BlackToolS\002, dar care permite ca scutirile sa fie facute direct de useri. Daca este dezactivata, eggdrop-ul va cere ca toate scutirile sa fie facute prin consola acestuia."
set black(say.ro.man.2174) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.2175) "\[MAN\] \002%char%set\002 (+/-)userexempts ; \002%botnick% set\002 (+/-)userexempts ; \002(PRIVMSG) set\002 <#canal> (+/-)userexempts"

#DynamicInvites 

set black(say.ro.man.2176) "\[MAN\] \002DynamicInvites\002 este o setare interna a eggdrop ce nu are legatura cu scriptul \002BlackToolS\002, dar care activeaza invitatiile de pe canal doar cand este necesar. Previne ca lista de invitatii sa devina prea de lunga. Eggdrop-ul isi va aminti fiecare invitatie, dar invitatiile sunt activate doar cand canalul este setat pe modul +i si un user intra dupa ce a cerut o invitatie. Odata setata, invitatia ramane pana cand modul devine -i."
set black(say.ro.man.2177) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.2178) "\[MAN\] \002%char%set\002 (+/-)dynamicinvites ; \002%botnick% set\002 (+/-)dynamicinvites ; \002(PRIVMSG) set\002 <#canal> (+/-)dynamicinvites"

#UserInvites 

set black(say.ro.man.2179) "\[MAN\] \002UserInvites\002 este o setare interna a eggdrop ce nu are legatura cu scriptul \002BlackToolS\002, dar care permite ca invitatiile sa fie facute direct de useri. Daca este dezactivata, eggdrop-ul va cere ca toate invitaiile sa fie facute prin consola acestuia."
set black(say.ro.man.2180) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.2181) "\[MAN\] \002%char%set\002 (+/-)userinvites ; \002%botnick% set\002 (+/-)userinvites ; \002(PRIVMSG) set\002 <#canal> (+/-)userinvites"

#Flood-Ctcp

set black(say.ro.man.2182) "\[MAN\] \002Flood-Ctcp\002 este o setare interna a eggdrop ce nu are legatura cu scriptul \002BlackToolS\002, care defineste cate ctcp-uri in cate secunde de la acelasi host constituie flood (+f users will not be kicked). Pentru a dezactiva aceasta setare, specifica \0020\002 sau \0020:0\002."
set black(say.ro.man.2183) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.2184) "\[MAN\] \002%char%set\002 flood-ctcp <ctcp:secunde> ; \002%botnick% set\002 flood-ctcp <ctcp:secunde> ; \002(PRIVMSG) set\002 <#canal> flood-ctcp <ctcp:secunde>"
set black(say.ro.man.2185) "Vizualizare setari optiuni: \002%char%show\002 <setare> ; \002%botnick% show\002 <setare> ; \002(PRIVMSG) show\002 <#canal> <setare>"

#Flood-Join

set black(say.ro.man.2186) "\[MAN\] \002Flood-Join\002 este o setare interna a eggdrop ce nu are legatura cu scriptul \002BlackToolS\002, care defineste cate intrari pe canal in cate secunde de la acelasi constituie flood (userii cu flagul +f nu vor primi kick). Pentru a dezactiva aceasta setare, specifica \0020\002 sau \0020:0\002."
set black(say.ro.man.2187) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.2188) "\[MAN\] \002%char%set\002 flood-join <joins:secunde> ; \002%botnick% set\002 flood-join <joins:secunde> ; \002(PRIVMSG) set\002 <#canal> flood-join <joins:secunde>"
set black(say.ro.man.2189) "Vizualizare setari optiuni: \002%char%show\002 <setare> ; \002%botnick% show\002 <setare> ; \002(PRIVMSG) show\002 <#canal> <setare>"

#Flood-Kick 

set black(say.ro.man.2190) "\[MAN\] \002Flood-Kick\002 este o setare interna a eggdrop ce nu are legatura cu scriptul \002BlackToolS\002, care defineste cate kick-uri in cate secunde de la acelasi host constituie flood (userii cu flagul +f nu vor primi kick). Pentru a dezactiva aceasta setare, specifica \0020\002 sau \0020:0\002."
set black(say.ro.man.2191) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.2192) "\[MAN\] \002%char%set\002 flood-kick <kicks:secunde> ; \002%botnick% set\002 flood-kick <kicks:secunde> ; \002(PRIVMSG) set\002 <#canal> flood-kick <kicks:secunde>"
set black(say.ro.man.2193) "Vizualizare setari optiuni: \002%char%show\002 <setare> ; \002%botnick% show\002 <setare> ; \002(PRIVMSG) show\002 <#canal> <setare>"

#Flood-Deop 

set black(say.ro.man.2194) "\[MAN\] \002Flood-Deop\002 este o setare interna a eggdrop ce nu are legatura cu scriptul \002BlackToolS\002, care defineste cate deop-uri in cate secunde de la acelasi host constituie flood (userii cu flagul +f nu vor primi kick). Pentru a dezactiva aceasta setare, specifica \0020\002 sau \0020:0\002."
set black(say.ro.man.2195) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.2196) "\[MAN\] \002%char%set\002 flood-deop <deops:secunde> ; \002%botnick% set\002 flood-deop <deops:secunde> ; \002(PRIVMSG) set\002 <#canal> flood-deop <deops:secunde>"
set black(say.ro.man.2197) "Vizualizare setari optiuni: \002%char%show\002 <setare> ; \002%botnick% show\002 <setare> ; \002(PRIVMSG) show\002 <#canal> <setare>"

#Flood-Nick 

set black(say.ro.man.2198) "\[MAN\] \002Flood-Nick\002 este o setare interna a eggdrop ce nu are legatura cu scriptul \002BlackToolS\002, care defineste cate schimbari de nick in cate secunde de la acelasi host constituie flood (userii cu flagul +f nu vor primi kick). Pentru a dezactiva aceasta setare, specifica \0020\002 sau \0020:0\002."
set black(say.ro.man.2199) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.2200) "\[MAN\] \002%char%set\002 flood-nick <nicks:secunde> ; \002%botnick% set\002 flood-nick <nicks:secunde> ; \002(PRIVMSG) set\002 <#canal> flood-nick <nicks:secunde>"
set black(say.ro.man.2201) "Vizualizare setari optiuni: \002%char%show\002 <setare> ; \002%botnick% show\002 <setare> ; \002(PRIVMSG) show\002 <#canal> <setare>"

#Flood-Chan 

set black(say.ro.man.2202) "\[MAN\] \002Flood-Chan\002 este o setare interna a eggdrop ce nu are legatura cu scriptul \002BlackToolS\002, care defineste cate mesaje trimise pe canal in cate secunde de la acelasi host constituie flood (userii cu flagul +f nu vor primi kick). Pentru a dezactiva aceasta setare, specifica \0020\002 sau \0020:0\002."
set black(say.ro.man.2203) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.2204) "\[MAN\] \002%char%set\002 flood-chan <linii:secunde> ; \002%botnick% set\002 flood-chan <linii:secunde> ; \002(PRIVMSG) set\002 <#canal> flood-chan <linii:secunde>"
set black(say.ro.man.2205) "Vizualizare setari optiuni: \002%char%show\002 <setare> ; \002%botnick% show\002 <setare> ; \002(PRIVMSG) show\002 <#canal> <setare>"


#AutoUpdate

set black(say.ro.man.2206) "\[MAN\] \002AutoUpdate\002 este un modul ce ii confera capacitatea de a-si da \001update\001 singur (daca exista versiune noua sau un bugfix pentru BT) prin intermediul unei comenzi sau \002AUTOMAT\002 (prin timer). Fisierele BT si variabilele setate in \001BlackTools.tcl\001 sunt salvate si restaurate."
set black(say.ro.man.2207) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.2208) "\[MAN\] \002%char%update <on>\002 (activare autoupdate); \002%char%update off\002 <dezactivare autoupdate>; \002%char%update check\002 (verificare de noi update-uri); \002%char%update start\002 (pornire update); \002%char%update time\002 \[timp\] (se seteaza intervalul de verificare update, se poate folosi X\001m\001, X\001h\001, X\001d\001 ; daca \001\[timp\]\001 nu este specificat, se afiseaza timpul curent setat)"

#Alias

set black(say.ro.man.2209) "\[MAN\] \002ALIAS\002 este un modul ce va ofera oportunitatea de a va creea propriile comenzi personalizate pe baza comenzilor existente din BT. Se pot folosi toate comenzile disponibile."
set black(say.ro.man.2210) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.2211) "\[MAN\] \002%char%alias add\002 <comanda> <comanda BT> \[argumente\] ; \002%char%alias del\002 <comanda>"
set black(say.ro.man.2212) "\[MAN\] Exemplu 1 : \002%char%alias add\002 lamer \001b\001 %1% 0 Esti un lamer !! \[%1% - nick sau host\]"
set black(say.ro.man.2213) "\[MAN\] Exemplu 2 : \002%char%alias add\002 bere \001cycle\001 %1% %2% Ma duc la o bere, ma reintorc ! \[%1% - canal ;  %2% - timp cycle\]"

#NoProxy

set black(say.ro.man.2214) "\[MAN\] \002NoProxy\002 baneaza userii a caror IP sunt \001PROXY\001"
set black(say.ro.man.2215) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.2216) "\[MAN\] \002%char%set\002 (+/-)noproxy ; \002%botnick% set\002 (+/-)noproxy ; \002(PRIVMSG) set\002 <#chan> (+/-)noproxy"
set black(say.ro.man.2217) "\[MAN\] Setari optionale: \noproxy-reason\002; noproxy-bantime (Puteti folosi in motiv \001noproxy-reason\001 cuvantul cheie \"%isp%\" iar acesta va fi inlocuit cu ISP-ul IP-ului.)"

#Egg AntiBotIdle

set black(say.ro.man.2218) "\[MAN\] \002AntiBotIdle\002 este o optiune care face ca eggdrop-ul sa aiba sau nu \002IDLE\002 pe IRC."
set black(say.ro.man.2218_1) "\[MAN\] \0021\002 = fara idle ; \0020\002 = cu idle"
set black(say.ro.man.2219) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.2220) "\[MAN\] \002%char%set antibotidle\002 <1|0> ; \002%botnick% set antibotidle\002 <1|0> ; \002(PRIVMSG) set antibotidle\002 <1|0>"

#Vote

set black(say.ro.man.2221) "\[MAN\] \002Vote\002 este un modul ce ofera posibilitatea userilor de a deschide un proces de vot la care utilizatorii (cei cu access sau toti) sa poata sa raspunda cu una optiunile predefinite."
set black(say.ro.man.2222) "\[MAN\] SINTAXA FOLOSIRE:"
set black(say.ro.man.2223) "\[MAN\] \002%char%set\002 (+/-)vote ; \002%botnick% set\002 (+/-)vote ; \002(PRIVMSG) set\002 <#canal> (+/-)vote"
set black(say.ro.man.2224) "\[MAN\] \002%char%vote \002\[#canal\] add\002 <nume_vote> -option <optiune1> -option <optiune2>.. \[-time \[DD/MM/YY HH:MM\]\] (timp expirare) \[-type 1/0\] (1 - useri cu access, 0 - toti utilizatorii)"
set black(say.ro.man.2225) "\[MAN\] \002%char%vote \002\[#canal\] \002list \[ID\]\002 (listare votari, daca se specifica ID, se vor lista voturile exprimate pentru acel proces de votare) ; \002%char%vote \002\[#canal\] \002del\002 <ID> (stergere votare)"
set black(say.ro.man.2226) "\[MAN\] \002%char%vote \002\[#canal\]\002 <ID> <litera> (litera corespunzatoare optiunii pentru ID votare) ; \002%char%vote \002\[#canal\] time\002 <ID> <DD/MM/YY HH:MM> (setare timp de expirare nou) ; \002%char%vote \002\[#canal\] end\002 <ID> (incheiere votare)"
set black(say.ro.man.2227) "\[MAN\] Setari optionale: \002vote-mask\002 (vezi \002%char%vote man\002 mask) ; \002(+/-)votegreet\002 (activare mesaj de intampinare pentru ca userii sa stie daca sunt votari active)"
set black(say.ro.man.2228) "\[MAN\] \002%char%vote \002\[#canal\] list\002 \[ID\]\002 (listare votari, daca se specifica ID \[doar admin+\]], se vor lista voturile exprimate pentru acel proces de votare)"
set black(say.ro.man.2229) "\[MAN\] \002%char%vote \002\[#canal\] <ID> <litera> (litera corespunzatoare optiunii pentru ID votare)"

#Mask

set black(say.ro.man.2230) "\[MAN\] Aveti la dispozitie urmatoarele metode de mask-uri:"
set black(say.ro.man.2231) "\[MAN\] \002#1\002 *!*@host ; \002#2\002 *!user@host ; \002#3\002 nick!user@host ; \002#4\002 nick!*@* ; \002#5\002 *!user@*"
set black(say.ro.man.2232) "\[MAN\] SINTAXA FOLOSIRE: \002%char%set\002 <setare> <nr. metoda> ; \002%botnick% set\002 <setare> <nr. metoda> ; \002(PRIVMSG) set\002 <#canal> <setare> <nr. metoda>"

##############################
############################################################################################################
#   SFARSIT                                                                                                #
############################################################################################################
