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
#Acest fisier ruleaza impreuna cu BlackTools si este incarcat automat daca exista in folderul lang (fisier obligatoriu sa existe)#
##################################################################################################################################
#                                                                                                                                #
#                                                   *** The Future is Here ***                                                   #
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
#   				           #                                                                                     #
#             LIMBA ROMANA (RO)	           #                        revizuita si actualizata de Florian | florian@tclscripts.net #
#				           #	                                                        Data: 25.02.2018 11:31AM #
##################################################################################################################################

##################################################################################################################################
#                                                                                                                                #
#                                                         NIVELE ACCESS                                                          #
#                                                                                                                                #
##################################################################################################################################

set black(say.ro.level.1) "BOSS OWNER"
set black(say.ro.level.2) "OWNER"
set black(say.ro.level.3) "MANAGER"
set black(say.ro.level.4) "ADMIN"
set black(say.ro.level.5) "OP"
set black(say.ro.level.6) "VOICE"
set black(say.ro.level.7) "PROTECT"
set black(say.ro.level.8) "MASTER"
set black(say.ro.level.9) "BAN"

##################################################################################################################################
#                                                                                                                                #
#                                                         MESAJE STANDARD                                                        #
#                                                                                                                                #
##################################################################################################################################

set black(say.ro.gl.instr) "\005\[BT\]\005 Pentru instructiuni de utilizare, foloseste: \002%char%man %msg.1%\002"
set black(say.ro.gl.instr_nick) "\005\[BT\]\005 Pentru instructiuni de utilizare, foloseste: \002%botnick% man %msg.1%\002"
set black(say.ro.gl.instr_priv) "\005\[BT\]\005 Pentru instructiuni de utilizare, foloseste: \002man %msg.1%\002"
set black(say.ro.gl.noban) "\005\[BT\]\005 Nu se poate executa deoarece are access."
set black(say.ro.gl.notonchan) "Nu sunt pe \001%chan%\001."
set black(say.ro.gl.suspend) "\005\[BT\]\005 Esti suspendat pe \002%chan%\002, nu poti folosi aceasta comanda."
set black(say.ro.gl.glsuspend) "\005\[BT\]\005 Esti suspendat \002GLOBAL\002, nu poti folosi aceasta comanda."
set black(say.ro.gl.novalidchan) "\005\[BT\]\005 Canal invalid."
set black(say.ro.gl.nomem) "\005\[BT\]\005 Userul nu se afla in memoria mea."
set black(say.ro.gl.noaccess) "\005\[BT\]\005 Nu are access pe \002%chan%\002."
set black(say.ro.gl.noop) "\005\[BT\]\005 Nu am op pe \002%chan%\002."
set black(say.ro.gl.nomodif) "\005\[BT\]\005 Nu poti modifica caracteristicile acestui user deoarece are access mai mare sau egal ca al tau."
set black(say.ro.gl.usernotonchan) "\005\[BT\]\005 \002%msg.1%\002 nu este pe \002%chan%\002."
set black(say.ro.gl.nocmem) "\005\[BT\]\005 Nu am in memorie canalul \001%msg.1%\001"
set black(say.ro.gl.isowner) "\005\[BT\]\005 \002%msg.1%\002 are deja access de \002%msg.set%\002."
set black(say.ro.gl.usernotexist) "\005\[BT\]\005 \002%msg.1%\002 nu exista."
set black(say.ro.gl.hostnotexist) "\005\[BT\]\005 Nu am gasit nicio informatie referitoare la acest host."
set black(say.ro.gl.reason) "motiv"
set black(say.ro.gl.invalidlevel) "\005\[BT\]\005 Nu poti aplica ban pe nivelul specificat (ai nevoie de \001%msg%\001)"
set black(say.ro.gl.nounban) "\005\[BT\]\005 Nu poti scoate banul \002%msg.1%\002, deoarece este de nivel mai mare ca al tau."
set black(say.ro.gl.hasop) "\005\[BT\]\005 Are OP si nu pot executa."
set black(say.ro.gl.notonline) "\005\[BT\]\005 \002%msg.1%\002 nu este ONLINE."
set black(say.ro.gl.xonlyban) "\005\[BT\]\005 Am adaugat ban pe \001%msg.1%\001 prin \002%msg.2%\002 pe \001%chan%\001 \[Modul \002XonlY\002 activat.\]"
set black(say.ro.gl.showline) "#\004%msg.1%\004 %msg.8%"
set black(say.ro.gl.wordexists) "\005\[BT\]\005 Cuvantul \001%msg.1%\001 este deja in lista canalului \002%chan%\002."
set black(say.ro.gl.noset) "N/A"
set black(say.ro.gl.validuser) "\005\[BT\]\005 Comanda interzisa ( host-ul apartine user-ului \002%msg.1%\002 )."
set black(say.ro.gl.banexists) "\005\[BT\]\005 \002%msg.1%\002 este deja acoperit de ban-ul dat pe host-ul \002%msg.2%\002"
set black(say.ro.gl.noipv4) "\005\[BT\]\005 \002%msg.1%\002 nu este ipv4 pentru a putea folosi ban pe CIDR."
set black(say.ro.gl.fullbans) "\005\[BT\]\005 \002ATENTIE\002: Banlist-ul canalului \002%chan%\002 detectat ca fiind *PLIN* cu \002%numbans%\002 de intrari. Golesc lista de banuri a canalului.."
set black(say.ro.gl.noxonly) "\005\[BT\]\005 Nu poti seta \002+xonly\002 deoarece nu sunt logat."
set black(say.ro.gl.banblack) "\005\[BT\]\005 Nu se poate executa deoarece este in blacklist."
set black(say.ro.gl.protexcept) "\002exceptie\002"
set black(say.ro.gl.nobanlevel) "\005\[BT\]\005 Nu poti da ban pe \002%msg.1%\002, are deja ban de nivel mai mare ca al tau."

#############################################################################################################################
#                                                                                                                           #
#                                              Protectii Interne AntiFlood                                                  #
#                                                                                                                           #
#############################################################################################################################

set black(say.ro.antiflood.1) "\005\[BT\]\005 Trimiti cereri prea repede. Calmeaza-te si incearca din nou dupa \002%msg.1% minut\002. Multumesc!"
set black(say.ro.antiflood.2) "\002\005\[BT\]\005\002 Am adaugat \001%msg.1%\001 la ignore. Motiv: \002%msg.8%\002"
set black(say.ro.antiflood.3) "\002\005\[BT\]\005\002 SILENCE activat. Motiv :\002%msg%\002"
set black(say.ro.antiflood.4) "\002\005\[BT\]\005\002 SILENCE dezactivat."

#############################################################################################################################
#                                                                                                                           #
#                                                    IESIRI TIMP                                                            #
#                                                                                                                           #
#############################################################################################################################

set black(say.ro.timeout.1) "an"
set black(say.ro.timeout.2) "ani"
set black(say.ro.timeout.3) "zi"
set black(say.ro.timeout.4) "zile"
set black(say.ro.timeout.5) "ora"
set black(say.ro.timeout.6) "ore"
set black(say.ro.timeout.7) "minut"
set black(say.ro.timeout.8) "minute"
set black(say.ro.timeout.9) "secunde"

#############################################################################################################################
#                                                                                                                           #
#                                                    MAX UPTIME                                                             #
#                                                                                                                           #
#############################################################################################################################

set black(say.ro.maxup.1) "\005\[BT\]\005 Timp pornire: \002%msg.1% %msg.2% %msg.3%\002 - Max UpTIME: \001%msg.9%\001"
set black(say.ro.maxon.1) "\005\[BT\]\005 Timp online: \002%msg.1% %msg.2% %msg.3%\002 - Max OnTIME: \001%msg.9%\001"

#############################################################################################################################
#                                                                                                                           #
#                                                      STATS                                                                #
#                                                                                                                           #
#############################################################################################################################

set black(say.ro.stats.1) "\005\[BT\]\005 Nu exista statistici despre \002%msg.1%\002."
set black(say.ro.stats.2) "\002Stats\002 Azi: (\001%msg.1%\001) Banuri: \002%msg.2%\002 Kick-uri: \002%msg.3%\002 Comenzi: %msg.6%"
set black(say.ro.stats.3) "\002Stats\002 Total: (\001%msg.1%\001) Banuri: locale \002%msg.2%\002 ; Kick-uri: \002%msg.3%\002 ; Comenzi: %msg.6%"
set black(say.ro.stats.4) "\002Stats\002 Total: (\001%msg.1%\001) Banuri: locale \002%msg.2%\002 globale \002%msg.3%\002 ; Kick-uri: \002%msg.4%\002 ; Comenzi: %msg.10%" 
set black(say.ro.stats.5) "\005\[BT\]\005 Am resetat statisticile pentru \001%msg.1%\001 de pe \002%chan%\002."

#############################################################################################################################
#                                                                                                                           #
#                                                    PROTECTII                                                              #
#                                                                                                                           #
#############################################################################################################################

#################################### InviteBan #################################

set black(say.ro.inviteban.1) "\[INVITEBAN\] Nu ai respectat regulile pe %chan% in privinta INVITE-urilor"

#################################### AntiPub ###################################

set black(say.ro.antipub.1) "Nu ai respectat regulile pe %chan% in privinta RECLAMEI"
set black(say.ro.antipub.2) "Atentie, esti avertizat sa nu mai faci reclama pe %chan%"
set black(say.ro.antipub.3) "\005\[BT\]\005 *** Sfarsit lista antipub ***"
set black(say.ro.antipub.4) "\005\[BT\]\005 Nu exista \002inregistrarea\002 antipub cu nr.\001%msg.1%\001 pentru \002%chan%\002."
set black(say.ro.antipub.5) "\005\[BT\]\005 Am sters \002inregistrarea\002 antipub cu numarul \001%msg.1%\0021 pentru \002%chan%\002."
set black(say.ro.antipub.6) "\005\[BT\]\005 Am adaugat in lista de antipub \001%msg.8%\001 cu nr.\002%msg.1%\002 pentru \002%chan%\002."
set black(say.ro.antipub.7) "\005\[BT\]\005 Lista de \002antipub\002 pentru \001%chan%\001 este:"
set black(say.ro.antipub.8) "\005\[BT\]\005 Pentru afisarea urmatoarelor inregistrari foloseste: \001%char%antipub list -next\001 (\002%counter%\002 inregistrari ramase)"
set black(say.ro.antipub.9) "\005\[BT\]\005 Pentru afisarea urmatoarelor inregistrari foloseste: \001%char%antipub %chan% list -next\001 (\002%counter%\002 inregistrari ramase)"
set black(say.ro.antipub.10) "\005\[BT\]\005 Am adaugat in lista de antipub ca exceptie \001%msg.8%\001 cu nr.\002%msg.1%\002 pentru \002%chan%\002."

#################################### BadHost ###################################

set black(say.ro.badhost.1) "Nu ai respectat regulile pe %chan% in privinta HOST-ului"
set black(say.ro.badhost.3) "\005\[BT\]\005 *** Sfarsit lista BadHosts ***"
set black(say.ro.badhost.4) "\005\[BT\]\005 Nu exista \002badhost\002 cu nr.\001%msg.1%\001 pentru \002%chan%\002."
set black(say.ro.badhost.5) "\005\[BT\]\005 Am sters \002badhost\002 cu numarul \001%msg.1%\001 pentru \002%chan%\002."
set black(say.ro.badhost.6) "\005\[BT\]\005 Am adaugat in lista de BadHosts \001%msg.8%\001 cu nr.\002%msg.1%\002 pentru \002%chan%\002."
set black(say.ro.badhost.7) "\005\[BT\]\005 Lista de \002BadHosts\002 pentru \001%chan%\001 este:"
set black(say.ro.badhost.8) "\005\[BT\]\005 Pentru afisarea urmatoarelor \002BadHosts\002 foloseste: \001%char%badhost list -next\001 (\002%counter%\002 badhost ramase)"
set black(say.ro.badhost.9) "\005\[BT\]\005 Pentru afisarea urmatoarelor \002BadHosts\002 foloseste: \001%char%badhost %chan% list -next\001 (\002%counter%\002 badhost ramase)"
set black(say.ro.badhost.10) "\005\[BT\]\005 Am adaugat in lista de BadHosts ca exceptie \001%msg.8%\001 cu nr.\002%msg.1%\002 pentru \002%chan%\002."

#################################### AntiNotice ################################

set black(say.ro.antinotice.1) "Nu ai respectat regulile pe %chan% in privinta NOTICE-ULUI"
set black(say.ro.antinotice.2) "Atentie, esti avertizat sa nu mai folosesti notice pe %chan%"

#################################### AntiCtcp ##################################

set black(say.ro.antictcp.1) "Nu ai respectat regulile pe %chan% in privinta CTCP-ULUI"
set black(say.ro.antictcp.2) "Atentie, esti avertizat sa nu mai folosesti CTCP pe %chan%"

#################################### AntiBadWord ###############################

set black(say.ro.antibadword.1) "Nu ai respectat regulile pe %chan% in privinta LIMBAJULUI"
set black(say.ro.antibadword.2) "Atentie, esti avertizat sa nu mai folosesti asemenea cuvinte pe %chan%"
set black(say.ro.antibadword.3) "\005\[BT\]\005 *** Sfarsit lista BadWords ***"
set black(say.ro.badword.4) "\005\[BT\]\005 Nu exista inregistrarea \002badword\002 cu nr.\001%msg.1%\001 pentru \002%chan%\002."
set black(say.ro.badword.5) "\005\[BT\]\005 Am sters inregistrarea \002badword\002 cu numarul \001%msg.1%\001 pentru \002%chan%\002."
set black(say.ro.badword.6) "\005\[BT\]\005 Am adaugat in lista de BadWords \001%msg.8%\001 cu nr.\002%msg.1%\002 pentru \002%chan%\002."
set black(say.ro.antibadword.7) "\005\[BT\]\005 Lista \002BadWords\002 pentru \002%chan%\002 este:"
set black(say.ro.antibadword.8) "\005\[BT\]\005 Pentru afisarea urmatoarelor inregistrari \002BadWords\002 foloseste: \001%char%badword list -next\001 (\002%counter%\002 inregistrari ramase)"
set black(say.ro.antibadword.9) "\005\[BT\]\005 Pentru afisarea urmatoarelor inregistrari \002BadWords\002 foloseste: \001%char%badword %chan% list -next\001 (\002%counter%\002 inregistrari ramase)"
set black(say.ro.badword.7) "\005\[BT\]\005 Am adaugat in lista de BadWords \001%msg.18%\001 cu nr.\002%msg.1%\002 avand metoda de ban nr.\002%msg.2% pentru \002%chan%\002."
set black(say.ro.badword.8) "\005\[BT\]\005 Am adaugat in lista de BadWords ca exceptie \001%msg.8%\001 cu nr.\002%msg.1%\002 pentru \002%chan%\002."

#################################### AntiLongText ##############################

set black(say.ro.antilongtext.1) "Nu ai respectat regulile pe %chan% in privinta textului lung"
set black(say.ro.antilongtext.2) "Atentie, esti avertizat sa nu mai scrii atat de multe cuvinte intr-o singura propozitie pe %chan%"

#################################### AntiBadQuitPart ###########################

set black(say.ro.antibadquitpart.1) "Nu ai respectat regulile pe %chan% in privinta mesajelor folosite in part/quit"
set black(say.ro.antibadquitpart.3) "\005\[BT\]\005 *** Sfarsit lista badquitpart ***"
set black(say.ro.badquitpart.4) "\005\[BT\]\005 Nu exista \002inregistrarea\002 cu nr.\001%msg.1%\001 pentru \002%chan%\002."
set black(say.ro.badquitpart.5) "\005\[BT\]\005 Am sters \002inregistrarea\002 cu numarul \001%msg.1%\001 pentru \002%chan%\002."
set black(say.ro.badquitpart.6) "\005\[BT\]\005 Am adaugat in lista de badquitpart \001%msg.8%\001 cu nr.\002%msg.1%\002 pentru \002%chan%\002."
set black(say.ro.antibadquitpart.7) "\005\[BT\]\005 Lista de \002badquitpart\002 pentru %chan% este:"
set black(say.ro.antibadquitpart.8) "\005\[BT\]\005 Pentru afisarea urmatoarelor inregistrari foloseste: \001%char%badquitpart list -next\001 (\002%counter%\002 inregistrari ramase)"
set black(say.ro.antibadquitpart.9) "\005\[BT\]\005 Pentru afisarea urmatoarelor inregistrari foloseste: \001%char%badquitpart %chan% list -next\001 (\002%counter%\002 inregistrari ramase)"
set black(say.ro.antibadquitpart.10) "\005\[BT\]\005 Am adaugat in lista de badquitpart ca exceptie \001%msg.8%\001 cu nr.\002%msg.1%\002 pentru \002%chan%\002."

################################### AntiJoinPart ###############################

set black(say.ro.antijoinpart.1) "Nu ai respectat regulile pe %chan% in privinta Join/Part"
set black(say.ro.antijoinpart.2) "Atentie, esti avertizat sa nu mai faci atat de repede join/part pe %chan%"

################################## AntiSpam ###################################

set black(say.ro.antispam.1) "Nu ai respectat regulile pe %chan% in privinta SPAM-ULUI"
set black(say.ro.antispam.2) "\[SPAMCHECK\] Bine ai venit pe \002%chan%\002, te rog nu raspunde la acest mesaj deoarece poti fi banat si considerat spammer. Multumesc!"
set black(say.ro.antispam.3) "\005\[BT\]\005 *** Sfarsit lista antispam ***"
set black(say.ro.antispam.4) "\005\[BT\]\005 Nu exista \002antispam\002 cu nr.\001%msg.1%\001 pentru \002%chan%\002."
set black(say.ro.antispam.5) "\005\[BT\]\005 Am sters \002antispam\002 cu numarul \001%msg.1%\001 pentru \002%chan%\002."
set black(say.ro.antispam.6) "\005\[BT\]\005 Am adaugat in lista de antispam \001%msg.8%\001 cu nr.\002%msg.1%\002 pentru \002%chan%\002."
set black(say.ro.antispam.7) "\005\[BT\]\005 Lista de \002antispam\002 pentru \001%chan%\001 este:"
set black(say.ro.antispam.8) "\005\[BT\]\005 Pentru afisarea urmatoarelor \002antispam\002 foloseste: \001%char%antispam list -next\001 (\002%counter%\002 inregistrari antispam ramase)"
set black(say.ro.antispam.9) "\005\[BT\]\005 Pentru afisarea urmatoarelor \002antispam\002 foloseste: \001%char%antispam %chan% list -next\001 (\002%counter%\002 inregistrari antispam ramase)"
set black(say.ro.antispam.10) "\005\[BT\]\005 Am adaugat in lista de antispam ca exceptie \001%msg.8%\001 cu nr.\002%msg.1%\002 pentru \002%chan%\002."
set black(say.ro.antispam.11) { "Verific spamul..."
			       "Stati linistiti ca ma intorc, doar imi fac datoria :P"
			       "Plec sau nu? Aceasta este intrebarea :D" 
			       }
				   
################################# AntiRepeat ##################################

set black(say.ro.antirepeat.1) "NU ai respectat regulile pe %chan% in privinta repetarilor"
set black(say.ro.antirepeat.2) "Atentie, esti avertizat sa nu mai te repeti pe %chan%"

################################# AntiColor ###################################

set black(say.ro.anticolor.1) "NU ai respectat regulile pe %chan% in privinta culorilor"
set black(say.ro.anticolor.2) "Atentie, esti avertizat sa nu mai folosesti culori pe %chan%"

################################# AntiBold ###################################

set black(say.ro.antibold.1) "NU ai respectat regulile pe %chan% in privinta folosirii caracterelor tip BOLD"
set black(say.ro.antibold.2) "Atentie, esti avertizat sa nu mai folosesti caractere de tip BOLD pe %chan%"

################################# AntiUnderline ###################################

set black(say.ro.antiunderline.1) "NU ai respectat regulile pe %chan% in privinta folosirii caracterelor sublinitate"
set black(say.ro.antiunderline.2) "Atentie, esti avertizat sa nu mai folosesti caractere subliniate pe %chan%"

