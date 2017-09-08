##################################################################################################################################
##                                     BlackTools - The Ultimate Channel Control Script                                         ##
##                                                 One TCL. One smart Eggdrop                                                   ##
##################################################################################################################################
#Acest fisier ruleaza impreuna cu BlackTools si este incarcat automat daca exista in folderul lang (fisier obligatoriu sa existe)#
##################################################################################################################################
#                                                                                                                                #
#                                                   *** The Future is Here ***                                                   #
#                                                                                     Copyright 2008 - 2017 @ www.tclscripts.net #
##################################################################################################################################
#                                                                                                                         ®      #
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
#				           #	                                                        Data: 03.08.2017 09:52AM #
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

##################################################################################################################################
#                                                                                                                                #
#                                                         MESAJE STANDARD                                                        #
#                                                                                                                                #
##################################################################################################################################

set black(say.ro.gl.instr) "\005\[BT\]\005 Pentru instructiuni de utilizare, foloseste: \002%char%man %msg%\002"
set black(say.ro.gl.instr_nick) "\005\[BT\]\005 Pentru instructiuni de utilizare, foloseste: \002%botnick% man %msg%\002"
set black(say.ro.gl.instr_priv) "\005\[BT\]\005 Pentru instructiuni de utilizare, foloseste: \002man %msg%\002"
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
set black(say.ro.gl.isowner) "\005\[BT\]\005 \002%msg.1%\002 are deja access de \002%msg.2%\002."
set black(say.ro.gl.usernotexist) "\005\[BT\]\005 \002%msg.1%\002 nu exista."
set black(say.ro.gl.hostnotexist) "\005\[BT\]\005 Nu am gasit nicio informatie referitoare la acest host."
set black(say.ro.gl.reason) "Motiv"
set black(say.ro.gl.invalidlevel) "\005\[BT\]\005 Nu poti aplica ban pe nivelul specificat (poti folosi %msg%)"
set black(say.ro.gl.nounban) "\005\[BT\]\005 Nu poti scoate banul \002%msg.1%\002, deoarece este de nivel mai mare ca al tau."
set black(say.ro.gl.hasop) "\005\[BT\]\005 Are OP si nu pot executa."
set black(say.ro.gl.notonline) "\005\[BT\]\005 \002%msg.1%\002 nu este ONLINE."
set black(say.ro.gl.xonlyban) "\005\[BT\]\005 Am adaugat ban pe \002%msg.1%\002 prin \002%msg.2%\002 pe %chan% \[Modul \002XonlY\002 activat.\]"
set black(say.ro.gl.showline) "#\004%msg.1%\004 %msg.8%"
set black(say.ro.gl.wordexists) "\005\[BT\]\005 Cuvantul \002%msg.1%\002 este deja in lista canalului \002%chan%\002."
set black(say.ro.gl.noset) "N/A"

#############################################################################################################################
#                                                                                                                           #
#                                              Protectii Interne AntiFlood                                                  #
#                                                                                                                           #
#############################################################################################################################

set black(say.ro.antiflood.1) "\005\[BT\]\005 Trimiti cereri prea repede. Calmeaza-te si incearca din nou dupa \002%msg.1% minut\002. Multumesc!"
set black(say.ro.antiflood.2) "\002\005\[BT\]\005\002 Am adaugat ignore la \002%msg.1%\002. Motiv: \002%msg.8%\002"

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

set black(say.ro.maxup.1) "\005\[BT\]\005 Timp pornire: \002%msg.1% %msg.2% %msg.3%\002 - Max UpTIME: \002%msg.9%\002"
set black(say.ro.maxon.1) "\005\[BT\]\005 Timp online: \002%msg.1% %msg.2% %msg.3%\002 - Max OnTIME: \002%msg.9%\002"

#############################################################################################################################
#                                                                                                                           #
#                                                      ACTIV                                                                #
#                                                                                                                           #
#############################################################################################################################

set black(say.ro.activ.1) "\005\[BT\]\005 BanStats: (\001%msg.1%\001) Ban-uri: \002%msg.2%\002 Kick-uri: \002%msg.3%\002. Locul \001%msg.4%\001 din \002%msg.12%\002 utilizatori cu \001%msg.13%\001 ban-uri si \001%msg.15%\001 kick-uri date astazi."
set black(say.ro.activ.2) "\005\[BT\]\005 BanStats: (\001%msg.1%\001) Ban-uri locale: \002%msg.2%\002 Ban-uri globale: \002%msg.3%\002 Kick-uri: \002%msg.4%\002. Locul \001%msg.12%\001 din \002%msg.13%\002 utilizatori cu \001%msg.15%\001 ban-uri si \001%msg.17%\001 kick-uri date astazi."

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
set black(say.ro.antipub.3) "\005\[BT\]\005 *** Sfarsit lista exceptii ***"
set black(say.ro.antipub.4) "\005\[BT\]\005 Nu exista \002exceptia\002 antipub cu nr.\002%msg.1%\002 pentru %chan%."
set black(say.ro.antipub.5) "\005\[BT\]\005 Am sters \002exceptia\002 antipub cu numarul \002%msg.1%\002 pentru %chan%."
set black(say.ro.antipub.6) "\005\[BT\]\005 Am adaugat in lista de exceptii \002%msg.8%\002 cu nr.\002%msg.1%\002 pentru %chan%."
set black(say.ro.antipub.7) "\005\[BT\]\005 Lista de \002exceptii\002 antipub pentru %chan% este:"
set black(say.ro.antipub.8) "\005\[BT\]\005 Pentru afisarea urmatoarelor exceptii tasteaza: %char%antipub list -next (\002%counter%\002 exceptii ramase)"
set black(say.ro.antipub.9) "\005\[BT\]\005 Pentru afisarea urmatoarelor exceptii tasteaza: %char%antipub %chan% list -next (\002%counter%\002 exceptii ramase)"

#################################### BadHost ###################################

set black(say.ro.badhost.1) "Nu ai respectat regulile pe %chan% in privinta HOST-ului"
set black(say.ro.badhost.3) "\005\[BT\]\005 *** Sfarsit lista BadHosts ***"
set black(say.ro.badhost.4) "\005\[BT\]\005 Nu exista \002badhost\002 cu nr.\002%msg.1%\002 pentru %chan%."
set black(say.ro.badhost.5) "\005\[BT\]\005 Am sters \002badhost\002 cu numarul \002%msg.1%\002 pentru %chan%."
set black(say.ro.badhost.6) "\005\[BT\]\005 Am adaugat in lista de BadHosts \002%msg.8%\002 cu nr.\002%msg.1%\002 pentru %chan%."
set black(say.ro.badhost.7) "\005\[BT\]\005 Lista de \002BadHosts\002 pentru %chan% este:"
set black(say.ro.badhost.8) "\005\[BT\]\005 Pentru afisarea urmatoarelor \002BadHosts\002 tasteaza: %char%badhost list -next (\002%counter%\002 badhost ramase)"
set black(say.ro.badhost.9) "\005\[BT\]\005 Pentru afisarea urmatoarelor \002BadHosts\002 tasteaza: %char%badhost %chan% list -next (\002%counter%\002 badhost ramase)"

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
set black(say.ro.badword.4) "\005\[BT\]\005 Nu exista \002badword\002 cu nr.\002%msg.1%\002 pentru %chan%."
set black(say.ro.badword.5) "\005\[BT\]\005 Am sters \002badword\002 cu numarul \002%msg.1%\002 pentru %chan%."
set black(say.ro.badword.6) "\005\[BT\]\005 Am adaugat in lista de BadWords \002%msg.8%\002 cu nr.\002%msg.1%\002 pentru %chan%."
set black(say.ro.antibadword.7) "\005\[BT\]\005 Lista de \002BadWords\002 pentru %chan% este:"
set black(say.ro.antibadword.8) "\005\[BT\]\005 Pentru afisarea urmatoarelor \002BadWords\002 tasteaza: %char%badword list -next (\002%counter%\002 badwords ramase)"
set black(say.ro.antibadword.9) "\005\[BT\]\005 Pentru afisarea urmatoarelor \002BadWords\002 tasteaza: %char%badword %chan% list -next (\002%counter%\002 badwords ramase)"

#################################### AntiLongText ##############################

set black(say.ro.antilongtext.1) "Nu ai respectat regulile pe %chan% in privinta textului lung"
set black(say.ro.antilongtext.2) "Atentie, esti avertizat sa nu mai scrii atat de multe cuvinte intr-o singura propozitie pe %chan%"

#################################### AntiBadQuitPart ###########################

set black(say.ro.antibadquitpart.1) "Nu ai respectat regulile pe %chan% in privinta utilizarii caracterelor interzise la part/quit"
set black(say.ro.antibadquitpart.3) "\005\[BT\]\005 *** Sfarsit lista exceptii ***"
set black(say.ro.badquitpart.4) "\005\[BT\]\005 Nu exista \002exceptia\002 badquitpart cu nr.\002%msg.1%\002 pentru %chan%."
set black(say.ro.badquitpart.5) "\005\[BT\]\005 Am sters \002exceptia\002 badquitpart cu numarul \002%msg.1%\002 pentru %chan%."
set black(say.ro.badquitpart.6) "\005\[BT\]\005 Am adaugat in lista de exceptii \002%msg.8%\002 cu nr.\002%msg.1%\002 pentru %chan%."
set black(say.ro.antibadquitpart.7) "\005\[BT\]\005 Lista de \002exceptii\002 badquitpart pentru %chan% este :"
set black(say.ro.antibadquitpart.8) "\005\[BT\]\005 Pentru afisarea urmatoarelor exceptii tasteaza: %char%badquitpart list -next (\002%counter%\002 exceptii ramase)"
set black(say.ro.antibadquitpart.9) "\005\[BT\]\005 Pentru afisarea urmatoarelor exceptii tasteaza: %char%badquitpart %chan% list -next (\002%counter%\002 exceptii ramase)"

################################### AntiJoinPart ###############################

set black(say.ro.antijoinpart.1) "Nu ai respectat regulile pe %chan% in privinta Join/Part"
set black(say.ro.antijoinpart.2) "Atentie, esti avertizat sa nu mai faci atat de repede join/part pe %chan%"

################################## AntiSpam ###################################