################################# AntiCaps #######################################

set black(say.ro.anticaps.1) "NU ai respectat regulile pe %chan% in privinta CAPS-LOCK-ului"
set black(say.ro.anticaps.2) "Atentie, esti avertizat sa nu mai folosesti Caps Lock pe %chan%"

################################# BadRealname ###################################

set black(say.ro.badrealname.1) "Nu ai respectat regulile pe %chan% in privinta REALNAME-ULUI"
set black(say.ro.badrealname.3) "\005\[BT\]\005 *** Sfarsit lista BadRealnames ***"
set black(say.ro.badrealname.4) "\005\[BT\]\005 Nu exista \002badfullname\002 cu nr.\001%msg.1%\001 pentru \002%chan%\002."
set black(say.ro.badrealname.5) "\005\[BT\]\005 Am sters \002badfullname\002 cu numarul \001%msg.1%\001 pentru \002%chan%\002."
set black(say.ro.badrealname.6) "\005\[BT\]\005 Am adaugat in lista de badrealname \001%msg.8%\001 cu nr.\002%msg.1%\002 pentru \002%chan%\002."
set black(say.ro.badrealname.7) "\005\[BT\]\005 Lista de \002BadRealnames\002 pentru \002%chan%\002 este:"
set black(say.ro.badrealname.8) "\005\[BT\]\005 Pentru afisarea urmatoarelor \002BadRealnames\002 foloseste: \001%char%badrealname list -next\001 (\002%counter%\002 badrealname ramase)"
set black(say.ro.badrealname.9) "\005\[BT\]\005 Pentru afisarea urmatoarelor \002BadRealnames\002 foloseste: \001%char%badrealname %chan% list -next\001 (\002%counter%\002 badrealname ramase)"
set black(say.ro.badrealname.10) "\005\[BT\]\005 Am adaugat in lista de badrealname ca exceptie \001%msg.8%\001 cu nr.\002%msg.1%\002 pentru \002%chan%\002."

################################# BadNick #####################################

set black(say.ro.badnick.1) "Nu ai respectat regulile pe %chan% in privinta NICK-ULUI"
set black(say.ro.badnick.3) "\005\[BT\]\005 *** Sfarsit lista BadNicks ***"
set black(say.ro.badnick.4) "\005\[BT\]\005 Nu exista \002badnick\002 cu nr.\001%msg.1%\001 pentru \002%chan%\002."
set black(say.ro.badnick.5) "\005\[BT\]\005 Am sters \002badnick\002 cu numarul \001%msg.1%\001 pentru \002%chan%\002."
set black(say.ro.badnick.6) "\005\[BT\]\005 Am adaugat in lista de badnick \001%msg.8%\001 cu nr.\002%msg.1%\002 pentru \002%chan%\002."
set black(say.ro.badnick.7) "\005\[BT\]\005 Lista de \002BadNicks\002 pentru \002%chan%\002 este:"
set black(say.ro.badnick.8) "\005\[BT\]\005 Pentru afisarea urmatoarelor \002inregistrari\002 foloseste: \001%char%badnick list -next\001 (\002%counter%\002 inregistrari ramase)"
set black(say.ro.badnick.9) "\005\[BT\]\005 Pentru afisarea urmatoarelor \002inregistrari\002 foloseste: \001%char%badnick %chan% list -next\001 (\002%counter%\002 inregistrari ramase)"
set black(say.ro.badnick.10) "Nick-ul tau contine caractere/cuvinte nepermise, ai \002%time%\002 de secunde sa-l schimbi altfel ai ban.."
set black(say.ro.badnick.11) "\005\[BT\]\005 Am adaugat in lista de badnick ca exceptie \001%msg.8%\001 cu nr.\002%msg.1%\002 pentru \002%chan%\002."

################################ BadIdent #####################################

set black(say.ro.badident.1) "Nu ai respectat regulile pe %chan% in privinta IDENT-ULUI"
set black(say.ro.badident.3) "\005\[BT\]\005 *** Sfarsit lista BadIdents ***"
set black(say.ro.badident.4) "\005\[BT\]\005 Nu exista \002badident\002 cu nr.\001%msg.1%\001 pentru \002%chan%\002."
set black(say.ro.badident.5) "\005\[BT\]\005 Am sters \002badident\002 cu numarul \001%msg.1%\001 pentru \002%chan%\002."
set black(say.ro.badident.6) "\005\[BT\]\005 Am adaugat in lista de badident \001%msg.8%\001 cu nr.\002%msg.1%\002 pentru \002%chan%\002."
set black(say.ro.badident.7) "\005\[BT\]\005 Lista de \002BadIdents\002 pentru \002%chan%\002 este:"
set black(say.ro.badident.8) "\005\[BT\]\005 Pentru afisarea urmatoarelor \002BadIdents\002 foloseste \001%char%badident list -next\001 (\002%counter%\002 badident ramase)"
set black(say.ro.badident.9) "\005\[BT\]\005 Pentru afisarea urmatoarelor \002BadIdents\002 foloseste \001%char%badident %chan% list -next\001 (\002%counter%\002 badident ramase)"
set black(say.ro.badident.10) "\005\[BT\]\005 Am adaugat in lista de badident ca exceptie \001%msg.8%\001 cu nr.\002%msg.1%\002 pentru \002%chan%\002."

################################# AntiJoinFlood #####################################

set black(say.ro.antijoinflood.1) "NU ai respectat regulile pe %chan% in privinta joinflood-ului"
set black(say.ro.antijoinflood.2) "\002Atentie!\002 Am observat un join flood pe \002%chan%\00. Va rog verificati!"

################################# AntiChanFlood #####################################

set black(say.ro.antichanflood.1) "NU ai respectat regulile pe %chan% in privinta flood-ului"
set black(say.ro.antichanflood.2) "Atentie, esti avertizat sa nu mai scrii atat de multe linii deodata pe %chan%"

################################### NickFlood #######################################

set black(say.ro.nickflood.1) "NU ai respectat regulile pe %chan% in privinta flood-ului prin nick"
set black(say.ro.nickflood.2) "Atentie, esti avertizat sa nu mai schimbi atat de des nick-ul pe %chan%"

############################### Repetitive Chars ####################################

set black(say.ro.repetitivechars.1) "NU ai respectat regulile pe %chan% in privinta repetarii de caractere."
set black(say.ro.repetitivechars.2) "Atentie, esti avertizat sa nu te mai repeti in ceea ce priveste caracterele pe %chan%"

################################### NickFlood #######################################

set black(say.ro.noproxy.1) "Ip-urile de tip PROXY nu sunt acceptate aici. ISP: \002%isp%\002"

#############################################################################################################################
#                                                                                                                           #
#                                                        MODULE                                                             #
#                                                                                                                           #
#############################################################################################################################

################################## SecureMode ##################################

set black(say.ro.securemode.1) {
"\002ATENTIE:\002 ai incercat sa intri pe \001%chan%\001, dar canalul este in \002lockdown\002 (\002+mD\002). Pentru a ti se permite sa intri tasteaza: \001/msg %botnick% check %chan% %msg.1%\001 sa dovedesti ca nu esti un robot. Daca te incurci nu se va intampla nimic."
"\002ATENTIE:\002 Bine ai venit pe \001%chan%\001. Pentru a ti se permite sa intri, deoarece canalul este in \002lockdown\002 (\002+mD\002), tasteaza: \001/msg %botnick% check %chan% %msg.1%\001 sa dovedesti ca nu esti un robot. Daca te incurci nu se va intampla nimic."
"\002ATENTIE:\002 canalul este in \002lockdown\002 (\002+mD\002) si pentru a ti se permite sa intri si sa dovedesti ca nu esti un robot, tasteaza: \001/msg %botnick% check %chan% %msg.1%\001."
}

set black(say.ro.securemode.2) "\002%msg.1%\002: sa ai un chat placut! Ne pare rau pentru dificultatile intampinate!"
set black(say.ro.securemode.3) "\005\[BT\]\005 *** Sfarsit lista exceptii ***"
set black(say.ro.securemode.4) "\005\[BT\]\005 Nu exista \002exceptia\002 SecureMode cu nr.\001%msg.1%\002 pentru \002%chan%\002."
set black(say.ro.securemode.5) "\005\[BT\]\005 Am sters \002exceptia\002 SecureMode cu numarul \001%msg.1%\002 pentru \002%chan%\002."
set black(say.ro.securemode.6) "\005\[BT\]\005 Am adaugat in lista de exceptii \001%msg.8%\001 cu nr.\002%msg.1%\002 pentru \002%chan%\002."
set black(say.ro.securemode.7) "\005\[BT\]\005 Lista de \002exceptii\002 SecureMode pentru \002%chan%\002 este:"
set black(say.ro.securemode.8) "\005\[BT\]\005 Pentru afisarea urmatoarelor exceptii foloseste: \001%char%securemode list -next\001 (\002%counter%\002 exceptii ramase)"
set black(say.ro.securemode.9) "\005\[BT\]\005 Pentru afisarea urmatoarelor exceptii foloseste: \001%char%securemode %chan% list -next\001 (\002%counter%\002 exceptii ramase)"
set black(say.ro.securemode.10) "Modul secure: activat."
set black(say.ro.securemode.11) "Modul secure: dezactivat."

################################## VoiceMe #####################################

set black(say.ro.voiceme.1) "Canalul este \002moderat(+m)\002. Pentru a putea discuta pe \002%chan%\002 trebuie sa folositi: \001/msg %botnick% voiceme %chan%\001. Comanda necesita sa fiti \002inregistrat si logat la X\002. Daca nu aveti un username Cservice, accesati \002https://www.cservice.undernet.org/live/\002 pentru a crea unul."
set black(say.ro.voiceme.2) "Canalul nu mai \002este moderat(+m)\002. Chat placut in continuare!"
set black(say.ro.voiceme.3) "Bravo! Ai primit \001voice(+v)\001 pe \002%chan%\002. Chat placut! :)"
set black(say.ro.voiceme.4) "Ai deja \001voice(+v)\001 pe \002%chan%\002."
set black(say.ro.voiceme.5) "Pentru a dovedi ca nu esti un robot tasteaza: \002/msg %botnick% voiceme %chan% %msg%\002"
set black(say.ro.voiceme.6) "Canalul este \002moderat(+m)\002. Pentru a putea discuta pe \002%chan%\002 trebuie sa folositi: \001/msg %botnick% voiceme %chan%\001. Enjoy!"

################################# TopWords #####################################

set black(say.ro.topwords.1) "\002TopWords\002 Total: \001%msg%\001"
set black(say.ro.topwords.2) "\002TopWords\002 Azi: \001%msg%\001"
set black(say.ro.topwords.3) "TopWords Azi: (\001%msg.1%\001) Host: \001%msg.2%\001 Cuvinte: \002%msg.3%\002 Linii: \002%msg.4%\002 Litere: \002%msg.12%\002 Zambete: \002%msg.13%\002 Actiuni: \002%msg.15%\002 Intrebari: \002%msg.17%\002 (Locul \002%msg.19%\002/\002%msg.21%\002 useri)."
set black(say.ro.topwords.4) "\005\[BT\]\005 Nu exista informatii despre \002%msg.1%\002"
set black(say.ro.topwords.7) "\005\[BT\]\005 Nu sunt persoane in top pe \002%chan%\002"
set black(say.ro.topwords.8) "\005\[BT\]\005 Am resetat \002TopWords\002 pe \002%chan%\002"
set black(say.ro.topwords.9) "(Pentru urmatoarele clasari, tastati: \002%char%topwords -next\002)"
set black(say.ro.topwords.10) "\005\[BT\]\005 Nu exista inregistrari de \002TopWords\002 pentru \002%chan%\002"
set black(say.ro.topwords.11) "(Pentru urmatoarele clasari, tastati: \002%char%topwords total -next\002)"
set black(say.ro.topwords.12) "(Pentru urmatoarele clasari, tastati: \002%char%topwords\002 %chan% total -next\002)"
set black(say.ro.topwords.13) "(Pentru urmatoarele clasari, tastati: \002%char%topwords %chan% -next\002)"
set black(say.ro.topwords.14) "\005\[BT\]\005 Nu sunt persoane in top pe \002%chan%\002 in aceasta zi."
set black(say.ro.topwords.15) "\005\[BT\]\005 Am adaugat \001%msg.1%\001 ca exceptie pentru \002TopWords\002 pe \002%chan%\002"
set black(say.ro.topwords.16) "\005\[BT\]\005 Am adaugat \001%msg.1%\001 cu host \002%msg.2%\002 ca exceptie pentru \002TopWords\002 pe \002%chan%\002"
set black(say.ro.topwords.17) "\005\[BT\]\005 \002%msg.1%\002 este deja adaugat ca exceptie pentru \002TopWords\002"
set black(say.ro.topwords.18) "\005\[BT\]\005 Lista de exceptii la \002TopWords\002 pe \002%chan%\002 este :"
set black(say.ro.topwords.19) "%msg%"
set black(say.ro.topwords.20) "\005\[BT\]\005 \001%msg.1%\001 nu este adaugat ca exceptie la \002TopWords\002."
set black(say.ro.topwords.21) "\005\[BT\]\005 \001%msg.1%\001 a fost sters din lista de exceptii la \002TopWords\002."
set black(say.ro.topwords.22) "TopWords Total: (\001%msg.1%\001) Host: \001%msg.2%\001 Cuvinte: \002%msg.3%\002 Linii: \002%msg.4%\002 Litere: \002%msg.12%\002 Zambete: \002%msg.13%\002 Actiuni: \002%msg.15%\002 Intrebari: \002%msg.17%\002 (Locul \002%msg.19%\002/\002%msg.21%\002 useri)."
set black(say.ro.topwords.23) "\005\[BT\]\005 Nu sunt persoane in top pe \002%chan%\002 in aceasta saptamana."
set black(say.ro.topwords.24) "\002TopWords\002 Aceasta Saptamana: \001%msg%\001"
set black(say.ro.topwords.25) "(Pentru urmatoarele clasari, tastati: \002%char%topwords\002 %chan% week -next\002)"
set black(say.ro.topwords.26) "(Pentru urmatoarele clasari, tastati: \002%char%topwords week -next\002)" 
set black(say.ro.topwords.27) "\005\[BT\]\005 Nu am gasit inregistrari legate de \002%msg.1%\002, cred ca nu a vorbit ;("
set black(say.ro.topwords.28) "TopWords Aceasta Saptamana: (\001%msg.1%\001) Host: \001%msg.2%\001 Cuvinte: \002%msg.3%\002 Linii: \002%msg.4%\002 Litere: \002%msg.12%\002 Zambete: \002%msg.13%\002 Actiuni: \002%msg.15%\002 Intrebari: \002%msg.17%\002 (Locul \002%msg.19%\002/\002%msg.21%\002 useri)."
set black(say.ro.topwords.29) "\005\[BT\]\005 Am resetat topwords pentru \001%msg.1%\001 de pe \002%chan%\002."

################################ BackChan ###################################

set black(say.ro.reportchan) "\005\[BT\]\005 Am adaugat ban pe \002%chan%\002 pe hostul \001%banmask%\001 cu motivul: \002%reason%\002. Expira in: \001%bantime%\001."
set black(say.ro.reportchan.1) "\005\[BT\]\005 \[\002%nick%\002\] a adaugat ban pe \002%chan%\002 pe hostul \001%banmask%\001 cu motivul: %reason%. Expira in: \001%bantime%\001."
set black(say.ro.backchan.1) "\005\[BT\]\005 \001%msg.1%\001 a fost gasit in lista de banuri pe \002%chan%\002 cu host-ul \002%msg.2%\002"
set black(say.ro.reportchan.2) "\005\[BT\]\005 \[\002%nick%\002\] a adaugat Gag pe \002%chan%\002 pe hostul \001%banmask%\001 cu motivul: \002%reason%\002. Expira in: \001%bantime%\001."
set black(say.ro.reportchan.3) "\005\[BT\]\005 \[\002%nick%\002\] a scos \001%msg.1%\001 banuri (%msg.2% gasite) de pe \002%chan%\002 legat de %msg.3%"
set black(say.ro.reportchan.4) "\005\[BT\]\005 \[\002%nick%\002\] a scos Gag de pe \002%chan%\002 de la hostul \001%banmask%\001"

################################ CloneScan ###################################

set black(say.ro.clonescan.1) "Conexiuni excesive de la \[*@%clone%\]. Clonele sunt interzise pe %chan%!"
set black(say.ro.clonescan.2) "\005\[BT\]\005 Nu am gasit clone pe %chan%."
set black(say.ro.clonescan.3) "\005\[BT\]\005 *** Sfarsit lista exceptii ***"
set black(say.ro.clonescan.4) "\005\[BT\]\005 Nu exista \002exceptia\002 CloneScan cu nr.\002%msg.1%\001 pentru \002%chan%\002."
set black(say.ro.clonescan.5) "\005\[BT\]\005 Am sters \002exceptia\002 CloneScan cu numarul \001%msg.1%\001 pentru \002%chan%\002."
set black(say.ro.clonescan.6) "\005\[BT\]\005 Am adaugat in lista de exceptii \002%msg.8%\002 cu nr.\001%msg.1%\001 pentru \002%chan%\002."
set black(say.ro.clonescan.7) "\005\[BT\]\005 Lista de \002exceptii\002 CloneScan pentru \002%chan%\002 este:"
set black(say.ro.clonescan.8) "\005\[BT\]\005 Pentru afisarea urmatoarelor exceptii foloseste: \001%char%clonescan list -next\001 (\004%counter%\004 exceptii ramase)"
set black(say.ro.clonescan.9) "\005\[BT\]\005 Pentru afisarea urmatoarelor exceptii foloseste: \001%char%clonescan %chan% list -next\001 (\004%counter%\004 exceptii ramase)"
set black(say.ro.clonescan.10) "\005\[BT\]\005 Am gasit \001%msg.1%\001 clone pe \002%chan%\002 de la host-ul \002%msg.2%\002. Acestea sunt: \002%msg.7%\002"
set black(say.ro.clonescan.11) "\005\[BT\]\005 Scanez de clone pe \002%chan%\002.."

################################# Private ######################################

set black(say.ro.private.1) "Canal \002Privat\002"
set black(say.ro.private.5) "%msg%"
set black(say.ro.private.6) "\005\[BT\]\005 \001%msg.1%\001 nu este adaugat ca exceptie."
set black(say.ro.private.7) "\005\[BT\]\005 \001%msg.1%\001 este deja in baza mea de date. Il adaug ca exceptie pe \002%chan%\002"
set black(say.ro.private.8) "\005\[BT\]\005 Am adaugat \001%msg.1%\001 cu host \002%msg.2%\002 ca exceptie la private pe \002%chan%\002"
set black(say.ro.private.9) "\005\[BT\]\005 Am sters \001%msg.1%\001 din lista de exceptii pe \002%chan%\002"
set black(say.ro.private.10) "\005\[BT\]\005 \001%msg.1%\001 este adaugat deja ca exceptie pe \002%chan%\002"
set black(say.ro.private.11) "\005\[BT\]\005 Userii exceptati de la private pe \002%chan%\002 sunt:"

################################# BadChan ######################################

set black(say.ro.badchan.1) "\005\[BT\]\005 \001%msg.1%\002 exista deja in lista de badchans a canalului \002%chan%\002."
set black(say.ro.badchan.2) "\005\[BT\]\005 Pentru a afisa urmatoarele badchan foloseste: \001%char%badchan list global -next\001 (\002%counter%\002 badchan-uri ramase)"
set black(say.ro.badchan.3) "\005\[BT\]\005 Pentru a afisa urmatoarele badchan foloseste: \001%char%badchan list -next\001 (\002%counter%\002 badchan-uri ramase)"
set black(say.ro.badchan.4) "\005\[BT\]\005 Sfarsit lista badchan."
set black(say.ro.badchan.5) "Ai fost gasit pe unul sau mai multe canale aflate in blacklist"
set black(say.ro.badchan.6) "\005\[BT\]\005 Ai activat modulul de \002BadChan\002 pe \002%chan%\002."
set black(say.ro.badchan.8) "\005\[BT\]\005 Ai dezactivat modulul de \002BadChan\002 pe \002%chan%\002."
set black(say.ro.badchan.11) "\005\[BT\]\005 Am adaugat canalul \001%msg.1%\001 cu nr. \002%msg.2%\002 in lista de \002badchan\002 GLOBALA"
set black(say.ro.badchan.12) "\005\[BT\]\005 Am adaugat canalul \001%msg.1%\001 cu nr. \002%msg.2%\002 in lista de \002badchan\002 a canalului \002%chan%\002"
set black(say.ro.badchan.14) "\005\[BT\]\005 Lista de \002BADCHAN\002 pentru \002%chan%\002 este:"
set black(say.ro.badchan.15) "\005\[BT\]\005 Lista de \002BADCHAN\002 GLOBALA este:"
set black(say.ro.badchan.16) "\004%msg.1%\004) %msg.2%"
set black(say.ro.badchan.17) "\005\[BT\]\005 Nu am gasit badchan-ul cu numarul \002%msg.1%\002 in lista"
set black(say.ro.badchan.18) "\005\[BT\]\005 Am sters badchan-ul cu numarul \001%msg.1%\001 din lista canalului \002%chan%\002."
set black(say.ro.badchan.19) "\005\[BT\]\005 Am sters badchan-ul cu numarul \002%msg.1%\002 din lista GLOBALA."
set black(say.ro.badchan.39) "Ai primit ban pe \002%chan%\002 deoarece ai fost gasit pe unul sau mai multe canale interzise."
set black(say.ro.badchan.40) "\002ATENTIE!\002 Ai fost gasit pe canale interzise. Ai la dispozitie %time% secunde sa dai \001/part\001 la: \002%badchans%\002, in caz contrar vei primi ban. Multumesc!"
set black(say.ro.badchan.41) "\005\[BT\]\005 Pentru a afisa urmatoarele badchan foloseste: \001%char%badchan %chan% list -next\001 (\002%counter%\002 badchan-uri ramase)"
set black(say.ro.badchan.42) "\005\[BT\]\005 Canalul \002%msg.1%\002 este deja in lista de badchan GLOBALA"
set black(say.ro.badchan.43) "\005\[BT\]\005 Modulul de \002BadChan\002 este deja activ."
set black(say.ro.badchan.44) "\005\[BT\]\005 \[ALERTA\] ( \002%nick%\002 ) gasit pe canalele interzise: ( \001%chans%\001 )"
set black(say.ro.badchan.45) "\005\[BT\]\005 Am adaugat canalul \001%msg.1%\001 ca exceptie cu nr. \002%msg.2%\002 in lista de \002badchan\002 a canalului \002%chan%\002"
set black(say.ro.badchan.46) "\002regex\002"
set black(say.ro.badchan.47) "\005\[BT\]\005 Am adaugat REGEX \001%msg.1%\001 cu nr. \002%msg.2%\002 in lista de \002badchan\002 GLOBALA"
set black(say.ro.badchan.48) "\005\[BT\]\005 Am adaugat REGEX \001%msg.1%\001 cu nr. \002%msg.2%\002 in lista de \002badchan\002 a canalului \002%chan%\002"

################################# AntiTaKe ######################################

set black(say.ro.antitake.1) "\005\[BT\]\005 Nu poti da \002DEOP\002 deoarece nu te afli in baza mea de date de access."
set black(say.ro.antitake.2) "\005\[BT\]\005 Nu poti da \002OP\002 deoarece nu te afli in baza mea de date de access."

################################# Anunt ######################################

set black(say.ro.anunt.1) "%msg%"
set black(say.ro.anunt.2) "\005\[BT\]\005 *** Sfarsit lista anunturi ***"
set black(say.ro.anunt.3) "\005\[BT\]\005 Ai activat modulul de anunt pe \002%chan%\002."
set black(say.ro.anunt.4) "\005\[BT\]\005Am dezactivat modulul de anunt pe \002%chan%\002."
set black(say.ro.anunt.5) "\005\[BT\]\005 Am adaugat, cu nr.\001%msg.1%\001 pentru \002%chan%\002, urmatorul anunt:"
set black(say.ro.anunt.6) "\004%msg.1%\004) %msg.8%"
set black(say.ro.anunt.7) "\005\[BT\]\005 Nu sunt anunturi pentru \002%chan%\002"
set black(say.ro.anunt.8) "\005\[BT\]\005 Lista de anunturi pentru \002%chan%\002 este:"
set black(say.ro.anunt.9) "\005\[BT\]\005 Pentru a afisa urmatoarele anunturi foloseste: \001%char%anunt list -next\001 (\002%counter%\002 anunturi ramase)"
set black(say.ro.anunt.10) "\005\[BT\]\005 Am sters anuntul cu numarul \002%msg.1%\002 pentru %chan%."
set black(say.ro.anunt.13) "\005\[BT\]\005 Nu exista anuntul cu numarul \002%msg.1%\002 pentru \002%chan%\002"
set black(say.ro.anunt.14) "\005\[BT\]\005 Pentru a afisa urmatoarele anunturi foloseste: \001%char%anunt %chan% list -next\001 (\002%counter%\002 anunturi ramase)"

################################# AutoBroadcast ######################################

set black(say.ro.autobroadcast.1) "%msg%"
set black(say.ro.autobroadcast.2) "\005\[BT\]\005 Nu exista broadcast-ul cu numarul \002%msg.1%\002"
set black(say.ro.autobroadcast.3) "\005\[BT\]\005 Modulul de \002AutoBroadcast\002 este activat deja."
set black(say.ro.autobroadcast.4) "\005\[BT\]\005 Am activat modulul de AutoBroadcast"
set black(say.ro.autobroadcast.5) "\005\[BT\]\005 Am dezactivat modulul de AutoBroadcast"
set black(say.ro.autobroadcast.6) "\005\[BT\]\005 Am adaugat broadcast-ul cu nr. \002%msg.1%\002 in baza de date."
set black(say.ro.autobroadcast.7) "\004%msg.1%\004) %msg.8%"
set black(say.ro.autobroadcast.8) "\005\[BT\]\005 Nu sunt broadcast-uri in lista"
set black(say.ro.autobroadcast.9) "\005\[BT\]\005 Lista de broadcast-uri este urmatoarea:"
set black(say.ro.autobroadcast.10) "\005\[BT\]\005 *** Sfarsit lista AutoBroadcast ***"
set black(say.ro.autobroadcast.11) "\005\[BT\]\005 Am sters broadcast-ul cu numarul \002%msg.1%\002"
set black(say.ro.autobroadcast.12) "\005\[BT\]\005 Pentru a afisa urmatoarele broadcast-uri foloseste: \001%char%bt list -next\001 (\002%counter%\002 broadcast-uri ramase)"

################################# Limit ######################################

set black(say.ro.limit.5) "\005\[BT\]\005 Am activat modulul de \001Limit\001 pe \002%chan%\002."
set black(say.ro.limit.6) "\005\[BT\]\005 Am setat limita \002%msg.1%\002 (standard)."
set black(say.ro.limit.7) "\005\[BT\]\005 Am dezactivat modulul de \001Limit\001 pe \002%chan%\002."
set black(say.ro.limit.9) "\005\[BT\]\005 Nu poti seta limita mai mica de \0022\002."
set black(say.ro.limit.10) "\005\[BT\]\005 Setez limita \002+2.\002"
set black(say.ro.limit.11) "\005\[BT\]\005 Nu poti seta limita mai mare de \002500\002."
set black(say.ro.limit.12) "\005\[BT\]\005 Am setat limita la \002%msg.1%\002"

################################# Topic ######################################

set black(say.ro.topic.1) "\005\[BT\]\005 Topic pentru \002%chan%\002: \001%msg%\001"
set black(say.ro.topic.2) "\005\[BT\]\005 Topic-ul nu poate fi setat deoarece e gol."
set black(say.ro.topic.3) "\005\[BT\]\005 Setez ca topic pentru \002%chan%\002: \001%msg%\001 (topic-ul curent)"
set black(say.ro.topic.4) "\005\[BT\]\005 Resetez topic pentru \002%chan%\002."

####################################### Seen ######################################

set black(say.ro.seen.4) "\005\[BT\]\005 \002%msg.1%\002 sunt chiar aici :P"
set black(say.ro.seen.5) "\005\[BT\]\005 Asteapta\002 1 minut\002 pentru a putea cauta cu \001%char%seen\001."
set black(say.ro.seen.6) "\005\[BT\]\005 %msg.1% uite-te in oglinda"
set black(say.ro.seen.7) "\005\[BT\]\005 %msg.1% este pe %chan% deja"
set black(say.ro.seen.8) "nu stiu exact cat a stat."
set black(say.ro.seen.9) "dupa ce a stat %staytime% pe %chan%."
set black(say.ro.seen.10) " %newnick% este inca pe %chan%."
set black(say.ro.seen.11) " Nu il vad pe %newnick% momentan pe %chan%"
set black(say.ro.seen.12) "\005\[BT\]\005 %entry% (%host%) a iesit de pe %chan% acum %output% %date% zicand: \"%reason%\", %staymsg%"
set black(say.ro.seen.13) "\005\[BT\]\005 %entry% (%host%) a iesit de pe IRC acum %output% %date% zicand: \"%reason%\", %staymsg%"
set black(say.ro.seen.14) "\005\[BT\]\005 %entry% (%host%) a intrat pe %chan% acum %output% %date%.%nowon%"
set black(say.ro.seen.15) "\005\[BT\]\005 %entry% (%host%)  a iesit in *.net *.split acum %output% %date%, %staymsg%"
set black(say.ro.seen.16) "\005\[BT\]\005 %entry% (%host%) a fost dat(a) afara de pe %chan% acum \002%output%\002 %date% cu motivul: \"%reason%\", %staymsg%"
set black(say.ro.seen.17) "\005\[BT\]\005 %entry% (%host%) si-a schimbat nick-ul in %newnick% acum %output% %date%. %nowon%"
set black(say.ro.seen.18) "\005\[BT\]\005 Nu exista informatii despre \002%msg.1%\002"
set black(say.ro.seen.19) " \002%latest%\002 este inca pe %chan%."
set black(say.ro.seen.20) " Nu il vad pe \002%latest%\002 momentan pe %chan%"
set black(say.ro.seen.21) "\005\[BT\]\005 Am gasit (%num%) rezultate \"%entry%\". Cel mai recent \002%latest%\002 (%host%) a iesit de pe %chan% acum %output% %date% zicand: \"%reason%\", %staymsg%"
set black(say.ro.seen.22) "\005\[BT\]\005 Am gasit (%num%) rezultate \"%entry%\". Cel mai recent \002%latest%\002 (%host%) a iesit de pe IRC acum %output% %date% zicand: \"%reason%\", %staymsg%"
set black(say.ro.seen.23) "\005\[BT\]\005 Am gasit (%num%) rezultate \"%entry%\". Cel mai recent \002%latest%\002 (%host%) a intrat pe %chan% acum %output% %date%.%nowon%"
set black(say.ro.seen.24) "\005\[BT\]\005 Am gasit (%num%) rezultate \"%entry%\". Cel mai recent \002%latest%\002 (%host%) a iesit in *.net *.split acum %output% %date%, %staymsg%"
set black(say.ro.seen.25) "\005\[BT\]\005 Am gasit (%num%) rezultate \"%entry%\". Cel mai recent \002%latest%\002 (%host%) a fost dat(a) afara de pe %chan% acum %output% %date% cu motivul: \"%reason%\", %staymsg%"
set black(say.ro.seen.26) "\005\[BT\]\005 Am gasit (%num%) rezultate \"%entry%\". Cel mai recent \002%latest%\002 (%host%) si-a schimbat nick-ul in %newnick% acum %output% %date%. %nowon%"
set black(say.ro.seen.27) "%msg%"
set black(say.ro.seen.28) "\005\[BT\]\005 Am gasit mai mult de (%msg.1%) rezultate"
set black(say.ro.seen.29) "\005\[BT\]\005 %entry% (%host%) a fost vazut ultima pe %chan%. %nowon%"
set black(say.ro.seen.30) "\005\[BT\]\005 Am gasit (%num%) rezultate \"%entry%\". Cel mai recent \002%latest%\002 (%host%) a fost vazut ultima oara pe %chan%.%nowon%"
set black(say.ro.seen.31) "\005\[BT\]\005 Din ce-mi aduc aminte, \002%userentry%\002 nu a zis nimic."
set black(say.ro.seen.32) "\005\[BT\]\005 Din ce-mi aduc aminte, cu %output% in urma, \002%userentry%\002 (%host%) a zis ultima data pe %chan%: \"%lastmsg%\""
set black(say.ro.seen.33) "\005\[BT\]\005 Am gasit mai mult de (%num%) rezultate. Cel mai recent \002%latest%\002 (%host%) a iesit de pe %chan% acum %output% %date% zicand: \"%reason%\", %staymsg%"
set black(say.ro.seen.34) "\005\[BT\]\005 Am gasit mai mult de (%num%) rezultate. Cel mai recent \002%latest%\002 (%host%) a iesit de pe IRC acum %output% %date% zicand: \"%reason%\", %staymsg%"
set black(say.ro.seen.35) "\005\[BT\]\005 Am gasit mai mult de (%num%) rezultate. Cel mai recent \002%latest%\002 (%host%) a intrat pe %chan% acum %output% %date%.%nowon%"
set black(say.ro.seen.36) "\005\[BT\]\005 Am gasit mai mult de (%num%) rezultate. Cel mai recent \002%latest%\002 (%host%) a iesit in *.net *.split acum %output% %date%, %staymsg%"
set black(say.ro.seen.37) "\005\[BT\]\005 Am gasit mai mult de (%num%) rezultate. Cel mai recent \002%latest%\002 (%host%) a fost dat(a) afara de pe %chan% acum %output% %date% cu motivul: \"%reason%\", %staymsg%"
set black(say.ro.seen.38) "\005\[BT\]\005 Am gasit mai mult de (%num%) rezultate. Cel mai recent \002%latest%\002 (%host%) si-a schimbat nick-ul in %newnick% acum %output% %date%. %nowon%"
set black(say.ro.seen.39) "\005\[BT\]\005 Salut \002%msg.1%\002, ar trebui sa stii ca \001%msg.2%\001 te-a cautat cu \002seen\002 pe \002%chan%\002 in data de \002%msg.3%\002."
set black(say.ro.seen.40) "\005\[BT\]\005 Am gasit mai mult de (%num%) rezultate. Cel mai recent \002%latest%\002 (%host%) a fost vazut ultima oara pe %chan%.%nowon%"
set black(say.ro.seen.41) "\005\[BT\]\005 Am gasit mai mult de (100) rezultate. Te rog restructureaza cautarea."

################################# Greet ######################################

set black(say.ro.greet.1) "\005\[BT\]\005 Am setat greet pentru \002%chan%\002: \001%msg%\001"
set black(say.ro.greet.2) "\005\[BT\]\005 Am activat \001Greet\001 pe \002%chan%\002."
set black(say.ro.greet.3) "\005\[BT\]\005 Am dezactivat \001Greet\001 pe \002%chan%\002."

################################# Leave #######################################

set black(say.ro.leave.1) "\005\[BT\]\005 Am setat leave pentru \002%chan%\002: \001%msg%\001"
set black(say.ro.leave.2) "\005\[BT\]\005 Am activat \001Leave\001 pe \002%chan%\002."
set black(say.ro.leave.3) "\005\[BT\]\005 Am dezactivat \001Leave\001 pe \002%chan%\002."

################################# Idle ######################################

set black(say.ro.idle.11) "\005\[BT\]\005 Am activat \001Idle OP\001 pe \002%chan%\002."
set black(say.ro.idle.12) "\005\[BT\]\005 Am dezactivat \001Idle OP\001 pe \002%chan%\002."
set black(say.ro.idle.14) "\005\[BT\]\005 Am activat \001Idle VOICE\001 pe \002%chan%\002."
set black(say.ro.idle.15) "\005\[BT\]\005 Am dezactivat \002Idle VOICE\002 pe \002%chan%\002."
set black(say.ro.idle.17) "\005\[BT\]\005 \001%msg.1%\001 nu este pe \002%chan%\002."
set black(say.ro.idle.18) "\005\[BT\]\005 Am adaugat \001%msg.1%\001 ca exceptie pentru \002AntiIdle\002 pe \002%chan%\002."
set black(say.ro.idle.19) "\005\[BT\]\005 Am adaugat ca exceptie pe \001%msg.1%\001 cu host \002%msg.2%\002 pentru \001AntiIdle\001 pe \002%chan%\002."
set black(say.ro.idle.20) "\005\[BT\]\005 Lista de exceptie la \001AntiIdle\001 pe \002%chan%\002 este:"
set black(say.ro.idle.21) "%msg%"
set black(say.ro.idle.22) "\005\[BT\]\005 \002%msg.1%\002 nu exista in memoria mea."
set black(say.ro.idle.23) "\005\[BT\]\005 \001%msg.1%\001 nu este adaugat ca exceptie la \002AntiIdle\002."
set black(say.ro.idle.24) "\005\[BT\]\005 \001%msg.1%\001 a fost sters din lista de exceptii la \002AntiIdle\002."
set black(say.ro.idle.25) "\005\[BT\]\005 Am activat \001Idle HalfOP\001 pe \002%chan%\002."
set black(say.ro.idle.26) "\005\[BT\]\005 Am dezactivat \001Idle HalfOP\001 pe \002%chan%\002."

################################# TCL ######################################

set black(say.ro.tcl.3) "Nu am putut incarca scriptul: \001%msg.1%\001. Motiv: \002%msg.8%\002"
set black(say.ro.tcl.4) "\005\[BT\]\005 Scriptul \002%msg.1%\002 este deja incarcat."
set black(say.ro.tcl.5) "\005\[BT\]\005 Scriptul \002%msg.1%\002 a fost incarcat cu success."
set black(say.ro.tcl.7) "\005\[BT\]\005 Scriptul \002%msg.1%\002 nu este incarcat."
set black(say.ro.tcl.8) "\005\[BT\]\005 Am dezactivat scriptul \002%msg.1%\002."
set black(say.ro.tcl.12) "\005\[BT\]\005 \001%msg.1%\001 \002nu\002 exista in scripts."
set black(say.ro.tcl.13) "\005\[BT\]\005 \001%msg.1%\001 exista dar \002nu este\002 incarcat"
set black(say.ro.tcl.14) "\005\[BT\]\005 \001%msg.1%\001 exista si \002este\002 incarcat"
set black(say.ro.tcl.17) "%msg%."
set black(say.ro.tcl.18) "\005\[BT\]\005 Eroare. Nu poti da \002unload\002 la acest script!"
set black(say.ro.tcl.19) "\005\[BT\]\005 Eroare. \002Nu\002 am putut descarca scriptul \001%msg.1%\001 de pe link-ul dat."
set black(say.ro.tcl.20) "\005\[BT\]\005 Descarcare finalizata. Pentru a incarca scriptul foloseste: \001%char%tcl load\001 \002%msg.1%\002"
set black(say.ro.tcl.21) "\005\[BT\]\005 Scriptul \002%msg.1%\002 este descarcat deja."
set black(say.ro.tcl.2) "\005\[BT\]\005 *** Sfarsit lista tcl ***"
set black(say.ro.tcl.9) "\005\[BT\]\005 Pentru a afisa urmatoarele tcl-uri foloseste: \001%char%tcl list -next\001 (\002%counter%\002 tcl-uri ramase)"
set black(say.ro.tcl.10) "\005\[BT\]\005 Lista de \002TCL-uri\002 (cele cu BOLD sunt incarcate) este:"

#################################### Next #####################################