set black(say.ro.antispam.1) "Nu ai respectat regulile pe %chan% in privinta SPAM-ULUI"
set black(say.ro.antispam.2) "Bine ai venit pe \002%chan%\002, te rog nu raspunde la acest mesaj deoarece poti fi banat si considerat spammer. Multumesc!"
set black(say.ro.antispam.3) { "\005\[BT\]\005 Verific spamul..."
			       "\005\[BT\]\005 Stati linistiti ca ma intorc, doar imi fac datoria :P"
			       "\005\[BT\]\005 Plec sau nu? aceasta este intrebarea :D" 
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
set black(say.ro.badrealname.4) "\005\[BT\]\005 Nu exista \002badfullname\002 cu nr.\002%msg.1%\002 pentru %chan%."
set black(say.ro.badrealname.5) "\005\[BT\]\005 Am sters \002badfullname\002 cu numarul \002%msg.1%\002 pentru %chan%."
set black(say.ro.badrealname.6) "\005\[BT\]\005 Am adaugat in lista de badrealname \002%msg.8%\002 cu nr.\002%msg.1%\002 pentru %chan%."
set black(say.ro.badrealname.7) "\005\[BT\]\005 Lista de \002BadRealnames\002 pentru %chan% este :"
set black(say.ro.badrealname.8) "\005\[BT\]\005 Pentru afisarea urmatoarelor \002BadRealnames\002 tasteaza: %char%badrealname list -next (\002%counter%\002 badrealname ramase)"
set black(say.ro.badrealname.9) "\005\[BT\]\005 Pentru afisarea urmatoarelor \002BadRealnames\002 tasteaza: %char%badrealname %chan% list -next (\002%counter%\002 badrealname ramase)"

################################# BadNick #####################################

set black(say.ro.badnick.1) "Nu ai respectat regulile pe %chan% in privinta NICK-ULUI"
set black(say.ro.badnick.3) "\005\[BT\]\005 *** Sfarsit lista BadNicks ***"
set black(say.ro.badnick.4) "\005\[BT\]\005 Nu exista \002badnick\002 cu nr.\002%msg.1%\002 pentru %chan%."
set black(say.ro.badnick.5) "\005\[BT\]\005 Am sters \002badnick\002 cu numarul \002%msg.1%\002 pentru %chan%."
set black(say.ro.badnick.6) "\005\[BT\]\005 Am adaugat in lista de badnick \002%msg.8%\002 cu nr.\002%msg.1%\002 pentru %chan%."
set black(say.ro.badnick.7) "\005\[BT\]\005 Lista de \002BadNicks\002 pentru %chan% este :"
set black(say.ro.badnick.8) "\005\[BT\]\005 Pentru afisarea urmatoarelor \002BadNicks\002 tasteaza: %char%badnick list -next (\002%counter%\002 badnick ramase)"
set black(say.ro.badnick.9) "\005\[BT\]\005 Pentru afisarea urmatoarelor \002BadNicks\002 tasteaza: %char%badnick %chan% list -next (\002%counter%\002 badnick ramase)"

################################# BadIdent #####################################

set black(say.ro.badident.1) "Nu ai respectat regulile pe %chan% in privinta IDENT-ULUI"
set black(say.ro.badident.3) "\005\[BT\]\005 *** Sfarsit lista BadIdents ***"
set black(say.ro.badident.4) "\005\[BT\]\005 Nu exista \002badident\002 cu nr.\002%msg.1%\002 pentru %chan%."
set black(say.ro.badident.5) "\005\[BT\]\005 Am sters \002badident\002 cu numarul \002%msg.1%\002 pentru %chan%."
set black(say.ro.badident.6) "\005\[BT\]\005 Am adaugat in lista de badident \002%msg.8%\002 cu nr.\002%msg.1%\002 pentru %chan%."
set black(say.ro.badident.7) "\005\[BT\]\005 Lista de \002BadIdents\002 pentru %chan% este :"
set black(say.ro.badident.8) "\005\[BT\]\005 Pentru afisarea urmatoarelor \002BadIdents\002 tasteaza: %char%badident list -next (\002%counter%\002 badident ramase)"
set black(say.ro.badident.9) "\005\[BT\]\005 Pentru afisarea urmatoarelor \002BadIdents\002 tasteaza: %char%badident %chan% list -next (\002%counter%\002 badident ramase)"

################################# AntiJoinFlood #####################################

set black(say.ro.antijoinflood.1) "Atentie! Am observat un join flood pe %chan%. Va rog verificati!"

################################# AntiChanFlood #####################################

set black(say.ro.antichanflood.1) "NU ai respectat regulile pe %chan% in privinta flood-ului"
set black(say.ro.antichanflood.2) "Atentie, esti avertizat sa nu mai scrii atat de multe linii deodata pe %chan%"

################################### NickFlood #######################################

set black(say.ro.nickflood.1) "NU ai respectat regulile pe %chan% in privinta flood-ului prin nick"
set black(say.ro.nickflood.2) "Atentie, esti avertizat sa nu mai schimbi atat de des nick-ul pe %chan%"

#############################################################################################################################
#                                                                                                                           #
#                                                        MODULE                                                             #
#                                                                                                                           #
#############################################################################################################################

################################## SecureMode ##################################

set black(say.ro.securemode.1) "\002ATENTIE:\002 ai incercat sa intri pe %chan%, dar canalul este in \002lockdown\002 (\002+mD\002). Pentru a ti se permite sa intri tasteaza: \002/msg %botnick% check %chan% %msg.1%\002 sa dovedesti ca nu esti un robot. Daca te incurci nu se va intampla nimic."
set black(say.ro.securemode.2) "\002%msg.1%\002: sa ai un chat placut! Ne pare rau pentru dificultatile intampinate!"
set black(say.ro.securemode.3) "\005\[BT\]\005 *** Sfarsit lista exceptii ***"
set black(say.ro.securemode.4) "\005\[BT\]\005 Nu exista \002exceptia\002 SecureMode cu nr.\002%msg.1%\002 pentru %chan%."
set black(say.ro.securemode.5) "\005\[BT\]\005 Am sters \002exceptia\002 SecureMode cu numarul \002%msg.1%\002 pentru %chan%."
set black(say.ro.securemode.6) "\005\[BT\]\005 Am adaugat in lista de exceptii \002%msg.8%\002 cu nr.\002%msg.1%\002 pentru %chan%."
set black(say.ro.securemode.7) "\005\[BT\]\005 Lista de \002exceptii\002 SecureMode pentru %chan% este :"
set black(say.ro.securemode.8) "\005\[BT\]\005 Pentru afisarea urmatoarelor exceptii tasteaza: %char%securemode list -next (\002%counter%\002 exceptii ramase)"
set black(say.ro.securemode.9) "\005\[BT\]\005 Pentru afisarea urmatoarelor exceptii tasteaza: %char%securemode %chan% list -next (\002%counter%\002 exceptii ramase)"
set black(say.ro.securemode.10) "\005\[BT\]\005 Modul secure: activat."
set black(say.ro.securemode.11) "\005\[BT\]\005 Modul secure: dezactivat."

################################## VoiceMe #####################################

set black(say.ro.voiceme.1) "\005\[BT\]\005 Canalul este \002moderat(+m)\002. Pentru a putea discuta pe \002%chan%\002 trebuie sa folositi: \002/msg %botnick% voiceme %chan%\002. Comanda necesita sa fiti \002inregistrat si logat la X\002. Daca nu aveti un username Cservice, accesati \002https://www.cservice.undernet.org/live/\002 pentru a crea unul."
set black(say.ro.voiceme.2) "\005\[BT\]\005 Canalul nu mai \002este moderat(+m)\002. Chat placut in continuare!"
set black(say.ro.voiceme.3) "\005\[BT\]\005 Bravo! Ai primit \002voice(+)\002 pe \002%chan%\002. Chat placut! :)"
set black(say.ro.voiceme.4) "\005\[BT\]\005 Ai deja \002<voice>\002 pe %chan%."

################################## BanStats #####################################

set black(say.ro.topbans.1) "\002BanStats\002 Total: %msg%"
set black(say.ro.topbans.2) "\002BanStats\002 de Astazi: %msg%"
set black(say.ro.topbans.8) "\005\[BT\]\005 Am resetat \002BanStats\002 pe \002%chan%\002"
set black(say.ro.topbans.9) "(Pentru urmatoarele clasari, tastati: \002%char%banstats -next\002)"
set black(say.ro.topbans.10) "\005\[BT\]\005 Nu exista niciun ban dat pe \002%chan%\002"
set black(say.ro.topbans.11) "(Pentru urmatoarele clasari, tastati: \002%char%banstats total -next\002)"
set black(say.ro.topbans.12) "(Pentru urmatoarele clasari, tastati: \002%char%banstats %chan% total -next\002)"
set black(say.ro.topbans.13) "(Pentru urmatoarele clasari, tastati: \002%char%banstats %chan% -next\002)"
set black(say.ro.topbans.14) "\005\[BT\]\005 Nu exista niciun ban dat pe \002%chan%\002 pe ziua de astazi."

################################# TopWords #####################################

set black(say.ro.topwords.1) "\002TopWords\002 Total: %msg%"
set black(say.ro.topwords.2) "\002TopWords\002 de Astazi: %msg%"
set black(say.ro.topwords.3) "\005\[BT\]\005 TopWords: (\001%msg.1%\001) Linii: \002%msg.2%\002 Cuvinte: \002%msg.3%\002 Litere: \002%msg.4%\002. Cel mai activ la ora \002%msg.12%\002. Locul \001%msg.13%\001 din \002%msg.15%\002 utilizatori cu \001%msg.17%\001 cuvinte scrise astazi."
set black(say.ro.topwords.4) "\005\[BT\]\005 Nu exista informatii despre \002%msg.1%\002"
set black(say.ro.topwords.7) "\005\[BT\]\005 Nu sunt persoane in top pentru \002%chan%\002"
set black(say.ro.topwords.8) "\005\[BT\]\005 Am resetat \002TopWords\002 pe \002%chan%\002"
set black(say.ro.topwords.9) "(Pentru urmatoarele clasari, tastati: \002%char%topwords -next\002)"
set black(say.ro.topwords.10) "\005\[BT\]\005 Nu exista inregistrari de \002TopWords\002 pentru \002%chan%\002"
set black(say.ro.topwords.11) "(Pentru urmatoarele clasari, tastati: \002%char%topwords total -next\002)"
set black(say.ro.topwords.12) "(Pentru urmatoarele clasari, tastati: \002%char%topwords\002 %chan% total -next\002)"
set black(say.ro.topwords.13) "(Pentru urmatoarele clasari, tastati: \002%char%topwords %chan% -next\002)"
set black(say.ro.topwords.14) "\005\[BT\]\005 Nu sunt persoane in top pentru \002%chan%\002 pe ziua de astazi"
set black(say.ro.topwords.15) "\005\[BT\]\005 Am adaugat \002%msg.1%\002 ca exceptie pentru \002TopWords\002 pe \002%chan%\002"
set black(say.ro.topwords.16) "\005\[BT\]\005 Am adaugat \002%msg.1%\002 cu host \002%msg.2%\002 ca exceptie pentru \002TopWords\002 pe \002%chan%\002"
set black(say.ro.topwords.17) "\005\[BT\]\005 \002%msg.1%\002 este deja adaugat ca exceptie pentru \002TopWords\002"
set black(say.ro.topwords.18) "\005\[BT\]\005 Lista de exceptii la \002TopWords\002 pe \002%chan%\002 este :"
set black(say.ro.topwords.19) "%msg%"
set black(say.ro.topwords.20) "\005\[BT\]\005 %msg.1% nu este adaugat ca exceptie la \002TopWords\002."
set black(say.ro.topwords.21) "\005\[BT\]\005 %msg.1% a fost sters din lista de exceptii la \002TopWords\002."
set black(say.ro.topwords.22) "\005\[BT\]\005 TopWords: (\004%msg.1%\004) Host: \002%msg.2%\002 Linii: \002%msg.3%\002 Cuvinte: \002%msg.4%\002 Litere: \002%msg.12%\002. Cel mai activ la ora \002%msg.13%\002. Locul \004%msg.15%\004 din \002%msg.17%\002 utilizatori cu \004%msg.19%\004 cuvinte scrise astazi."

################################ GuestNick ####################################

set black(say.ro.guestnick.1) "\005\[BT\]\005 Ai activat modulul de \002GuestNick\002 pe \002%chan%\002."
set black(say.ro.guestnick.2) "\005\[BT\]\005 Ai dezactivat modulul de \002GuestNick\002 pe \002%chan%\002."
set black(say.ro.guestnick.3) "\005\[BT\]\005 Am adaugat \002%msg.1%\002 cu nr. \002%msg.2%\002 in lista de \002GuestNick\002"
set black(say.ro.guestnick.4) "\005\[BT\]\005 Am sters GuestNick-ul cu numarul \002%msg.1%\002 din lista canalului %chan%."
set black(say.ro.guestnick.5) "\005\[BT\]\005 Nu am gasit GuestNick-ul cu numarul \002%msg.1%\002 in lista"
set black(say.ro.guestnick.6) "\005\[BT\]\005 Nu sunt GuestNick-uri pentru \002%chan%\002"
set black(say.ro.guestnick.7) "\005\[BT\]\005 Lista de \002GuestNicks\002 pentru \002%chan%\002 este:"
set black(say.ro.guestnick.8) "\005\[BT\]\005 Pentru afisarea urmatoarelor \002GuestNicks\002 tasteaza: %char%GuestNick list -next (\002%counter%\002 GuestNick-uri ramase)"
set black(say.ro.guestnick.9) "\005\[BT\]\005 *** Sfarsit lista GuestNicks ***"
set black(say.ro.guestnick.10) "Salut \002%nick%\002: daca vrei sa-ti schimbi nick-ul cu ceva mai adecvat pentru numele tau, atunci folosind \002/nick nume\002 vei realiza acest lucru.."
set black(say.ro.guestnick.11) "\005\[BT\]\005 Pentru afisarea urmatoarelor \002GuestNicks\002 tasteaza: %char%GuestNick %chan% list -next (\004%counter%\004 GuestNick-uri ramase)"

################################ BackChan ###################################

set black(say.ro.reportchan) "\005\[BT\]\005 Am adaugat ban pe %chan% pe hostul %banmask% cu motivul: %reason%. Acesta va expira in: %bantime%."
set black(say.ro.reportchan.1) "\005\[BT\]\005 \[%nick%\] a adaugat ban pe %chan% pe hostul %banmask% cu motivul: %reason%. Acesta va expira in: %bantime%."
set black(say.ro.backchan.1) "\005\[BT\]\005 %msg.1% a fost gasit in lista de banuri pe \002%chan%\002 cu host-ul \002%msg.2%\002"
set black(say.ro.reportchan.2) "\005\[BT\]\005 \[%nick%\] a adaugat Gag pe %chan% pe hostul %banmask% cu motivul: %reason%. Acesta va expira in: %bantime%."

################################ CloneScan ###################################

set black(say.ro.clonescan.1) "Prea multe clone de la \[%clone%\]. Clonele sunt interzise pe %chan% !"
set black(say.ro.clonescan.2) "\005\[BT\]\005 Nu am gasit clone pe %chan%."
set black(say.ro.clonescan.3) "\005\[BT\]\005 *** Sfarsit lista exceptii ***"
set black(say.ro.clonescan.4) "\005\[BT\]\005 Nu exista \002exceptia\002 CloneScan cu nr.\002%msg.1%\002 pentru %chan%."
set black(say.ro.clonescan.5) "\005\[BT\]\005 Am sters \002exceptia\002 CloneScan cu numarul \002%msg.1%\002 pentru %chan%."
set black(say.ro.clonescan.6) "\005\[BT\]\005 Am adaugat in lista de exceptii \002%msg.8%\002 cu nr.\002%msg.1%\002 pentru %chan%."
set black(say.ro.clonescan.7) "\005\[BT\]\005 Lista de \002exceptii\002 CloneScan pentru %chan% este :"
set black(say.ro.clonescan.8) "\005\[BT\]\005 Pentru afisarea urmatoarelor exceptii tasteaza: %char%clonescan list -next (\004%counter%\004 exceptii ramase)"
set black(say.ro.clonescan.9) "\005\[BT\]\005 Pentru afisarea urmatoarelor exceptii tasteaza: %char%clonescan %chan% list -next (\004%counter%\004 exceptii ramase)"
set black(say.ro.clonescan.10) "\005\[BT\]\005 Am gasit \002%msg.1%\002 clone pe \002%chan%\002 de la host-ul \002%msg.2%\002 . Acestea sunt : %msg.7%"
set black(say.ro.clonescan.11) "\005\[BT\]\005 Scanez de clone pe %chan% .."

################################# Private ######################################

set black(say.ro.private.1) "Canal \002Privat\002"
set black(say.ro.private.5) "%msg%"
set black(say.ro.private.6) "\005\[BT\]\005 \002%msg.1%\002 nu este adaugat ca exceptie."
set black(say.ro.private.7) "\005\[BT\]\005 \002%msg.1%\002 este deja in baza mea de date. Il adaug ca exceptie pe \002%chan%\002"
set black(say.ro.private.8) "\005\[BT\]\005 Am adaugat \002%msg.1%\002 cu host \002%msg.2%\002 ca exceptie la private pe \002%chan%\002"
set black(say.ro.private.9) "\005\[BT\]\005 Am sters \002%msg.1%\002 din lista de exceptii pe \002%chan%\002"
set black(say.ro.private.10) "\005\[BT\]\005 \002%msg.1%\002 este adaugat deja ca exceptie pe \002%chan%\002"
set black(say.ro.private.11) "\005\[BT\]\005 Userii exceptati de la private pe \002%chan%\002 sunt:"

################################# BadChan ######################################

set black(say.ro.badchan.1) "\005\[BT\]\005 Canalul \002%msg.1%\002 este deja in lista de badchan a canalului %chan%."
set black(say.ro.badchan.2) "\005\[BT\]\005 Pentru a afisa urmatoarele badchan tasteaza %char%badchan list global -next (\002%counter%\002 badchan-uri ramase)"
set black(say.ro.badchan.3) "\005\[BT\]\005 Pentru a afisa urmatoarele badchan tasteaza %char%badchan list -next (\002%counter%\002 badchan-uri ramase)"
set black(say.ro.badchan.4) "\005\[BT\]\005 Sfarsit lista badchan."
set black(say.ro.badchan.5) "Ai fost gasit pe unul sau mai multe canale aflate in blacklist"
set black(say.ro.badchan.6) "\005\[BT\]\005 Ai activat modulul de \002BadChan\002 pe \002%chan%\002."
set black(say.ro.badchan.8) "\005\[BT\]\005 Ai dezactivat modulul de \002BadChan\002 pe \002%chan%\002."
set black(say.ro.badchan.11) "\005\[BT\]\005 Am adaugat canalul \002%msg.1%\002 cu nr. \002%msg.2%\002 in lista de \002badchan\002 GLOBALA"
set black(say.ro.badchan.12) "\005\[BT\]\005 Am adaugat canalul \002%msg.1%\002 cu nr. \002%msg.2%\002 in lista de \002badchan\002 a canalului \002%chan%\002"
set black(say.ro.badchan.14) "\005\[BT\]\005 Lista de \002BADCHAN\002 pentru \002%chan%\002 este :"
set black(say.ro.badchan.15) "\005\[BT\]\005 Lista de \002BADCHAN\002 GLOBALA este :"
set black(say.ro.badchan.16) "\004%msg.1%\004) %msg.2%"
set black(say.ro.badchan.17) "\005\[BT\]\005 Nu am gasit badchan-ul cu numarul \002%msg.1%\002 in lista"
set black(say.ro.badchan.18) "\005\[BT\]\005 Am sters badchan-ul cu numarul \002%msg.1%\002 din lista canalului %chan%."
set black(say.ro.badchan.19) "\005\[BT\]\005 Am sters badchan-ul cu numarul \002%msg.1%\002 din lista GLOBALA."
set black(say.ro.badchan.39) "Ai primit ban pe %chan% deoarece ai fost gasit pe unul sau mai multe canale interzise."
set black(say.ro.badchan.40) "\002ATENTIE!\002 Ai fost gasit pe canale interzise. Ai la dispozitie 30 de secunde sa dai /part la: %badchans%., in caz contrar vei primi ban. Multumesc!"
set black(say.ro.badchan.41) "\005\[BT\]\005 Pentru a afisa urmatoarele badchan tasteaza %char%badchan %chan% list -next (\002%counter%\002 badchan-uri ramase)"
set black(say.ro.badchan.42) "\005\[BT\]\005 Canalul \002%msg.1%\002 este deja in lista de badchan GLOBALA"
set black(say.ro.badchan.43) "\005\[BT\]\005 Modulul de \002BadChan\002 este deja activ."

################################# AntiTaKe ######################################

set black(say.ro.antitake.1) "\005\[BT\]\005 Nu poti da \002DEOP\002 deoarece nu te afli in baza mea de date de access."
set black(say.ro.antitake.2) "\005\[BT\]\005 Nu poti da \002OP\002 deoarece nu te afli in baza mea de date de access."

################################# Anunt ######################################

set black(say.ro.anunt.1) "%msg%"
set black(say.ro.anunt.2) "\005\[BT\]\005 *** Sfarsit lista anunturi ***"
set black(say.ro.anunt.3) "\005\[BT\]\005 Ai activat modulul de anunt pe \002%chan%\002."
set black(say.ro.anunt.4) "\005\[BT\]\005Am dezactivat modulul de anunt pe \002%chan%\002."
set black(say.ro.anunt.5) "\005\[BT\]\005 Am adaugat anuntul cu nr.\002%msg.1%\002 pentru %chan%:"
set black(say.ro.anunt.6) "\004%msg.1%\004) %msg.8%"
set black(say.ro.anunt.7) "\005\[BT\]\005 Nu sunt anunturi pentru \002%chan%\002"
set black(say.ro.anunt.8) "\005\[BT\]\005 Lista de anunturi pentru \002%chan%\002 este:"
set black(say.ro.anunt.9) "\005\[BT\]\005 Pentru a afisa urmatoarele anunturi tasteaza %char%anunt list -next (\002%counter%\002 anunturi ramase)"
set black(say.ro.anunt.10) "\005\[BT\]\005 Am sters anuntul cu numarul \002%msg.1%\002 pentru %chan%."
set black(say.ro.anunt.13) "\005\[BT\]\005 Nu exista anuntul cu numarul \002%msg.1%\002 pentru \002%chan%\002"
set black(say.ro.anunt.14) "\005\[BT\]\005 Pentru a afisa urmatoarele anunturi tasteaza %char%anunt %chan% list -next (\002%counter%\002 anunturi ramase)"

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
set black(say.ro.autobroadcast.12) "\005\[BT\]\005 Pentru a afisa urmatoarele broadcast-uri tasteaza %char%bt list -next (\002%counter%\002 broadcast-uri ramase)"

################################# Limit ######################################

set black(say.ro.limit.5) "\005\[BT\]\005 Am activat modulul de \002Limit\002 pe \002%chan%\002."
set black(say.ro.limit.6) "\005\[BT\]\005 Am setat limita \00210\002 (standard)."
set black(say.ro.limit.7) "\005\[BT\]\005 Am dezactivat modulul de \002Limit\002 pe \002%chan%\002."
set black(say.ro.limit.9) "\005\[BT\]\005 Nu poti seta limita mai mica de 2."
set black(say.ro.limit.10) "\005\[BT\]\005 Setez limita \0022.\002"
set black(say.ro.limit.11) "\005\[BT\]\005 Nu poti seta limita mai mare de \002500\002."
set black(say.ro.limit.12) "\005\[BT\]\005 Am setat limita la \002%msg.1%\002"

################################# Topic ######################################

set black(say.ro.topic.1) "\005\[BT\]\005 Topic pentru \002%chan%\002: %msg%"
set black(say.ro.topic.2) "\005\[BT\]\005 Topic-ul nu poate fi setat deoarece e gol."
set black(say.ro.topic.3) "\005\[BT\]\005 Setez ca topic pentru \002%chan%\002: %msg% (topic-ul curent)"

####################################### Seen ######################################

set black(say.ro.seen.4) "\005\[BT\]\005 %msg.1% sunt chiar aici :P"
set black(say.ro.seen.5) "\005\[BT\]\005 Asteapta 1 minut pentru a putea cauta cu %char%seen ."
set black(say.ro.seen.6) "\005\[BT\]\005 %msg.1% uite-te in oglinda"
set black(say.ro.seen.7) "\005\[BT\]\005 %msg.1% este pe %chan% deja"
set black(say.ro.seen.8) "nu stiu exact cat a stat."
set black(say.ro.seen.9) "dupa ce a stat %staytime% pe %chan%."
set black(say.ro.seen.10) " %newnick% este inca pe %chan%."
set black(say.ro.seen.11) "Nu il vad pe %newnick% momentan pe %chan%"
set black(say.ro.seen.12) "\005\[BT\]\005 %entry% (%host%) a iesit de pe %chan% acum %output% %date% zicand: \"%reason%\", %staymsg%"
set black(say.ro.seen.13) "\005\[BT\]\005 %entry% (%host%) a iesit de pe IRC acum %output% %date% zicand: \"%reason%\", %staymsg%"
set black(say.ro.seen.14) "\005\[BT\]\005 %entry% (%host%) a intrat pe %chan% acum %output% %date%.%nowon%"
set black(say.ro.seen.15) "\005\[BT\]\005 %entry% (%host%)  a iesit in *.net *.split acum %output% %date%, %staymsg%"
set black(say.ro.seen.16) "\005\[BT\]\005 %entry% (%host%) a fost dat(a) afara de pe %chan% acum \002%output%\002 %date% cu motivul: \"%reason%\", %staymsg%"
set black(say.ro.seen.17) "\005\[BT\]\005 %entry% (%host%) si-a schimbat nick-ul in %newnick% acum %output% %date%. %nowon%"
set black(say.ro.seen.18) "\005\[BT\]\005 Nu exista informatii despre \002%msg.1%\002"
set black(say.ro.seen.19) " %latest% este inca pe %chan%."
set black(say.ro.seen.20) " Nu il vad pe %latest% momentan pe %chan%"
set black(say.ro.seen.21) "\005\[BT\]\005 Am gasit (%num%) rezultate \"%entry%\". Cel mai recent \002%latest%\002 (%host%) a iesit de pe %chan% acum %output% %date% zicand: \"%reason%\", %staymsg%"
set black(say.ro.seen.22) "\005\[BT\]\005 Am gasit (%num%) rezultate \"%entry%\". Cel mai recent \002%latest%\002 (%host%) a iesit de pe IRC acum %output% %date% zicand: \"%reason%\", %staymsg%"
set black(say.ro.seen.23) "\005\[BT\]\005 Am gasit (%num%) rezultate \"%entry%\". Cel mai recent \002%latest%\002 (%host%) a intrat pe %chan% acum %output% %date%.%nowon%"
set black(say.ro.seen.24) "\005\[BT\]\005 Am gasit (%num%) rezultate \"%entry%\". Cel mai recent \002%latest%\002 (%host%) a iesit in *.net *.split acum %output% %date%, %staymsg%"
set black(say.ro.seen.25) "\005\[BT\]\005 Am gasit (%num%) rezultate \"%entry%\". Cel mai recent \002%latest%\002 (%host%) a fost dat(a) afara de pe %chan% acum %output% %date% cu motivul: \"%reason%\", %staymsg%"
set black(say.ro.seen.26) "\005\[BT\]\005 Am gasit (%num%) rezultate \"%entry%\". Cel mai recent \002%latest%\002 (%host%) si-a schimbat nick-ul in %newnick% acum %output% %date%. %nowon%"
set black(say.ro.seen.27) "%msg%"
set black(say.ro.seen.28) "\005\[BT\]\005 Am gasit mai mult de (%msg.1%) rezultate"
set black(say.ro.seen.29) "\005\[BT\]\005 %entry% (%host%) a fost vazut ultima oara pe %chan% acum %output% %date% zicand: \"%lastmsg%\""
set black(say.ro.seen.30) "\005\[BT\]\005 Am gasit (%num%) rezultate \"%entry%\". Cel mai recent \002%latest%\002 (%host%) a fost vazut ultima oara pe %chan% acum %output% %date% zicand: \"%lastmsg%\""
set black(say.ro.seen.31) "\005\[BT\]\005 Din ce-mi aduc aminte, \002%msg.1%\002 nu a zis nimic."
set black(say.ro.seen.32) "\005\[BT\]\005 Din ce-mi aduc aminte, cu %output% in urma, \002%userentry%\002 (%host%) a zis ultima data pe %chan%: \"%lastmsg%\""
set black(say.ro.seen.33) "\005\[BT\]\005 Am gasit mai mult de (%num%) rezultate. Cel mai recent \002%latest%\002 (%host%) a iesit de pe %chan% acum %output% %date% zicand: \"%reason%\", %staymsg%"
set black(say.ro.seen.34) "\005\[BT\]\005 Am gasit mai mult de (%num%) rezultate. Cel mai recent \002%latest%\002 (%host%) a iesit de pe IRC acum %output% %date% zicand: \"%reason%\", %staymsg%"
set black(say.ro.seen.35) "\005\[BT\]\005 Am gasit mai mult de (%num%) rezultate. Cel mai recent \002%latest%\002 (%host%) a intrat pe %chan% acum %output% %date%.%nowon%"
set black(say.ro.seen.36) "\005\[BT\]\005 Am gasit mai mult de (%num%) rezultate. Cel mai recent \002%latest%\002 (%host%) a iesit in *.net *.split acum %output% %date%, %staymsg%"
set black(say.ro.seen.37) "\005\[BT\]\005 Am gasit mai mult de (%num%) rezultate. Cel mai recent \002%latest%\002 (%host%) a fost dat(a) afara de pe %chan% acum %output% %date% cu motivul: \"%reason%\", %staymsg%"
set black(say.ro.seen.38) "\005\[BT\]\005 Am gasit mai mult de (%num%) rezultate. Cel mai recent \002%latest%\002 (%host%) si-a schimbat nick-ul in %newnick% acum %output% %date%. %nowon%"
set black(say.ro.seen.39) "\005\[BT\]\005 Atentie \002%msg.1%\002! (%msg.2%) te-a cautat cu \002%char%seen\002 pe \002%chan%\002 in data de \002%msg.3%\002."

################################# Greet ######################################

set black(say.ro.greet.1) "\005\[BT\]\005 Am setat greet pentru \002%chan%\002: %msg%"
set black(say.ro.greet.2) "\005\[BT\]\005 Am activat \002Greet\002 pe %chan%"
set black(say.ro.greet.3) "\005\[BT\]\005 Am dezactivat \002Greet\002 pe %chan%"

################################# Leave #######################################

set black(say.ro.leave.1) "\005\[BT\]\005 Am setat leave pentru \002%chan%\002: %msg%"
set black(say.ro.leave.2) "\005\[BT\]\005 Am activat \002Leave\002 pe %chan%"
set black(say.ro.leave.3) "\005\[BT\]\005 Am dezactivat \002Leave\002 pe %chan%"

################################# Idle ######################################

set black(say.ro.idle.11) "\005\[BT\]\005 Am activat \002Idle OP\002 pe %chan%"
set black(say.ro.idle.12) "\005\[BT\]\005 Am dezactivat \002Idle OP\002 pe %chan%"
set black(say.ro.idle.14) "\005\[BT\]\005 Am activat \002Idle VOICE\002 pe %chan%"
set black(say.ro.idle.15) "\005\[BT\]\005 Am dezactivat \002Idle VOICE\002 pe %chan%"
set black(say.ro.idle.17) "\005\[BT\]\005 \002%msg.1%\002 nu este pe %chan%."
set black(say.ro.idle.18) "\005\[BT\]\005 Am adaugat \002%msg.1%\002 ca exceptie pentru \002AntiIdle\002 pe \002%chan%\002."
set black(say.ro.idle.19) "\005\[BT\]\005 Am adaugat ca exceptie pe \002%msg.1%\002 cu host \002%msg.2%\002 pentru \002AntiIdle\002 pe \002%chan%\002."
set black(say.ro.idle.20) "\005\[BT\]\005 Lista de exceptie la \002AntiIdle\002 pe \002%chan%\002 este :"
set black(say.ro.idle.21) "%msg%"
set black(say.ro.idle.22) "\005\[BT\]\005 %msg.1% nu exista in memoria mea."
set black(say.ro.idle.23) "\005\[BT\]\005 %msg.1% nu este adaugat ca exceptie la \002AntiIdle\002."
set black(say.ro.idle.24) "\005\[BT\]\005 %msg.1% a fost sters din lista de exceptii la \002AntiIdle\002."

################################# TCL ######################################

set black(say.ro.tcl.1) "\005\[BT\]\005 Scripturile incarcate curent sunt:"
set black(say.ro.tcl.3) "Nu am putut incarca scriptul : \002%msg.1%\002. Motiv : \002%msg.8%\002"
set black(say.ro.tcl.4) "\005\[BT\]\005 Scriptul \002%msg.1%\002 este deja incarcat."
set black(say.ro.tcl.5) "\005\[BT\]\005 Scriptul \002%msg.1%\002 a fost incarcat cu success."
set black(say.ro.tcl.7) "\005\[BT\]\005 Scriptul \002%msg.1%\002 nu este incarcat."
set black(say.ro.tcl.8) "\005\[BT\]\005 Am dezactivat scriptul \002%msg.1%\002."
set black(say.ro.tcl.9) "\005\[BT\]\005 Sunt \002%msg.1%\002 scripturi (cele incarcate sunt cu BOLD)"
set black(say.ro.tcl.12) "\005\[BT\]\005 \002%msg.1%\002 \002nu\002 exista in scripts."
set black(say.ro.tcl.13) "\005\[BT\]\005 \002%msg.1%\002 exista dar \002nu este\002 incarcat"
set black(say.ro.tcl.14) "\005\[BT\]\005 \002%msg.1%\002 exista si \002este\002 incarcat"
set black(say.ro.tcl.17) "%msg%."
set black(say.ro.tcl.18) "\005\[BT\]\005 Eroare. Nu poti da \002unload\002 la acest script !"
set black(say.ro.tcl.19) "\005\[BT\]\005 Eroare. \002Nu\002 am putut descarca scriptul \002%msg.1%\002 de pe link-ul dat."
set black(say.ro.tcl.20) "\005\[BT\]\005 Descarcare finalizata. Pentru a incarca scriptul foloseste %char%tcl load \002%msg.1%\002"
set black(say.ro.tcl.21) "\005\[BT\]\005 Scriptul \002%msg.1%\002 este descarcat deja."

#################################### Next #####################################

set black(say.ro.next.1) "Bine ai venit \002%nick%\002, te rog sa astepti... De indata ce un helper va fi liber, vei primi voice. Te rog sa nu deranjezi userii cu \002+v/+o\002 prin mesaje! Esti numarul \002%counter%\002 la rand. Multumesc!"
set black(say.ro.next.2) "Ai fost preluat de catre \002%nick%\002. Te rog sa spui problema intr-o \002singura linie\002 si \002sa astepti\002 raspuns din partea helper-ului desemnat tie!"
set black(say.ro.next.3) "\005\[BT\]\005 \002%msg.1%\002 a asteptat timp de \002%msg.set%\002, te rog ocupa-te de el acum :)"
set black(say.ro.next.4) "\002%current%\002 acum ca ai fost ajutat te rog sa dai \002/part\002. Daca mai ai alte intrebari, te rog \002/hop %chan%\002. Multumesc!"
set black(say.ro.next.5) "Nu ai voie sa faci idle aici! Te rog sa revii pe %chan% atunci cand ai nevoie de ajutor"
set black(say.ro.next.6) "\005\[BT\]\005 ATENTIE: %nick% are nevoie de ajutor pe %chan%. Acesta este numarul \002%counter%\002 la rand."
set black(say.ro.next.7) "\005\[BT\]\005 Lista celor care asteapta ajutor este:"
set black(say.ro.next.8) "\005\[BT\]\005 Nimeni nu are nevoie de ajutor în acest moment."
set black(say.ro.next.9) "%msg%"
set black(say.ro.next.11) "\005\[BT\]\005 Atentie: \002%current%\002 a fost preluat de %nick% (%hand%)"
set black(say.ro.next.13) "\005\[BT\]\005 Eroare! \002%msg.1%\002 este in lista de help, dar nu a fost ajutat inca."
set black(say.ro.next.14) "\005\[BT\]\005 Eroare! \002%msg.1%\002 nu se afla in lista de help."
set black(say.ro.next.15) "\005\[BT\]\005 ATENTIE: %current% a primit \002helped\002 de la %nick% (%hand%)."
set black(say.ro.next.17) "\005\[BT\]\005 Eroare! Trebuie mai intai ca %msg.1% sa primeasca \002helped %msg.1%\002."
set black(say.ro.next.19) "\005\[BT\]\005 \002%msg.1%\002 a fost sarit (acum este ultimul)"

#################################### Quote #####################################

set black(say.ro.quote.1) "\005\[BT\]\005 Am adaugat \002quote\002 cu nr. \002%msg.1%\002 in baza de date."
set black(say.ro.quote.2) "\005\[BT\]\005 *** Sfarsit lista quotes ***"
set black(say.ro.quote.3) "\005\[BT\]\005 #%msg.1% :: \002Creat in\002: %msg.2%"
set black(say.ro.quote.4) "\005\[BT\]\005 %msg.1% :: %msg.2% :: \002Creat in\002: %msg.3%"
set black(say.ro.quote.6) "\004%msg.1%\004) %msg.8%"
set black(say.ro.quote.7) "\005\[BT\]\005 Nu sunt quotes pentru \002%chan%\002"
set black(say.ro.quote.8) "\005\[BT\]\005 Lista de \002quote\002 pentru \002%chan%\002 este:"
set black(say.ro.quote.9) "\005\[BT\]\005 Pentru a afisa urmatoarele \002quotes\002 tasteaza %char%quote list -next (\002%counter%\002 quotes ramase)"
set black(say.ro.quote.10) "\005\[BT\]\005 Am sters \002quote\002 cu numarul \002%msg.1%\002 pentru %chan%."
set black(say.ro.quote.11) "\005\[BT\]\005 Nu am gasit \002quote\002."
set black(say.ro.quote.12) "\005\[BT\]\005 \002Quote-ul zilei\002"
set black(say.ro.quote.13) "\005\[BT\]\005 Nu exista \002quote\002 cu numarul \002%msg.1%\002 pentru \002%chan%\002"
set black(say.ro.quote.14) "\005\[BT\]\005 Pentru a afisa urmatoarele \002quotes\002 tasteaza %char%quote %chan% list -next (\002%counter%\002 quotes ramase)"
set black(say.ro.quote.15) "\002Adaugat de\002 :"
set black(say.ro.quote.16) "%msg%"
set black(say.ro.quote.17) "\005\[BT\]\005 \002Quote\002 #%msg.1%: %msg.set%"
set black(say.ro.quote.18) "\005\[BT\]\005 Alte numere de \002Quote\002: %msg%"
set black(say.ro.quote.19) "\005\[BT\]\005 \002Quote\002: %msg%"

#################################### Notes #####################################

set black(say.ro.notes.1) "\005\[BT\]\005 Am salvat \002note\002 cu nr. \002%msg.1%\002 in baza ta de date."
set black(say.ro.notes.2) "\005\[BT\]\005 Note trimis catre \002%msg.1%\002/%msg.2% usere."
set black(say.ro.notes.3) "\005\[BT\]\005 Note trimis catre \002%msg.1%\002/%msg.2% usere. Usere invalide: %msg.7%"
set black(say.ro.notes.4) "\005\[BT\]\005 Nu exista note-ul cu numarul #\002%msg.1%\002."
set black(say.ro.notes.5) "\005\[BT\]\005 \002Note\002 #%msg.1%: \002Locatie\002: %msg.2% \002Data adaugarii\002: %msg.3%"
set black(say.ro.notes.6) "\005\[BT\]\005 \002Mesaj\002: %msg%"
set black(say.ro.notes.7) "\005\[BT\]\005 \002Note\002 #%msg.1%: \002Locatie\002: %msg.2% \002Trimis de\002: %msg.3% \002Data trimiterii\002: %msg.4%"
set black(say.ro.notes.8) "\005\[BT\]\005 Am sters \002note\002 cu numarul \002%msg.1%\002."
set black(say.ro.notes.9) "\002Status\002: CITIT \002Note\002: "
set black(say.ro.notes.10) "\002Status\002: NECITIT \002Note\002: "
set black(say.ro.notes.11) "\005\[BT\]\005 Ai \002%msg.1%\002 note-uri noi din \002%msg.2%\002 note-uri total. Numerele sunt: \002%msg.7%\002"
set black(say.ro.notes.12) "\005\[BT\]\005 Ai \002%msg.1%\002 note-uri noi din \002%msg.2%\002 note-uri total."
set black(say.ro.notesinbox.13) "\005\[BT\]\005 Pentru a citi note-urile foloseste optiunea \002%char%note read <numar>\002"
set black(say.ro.notesinbox.15) "\005\[BT\]\005 Pentru a afisa urmatoarele \002Notes\002 tasteaza %char%note inbox -next (\002%counter%\002 note-uri ramase)"
set black(say.ro.notesinbox.16) "\005\[BT\]\005 Pentru a afisa urmatoarele \002Notes\002 tasteaza %char%note %chan% inbox -next (\002%counter%\002 note-uri ramase)"
set black(say.ro.notes.13) "\005\[BT\]\005 Nu ai note-uri in lista adaugate."
set black(say.ro.notes.14) "\005\[BT\]\005 Ai \002%msg.1%\002 note-uri adaugate."
set black(say.ro.noteslist.15) "\005\[BT\]\005 Pentru a afisa urmatoarele \002Notes\002 tasteaza %char%note list -next (\002%counter%\002 note-uri ramase)"
set black(say.ro.noteslist.16) "\005\[BT\]\005 Pentru a afisa urmatoarele \002Notes\002 tasteaza %char%note %chan% list -next (\002%counter%\002 note-uri ramase)"
set black(say.ro.noteslist.13) "\005\[BT\]\005 Pentru a citi Note-ul intreg foloseste optiunea \002%char%note read <numar>\002"
set black(say.ro.notes.15) "\005\[BT\]\005 Am sters toate \002note-rile\002 din INBOX."
set black(say.ro.notes.16) "\005\[BT\]\005 Pentru a citi un note foloseste optiunea \002%char%note read <numar>\002"

#############################################################################################################################
#                                                                                                                           #
#                                                       COMENZI                                                             #
#                                                                                                                           #
#############################################################################################################################

###################################### ReportNick #################################

set black(say.ro.report.1) "\005\[BT\]\005 Te rog asteapta %msg.1% de secunde inainte de a executa o alta comanda de tip \002%char%report\002. Multumesc!"
set black(say.ro.report.2) "\005\[BT\]\005 \[REPORT\] Nick: \002%msg.1%\002 ; Raportat de: \002%msg.2%\002 ; Motiv: %msg.8%"
set black(say.ro.report.3) "\005\[BT\]\005 \[REPORT\] Nick: \002%msg.1%\002 ; Raportat de: \002%msg.2%\002"
set black(say.ro.report.4) "\005\[BT\]\005 Report-ul tau a fost trimis catre operatori. Iti multumim!"
set black(say.ro.report.5) "\005\[BT\]\005 Suna la 112 in cazul asta :-)"

###################################### cp #####################################

set black(say.ro.cp.1) "\005\[BT\]\005 Copiere esuata. (lista de banuri a canalului \002%msg.1%\002 este goala)"
set black(say.ro.cp.2) "\005\[BT\]\005 Copiere esuata. (%msg% nu este canal valid.)"
set black(say.ro.cp.3) "\005\[BT\]\005 Copiere esuata. (%msg% nu sunt canale valide.)"
set black(say.ro.cp.4) "\005\[BT\]\005 Copiere efectuata. (\002%msg.1%\002 inregistrari copiate)"
set black(say.ro.cp.5) "\005\[BT\]\005 Copiere efectuata. (\002%msg.1%\002 useri din \002%msg.2%\002 copiati)"
set black(say.ro.cp.6) "\005\[BT\]\005 Copiere efectuata. (\002%msg.1%\002 setari copiate)"

#################################### mySet ####################################

set black(say.ro.myset.1) "\005\[BT\]\005 Ti-am setat limba la \002%msg.1%\002"
set black(say.ro.myset.2) "\005\[BT\]\005 Ti-am setat iesirea la \002%msg.1%\002"
set black(say.ro.myset.3) "\005\[BT\]\005 Ti-am setat autoinvite \002%msg.1%\002"
set black(say.ro.myset.4) "\005\[BT\]\005 Ti-am setat handle la \002%msg.1%\002"
set black(say.ro.myset.5) "\005\[BT\]\005 Nu am putut seta limba \002%msg.1%\002 deoarece fisierul nu exista."
set black(say.ro.myset.6) "\005\[BT\]\005 Ti-am setat greet la %msg%"
set black(say.ro.myset.7) "\005\[BT\]\005 Ti-ai adaugat ca host \002%msg.1%\002"
set black(say.ro.myset.8) "\005\[BT\]\005 Ti-ai sters host-ul \002%msg.1%\002 din baza de date."
set black(say.ro.myset.9) "\005\[BT\]\005 Nu exista host-ul \002%msg.1%\002 in baza mea de date."
set black(say.ro.myset.10) "\005\[BT\]\005 Ti-am setat \002mychan\002 la \002%msg.1%\002"
set black(say.ro.myset.11) "\005\[BT\]\005 Ti-am resetat \002%msg.1%\002"
set black(say.ro.myset.12) "\005\[BT\]\005 \002%msg.1%\002 este setat la: %msg.8%"
set black(say.ro.myset.13) "\005\[BT\]\005 Ti-am setat \002noteexpire\002 la \002%msg.1%\002"
set black(say.ro.myset.14) "\005\[BT\]\005 Trebuie sa specifici 4 culori din cele disponibile. Culori disponibile :\002bold\002 \001underline\001 \0034red\003 \00312blue\003 \0033green\003 \0038yellow\003 \0037orange\003 \00310cyan\003 \00314grey\003 \0035brown\003 \0036purple\003 \00313pink\003 black"
set black(say.ro.myset.15) "\005\[BT\]\005 Una din culorile introduse este invalida. Culori disponibile : \002bold\002 \001underline\001 \0034red\003 \00312blue\003 \0033green\003 \0038yellow\003 \0037orange\003 \00310cyan\003 \00314grey\003 \0035brown\003 \0036purple\003 \00313pink\003 black"
set black(say.ro.myset.16) "\005\[BT\]\005 Ti-am setat \002colors\002 la : %msg%"
set black(say.ro.myset.17) "\005\[BT\]\005 Trebuie sa specifici unul dintre caractere disponibile. Caractere disponibile: %msg%"
set black(say.ro.myset.18) "\005\[BT\]\005 Ti-am setat \002mychar\002 la : %msg.1%"

################################# Troll ######################################

set black(say.ro.troll.5) "Pentru ca nu sti sa te comporti, esti pus in lista de troli pentru 24 de ore ! :-)"
set black(say.ro.troll.6) "\005\[BT\]\005 Trolii curenti (cei fara 7 ani de acasa) sunt: %msg%"

#################################### dr #######################################

set black(say.ro.dr.5) "Drona/posibila infectare malware"

#################################### vr #######################################

set black(say.ro.vr.5) "Mirc-ul tau este infectat cu un vierme/virus, te rog sa iti cureti computerul"

################################### Bot #######################################

set black(say.ro.bot.5) "Posibil BOT Detectat"
set black(say.ro.bot.6) "\005\[BT\]\005 Pentru unban foloseste: \002/msg %botnick% unbanme %chan% %msg%\002"
set black(say.ro.bot.7) "\005\[BT\]\005 Bravo! Banul tau de pe %chan% a fost scos. Poti reintra acum!" 
set black(say.ro.bot.8) "Daca nu esti BOT -> /msg %botnick% unbanme %chan%"

################################## b #####################################

set black(say.ro.b.5)  { "Esti banat!"
			 "Si uite asa stai pe status o vreme ;-)"
			 "Este vremea de stat pe status :P Savureaz-o ;D"
			 "Nu stii cata lume ar vrea sa fie in locul tu..adica sa zboare ;))"
			 }
set black(say.ro.b.6) "\005\[BT\]\005 Perioada maxim de ban pentru nivelul tau este de \0027d\002 (20160 minute)"
set black(say.ro.b.7) "\005\[BT\]\005 Ai adaugat un ban local pe \002%chan%\002"
set black(say.ro.b.8) "\005\[BT\]\005 Ai adaugat un ban global"
set black(say.ro.b.9) "\005\[BT\]\005 Nu este voie massban."
set black(say.ro.b.10) "\005\[BT\]\005 %msg.1% nu este un banmask valid."

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

set black(say.ro.gag.1) "- ATENTIE - \002%gag%\002 mai are de ispasit o perioada de \002%minute%\002 de Gag. Bucura-te de sunetul linistii :-)"
set black(say.ro.gag.2) "\005\[BT\]\005 *** Sfarsit GAGLIST ***"
set black(say.ro.gag.3) "\005\[BT\]\005 \002%msg.1%\002 are deja Gag pe %chan%."
set black(say.ro.gag.4) "\005\[BT\]\005 \002%msg.1%\002 are deja ban pe %chan%."
set black(say.ro.gag.5) "- ATENTIE - a expirat gag-ul pentru \002%nick%\002, acum poti tasta pe \002%chan%\002. Data viitoare sa fii mai atent :-)"
set black(say.ro.gag.6) "Fara motiv"
set black(say.ro.gag.7) "\005\[BT\]\005 Perioada maxima de Gag pentru nivelul tau este de \0027d\002 (20160 minute)"
set black(say.ro.gag.10) "\005\[BT\]\005 Nu mai poti scrie pe \002%chan%\002 pentru %time%."
set black(say.ro.gag.11) "- ATENTIE - \002%gagger%\002 nu o sa mai poata tasta pe \002%chan%\002 pentru \002%time%\002."

################################# unGag #####################################

set black(say.ro.ungag.5) "\005\[BT\]\005 Nu am gasit niciun gag pentru %msg.1% pe %chan%."
set black(say.ro.ungag.6) "\005\[BT\]\005 Am scos gag-ul pentru %msg.1% pe %chan%."
set black(say.ro.ungag.7) "\005\[BT\]\005 Acum poti scrie pe %chan%"
set black(say.ro.ungag.8) "- ATENTIE - %gagger% acum poate tasta pe %chan%"

################################ bw #########################################

set black(say.ro.bw.5) "Utilizator nedorit din cauza comportamentului abuziv"

############################### sb ##########################################

set black(say.ro.sb.1) "\005\[BT\]\005 Am gasit \002%msg.1%\002 banuri (%msg.2% globale, %msg.3% locale)"
set black(say.ro.sb.2) "\005\[BT\]\005 Nu am gasit niciun ban referitor la host-ul \002%msg.1%\002."
set black(say.ro.sb.3) "\005\[BT\]\005 \[ID: %msg.1%\] ; \[CANAL\] * ; \002%msg.2%\002 ; Adaugat de: \002%msg.3%\002 ; Data: \002%msg.4%\002 ; Expira: %msg.12% \002%msg.13%\002 \002%msg.15%\002 ; Motiv: %msg.16%"
set black(say.ro.sb.4) "\005\[BT\]\005 \[ID: %msg.1%\] ; \[CANAL\] \002%chan%\002 ; \002%msg.2%\002 ; Adaugat de: \002%msg.3%\002 ; Data: \002%msg.4%\002 ; Expira: %msg.12% \002%msg.13%\002 \002%msg.15%\002 ; Motiv: %msg.16%"
set black(say.ro.sb.5) "\005\[BT\]\005 Am gasit prea multe rezultate (>10) te rog sa reformulezi cautarea."
set black(say.ro.sb.6) "\005\[BT\]\005 Am gasit \002%msg.1%\002 banuri locale"
set black(say.ro.sb.7) "\005\[BT\]\005 Acesta a scris pe canal: %msg%"
set black(say.ro.sb.8) "\005\[BT\]\005 Acesta s-a aflat pe urmatoarele canale interzise: %msg%"
set black(say.ro.sb.9) "\005\[BT\]\005 \[ID: %msg.1%\] ; \[CANAL\] \002%chan%\002 ; \002%msg.2%\002 ; Adaugat de: \002%msg.3%\002 ; Data: \002%msg.4%\002 ; Expira: %msg.12% ; Motiv: %msg.11%"
set black(say.ro.sb.10) "\005\[BT\]\005 \[ID: %msg.1%\] ; \[CANAL\] * ; \002%msg.2%\002 ; Adaugat de: \002%msg.3%\002 ; Data: \002%msg.4%\002 ; Expira: %msg.12% ; Motiv: %msg.11%"
set black(say.ro.sb.11) "\005\[BT\]\005 Nu am gasit niciun ban referitor la ID-ul \002%msg.1%\002."

############################### Stick ########################################

set black(say.ro.stick.5) "Sticky ban"

################################## BanList ##################################### 

set black(say.ro.banlist.1) "Permanent"
set black(say.ro.banlist.2) "\005\[BT\]\005 \[CANAL\]: * (\002%msg.1%\002 banuri gasite)"
set black(say.ro.banlist.3) "\005\[BT\]\005 Pentru a afisa urmatoarele banuri tasteaza %char%banlist global -next (\002%counter%\002 banuri ramase)"
set black(say.ro.banlist.4) "\005\[BT\]\005 *** Sfarsit BANLIST ***"
set black(say.ro.banlist.5) "\005\[BT\]\005 \002%msg.2%\002 ; \[ID: %msg.1%\] ; \002%msg.3%\002 ; Adaugat de: \002%msg.4%\002 ; Data: \002%msg.12%\002 ; Expira: %msg.13% \002%msg.15%\002 \002%msg.17%\002 ; Motiv: %msg.20%"
set black(say.ro.banlist.6) "\005\[BT\]\005 \[CANAL\]: %chan% (\002%msg.1%\002 banuri gasite)"
set black(say.ro.banlist.7) "\005\[BT\]\005 \[USER\]: %msg.2% (\002%msg.1%\002 banuri gasite)"
set black(say.ro.banlist.8) "\005\[BT\]\005 Pentru a afisa urmatoarele banuri tasteaza %char%banlist \002%user%\002 -next (\002%counter%\002 banuri ramase)"
set black(say.ro.banlist.9) "\005\[BT\]\005 \002%msg.2%\002 ; \[ID: %msg.1%\] ; \002%msg.3%\002 ; Data: \002%msg.4%\002 ; Expira: %msg.12% \002%msg.13%\002 \002%msg.15%\002 ; Motiv: %msg.16%"
set black(say.ro.banlist.10) "\005\[BT\]\005 Pentru a afisa urmatoarele banuri tasteaza %char%banlist all -next (\002%counter%\002 banuri ramase)"
set black(say.ro.banlist.11) "\005\[BT\]\005 \002%msg.2%\002 ; \[ID: %msg.1%\] ; \002%msg.3%\002 ; Adaugat de: \002%msg.4%\002 ; Data: \002%msg.12%\002 ; Expira: %msg.13% ; Motiv: %msg.14%"
set black(say.ro.banlist.12) "\005\[BT\]\005 \002%msg.2%\002 ; \[ID: %msg.1%\] ; \002%msg.3%\002 ; Data: \002%msg.4%\002 ; Expira: %msg.12% ; Motiv: %msg.11%"
set black(say.ro.banlist.13) "NICIODATA"
set black(say.ro.banlist.14) "\005\[BT\]\005 Pentru a afisa urmatoarele banuri tasteaza %char%banlist %chan% all -next (\002%counter%\002 banuri ramase)"

############################### Status #######################################

set black(say.ro.status.1) "\005\[BT\]\005 Versiune script: \002%msg.1% %msg.2%\002. Versiune eggdrop: \002%msg.3%\002."
set black(say.ro.status.2) "\005\[BT\]\005 Timp pornire: %msg%"
set black(say.ro.status.3) "\005\[BT\]\005 Durata timp online: %msg%"
set black(say.ro.status.4) "\005\[BT\]\005 Canale: %msg%"
set black(say.ro.status.5) "\005\[BT\]\005 Numar total useri: \002%msg.1%\002. Eggdrop owner: \002%msg.2%\002"

############################## upTime #######################################

set black(say.ro.uptime.2) "\005\[BT\]\005 Uptime server: %msg%"
set black(say.ro.uptime.3) "\005\[BT\]\005 Server conectat: %msg%"

################################ i ##########################################

set black(say.ro.i.1) "\005\[BT\]\005 %msg.1% se afla deja pe %chan%."
set black(say.ro.i.2) "\005\[BT\]\005 Il invit pe %msg.1% pe %chan%."
set black(say.ro.i.7) "Esti invitat pe %chan% de %nick%, daca vrei sa intri tasteaza /join %chan%. Multumesc!"

################################ Cycle #####################################

set black(say.ro.cycle.1) { "\005\[BT\]\005 Fac miscare.."
			    "\005\[BT\]\005 Hai, toata lumea la join/part :-)"
			    "\005\[BT\]\005 Macar asa mai scap si eu de 'patratele' :p"
			    "\005\[BT\]\005 Nu cred ca o sa mai vin inapoi, sau da ?:P"
			    }
set black(say.ro.cycle.2) "\005\[BT\]\005 Ma intorc in %msg.1% secunde.."

################################ Purge #####################################

set black(say.ro.purge.1) "\005\[BT\]\005 Te rog sa specifi un motiv.."

################################## Chat #####################################

set black(say.ro.chat.1) "\005\[BT\]\005 \002DCC CHAT\002 - Initializare..."
set black(say.ro.chat.2) "\005\[BT\]\005 Trebuie sa ai setata, mai intai, o parola. Foloseste: /msg %botnick% pass \001<parola ta>\001"

################################## Version ##################################

set black(say.ro.version.1) "\005\[BT\]\005 VERSIUNE SCRIPT: \002BlackTools %msg.1%\002 Creat de \002BLaCkShaDoW\002. Pentru mai multe informatii ---= \002WwW.TclScripts.Net\002 or #TCL-HELP @ UNDERNET"

################################# ub ######################################

set black(say.ro.ub.1) "\005\[BT\]\005 Nu am gasit niciun ban care sa corespunda cu \002%msg.1%\002"
set black(say.ro.ub.2) "\005\[BT\]\005 Am scos \002%msg.1%\002 banuri (\002%msg.2%\002 gasite) care au corespuns cu \002%msg.3%\003"
set black(say.ro.ub.3) "\005\[BT\]\005 Nu am gasit niciun ban \[GLOBAL\] care sa corespunda cu \002%msg.1%\002"
set black(say.ro.ub.4) "\005\[BT\]\005 Am scos \002%msg.1%\002 banuri \[GLOBALE\] care au corespuns cu \002%msg.2%\003"
set black(say.ro.ub.5) "\005\[BT\]\005 Nu ai destul access pentru a sterge lista de banuri."
set black(say.ro.ub.6) "\005\[BT\]\005 Am scos ban-ul din banlist-ul canalului \002%chan%\002"
set black(say.ro.ub.7) "\005\[BT\]\005 Am scos \002%msg.1%\002 banuri de pe \002%msg.2%\002 canale ce au \002LINK\002"
set black(say.ro.ub.8) "\005\[BT\]\005 Nu am gasit niciun ban care sa corespunda cu ID-ul \002%msg.1%\002 pe %chan%"
set black(say.ro.ub.9) "\005\[BT\]\005 Am scos banul ce corespunde cu ID-ul \002%msg.3%\003 de pe %chan%"
set black(say.ro.ub.10) "\005\[BT\]\005 Am scos banul \[GLOBAL\] ce corespunde cu ID-ul \002%msg.2%\002"
set black(say.ro.ub.11) "\005\[BT\]\005 Nu am gasit niciun ban \[GLOBAL\] care sa corespunda cu ID-ul \002%msg.1%\002"

################################## Mode ###################################

set black(say.ro.mode.6) "\005\[BT\]\005 Am aplicat modurile \002%msg.1%\002 pe \002%chan%\002."

################################### Set ###################################

set black(say.ro.set.3) "\005\[BT\]\005 Este deja setat \002%msg.1%\002 %msg.set% pe %chan%"
set black(say.ro.set.4) "\005\[BT\]\005 Este deja setat \002%msg.1%\002 pe %chan%."
set black(say.ro.set.5) "\005\[BT\]\005 Nu am putut seta \002%msg.1%\002 pe %chan%."
set black(say.ro.set.6) "\005\[BT\]\005 Am setat \002%msg.1%\002 pentru %chan%"
set black(say.ro.set.7) "\005\[BT\]\005 Nu am putut seta \002%msg.1%\002 %msg.set% pe %chan%."
set black(say.ro.set.8) "\005\[BT\]\005 Am setat \002%msg.1%\002 %msg.set% pentru %chan%"
set black(say.ro.set.14) "\005\[BT\]\005 Setare invalida."

#################################### unSet #################################

set black(say.ro.unset.1) "\005\[BT\]\005 Nu exista setarea \002%msg.1%\002."
set black(say.ro.unset.2) "\005\[BT\]\005 Am scos setarea \002%msg.1%\002 de pe %chan%."
set black(say.ro.unset.3) "\005\[BT\]\005 \002%msg.1%\002 nu este setata pe %chan%."
set black(say.ro.unset.4) "\005\[BT\]\005 Am scos toate setarile de tip \002flag\002 de pe %chan%."
set black(say.ro.unset.5) "\005\[BT\]\005 Am scos toate setarile de tip \002string\002 de pe %chan%."

#################################### Timer ####################################

set black(say.ro.timer.1) "\005\[BT\]\005 Lista de timere active este:"
set black(say.ro.timer.2) "#\002%msg.1%\002 PID: \002%msg.2%\002 ; Timp activare: \002%msg.3%\002 minute ; Nume proces: \002%msg.4%\002"
set black(say.ro.timer.3) "#\002%msg.1%\002 PID: \002%msg.2%\002 ; Timp activare: \002%msg.3%\002 secunde ; Nume proces: \"\002%msg.9%\002\""
set black(say.ro.timer.4) "\005\[BT\]\005 Sfarsit lista timere."
set black(say.ro.timer.5) "\005\[BT\]\005 Timer-ul avand pid-ul \002%msg.1%\002 a fost inchis"
set black(say.ro.timer.6) "\005\[BT\]\005 Nu exista timer-ul cu pid-ul \002%msg.1%\002"
set black(say.ro.timer.7) "\005\[BT\]\005 Am pornit timer cu pid \002%msg.1%"
set black(say.ro.timer.8) "\005\[BT\]\005 Un timer ce are acelasi proces este deja pornit."

#################################### Ignore ################################

set black(say.ro.ignore.2) "\005\[BT\]\005 Nu poti da ignore deoarece host-ul apartine unui user ce are access mai mare ca al tau."
set black(say.ro.ignore.3) "\005\[BT\]\005 Nu sunt ignoruri date."
set black(say.ro.ignore.4) "\005\[BT\]\005 Host:\002%msg.1%\002 Adaugat de: \002%msg.2%\002 Motiv: %msg.6% Data expirare: \002%msg.3%\002"
set black(say.ro.ignore.5) "\005\[BT\]\005 \002%msg.1%\002 are deja ignore."
set black(say.ro.ignore.6) "\005\[BT\]\005 Am adaugat ignore pe host \002%msg.1%\002 cu motiv: %msg.7% pe o perioada de: \002%msg.2%\002"
set black(say.ro.ignore.8) "\005\[BT\]\005 \002%msg.1%\002 nu are ignore."
set black(say.ro.ignore.9) "\005\[BT\]\005 Am scos ignore pentru \002%msg.1%\002"

################################## Show ####################################

set black(say.ro.show.5) "\005\[BT\]\005 Nu am putut obtine informatii despre \002%msg.1%\002."
set black(say.ro.show.6) "\005\[BT\]\005 \002%msg.1%\002 este setat la: %msg.8%"
set black(say.ro.show.7) "\005\[BT\]\005 Flagul \002%msg.1%\002 este activat pe %chan%."
set black(say.ro.show.8) "\005\[BT\]\005 Flagul \002%msg.1%\002 este dezactivat pe %chan%."

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

set black(say.ro.nick.1) "\005\[BT\]\005 Imi schimb nick-ul in %msg.1% (setare permanenta)"
set black(say.ro.nick.2) "\005\[BT\]\005 Foloseste \"nick <nick nou>\""
set black(say.ro.nick.3) "\005\[BT\]\005 Atentie. Nick-ul a fost schimbat doar pana la urmatorul restart. (te rog verifica daca exista setarea \"set nick\" in config-ul eggdrop-ului."
set black(say.ro.nick.4) "\005\[BT\]\005 Imi schimb nick-ul in %msg.1% (setare temporara)"

################################### AddChan ##################################

set black(say.ro.addchan.2) "\005\[BT\]\005 %msg.1% este deja in lista mea de canale."
set black(say.ro.addchan.3) "\005\[BT\]\005 Am adaugat %msg.1% in lista mea de canale"

################################### DelChan ##################################

set black(say.ro.delchan.2) "\005\[BT\]\005 Canalul %msg.1% nu se afla in memoria mea."
set black(say.ro.delchan.3) "\005\[BT\]\005 Am sters %msg.1% din lista mea de canale."
set black(say.ro.delchan.5) "\005\[BT\]\005 Nu poti sterge canalul %msg.1% deoarece are rang de \002HOMECHAN\002."

################################### Suspend ##################################

set black(say.ro.suspend.3) "\005\[BT\]\005 \002%msg.1%\002 are deja suspend"
set black(say.ro.suspend.4) "\005\[BT\]\005 Am suspendat canalul %msg.1%"

################################### unsuspend ##################################

set black(say.ro.unsuspend.3) "\005\[BT\]\005 %msg.1% nu are suspend"
set black(say.ro.unsuspend.4) "\005\[BT\]\005 Am scos suspendul pentru canalul %msg.1%"

################################### add #########################################

set black(say.ro.add.5) "\005\[BT\]\005 Mai exista un user in baza mea de date cu acelasi host. Acesta este \002%msg.1%\002."
set black(say.ro.add.6) "\005\[BT\]\005 Nu poti da access de \002%msg.1%\002 deoarece acesta este desupra level-ului tau."
set black(say.ro.add.7) "\005\[BT\]\005 Nu poti da access de \002%msg.2%\002 deoarece acesta este level-ul tau."
set black(say.ro.add.8) "\005\[BT\]\005 Nu poti da access de \002%msg.3%\002 deoarece acesta este level-ul tau."
set black(say.ro.add.10) "\005\[BT\]\005 Am adaugat user-ul \002%msg.1%\002 cu host :\002%msg.2%\002"
set black(say.ro.add.17) "\005\[BT\]\005 Userul \002%msg.1%\002 este prea lung. Acesta a fost scurtat automat la \002%msg.2%\002"
set black(say.ro.add.18) "\005\[BT\]\005 Te rog foloseste un user valid format din caractere alfanumerice."
set black(say.ro.add.19) "\005\[BT\]\005 \002%msg.1%\002 are access de \002%msg.2%\002 pe \002%chan%\002."
set black(say.ro.add.20) "\005\[BT\]\005 \002%msg.1%\002 are access de \002%msg.2%\002."

################################### DelAcc #########################################

set black(say.ro.delacc.1) "\005\[BT\]\005 Am sters access-ul pentru %msg.1% pe %chan%."
set black(say.ro.delacc.2) "\005\[BT\]\005 Am sters access-ul de OWNER pentru %msg.1%."
set black(say.ro.delacc.3) "\005\[BT\]\005 Nu are access de OWNER."
set black(say.ro.delacc.4) "\005\[BT\]\005 Am sters access-ul de MASTER pentru %msg.1%."

#################################### Del ###########################################

set black(say.ro.del.1) "\005\[BT\]\005 Am sters \002%msg.1%\002 din memoria mea."
set black(say.ro.del.2) "\005\[BT\]\005 Nu poti sterge user-ul \002%msg.1%\002 deorece are access pe alte canale. Foloseste: \002delacc %msg.1%\002"

################################### AddHost ########################################

set black(say.ro.addhost.1) "\005\[BT\]\005 Hostul \002%msg.2%\002 exista deja in baza de date a lui \002%msg.1%\002."
set black(say.ro.addhost.2) "\005\[BT\]\005 Am adaugat host-ul: \002%msg.2%\002 la user-ul: \002%msg.1%\002"

################################### DelHost ########################################

set black(say.ro.delhost.1) "\005\[BT\]\005 Hostul \002%msg.2%\002 nu exista in baza de date a lui \002%msg.1%\002."
set black(say.ro.delhost.2) "\005\[BT\]\005 Am sters host-ul: \002%msg.2%\002 de la user-ul: \002%msg.1%\002"

################################### chUser ########################################

set black(say.ro.chuser.1) "\005\[BT\]\005 Am schimbat user-ul %msg.1% in: \002%msg.2%\002 ."
set black(say.ro.chuser.2) "\005\[BT\]\005 Ti-ai schimbat handle in: \002%msg.1%\002 ."
set black(say.ro.chuser.3) "\005\[BT\]\005 Exista deja un user cu acelasi handle. Te rog alege altul."

################################### UserList ########################################

set black(say.ro.userlist.1) "\005\[BT\]\005 %msg%"
set black(say.ro.userlist.2) "\005\[BT\]\005 Am in memorie %msg.1% useri pe %chan%:"

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

set black(say.ro.info.1) "\005\[BT\]\005 \[USER\] %msg.1% Nivel ACCESS : \002%msg.8%\002"
set black(say.ro.info.2) "\005\[BT\]\005 \[CANAL\] \002%msg.1%\002 -- AUTOMODE: \002%msg.2%\002 -- STATISTICI: \002%char%activ %msg.3%\002"
set black(say.ro.info.3) "\005\[BT\]\005 \[Mesaj intampinare\] %msg%"
set black(say.ro.info.4) "\005\[BT\]\005 \[Ultima oara modificat de\] \002%msg.1%\002 in data de: \002%msg.8%\002"
set black(say.ro.info.5) "\005\[BT\]\005 \[Ultima oara vazut ONLINE\] \002%msg.1%\002"
set black(say.ro.info.6) "\005\[BT\]\005 \[Host-uri\] %msg%"
set black(say.ro.info.7) "\005\[BT\]\005 ** SUSPENDAT ** - Expira in %msg.1% %msg.2% %msg.3% (Nivel \002%msg.4%\002) - Motiv: \002%msg.10%\002"
set black(say.ro.info.8) "\005\[BT\]\005 \[Canalele unde are access\] %msg%."
set black(say.ro.info.9) "\005\[BT\]\005 ** SUSPENDAT GLOBAL ** - Expira in %msg.1% %msg.2% %msg.3% (Nivel \002%msg.4%\002) - Motiv: \002%msg.10%\002"
set black(say.ro.info.10) "\005\[BT\]\005 \[Ultima oara vazut ONLINE\] \002%msg.1%\002 pe canalul: \002%msg.2%\002"
set black(say.ro.info.11) "\005\[BT\]\005 \[USER\] %msg.1%"
set black(say.ro.info.12) "\005\[BT\]\005 Am gasit (%msg.1%) inregistrari: \002%msg.8%\002."
set black(say.ro.info.13) "\005\[BT\]\005 Am gasit (%msg.1%) inregistrari. Te rog rectifica cautarea." 
set black(say.ro.info.14) "\005\[BT\]\005 Pentru a afla informatii despre cea corecta, foloseste: %char%info <user>"
set black(say.ro.info.15) "\005\[BT\]\005 \[CANAL\] \002%msg.1%\002 -- moduri: \002%msg.8%\002"
set black(say.ro.info.16) "\005\[BT\]\005 \[MANAGER\] %msg%"
set black(say.ro.info.17) "\005\[BT\]\005 \[TOPIC\] %msg%"
set black(say.ro.info.18) "\005\[BT\]\005 \[URL\] %msg%"
set black(say.ro.info.19) "\005\[BT\]\005 \[STATUS\] %msg%"
set black(say.ro.info.20) "\005\[BT\]\005 \[INREGISTRAT\] \002%msg.1%\002 (\002%msg.8%\002)"
set black(say.ro.info.21) "\005\[BT\]\005 \[STATISTICI\] intrari: \002%msg.1%\002 | useri: \002%msg.2%\002 (%msg.3% cu acces) | banuri: \002%msg.4%\002 | seen: \002%msg.5%\002"
set black(say.ro.info.22) "SUSPENDAT"
set black(say.ro.info.23) "NU SUNT PE CANAL"
set black(say.ro.info.24) "Fara OP"
set black(say.ro.info.25) "\005\[BT\]\005 \[CANAL\] \002%msg.1%\002 -- AUTOMODE: \002%msg.2%\002 -- Flaguri: \002%msg.3%\002 -- STATISTICI: \002%char%activ %msg.4%\002"
set black(say.ro.info.26) "AUTOSUSPENDAT -- Motiv: Nu am putut intra, canal plin (+l)"
set black(say.ro.info.27) "AUTOSUSPENDAT -- Motiv: Nu am putut intra, canalul are KEY (+k)"
set black(say.ro.info.28) "AUTOSUSPENDAT -- Motiv: Nu am putut intra, canalul e INVITE ONLY (+i)"
set black(say.ro.info.29) "AUTOSUSPENDAT -- Motiv: Nu am putut intra, am ban pe canal (+b)"
set black(say.ro.info.30) "NU SUNT PE CANAL -- Motiv: Nu pot intra, canalul este plin (+l)"
set black(say.ro.info.31) "NU SUNT PE CANAL -- Motiv: Nu pot intra, canalul are KEY (+k)"
set black(say.ro.info.32) "NU SUNT PE CANAL -- Motiv: Nu pot intra, canalul e INVITE ONLY (+i)"
set black(say.ro.info.33) "NU SUNT PE CANAL -- Motiv: Nu pot intra, am ban pe canal (+b)"
set black(say.ro.info.34) "NU SUNT PE CANAL -- Motiv: Nu pot intra, restrictie de mod (+r)"
set black(say.ro.info.35) "AUTOSUSPENDAT -- Motiv: Nu am putut intra, restrictie de mod (+r)"
set black(say.ro.info.36) "\005\[BT\]\005 \[Setari\] %msg%"

################################## s #############################################

set black(say.ro.s.1) "\005\[BT\]\005 \002%msg.1%\002 este deja suspendat pe %chan%."
set black(say.ro.s.2) "\005\[BT\]\005 Access-ul lui \002%msg.1%\002 a fost suspendat pe \002%chan%\002"
set black(say.ro.s.3) "Nu a fost specificat niciun motiv."
set black(say.ro.s.4) "\005\[BT\]\005 \002%msg.1%\002 este deja suspendat de un user ce are nivel mai mare ca al tau."
set black(say.ro.s.5) "\005\[BT\]\005 Access-ul lui \002%msg.1%\002 a fost suspendat \002GLOBAL\002"

################################## us #############################################

set black(say.ro.us.1) "\005\[BT\]\005 \002%msg.1%\002 nu are suspend pe %chan%."
set black(say.ro.us.2) "\005\[BT\]\005 Am scos suspendul lui \002%msg.1%\002 pe %chan%"
set black(say.ro.us.3) "\005\[BT\]\005 Am scos suspendul GLOBAL lui \002%msg.1%\002"

################################## r ##############################################

set black(say.ro.r.1) "Reimprospatez topicul...."
set black(say.ro.r.2) "\005\[BT\]\005 Nu pot executa. Nu exista niciun topic." 

################################## Auto ##########################################

set black(say.ro.auto.6) "\005\[BT\]\005 Ti-am setat autoop (+o) global"
set black(say.ro.auto.7) "\005\[BT\]\005 Ti-am setat autovoice (+v) global"
set black(say.ro.auto.8) "\005\[BT\]\005 Ti-am setat autoop pe %chan%"
set black(say.ro.auto.9) "\005\[BT\]\005 Ti-am setat autovoice pe %chan%"
set black(say.ro.auto.10) "\005\[BT\]\005 Am setat autoop pentru %msg.1% pe %chan%"
set black(say.ro.auto.11) "\005\[BT\]\005 Am setat autovoice pentru %msg.1% pe %chan%"
set black(say.ro.auto.12) "\005\[BT\]\005 Am setat autoop global pentru %msg.1%"
set black(say.ro.auto.13) "\005\[BT\]\005 Am setat autovoice global pentru %msg.1%"
set black(say.ro.auto.14) "\005\[BT\]\005 Ti-am sters autoop (+o) global"
set black(say.ro.auto.15) "\005\[BT\]\005 Ti-am sters autovoice (+v) global"
set black(say.ro.auto.16) "\005\[BT\]\005 Ti-am sters autoop pe %chan%"
set black(say.ro.auto.17) "\005\[BT\]\005 Ti-am sters autovoice pe %chan%"
set black(say.ro.auto.18) "\005\[BT\]\005 Am sters autoop pentru %msg.1% pe %chan%"
set black(say.ro.auto.19) "\005\[BT\]\005 Am sters autovoice pentru %msg.1% pe %chan%"
set black(say.ro.auto.20) "\005\[BT\]\005 Am sters autoop global pentru %msg.1%"
set black(say.ro.auto.21) "\005\[BT\]\005 Am sters autovoice global pentru %msg.1%"

################################# Login #########################################

set black(say.ro.login.1) "\005\[BT\]\005 Ma loghez la %msg.1%.."
set black(say.ro.login.2) "\005\[BT\]\005 Sunt deja logat la %msg.1% .."
set black(say.ro.login.3) "\005\[BT\]\005 Nu m-am putut loga. Te rog sa verifici datele de logare sau daca chanserv este online."
set black(say.ro.login.4) "\005\[BT\]\005 Nu m-am putut loga (Parola gresita)"
set black(say.ro.login.5) "\005\[BT\]\005 Logare reusita"
set black(say.ro.login.6) "\005\[BT\]\005 Logare nereusita (s-a depasit numarul maxim de logari)"
set black(say.ro.login.7) "\005\[BT\]\005 Logare nereusita (nu s-a specificat un username)"
set black(say.ro.login.8) "\005\[BT\]\005 Login nereusita (username invalid)"

################################# Enable #####################################

set black(say.ro.enable.1) "\005\[BT\]\005 Am activat comanda \002%msg.1%\002 pe \002%chan%\002"
set black(say.ro.enable.2) "\005\[BT\]\005 Comanda \002%msg.1%\002 este deja activata pe \002%chan%\002"
set black(say.ro.enable.3) "\005\[BT\]\005 Comanda \002%msg.1%\002 nu exista"
set black(say.ro.enable.4) "\005\[BT\]\005 Am activat comanda \002%msg.1%\002 pentru \002%msg.2%\002 pe \002%chan%\002"
set black(say.ro.enable.5) "\005\[BT\]\005 Comanda \002%msg.1%\002 este deja activata pentru \002%msg.2%\002 pe \002%chan%\002"
set black(say.ro.enable.6) "\005\[BT\]\005 Am activat comanda \002%msg.1%\002 \002GLOBAL\002"
set black(say.ro.enable.7) "\005\[BT\]\005 Comanda \002%msg.1%\002 este deja activata \002GLOBAL\002"
set black(say.ro.enable.8) "\005\[BT\]\005 ATENTIE, comanda \002%msg.1%\002 este dezactivata \002GLOBAL\002"
set black(say.ro.enable.9) "\005\[BT\]\005 Nu pot executa, comanda \002%msg.1%\002 este dezactivata de un user cu nivel de access mai mare."

################################# Disable #####################################

set black(say.ro.disable.1) "\005\[BT\]\005 Am dezactivat comanda \002%msg.1%\002 pe \002%chan%\002"
set black(say.ro.disable.2) "\005\[BT\]\005 Comanda \002%msg.1%\002 este deja dezactivata pe \002%chan%\002"
set black(say.ro.disable.3) "\005\[BT\]\005 Comanda \002%msg.1%\002 nu exista"
set black(say.ro.disable.4) "\005\[BT\]\005 Am dezactivat comanda \002%msg.1%\002 pentru \002%msg.2%\002 pe \002%chan%\002"
set black(say.ro.disable.5) "\005\[BT\]\005 Comanda \002%msg.1%\002 este deja dezactivata pentru \002%msg.2%\002 pe \002%chan%\002"
set black(say.ro.disable.6) "\005\[BT\]\005 Am dezactivat comanda \002%msg.1%\002 \002GLOBAL\002"
set black(say.ro.disable.7) "\005\[BT\]\005 Comanda \002%msg.1%\002 este deja dezactivata \002GLOBAL\002"
set black(say.ro.disable.8) "\005\[BT\]\005 Nu poti dezactiva comanda \002%msg.1\002"

################################### Module #######################################

set black(say.ro.hmodule.1) "Module: %msg%"
set black(say.ro.hmodule.3) "Pentru a vizualiza \002Manualul\002 fiecarui modul tastati: \002%char%man <modul> | %botnick% man <modul>\002"

####################################### h ########################################

set black(say.ro.h.1) "\005\[BT\]\005 NIVEL ACCESS \002-= %msg% =-\002"
set black(say.ro.h.2) "\005\[BT\]\005 \002%char%h\002 cmds ; \002%char%h\002 ban ; \002%char%h\002 add ; \002%char%h\002 chaninfo ; \002%char%h\002 BTinfo ; \002%char%h\002 module ; \002%char%h\002 egg ; \002%char%h\002 owner"
set black(say.ro.h.3) "\005\[BT\]\005 NIVEL ACCESS \002-= %msg% =-\002"
set black(say.ro.h.4) "\005\[BT\]\005 \002%char%h\002 cmds ; \002%char%h\002 ban ; \002%char%h\002 add ; \002%char%h\002 chaninfo ; \002%char%h\002 BTinfo ; \002%char%h\002 module ; \002%char%h\002 egg ; \002%char%h\002 owner"
set black(say.ro.h.5) "\005\[BT\]\005 NIVEL ACCESS \002-= %msg% =-\002"
set black(say.ro.h.6) "\005\[BT\]\005 %char%\002h\002 cmds ; \002%char%h\002 ban ; \002%char%h\002 module"
set black(say.ro.h.7) "\005\[BT\]\005 NIVEL ACCESS \002-= %msg% =-\002"
set black(say.ro.h.8) "\005\[BT\]\005 \002%bind%\002 cmds ; \002%char%h\002 ban ; \002%char%h\002 module"
set black(say.ro.h.11) "\005\[BT\]\005 NIVEL ACCESS \002-= %msg% =-\002"
set black(say.ro.h.12) "\005\[BT\]\005 \002%bind%\002 cmds ; \002%char%h\002 ban ; \002%char%h\002 add ; \002%char%h\002 module"
set black(say.ro.h.13) "\005\[BT\]\005 NIVEL ACCESS \002-= %msg% =-\002"
set black(say.ro.h.14) "\005\[BT\]\005 \002%char%h\002 cmds ; \002%char%h\002 ban ; \002%char%h\002 add ; \002%char%h\002 chaninfo ; \002%char%h\002 BTinfo ; \002%char%h\002 module"
set black(say.ro.h.15) "\005\[BT\]\005 %msg%"
set black(say.ro.h.16) "\005\[BT\]\005 Te rog asteapta %msg.1% de secunde inainte de a executa o alta comanda de tip \002%char%h\002. Multumesc!"
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

set black(say.ro.hcommand.1) "\005\[BT\]\005 Pentru a vizualiza \002Manualul\002 fiecarei comenzi, foloseste: \002%char%man <comanda>\002"
set black(say.ro.hcommand.2) "\005\[BT\]\005 Pentru a vizualiza \002Manualul\002 fiecarei comenzi, foloseste: \002%botnick% man <comanda>\002"
set black(say.ro.hcommand.3) "\005\[BT\]\005 Pentru a vizualiza \002Manualul\002 fiecarei comenzi, foloseste: \002man <comanda>\002"
set black(say.ro.hcommand.4) "\005\[BT\]\005 Pentru a vizualiza \002Manualul\002 fiecarei setari, foloseste: \002%char%man <setare>\002"
set black(say.ro.hcommand.5) "\005\[BT\]\005 Pentru a vizualiza \002Manualul\002 fiecarei setari, foloseste: \002%botnick% man <setare>\002"
set black(say.ro.hcommand.6) "\005\[BT\]\005 Pentru a vizualiza \002Manualul\002 fiecarei setari, foloseste: \002man <setare>\002"
set black(say.ro.hcommand.7) "\005\[BT\]\005 Pentru a vizualiza \002Manualul\002 fiecarui modul, foloseste: \002%char%man <modul>\002"
set black(say.ro.hcommand.8) "\005\[BT\]\005 Pentru a vizualiza \002Manualul\002 fiecarui modul, foloseste: \002%botnick% man <modul>\002"
set black(say.ro.hcommand.9) "\005\[BT\]\005 Pentru a vizualiza \002Manualul\002 fiecarui modul, foloseste: \002man <modul>\002"

set black(say.ro.cmdsvoice) "v \[#canal\] \[nick\] ; man <comanda> ; version ; i \[#canal\] <nick> ; activ \[#canal\] <nick> ; myset <optiune> \[descriere\] \[reset\]/\[show\] ; report \[#canal\] <nick> ; h \[#canal\] \[categorie\]"
set black(say.ro.cmdsop) "o \[#canal\] \[nick\] ; v \[#canal\] \[nick\] ; ho \[#canal\] \[nick\] ; man <comanda> ; version ; mode \[#canal\] <+/-mod> ; cycle \[#canal\] \[motiv\] ; i \[#canal\] <nick> ; activ \[#canal\] <nick> ; t \[#canal\] <text> ; myset <optiune> \[descriere\] \[reset\]/\[show\] ; h \[#canal\] \[categorie\] ; r \[#canal\]"
set black(say.ro.cmdadmin) "o \[#canal\] \[nick\] ; v \[#canal\] \[nick\] ; ho \[#canal\] \[nick\] ; man <comanda> ; version ; mode \[#canal\] <+/-mod> ; cycle \[#canal\] \[motiv\] ; say \[#canal\] <text> ; act \[#canal\] <text> ; i \[#canal\] <nick> ; activ \[#canal\] <nick> ; t \[#canal\] <text> ; myset <optiune> \[descriere\] \[reset\]/\[show\] ; h \[#canal\] \[categorie\] ; r \[#canal\]"
set black(say.ro.cmdmanager) "o \[#canal\] \[nick\] ; v \[#canal\] \[nick\] ; ho \[#canal\] \[nick\] ; man <comanda> ; version ; mode \[#canal\] <+/-mod> ; cycle \[#canal\] \[motiv\]/\[timp\] ; say \[#canal\] <text> ; act \[#canal\] <text> ; i \[#canal\] <nick> ; activ \[#canal\] <nick> ; t \[#canal\] <text> ; myset <optiune> \[descriere\] \[reset\]/\[show\] ; h \[#canal\] \[categorie\] ; r \[#canal\]"
set black(say.ro.cmdbossowner) "o \[#canal\] \[nick\] ; v \[#canal\] \[nick\] ; ho \[#canal\] \[nick\] ; man <comanda> ; version ; mode \[#canal\] <+/-mod> ; cycle \[#canal\] \[motiv\]/\[timp\] ; say \[#canal\] <text> ; act \[#canal\] <text> ; broadcast <text> ; i \[#canal\] <nick> ; activ \[#canal\] <nick> ; t \[#canal\] <text> ; myset <optiune> \[descriere\] \[reset\]/\[show\] ; h \[#canal\] \[categorie\] ; r \[#canal\] ; msg <nick> <text>"
set black(say.ro.cmdmaster) "o \[#canal\] \[nick\] ; v \[#canal\] \[nick\] ; ho \[#canal\] \[nick\] ; man <comanda> ; version ; mode \[#canal\] <+/-mod> ; cycle \[#canal\] \[motiv\]/\[timp\] ; say \[#canal\] <text> ; act \[#canal\] <text> ; i \[#canal\] <nick> ; activ \[#canal\] <nick> ; t \[#canal\] <text> ; myset <optiune> \[descriere\] \[reset\]/\[show\] ; h \[#canal\] \[categorie\] ; r \[#canal\] ; msg <nick> <text>"

set black(say.ro.banvoice) "k \[#canal\] <nick> \[motiv\] ; w \[#canal\] <nick>"
set black(say.ro.banop) "b \[#canal\] <nick>/<host> \[-nivel\] \[timp\] \[motiv\] ; dr \[#canal\] <nick>/<host> ; bot \[#canal\] <nick>/<host> ; n \[#canal\] <nick> ; id \[#canal\] <nick> ; spam \[#canal\] <nick>/<host> ; bw \[#canal\] <nick>/<host> ; vr \[#canal\] <nick>/<host> ; gag \[#canal\] <nick> <timp> <motiv> ; ungag \[#canal\] <nick>/<host> ; troll \[#canal\] <nick> ; ub \[#canal\] <nick>/<host>/<id> ; sb \[#canal\] <nick>/<host>/<id> ; banlist \[#canal\] <all>/<user> ; banstats \[total\] ; k \[#canal\] <nick> \[motiv\] ; w \[#canal\] <nick>"
set black(say.ro.banadmin) "b \[#canal\] <nick>/<host> \[-nivel\] \[timp\] \[motiv\] ; black \[#canal\] <nick>/<host> \[motiv\] ; stick \[#canal\] <nick>/<host> \[timp\] \[motiv\] ; dr \[#canal\] <nick>/<host> ; bot \[#canal\] <nick>/<host> ; n \[#canal\] <nick> ; id \[#canal\] <nick> ; spam \[#canal\] <nick>/<host> ; bw \[#canal\] <nick>/<host> ; vr \[#canal\] <nick>/<host> ; gag \[#canal\] <nick> <timp> <motiv> ; ungag \[#canal\] <nick>/<host> ; troll \[#canal\] <nick> ; ub \[#canal\] <nick>/<host>/<id> ; sb \[#canal\] <nick>/<host>/<id> ; banlist \[#canal\] <all>/<user> ; banstats \[total\] ; k \[#canal\] <nick> \[motiv\] ; w \[#canal\] <nick>"
set black(say.ro.banmanager) "b \[#canal\] <nick>/<host> \[-nivel\] \[timp\] \[motiv\] ; black \[#canal\] <nick>/<host> \[motiv\] ; stick \[#canal\] <nick>/<host> \[timp\] \[motiv\] ; dr \[#canal\] <nick>/<host> ; bot \[#canal\] <nick>/<host> ; n \[#canal\] <nick> ; id \[#canal\] <nick> ; spam \[#canal\] <nick>/<host> ; bw \[#canal\] <nick>/<host> ; vr \[#canal\] <nick>/<host> ; gag \[#canal\] <nick> <timp> <motiv> ; ungag \[#canal\] <nick>/<host> ; troll \[#canal\] <nick> ; ub \[#canal\] <nick>/<host>/<id> ; sb \[#canal\] <nick>/<host>/<sb> ; banlist \[#canal\] <all>/<user> ; banstats \[total\] \[reset\] ; k \[#canal\] <nick> \[motiv\] ; w \[#canal\] <nick>"
set black(say.ro.banbossowner) "b \[#canal\] <nick>/<host> \[-nivel\] \[timp\] \[global\] \[link\] \[motiv\] ; black \[#canal\] <nick>/<host> \[motiv\] ; stick \[#canal\] <nick>/<host> \[timp\] \[motiv\] ; dr \[#canal\] <nick>/<host> ; bot \[#canal\] <nick>/<host> ; n \[#canal\] <nick> ; id \[#canal\] <nick> ; spam \[#canal\] <nick>/<host> ; bw \[#canal\] <nick>/<host> ; vr \[#canal\] <nick>/<host> ; gag \[#canal\] <nick> <timp> <motiv> ; ungag \[#canal\] <nick>/<host> ; troll \[#canal\] <nick> ; ub \[#canal\] <nick>/<host>/<id> \[global\] \[link\] ; sb \[#canal\] <nick>/<host>/<id> \[global\] ; banlist \[#canal\] <all>/<user>/<global> ; banstats \[total\] \[reset\] ; k \[#canal\] <nick> \[motiv\] ; w \[#canal\] <nick>"
set black(say.ro.banmaster) "b \[#canal\] <nick>/<host> \[-nivel\] \[timp\] \[motiv\] ; black \[#canal\] <nick>/<host> \[motiv\] ; stick \[#canal\] <nick>/<host> \[timp\] \[motiv\] ; dr \[#canal\] <nick>/<host> ; bot \[#canal\] <nick>/<host> ; n \[#canal\] <nick> ; id \[#canal\] <nick> ; spam \[#canal\] <nick>/<host> ; bw \[#canal\] <nick>/<host> ; vr \[#canal\] <nick>/<host> ; gag \[#canal\] <nick> <timp> <motiv> ; ungag \[#canal\] <nick>/<host> ; troll \[#canal\] <nick> ; ub \[#canal\] <nick>/<host>/<id> ; sb \[#canal\] <nick>/<host>/<id> ; banlist \[#canal\] <all>/<user> ; banstats \[total\] ; k \[#canal\] <nick> \[motiv\] ; w \[#canal\] <nick>"

set black(say.ro.addadmin) "add \[#canal\] <nivel> <user chanserv> ; adduser \[#canal\] <nivel> <nickname> ; userlist \[#canal\] <nivel>/<all> ; info \[#canal\] <user>/<#canal> ; delacc \[#canal\] <user> ; auto \[#canal\] <+/-o> <user> ; auto \[#canal\] <+/-v> <user> ; s \[#canal\] <user> \[timp\] \[motiv\] ; us \[#canal\] <user> ; addhost <user> <host> ; delhost <user> <host>"
set black(say.ro.addmanager) "add \[#canal\] <nivel> <user chanserv> ; adduser \[#canal\] <nivel> <nickname> ; userlist \[#canal]\ <nivel>/<all> ; info \[#canal\] <user>/<#canal> ; delacc \[#canal\] <user> ; del <user> ; auto \[#canal\] <+/-o> <user> ; auto \[#canal\] <+/-v> <user> ; chuser <user> <new user> ; s \[#canal\] <user> \[timp\] \[motiv\] ; us \[#canal\] <user> ; addhost <user> <host> ; delhost <user> <host>"
set black(say.ro.addowner) "add \[#canal\] <nivel> <user chanserv> ; adduser \[#canal\] <nivel> <nickname> ; userlist \[#canal\] <nivel>/<all> ; info \[#canal\] <user>/<#canal> ; delacc \[#canal\] <user> ; del <user> ; auto \[#canal\] <+/-o> <user> \[global\] ; auto \[#canal\] <+/-v> <user> \[global\] ; chuser <user> <new user> ; s \[#canal\] <user> \[timp\] \[motiv\] ; us \[#canal\] <user> ; addhost <user> <host> ; delhost <user> <host>"
set black(say.ro.addbossowner) "add \[#canal\] <nivel> <user chanserv> ; adduser \[#canal\] <nivel> <nickname> ; userlist \[#canal\] <nivel> ; info \[#canal\] <user>/<#canal> ; delacc \[#canal\] <user> ; del <user> ; auto \[#canal\] <+/-o> <user> \[global\] ; auto \[#canal\] <+/-v> <user> \[global\] ; chuser <user> <new user> ; s \[#canal\] <user> \[timp\] \[motiv\] ; us \[#canal\] <user> ; addhost <user> <host> ; delhost <user> <host>"
set black(say.ro.addmaster) "add \[#canal\] <nivel> <user chanserv> ; adduser \[#canal\] <nivel> <nickname> ; userlist \[#canal\] <nivel> ; info \[#canal\] <user>/<#canal> ; delacc \[#canal\] <user> ; del <user> ; auto \[#canal\] <+/-o> <user> ; auto \[#canal\] <+/-v> <user> ; chuser <user> <new user> ; s \[#canal\] <user> \[timp\] \[motiv\] ; us \[#canal\] <user> ; addhost <user> <host> ; delhost <user> <host>"

set black(say.ro.hmanager.1) "purge \[#canal\] <motiv> ; set \[#canal\] <+/-optiune> ; set \[#canal\] <optiune> <descriere> ; unset \[#canal\] <optiune> ; show \[#canal\] <optiune> ; ignore <add>/<list>/del> \[timp\] <host> ; enable <comanda> \[user\] ; disable <comanda> \[user\]"
set black(say.ro.hbossowner.1) "addchan <#canal> ; delchan <#canal> ; suspend <#canal> ; unsuspend <#canal>; set \[#canal\]/\[global\] <optiune> <descriere> ; unset \[#canal\]/\[global\] <optiune> ; show \[#canal\] <optiune> ; channels ; die \[motiv\] ; restart ; jump \[server\] ; save ; rehash ; nick <nick> ; uptime ; status ; cp <optiune> <#canal1> <#canal2> ; ignore <add>/<list>/del> \[timp\] <host> ; enable <comanda> \[user\] \[global\] ; disable <comanda> \[user\] \[global\] ; chat"
set black(say.ro.hmaster.1) "addchan <#canal> ; delchan <#canal> ; suspend <#canal> ; unsuspend <#canal>; set \[#canal\] <optiune> <descriere> ; unset \[#canal\] <optiune> ; show \[#canal\] <optiune> ; channels ; uptime ; status ; ignore <add>/<list>/del> \[timp\] <host> ; enable <comanda> \[user\] ; disable <comanda> \[user\]"
set black(say.ro.hchaninfo.1) "\002Flaguri Eggdrop\002 :"
set black(say.ro.hchaninfo.2) "\002Setari BT\002 :"
set black(say.ro.hchaninfo.3) "\002Str Eggdrop\002"
set black(say.ro.hegg.1) "\005\[BT\]\005 %msg%"
set black(say.ro.hegg.2) "\005\[BT\]\005 Pentru a vizualiza \002Manualul\002 fiecarei optiuni, foloseste: \002%char%man <optiune>\002"
set black(say.ro.hegg.3) "\005\[BT\]\005 Pentru a vizualiza \002Manualul\002 fiecarei optiuni, foloseste: \002%botnick% man <optiune>\002"
set black(say.ro.hegg.4) "\005\[BT\]\005 Pentru a vizualiza \002Manualul\002 fiecarei optiuni, foloseste: \002man <optiune>\002"

############################### GREETING #######################################

set black(say.ro.greeting.1) "\005\[BT\]\005 Bun venit in lumea \002BlackToolS\002 versiunea \002$black(vers)\002. Pentru a incepe, trebuie sa definiti urmatoarele setari:"
set black(say.ro.greeting.2) "\002%char%myset mychar\002 <cmdchar> ( $black(cmdchar) ) ; \002%char%myset lang\002 <limba> ( RO | EN )"
set black(say.ro.greeting.3) "\002%char%myset mychan\002 <#canal> ; \002%char%myset output\002 <metoda> ( CHAN | NOTICE )"
set black(say.ro.greeting.4) "\002%char%myset noteexpire\002 <nr. zile> ; \002%char%myset greet\002 <mesaj> ; \002%char%myset autoinvite\002 <ON/OFF>"
set black(say.ro.greeting.5) "\005\[BT\]\005 Pentru o \002lista completa\002 a comenzilor disponibile tasteaza: \002%char%h\002 ; %botnick% h ; \002(PRIVMSG) h\002"
set black(say.ro.greeting.6) "\005\[BT\]\005 Pentru a citi \002manualul BlackTools\002 al setarilor, foloseste: \002%char%man <setare>\002. Have Fun! >:)"

################################## EGG ########################################

set black(say.ro.egg.2) "\005\[BT\]\005 %msg.1% este setat la: \"\002%msg.8%\002\". Pentru modificare, foloseste: \002%char%egg %msg.1% <valoare noua>\002"
set black(say.ro.egg.3) "\005\[BT\]\005 Am modificat setarea \"\002%msg.1%\002\". In caz ca modificarea nu e vizibila executati \"\002%botnick% restart\002\" sau verificati daca valoarea e valida."
set black(say.ro.egg.4) "\005\[BT\]\005 A avut loc o eroare. Te rog sa verifici daca config-ul eggdropului exista sau BlackTools.tcl se afla in scripts."
set black(say.ro.egg.5) "\005\[BT\]\005 Nu poti seta \002%msg.1%\002 cu valoarea \002%msg.2%\002, te rog citeste manualul folosind \002%char%man egg."
set black(say.ro.egg.6) "\005\[BT\]\005 Nu poti seta \002%msg.1%\002 cu valoarea \002%msg.2%\002, te rog citeste manualul folosind \002%char%man %msg.3%."
set black(say.ro.egg.7) "\005\[BT\]\005 %msg.1% este setat la: \002%msg.8%\002. Pentru modificare, foloseste: \002egg %msg.1% <valoare noua>\002"
set black(say.ro.egg.8) "\005\[BT\]\005 \002%msg.1%\002 este setat la: \002%msg.8%\002. Pentru modificare, foloseste: \002%botnick% egg %msg.1% <valoare noua>\002"

################################### Abuse Report ###############################

set black(say.ro.abuse.1) "\005\[BT\]\005 Nu pot intra pe %msg.1%. Motiv: BAN"
set black(say.ro.abuse.2) "Nu pot intra pe %chan% deoarece am BAN (+b)"
set black(say.ro.abuse.3) "\005\[BT\]\005 Nu pot intra pe %msg.1%. Motiv: INVITE ONLY"
set black(say.ro.abuse.4) "Nu pot intra pe %chan% deoarece este INVITE ONLY (+i)"
set black(say.ro.abuse.5) "\005\[BT\]\005 Nu pot intra pe %msg.1%. Motiv: KEY"
set black(say.ro.abuse.6) "Nu pot intra pe %chan% deoarece este pus KEY (+k)"
set black(say.ro.abuse.7) "\005\[BT\]\005 Nu pot intra pe %msg.1%. Motiv: CHANNEL FULL"
set black(say.ro.abuse.8) "Nu pot intra pe %chan% deoarece canalul este plin (+l)"
set black(say.ro.abuse.9) "\005\[BT\]\005 Am suspendat canalul %msg.1% pentru abuz."
set black(say.ro.abuse.10) "Am suspendat canalul %msg.1% pentru abuz."
set black(say.ro.abuse.11) "Nu pot intra pe %chan% deoarece este RESTRICTIE DE MOD (+r)"
set black(say.ro.abuse.12) "\005\[BT\]\005 Nu pot intra pe %msg.1%. Motiv: RESTRICTIE DE MOD"

################################### ChanLink ###################################

set black(say.ro.chanlink.1) "\005\[BT\]\005 Am setat \002CHANLINK\002 pentru canalele: %msg%"
set black(say.ro.chanlink.2) "\005\[BT\]\005 Am resetat \002CHANLINK\002"
set black(say.ro.chanlink.3) "\005\[BT\]\005 Urmatoarele canale au setat \002CHANLINK\002: %msg%"
set black(say.ro.chanlink.4) "\005\[BT\]\005 Am setat \002CHANLINK\002 pentru toate canalele din memorie"
set black(say.ro.chanlink.5) "\005\[BT\]\005 Nu sunt canale ce au setat \002CHANLINK\002"
set black(say.ro.chanlink.6) "\005\[BT\]\005 Urmatoarele canale sunt invalide: %msg%"
set black(say.ro.chanlink.7) "\005\[BT\]\005 Am sters \002CHANLINK\002 pentru %msg.1%"
set black(say.ro.chanlink.8) "\005\[BT\]\005 %msg.1% nu are activat \002CHANLINK\002."

###################################### O #######################################

set black(say.ro.o.1) "\005\[BT\]\005 Nu poti folosi mass deop deoarece \002%msg.1%\002 este pe \002%chan%\002."

################################### man ########################################

set black(say.ro.man.1_1) "\005\[BT\]\005 Imi pare rau \001%msg.1%\001, nu am nicio informatie de ajutor despre acest subiect."

#################################### User Expire ###############################

set black(say.ro.userexpire.1) "\[BT\] Expirare automata useri: %msg.1% useri expirati gasiti."

#################################### hello #####################################

set black(say.ro.hello.1) "*** TAADAAA! *** Ai access de \001%msg%\001 la comenzile mele."
set black(say.ro.hello.2) "\005\[BT\]\005 Salut %msg.1%, Sunt %botnick%, un eggdrop ce ruleaza \001%msg.2%\001 %msg.3%."
set black(say.ro.hello.3) "\005\[BT\]\005 De acum incolo o sa te recunosc dupa host-ul '\001%msg.1%\001'. Foloseste \002%char%h\002 ; \002%botnick%\002 h, una din aceste metode, pentru a incepe sa utilizarea acestui eggdrop."
set black(say.ro.hello.4) "\005\[BT\]\005 Te rog seteaza-ti o parola, folosind comanda: /msg \001%botnick%\001 <pass> <parola ta>"

#################################### Pass ######################################

set black(say.ro.pass.1) "\005\[BT\]\005 Parola ta setata este: \001%msg%\001"

##############################
############################################################################################################
#   SFARSIT                                                                                                #
############################################################################################################