set black(say.ro.next.1) "Bine ai venit \002%nick%\002, te rog sa astepti... De indata ce un helper va fi liber, vei primi voice. Te rog sa nu deranjezi userii cu \002+v/+o\002 prin mesaje! Esti numarul \002%counter%\002 la rand. Multumesc!"
set black(say.ro.next.2) "Ai fost preluat de catre \001%nick%\001. Te rog sa spui problema intr-o \002singura linie\002 si \002sa astepti\002 raspuns din partea helper-ului desemnat tie!"
set black(say.ro.next.3) "\005\[BT\]\005 \002%msg.1%\002 a asteptat timp de \002%msg.set%\002, te rog ocupa-te de el acum :)"
set black(say.ro.next.4) "\002%current%\002 acum ca ai fost ajutat te rog sa dai \002/part\002. Daca mai ai alte intrebari, te rog \002/hop %chan%\002. Multumesc!"
set black(say.ro.next.5) "Nu ai voie sa faci idle aici! Te rog sa revii pe %chan% atunci cand ai nevoie de ajutor"
set black(say.ro.next.6) "\005\[BT\]\005 ATENTIE: %nick% are nevoie de ajutor pe %chan%. Acesta este numarul \002%counter%\002 la rand."
set black(say.ro.next.7) "\005\[BT\]\005 Lista celor care asteapta ajutor este:"
set black(say.ro.next.8) "\005\[BT\]\005 Nimeni nu are nevoie de ajutor �n acest moment."
set black(say.ro.next.9) "%msg%"
set black(say.ro.next.11) "\005\[BT\]\005 Atentie: \002%current%\002 a fost preluat de \002%nick%\002 (\001%hand%\001)."
set black(say.ro.next.13) "\005\[BT\]\005 Eroare! \002%msg.1%\002 este in lista de help, dar nu a fost ajutat inca."
set black(say.ro.next.14) "\005\[BT\]\005 Eroare! \002%msg.1%\002 nu se afla in lista de help."
set black(say.ro.next.15) "\005\[BT\]\005 ATENTIE: %current% a primit \002helped\002 de la \002%nick%\002 (\001%hand%\001)."
set black(say.ro.next.17) "\005\[BT\]\005 Eroare! Trebuie mai intai ca \001%msg.1%\001 sa primeasca \002helped %msg.1%\002."
set black(say.ro.next.19) "\005\[BT\]\005 \002%msg.1%\002 a fost sarit (acum este ultimul).."

#################################### Quote #####################################

set black(say.ro.quote.1) "\005\[BT\]\005 Am adaugat \002quote\002 cu nr. \001%msg.1%\001 in baza de date."
set black(say.ro.quote.2) "\005\[BT\]\005 *** Sfarsit lista quotes ***"
set black(say.ro.quote.3) "\005\[BT\]\005 Quote #%msg.1%: %msg.8%"
set black(say.ro.quote.4) "\005\[BT\]\005 %msg.1% :: \001%msg.2%\001 ::"
set black(say.ro.quote.6) "\004%msg.1%\004) %msg.8%"
set black(say.ro.quote.7) "\005\[BT\]\005 Nu sunt quotes pentru \002%chan%\002"
set black(say.ro.quote.8) "\005\[BT\]\005 Lista de \001quote\001 pentru \002%chan%\002 este:"
set black(say.ro.quote.9) "\005\[BT\]\005 Pentru a afisa urmatoarele \002quotes\002 foloseste: \001%char%q list -next\001 (\002%counter%\002 quotes ramase)"
set black(say.ro.quote.10) "\005\[BT\]\005 Am sters \002quote\002 cu numarul \001%msg.1%\001 pentru \002%chan%\002."
set black(say.ro.quote.11) "\005\[BT\]\005 Nu am gasit \002quote\002."
set black(say.ro.quote.12) "\002\[Quote-ul zilei\]\002"
set black(say.ro.quote.13) "\005\[BT\]\005 Nu exista \002quote\002 cu numarul \001%msg.1%\001 pentru \002%chan%\002"
set black(say.ro.quote.14) "\005\[BT\]\005 Pentru a afisa urmatoarele \002quotes\002 foloseste: \001%char%q %chan% list -next\001 (\002%counter%\002 quotes ramase)"
set black(say.ro.quote.15) "\002Adaugat de\002 :"
set black(say.ro.quote.16) "%msg%"
set black(say.ro.quote.17) "\005\[BT\]\005 \002Quote\002 #%msg.1%: \001%msg.set%\001"
set black(say.ro.quote.18) "\005\[BT\]\005 Alte numere de \002quote\002: \001%msg%\001"
set black(say.ro.quote.19) "\005\[BT\]\005 \002Quote\002: \001%msg%\001"
set black(say.ro.quote.20) "Creat la data:"

#################################### Notes #####################################

set black(say.ro.notes.1) "\005\[BT\]\005 Am salvat \002note\002 cu nr. \001%msg.1%\001 in baza ta de date."
set black(say.ro.notes.2) "\005\[BT\]\005 Note trimis catre \002%msg.1%\002/%msg.2% usere."
set black(say.ro.notes.3) "\005\[BT\]\005 Note trimis catre \002%msg.1%\002/%msg.2% usere. Usere invalide: \001%msg.7%\001"
set black(say.ro.notes.4) "\005\[BT\]\005 EROARE! Nu exista note cu numarul #\002%msg.1%\002."
set black(say.ro.notes.5) "\005\[BT\]\005 \002Note\002 #%msg.1%: \002Locatie\002: \001%msg.2%\001 ; \002Data adaugarii\002: \001%msg.3%\001"
set black(say.ro.notes.6) "\005\[BT\]\005 \002Mesaj\002: %msg%"
set black(say.ro.notes.7) "\005\[BT\]\005 \002Note\002 #%msg.1%: \002Locatie\002: \001%msg.2%\001 ; \002Trimis de\002: \001%msg.3%\001 ; \002Data trimiterii\002: \001%msg.4%\001"
set black(say.ro.notes.8) "\005\[BT\]\005 Am sters \002note\002 cu numarul \001%msg.1%\001."
set black(say.ro.notes.9) "\002Status\002: CITIT \002Mesaj\002: "
set black(say.ro.notes.10) "\002Status\002: NECITIT \002Mesaj\002: "
set black(say.ro.notes.11) "\005\[BT\]\005 Ai \001%msg.1%\001 noi note in asteptare.. Acestea sunt: \002%msg.7%\002. Total note: \001%msg.2%\001"
set black(say.ro.notes.12) "\005\[BT\]\005 Ai \001%msg.1%\001 noi note in asteptare.. Total note: \002%msg.2%\002"
set black(say.ro.notesinbox.13) "\005\[BT\]\005 Pentru a citi notele foloseste: \002%char%note read <numar>\002"
set black(say.ro.notesinbox.15) "\005\[BT\]\005 Pentru a urmatorul set de \002note\002 foloseste: \001%char%note inbox -next\001 (\002%counter%\002 note ramase)"
set black(say.ro.notesinbox.16) "\005\[BT\]\005 Pentru a urmatorul set de \002note\002 foloseste: \001%char%note %chan% inbox -next\001 (\002%counter%\002 note ramase)"
set black(say.ro.notes.13) "\005\[BT\]\005 EROARE! \002Lista ta de Note\002 este goala."
set black(say.ro.notes.14) "\005\[BT\]\005 Ai \002%msg.1%\002 note personale adaugate."
set black(say.ro.noteslist.15) "\005\[BT\]\005 Pentru a afisa urmatorul set de \002note\002 foloseste: \001%char%note list -next\001 (\002%counter%\002 note ramase)"
set black(say.ro.noteslist.16) "\005\[BT\]\005 Pentru a afisa urmatorul set de \002note\002 foloseste: \001%char%note %chan% list -next\001 (\002%counter%\002 note ramase)"
set black(say.ro.noteslist.13) "\005\[BT\]\005 Pentru a citi note foloseste: \002%char%note read <numar>\002"
set black(say.ro.notes.15) "\005\[BT\]\005 Am sters toate \002notele\002 din INBOX."
set black(say.ro.notes.16) "\005\[BT\]\005 Pentru a citi notele foloseste: \002%char%note read <numar>\002"
set black(say.ro.notes.17) "NOTE_DEZACTIVAT"

#############################################################################################################################
#                                                                                                                           #
#                                                       COMENZI                                                             #
#                                                                                                                           #
#############################################################################################################################

###################################### ReportNick #################################

set black(say.ro.report.1) "\005\[BT\]\005 Te rog asteapta \001%msg.1% de secunde\001 inainte de a executa o alta comanda de tip \002%char%report\002. Multumesc!"
set black(say.ro.report.2) "\[REPORT\] Nick: \002%msg.1%\002 ; Raportat de: \002%msg.2%\002 ; Motiv: \001%msg.8%\001"
set black(say.ro.report.3) "\[REPORT\] Nick: \001%msg.1%\001 ; Raportat de: \002%msg.2%\002"
set black(say.ro.report.4) "\005\[BT\]\005 Report-ul tau a fost trimis catre operatori. Iti multumim!"
set black(say.ro.report.5) "\005\[BT\]\005 Suna la 112 in cazul asta :-)"

###################################### cp #####################################

set black(say.ro.cp.1) "\005\[BT\]\005 Copiere esuata. (lista de banuri a canalului \002%msg.1%\002 este goala)"
set black(say.ro.cp.2) "\005\[BT\]\005 Copiere esuata. (\002%msg%\002 nu este canal valid.)"
set black(say.ro.cp.3) "\005\[BT\]\005 Copiere esuata. (\002%msg%\002 nu sunt canale valide.)"
set black(say.ro.cp.4) "\005\[BT\]\005 Copiere efectuata. (\002%msg.1%\002 inregistrari copiate)"
set black(say.ro.cp.5) "\005\[BT\]\005 Copiere efectuata. (\002%msg.1%\002 useri din \001%msg.2%\001 copiati)"
set black(say.ro.cp.6) "\005\[BT\]\005 Copiere efectuata. (\002%msg.1%\002 setari copiate)"
set black(say.ro.cp.7) "\005\[BT\]\005 Copiere efectuata. (\002%msg.1%\002 canale interzise copiate)"

#################################### mySet ####################################

set black(say.ro.myset.1) "\005\[BT\]\005 Ti-am setat limba la \002%msg.1%\002"
set black(say.ro.myset.2) "\005\[BT\]\005 Ti-am setat iesirea la \002%msg.1%\002"
set black(say.ro.myset.3) "\005\[BT\]\005 Ti-am setat autoinvite \002%msg.1%\002"
set black(say.ro.myset.4) "\005\[BT\]\005 Ti-am setat handle la \002%msg.1%\002"
set black(say.ro.myset.5) "\005\[BT\]\005 Nu am putut seta limba \002%msg.1%\002 deoarece fisierul nu exista."
set black(say.ro.myset.6) "\005\[BT\]\005 Ti-am setat greet la \002%msg%\002"
set black(say.ro.myset.7) "\005\[BT\]\005 Ti-ai adaugat ca host \002%msg.1%\002"
set black(say.ro.myset.8) "\005\[BT\]\005 Ti-ai sters host-ul \002%msg.1%\002 din baza de date."
set black(say.ro.myset.9) "\005\[BT\]\005 Nu exista host-ul \002%msg.1%\002 in baza mea de date."
set black(say.ro.myset.10) "\005\[BT\]\005 Ti-am setat \002mychan\002 ca \001%msg.1%\001"
set black(say.ro.myset.11) "\005\[BT\]\005 Ti-am resetat \002%msg.1%\002"
set black(say.ro.myset.12) "\005\[BT\]\005 \002%msg.1%\002 este setat la: \001%msg.8%\001"
set black(say.ro.myset.13) "\005\[BT\]\005 Ti-am setat \002noteexpire\002 la \002%msg.1%\002"
set black(say.ro.myset.14) "\005\[BT\]\005 Trebuie sa specifici 4 culori din cele disponibile. Culori disponibile :\002bold\002 \001underline\001 \0034red\003 \00312blue\003 \0033green\003 \0038yellow\003 \0037orange\003 \00310cyan\003 \00314grey\003 \0035brown\003 \0036purple\003 \00313pink\003 black"
set black(say.ro.myset.15) "\005\[BT\]\005 Una din culorile introduse este invalida. Culori disponibile : \002bold\002 \001underline\001 \0034red\003 \00312blue\003 \0033green\003 \0038yellow\003 \0037orange\003 \00310cyan\003 \00314grey\003 \0035brown\003 \0036purple\003 \00313pink\003 black"
set black(say.ro.myset.16) "\005\[BT\]\005 Ti-am setat \002colors\002 la: \001%msg%\001"
set black(say.ro.myset.17) "\005\[BT\]\005 Trebuie sa specifici unul dintre caractere disponibile. Caractere disponibile: \001%msg%\001"
set black(say.ro.myset.18) "\005\[BT\]\005 Ti-am setat \002mychar\002 la: \001%msg.1%\001"
set black(say.ro.myset.19) "\005\[BT\]\005 Acum poti primi \002NOTE\002."
set black(say.ro.myset.20) "\005\[BT\]\005 Din acest moment numai poti primi \002NOTE\002."

################################# Troll ######################################

set black(say.ro.troll.5) "Pentru ca nu sti sa te comporti, esti pus in lista de troli pentru 24 de ore ! :-)"
set black(say.ro.troll.6) "Trolii curenti (cei fara 7 ani de acasa) sunt: \001%msg%\001"

#################################### dr #######################################

set black(say.ro.dr.5) "Drona/posibila infectare malware"

#################################### vr #######################################

set black(say.ro.vr.5) "Mirc-ul tau este infectat cu un vierme/virus, te rog sa iti cureti computerul"

################################### Bot #######################################

set black(say.ro.bot.5) "Posibil BOT Detectat"
set black(say.ro.bot.6) "Pentru unban foloseste: \002/msg %botnick% unbanme %chan% %msg%\002"
set black(say.ro.bot.7) "Bravo! Banul tau de pe %chan% a fost scos. Poti reintra acum!" 
set black(say.ro.bot.8) "Daca nu esti BOT -> /msg %botnick% unbanme %chan%"

################################## b #####################################

set black(say.ro.b.5)  { "Esti banat!"
			 "Problema rezolvata"
			 "Si uite asa stai pe status o vreme ;-)"
			 "Multumim ca ai trecut pe aici!"
			 "Este vremea de stat pe status :P Savureaz-o ;D"
			 "Nu stii cata lume ar vrea sa fie in locul tu..adica sa zboare ;))"
}
set black(say.ro.b.6) "\005\[BT\]\005 durata maxima de ban pentru nivelul tau este de \0027d\002 (20160 minute)"
set black(say.ro.b.7) "\005\[BT\]\005 Ai adaugat un \[BAN LOCAL\] pe \002%chan%\002 avand \[ID: \001%msg.1%\001\]"
set black(say.ro.b.8) "\005\[BT\]\005 Ai adaugat un ban \[GLOBAL\] avand \[ID: \001%msg.1%\001\]"
set black(say.ro.b.9) "\005\[BT\]\005 Nu este voie massban."
set black(say.ro.b.10) "\005\[BT\]\005 \002%msg.1%\002 nu este un banmask valid."
set black(say.ro.b.11) "\005\[BT\]\005 \002%msg.1%\002 nu este o expresie de tip regex valida."
set black(say.ro.b.12) "\005\[BT\]\005 Ai adaugat un \[BAN LOCAL\] de tip REGEX pe \002%chan%\002 avand \[ID: \001%msg.1%\001\]"
set black(say.ro.b.13) "\005\[BT\]\005 Ai adaugat un ban \[GLOBAL\] de tip REGEX avand \[ID: \001%msg.1%\001\]"
set black(say.ro.b.14) "\005\[BT\]\005 Ai adaugat un \[BAN LOCAL\] pe \002%chan%\002 avand \[ID: \001%msg.1%\001\] \[XONLY\]" 

################################## n #####################################

set black(say.ro.n.5) "NICK-ul tau contine caractere nepermise, te rog schimba-l si revino"

################################## id ####################################

set black(say.ro.id.5) "IDENT-ul tau contine caractere nepermise, te rog schimba-l si revino"

################################## Black #################################

set black(say.ro.black.5) "Nu mai esti binevenit aici"

################################## w #####################################

set black(say.ro.w.5) { "Esti rugat sa iti revizuiesti comportamentul"
			"Vezi daca nu ai cei 7 ani de acasa ? :P"
			"De ce esti ma nesimtit ? Ia sa vedem daca simti asta :p"
			"Nesimtirea nu se trece cu vederea, se trece cu un k i c k :D"
			}
set black(say.ro.w.6) "Acesta a fost ultimul avertisment. Data viitoare vei fi banat!"

################################# spam ###################################

set black(say.ro.spam.5) "Ai fost prins facand spam, pentru dezinfectare join #nohack"

################################# k #######################################

set black(say.ro.k.1) "\005\[BT\]\005 Nu am gasit niciun user pe %chan%."
set black(say.ro.k.2) "\005\[BT\]\005 %msg.1% are access pe %chan%"
set black(say.ro.k.5)  { "Cuvantul zilei este \"Kick\" :-)"
			 "Acum poti sa vezi adevarata putere a mea :p"
			 "Verific daca poti zbura :D"
			 "Daca poti sa iesi, bine, daca nu, zbori :P"
			 }

################################# Gag ######################################

set black(say.ro.gag.1) "- ATENTIE - \002%gag%\002 mai are de ispasit o perioada de \001%minute%\001 de Gag. Bucura-te de sunetul linistii :-)"
set black(say.ro.gag.2) "\005\[BT\]\005 *** Sfarsit GAGLIST ***"
set black(say.ro.gag.3) "\005\[BT\]\005 \001%msg.1%\001 are deja Gag pe \002%chan%\002."
set black(say.ro.gag.4) "\005\[BT\]\005 \001%msg.1%\001 are deja ban pe \002%chan%\002."
set black(say.ro.gag.5) "- ATENTIE - a expirat gag-ul pentru \002%nick%\002, acum poti tasta pe \002%chan%\002. Data viitoare sa fii mai atent :-)"
set black(say.ro.gag.6) "N/A"
set black(say.ro.gag.7) "\005\[BT\]\005 Durata maxima de Gag pentru nivelul tau este de \0027d\002 (\001 20160 minute\001 )"
set black(say.ro.gag.10) "\005\[BT\]\005 Nu mai poti scrie pe \002%chan%\002 pentru \001%time%\001."
set black(say.ro.gag.11) "- ATENTIE - \002%gagger%\002 nu o sa mai poata tasta pe \002%chan%\002 pentru \001%time%\001."

################################# unGag #####################################

set black(say.ro.ungag.5) "\005\[BT\]\005 Nu am gasit niciun gag pentru \001%msg.1%\001 pe \002%chan%\002."
set black(say.ro.ungag.6) "\005\[BT\]\005 Am scos gag-ul pentru \001%msg.1%\001 pe \002%chan%\002."
set black(say.ro.ungag.7) "\005\[BT\]\005 Acum poti scrie pe %chan%.."
set black(say.ro.ungag.8) "- ATENTIE - %gagger% acum poate tasta pe %chan%.."

################################ bw #########################################

set black(say.ro.bw.5) "Utilizator nedorit din cauza comportamentului abuziv"

############################### sb ##########################################

set black(say.ro.sb.1) "\005\[BT\]\005 Am gasit \002%msg.1%\002 banuri (\001%msg.2%\001 globale, \001%msg.3%\001 locale)"
set black(say.ro.sb.2) "\005\[BT\]\005 Nu am gasit niciun ban referitor la host-ul \002%msg.1%\002."
set black(say.ro.sb.3) "\005\[BT\]\005 \002%msg.1%\002 ; \[ID: \001%msg.2%\001\] ; \[CANAL\] * ; \002%msg.3%\002 ; Adaugat de: \002%msg.4%\002 ; Data: \002%msg.5%\002 ; Expira in: \002%msg.6%\002 ; Motiv: %msg.7%"
set black(say.ro.sb.4) "\005\[BT\]\005 \002%msg.1%\002 ; \[ID: \001%msg.2%\001\] ; \[CANAL\] \002%chan%\002 ; \002%msg.3%\002 ; Adaugat de: \002%msg.4%\002 ; Data: \002%msg.5%\002 ; Expira in: \002%msg.6%\002 ; Motiv: %msg.7%"
set black(say.ro.sb.5) "\005\[BT\]\005 Am gasit prea multe rezultate \001(>10)\001 te rog sa reformulezi cautarea."
set black(say.ro.sb.6) "\005\[BT\]\005 Am gasit \002%msg.1%\002 banuri locale"
set black(say.ro.sb.7) "\005\[BT\]\005 Acesta a scris pe canal: \002%msg%\002"
set black(say.ro.sb.8) "\005\[BT\]\005 Acesta s-a aflat pe urmatoarele canale interzise: \002%msg%\002"
set black(say.ro.sb.9) "\005\[BT\]\005 \002%msg.1%\002 ; \[ID: \001%msg.2%\001\] ; \[CANAL\] \002%chan%\002 ; \002%msg.3%\002 ; Adaugat de: \002%msg.4%\002 ; Data: \002%msg.5%\002 ; Expira in: %msg.6% ; Motiv: %msg.7%"
set black(say.ro.sb.10) "\005\[BT\]\005 \002%msg.1%\002 ; \[ID: \001%msg.2%\001\] ; \[CANAL\] * ; \002%msg.3%\002 ; Adaugat de: \002%msg.4%\002 ; Data: \002%msg.5%\002 ; Expira in: %msg.6% ; Motiv: %msg.7%"
set black(say.ro.sb.11) "\005\[BT\]\005 Nu am gasit niciun ban referitor la ID-ul \002%msg.1%\002."
set black(say.ro.sb.12) "\005\[BT\]\005 \[\002COMENTARIU BAN\002\] %msg%"

############################### Stick ########################################

set black(say.ro.stick.5) "Sticky ban"

################################## BanList ##################################### 

set black(say.ro.banlist.1) "Permanent"
set black(say.ro.banlist.2) "\005\[BT\]\005 \[CANAL\]: * (\002%msg.1%\002 banuri gasite)"
set black(say.ro.banlist.3) "\005\[BT\]\005 Pentru a afisa urmatoarele banuri foloseste: \001%char%banlist global -next\001 (\002%counter%\002 banuri ramase)"
set black(say.ro.banlist.4) "\005\[BT\]\005 *** Sfarsit BANLIST ***"
set black(say.ro.banlist.5) "\005\[BT\]\005 \002%msg.2%\002 ; \[ID: %msg.1%\] ; \002%msg.3%\002 ; Adaugat de: \002%msg.4%\002 ; Data: \002%msg.12%\002 ; Expira in: %msg.13% \002%msg.15%\002 \002%msg.17%\002 ; Motiv: %msg.20%"
set black(say.ro.banlist.6) "\005\[BT\]\005 \[CANAL\]: %chan% (\002%msg.1%\002 banuri gasite)"
set black(say.ro.banlist.7) "\005\[BT\]\005 \[USER\]: %msg.2% (\002%msg.1%\002 banuri gasite)"
set black(say.ro.banlist.8) "\005\[BT\]\005 Pentru a afisa urmatoarele banuri foloseste: \001%char%banlist \002%user%\002 -next\001 (\002%counter%\002 banuri ramase)"
set black(say.ro.banlist.9) "\005\[BT\]\005 \002%msg.2%\002 ; \[ID: %msg.1%\] ; \002%msg.3%\002 ; Data: \002%msg.4%\002 ; Expira in: %msg.12% \002%msg.13%\002 \002%msg.15%\002 ; Motiv: %msg.16%"
set black(say.ro.banlist.10) "\005\[BT\]\005 Pentru a afisa urmatoarele banuri foloseste: \001%char%banlist all -next\001 (\002%counter%\002 banuri ramase)"
set black(say.ro.banlist.11) "\005\[BT\]\005 \002%msg.2%\002 ; \[ID: %msg.1%\] ; \002%msg.3%\002 ; Adaugat de: \002%msg.4%\002 ; Data: \002%msg.12%\002 ; Expira in: %msg.13% ; Motiv: %msg.14%"
set black(say.ro.banlist.12) "\005\[BT\]\005 \002%msg.2%\002 ; \[ID: %msg.1%\] ; \002%msg.3%\002 ; Data: \002%msg.4%\002 ; Expira in: %msg.12% ; Motiv: %msg.11%"
set black(say.ro.banlist.13) "NICIODATA"
set black(say.ro.banlist.14) "\005\[BT\]\005 Pentru a afisa urmatoarele banuri foloseste: \001%char%banlist %chan% all -next\001 (\002%counter%\002 banuri ramase)"
set black(say.ro.banlist.15) "\005\[BT\]\005 Pentru a afisa urmatoarele banuri foloseste: \001%char%banlist %chan% other -next\001 (\002%counter%\002 banuri ramase)"

############################### Status #######################################

set black(say.ro.status.1) "\005\[BT\]\005 Versiune script: \001%msg.1% %msg.2%\001 - Versiune eggdrop: \002%msg.3%\002 - Versiune TCL: \001%msg.12%\003"
set black(say.ro.status.2) "\005\[BT\]\005 Timp pornire: \002%msg%\002"
set black(say.ro.status.3) "\005\[BT\]\005 Durata timp online: \002%msg%\002"
set black(say.ro.status.4) "\005\[BT\]\005 Canale: \002%msg%\002"
set black(say.ro.status.5) "\005\[BT\]\005 Numar total useri: \001%msg.1%\001. Eggdrop owner: \002%msg.2%\002"

############################## upTime #######################################

set black(say.ro.uptime.2) "\005\[BT\]\005 Uptime server: \002%msg%\002"
set black(say.ro.uptime.3) "\005\[BT\]\005 Server conectat: \002%msg%\002"

################################ i ##########################################

set black(say.ro.i.1) "\005\[BT\]\005 \001%msg.1%\001 se afla deja pe \002%chan%\002."
set black(say.ro.i.2) "\005\[BT\]\005 Il invit pe \001%msg.1%\001 pe \002%chan%\002."
set black(say.ro.i.7) "Esti invitat de catre \001%nick%\001 pe \002%chan%\002, daca vrei sa intri tasteaza \002/join %chan%\002. Multumesc!"

################################ Cycle #####################################

set black(say.ro.cycle.1) { "Fac miscare.."
			    "Hai, toata lumea la join/part :-)"
			    "Macar asa mai scap si eu de 'patratele' :p"
			    "Nu cred ca o sa mai vin inapoi, sau da ?:P"
			    }
set black(say.ro.cycle.2) "Ma intorc in %msg.1% secunde.."

################################ Purge #####################################

set black(say.ro.purge.1) "\005\[BT\]\005 Te rog sa specifi un motiv.."

################################## Chat #####################################

set black(say.ro.chat.1) "\005\[BT\]\005 \002DCC CHAT\002 - Initializare..."
set black(say.ro.chat.2) "\005\[BT\]\005 Trebuie sa ai setata, mai intai, o parola. Foloseste: /msg %botnick% pass \001<parola ta>\001"

################################## Version ##################################

set black(say.ro.version.1) "\005\[BT\]\005 VERSIUNE SCRIPT: \002BlackTools %msg.1%\002 (Ultimul update: %msg.8%) creat de \002BLaCkShaDoW\002. Pentru alte informatii ---= \002WwW.TclScripts.Net\002 or #TCL-HELP @ UNDERNET"

################################# ub ######################################

set black(say.ro.ub.1) "\005\[BT\]\005 Nu am gasit niciun ban care sa corespunda cu \002%msg.1%\002"
set black(say.ro.ub.2) "\005\[BT\]\005 Am scos \001%msg.1%\001 banuri (\002%msg.2%\002 gasite) care au corespuns cu \002%msg.3%\003"
set black(say.ro.ub.3) "\005\[BT\]\005 Nu am gasit niciun ban \[GLOBAL\] care sa corespunda cu \002%msg.1%\002"
set black(say.ro.ub.4) "\005\[BT\]\005 Am scos \001%msg.1%\001 banuri \[GLOBALE\] care au corespuns cu \002%msg.2%\003"
set black(say.ro.ub.5) "\005\[BT\]\005 Nu ai destul access pentru a sterge lista de banuri."
set black(say.ro.ub.6) "\005\[BT\]\005 Am scos ban-ul din banlist-ul canalului \002%chan%\002"
set black(say.ro.ub.7) "\005\[BT\]\005 Am scos \001%msg.1%\001 banuri de pe \002%msg.2%\002 canale ce au \002LINK\002"
set black(say.ro.ub.8) "\005\[BT\]\005 Nu am gasit niciun ban care sa corespunda cu ID-ul \001%msg.1%\001 pe \002%chan%\002."
set black(say.ro.ub.9) "\005\[BT\]\005 Am scos banul ce corespunde cu ID-ul \001%msg.3%\001 de pe \002%chan%\002."
set black(say.ro.ub.10) "\005\[BT\]\005 Am scos banul \[GLOBAL\] ce corespunde cu ID-ul \002%msg.2%\002"
set black(say.ro.ub.11) "\005\[BT\]\005 Nu am gasit niciun ban \[GLOBAL\] care sa corespunda cu ID-ul \002%msg.1%\002"

################################## Mode ###################################

set black(say.ro.mode.6) "\005\[BT\]\005 Am aplicat modurile \001%msg.1%\001 pe \002%chan%\002."

################################### Set ###################################

set black(say.ro.set.1) "\005\[BT\]\005 Am setat \001%msg.1%\001 \004%msg.set%\004"
set black(say.ro.set.2) "\005\[BT\]\005 Nu am putut seta \002%msg.1%\001 \004%msg.set%\004"
set black(say.ro.set.3) "\005\[BT\]\005 Este deja setat \001%msg.1%\001 \004%msg.set%\004 pe \002%chan%\002."
set black(say.ro.set.4) "\005\[BT\]\005 Este deja setat \001%msg.1%\002 pe \002%chan%\002."
set black(say.ro.set.5) "\005\[BT\]\005 Nu am putut seta \001%msg.1%\001 pe \002%chan%\002."
set black(say.ro.set.6) "\005\[BT\]\005 Am setat \001%msg.1%\001 \002%chan%\002."
set black(say.ro.set.7) "\005\[BT\]\005 Nu am putut seta \002%msg.1%\001 \004%msg.set%\004 pe \002%chan%\002."
set black(say.ro.set.8) "\005\[BT\]\005 Am setat \001%msg.1%\001 \004%msg.set%\004 pentru \002%chan%\002."
set black(say.ro.set.9) "\005\[BT\]\005 Este deja setat \001%msg.1%\001 \004%msg.set%\004"
set black(say.ro.set.14) "\005\[BT\]\005 Setare invalida."

#################################### unSet #################################

set black(say.ro.unset.1) "\005\[BT\]\005 Nu exista setarea \002%msg.1%\002."
set black(say.ro.unset.2) "\005\[BT\]\005 Am scos setarea \001%msg.1%\001 de pe \002%chan%\002."
set black(say.ro.unset.3) "\005\[BT\]\005 \001%msg.1%\001 nu este setata pe \002%chan%\002."
set black(say.ro.unset.4) "\005\[BT\]\005 Am scos toate setarile de tip \001flag\001 de pe \002%chan%\002."
set black(say.ro.unset.5) "\005\[BT\]\005 Am scos toate setarile de tip \001string\001 de pe \2%chan%\002."

#################################### Timer ####################################

set black(say.ro.timer.1) "\005\[BT\]\005 Lista de timere active este:"
set black(say.ro.timer.2) "#\002%msg.1%\002 PID: \002%msg.2%\002 ; Timp activare: \002%msg.3%\002 minute ; Nume proces: \002%msg.4%\002"
set black(say.ro.timer.3) "#\002%msg.1%\002 PID: \002%msg.2%\002 ; Timp activare: \002%msg.3%\002 secunde ; Nume proces: \"\002%msg.9%\002\""
set black(say.ro.timer.4) "\005\[BT\]\005 Sfarsit lista timere."
set black(say.ro.timer.5) "\005\[BT\]\005 Timer-ul avand pid-ul \002%msg.1%\002 a fost inchis."
set black(say.ro.timer.6) "\005\[BT\]\005 Nu exista timer-ul cu pid-ul \002%msg.1%\002"
set black(say.ro.timer.7) "\005\[BT\]\005 Am pornit timer cu pid \002%msg.1%\002"
set black(say.ro.timer.8) "\005\[BT\]\005 Un timer ce are acelasi proces este deja pornit."

#################################### Ignore ################################

set black(say.ro.ignore.2) "\005\[BT\]\005 Nu poti da ignore deoarece host-ul apartine unui user ce are access mai mare ca al tau."
set black(say.ro.ignore.3) "\005\[BT\]\005 Nu sunt ignoruri date."
set black(say.ro.ignore.4) "\005\[BT\]\005 Host: \001%msg.1%\001 | Adaugat de: \002%msg.2%\002 | Motiv: \002%msg.6%\002 | Expira in: \001%msg.3%\001"
set black(say.ro.ignore.5) "\005\[BT\]\005 \002%msg.1%\002 are deja ignore."
set black(say.ro.ignore.6) "\005\[BT\]\005 Am adaugat ignore pe host \001%msg.1%\001 cu motiv: \002%msg.7%\002 pe o perioada de: \001%msg.2%\001"
set black(say.ro.ignore.8) "\005\[BT\]\005 \002%msg.1%\002 nu are ignore."
set black(say.ro.ignore.9) "\005\[BT\]\005 Am scos ignore pentru \002%msg.1%\002"

################################## Show ####################################

set black(say.ro.show.4) "\005\[BT\]\005 \002%msg.1%\002 este setat la: \001%msg.2%\001. Timp pana la urmatorul timer : \001%msg.3%\001 minute"
set black(say.ro.show.5) "\005\[BT\]\005 Nu am putut obtine informatii despre \002%msg.1%\002."
set black(say.ro.show.6) "\005\[BT\]\005 \002%msg.1%\002 este setat la: \001%msg.8%\001"
set black(say.ro.show.7) "\005\[BT\]\005 Flagul \001%msg.1%\001 este activat pe \002%chan%\002."
set black(say.ro.show.8) "\005\[BT\]\005 Flagul \001%msg.1%\001 este dezactivat pe \002%chan%\002."

################################### Rehash #####################################

set black(say.ro.rehash.1) "\005\[BT\]\005 Reincarcare scripturi/setari...."

################################### Restart ####################################

set black(say.ro.restart.1) "\005\[BT\]\005 Restartare sistem. Revin imediat.."

################################### Save #######################################

set black(say.ro.save.1) "\005\[BT\]\005 Salvez fisierele.."

################################### jump #######################################

set black(say.ro.jump.1) "\005\[BT\]\005 Schimb server-ul de conectare la: %msg%"

################################### Die #######################################

set black(say.ro.die.1) "\005\[BT\]\005 M-am sinucis.."
set black(say.ro.die.2) "\005\[BT\]\005 ** BOOM ** Acest eggdrop BlackTools a fost terminat." 

################################### Nick #####################################

set black(say.ro.nick.1) "\005\[BT\]\005 Imi schimb nick-ul in \002%msg.1%\002 (setare permanenta)"
set black(say.ro.nick.2) "\005\[BT\]\005 Foloseste \"nick <nick nou>\""
set black(say.ro.nick.3) "\005\[BT\]\005 Atentie. Nick-ul a fost schimbat doar pana la urmatorul restart. (te rog verifica daca exista setarea \"set nick\" in config-ul eggdrop-ului."
set black(say.ro.nick.4) "\005\[BT\]\005 Imi schimb nick-ul in \002%msg.1%\002 (setare temporara)"

################################### AddChan ##################################

set black(say.ro.addchan.2) "\005\[BT\]\005 \002%msg.1%\002 este deja in lista mea de canale."
set black(say.ro.addchan.3) "\005\[BT\]\005 Am adaugat \002%msg.1%\002 in lista mea de canale."

################################### DelChan ##################################

set black(say.ro.delchan.1) "Canalul \001%chan%\001 a fost sters de \002%hand%\002 cu motivul: \001%reason%\001"
set black(say.ro.delchan.2) "\005\[BT\]\005 Canalul \002%msg.1%\002 nu se afla in memoria mea."
set black(say.ro.delchan.3) "\005\[BT\]\005 Am sters \002%msg.1%\002 din lista mea de canale."
set black(say.ro.delchan.5) "\005\[BT\]\005 Nu poti sterge canalul \002%msg.1%\002 deoarece are rang de \001HOMECHAN\001."

################################### Suspend ##################################

set black(say.ro.suspend.2) "Canalul \001%chan%\001 a fost suspendat de \002%hand%\002 cu motivul: \001%reason%\001"
set black(say.ro.suspend.3) "\005\[BT\]\005 \002%msg.1%\002 are deja suspend.."
set black(say.ro.suspend.4) "\005\[BT\]\005 Am suspendat canalul \002%msg.1%\002"

################################### unsuspend ##################################

set black(say.ro.unsuspend.3) "\005\[BT\]\005 \002%msg.1%\002 nu are suspend.."
set black(say.ro.unsuspend.4) "\005\[BT\]\005 Am scos suspendul pentru canalul \002%msg.1%\002."

################################### add #########################################

set black(say.ro.add.5) "\005\[BT\]\005 Mai exista un user in baza mea de date cu acelasi host. Acesta este \002%msg.1%\002."
set black(say.ro.add.6) "\005\[BT\]\005 Nu poti da access de \002%msg.1%\002 deoarece acesta este desupra level-ului tau."
set black(say.ro.add.7) "\005\[BT\]\005 Nu poti da access de \002%msg.2%\002 deoarece acesta este level-ul tau."
set black(say.ro.add.8) "\005\[BT\]\005 Nu poti da access de \002%msg.3%\002 deoarece acesta este level-ul tau."
set black(say.ro.add.10) "\005\[BT\]\005 Am adaugat user-ul \001%msg.1%\001 cu host :\002%msg.2%\002"
set black(say.ro.add.17) "\005\[BT\]\005 Userul \001%msg.1%\001 este prea lung. Acesta a fost scurtat automat la \002%msg.2%\002"
set black(say.ro.add.18) "\005\[BT\]\005 Te rog foloseste un user valid format din caractere alfanumerice."
set black(say.ro.add.19) "\005\[BT\]\005 \001%msg.1%\001 are access de \002%msg.2%\002 pe \002%chan%\002."
set black(say.ro.add.20) "\005\[BT\]\005 \001%msg.1%\001 are access de \002%msg.2%\002."

################################### DelAcc #########################################

set black(say.ro.delacc.1) "\005\[BT\]\005 Am sters access-ul pentru \001%msg.1%\001 pe \002%chan%\002."
set black(say.ro.delacc.2) "\005\[BT\]\005 Am sters access-ul de \002OWNER\002 pentru \001%msg.1%\001."
set black(say.ro.delacc.3) "\005\[BT\]\005 Nu are access de \002OWNER\002."
set black(say.ro.delacc.4) "\005\[BT\]\005 Am sters access-ul de \002MASTER\002 pentru \001%msg.1%\001."

#################################### Del ###########################################

set black(say.ro.del.1) "\005\[BT\]\005 Am sters \002%msg.1%\002 din memoria mea."
set black(say.ro.del.2) "\005\[BT\]\005 Nu poti sterge user-ul \001%msg.1%\001 deorece are access pe alte canale. Foloseste: \002delacc %msg.1%\002"

################################### AddHost ########################################

set black(say.ro.addhost.1) "\005\[BT\]\005 Hostul \001%msg.2%\001 exista deja in baza de date a lui \002%msg.1%\002."
set black(say.ro.addhost.2) "\005\[BT\]\005 Am adaugat host-ul: \001%msg.2%\001 la user-ul: \002%msg.1%\002"

################################### DelHost ########################################

set black(say.ro.delhost.1) "\005\[BT\]\005 Hostul \001%msg.2%\001 nu exista in baza de date a lui \002%msg.1%\002."
set black(say.ro.delhost.2) "\005\[BT\]\005 Am sters host-ul: \001%msg.2%\001 de la user-ul: \002%msg.1%\002"

################################### chUser ########################################

set black(say.ro.chuser.1) "\005\[BT\]\005 Am schimbat user-ul \001%msg.1%\001 in: \002%msg.2%\002 ."
set black(say.ro.chuser.2) "\005\[BT\]\005 Ti-ai schimbat handle in: \002%msg.1%\002 ."
set black(say.ro.chuser.3) "\005\[BT\]\005 Exista deja un user cu acelasi handle. Te rog alege altul."

################################### UserList ########################################

set black(say.ro.userlist.1) "\005\[BT\]\005 %msg%"
set black(say.ro.userlist.2) "\005\[BT\]\005 Am in memorie \001%msg.1%\001 useri pe \002%chan%\002:"

#################################### Channels #####################################

set black(say.ro.channels.1) "\005\[BT\]\005 Am in memorie %msg.1% canale.."
set black(say.ro.channels.2) "%msg%"
set black(say.ro.channels.3) "\002OK\002"
set black(say.ro.channels.4) "\002Nu sunt pe canal\002"
set black(say.ro.channels.5) "\002Suspendat\002"
set black(say.ro.channels.6) "\002Autosuspendat\002"
set black(say.ro.channels.7) "\002Useri\002"
set black(say.ro.channels.8) "\002Invizibil\002"

#################################### Info ########################################

set black(say.ro.info.1) "\005\[BT\]\005 \[USER\] \002%msg.1%\002 Nivel ACCESS : \002%msg.8%\002"
set black(say.ro.info.2) "\005\[BT\]\005 \[CANAL\] \002%msg.1%\002 -- AUTOMODE: \002%msg.2%\002 -- STATISTICI: \001%char%stats %msg.3%\001"
set black(say.ro.info.3) "\005\[BT\]\005 \[Mesaj intampinare\] %msg%"
set black(say.ro.info.4) "\005\[BT\]\005 \[Ultima oara modificat de\] \002%msg.1%\002 in data de: \002%msg.8%\002"
set black(say.ro.info.5) "\005\[BT\]\005 \[Ultima oara vazut ONLINE\] \002%msg.1%\002"
set black(say.ro.info.6) "\005\[BT\]\005 \[Host-uri\] %msg%"
set black(say.ro.info.7) "\005\[BT\]\005 ** SUSPENDAT ** - Expira in \001%msg.1% %msg.2% %msg.3%\001 (Nivel \002%msg.4%\002) - Motiv: \002%msg.10%\002"
set black(say.ro.info.8) "\005\[BT\]\005 \[Canalele unde are access\] %msg%."
set black(say.ro.info.9) "\005\[BT\]\005 ** SUSPENDAT GLOBAL ** - Expira in \001%msg.1% %msg.2% %msg.3%\001 (Nivel \002%msg.4%\002) - Motiv: \002%msg.10%\002"
set black(say.ro.info.10) "\005\[BT\]\005 \[Ultima oara vazut ONLINE\] \001%msg.1%\001 pe canalul: \002%msg.2%\002"
set black(say.ro.info.11) "\005\[BT\]\005 \[USER\] %msg.1%"
set black(say.ro.info.12) "\005\[BT\]\005 Am gasit (\001%msg.1%\001) inregistrari: \002%msg.8%\002."
set black(say.ro.info.13) "\005\[BT\]\005 Am gasit (\001%msg.1%\001) inregistrari. Te rog rectifica cautarea." 
set black(say.ro.info.14) "\005\[BT\]\005 Pentru a afla informatii despre cea corecta, foloseste: \001%char%info <user>\001"
set black(say.ro.info.15) "\005\[BT\]\005 \[CANAL\] \002%msg.1%\002 -- moduri: \002%msg.8%\002"
set black(say.ro.info.16) "\005\[BT\]\005 \[MANAGER\] %msg%"
set black(say.ro.info.17) "\005\[BT\]\005 \[TOPIC\] %msg%"
set black(say.ro.info.18) "\005\[BT\]\005 \[URL\] %msg%"
set black(say.ro.info.19) "\005\[BT\]\005 \[STATUS\] %msg%"
set black(say.ro.info.20) "\005\[BT\]\005 \[INREGISTRAT\] \001%msg.1%\001 (\002%msg.8%\002)"
set black(say.ro.info.21) "\005\[BT\]\005 \[STATISTICI\] intrari: \002%msg.1%\002 | useri: \002%msg.2%\002 (%msg.3% cu acces) | banuri: \002%msg.4%\002 | seen: \002%msg.5%\002"
set black(say.ro.info.22) "\002SUSPENDAT\002"
set black(say.ro.info.23) "\002NU SUNT PE CANAL\002"
set black(say.ro.info.24) "\002Fara OP\002"
set black(say.ro.info.25) "\005\[BT\]\005 \[CANAL\] \002%msg.1%\002 -- AUTOMODE: \002%msg.2%\002 -- Flaguri: \002%msg.3%\002 -- STATISTICI: \001%char%activ %msg.4%\001"
set black(say.ro.info.26) "\002AUTOSUSPENDAT\002 -- Motiv: Nu am putut intra, canal plin (+l)"
set black(say.ro.info.27) "\002AUTOSUSPENDAT\002 -- Motiv: Nu am putut intra, canalul are KEY (+k)"
set black(say.ro.info.28) "\002AUTOSUSPENDAT\002 -- Motiv: Nu am putut intra, canalul e INVITE ONLY (+i)"
set black(say.ro.info.29) "\002AUTOSUSPENDAT\002 -- Motiv: Nu am putut intra, am ban pe canal (+b)"
set black(say.ro.info.30) "\002NU SUNT PE CANAL\002 -- Motiv: Nu pot intra, canalul este plin (+l)"
set black(say.ro.info.31) "\002NU SUNT PE CANAL\002 -- Motiv: Nu pot intra, canalul are KEY (+k)"
set black(say.ro.info.32) "\002NU SUNT PE CANAL\002 -- Motiv: Nu pot intra, canalul e INVITE ONLY (+i)"
set black(say.ro.info.33) "\002NU SUNT PE CANAL\002 -- Motiv: Nu pot intra, am ban pe canal (+b)"
set black(say.ro.info.34) "\002NU SUNT PE CANAL\002 -- Motiv: Nu pot intra, restrictie de mod (+r)"
set black(say.ro.info.35) "\002AUTOSUSPENDAT\002 -- Motiv: Nu am putut intra, restrictie de mod (+r)"
set black(say.ro.info.36) "\005\[BT\]\005 \[Setari\] %msg%"
set black(say.ro.info.37) "\[BT\] \[BLACKLIST\] %msg%"

################################## s #############################################

set black(say.ro.s.1) "\005\[BT\]\005 \001%msg.1%\001 este deja suspendat pe \002%chan%\002."
set black(say.ro.s.2) "\005\[BT\]\005 Access-ul lui \001%msg.1%\001 a fost suspendat pe \002%chan%\002"
set black(say.ro.s.3) "Nu a fost specificat niciun motiv."
set black(say.ro.s.4) "\005\[BT\]\005 \001%msg.1%\001 este deja suspendat de un user ce are nivel mai mare ca al tau."
set black(say.ro.s.5) "\005\[BT\]\005 Access-ul lui \001%msg.1%\001 a fost suspendat \002GLOBAL\002"

################################## us #############################################

set black(say.ro.us.1) "\005\[BT\]\005 \001%msg.1%\001 nu are suspend pe \002%chan%\002."
set black(say.ro.us.2) "\005\[BT\]\005 Am scos suspendul lui \001%msg.1%\001 pe \002%chan%\002."
set black(say.ro.us.3) "\005\[BT\]\005 Am scos suspendul GLOBAL lui \002%msg.1%\002"
set black(say.ro.us.4) "\005\[BT\]\005 \002%msg.1%\002 are suspend dat de un user cu nivel mai mare."

################################## r ##############################################

set black(say.ro.r.1) {	"Reimprospatez topicul...."
			"Reincarc topicul...."
				}
set black(say.ro.r.2) "\005\[BT\]\005 Nu pot executa. Nu exista niciun topic." 

################################## Auto ##########################################

set black(say.ro.auto.6) "\005\[BT\]\005 Ti-am setat autoop (+o) global"
set black(say.ro.auto.7) "\005\[BT\]\005 Ti-am setat autovoice (+v) global"
set black(say.ro.auto.8) "\005\[BT\]\005 Ti-am setat autoop pe \002%chan%\002"
set black(say.ro.auto.9) "\005\[BT\]\005 Ti-am setat autovoice pe \002%chan%\002"
set black(say.ro.auto.10) "\005\[BT\]\005 Am setat autoop pentru \001%msg.1%\001 pe \002%chan%\002"
set black(say.ro.auto.11) "\005\[BT\]\005 Am setat autovoice pentru \001%msg.1%\001 pe \002%chan%\002"
set black(say.ro.auto.12) "\005\[BT\]\005 Am setat autoop global pentru \002%msg.1%\002"
set black(say.ro.auto.13) "\005\[BT\]\005 Am setat autovoice global pentru \002%msg.1%\002"
set black(say.ro.auto.14) "\005\[BT\]\005 Ti-am sters autoop (+o) global"
set black(say.ro.auto.15) "\005\[BT\]\005 Ti-am sters autovoice (+v) global"
set black(say.ro.auto.16) "\005\[BT\]\005 Ti-am sters autoop pe \002%chan%\002"
set black(say.ro.auto.17) "\005\[BT\]\005 Ti-am sters autovoice pe \002%chan%\002"
set black(say.ro.auto.18) "\005\[BT\]\005 Am sters autoop pentru \001%msg.1%\001 pe \002%chan%\002"
set black(say.ro.auto.19) "\005\[BT\]\005 Am sters autovoice pentru \001%msg.1%\001 pe \002%chan%\002"
set black(say.ro.auto.20) "\005\[BT\]\005 Am sters autoop global pentru \002%msg.1%\002"
set black(say.ro.auto.21) "\005\[BT\]\005 Am sters autovoice global pentru \002%msg.1%\002"

################################# Login #########################################

set black(say.ro.login.1) "\005\[BT\]\005 Ma loghez la \002%msg.1%\002.."
set black(say.ro.login.2) "\005\[BT\]\005 Sunt deja logat la \002%msg.1%\002.."
set black(say.ro.login.3) "\005\[BT\]\005 Nu m-am putut loga. Te rog sa verifici datele de logare sau daca chanserv este online."
set black(say.ro.login.4) "\005\[BT\]\005 Nu m-am putut loga (Parola gresita)"
set black(say.ro.login.5) "\005\[BT\]\005 Logare reusita"
set black(say.ro.login.6) "\005\[BT\]\005 Logare nereusita (s-a depasit numarul maxim de logari)"
set black(say.ro.login.7) "\005\[BT\]\005 Logare nereusita (nu s-a specificat un username)"
set black(say.ro.login.8) "\005\[BT\]\005 Logare nereusita (username invalid)"
set black(say.ro.login.9) "\005\[BT\]\005 Ma identific la NICKSERV..."
set black(say.ro.login.10) "\005\[BT\]\005 Identificare reusita la NICKSERV"
set black(say.ro.login.11) "\005\[BT\]\005 Identificare esuata la NICKSERV (Parola gresita)"
set black(say.ro.login.13) "Parola gresita"
set black(say.ro.login.15) "Nickname inregistrat de altcineva"
set black(say.ro.login.16) "\005\[BT\]\005 Identificare esuata la NICKSERV (nickname inregistrat de altcineva)"

################################# Enable #####################################

set black(say.ro.enable.1) "\005\[BT\]\005 Am activat comanda \001%msg.1%\001 pe \002%chan%\002"
set black(say.ro.enable.2) "\005\[BT\]\005 Comanda \001%msg.1%\001 este deja activata pe \002%chan%\002"
set black(say.ro.enable.3) "\005\[BT\]\005 Comanda \002%msg.1%\002 nu exista"
set black(say.ro.enable.4) "\005\[BT\]\005 Am activat comanda \001%msg.1%\001 pentru \002%msg.2%\002 pe \002%chan%\002"
set black(say.ro.enable.5) "\005\[BT\]\005 Comanda \001%msg.1%\001 este deja activata pentru \002%msg.2%\002 pe \002%chan%\002"
set black(say.ro.enable.6) "\005\[BT\]\005 Am activat comanda \001%msg.1%\001 \002GLOBAL\002"
set black(say.ro.enable.7) "\005\[BT\]\005 Comanda \001%msg.1%\001 este deja activata \002GLOBAL\002"
set black(say.ro.enable.8) "\005\[BT\]\005 ATENTIE, comanda \001%msg.1%\001 este dezactivata \002GLOBAL\002"
set black(say.ro.enable.9) "\005\[BT\]\005 Nu pot executa, comanda \002%msg.1%\002 este dezactivata de un user cu nivel de access mai mare."

################################# Disable #####################################

set black(say.ro.disable.1) "\005\[BT\]\005 Am dezactivat comanda \001%msg.1%\001 pe \002%chan%\002"
set black(say.ro.disable.2) "\005\[BT\]\005 Comanda \001%msg.1%\001 este deja dezactivata pe \002%chan%\002"
set black(say.ro.disable.3) "\005\[BT\]\005 Comanda \001%msg.1%\001 nu exista."
set black(say.ro.disable.4) "\005\[BT\]\005 Am dezactivat comanda \001%msg.1%\001 pentru \002%msg.2%\002 pe \002%chan%\002"
set black(say.ro.disable.5) "\005\[BT\]\005 Comanda \001%msg.1%\001 este deja dezactivata pentru \002%msg.2%\002 pe \002%chan%\002"
set black(say.ro.disable.6) "\005\[BT\]\005 Am dezactivat comanda \001%msg.1%\001 \002GLOBAL\002"
set black(say.ro.disable.7) "\005\[BT\]\005 Comanda \001%msg.1%\001 este deja dezactivata \002GLOBAL\002"
set black(say.ro.disable.8) "\005\[BT\]\005 Nu poti dezactiva comanda \002%msg.1%\002"

################################### Module #######################################

set black(say.ro.hmodule.1) "%msg%"
set black(say.ro.hmodule.3) "Pentru a vizualiza \002Manualul\002 fiecarui modul foloseste: \001%char%man <modul>\001 | \002%botnick% man <modul>\002"

####################################### h ########################################

set black(say.ro.h.1) "\005\[BT\]\005 NIVEL ACCESS \002-= %msg% =-\002"
set black(say.ro.h.2) "\005\[BT\]\005 \002%char%h\002 cmds ; \002%char%h\002 ban ; \002%char%h\002 add ; \002%char%h\002 chaninfo ; \002%char%h\002 BTinfo ; \002%char%h\002 module ; \002%char%h\002 egg ; \002%char%h\002 owner"
set black(say.ro.h.3) "\005\[BT\]\005 NIVEL ACCESS \002-= %msg% =-\002"
set black(say.ro.h.4) "\005\[BT\]\005 \002%char%h\002 cmds ; \002%char%h\002 ban ; \002%char%h\002 add ; \002%char%h\002 chaninfo ; \002%char%h\002 BTinfo ; \002%char%h\002 module ; \002%char%h\002 egg ; \002%char%h\002 owner"
set black(say.ro.h.5) "\005\[BT\]\005 NIVEL ACCESS \002-= %msg% =-\002"
set black(say.ro.h.6) "\005\[BT\]\005 \002%char%h\002 cmds ; \002%char%h\002 ban ; \002%char%h\002 module"
set black(say.ro.h.7) "\005\[BT\]\005 NIVEL ACCESS \002-= %msg% =-\002"
set black(say.ro.h.8) "\005\[BT\]\005 \002%char%h\002 cmds ; \002%char%h\002 ban ; \002%char%h\002 module"
set black(say.ro.h.11) "\005\[BT\]\005 NIVEL ACCESS \002-= %msg% =-\002"
set black(say.ro.h.12) "\005\[BT\]\005 \002%char%h\002 cmds ; \002%char%h\002 ban ; \002%char%h\002 add ; \002%char%h\002 module"
set black(say.ro.h.13) "\005\[BT\]\005 NIVEL ACCESS \002-= %msg% =-\002"
set black(say.ro.h.14) "\005\[BT\]\005 \002%char%h\002 cmds ; \002%char%h\002 ban ; \002%char%h\002 add ; \002%char%h\002 chaninfo ; \002%char%h\002 BTinfo ; \002%char%h\002 module"
set black(say.ro.h.15) "\005\[BT\]\005 %msg%"
set black(say.ro.h.16) "\005\[BT\]\005 Te rog asteapta \001%msg.1%\001 de secunde inainte de a executa o alta comanda de tip \002%char%h\002. Multumesc!"
set black(say.ro.h.17) "\005\[BT\]\005 \002h\002 cmds ; \002h\002 ban ; \002h\002 add ; \002h\002 chaninfo ; \002h\002 BTinfo ; \002h\002 module ; \002h\002 egg ; \002h\002 owner"
set black(say.ro.h.18) "\005\[BT\]\005 \002h\002 cmds ; \002h\002 ban ; \002h\002 add ; \002h\002 chaninfo ; \002h\002 BTinfo ; \002h\002 module"
set black(say.ro.h.19) "\005\[BT\]\005 \002h\002 cmds ; \002h\002 ban ; \002h\002 add ; \002h\002 module"
set black(say.ro.h.20) "\005\[BT\]\005 \002h\002 cmds ; \002h\002 ban ; \002h\002 module"
set black(say.ro.h.21) "\005\[BT\]\005 %botnick% \002h\002 cmds ; %botnick% \002h\002 ban ; %botnick% \002h\002 add ; %botnick% \002h\002 chaninfo ; %botnick% \002h\002 BTinfo ; %botnick% \002h\002 module ; %botnick% \002h\002 egg ; %botnick% \002h\002 owner"
set black(say.ro.h.22) "\005\[BT\]\005 %botnick% \002h\002 cmds ; %botnick% \002h\002 ban ; %botnick% \002h\002 add ; %botnick% \002h\002 chaninfo ; %botnick% \002h\002 BTinfo ; %botnick% \002h\002 module"
set black(say.ro.h.23) "\005\[BT\]\005 %botnick% \002h\002 cmds ; %botnick% \002h\002 ban ; %botnick% \002h\002 add ; %botnick% \002h\002 module"
set black(say.ro.h.24) "\005\[BT\]\005 %botnick% \002h\002 cmds ; %botnick% \002h\002 ban ; %botnick% \002h\002 module"
set black(say.ro.h.25) "\005\[BT\]\005 \002%char%h\002 cmds ; \002%char%h\002 ban ; \002%char%h\002 add ; \002%char%h\002 chaninfo ; \002%char%h\002 BTinfo ; \002%char%h\002 module ; \002%char%h\002 master"
set black(say.ro.h.26) "\005\[BT\]\005 \002h\002 cmds ; \002h\002 ban ; \002h\002 add ; \002h\002 chaninfo ; \002h\002 BTinfo ; \002h\002 module ; \002h\002 master"
set black(say.ro.h.27) "\005\[BT\]\005 %botnick% \002h\002 cmds ; %botnick% \002h\002 ban ; %botnick% \002h\002 add ; %botnick% \002h\002 module ; %botnick% \002h\002 master"

set black(say.ro.hcommand.1) "\005\[BT\]\005 Pentru a vizualiza \002Manualul\002 fiecarei comenzi, foloseste: \001%char%man <comanda>\001. Pentru a da comenzile si in \002DCC\002 foloseste: \001.bt <comanda> \[#canal\] \[argumente\]\001"
set black(say.ro.hcommand.2) "\005\[BT\]\005 Pentru a vizualiza \002Manualul\002 fiecarei comenzi, foloseste: \001%botnick% man <comanda>\001. Pentru a da comenzile si in \002DCC\002 foloseste: \001.bt <comanda> \[#canal\] \[argumente\]\001"
set black(say.ro.hcommand.3) "\005\[BT\]\005 Pentru a vizualiza \002Manualul\002 fiecarei comenzi, foloseste: \001man <comanda>\001. Pentru a da comenzile si in \002DCC\002 foloseste: \001.bt <comanda> \[#canal\] \[argumente\]\001"
set black(say.ro.hcommand.4) "\005\[BT\]\005 Pentru a vizualiza \002Manualul\002 fiecarei setari, foloseste: \001%char%man <setare>\001"
set black(say.ro.hcommand.5) "\005\[BT\]\005 Pentru a vizualiza \002Manualul\002 fiecarei setari, foloseste: \001%botnick% man <setare>\001"
set black(say.ro.hcommand.6) "\005\[BT\]\005 Pentru a vizualiza \002Manualul\002 fiecarei setari, foloseste: \001man <setare>\001"
set black(say.ro.hcommand.7) "\005\[BT\]\005 Pentru a vizualiza \002Manualul\002 fiecarui modul, foloseste: \001%char%man <modul>\001"
set black(say.ro.hcommand.8) "\005\[BT\]\005 Pentru a vizualiza \002Manualul\002 fiecarui modul, foloseste: \001%botnick% man <modul>\001"
set black(say.ro.hcommand.9) "\005\[BT\]\005 Pentru a vizualiza \002Manualul\002 fiecarui modul, foloseste: \001man <modul>\001"

set black(say.ro.cmdsvoice) "v \[#canal\] \[nick\] ; man <comanda> ; version ; i \[#canal\] <nick> ; seen \[#canal\] <nick|ip|host> ; for <botnick1>,<botnick2> <comanda> \[optiune\] ; activ \[#canal\] <nick> ; myset <optiune> \[descriere\] \[show|reset\] ; report \[#canal\] <nick> ; h \[#canal\] \[categorie\]"
set black(say.ro.cmdsop) "o \[#canal\] \[nick\] ; v \[#canal\] \[nick\] ; ho \[#canal\] \[nick\] ; man <comanda> ; version ; mode \[#canal\] <+/-mod> ; cycle \[#canal\] \[durata|motiv\] ; i \[#canal\] <nick> ; seen \[#canal\] <nick|ip|host> ; for <botnick1>,<botnick2> <comanda> \[optiune\] ; activ \[#canal\] <nick> ; t \[#canal\] <text> ; myset <optiune> \[descriere\] \[show|reset\] ; h \[#canal\] \[categorie\] ; r \[#canal\] ; omsg \[#canal|all\] <text>"
set black(say.ro.cmdadmin) "o \[#canal\] \[nick\] ; v \[#canal\] \[nick\] ; ho \[#canal\] \[nick\] ; man <comanda> ; version ; mode \[#canal\] <+/-mod> ; cycle \[#canal\] \[durata|motiv\] ; say \[#canal\] <text> ; act \[#canal\] <text> ; i \[#canal\] <nick> ; seen \[#canal\] <nick|ip|host> ; for <botnick1>,<botnick2> <comanda> \[optiune\] ; activ \[#canal\] <nick> ; t \[#canal\] <text> ; myset <optiune> \[descriere\] \[show|reset\] ; h \[#canal\] \[categorie\] ; r \[#canal\] ; omsg \[#canal|all\] <text>"
set black(say.ro.cmdmanager) "o \[#canal\] \[nick\] ; v \[#canal\] \[nick\] ; ho \[#canal\] \[nick\] ; man <comanda> ; version ; mode \[#canal\] <+/-mod> ; cycle \[#canal\] \[durata|motiv\] ; say \[#canal\] <text> ; act \[#canal\] <text> ; i \[#canal\] <nick> ; seen \[#canal\] <nick|ip|host> ; for <botnick1>,<botnick2> <comanda> \[optiune\] ; activ \[#canal\] <nick> ; t \[#canal\] <text> ; myset <optiune> \[descriere\] \[show|reset\] ; h \[#canal\] \[categorie\] ; r \[#canal\] ; omsg \[#canal|all\] <text>"
set black(say.ro.cmdbossowner) "o \[#canal\] \[nick\] ; v \[#canal\] \[nick\] ; ho \[#canal\] \[nick\] ; man <comanda> ; version ; mode \[#canal\] <+/-mod> ; cycle \[#canal\] \[durata|motiv\] ; say \[#canal\] <text> ; act \[#canal\] <text> ; seen \[#canal|global\] <nick|ip|host> ; for <botnick1>,<botnick2> <comanda> \[optiune\] ; broadcast <text> ; i \[#canal\] <nick> ; activ \[#canal\] <nick> ; t \[#canal\] <text> ; myset <optiune> \[descriere\] \[show|reset\] ; h \[#canal\] \[categorie\] ; r \[#canal\] ; msg <nick> <text> ; omsg \[#canal|all\] <text>"
set black(say.ro.cmdmaster) "o \[#canal\] \[nick\] ; v \[#canal\] \[nick\] ; ho \[#canal\] \[nick\] ; man <comanda> ; version ; mode \[#canal\] <+/-mod> ; cycle \[#canal\] \[durata|motiv\] ; say \[#canal\] <text> ; act \[#canal\] <text> ; seen \[#canal|global\] <nick|ip|host> ; for <botnick1>,<botnick2> <comanda> \[optiune\] ; i \[#canal\] <nick> ; activ \[#canal\] <nick> ; t \[#canal\] <text> ; myset <optiune> \[descriere\] \[show|reset\] ; h \[#canal\] \[categorie\] ; r \[#canal\] ; msg <nick> <text> ; omsg \[#canal|all\] <text>"

set black(say.ro.banvoice) "k \[#canal\] <nick|host> \[motiv\] ; w \[#canal\] <nick> ; sb \[#canal\] <nick|host|id>"
set black(say.ro.banop) "b \[#canal\] <nick|host> \[-nivel\] \[durata\] \[motiv\] ; dr \[#canal\] <nick|host> ; bot \[#canal\] <nick|host> ; n \[#canal\] <nick> ; id \[#canal\] <nick> ; spam \[#canal\] <nick|host> ; bw \[#canal\] <nick|host> ; vr \[#canal\] <nick|host> ; gag \[#canal\] <nick> \[durata\] \[motiv\] ; ungag \[#canal\] <nick|host> ; troll \[#canal\] <nick> ; mb \[#canal\] <nick> \[reason\] ; ub \[#canal\] <nick|host|id> ; sb \[#canal\] <nick|host|id> ; banlist \[#canal\] <all|user|other> ; k \[#canal\] <nick|host> \[motiv\] ; w \[#canal\] <nick>"
set black(say.ro.banadmin) "b \[#canal\] <nick|host> \[-nivel\] \[durata\] \[motiv\] ; black \[#canal\] <nick|host> \[motiv\] ; stick \[#canal\] <nick|host> \[durata\] \[motiv\] ; dr \[#canal\] <nick|host> ; bot \[#canal\] <nick|host> ; n \[#canal\] <nick> ; id \[#canal\] <nick> ; spam \[#canal\] <nick|host> ; bw \[#canal\] <nick|host> ; vr \[#canal\] <nick|host> ; gag \[#canal\] <nick> \[durata\] \[motiv\] ; ungag \[#canal\] <nick|host> ; troll \[#canal\] <nick> ; mb \[#canal\] <nick> \[reason\] ; ub \[#canal\] <nick|host|id> ; sb \[#canal\] <nick|host|id> ; banlist \[#canal\] <all|user|other> ; stats <nick> \[total\] ; k \[#canal\] <nick|host> \[motiv\] ; w \[#canal\] <nick>"
set black(say.ro.banmanager) "b \[#canal\] <nick|host> \[-nivel\] \[durata\] \[motiv\] ; black \[#canal\] <nick|host> \[motiv\] ; stick \[#canal\] <nick|host> \[durata\] \[motiv\] ; dr \[#canal\] <nick|host> ; bot \[#canal\] <nick|host> ; n \[#canal\] <nick> ; id \[#canal\] <nick> ; spam \[#canal\] <nick|host> ; bw \[#canal\] <nick|host> ; vr \[#canal\] <nick|host> ; gag \[#canal\] <nick> \[durata\] \[motiv\] ; ungag \[#canal\] <nick|host> ; troll \[#canal\] <nick> ; mb \[#canal\] <nick> \[reason\] ; ub \[#canal\] <nick|host|id> ; sb \[#canal\] <nick|host|id> ; exempt \[#canal\] <add|list|del> <ip|host> \[durata\] \[motiv\] ; banlist \[#canal\] <all|user|other> ; stats <nick> \[total|reset\] ; k \[#canal\] <nick|host> \[motiv\] ; w \[#canal\] <nick>"
set black(say.ro.banbossowner) "b \[#canal\] <nick|host> \[-nivel\] \[durata\] \[global|link\] \[motiv\] ; black \[#canal\] <nick|host> \[motiv\] ; stick \[#canal\] <nick|host> \[durata\] \[motiv\] ; dr \[#canal\] <nick|host> ; bot \[#canal\] <nick|host> ; n \[#canal\] <nick> ; id \[#canal\] <nick> ; spam \[#canal\] <nick|host> ; bw \[#canal\] <nick|host>; vr \[#canal\] <nick|host> ; gag \[#canal\] <nick> \[durata\] \[motiv\] ; ungag \[#canal\] <nick|host> ; troll \[#canal\] <nick> ; mb \[#canal\] <nick> \[reason\] ; ub \[#canal\] <nick|host|id> \[global|link\] ; sb \[#canal\] <nick|host|id> \[global\] ; exempt \[#canal\] <add|list|del> <ip|host> \[durata\] \[global\] \[motiv\] ; banlist \[#canal\] <all|user|other|global> ; stats <nick> \[total|reset\] ; k \[#canal\] <nick|host> \[motiv\] ; w \[#canal\] <nick>"
set black(say.ro.banmaster) "b \[#canal\] <nick|host> \[-nivel\] \[durata\] \[motiv\] ; black \[#canal\] <nick|host> \[motiv\] ; stick \[#canal\] <nick|host> \[durata\] \[motiv\] ; dr \[#canal\] <nick|host> ; bot \[#canal\] <nick|host> ; n \[#canal\] <nick> ; id \[#canal\] <nick> ; spam \[#canal\] <nick|host> ; bw \[#canal\] <nick|host> ; vr \[#canal\] <nick|host> ; gag \[#canal\] <nick> \[durata\] \[motiv\] ; ungag \[#canal\] <nick|host> ; troll \[#canal\] <nick> ; mb \[#canal\] <nick> \[reason\] ; ub \[#canal\] <nick|host|id> ; sb \[#canal\] <nick|host|id> ; exempt \[#canal\] <add|list|del> <ip|host> \[durata\] \[global\] \[motiv\] ; banlist \[#canal\] <all|user|other> ; stats <nick> \[total|reset\] ; k \[#canal\] <nick|host> \[motiv\] ; w \[#canal\] <nick>"

set black(say.ro.addadmin) "add \[#canal\] <nivel> <user chanserv|nick> ; userlist \[#canal\] <nivel|all> ; info \[#canal\] <user|#canal> ; delacc \[#canal\] <user> ; auto \[#canal\] <+/-o> <user> ; auto \[#canal\] <+/-v> <user> ; s \[#canal\] <user> \[durata\] \[motiv\] ; us \[#canal\] <user> ; addhost <user> <host> ; delhost <user> <host>"
set black(say.ro.addmanager) "add \[#canal\] <nivel> <user chanserv|nick> ; userlist \[#canal]\ <nivel|all> ; info \[#canal\] <user|#canal> ; delacc \[#canal\] <user> ; del <user> ; auto \[#canal\] <+/-o> <user> ; auto \[#canal\] <+/-v> <user> ; chuser <user> <user nou> ; s \[#canal\] <user> \[durata\] \[motiv\] ; us \[#canal\] <user> ; addhost <user> <host> ; delhost <user> <host>"
set black(say.ro.addowner) "add \[#canal\] <nivel> <user chanserv|nick>  ; userlist \[#canal\] <nivel|all> ; info \[#canal\] <user|#canal> ; delacc \[#canal\] <user> ; del <user> ; auto \[#canal\] <+/-o> <user> \[global\] ; auto \[#canal\] <+/-v> <user> \[global\] ; chuser <user> <user nou> ; s \[#canal\] <user> \[durata\] \[motiv\] ; us \[#canal\] <user> ; addhost <user> <host> ; delhost <user> <host>"
set black(say.ro.addbossowner) "add \[#canal\] <nivel> <user chanserv|nick> ; userlist \[#canal\] <nivel> ; info \[#canal\] <user|#canal> ; delacc \[#canal\] <user> ; del <user> ; auto \[#canal\] <+/-o> <user> \[global\] ; auto \[#canal\] <+/-v> <user> \[global\] ; chuser <user> <user nou> ; s \[#canal\] <user> \[durata\] \[motiv\] ; us \[#canal\] <user> ; addhost <user> <host> ; delhost <user> <host>"
set black(say.ro.addmaster) "add \[#canal\] <nivel> <user chanserv|nick> ; userlist \[#canal\] <nivel> ; info \[#canal\] <user|#canal> ; delacc \[#canal\] <user> ; del <user> ; auto \[#canal\] <+/-o> <user> ; auto \[#canal\] <+/-v> <user> ; chuser <user> <user nou> ; s \[#canal\] <user> \[durata\] \[motiv\] ; us \[#canal\] <user> ; addhost <user> <host> ; delhost <user> <host>"
set black(say.ro.hmanager.1) "purge \[#canal\] <motiv> ; set \[#canal\] <+/-optiune> ; set \[#canal\] <optiune> <descriere> ; unset \[#canal\] <optiune> ; show \[#canal\] <optiune> ; ignore <add|list|del> <host> \[durata\] \[motiv\] ; enable <comanda|all> \[user\] ; disable <comanda|all> \[user\]"
set black(say.ro.hbossowner.1) "addchan <#canal> ; delchan <#canal> ; suspend <#canal> ; unsuspend <#canal>; set \[#canal|global\] <optiune> <descriere> ; unset \[#canal|global\] <optiune> ; show \[#canal\] <optiune> ; channels ; die \[motiv\] ; restart ; jump \[server\] ; save ; rehash ; login ; nick <nicknou> ; uptime ; status ; cp <optiune> <#canal1> <#canal2> ; ignore <add|list|del> <host> \[durata\] \[motiv\] ; enable <comanda|all> \[user\] \[global\] ; disable <comanda|all> \[user\] \[global\] ; chat"
set black(say.ro.hmaster.1) "addchan <#canal> ; delchan <#canal> ; suspend <#canal> ; unsuspend <#canal>; set \[#canal\] <optiune> <descriere> ; unset \[#canal\] <optiune> ; show \[#canal\] <optiune> ; channels ; uptime ; status ; ignore <add|list|del> <host> \[durata\] \[motiv\] ; enable <comanda|all> \[user\] ; disable <comanda|all> \[user\]"
set black(say.ro.hchaninfo.1) "\002Flaguri Eggdrop\002: "
set black(say.ro.hchaninfo.2) "\002BT Setari\002: "
set black(say.ro.hchaninfo.3) "\002Str Eggdrop\002"
set black(say.ro.hchaninfo.4) "\002BT Str\002: "
set black(say.ro.hegg.1) "\005\[BT\]\005 %msg%"
set black(say.ro.hegg.2) "\005\[BT\]\005 Pentru a vizualiza \002Manualul\002 fiecarei optiuni, foloseste: \001%char%man <optiune>\001"
set black(say.ro.hegg.3) "\005\[BT\]\005 Pentru a vizualiza \002Manualul\002 fiecarei optiuni, foloseste: \001%botnick% man <optiune>\001"
set black(say.ro.hegg.4) "\005\[BT\]\005 Pentru a vizualiza \002Manualul\002 fiecarei optiuni, foloseste: \001man <optiune>\001"

############################### GREETING #######################################

set black(say.ro.greeting.1) "\005\[BT\]\005 Bun venit in lumea \001BlackToolS\001 versiunea \002$black(vers)\002. Pentru a incepe, trebuie sa definiti urmatoarele setari:"
set black(say.ro.greeting.2) "\002%char%myset mychar\002 <trigger> ( setare trigger dorit ) ; \001%char%myset lang\001 <limba> ( RO | EN | ES )"
set black(say.ro.greeting.3) "\001%char%myset mychan\001 <#canal> ; \002%char%myset output\002 <metoda> ( CHAN | NOTICE )"
set black(say.ro.greeting.4) "\002%char%myset noteexpire\002 <nr. zile> ; \001%char%myset greet\001 <mesaj> ; \002%char%myset autoinvite\002 <ON|OFF>"
set black(say.ro.greeting.5) "\005\[BT\]\005 Foloseste \001%char%h\001 pe orice canal in care se afla botul pentru o \002lista completa\002 a comenzilor disponibile."
set black(say.ro.greeting.6) "\005\[BT\]\005 Pentru a citi \001manualul BlackTools\001 al setarilor, foloseste: \001%char%man <setare>\001. Have Fun! >:)"

################################### Abuse Report ###############################

set black(say.ro.abuse.1) "\005\[BT\]\005 Nu pot intra pe \001%msg.1%\001. Motiv: BAN"
set black(say.ro.abuse.2) "Nu pot intra pe \001%chan%\001 deoarece am BAN (+b)"
set black(say.ro.abuse.3) "\005\[BT\]\005 Nu pot intra pe \001%msg.1%\001. Motiv: INVITE ONLY"
set black(say.ro.abuse.4) "Nu pot intra pe \001%chan%\001 deoarece este INVITE ONLY (+i)"
set black(say.ro.abuse.5) "\005\[BT\]\005 Nu pot intra pe \001%msg.1%\001. Motiv: KEY"
set black(say.ro.abuse.6) "Nu pot intra pe \001%chan%\001 deoarece este pus KEY (+k)"
set black(say.ro.abuse.7) "\005\[BT\]\005 Nu pot intra pe \001%msg.1%\001. Motiv: CHANNEL FULL"
set black(say.ro.abuse.8) "Nu pot intra pe \001%chan%\001 deoarece canalul este plin (+l)"
set black(say.ro.abuse.9) "\005\[BT\]\005 Am suspendat canalul \001%msg.1%\001 pentru abuz."
set black(say.ro.abuse.10) "Am suspendat canalul \001%msg.1%\001 pentru abuz."
set black(say.ro.abuse.11) "Nu pot intra pe %chan% deoarece este RESTRICTIE DE MOD (+r)"
set black(say.ro.abuse.12) "\005\[BT\]\005 Nu pot intra pe \001%msg.1%\001. Motiv: RESTRICTIE DE MOD"

################################### ChanLink ###################################

set black(say.ro.chanlink.1) "\005\[BT\]\005 Am setat \002CHANLINK\002 pentru canalele: \001%msg%\001"
set black(say.ro.chanlink.2) "\005\[BT\]\005 Am resetat \002CHANLINK\002"
set black(say.ro.chanlink.3) "\005\[BT\]\005 Urmatoarele canale au setat \002CHANLINK\002: \001%msg%\001"
set black(say.ro.chanlink.4) "\005\[BT\]\005 Am setat \002CHANLINK\002 pentru toate canalele din memorie."
set black(say.ro.chanlink.5) "\005\[BT\]\005 Nu sunt canale ce au setat \002CHANLINK\002"
set black(say.ro.chanlink.6) "\005\[BT\]\005 Urmatoarele canale sunt invalide: \001%msg%\001"
set black(say.ro.chanlink.7) "\005\[BT\]\005 Am sters \002CHANLINK\002 pentru \001%msg.1%\001"
set black(say.ro.chanlink.8) "\005\[BT\]\005 \001%msg.1%\001 nu are activat \002CHANLINK\002."

###################################### O #######################################

set black(say.ro.o.1) "\005\[BT\]\005 Nu poti folosi mass deop deoarece \001%msg.1%\001 este pe \002%chan%\002."

################################### man ########################################

set black(say.ro.man.1_1) "\005\[BT\]\005 Imi pare rau \001%msg.1%\001, nu am nicio informatie de ajutor despre acest subiect."

#################################### User Expire ###############################

set black(say.ro.userexpire.1) "\[BT\] Expirare automata useri: \002%msg.1%\002 useri expirati gasiti."

#################################### hello #####################################

set black(say.ro.hello.1) "*** HOORAH! *** Ai access de \002%msg%\002 la comenzile mele."
set black(say.ro.hello.2) "\005\[BT\]\005 Salut \001%msg.1%\001. Sunt \002%botnick%\002, un eggdrop ce ruleaza \001%msg.2%\001 %msg.3%."
set black(say.ro.hello.3) "\005\[BT\]\005 De acum incolo o sa te recunosc dupa host-ul '\001%msg.1%\001'. Te rog seteaza-ti o parola, folosind: \001/msg \002%botnick% pass\002 <parola ta>\001"
set black(say.ro.hello.4) "\005\[BT\]\005 Poti folosi \002%char%h\002 in orice canal pe care se afla botul pentru a obtine o lista completa cu toate comenzile disponibile. Distractie placuta :D"

#################################### Pass ######################################

set black(say.ro.pass.1) "\005\[BT\]\005 Parola ta setata este: \002%msg%\002"

#################################### oMsg ######################################

set black(say.ro.omsg.1) "\005\[BT\]\005 Mesaj trimis catre toti @ de pe: \002%msg%\002"

#################################### forward ###################################

set black(say.ro.forward.1) "\005\[BT\]\005 \004\[MESAJ PRIVAT\]\004 de la -- <\002%msg.1%\002> ��� \001%msg.8%\001"

##################################### mb #######################################

set black(say.ro.mb.5) "Client de IRC folosit pentru abuz. Te rog sa iei in considerare folosirea unui alt client."

##################################### HandleBan ################################

set black(say.ro.handleban.1) "User in BlackList!"

##################################### Exempt ###################################

set black(say.ro.exempt.1) "Permanent"
set black(say.ro.exempt.2) "\005\[BT\]\005 \[CANAL\]: * (\002%msg.1%\002 exceptii gasite)"
set black(say.ro.exempt.3) "\005\[BT\]\005 Pentru a afisa urmatoarele exceptii foloseste: \001%char%exempt list global -next\001 (\002%counter%\002 exceptii ramase)"
set black(say.ro.exempt.4) "\005\[BT\]\005 *** Sfarsit exempts ***"
set black(say.ro.exempt.5) "\005\[BT\]\005 \002%msg.2%\002 ; \002%msg.3%\002 ; Adaugat de: \002%msg.4%\002 ; Data: \002%msg.12%\002 ; Expira in: %msg.13% \002%msg.15%\002 \002%msg.17%\002 ; Motiv: %msg.20%"
set black(say.ro.exempt.6) "\005\[BT\]\005 \[CANAL\]: %chan% (\002%msg.1%\002 exceptii gasite)"
set black(say.ro.exempt.10) "\005\[BT\]\005 Pentru a afisa urmatoarele banuri foloseste: \001%char%exempt list -next\001 (\002%counter%\002 exceptii ramase)"
set black(say.ro.exempt.11) "\005\[BT\]\005 \002%msg.2%\002 ; \002%msg.3%\002 ; Adaugat de: \002%msg.4%\002 ; Data: \002%msg.12%\002 ; Expira in: %msg.13% ; Motiv: %msg.14%"
set black(say.ro.exempt.13) "NICIODATA"
set black(say.ro.exempt.14) "\005\[BT\]\005 Pentru a afisa urmatoarele exceptii foloseste: \001%char%exempt %chan% list -next\001 (\002%counter%\002 banuri ramase)"
set black(say.ro.exempt.7) "\005\[BT\]\005 Am adaugat exceptie la ban pentru host \002%msg.1%\002 pe %chan%"
set black(say.ro.exempt.8) "\005\[BT\]\005 Am adaugat exceptie la ban pentru host \002%msg.1%\002 pentru toate canalele."
set black(say.ro.exempt.9) "\005\[BT\]\005 Am sters exceptia la ban pentru host \002%msg.1%\002 pe %chan%"
set black(say.ro.exempt.12) "\005\[BT\]\005 Am sters exceptia la ban pentru host \002%msg.1%\002 pe toate canalele"
set black(say.ro.exempt.15) "\005\[BT\]\005 Nu exista exceptie la ban pentru host \002%msg.1%\002 pe %chan%"
set black(say.ro.exempt.16) "\005\[BT\]\005 Nu exista exceptie la ban pentru host \002%msg.1%\002 pentru toate canalele"

###################################### AutoUpdate ################################

set black(say.ro.autoupdate.1) "\005\[BT\]\005 Nu am putut executa \%msg.1%\001 : Pachetul \002TLS\002 nu este instalat."
set black(say.ro.autoupdate.2) "\005\[BT\]\005 Update-ul a esuat, nu am putut verifica daca exista noi update-uri."
set black(say.ro.autoupdate.3) "\005\[BT\]\005 Am gasit versiune \001NOUA\001 de BlackTools \002%msg.1%\002, pornesc descarcarea.."
set black(say.ro.autoupdate.4) "\005\[BT\]\005 Am gasit noi bugfix-uri pentru versiunea de \002BlackTools %msg.1%\002 instalata, pornesc descarcarea.."
set black(say.ro.autoupdate.5) "\005\[BT\]\005 Nu am gasit noi update-uri."
set black(say.ro.autoupdate.6) "\005\[BT\]\005 Update-ul a esuat : \002%msg.1%\002"
set black(say.ro.autoupdate.7) "\005\[BT\]\005 Sterg backup facut de la ultimul update realizat..."
set black(say.ro.autoupdate.8) "\005\[BT\]\005 Salvez copie de rezerva pentru director \001BlackTools\001 .."
set black(say.ro.autoupdate.9) "\005\[BT\]\005 Salvare copie de rezerva la \001BlackTools\001 esuata : \002%msg.1%\002"
set black(say.ro.autoupdate.10) "\005\[BT\]\005 Update esuat, nu am putut face copie de rezerva la \001BlackTools.tcl\001."
set black(say.ro.autoupdate.11) "\005\[BT\]\005 Salvare copie de rezerva la \001BlackTools.tcl\001 .. realizata"
set black(say.ro.autoupdate.12) "\005\[BT\]\005 Copie de rezerva finalizata."
set black(say.ro.autoupdate.13) "\005\[BT\]\005 Salvez informatii din vechiul \001BlackTools.tcl\001 ..."
set black(say.ro.autoupdate.14) "\005\[BT\]\005 Sterg vechiul \001BlackTools\001 in totalitate ..."
set black(say.ro.autoupdate.15) "\005\[BT\]\005 Descarcare BlackTools \002%msg.1%\002. Ultimul bugfix realizat: \002%msg.2%\002"
set black(say.ro.autoupdate.16) "\005\[BT\]\005 Update esuat, nu am putut descarca \001BlackTools\001."
set black(say.ro.autoupdate.17) "\005\[BT\]\005 \001BlackTools\001 descarcat in \002%msg.1%\002"
set black(say.ro.autoupdate.18) "\005\[BT\]\005 Readuc informatiile din vechiul \001BlackTools.tcl\001 ..."
set black(say.ro.autoupdate.19) "\005\[BT\]\005 Restaurat \002%msg.1%\002 variabile din vechiul \001BlackTools.tcl\001."
set black(say.ro.autoupdate.20) "\005\[BT\]\005 Nicio variabila restaurata din vechiul \001BlackTools.tcl\001."
set black(say.ro.autoupdate.21) "\005\[BT\]\005 Readuc setari, banuri si alte informatii ..."
set black(say.ro.autoupdate.22) "\005\[BT\]\005 Nu am gasit niciun fisier care sa contina setari, banuri sau alte informatii ..."
set black(say.ro.autoupdate.23) "\005\[BT\]\005 Restaurat (\002%msg.1%\002) fisiere care contin setari, banuri si alte informatii."
set black(say.ro.autoupdate.24) "\005\[BT\]\005 Update pentru \001BlackTools\001 finalizat in \002%msg.1%\002 . Changelog: \002https://github.com/tclscripts/BlackTools-TCL/blob/master/ChangeLog\002"
set black(say.ro.autoupdate.25) "\005\[BT\]\005 Daca ceva nu a mers cum trebuie, copia de rezerva o gasiti in \001\"%msg.1%\"\001 pana la urmatorul update. Puteti vizualiza si LOG-ul de update in \001\"%msg.2%\"\001"
set black(say.ro.autoupdate.26) "\005\[BT\]\005 Tineti minte, pentru informatii si anuntare bug-uri pentru BT --- \002WwW.TclScripts.Net\002"
set black(say.ro.autoupdate.27) "\005\[BT\]\005 Update pornit la \001%msg.1%\001"
set black(say.ro.autoupdate.28) "\005\[BT\]\005 Verific de noi update-uri .."
set black(say.ro.autoupdate.29) "\005\[BT\]\005 Este deja pornit.."
set black(say.ro.autoupdate.30) "\005\[BT\]\005 Nu am putut porni update. Motiv: \002%msg%\002"
set black(say.ro.autoupdate.31) "\005\[BT\]\005 Nu am putut verifica daca exista update-uri noi. Te rog incearca mai tarziu."
set black(say.ro.autoupdate.32) "\005\[BT\]\005 Am gasit versiune noua de \001BlackTools\001 : \002%msg%\002. Foloseste \001%char%update start\001 pentru a porni update."
set black(say.ro.autoupdate.33) "\005\[BT\]\005 Nu am gasit versiune noua de \001BlackTools\001 dar in schimb am gasit un bugfix (\002%msg%\002) pentru versiunea curenta. Foloseste \001%char%update start\001 pentru a porni update."
set black(say.ro.autoupdate.34) "\005\[BT\]\005 \001AutoUpdate\001 este dezactivat. Motiv: \002%msg%\002"
set black(say.ro.autoupdate.35) "\005\[BT\]\005 \001AutoUpdate\001 este deja \002pornit\002.."
set black(say.ro.autoupdate.36) "\005\[BT\]\005 Ai \002pornit\002 modulul de \001AutoUpdate\001."
set black(say.ro.autoupdate.37) "\005\[BT\]\005 \001AutoUpdate\001 este deja \002oprit\002.."
set black(say.ro.autoupdate.38) "\005\[BT\]\005 Ai \002oprit\002 modulul de \001AutoUpdate\001."
set black(say.ro.autoupdate.39) "\005\[BT\]\005 \001AutoUpdate\001 ruleaza in acest moment.."
set black(say.ro.autoupdate.40) "\005\[BT\]\005 \001AutoUpdate\001 sarit momentan. Motiv: \002Update manual activat\002."
set black(say.ro.autoupdate.41) "\005\[BT\]\005 Timpul de \001AutoUpdate\001 este setat la: \002%msg.1%\002 minute"
set black(say.ro.autoupdate.42) "\005\[BT\]\005 Am setat timpul pentru \001AutoUpdate\001 la: \002%msg.1%\002 (%msg.2% minute)"
set black(say.ro.autoupdate.43) "\005\[BT\]\005 AutoUpdate a gasit un \001update\001 nou: BlackTools \002%msg.1%\002 (Ultimul update: \001%msg.2%\001)."
set black(say.ro.autoupdate.45) "\005\[BT\]\005 Pentru a finaliza acest update este necesara repornirea eggdrop-ului prin intermediul comenzii de \002restart\002"
set black(say.ro.autoupdate.46) "\005\[BT\]\005 Restart automat in 10 secunde pentru a finaliza update-ul."
set black(say.ro.autoupdate.47) "\005\[BT\]\005 Ultimul update (\001%msg.1%\001) a fost instalat de catre alt eggdrop din aceeasi arhiva. Foloseste \001%char%update start\001 pentru a finaliza update."
set black(say.ro.autoupdate.48) "\005\[BT\]\005 Ultimul update (\001%msg.1%\001) gasit ca instalat de catre alt eggdrop din aceeasi arhiva. Finalizez update.."
set black(say.ro.autoupdate.49) "\005\[BT\]\005 \001AutoUpdate\001 este oprit definitiv."

######################################## ALIAS ###################################

set black(say.ro.alias.1) "\005\[BT\]\005 Foloseste \002%char%alias\002 add <cmd> \[arguments\]"
set black(say.ro.alias.2) "\005\[BT\]\005 \002%msg.1%\002 nu este o comanda valida pentru tine."
set black(say.ro.alias.3) "\005\[BT\]\005 \002%msg.1%\002 este deja adaugat ca \001alias\001 cu comanda: \002%msg.2%\002"
set black(say.ro.alias.4) "\005\[BT\]\005 \002%msg.1%\002 a fost adaugata ca \001alias\001 cu comanda: \002%msg.2%\002"
set black(say.ro.alias.5) "\005\[BT\]\005 \002%msg.1%\002 nu este adaugata ca \001alias\001"
set black(say.ro.alias.6) "\005\[BT\]\005 Am sters \002%msg.1%\002 din lista de comenzi \001alias\001"
set black(say.ro.alias.7) "\002COMENZI ALIAS:\002"

######################################## VOTE ###################################

set black(say.ro.vote.1) "\005\[BT\]\005 Foloseste \002%char%vote\002 add <nume vote> -option <optiune 1> -option <optiune 2>.. \[-time \[DD/MM/YY HH:MM\]\] (timp expirare) \[-type 1/0\] (1 - useri cu access, 0 - toti utilizatorii)"
set black(say.ro.vote.2) "\005\[BT\]\005 Te rog foloseste un timp valid \[DD/MM/YY HH:MM\] ca exemplu 25/12/21 00:00" 
set black(say.ro.vote.3) "\005\[BT\]\005 Te rog foloseste un tip valid \[-type 1/0\] (\0021\002 - userli cu access, \0020\002 - toti utilizatorii)"
set black(say.ro.vote.4) "\005\[BT\]\005 Este deja o votare cu acelasi nume. Te rog alege altul."
set black(say.ro.vote.5) "\005\[BT\]\005 Am adaugat votarea cu ID-ul \002%msg.3%\002 si numele \"%msg.1%\" avand ca optiuni \[%msg.2%\]. Expira la: \002NICIODATA\002."
set black(say.ro.vote.6) "\005\[BT\]\005 Am adaugat votarea cu ID-ul \002%msg.4%\002 si numele \"%msg.1%\" avand ca optiuni \[%msg.2%\]. Expira la: \002%msg.3%\002."
set black(say.ro.vote.7) "\005\[BT\]\005 Foloseste \002%char%vote\002 del <id>"
set black(say.ro.vote.8) "\005\[BT\]\005 Nu am gasit nicio votare cu ID-ul: \002%msg.1%\002."
set black(say.ro.vote.9) "\005\[BT\]\005 Am sters votarea cu ID-ul: \002%msg.1%\002."
set black(say.ro.vote.10) "\005\[BT\]\005 Foloseste \002%char%vote\002 end <id>"
set black(say.ro.vote.11) "\005\[BT\]\005 Votarea avand ID-ul: \002%msg.1%\002 este deja incheiata."
set black(say.ro.vote.12) "\005\[BT\]\005 Am incheiat votarea cu ID-ul: \002%msg.1%\002."
set black(say.ro.vote.13) "\002ACTIV\002"
set black(say.ro.vote.14) "\002INCHEIAT\002"
set black(say.ro.vote.15) "\002Utilizatori cu access\002"
set black(say.ro.vote.16) "\002Toti utilizatorii\002"
set black(say.ro.vote.17) "\005\[BT\]\005 Detali votare -- ID: \002%msg.1%\002 ; Nume: \002%msg.2%\002 ; Adaugat de: \002%msg.7% ; Statut: \002%msg.4%\002 ; Audienta: \002%msg.5%\002 ; Expira: \002%msg.6%\002"
set black(say.ro.vote.18) "Voturi exprimate: N/A"
set black(say.ro.vote.19) "\005\[BT\]\005 Votes cast: %msg.1%. Total votes: \002%msg.2%\002."
set black(say.ro.vote.20) "\005\[BT\]\005 Votarea avand ID-ul: \002%msg.1%\002 s-a incheiat, nu mai poti vota."
set black(say.ro.vote.21) "\005\[BT\]\005 Te rog specifica o optiune de votare: de la A la Z."
set black(say.ro.vote.22) "\005\[BT\]\005 Nu exista nicio optiune cu litera \002%msg.1%\002 pentru aceasta votare. Optiunile de votare sunt: %msg.2%"
set black(say.ro.vote.23) "\005\[BT\]\005 Ti-ai ales deja optiunea pentru aceasta votare."
set black(say.ro.vote.24) "\005\[BT\]\005 Ai ales optiunea \002%msg.1%\002 pentru votarea cu ID-ul: \002%msg.2%\002 si numele: \002%msg.3%\002"
set black(say.ro.vote.25) "\005\[BT\]\005 ID: \002%msg.1%\002 ; Nume: \002%msg.2%\002 ; Adaugat de: \002%msg.7%\002 ; Statut: \002%msg.4%\002 ; Audienta: \002%msg.5%\002 ; Expira: \002%msg.6%\002 ; Comanda detalii: \002%char%vote %msg.1%\002"
set black(say.ro.vote.26) "\005\[BT\]\005 Sfarsit lista votari"
set black(say.ro.vote.27) "\005\[BT\]\005 Pentru a afisa urmatoarele votari foloseste: \001%char%vote list -next\001 (\002%counter%\002 votari ramase)"
set black(say.ro.vote.28) "\005\[BT\]\005 Pentru a afisa urmatoarele votari foloseste: \001%char%vote %chan% list -next\001 (\002%counter%\002 votari ramase)"
set black(say.ro.vote.29) "\005\[BT\]\005 Lista votari pentru %chan% este:"
set black(say.ro.vote.30) "\005\[BT\]\005 Nu sunt votari pentru %chan%."
set black(say.ro.vote.31) "\005\[BT\]\005 Pentru a afisa urmatoarele votari foloseste: \001%char%vote list %id% -next\001 (\002%counter%\002 votari ramase)"
set black(say.ro.vote.32) "\005\[BT\]\005 Pentru a afisa urmatoarele votari foloseste: \001%char%vote %chan% list %id% -next\001 (\002%counter%\002 votari ramase)"
set black(say.ro.vote.33) "\005\[BT\]\005 Nu sunt voturi pentru votarea cu ID-ul %msg.1% pentru %chan%."
set black(say.ro.vote.34) "\005\[BT\]\005 \002#%msg.1%\002 Nume: \002%msg.2%\002 ; Host: %msg.3% ; Vot: \002%msg.4%\002 ; Data vot: \002%msg.5%\002"
set black(say.ro.vote.35) "\005\[BT\]\005 Lista voturi pentru ID: \002%msg.1%\002 pentru %chan% este:"
set black(say.ro.vote.36) "\005\[BT\]\005 Sfarsit lista voturi"
set black(say.ro.vote.37) "\005\[BT\]\005 ID: \002%msg.1%\002 ; Nume: \002%msg.2%\002 ; Adaugat de: \002%msg.7%\002 ; Statut: \002%msg.4%\002 ; Audienta: \002%msg.5%\002 ; Comanda detalii: \002%char%vote %msg.1%\002"
set black(say.ro.vote.38) "\005\[BT\]\005 Detali votare -- ID: \002%msg.1%\002 ; Nume: \002%msg.2%\002 ; Adaugat de: \002%msg.7% ; Statut: \002%msg.4%\002 ; Audienta: \002%msg.5%\002"
set black(say.ro.vote.39) "\005\[BT\]\005 Foloseste \002%char%vote\002 time <id> <DD/MM/YY HH:MM> (setare timp nou de expirare)"
set black(say.ro.vote.40) "\005\[BT\]\005 Am setat data de expirare pentru votarea cu ID: \002%msg.1%\002 peste \002%msg.2%\002"
set black(say.ro.vote.41) "\005\[BT\]\005 Optiuni votare: \[%msg.1%\]"
set black(say.ro.vote.42) "\005\[BT\]\005 -- VOT -- Sunt disponibile VOTARI la care poti raspunde. ID-urile sunt: \002%msg.1%\002 . Pentru a vizualiza informatii referitoare la VOT foloseste \001%char%vote <id>\001 . Pentru a \002VOTA\002 foloseste \001%char%vote <id> <litera>\001 . Pentru a vedea lista foloseste \001%char%vote list\001"

##############################
############################################################################################################
#   SFARSIT                                                                                                #
############################################################################################################
