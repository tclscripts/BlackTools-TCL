#################################################################################
#
#
#                                 LIMBA ROMANA
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
#                                   MESAJE STANDARD
# 
#################################################################################

set black(say.ro.gl.noban) "Nu se poate executa deoarece are ACCESS ."
set black(say.ro.gl.notonchan) "Nu sunt pe %chan%"
set black(say.ro.gl.suspend) "Esti suspendat pe %chan%, nu poti folosii aceasta comanda ."
set black(say.ro.gl.novalidchan) "Canal invalid."
set black(say.ro.gl.nomem) "Userul nu se afla in memoria mea."
set black(say.ro.gl.noaccess) "Nu are access pe %chan%."
set black(say.ro.gl.noop) "Nu am op pe %chan% ! Nu pot executa ."
set black(say.ro.gl.nomodif) "Nu poti modifica caracteristicile acestui user deoarece are access mai mare sau egal ca al tau."
set black(say.ro.gl.usernotonchan) "%msg.1% nu este pe %chan%."
set black(say.ro.gl.nocmem) "Nu am in memorie canalul %msg.1%"


#################################################################################
#
#                                   PROTECTII
# 
#################################################################################


#################################### antipub ###################################

set black(say.ro.antipub.1) "Nu ai respectat regulile pe %chan% in privinta RECLAMEI !"
set black(say.ro.antipub.2) "Use : %char%antipub <chan> <add> <*link*> / <#chan> | <list> | <del> <link> | %char%antipub <add> <*link*> / <#chan> | <list> | <del> <link>"
set black(say.ro.antipub.3) "Use : %botnick% badword <chan> <add> <*link*> / <#chan> | <list> | <del> <link> | %botnick% <add> <*link*> / <list> / <del> <link> / <#chan>"
set black(say.ro.antipub.4) "Use : %char%antipub <add> <*link*> / <#chan> | <list> | <del> <link> / <#chan>"
set black(say.ro.antipub.5) "Use : %botnick% antipub <add> <*link*> / <#chan> | <list> | <del> <link> / <#chan>"
set black(say.ro.antipub.6) "Am adaugat in lista de exceptii \002%msg.1%\002 pentru %chan%."
set black(say.ro.antipub.7) "Lista de exceptii antipub pentru %chan% este :"
set black(say.ro.antipub.8) "%msg%"
set black(say.ro.antipub.9) "Use : add <*link*> / <#chan>"
set black(say.ro.antipub.10) "NONE"
set black(say.ro.antipub.11) "Use : del <link> / <#chan>"
set black(say.ro.antipub.12) "Am sters %msg.1% exceptii antipub pentru %chan%."

#################################### antinotice ################################

set black(say.ro.antinotice.1) "Nu ai respectat regulile pe %chan% in privinta NOTICE-ULUI !"

#################################### antictcp ##################################

set black(say.ro.antictcp.1) "Nu ai respectat regulile pe %chan% in privinta CTCP-ULUI !"

#################################### antibadword ###############################

set black(say.ro.antibadword.1) "Nu ai respectat regulile pe %chan% in privinta LIMBAJULUI !"

#################################### antilongtext ##############################

set black(say.ro.antilongtext.1) "Nu ai respectat regulile pe %chan% in privinta textului lung !"

#################################### antibadquitpart ###########################

set black(say.ro.antibadquitpart.1) "Nu ai respectat regulile pe %chan% in privinta utilizarii caracterelor interzise la part/quit !"

################################### antijoinpart ###############################

set black(say.ro.antijoinpart.1) "Nu ai respectat regulile pe %chan% in privinta Join/Part !"

################################## antispam ###################################

set black(say.ro.antispam.1) "Nu ai respectat regulile pe %chan% in privinta SPAM-ULUI !!"

set black(say.ro.antispam.2) "Salut %nick% bine ai venit pe %chan% , te rog nu raspunde la acest mesaj deoarece poti fii banat fiind considerat spammer ! Multumesc"

################################# antirepeat ##################################

set black(say.ro.antirepeat.1) "NU ai respectat regulile pe %chan% in privinta repetatului !"

################################# anticolor ###################################

set black(say.ro.anticolor.1) "NU ai respectat regulile pe %chan% in privinta culorilor !"

################################# antibold ###################################

set black(say.ro.antibold.1) "NU ai respectat regulile pe %chan% in privinta folosirii caracterelor tip BOLD !"

################################# antiunderline ###################################

set black(say.ro.antiunderline.1) "NU ai respectat regulile pe %chan% in privinta folosirii caracterelor tip UNDERLINE !"

################################# anticaps #######################################

set black(say.ro.anticaps.1) "NU ai respectat regulile pe %chan% in privinta CAPS-LOCK-ului !"

################################# badfullname ###################################

set black(say.ro.badfullname.1) "Nu ai respectat regulile pe %chan% in privinta REALNAME-ULUI !"

################################# badnick #####################################

set black(say.ro.badnick.1) "Nu ai respectat regulile pe %chan% in privinta NICK-ULUI !"

################################# badident #####################################

set black(say.ro.badident.1) "Nu ai respectat regulile pe %chan% in privinta IDENT-ULUI !"

################################# antijoinflood #####################################

set black(say.ro.antijoinflood.1) "Atentie ! am observat un joinflood pe %chan% ! Va rog verificati !"

################################# antichanflood #####################################

set black(say.ro.antichanflood.1) "NU ai respectat regulile pe %chan% in privinta flood-ului!"


################################################################################
#
#                                     MODULE
#
################################################################################


################################ ChanReport  ###################################

set black(say.ro.reportchan) "Am adaugat ban pe %chan% pe hostul %banmask% cu motivul :%reason% .Acesta va expira in %bantime% minute."
set black(say.ro.reportchan.1) "\[%nick%\] a adaugat ban pe %chan% pe hostul %banmask% cu motivul :%reason% .Acesta va expira in %bantime% minute."

################################ clone scan ###################################

set black(say.ro.clonescan.1) "Am gasit %msg.1% clone pe %chan% de la host -= %msg.2% =-. Nick-urile sunt -= %msg.7% =-"
set black(say.ro.clonescan.2) "Sfarsit clone.."
set black(say.ro.clonescan.3) "Am gasit %num% clone pe %chan% de la host -= %host% =-. Nick-urile sunt -= %clone% =-"
set black(say.ro.clonescan.4) "Scanez.."
set black(say.ro.clonescan.5) "Clonele sunt interzise pe %chan% !"

################################## count ######################################

set black(say.ro.count.1) "Use : %char%count <chan> <on> | <off> | <display> | <reset>"
set black(say.ro.count.2) "Use : \002%botnick%\002 count <chan> <on> | <off> | <display> | <reset>"
set black(say.ro.count.3) "Count pentru %chan% este deja activat"
set black(say.ro.count.4) "Count pentru %chan% este deja dezactivat"
set black(say.ro.count.5) "Am activat count pe %chan% ."
set black(say.ro.count.6) "Am dezactivat count pe %chan% ."
set black(say.ro.count.7) "Numaratoarea pentru %chan% este de %msg.1% vizitator(i)"
set black(say.ro.count.8) "Am resetat count pentru %chan%"
set black(say.ro.count.9) "Esti user-ul cu numarul %num% care ai dat join pe %chan% ."

################################# private ######################################

set black(say.ro.private.1) "Use : %char%private <chan> <on> / <off> / <add> <nick> <host> / <list> / <del> <name> | %char%private <on> / <off> / <add> <nick> <host> / <list> / <del> <name>"
set black(say.ro.private.2) "Use : %botnick% private <chan> <on> / <off> / <add> <nick> <host> | <list> / <del> <name> | %botnick% private <on> / <off> / <add> <nick> <host> / <list> / <del> <name>"
set black(say.ro.private.3) "%char%private <on> | <off> | <add> <nick> <host> | <list> | <del> <name>"
set black(say.ro.private.4) "Use :%botnick% private <on> | <off> | <add> <nick> <host> | <list> | <del> <name>"
set black(say.ro.private.5) "Am activat modulul privat pe %chan%"
set black(say.ro.private.6) "Am dezactivat modulul privat pe %chan%"
set black(say.ro.private.7) "%msg.1% este deja in baza mea de date.Il adaug ca exceptie pe %chan%"
set black(say.ro.private.8) "Am adaugat %msg.1% cu host %msg.2% ca exceptie la private pe %chan%"
set black(say.ro.private.9) "Am sters %msg.1% din lista de exceptii pe %chan%"
set black(say.ro.private.10) "%msg.1% nu este baza de date pe %chan%."
set black(say.ro.private.11) "Userii exceptati de la private pe %chan% sunt : %msg%"
set black(say.ro.private.12) "Canal Privat !"

################################# badchan ######################################

set black(say.ro.badchan.1) "Use: %char%badchan <on>/<off> | <add> <#chan> \[reason\] | <list> | <del> <#chan> | <set> reason <reason> | <set> bantime <minute> | <status> | <find> <#chan>."
set black(say.ro.badchan.2) "Use: %botnick% badchan <on>/<off> | <add> <#chan> \[reason\] | <list> | <del> <#chan> | <set> reason <reason> | <set> bantime <minute> | <status> | <find> <#chan>."
set black(say.ro.badchan.3) "Use: %char%badchan <on>/<off> | <add> <#chan> \[-global\] \[reason\] | <list> \[-global\] | <del> <#chan> \[-global\] | <set> reason <reason> | <set> bantime <minute> | <status> \[-global\] | <find> <#chan> \[-global\]."
set black(say.ro.badchan.4) "Use: %botnick%badchan <on>/<off> | <add> <#chan> \[-global\] \[reason\] | <list> \[-global\] | <del> <#chan> \[-global\] | <set> reason <reason> | <set> bantime <minute> | <status> \[-global\] | <find> <#chan> \[-global\]."
set black(say.ro.badchan.5) "Modulul de \002BadChan\002 este deja activat pe \002%chan%\002."
set black(say.ro.badchan.6) "Ai activat modulul de \002BadChan\002 pe \002%chan%\002. Pentru a adauga un canal in lista scrie \002badchan add <#chan>\002. Pentru a vedea lista foloseste \002badchan <list>\002"
set black(say.ro.badchan.7) "Modulul de \002BadChan\002 nu este activat pe \002%chan%\002."
set black(say.ro.badchan.8) "Ai dezactivat modulul de \002BadChan\002 pe \002%chan%\002."
set black(say.ro.badchan.9) "Use: \002badchan add <#chan> \[-global\] \[reason\]\002"
set black(say.ro.badchan.10) "Use: \002badchan add <#chan> \[reason\]\002"
set black(say.ro.badchan.11) "Am adaugat in %msg.1% canalul: \002\[%msg.2%\]\002 cu motiv \002\"standard\"\002."
set black(say.ro.badchan.12) "Am adaugat in %msg.1% canalul: \002\[%msg.2%\]\002 cu motiv : \002\"%msg.7%\"\002"
set black(say.ro.badchan.13) "Nu sunt canale in BlackList."
set black(say.ro.badchan.14) "Lista de BlackList este :"
set black(say.ro.badchan.15) "\[GLOBAL\] %msg.1%. \002\[%msg.2%\]\002 - Motiv \"Standard\""
set black(say.ro.badchan.16) "\[GLOBAL\] %msg.1%. \002\[%msg.2%\]\002 - Motiv \002\"%msg.7%\\002"
set black(say.ro.badchan.17) "\[LOCAL\] %msg.1%. \002\[%msg.2%\]\002 - Motiv \002\"Standard\"\002"
set black(say.ro.badchan.18) "\[LOCAL\] %msg.1%. \002\[%msg.2%\]\002 - Motiv \002\"%msg.7%\\002"
set black(say.ro.badchan.19) "Nu am gasit nimic in lista de BlackList pentru \002%chan%\002"
set black(say.ro.badchan.20) "Use \002badchan del <#chan> \[-global\]\002."
set black(say.ro.badchan.21) "Use \002badchan del <#chan>\002."
set black(say.ro.badchan.22) "Am sters din BlackList-ul Global canalul: \002\[%msg.1%\]\002"
set black(say.ro.badchan.23) "Am sters din BlackList-ul canalului %chan% canalul: \002\[%msg.1%\]\002"
set black(say.ro.badchan.24) "Nu am gasit nimic in BlackList"
set black(say.ro.badchan.25) "Use: \002find <#chan> \[-global\]\002."
set black(say.ro.badchan.26) "Use: \002find <#chan>\002."
set black(say.ro.badchan.27) "\[GLOBAL\] %msg.1%. \002\[%msg.2%\]\002 - Motiv \"%msg.6%\""
set black(say.ro.badchan.28) "\[LOCAL\] %msg.1%. \002\[%msg.2%\]\002 - Motiv \"%msg.6%\""
set black(say.ro.badchan.29) "Modulul de BadChan este: \002\[%msg.1%\]\002 pentru \002%chan%\002"
set black(say.ro.badchan.30) "Sunt \002\[%msg.1%\]\002 total canale in lista mea globala."
set black(say.ro.badchan.31) "Sunt \002\[%msg.1%\]\002 total canale in lista mea pentru \002%chan%\002"
set black(say.ro.badchan.32) "Motivul default este : \"%msg%\"."
set black(say.ro.badchan.33) "Timpul default de ban este : \[%msg.1%\] minute"
set black(say.ro.badchan.34) "Use: \002badchan set reason <motiv>\002"
set black(say.ro.badchan.35) "Am setat motiv default : \002\"%msg%\"\002"
set black(say.ro.badchan.36) "Use: \002badchan set bantime <minute>\002"
set black(say.ro.badchan.37) "Am setat timp de ban default: \"%msg.1%\" minute"
set black(say.ro.badchan.38) "Use: \002badchan set bantime <minutes> | set reason <reason>\002."
set black(say.ro.badchan.39) "Ai primit ban pe %chan% deoarece ai fost gasit pe unul sau mai multe canale interzise."
set black(say.ro.badchan.40) "ATENTIE ! Ai fost gasit pe canale interzise. Acestea sunt :%badchans%. Ai la dispozitie 30 de secunde sa dai part, in caz contrar vei primii ban.Multumesc"

################################# badword ######################################

set black(say.ro.badword.1) "Use : %char%badword <chan> <add> <* word *> / <list> / <del> <numar> | %char%badword <add> <* word *> / <list> / <del> <numar>"
set black(say.ro.badword.2) "Use : %botnick% badword <chan> <add> <* word *> / <list> / <del> <numar> | %botnick% badword <add> <* word *> / <list> / <del> <numar>"
set black(say.ro.badword.3) "Use : %char%badword <add> <* word *> / <list> / <del> <numar>"
set black(say.ro.badword.4) "Use : %botnick% badword <add> <* word *> / <list> / <del> <numar>"
set black(say.ro.badword.5) "Adaug in lista canalului %chan% cuvantul: %msg%"
set black(say.ro.badword.6) "Lista cuvintelor interzise pentru %chan% este :"
set black(say.ro.badword.7) "NONE"
set black(say.ro.badword.8) "%msg%"
set black(say.ro.badword.9) "Use del <numar>"
set black(say.ro.badword.10) "Am sters cuvantul cu numarul %msg.1% din lista canalului %chan%"

################################# AntitaKe ######################################

set black(say.ro.antitake.1) "Nu poti da DEOP deoarece nu te aflii in baza mea de date de access."
set black(say.ro.antitake.2) "Nu poti da OP deoarece nu te aflii in baza mea de date de access."

################################# anunt ######################################

set black(say.ro.anunt.1) "Use : %char%anunt <chan> <on> / <off> / <add> <mesaj> / <list> / <del> <numar> | %char%anunt <on> / <off> / <add> <mesaj> / <list> / <del> <numar>"
set black(say.ro.anunt.2) "Use : %botnick% anunt <chan> <on> / <off> / <add> <mesaj> / <list> / <del> <numar> | %botnick% anunt <on> / <off> / <add> <mesaj> / <list> / <del> <numar>"
set black(say.ro.anunt.3) "Ai activat modulul de anunt pe %chan%."
set black(say.ro.anunt.4) "Am dezactivat modulul de anunt pe %chan%."
set black(say.ro.anunt.5) "Am adaugat urmatorul anunt pentru %chan%:"
set black(say.ro.anunt.6) "%msg%"
set black(say.ro.anunt.7) "Nu sunt anunturi pentru %chan%"
set black(say.ro.anunt.8) "Lista de anunturi pentru %chan% este:"
set black(say.ro.anunt.9) "Use :del <numar>."
set black(say.ro.anunt.10) "Am sters anuntul cu numarul :%msg.1% pentru %chan%."
set black(say.ro.anunt.11) "Verifica daca este corect cu comanda %char%anunt list"
set black(say.ro.anunt.12) "Use : add <anunt>"
set black(say.ro.anunt.13) "Nu exista anuntul cu numarul: %msg.1% pentru %chan%"

################################# AutoBroadcast ######################################

set black(say.ro.autobroadcast.1) "Use %char%bt <on> / <off> / <add> <broadcast> / <list> / <del> <number> ."
set black(say.ro.autobroadcast.2) "Use %botnick% bt <on> / <off> / <add> <broadcast> / <list> / <del> <number> ."
set black(say.ro.autobroadcast.3) "AutoBroadcast este activat deja."
set black(say.ro.autobroadcast.4) "Am activat modulul de AutoBroadcast"
set black(say.ro.autobroadcast.5) "Am dezactivat modulul de AutoBroadcast"
set black(say.ro.autobroadcast.6) "Ai adaugat un broadcast in baza de date."
set black(say.ro.autobroadcast.7) "%msg%"
set black(say.ro.autobroadcast.8) "Nu sunt broadcast-uri in lista..."
set black(say.ro.autobroadcast.9) "Lista de broadcast-uri este urmatoarea:"
set black(say.ro.autobroadcast.10) "Use :del <numar>. Pentru a lista broadcast-urile tasteaza %char%bt list"
set black(say.ro.autobroadcast.11) "Am sters broadcast-ul cu numarul :%msg.1%"
set black(say.ro.autobroadcast.12) "Use :add <broadcast>."

################################# limit ######################################

set black(say.ro.limit.1) "Use : %char%limit <chan> <on> / <set> <number> / <off> | %char%limit <on> / <set> <number> / <off>"
set black(say.ro.limit.2) "Use : %botnick% limit <chan> <on> / <set> <number> / <off> | %botnick% limit <on> / <set> <number> / <off>"
set black(say.ro.limit.3) "Use : %char%limit <on> | <set> <number> | <off>"
set black(say.ro.limit.4) "Use :%botnick% limit <on> | <set> <number> | <off>"
set black(say.ro.limit.5) "AM activat modulul de limit pe %chan%."
set black(say.ro.limit.6) "Am setat limita ca default +10."
set black(say.ro.limit.7) "Am dezactivat modulul de limit pe %chan%."
set black(say.ro.limit.8) "Use :set <number>"
set black(say.ro.limit.9) "Nu poti seta limita mai mica de 2."
set black(say.ro.limit.10) "Setez limita de 2."
set black(say.ro.limit.11) "Nu poti seta limita mai mare de 500."
set black(say.ro.limit.12) "Am setat limita la %msg.1%"


################################# Topic ######################################

set black(say.ro.topic.1) "Use : %char%topic <chan> save | list | add <topic> | del <number> | set <number> | lock (blocheaza topic) | unlock (deblocheaza topic)"
set black(say.ro.topic.2) "Use : %botnick% topic <chan> save | list | add <topic> | del <number> | set <number> | lock (blocheaza topic) | unlock (deblocheaza topic)"
set black(say.ro.topic.3) "Nu pot salva topic-ul deoarece este gol"
set black(say.ro.topic.4) "Am salvat topic-ul curent..."
set black(say.ro.topic.5) "Am salvat topic-ul pentru %chan%..."
set black(say.ro.topic.6) "Nu sunt topic-uri salvate pentru %chan%"
set black(say.ro.topic.7) "Lista de TOPIC pentru %chan% este:"
set black(say.ro.topic.8) "%msg%"
set black(say.ro.topic.9) "Use :del <numar> ( il iei din <topic> <list> )"
set black(say.ro.topic.10) "Am sters topic-ul cu numarul: %msg.1% din lista de pe %chan%"
set black(say.ro.topic.11) "Use :set <numar> ( il iei din <topic> <list> )"
set black(say.ro.topic.12) "Am pus topic-ul cu numarul %msg.1% pe %chan%"
set black(say.ro.topic.13) "Use :add <topic>"
set black(say.ro.topic.14) "Nu am putut sterge topic-ul cu numarul: %msg.1%"
set black(say.ro.topic.15) "Nu am putut seta topic-ul cu numarul: %msg.1%."
set black(say.ro.topic.16) "Nu pot bloca topic-ul pe %chan% deoarece este gol."
set black(say.ro.topic.17) "Topic-ul pentru %chan% a fost blocat."
set black(say.ro.topic.18) "Topic-ul pentru %chan% nu este blocat"
set black(say.ro.topic.19) "Topic-ul pentru %chan% a fost deblocat."
set black(say.ro.topic.20) "Topic-ul este blocat. Numai un nivel admin+ poate schimba topic-ul."

################################# Seen ######################################

set black(say.ro.seen.1) "Use : %char%seen <chan> <nick>/<host>"
set black(say.ro.seen.2) "Use : %botnick% seen <chan> <nick>/<host>"
set black(say.ro.seen.5) "Asteapta 1 minut pentru a putea cauta."
set black(say.ro.seen.6) "%msg.1% uite-te in oglinda"
set black(say.ro.seen.7) "%msg.1% este pe %chan% deja"
set black(say.ro.seen.8) "nu stiu exact cat a stat."
set black(say.ro.seen.9) "dupa ce a stat %staytime% pe %chan%."
set black(say.ro.seen.10) "%newnick% este inca aici."
set black(say.ro.seen.11) "Nu il vad pe %newnick% momentan pe %chan%"
set black(say.ro.seen.12) "%entry% (%host%) a iesit de pe %chan% acum %output% %date% zicand: \"%reason%\", %staymsg%"
set black(say.ro.seen.13) "%entry% (%host%) a iesit de pe IRC acum %output% %date% zicand: \"%reason%\", %staymsg%"
set black(say.ro.seen.14) "%entry% (%host%) a intrat pe %chan% acum %output% %date%.%nowon%"
set black(say.ro.seen.15) "%entry% (%host%)  a iesit in *.net *.split acum %output% %date%, %staymsg%"
set black(say.ro.seen.16) "%entry% (%host%) a fost dat(a) afara de pe %chan% acum %output% %date% cu motivul \"%reason%\", %staymsg%"
set black(say.ro.seen.17) "%entry% (%host%) si-a schimbat nick-ul in %newnick% acum %output% %date%.%nowon%"
set black(say.ro.seen.18) "Nu l-am vazut pe %msg.1%"
set black(say.ro.seen.19) "%latest% este inca aici."
set black(say.ro.seen.20) "Nu il vad pe %latest% momentan pe %chan%"
set black(say.ro.seen.21) "Am gasit (%num%) rezultate \"%entry%\". \002%latest%\002 (%host%) a iesit de pe %chan% acum %output% %date% zicand: \"%reason%\", %staymsg%"
set black(say.ro.seen.22) "Am gasit (%num%) rezultate \"%entry%\". \002%latest%\002 (%host%) a iesit de pe IRC acum %output% %date% zicand: \"%reason%\", %staymsg%"
set black(say.ro.seen.23) "Am gasit (%num%) rezultate \"%entry%\". \002%latest%\002 (%host%) a intrat pe %chan% acum %output% %date%.%nowon%"
set black(say.ro.seen.24) "Am gasit (%num%) rezultate \"%entry%\". \002%latest%\002 (%host%) a iesit in *.net *.split acum %output% %date%, %staymsg%"
set black(say.ro.seen.25) "Am gasit (%num%) rezultate \"%entry%\". \002%latest%\002 (%host%) a fost dat(a) afara de pe %chan% acum %output% %date% cu motivul \"%reason%\", %staymsg%"
set black(say.ro.seen.26) "Am gasit (%num%) rezultate \"%entry%\". \002%latest%\002 (%host%) si-a schimbat nick-ul in %newnick% acum %output% %date%.%nowon%"

################################# greet ######################################

set black(say.ro.greet.1) "Use %char%greet <chan> <on> | <off> | <add> <mesaj> | <list>| <set> <numar> | <del> <mesaj>"
set black(say.ro.greet.2) "Use \002%botnick%\002 greet <chan> <on> | <off> | <add> <mesaj> | <list> | <set> <numar> | <del> <mesaj>"
set black(say.ro.greet.3) "Ai activat modulul de greet pe %chan% .Pentru a adauga un greet foloseste %char%greet add <mesaj> | %botnick% greet add <mesaj>. Poti adauga cate vrei."
set black(say.ro.greet.4) "Am dezactivat modulul de greet pe %chan%."
set black(say.ro.greet.5) "Am adaugat urmatorul greet pentru %chan%:"
set black(say.ro.greet.6) "%msg%"
set black(say.ro.greet.7) "Nu sunt greet-uri pentru %chan%"
set black(say.ro.greet.8) "Lista de greet pentru %chan% este:"
set black(say.ro.greet.9) "Use : del <greet>. Pentru a lista greet-urile foloseste type %char%greet list"
set black(say.ro.greet.10) "Am sters %msg.1% greet(uri) pentru %chan%."
set black(say.ro.greet.11) "Pentru a seta un greet curent tasteaza %char%greet set <numar>"
set black(say.ro.greet.12) "Use : set <numar> . Pentru a lista numerele greet-urilor tasteaza %char%greet list"
set black(say.ro.greet.13) "Ai specificat un numar gresit. Te rog sa vizualizezi %char%greet list."
set black(say.ro.greet.14) "Acest greet este deja setat ca fiind Curent."
set black(say.ro.greet.15) "Am setat ca greet curent, greet-ul cu numarul: %msg.1% ."

################################# Leave #######################################

set black(say.ro.leave.1) "Use %char%leave <chan> <on> | <off> | <add> <mesaj> | <list>| <set> <numar> | <del> <mesaj>"
set black(say.ro.leave.2) "Use \002%botnick%\002 leave <chan> <on> | <off> | <add> <mesaj> | <list> | <set> <numar> | <del> <mesaj>"
set black(say.ro.leave.3) "Ai activat modulul de LEAVE pe %chan% .Pentru a adauga un mesaj de leave foloseste %char%leave add <mesaj> | %botnick% leave add <mesaj>. Poti adauga cate vrei."
set black(say.ro.leave.4) "Am dezactivat modulul de LEAVE pe %chan%."
set black(say.ro.leave.5) "Am adaugat urmatorul mesaj de LEAVE pentru %chan%:"
set black(say.ro.leave.6) "%msg%"
set black(say.ro.leave.7) "Nu sunt mesaje de leave pentru %chan%"
set black(say.ro.leave.8) "Lista de LEAVE pentru %chan% este:"
set black(say.ro.leave.9) "Use : del <leave>. Pentru a lista mesajele de leave foloseste type %char%leave list"
set black(say.ro.leave.10) "Am sters %msg.1% leave(uri) pentru %chan%."
set black(say.ro.leave.11) "Pentru a seta un leave curent tasteaza %char%leave set <numar>"
set black(say.ro.leave.12) "Use : set <numar> . Pentru a lista numerele leave-urilor tasteaza %char%leave list"
set black(say.ro.leave.13) "Ai specificat un numar gresit. Te rog sa vizualizezi %char%leave list."
set black(say.ro.leave.14) "Acest mesaj de leave este deja setat ca fiind Curent."
set black(say.ro.leave.15) "Am setat ca mesaj de leave curent, leave-ul cu numarul: %msg.1% ."

################################# Idle ######################################

set black(say.ro.idle.1) "Use %char%idle <chan> <on>/<off> | %char%idle <chan> op <on>/<off> | %char%idle <chan> voice <on>/<off> | %char%idle <chan> add <nick> | %char%idle <chan> list | %char%idle <chan> del <user>"
set black(say.ro.idle.3) "Use %botnick% idle <chan> <on>/<off> | %botnick% idle <chan> op <on>/<off> | %botnick% idle <chan> voice <on>/<off> | %botnick% idle <chan> add <nick> | %botnick% idle <chan> list | %botnick% idle <chan> del <user>"
set black(say.ro.idle.5) "Use %char%idle <on>/<off> | %char%idle op <on>/<off> | %char%idle voice <on>/<off> | %char%idle add <nick> | %char%idle list | idle del <user>"
set black(say.ro.idle.6) "Use %botnick% idle <on>/<off> | %botnick% idle op <on>/<off> | %botnick% idle voice <on>/<off> | %botnick% idle add <nick> | %botnick% idle list | %botnick% idle <chan> del <user>"
set black(say.ro.idle.7) "Am activat modulul de anti-idle pe %chan%, pentru a putea functiona activeaza una din optiuni : %char%idle op <on>/<off> (idle-deop) | %char%idle voice <on/<off> (idle-devoice)"
set black(say.ro.idle.8) "Am dezactivat modulul de anti-idle pe %chan%"
set black(say.ro.idle.9) "Use : op <on>/<off>"
set black(say.ro.idle.10) "Mai intai activeaza modulul de anti-idle cu comanda %char%idle on"
set black(say.ro.idle.11) "Am activat idle-deop pe %chan%"
set black(say.ro.idle.12) "Am dezactivat idle-deop pe %chan%"
set black(say.ro.idle.13) "Use : voice <on>/<off>"
set black(say.ro.idle.14) "Am activat idle-devoice pe %chan%"
set black(say.ro.idle.15) "Am dezactivat idle-devoice pe %chan%"
set black(say.ro.idle.16) "Use add <nick>"
set black(say.ro.idle.17) "%msg.1% nu este pe %chan%."
set black(say.ro.idle.18) "%msg.1% este deja in baza mea de date il adaug doar ca exceptie.."
set black(say.ro.idle.19) "Am adaugat ca exceptie pe %msg.1% cu host %msg.2% pe %chan%."
set black(say.ro.idle.20) "Lista de exceptie la anti-idle pe %chan% este :"
set black(say.ro.idle.21) "%msg%"
set black(say.ro.idle.22) "%msg.1% nu exista in memoria mea."
set black(say.ro.idle.23) "%msg.1% nu este adaugat ca exceptie la idle."
set black(say.ro.idle.24) "%msg.1% a fost sters din lista de exceptii la idle."

################################# AntiBotIdle ######################################

set black(say.ro.antibotidle.1) "Use %char%botidle <on> | <off> ."
set black(say.ro.antibotidle.2) "Use %botnick% botidle <on> | <off> ."
set black(say.ro.antibotidle.3) "AntiBotIdle este activat deja."
set black(say.ro.antibotidle.4) "Am activat modulul de AntiBotIdle"
set black(say.ro.antibotidle.5) "Am dezactivat modulul de AntiBotIdle"

################################# TCL ######################################

set black(say.ro.tcl.1) "Scripturile incarcate curent sunt:"
set black(say.ro.tcl.2) "Use : load <nume.tcl>"
set black(say.ro.tcl.3) "Nu am putut incarca scriptul : %msg.1%. Motiv : \002%msg.8%\002"
set black(say.ro.tcl.4) "Scriptul \"%msg.1%\" este deja incarcat."
set black(say.ro.tcl.5) "Scriptul \"%msg.1%\" a fost incarcat cu success."
set black(say.ro.tcl.6) "Use : unload <nume.tcl>"
set black(say.ro.tcl.7) "Scriptul \"%msg.1%\" nu este incarcat."
set black(say.ro.tcl.8) "Am dezactivat Scriptul \"%msg.1%\"."
set black(say.ro.tcl.9) "Sunt \"%msg.1%\" tcluri. Listez 30 din ele.. (Cele incarcate sunt cu BOLD)"
set black(say.ro.tcl.10) "Sunt \"%msg.1%\" tcl-uri. (Cele incarcate sunt cu BOLD)"
set black(say.ro.tcl.11) "Use : info <nume.tcl>"
set black(say.ro.tcl.12) "\"%msg.1%\" \002nu exista\002 in scripts."
set black(say.ro.tcl.13) "\"%msg.1%\" exista dar \002nu este incarcat\002"
set black(say.ro.tcl.14) "\"%msg.1%\" exista si \002este incarcat\002"
set black(say.ro.tcl.15) "Use %char%\002tcl <list>\002 (vizualizare tcl-uri incarcate) | \002<load> <nume.tcl>\002 (incarcare tcl) | \002<unload> <nume.tcl> \002(dezactivare tcl) | \002<all>\002 (vizualizare tcl-uri) | \002info <nume.tcl>\002 (informatii tcl)"
set black(say.ro.tcl.16) "Use %botnick% \002tcl <list>\002 (vizualizare tcl-uri incarcate) | \002<load> <nume.tcl>\002 (incarcare tcl) | \002<unload> <nume.tcl> \002(dezactivare tcl) | \002<all>\002 (vizualizare tcl-uri) | \002info <nume.tcl>\002 (informatii tcl)"
set black(say.ro.tcl.17) "%msg%."
set black(say.ro.tcl.18) "Eroare. Nu poti da unload la acest script !"

####################################  next #####################################

set black(say.ro.next.1) "Bine ai venit %nick%, esti numarul \002%counter%\002 la rand.Te rog asteapta vei fii asistat de cum terminam cu userii curenti. Multumesc."
set black(say.ro.next.2) "Ai fost preluat de \002%nick%\002 . Te rog spune-ti problema pe canal, intr-o singura linie daca se poate !"
set black(say.ro.next.3) "\002%msg.1%\002 a asteptat timp de \002%msg.set%\002, te rog acum ocupa-te de el :)"
set black(say.ro.next.4) "%current% acum ca ai fost ajutat te rog sa dai part, dar daca mai ai alte intrebari te rog aplica comanda \002/hop %chan%\002 . Multumesc"
set black(say.ro.next.5) "Nu ai voie sa faci idle pe %chan% !"
set black(say.ro.next.6) "Atentie : %nick% are nevoie de ajutor pe %chan% . Acesta este numarul %counter% la rand."
set black(say.ro.next.7) "Lista celor ce asteapta sa fie ajutati :"
set black(say.ro.next.8) "NONE"
set black(say.ro.next.9) "%msg%"
set black(say.ro.next.10) "Nu este nimeni in lista de next."
set black(say.ro.next.11) "Atentie : %current% a fost \002preluat\002 de %nick% (%hand%)"
set black(say.ro.next.12) "Use helped <nick>"
set black(say.ro.next.13) "Eroare. %msg.1% este in lista de help dar nu a fost ajutat inca."
set black(say.ro.next.14) "Eroare. %msg.1% nu se afla in lista de help."
set black(say.ro.next.15) "Atentie : %current% a primit \002helped\002 de la %nick% (%hand%)."
set black(say.ro.next.16) "Use: .noidle <nick>"
set black(say.ro.next.17) "Eroare. Trebuie mai intai %msg.1% sa primeasca helped %msg.1%"
set black(say.ro.next.18) "Use skip <nick>"
set black(say.ro.next.19) "L-am sarit pe %msg.1% (acum este ultimul)"

################################################################################
#
#                                     COMENZI
#
################################################################################

#################################### find ######################################

set black(say.ro.find.1) "Use : %char%find <host> / <user>"
set black(say.ro.find.2) "Use : %botnick% find <host> / <user>"
set black(say.ro.find.3) "%msg.1%.) Handle: %msg.2%"
set black(say.ro.find.4) "%msg.1%.) Hosturi: %msg.8%"
set black(say.ro.find.5) "%msg.1%.) Acesta nu are access pe niciun canal."
set black(say.ro.find.6) "%msg.1%.) Acesta are access pe urmatoarele canale : %msg.8%"
set black(say.ro.find.7) "%msg.1%.) Nivel access : BOSS OWNER"
set black(say.ro.find.8) "%msg.1%.) Nivel access : OWNER"
set black(say.ro.find.9) "%msg.1%.) Ultima oara vazut : NICIODATA"
set black(say.ro.find.10) "%msg.1%.) Ultima oara vazut pe data de :%msg.2%, pe canalul :%msg.3%"
set black(say.ro.find.11) "Am gasit (\002%msg.1%\002) inregistrari pentru \002%msg.2%\002."
set black(say.ro.find.12) "Nu am gasit nimic legat de %msg.1%."

#################################### myset ####################################

set black(say.ro.myset.1) "Ti-am setat limba la %msg.1%"
set black(say.ro.myset.2) "Ti-am setat iesirea la %msg.1%"
set black(say.ro.myset.3) "Use :%char%myset <lang> <RO> / <EN> | <output> <CHAN> / <NOTICE>"
set black(say.ro.myset.4) "Use :%botnick% myset <lang> <RO> / <EN> | <output> <CHAN> / <NOTICE>"
set black(say.ro.myset.5) "Nu am putut seta limba %msg.1% deoarece fisierul nu exista."

#################################### dr #######################################

set black(say.ro.dr.1) "Use : %char%dr <chan> <nick>/<host> | %char%dr <nick>/<host>"
set black(say.ro.dr.2) "Use : %botnick% dr <chan> <nick>/<host> | %botnick% dr <nick>/<host>"
set black(say.ro.dr.3) "Use : %char%dr <nick>/<host>"
set black(say.ro.dr.4) "Use : %botnick% dr <nick>/<host>"
set black(say.ro.dr.5) "Esti infectat(a), pentru devirusare join #nohack ! Pentru unban join #unban !"

################################### bot #######################################

set black(say.ro.bot.1) "Use : %char%bot <chan> <nick>/<host> | %char%bot <nick>/<host>"
set black(say.ro.bot.2) "Use : %botnick% bot <chan> <nick>/<host> | %botnick% bot <nick>/<host>"
set black(say.ro.bot.3) "Use : %char%bot <nick>/<host>"
set black(say.ro.bot.4) "Use : %botnick% bot <nick>/<host>"
set black(say.ro.bot.5) "BOT Detectat ! Daca nu esti BOT contacteaza unu operator pentru unban !"


################################## b #####################################

set black(say.ro.b.1) "Use : %char%b <chan> <nick>/<host> <time> <reason> | %char%b <nick>/<host> <time> <reason>"
set black(say.ro.b.2) "Ban Global : %char%b <nick>/<host> <time> global <reason>"
set black(say.ro.b.3) "Use : %botnick% b <chan> <nick>/<host> <time> <reason> | %botnick% b <nick>/<host> <time> <reason>"
set black(say.ro.b.4) "Ban Global : %botnick% b <nick>/<host> <time> global <reason>"
set black(say.ro.b.5) "Use : %char%b <nick>/<host> <time> <reason>"
set black(say.ro.b.6) "Use : %botnick% bot <nick>/<host> <time> <reason>"
set black(say.ro.b.7) "Am adaugat ban pe :%msg.1% pe :%chan% cu durata :%msg.2% minute"
set black(say.ro.b.8) "Am adaugat ban global pe host :%msg.1% pe timp :%msg.2% minute"
set black(say.ro.b.9) "Esti banat!"
set black(say.ro.b.10) "Nu poti da ban mai mare de 7 zile (necesita Senior+)"

################################## n #####################################

set black(say.ro.n.1) "Use : %char%n <chan> <nick> | %char%n <nick>"
set black(say.ro.n.2) "Use : %botnick% n <chan> <nick> | %botnick% b <nick>"
set black(say.ro.n.3) "Use : %char%n <nick>"
set black(say.ro.n.4) "Use : %botnick% n <nick>"
set black(say.ro.n.5) "Nick-ul tau este considerat ca fiind unul obscen te rog schimba-l si revino !"
set black(say.ro.n.6) "EROARE: Foloseste ca argument <nick>"

################################## id ####################################

set black(say.ro.id.1) "Use : %char%id <chan> <nick> | %char%id <nick>"
set black(say.ro.id.2) "Use : %botnick% id <chan> <nick> | %botnick% id <nick>"
set black(say.ro.id.3) "Use : %char%id <nick>"
set black(say.ro.id.4) "Use : %botnick% id <nick>"
set black(say.ro.id.5) "Identul tau este considerat ca fiind unul obscen te rog schimba-l si revino !"
set black(say.ro.id.6) "EROARE: Foloseste ca argument <nick> sau <ident>."

################################## black #################################

set black(say.ro.black.1) "Use : %char%black <chan> <nick>/<host> <reason> | %char%black <nick>/<host> <reason>"
set black(say.ro.black.2) "Use : %botnick% black <chan> <nick>/<host> <reason> | %botnick% black <nick>/<host> <reason>"
set black(say.ro.black.3) "Use : %char%black <nick>/<host> <reason>"
set black(say.ro.black.4) "Use : %botnick% black <nick>/<host> <reason>"
set black(say.ro.black.5) "Out"

################################## w #####################################

set black(say.ro.w.1) "Use : %char%w <chan> <nick> | %char%w <nick>"
set black(say.ro.w.2) "Use : %botnick% w <chan> <nick> | %botnick% w <nick>"
set black(say.ro.w.3) "Use : %char%w <nick>"
set black(say.ro.w.4) "Use : %botnick% w <nick>"
set black(say.ro.w.5) "Ai fost avertizat(a), te rog verificati comportamentul !"
set black(say.ro.w.6) "This is the last warning. You are breaking one of our rules, available at website of channel (get it from topic). Thanks."

################################# spam ###################################

set black(say.ro.spam.1) "Use : %char%spam <chan> <nick>/<host> | %char%spam <nick>/<host>"
set black(say.ro.spam.2) "Use : %botnick% spam <chan> <nick>/<host> | %botnick% spam <nick>/<host>"
set black(say.ro.spam.3) "Use : %char%spam <nick>/<host>"
set black(say.ro.spam.4) "Use : %botnick% spam <nick>/<host>"
set black(say.ro.spam.5) "Ai fost prins(a) facand spam, pentru dezinfectare join #nohack !"

################################# k #######################################

set black(say.ro.k.1) "Use : %char%k <chan> <nick> <reason> | %char%k <nick> <reason>"
set black(say.ro.k.2) "Use : %botnick% k <chan> <nick> <reason> | %botnick% k <nick> <reason>"
set black(say.ro.k.3) "Use : %char%k <nick> <reason>"
set black(say.ro.k.4) "Use : %botnick% k <nick> <reason>"
set black(say.ro.k.5) "Ai primit kick smechere :)"

################################# gag ######################################

set black(say.ro.gag.1) "Use : %char%gag <chan> <nick> \[time\] \[reason\] | %char%gag <nick> \[time\] \[reason\]"
set black(say.ro.gag.2) "Use : %botnick% gag <chan> <nick> \[time\] \[reason\] | %botnick% gag <nick> \[time\] \[reason\]"
set black(say.ro.gag.3) "Use : %char%gag <nick> \[time\] \[reason\]"
set black(say.ro.gag.4) "Use : %botnick% gag <nick> \[time\] \[reason\]"
set black(say.ro.gag.5) "%msg.1% ai fost redus la tacere timp de %msg.2% minute. Acum te poti bucura de sunetul linistii :)."
set black(say.ro.gag.6) "Fara motiv"
set black(say.ro.gag.7) "=- Gag List for %chan% =-"
set black(say.ro.gag.8) "=- NONE =-"
set black(say.ro.gag.9) "%msg.1%. %msg.2% - Expira dupa %msg.7%"
set black(say.ro.gag.10) "Nu mai poti scrie pe %chan% pentru %time% minute."
set black(say.ro.gag.11) "- ATENTIE - %gagger% nu o sa mai poata tasta pe %chan% pentru %time% minute."
set black(say.ro.gag.12) "%msg.1% are OP pe %chan%, nu pot continua"
set black(say.ro.gag.13) "%msg.1% (%msg.2%) este deja in lista mea de gag pentru %chan%. Adaug noul timp de expirare.."
set black(say.ro.gag.14) "Motiv : %msg%"

################################# ungag #####################################

set black(say.ro.ungag.1) "Use : %char%ungag <chan> <nick>/<host>  | %char%ungag <nick>/<host>"
set black(say.ro.ungag.2) "Use : %botnick% ungag <chan> <nick>/<host> | %botnick% ungag <nick>/<host>"
set black(say.ro.ungag.3) "Use : %char%ungag <nick>/<host> "
set black(say.ro.ungag.4) "Use : %botnick% ungag <nick>/<host>"
set black(say.ro.ungag.5) "Nu am gasit niciun gag pentru %msg.1% pe %chan%."
set black(say.ro.ungag.6) "Am scos gag-ul pentru %msg.1% pe %chan%."
set black(say.ro.ungag.7) "Acum poti scrie pe %chan%"
set black(say.ro.ungag.8) "- ATENTIE - %gagger% acum poate tasta pe %chan%"

################################ bw #########################################

set black(say.ro.bw.1) "Use : %char%bw <chan> <nick>/<host> | %char%bw <nick>/<host>"
set black(say.ro.bw.2) "Use : %botnick% bw <chan> <nick>/<host> | %botnick% bw <nick>/<host>"
set black(say.ro.bw.3) "Use : %char%bw <nick>/<host>"
set black(say.ro.bw.4) "Use : %botnick% bw <nick>/<host>"
set black(say.ro.bw.5) "Nu ai voie sa folosesti asemenea limbaj !"

############################### sb ##########################################

set black(say.ro.sb.1) "Use : %char%sb <chan> <host> | %char%sb <host>"
set black(say.ro.sb.2) "Use : %botnick% sb <chan> <host> | %botnick% sb <host>"
set black(say.ro.sb.3) "Use : %char%sb <host>"
set black(say.ro.sb.4) "Use : %botnick% sb <host>"
set black(say.ro.sb.5) "Ban Global : %msg.1% | Setat de : %msg.2% | Motiv : %msg.5% | Creat in data de : %msg.3% | Expira la : permanent , sticky"
set black(say.ro.sb.6) "Ban Global : %msg.1% | Setat de : %msg.2% | Motiv : %msg.5% | Creat in data de : %msg.3% | Expira la : permanent"
set black(say.ro.sb.7) "Ban Global : %msg.1% | Setat de : %msg.2% | Motiv : %msg.5% | Creat in data de : %msg.3% | Expira la : %msg.4% ,sticky"
set black(say.ro.sb.8) "Ban Global : %msg.1% | Setat de : %msg.2% | Motiv : %msg.5% | Creat in data de : %msg.3% | Expira la : %msg.4%"
set black(say.ro.sb.9) "Ban Local : %msg.1% | Setat de : %msg.2% | Motiv : %msg.5% | Creat in data de : %msg.3% | Expira la : permanent , sticky"
set black(say.ro.sb.10) "Ban Local : %msg.1% | Setat de : %msg.2% | Motiv : %msg.5% | Creat in data de : %msg.3% | Expira la : permanent"
set black(say.ro.sb.11) "Ban Local : %msg.1% | Setat de : %msg.2% | Motiv : %msg.5% | Creat in data de : %msg.3% | Expira la : %msg.4% ,sticky"
set black(say.ro.sb.12) "Ban Local : %msg.1% | Setat de : %msg.2% | Motiv : %msg.5% | Creat in data de : %msg.3% | Expira la : %msg.4%"
set black(say.ro.sb.13) "Nu am gasit nimic in lista mea."
set black(say.ro.sb.14) "Acesta a scris: %msg%"
set black(say.ro.sb.15) "Acesta era pe canalele: %msg%."

############################### d ###########################################

set black(say.ro.d.1) "Use : %char%d <chan> <nr zile> <nick>/<host> <reason> | %char%d <nr zile> <nick>/<host> <reason>"
set black(say.ro.d.2) "Use : %botnick% d <chan> <nr zile> <nick>/<host> <reason> | %botnick% d <nr zile> <nick>/<host> <reason>"
set black(say.ro.d.3) "Use : %char%d <nr zile> <nick>/<host> <reason>"
set black(say.ro.d.4) "Use : %botnick% d <nr zile> <nick>/<host> <reason>"
set black(say.ro.d.5) "Asa se da ban pe zile :)"

############################### stick ########################################

set black(say.ro.stick.1) "Use : %char%stick <chan> <nick>/<host> <timp> <reason> | %char%stick <nick>/<host> <timp> <reason>"
set black(say.ro.stick.2) "Use : %botnick% stick <chan> <nick>/<host> <timp> <reason> | %botnick% stick <nick>/<host> <timp> <reason>"
set black(say.ro.stick.3) "Use : %char%stick <nick>/<host> <timp> <reason>"
set black(say.ro.stick.4) "Use : %botnick% stick <nick>/<host> <timp> <reason>"
set black(say.ro.stick.5) "Ban de tip sticky :)"

################################ t ###########################################

set black(say.ro.t.1) "Use : %char%t <chan> <topic> | %char% t <topic>"
set black(say.ro.t.2) "Use : %botnick% t <chan> <topic> | %botnick% t <topic>"
set black(say.ro.t.3) "Use : %char%t <topic>"
set black(say.ro.t.4) "Use : %botnick% t <topic>"

############################### status #######################################

set black(say.ro.status.1) "Sunt pornit de :%msg%"
set black(say.ro.status.2) "Sunt conectat la server-ul :%msg%"
set black(say.ro.status.3) "Sunt ONLINE de :%msg%"
set black(say.ro.status.4) "Am urmatoarele canale in memorie: %msg%"
set black(say.ro.status.5) "Uptime-ul server-ului : %msg%"

################################ i ##########################################

set black(say.ro.i.1) "%msg.1% se afla deja pe %chan%."
set black(say.ro.i.2) "Il invit pe %msg.1% pe %chan%."
set black(say.ro.i.5) "Use : %char%i <nick1> <nick2>.."
set black(say.ro.i.6) "Use : %botnick% i <nick1> <nick2>.."
set black(say.ro.i.7) "Esti invitat pe %chan% de %nick% , daca vrei sa intri tasteaza /join %chan% . Multumesc"

################################ addinfo ###################################

set black(say.ro.addinfo.1) "Use : %char%addinfo <newinfo> pentru oprire %char%addinfo off"
set black(say.ro.addinfo.2) "Use : %botnick% addinfo <newinfo> pentru oprire %botnick% addinfo off"
set black(say.ro.addinfo.3) "Am setat info OFF"
set black(say.ro.addinfo.4) "Am setat info : %msg%"

################################ purge #####################################

set black(say.ro.purge.1) "Te rog specifica un motiv."
set black(say.ro.purge.2) "Am sters canalul %chan% din lista mea."

################################## l ########################################

set black(say.ro.l.1) "Use : %char%l <chan> <secunde> | %char%l <secunde>"
set black(say.ro.l.2) "Use : %botnick% l <chan> <secunde> | %botnick% l <secunde>"
set black(say.ro.l.3) "Use : %char%l <secunde>"
set black(say.ro.l.4) "Use : %botnick% l <secunde>"
set black(say.ro.l.5) "Valoarea este prea mare.Te rog foloseste o valoare sub 300 secunde (5 minute)!"
set black(say.ro.l.6) "Am pus +%msg.1% pe %chan% timp de %msg.2% secunde"

################################## chat #####################################

set black(say.ro.chat.1) "Am trimis cererea de CHAT."

################################## ul ######################################

set black(say.ro.ul.1) "Am scos modurile +%msg.1% de pe %chan% in caz ca sunt aplicate"

################################## say #####################################

set black(say.ro.say.1) "Use : %char%say <chan> <message> | %char%say <message>"
set black(say.ro.say.2) "Use : %botnick% say <chan> <message> | %botnick% say <message>"
set black(say.ro.say.3) "Use : %char%say <message>"
set black(say.ro.say.4) "Use : %botnick% say <message>"

################################## act ######################################

set black(say.ro.act.1) "Use : %char%act <chan> <message> | %char%act <message>"
set black(say.ro.act.2) "Use : %botnick% act <chan> <message> | %botnick% act <message>"
set black(say.ro.act.3) "Use : %char%act <message>"
set black(say.ro.act.4) "Use : %botnick% act <message>"

################################## broadcast ################################

set black(say.ro.broadcast.1) "Use : %char%broadcast <text>"
set black(say.ro.broadcast.2) "Use : %botnick% broadcast <text>"

################################## check ####################################

set black(say.ro.check.1) "Use : %char%check <nick>"
set black(say.ro.check.2) "Use : %botnick% check <nick>"
set black(say.ro.check.3) "Esti verificat(a) te rog nu raspunde la acest mesaj !"

################################## version ##################################

set black(say.ro.version.1) "VERSIUNE SCRIPT : \002BlackToolS 2.4\002 Creat de \002BLaCkShaDoW\002 . Pentru mai multe informatii ---= \002WwW.TclScripts.Net\002 or #TCL-HELP @ UNDERNET"

################################# ub ######################################

set black(say.ro.ub.1) "Use : %char%ub <chan> <host> | %char%ub <host>"
set black(say.ro.ub.2) "Use : %botnick% ub <chan> <host> | %botnick% ub <host>"
set black(say.ro.ub.3) "Use : %char%ub <host>"
set black(say.ro.ub.4) "Use : %botnick% ub <host>"
set black(say.ro.ub.5) "Nu poti scoate acest ban.Necesita nivel Senior+"
set black(say.ro.ub.6) "Am scos (%msg.1%) banuri legate de \002%msg.2%\002 din lista globala de banuri"
set black(say.ro.ub.7) "Nu exista un asemenea ban in baza de date globala"
set black(say.ro.ub.8) "Am scos (%msg.1%) banuri legate de \002%msg.2%\002 din lista de banuri a canalului %chan%"
set black(say.ro.ub.9) "Nu exista un asemenea ban in baza de date"
set black(say.ro.ub.10) "%msg.1% a scos (%msg.2%) banuri legate de \002%msg.3%\002 de pe %chan%."

################################## away ###################################

set black(say.ro.away.1) "Use %char%away <text> | add <away> | list | del <numar> .Pentru a dezactiva away scrie : %char%away off"
set black(say.ro.away.2) "Use %botnick% away <text> | add <away> | list | del <numar> .Pentru a dezactiva away scrie : %botnick% away off"
set black(say.ro.away.3) "Am dezactivat modulul de AWAY"
set black(say.ro.away.4) "Mi-am setat ca AWAY :%msg%."

################################## mode ###################################

set black(say.ro.mode.1) "Use : %char%mode <chan> +mode | %char%mode +mode"
set black(say.ro.mode.2) "Use : %botnick% mode <chan> +mode | %botnick% mode +mode"
set black(say.ro.mode.3) "set : %char%mode +mode"
set black(say.ro.mode.4) "Use : %botnick% mode +mode"
set black(say.ro.mode.5) "Use : %char%mode +mode"
set black(say.ro.mode.6) "Am aplicat modurile %msg.1% pe %chan%."

################################### set ###################################

set black(say.ro.set.1) "Use: %char%set <chan> +flag / %char%set <chan> flag 0:0 | %char%set +flag / %char%set flag 0:0"
set black(say.ro.set.2) "Use: %botnick% set <chan> +flag / %botnick% set <chan> flag 0:0 | %botnick% set +flag / %botnick% set flag 0:0"
set black(say.ro.set.3) "Use: %char%set +flag / %char%set flag 0:0"
set black(say.ro.set.4) "Use: %botnick% set +flag / %botnick% set flag 0:0"
set black(say.ro.set.5) "Nu am putut seta %msg.1% pe %chan%."
set black(say.ro.set.6) "Am setat %msg.1% pe %chan%"
set black(say.ro.set.7) "Nu am putut seta %msg.1% %msg.set% pe %chan%."
set black(say.ro.set.8) "Am setat %msg.1% %msg.set% pe %chan%"
set black(say.ro.set.9) "Use: set vprotect <on>/<off>."
set black(say.ro.set.10) "Use: set oprotect <on>/<off>."
set black(say.ro.set.11) "Use: set seen-method <notice>/<privmsg>"
set black(say.ro.set.12) "Nu pot seta ca backchan %msg.1% deoarece nu este valid."
set black(say.ro.set.13) "Use: set clonescan-action <message>/<ban>"

#################################### ignore ################################

set black(say.ro.ignore.1) "Use %char%ignore <list> | <add> <host> <time> <reason> | <delete> <host> ."
set black(say.ro.ignore.2) "Use %botnick% ignore <list> | <add> <host> <time> <reason> | <delete> <host> ."
set black(say.ro.ignore.3) "Nu sunt ignoruri date."
set black(say.ro.ignore.4) "%msg.1% de :%msg.2% motiv :%msg.6% Data expirare :%msg.3%"
set black(say.ro.ignore.5) "Eroare.%msg.1% are deja ignore."
set black(say.ro.ignore.6) "Am adaugat ignore pe %msg.1% cu motiv :%msg.7% cu timp :%msg.2% minute"
set black(say.ro.ignore.7) "Use %char%ignore delete <mask>"
set black(say.ro.ignore.8) "Eroare.%msg.1% nu are ignore."
set black(say.ro.ignore.9) "Am sters ignore pentru %msg.1%."

################################## show ####################################

set black(say.ro.show.1) "Use : %char%show <chan> <flag> | %char%show <flag>"
set black(say.ro.show.2) "Use : %botnick% show <chan> <flag> | %botnick% show <flag>"
set black(say.ro.show.3) "Use : %char%show <flag>"
set black(say.ro.show.4) "Use : %botnick% show <flag>"
set black(say.ro.show.5) "Nu am putut obtine informatii despre %msg.1%."
set black(say.ro.show.6) "%msg.1% este setat la: %msg.8%"

################################## silence ####################################

set black(say.ro.silence.1) "Use : %char%silence <on> | <off>"
set black(say.ro.silence.2) "Use : %botnick% silence <on> | <off>"
set black(say.ro.silence.3) "Mi-am pus SILENCE +*!*@*"
set black(say.ro.silence.4) "Mi-am scos SILENCE +*!*@*"

################################## msg #######################################

set black(say.ro.msg.1) "Use %char%msg <nick> <text>"
set black(say.ro.msg.2) "Use %botnick% msg <nick> <text>"

################################## reset #####################################

set black(say.ro.reset.1) "Use : %char%reset <chan> <flag> / <all> | %char%reset <flag> / <all>"
set black(say.ro.reset.2) "Use : %botnick% reset <chan> <flag> / <all> | %botnick% reset <flag> / <all>"
set black(say.ro.reset.3) "Use : %char% reset <flag> / <all>"
set black(say.ro.reset.4) "Use : %botnick% reset <flag> / <all>"
set black(say.ro.reset.5) "Am resetat setarile pentru %chan%.."
set black(say.ro.reset.6) "Nu am putut reseta %msg.1%"
set black(say.ro.reset.7) "Am resetat %msg.1% pentru %chan%"

##################################banlist##################################### 

set black(say.ro.banlist.1) "Use : %char%banlist <chan> <user> | %char%banlist <user>"
set black(say.ro.banlist.2) "GLOBAL : %char%banlist global"
set black(say.ro.banlist.3) "Use : %botnick% banlist <chan> <user>  | %botnick% banlist <user> "
set black(say.ro.banlist.4) "GLOBAL : %botnick% banlist global"
set black(say.ro.banlist.5) "Use : %char%banlist <user>"
set black(say.ro.banlist.6) "Use : %botnick% banlist <user>"
set black(say.ro.banlist.7) "*** NONE ***"
set black(say.ro.banlist.8) "*** Sfarsit lista ***"
set black(say.ro.banlist.9) "Lista de banuri globale este urmatoarea :"
set black(say.ro.banlist.10) "%msg.1% de: %msg.2% Reason : %msg.5% Expira in : %msg.4% Creat in data de : %msg.3%"
set black(say.ro.banlist.11) "Lista de banuri pentru %msg.1% (%chan%) este urmatoarea :"
set black(say.ro.banlist.12) "%msg.1% Reason : %msg.6% Expira in : %msg.3% Creat in data de : %msg.2%"
set black(say.ro.banlist.13) "Lista de banuri pentru %chan% este urmatoarea :"

################################## secure ####################################

set black(say.ro.secure.1) "Use %char%secure <chan> <on> / <off> | %char%secure <on> / <off> "
set black(say.ro.secure.2) "Use : %botnick% secure <chan> <on> / <off> | %botnick% secure <on> / <off>"
set black(say.ro.secure.3) "Use : %char%secure <on> / <off>"
set black(say.ro.secure.4) "Use : %botnick% secure <on> / <off>"
set black(say.ro.secure.5) "Am activat protectiile pe %chan% .."
set black(say.ro.secure.6) "AM dezactivat protectiile pe %chan% .."


################################ COMENZI PRIVATE ##############################
#
#
#
###############################################################################


################################### rehash #####################################

set black(say.ro.rehash.1) "Mi-am dat rehash.."

################################### restart ####################################

set black(say.ro.restart.1) "Mi-am dat restart.."

################################### save #######################################


set black(say.ro.save.1) "Salvez fisierele.."


################################### jump #######################################

set black(say.ro.jump.1) "Schimb server-ul..."


################################### die #######################################

set black(say.ro.die.1) "Si am murit..:)"

################################### nick #####################################

set black(say.ro.nick.1) "Imi schimb nick-ul in %msg.1%"
set black(say.ro.nick.2) "Use : nick <newnick>"

################################### addchan ##################################

set black(say.ro.addchan.1) "Use : addchan #canal"
set black(say.ro.addchan.2) "%msg.1% este deja in lista mea de canale."
set black(say.ro.addchan.3) "Am adaugat %msg.1% in lista mea de canale"
set black(say.ro.addchan.4) "Use : %botnick% addchan #canal"


################################### delchan ##################################

set black(say.ro.delchan.1) "Use : delchan #canal <motiv>"
set black(say.ro.delchan.2) "%msg.1% nu se afla in memoria mea."
set black(say.ro.delchan.3) "Am sters %msg.1% din lista mea de canale."
set black(say.ro.delchan.4) "Use : %botnick% delchan #canal <motiv>"
set black(say.ro.delchan.5) "Nu poti sterge canalul %msg.1% deoarece are rang de HOMECHAN."

################################### suspend ##################################

set black(say.ro.suspend.1) "Use : suspend #canal <motiv>"
set black(say.ro.suspend.2) "%msg.1% nu se afla in memoria mea."
set black(say.ro.suspend.3) "%msg.1% are deja suspend"
set black(say.ro.suspend.4) "Am setat suspend pentru canalul %msg.1%"
set black(say.ro.suspend.5) "Use : %botnick% suspend #canal <motiv>"

################################### unsuspend ##################################

set black(say.ro.unsuspend.1) "Use : unsuspend #canal"
set black(say.ro.unsuspend.2) "%msg.1% nu se afla in memoria mea."
set black(say.ro.unsuspend.3) "%msg.1% nu are suspend"
set black(say.ro.unsuspend.4) "Am setat unsuspend pentru canalul %msg.1%"
set black(say.ro.unsuspend.5) "Use : %botnick% unsuspend #canal"


################################### op ##########################################

set black(say.ro.op.1) "%msg.1% nu se afla in memoria mea."
set black(say.ro.op.2) "%msg.1% are deja op.."

################################### deop ########################################

set black(say.ro.deop.1) "%msg.1% nu se afla in memoria mea."

################################### voice #######################################

set black(say.ro.voice.1) "%msg.1% nu se afla in memoria mea."
set black(say.ro.voice.2) "%msg.1% are deja voice.."

################################### devoice #####################################

set black(say.ro.devoice.1) "%msg.1% nu se afla in memoria mea."

################################### invite ######################################

set black(say.ro.invite.1) "Use : invite <chan>"
set black(say.ro.invite.2) "Ai primit invite pe %chan% te rog reintra !"


################################### add #########################################

set black(say.ro.add.1) "Use %char%add <level> <chan> <user1> <user2>.. (Level : voice, op, senior, admin, manager, protect, owner)  | %char%add <level> <user1> <user2>.. (Nivele : voice, op, senior, admin, manager, protect, owner)"
set black(say.ro.add.2) "Use : %botnick% add <level> <chan> <user1> <user2>.. (Level : voice, op, senior, admin, manager, protect, owner)  | %botnick% add <level> <user1> <user2>.. (Nivele : voice, op, senior, admin, manager, protect, owner)"
set black(say.ro.add.3) "Use : %char%add <level> <user1> <user2>.. (Nivele : voice, op, senior, admin, manager,protect)"
set black(say.ro.add.4) "Use : %botnick% add <level> <user1> <user2>.. (Nivele : voice, op, senior, admin, manager,protect)"
set black(say.ro.add.5) "Mai exista un user in baza mea de date cu acelasi host.Acesta este \002%msg.1%\002."
set black(say.ro.add.6) "Nu poti da access de manager deoarece acesta este desupra level-ului tau."
set black(say.ro.add.7) "Nu poti da access de admin deoarece acesta este level-ul tau."
set black(say.ro.add.8) "Nu poti da access de manager deoarece acesta este level-ul tau."
set black(say.ro.add.9) "\002%msg.1%\002 are access de manager pe %chan%."
set black(say.ro.add.10) "Am adaugat user-ul \002%msg.1%\002 cu host :\002%msg.2%\002"
set black(say.ro.add.11) "\002%msg.1%\002 are access de admin pe %chan%."
set black(say.ro.add.12) "\002%msg.1%\002 are access de senior pe %chan%."
set black(say.ro.add.13) "\002%msg.1%\002 are access de op pe %chan%."
set black(say.ro.add.14) "\002%msg.1%\002 are access de voice pe %chan%."
set black(say.ro.add.15) "\002%msg.1%\002 are access de protect pe %chan%."
set black(say.ro.add.16) "\002%msg.1%\002 are access de owner ."
set black(say.ro.add.17) "Userul \002%msg.1%\002 este prea lung. Acesta a fost scurtat automat la \002%msg.2%\002"

################################### adduser #########################################

set black(say.ro.adduser.1) "Use %char%adduser <level> <chan> <nick1> <nick2>.. (Level : voice, op, senior, admin, manager, protect, owner)  | %char%adduser <level> <nick1> <nick2>.. (Nivele : voice, op, senior, admin, manager, protect, owner)"
set black(say.ro.adduser.2) "Use : %botnick% adduser <level> <chan> <nick1> <nick2>.. (Level : voice, op, senior, admin, manager, protect, owner)  | %botnick% adduser <level> <nick1> <nick2>.. (Nivele : voice, op, senior, admin, manager, protect, owner)"
set black(say.ro.adduser.3) "Use : %char%adduser <level> <nick1> <nick2>.. (Nivele : voice, op, senior, admin, manager,protect)"
set black(say.ro.adduser.4) "Use : %botnick% adduser <level> <nick1> <nick2>.. (Nivele : voice, op, senior, admin, manager,protect)"

################################### delacc #########################################

set black(say.ro.delacc.1) "Use %char%delacc <chan> <user1> <user2>.. | %char%delacc <user1> <user2>.."
set black(say.ro.delacc.2) "Use : %botnick% delacc <chan> <user1> <user2>..  | %botnick% delacc <user1> <user2>.."
set black(say.ro.delacc.3) "Use : %char%delacc <user1> <user2>.."
set black(say.ro.delacc.4) "Use : %botnick% delacc <user1> <user2>.."
set black(say.ro.delacc.5) "Am sters access-ul pentru %msg.1% pe %chan%."
set black(say.ro.delacc.6) "Use %char%delacc owner <user1> <user2>"
set black(say.ro.delacc.7) "Use %botnick% delacc owner <user1> <user2>"
set black(say.ro.delacc.8) "Am sters access-ul de OWNER pentru %msg.1%."
set black(say.ro.delacc.9) "Nu are access de OWNER."

#################################### del ###########################################

set black(say.ro.del.1) "Use : %char%del <user1> <user2>.."
set black(say.ro.del.2) "Use : %botnick% del <user1> <user2>.."
set black(say.ro.del.3) "Am sters %msg.1% din memoria mea."
set black(say.ro.del.4) "Nu poti sterge user-ul \002%msg.1%\002 deorece are access pe alte canale.Foloseste \002delacc %msg.1%\002"

################################### addhost ########################################

set black(say.ro.addhost.1) "Use : %char%addhost <user1> <host>"
set black(say.ro.addhost.2) "Use : %botnick% addhost <user1> <host>"
set black(say.ro.addhost.3) "%msg.2% exista deja in baza de date a lui %msg.1%."
set black(say.ro.addhost.4) "Am adaugat :%msg.2% la %msg.1%"
set black(say.ro.addhost.5) "Ti-ai adaugat ca host :%msg.1%"

################################### delhost ########################################

set black(say.ro.delhost.1) "Use : %char%delhost <user1> <host>"
set black(say.ro.delhost.2) "Use : %botnick% delhost <user1> <host>"
set black(say.ro.delhost.3) "%msg.2% nu exista in baza de date a lui %msg.1%."
set black(say.ro.delhost.4) "Am sters host-ul :%msg.2% de la user-ul :%msg.1%"
set black(say.ro.delhost.5) "Ti-ai sters host-ul :%msg.2%"

################################### chuser ########################################

set black(say.ro.chuser.1) "Use : %char%chuser <user> <newuser>"
set black(say.ro.chuser.2) "Use : %botnick% chuser <user> <newuser>"
set black(say.ro.chuser.3) "Am schimbat user-ul %msg.1% in : %msg.2% ."
set black(say.ro.chuser.4) "Ti-ai schimbat handle in :%msg.1%."

################################### userlist ########################################

set black(say.ro.userlist.1) "Use %char%userlist <chan> <all> / <op> / <voice> / <senior> / <admin> / <protect> /  <manager> | %char%userlist <all> / <op> / <voice> / <senior> / <admin> / <protect> /  <manager> / <online>"
set black(say.ro.userlist.2) "Use : %botnick% userlist <chan> <all> / <op> / <voice> / <senior> / <admin> / <protect> /  <manager>  | %botnick% userlist <all> / <op> / <voice> / <senior> / <admin> / <protect> /  <manager> / <online>"
set black(say.ro.userlist.3) "Use : %char%userlist <all> / <op> / <voice> / <senior> / <admin> / <protect> /  <manager> / <online>"
set black(say.ro.userlist.4) "Use : %botnick% userlist <all> / <op> / <voice> / <senior> / <admin> / <protect> / <manager> / <online>"

set black(say.ro.userlist.5) "Am in memorie %msg.1% useri cu access de \002Manager\002 pe %chan%."
set black(say.ro.userlist.7) "%msg%"
set black(say.ro.userlist.8) "Am in memorie %msg.1% useri cu access de \002Administrator\002 pe %chan%."
set black(say.ro.userlist.10) "Am in memorie %msg.1% useri cu access de \002Senior\002 pe %chan%."
set black(say.ro.userlist.12) "Am in memorie %msg.1% useri cu access de \002Protect\002 pe %chan%."
set black(say.ro.userlist.14) "Am in memorie %msg.1% useri cu access de \002Op\002 pe %chan%."
set black(say.ro.userlist.16) "\002BOSS OWNER\002 :%msg%"
set black(say.ro.userlist.17) "Lista \002OWNER\002 :%msg%"
set black(say.ro.userlist.18) "Am in memorie %msg.1% useri cu access de \002Voice\002 pe %chan%."
set black(say.ro.userlist.20) "Am in memorie %msg.1% useri pe %chan%"
set black(say.ro.userlist.21) "Sunt %msg.1% useri \002ONLINE\002 pe %chan%"
set black(say.ro.userlist.22) "Am in memorie %msg.1% useri cu access de \002Autoop\002 pe %chan%."
set black(say.ro.userlist.23) "Am in memorie %msg.1% useri cu access de \002AutoVoice\002 pe %chan%."

#################################### channels #####################################

set black(say.ro.channels.1) "Am in memorie %msg.1% canale.."
set black(say.ro.channels.2) "%msg%"

#################################### info ########################################

set black(say.ro.info.1) "Use : %char%info <chan> <user1> | %char%info <user1>"
set black(say.ro.info.2) "Use : %botnick% info <chan> <user1> | %botnick% info <user1>"
set black(say.ro.info.3) "Use : %char%info <user1> | <chan>"
set black(say.ro.info.4) "Use : %botnick% info <user1> | <chan>"
set black(say.ro.info.5) "Acesta are access pe urmatoarele canale :%msg%"
set black(say.ro.info.6) "HOSTURI: %msg%"
set black(say.ro.info.7) "Ultima oara vazut ONLINE : %msg%"
set black(say.ro.info.8) "Informatii despre %msg.1%"
set black(say.ro.info.9) "Timpul curent : %msg%"
set black(say.ro.info.10) "suspendat din functie"
set black(say.ro.info.11) "Nivel de access :%msg.8% (%msg.1%)"
set black(say.ro.info.12) "Info - %msg%"
set black(say.ro.info.13) "Ultima oara modificat de : \037%msg.1%\037 in data de : %msg.8%"
set black(say.ro.info.14) "Ultima oara vazut ONLINE :NONE"
set black(say.ro.info.15) "Pentru a vedea statisticile privind activitatea user-ului %msg.1% tastati - %char%activ %msg.1% -"
set black(say.ro.info.16) "Sfarsit informatii.."
set black(say.ro.info.17) "Ultima oara vazut ONLINE :%msg%"
set black(say.ro.info.18) "Nu are access pe acest canal !"

################################## s #############################################

set black(say.ro.s.1) "Use : %char%s <chan> <user1> | %char%s <user1>"
set black(say.ro.s.2) "Use : %botnick% s <chan> <user1>  | %botnick% s <user1>"
set black(say.ro.s.3) "Use : %char%s <user1>"
set black(say.ro.s.4) "Use : %botnick% s <user1>"
set black(say.ro.s.5) "%msg.1% este deja suspendat pe %chan%."
set black(say.ro.s.6) "I-am suspendat access-ul lui %msg.1% pe %chan%"

################################## us #############################################

set black(say.ro.us.1) "Use : %char%us <chan> <user1> | %char%us <user1>"
set black(say.ro.us.2) "Use : %botnick% us <chan> <user1>  | %botnick% us <user1>"
set black(say.ro.us.3) "Use : %char%us <user1>"
set black(say.ro.us.4) "Use : %botnick% us <user1>"
set black(say.ro.us.5) "%msg.1% nu are suspend pe %chan%."
set black(say.ro.us.6) "I-am scos suspendul lui %msg.1% pe %chan%"

################################## ping ###########################################

set black(say.ro.ping.1) "Pingul tau este de %msg.1% secunde"

################################## time ###########################################

set black(say.ro.time.1) "Timpul este : %msg%"

################################## vers ###########################################

set black(say.ro.vers.1) "Use %char%vers <nick> ."
set black(say.ro.vers.2) "Use %botnick% vers <nick> ."
set black(say.ro.vers.3) "%msg.1% are ca version : %msg.4%"

################################## whois ##########################################

set black(say.ro.whois.1) "Use :%char%whois <nick>"
set black(say.ro.whois.2) "Use :%botnick% whois <nick>"
set black(say.ro.whois.3) "Informatii despre %msg.1% :%msg.4%"
set black(say.ro.whois.4) "Se afla pe canalele : %msg%"
set black(say.ro.whois.5) "Nu exista un asemenea nick."

################################## clear ##########################################

set black(say.ro.clear.1) "Use : %char%clear <chan> <banlist> / <userlist> / <settings> / <activ> | %char%clear <banlist> / <userlist> / <settings> / <activ>"
set black(say.ro.clear.2) "Use : %botnick% clear <chan> <banlist> / <userlist> / <settings> / <activ>  | %botnick% clear <banlist> / <userlist> / <settings> / <activ>"
set black(say.ro.clear.3) "Use : %char%clear <banlist> | <userlist> | <settings> | <activ>"
set black(say.ro.clear.4) "Use : %botnick% clear <banlist> | <userlist> | <settings> | <activ>"
set black(say.ro.clear.5) "Am sters toate accesele dupa %chan%"
set black(say.ro.clear.6) "Am resetat (%msg.1%) banuri pentru %chan%"
set black(say.ro.clear.7) "Am dezactivat %msg.1% setari activate pe %chan% (module,protectii)"
set black(say.ro.clear.8) "Am resetat activitatea la %msg.1% useri pe %chan%."

################################## activ ##########################################

set black(say.ro.activ.1) "Use : %char%activ <chan> <user> | %char%activ <user>"
set black(say.ro.activ.2) "Use : %botnick% activ <chan> <user>  | %botnick% activ <user>"
set black(say.ro.activ.3) "Use : %char%activ <user>"
set black(say.ro.activ.4) "Use : %botnick% activ <user>"
set black(say.ro.activ.5) "Statisticile privind comenzile folosite de catre %msg.1%  pe %chan% sunt :"
set black(say.ro.activ.6) "%msg%"
set black(say.ro.activ.7) "Sfarsit lista.."
set black(say.ro.activ.8) "Statisticile privind comenzile folosite de catre %msg.1% avand access de OP sunt :"
set black(say.ro.activ.9) "Statisticile privind comenzile folosite de catre %msg.1% avand access de VOICE sunt :"
set black(say.ro.activ.10) "Use : activ <user> \[-reset\]"
set black(say.ro.activ.11) "Am resetat statisticile pentru userul %msg.1% pe %chan%."

################################## auto ##########################################

set black(say.ro.auto.1) "Use: %char%auto (+/-)o | (+/-)v  <user>"
set black(say.ro.auto.2) "Use: %botnick% auto (+/-)o | (+/-)v  <user>"
set black(say.ro.auto.3) "Use: %char%auto (+/-)o | (+/-)v  <user> \[-global\]"
set black(say.ro.auto.4) "Use: %botnick% auto (+/-)o | (+/-)v  <user> \[-global\]"
set black(say.ro.auto.5) "Use: (+/-)o | (+/-)v"
set black(say.ro.auto.6) "Ti-am setat autoop (+o) global"
set black(say.ro.auto.7) "Ti-am setat autovoice (+v) global"
set black(say.ro.auto.8) "Ti-am setat autoop pe %chan%"
set black(say.ro.auto.9) "Ti-am setat autovoice pe %chan%"
set black(say.ro.auto.10) "Am setat autoop pentru %msg.1% pe %chan%"
set black(say.ro.auto.11) "Am setat autovoice pentru %msg.1% pe %chan%"
set black(say.ro.auto.12) "Am setat autoop global pentru %msg.1%"
set black(say.ro.auto.13) "Am setat autovoice global pentru %msg.1%"
set black(say.ro.auto.14) "Ti-am sters autoop (+o) global"
set black(say.ro.auto.15) "Ti-am sters autovoice (+v) global"
set black(say.ro.auto.16) "Ti-am sters autoop pe %chan%"
set black(say.ro.auto.17) "Ti-am sters autovoice pe %chan%"
set black(say.ro.auto.18) "Am sters autoop pentru %msg.1% pe %chan%"
set black(say.ro.auto.19) "Am sters autovoice pentru %msg.1% pe %chan%"
set black(say.ro.auto.20) "Am sters autoop global pentru %msg.1%"
set black(say.ro.auto.21) "Am sters autovoice global pentru %msg.1%"

################################## cc ############################################

set black(say.ro.cc.1) "Use %char%cc <chan>"
set black(say.ro.cc.2) "Use %botnick% cc <chan>"
set black(say.ro.cc.3) "Canalul a fost creeat in data de :%msg% ."
set black(say.ro.cc.4) "Acest canal nu este creeat.Te rog specifica altul"

################################## info / stats ##########################################

set black(say.ro.stats.1) "Canal adaugat de : %awho% (%ahost%) in data de : %atime%"
set black(say.ro.stats.2) "Canalul este adaugat de : %duration%"
set black(say.ro.stats.3) "Canalul a fost adaugat timp de : %duration%"
set black(say.ro.stats.4) "Canal sters de : %rwho% (%rhost%) in data de : %rtime%"
set black(say.ro.stats.5) "Deocamdata nu exista statistici pentru %chan%"
set black(say.ro.stats.6) "Informatii pentru %chan% :"
set black(say.ro.stats.7) "%msg%"
set black(say.ro.stats.8) "Statut canal : ONLINE"
set black(say.ro.stats.9) "Statut canal : ONLINE (nu sunt pe %chan%)"
set black(say.ro.stats.10) "Total useri :  %msg.1%  (useri cu OP :  %msg.2%  - useri cu VOICE :  %msg.3% ) - Total banuri :  %msg.4% "
set black(say.ro.stats.11) "Sfarsit informatii.."
set black(say.ro.stats.12) "Statut canal : OFFLINE"
set black(say.ro.stats.13) "Canal suspendat de : %swho% (%shost%) in data de : %stime%"
set black(say.ro.stats.14) "Motiv : %reason%"

################################# login #########################################

set black(say.ro.login.1) "Ma loghez la %msg.1%.."


################################ Top ###########################################

set black(say.ro.top.1) "Use %char%top <chan> <command> / Use %char%top <chan> <words> (Top Words) | %char%top <command> / Use %char%top <words> (Top Words)"
set black(say.ro.top.2) "Comenzile pentru care aveti TOP sunt : <dr>,<bot>, <b>, <bw>, <black>, <spam>, <stick>, <n>, <i>, <w>, <k>, <d>"
set black(say.ro.top.3) "Use : %botnick% top <chan> <command> / Use %botnick% top <chan> <words> (Top Words)  | %botnick% top <command> / Use %botnick% top <words> (Top Words)"
set black(say.ro.top.4) "Comenzile pentru care aveti TOP sunt : <dr>,<bot>, <b>, <bw>, <black>, <spam>, <stick>, <n>, <i>, <w>, <k>, <d>"
set black(say.ro.top.5) "Use : %char%top <command> | Use %char%top <words> (Top Words)"
set black(say.ro.top.6) "Comenzile pentru care aveti TOP sunt : <dr>,<bot>, <b>, <bw>, <black>, <spam>, <stick>, <n>, <i>, <w>, <k>, <d>"
set black(say.ro.top.7) "Use : %botnick% top <command> | Use %botnick% top <words> (Top Words)"
set black(say.ro.top.8) "Comenzile pentru care aveti TOP sunt : <dr>,<bot>, <b>, <bw>, <black>, <spam>, <stick>, <n>, <i>, <w>, <k>, <d>"
set black(say.ro.top.9) "Nu sunt useri in top"
set black(say.ro.top.10) "Topul %char%dr pentru %chan% este :"
set black(say.ro.top.11) "%msg%"
set black(say.ro.top.12) "Topul pentru %char%b este :"
set black(say.ro.top.13) "Topul pentru %char%bot este :"
set black(say.ro.top.14) "Topul pentru %char%bw este :"
set black(say.ro.top.15) "Topul pentru %char%black este :"
set black(say.ro.top.16) "Topul pentru %char%spam este :"
set black(say.ro.top.17) "Topul pentru %char%stick este :"
set black(say.ro.top.18) "Topul pentru %char%n este :"
set black(say.ro.top.19) "Topul pentru %char%i este :"
set black(say.ro.top.20) "Topul pentru %char%k este :"
set black(say.ro.top.21) "Topul pentru %char%w este :"
set black(say.ro.top.22) "Topul pentru %char%d este :"
set black(say.ro.top.23) "Modulul de Top nu este activat pe %chan%."
set black(say.ro.top.24) "OK! sterg top-ul de cuvinte..."
set black(say.ro.top.25) "Top-ul %msg.1% al celor mai vorbareti useri este :"

#################################### h ############################################

set black(say.ro.cmdsvoice) "Comenzi: %char%v <nick> | \002%char%userlist\002 | %char%version | \002%char%info <user>/<chan>\002 | %char%addinfo <text> | \002%char%t <topic>\002"
set black(say.ro.cmdsop) "Comenzi: %char%v <nick> | \002%char%o <nick>\002 | %char%userlist | \002%char%version\002 | %char%info <user> | \002%char%ping\002 | %char%act <mesaj> | \002%char%addinfo <text>\002 | %char%t <topic> | \002%char%l <secunde>\002 | %char%ul | \002%char%cycle\002 | %char%mode <chanmode> | \002%char%i <nick>\002 | %char%vers <nick> | \002%char%whois <nick>\002 | %char%cc <canal> | \002%char%time\002 ."
set black(say.ro.cmdsenior) "Comenzi: %char%v <nick> | \002%char%o <nick>\002 | %char%userlist | \002%char%version\002 | %char%info <user>/<chan> | \002%char%ping\002 | %char%act <mesaj> | \002%char%addinfo <text>\002 | %char%t <topic> | \002%char%l <secunde>\002 | %char%ul | \002%char%cycle\002 | %char%mode <chanmode> | \002%char%i <nick>\002 | %char%vers <nick> | \002%char%whois <nick>\002 | %char%cc <canal> | \002%char%time\002 ."
set black(say.ro.cmdadmin) "Comenzi: %char%v <nick> | \002%char%o <nick>\002 | %char%userlist | \002%char%version\002 | %char%info <user>/<chan> | \002%char%ping\002 | %char%act <mesaj> | \002%char%addinfo <text>\002 | %char%t <topic> | \002%char%l <secunde>\002 | %char%ul | \002%char%cycle\002 | %char%mode <chanmode> | \002%char%i <nick>\002 | %char%vers <nick> | \002%char%whois <nick>\002 | %char%cc <canal> | \002%char%time\002 ."
set black(say.ro.cmdmanager) "Comenzi: %char%v <nick> | \002%char%o <nick>\002 | %char%userlist | \002%char%version\002 | %char%info <user>/<chan> | \002%char%ping\002 | %char%act <mesaj> | \002%char%addinfo <text>\002 | %char%t <topic> | \002%char%l <secunde>\002 | %char%ul | \002%char%cycle\002 | %char%mode <chanmode> | \002%char%i <nick>\002 | %char%vers <nick> | \002%char%whois <nick>\002 | %char%cc <canal> | \002%char%time\002 | %char%clear <userlist>/<banlist>/<activ> | \002%char%purge <reason>\002 | %char%set (+/-)flag ."
set black(say.ro.cmdowner) "Comenzi: %char%v <nick> | \002%char%o <nick>\002 | %char%userlist | \002%char%version\002 | %char%info <user>/<chan> | \002%char%ping\002 | %char%act <mesaj> | \002%char%addinfo <text>\002 | %char%t <topic> | \002%char%l <secunde>\002 | %char%ul | \002%char%cycle\002 | %char%mode <chanmode> | \002%char%i <nick>\002 | %char%vers <nick> | \002%char%whois <nick>\002 | %char%cc <canal> | \002%char%time\002 | %char%clear <userlist>/<banlist>/<activ> | \002%char%purge <reason>\002 | %char%set (+/-)flag ."
set black(say.ro.cmdbossowner) "Comenzi: %char%v <nick> | \002%char%o <nick>\002 | %char%userlist | \002%char%version\002 | %char%info <user>/<chan> | \002%char%ping\002 | %char%act <mesaj> | \002%char%addinfo <text>\002 | %char%t <topic> | \002%char%l <secunde>\002 | %char%ul | \002%char%cycle\002 | %char%mode <chanmode> | \002%char%i <nick>\002 | %char%vers <nick> | \002%char%whois <nick>\002 | %char%cc <canal> | \002%char%time\002 | %char%clear <userlist>/<banlist>/<activ> | \002%char%purge <reason>\002 | %char%set (+/-)flag."

set black(say.ro.cmds_more) "Comenzi Privat : op <chan> <nick> | \002deop <chan> <nick>\002 | voice <chan> <nick> | \002devoice <chan> <nick>\002 | invite <chan> ."
set black(say.ro.cmds_more_1) "Comenzi Privat : voice <chan> <nick> | \002devoice <chan> <nick>\002."

set black(say.ro.banvoice) "Comenzi : %char%k <nick> | \002%char%w <nick>\002 | %char%check <nick> | \002%char%sb <host>\002"
set black(say.ro.banop) "Comenzi : %char%k <nick> | \002%char%w <nick>\002 | %char%check <nick> | \002%char%sb <host>\002 | %char%id <nick> | \002%char%n <nick>\002 | %char%spam <nick> | \002%char%dr <nick>\002 | %char%b <nick>/<host> <timp> <motiv> | \002%char%bot <nick>/<host>\002 | %char%bw <nick>/<host> | \002%char%ub <host>\002 | %char%gag <nick> | \002%char%ungag <nick>/<host>\002 | %char%banlist <user>."
set black(say.ro.bansenior) "Comenzi : %char%k <nick> | \002%char%w <nick>\002 | %char%check <nick> | \002%char%sb <host>\002 | %char%id <nick> | \002%char%n <nick>\002 | %char%spam <nick> | \002%char%dr <nick>\002 | %char%b <nick>/<host> <timp> <motiv> | \002%char%ub <host>\002 | %char%d <nr zile> <nick> / <host> <reason> | \002%char%bot <nick>/<host>\002 | %char%bw <nick>/<host> | \002%char%black <host> / <nick> <reason>\002 | %char%stick <nick> / <host> <timp> <motiv> | \002%char%gag <nick>\002 | %char%ungag <nick>/<host> | \002%char%banlist <user>\002 ."
set black(say.ro.banadmin) "Comenzi : %char%k <nick> | \002%char%w <nick>\002 | %char%check <nick> | \002%char%sb <host>\002 | %char%id <nick> | \002%char%n <nick>\002 | %char%spam <nick> | \002%char%dr <nick>\002 | %char%b <nick>/<host> <timp> <motiv> | \002%char%ub <host>\002 | %char%d <nr zile> <nick> / <host> <reason> | \002%char%bot <nick>/<host>\002 | %char%bw <nick>/<host> | \002%char%black <host> / <nick> <reason>\002 | %char%stick <nick> / <host> <timp> <motiv> | \002%char%gag <nick>\002 | %char%ungag <nick>/<host> | \002%char%banlist <user>\002 ."
set black(say.ro.banmanager) "Comenzi : %char%k <nick> | \002%char%w <nick>\002 | %char%check <nick> |\002 %char%sb <host>\002 | %char%id <nick> | \002%char%n <nick>\002 | %char%spam <nick> | \002%char%dr <nick>\002 | %char%b <nick>/<host> <timp> <motiv> | \002%char%ub <host>\002 | %char%d <nr zile> <nick> / <host> <reason> | \002%char%bot <nick>/<host>\002 | %char%bw <nick>/<host> | \002%char%black <host> / <nick> <reason>\002 | %char%stick <nick> / <host> <timp> <motiv> | \002%char%gag <nick>\002 | %char%ungag <nick>/<host> | \002%char%banlist <user>\002."
set black(say.ro.banowner) "Comenzi : %char%k <nick> | \002%char%w <nick>\002 | %char%check <nick> | \002%char%sb <host> \[global\]\002 | %char%id <nick> | \002%char%n <nick>\002 | %char%spam <nick> | \002%char%dr <nick>\002 | %char%b <nick>/<host> <timp> \[global\] <motiv> | \002%char%ub <host>\002 \[global\] | %char%d <nr zile> <nick> / <host> <reason> | \002%char%bot <nick>/<host>\002 | %char%bw <nick>/<host> | \002%char%black <host> / <nick> <reason>\002 | %char%stick <nick> / <host> <timp> <motiv> | \002%char%gag <nick>\002 | \%char%ungag <nick>/<host> | \002%char%banlist <user>/<global>\002." 
set black(say.ro.banbossowner) "Comenzi : %char%k <nick> | \002%char%w <nick>\002 | %char%check <nick> | \002%char%sb <host> \[global\]\002 | %char%id <nick> | \002%char%n <nick>\002 | %char%spam <nick> | \002%char%dr <nick>\002 | %char%b <nick>/<host> <timp> \[global\] <motiv> | \002%char%ub <host>\002 \[global\] | %char%d <nr zile> <nick> / <host> <reason> | \002%char%bot <nick>/<host>\002 | %char%bw <nick>/<host> | \002%char%black <host> / <nick> <reason>\002 | %char%stick <nick> / <host> <timp> <motiv> | \002%char%gag <nick>\002 | %char%ungag <nick>/<host> | \002%char%banlist <user>/<global>\002."

set black(say.ro.addadmin) "Comenzi : %char%add <nivel> <user>  | \002%char%adduser <nivel> <nick>\002 | %char%delacc <user> | \002%char%del <user>\002 | %char%addhost <user> <host> | \002%char%delhost <user> <host>\002 | %char%s <user> | \002%char%us <user>\002 | %char%auto (+/-)o <user> | \002%char%auto (+/-)v <user>\002."
set black(say.ro.addmanager) "Comenzi : %char%add <nivel> <user> | \002%char%adduser <nivel> <nick>\002 | %char%delacc <user> | \002%char%del <user>\002 | %char%addhost <user> <host> | %char%chuser <user> <newuser> | %char%s <user> | \002%char%us <user>\002 | \002%char%delhost <user> <host>\002 | %char%auto (+/-)o <user> | \002%char%auto (+/-)v <user>\002."
set black(say.ro.addowner) "Comenzi : %char%add <nivel> <user> | \002%char%adduser <nivel> <nick>\002 | %char%delacc <user> | \002%char%del <user>\002 | %char%addhost <user> <host> | %char%chuser <user> <newuser> | %char%s <user> | \002%char%us <user>\002 | \002%char%delhost <user> <host>\002 | %char%auto (+/-)o <user> \[-global\] | \002%char%auto (+/-)v <user> \[-global\]\002"
set black(say.ro.addbossowner) "Comenzi : %char%add <nivel> <user> | \002%char%adduser <nivel> <nick>\002 | %char%delacc \[owner\] <user> | \002%char%del <user>\002 | %char%addhost <user> <host> | %char%chuser <user> <newuser> | %char%s <user> | \002%char%us <user>\002 | \002%char%delhost <user> <host>\002 | %char%auto (+/-)o <user> \[-global\] | \002%char%auto (+/-)v <user> \[-global\]\002"

set black(say.ro.howner) "Comenzi publice: %char%status | \002%char%uptime\002 | %char%away <text> | \002%char%silence on/off\002 | %char%jump <server> | \002%char%msg <nick/chan> <text>\002 | %char%broadcast <text> | \002%char%ignore <list> | <add> <host> <time> <reason> | <delete> <host>\002 | %char%chat | \002%char%login\002 | %char%channels | \002%char%find <user>/<host>\002."
set black(say.ro.howner_1) "Comenzi Privat: nick <newnick> | \002restart\002 | rehash | \002die\002 | save | \002suspend / unsuspend <canal>\002 | delchan <canal> <motiv> | \002addchan <canal>\002."
set black(say.ro.hcommand.1) "Pentru a vizualiza \002Manualul\002 fiecarui comenzi tastati \002%char%man <comanda> | %botnick% man <comanda>\002"

#################################### top #########################################

set black(say.ro.htop) "Foloseste \002%char%top <comanda>\002 pentru statisticile fiecarei comenzi folosite de useri. Comenzile care au disponibil un TOP sunt \002<dr>\002 | \002<b>\002 | \002<bw>\002 | \002<bot>\002 | \002<black>\002 | \002<spam>\002 | \002<stick>\002 | \002<n>\002| \002<i>\002 | \002<w>\002 | \002<k>\002 | \002<d>\002"
set black(say.ro.htop_1) "Sintaxa comanda: \002%char%activ <user> \[-reset\]\002 (vizualizare activitate/resetare)"
set black(say.ro.htop_2) "Sintaxa comanda: \002%char%activ <user>\002 (vizualizare activitate)"

#################################### chaninfo #####################################

set black(say.ro.hchaninfo.1) "Aveti la dispozitie urmatoarele categorii de setari pentru %chan% :"
set black(say.ro.hchaninfo.2) "\002blacktools\002 | standard | \002top\002"
set black(say.ro.hchaninfo.3) "Categoria blacktools contine : Protectiile interne ale scriptului BlackTools"
set black(say.ro.hchaninfo.4) "Categoria standard contine : setarile interne standard ale Eggdrop-ului"
set black(say.ro.hchaninfo.5) "Categoria top contine : activitatea in ceea ce priveste folosirea comenzilor de ban"
set black(say.ro.hchaninfo.6) "Pentru a selecta categoria foloseste : \002%char%h <categorie> | %botnick% h <categorie>\002"
set black(say.ro.hchaninfo.7) "top"

################################### blacktools ###################################

set black(say.ro.hblacktools.1) "Protectii: %msg%"
set black(say.ro.hblacktools.2) "Optional: \002%char%secure <on> / <off>\002 (activare/dezactivare a tuturor protectiilor)"
set black(say.ro.hblacktools.3) "Pentru a vizualiza \002Manualul\002 fiecarui protectii tastati \002%char%man <protectie> | %botnick% man <protectie>\002"

#################################### standard ####################################

set black(say.ro.hstandard.1) "Setarile interne ale eggdrop-ului sunt urmatoarele :"
set black(say.ro.hstandard.2) "Pentru a putea modifica setarile folositi urmatoarea comanda :%char%set +flag ( ex : %char%set +dontkickops | %char%set flood-chan 0:0 )"
set black(say.ro.hstandard.3) "\002Setari\002 \[+ -\]: %msg%"
set black(say.ro.hstandard.4) "\002Setari principale\002: %msg%"
set black(say.ro.hstandard.5) "Sintaxa setare: \002%char%set (+/-)<flag> ; <flag> <val>:<val> | %botnick% set (+/-)<flag> ; <flag> <val>:<val>\002"

################################### module #######################################

set black(say.ro.hmodule.1) "Module: %msg%"
set black(say.ro.hmodule.3) "Pentru a vizualiza \002Manualul\002 fiecarui modul tastati \002%char%man <modul> | %botnick% man <modul>\002"

####################################### h ########################################

set black(say.ro.h.1) "NIVEL ACCESS \002-= BOSS OWNER =-\002"
set black(say.ro.h.2) "\002Poti folosi\002: %char%h cmds | \002%char%h ban\002 | %char%h add | \002%char%h chaninfo\002 | %char%h module | \002%char%h owner\002 ."
set black(say.ro.h.3) "NIVEL ACCESS \002-= OWNER =-\002"
set black(say.ro.h.4) "\002Poti folosi\002: %char%h cmds | \002%char%h ban\002 | %char%h add | \002%char%h chaninfo\002 | %char%h module | \002%char%h owner\002 ."
set black(say.ro.h.5) "NIVEL ACCESS \002-= VOICE =-\002"
set black(say.ro.h.6) "\002Poti folosi\002: %char%h cmds | \002%char%h chaninfo\002 "
set black(say.ro.h.7) "NIVEL ACCESS \002-= OP =-\002"
set black(say.ro.h.8) "\002Poti folosi\002: %char%h cmds | \002%char%h chaninfo\002 | %char%h ban"
set black(say.ro.h.9) "NIVEL ACCESS \002-= SENIOR =-\002"
set black(say.ro.h.10) "\002Poti folosi\002: %char%h cmds | \002%char%h chaninfo\002 | %char%h ban"
set black(say.ro.h.11) "NIVEL ACCESS \002-= ADMINISTRATOR =-\002"
set black(say.ro.h.12) "\002Poti folosi\002: %char%h cmds | \002%char%h chaninfo\002 | %char%h ban | \002%char%h add\002"
set black(say.ro.h.13) "NIVEL ACCESS \002-= MANAGER =-\002"
set black(say.ro.h.14) "\002Poti folosi\002: %char%h cmds | \002%char%h ban\002 | %char%h add | \002%char%h chaninfo\002 | %char%h module ."
set black(say.ro.h.15) "%msg%"
set black(say.ro.h.16) "Te rog asteapta %msg.1% de secunde inainte de a executa o alta comanda de tip %char%\002%msg.2%\002. Multumesc."

############################### GREETING #######################################

set black(say.ro.greeting.1) "RO : Bun venit in lumea \002BlackToolS\002 versiunea \0022.4\002."
set black(say.ro.greeting.2) "RO : Ai la dispozitie urmatoarele setari dupa preferintele tale: \002Language\002 (iti alegi limba de iesire a mesajelor) | \002Output\002 ( alegi metoda de iesire a mesajelor)"
set black(say.ro.greeting.3) "RO : Pentru a seta foloseste pe %chan%: \002%char%myset lang <limba>\002 ( \002RO\002 / \002EN\002 ) | \002%char%myset output <metoda>\002 ( \002CHAN\002 / \002NOTICE\002 )"
set black(say.ro.greeting.4) "RO : Iti urez o utilizare placuta . Pentru a-ti vedea comenzile tasteaza din nou \002%char%h\002 . Have Fun"
set black(say.ro.greeting.5) "RO : Comenzi optionale: \002%char%addhost <user> <host>\002 (iti adaugi un host) | \002%char% chuser <user> <newuser>\002 (iti schimbi numele)"

################################### man ########################################

set black(say.ro.man.1) "Use: %char%man <text>"
set black(say.ro.man.2) "Use: %botnick% man <text>"

#man

set black(say.ro.man.3) "\[MAN\] \002man\002 este o comanda implementata in aceasta versiune care permite vizualizarea manualului de utilizare a protectiilor, modulelor,comenzilor"
set black(say.ro.man.4) "\[MAN\] Sintaxa: \002%char%man <text> | %botnick% man <text>\002"

#h

set black(say.ro.man.5) "\[MAN\] \002h\002 este cea mai importanta comanda din cadrul BlackTools. Aceasta permite navigarea prin categoriile de optiuni ale scriptului"
set black(say.ro.man.6) "\[MAN\] Sintaxa: \002%char%h <categorie> | %botnick% h <categorie>\002"
set black(say.ro.man.7) "\[MAN\] Pentru a vizualiza meniul principal: \002%char%h | %botnick% h\002"

#v

set black(say.ro.man.8) "\[MAN\] \002v\002 reprezinta o comanda prin care puteti da statutul de voice (+) userilor de pe canal."
set black(say.ro.man.9) "\[MAN\] Sintaxa: \002%char%v <nick1> <nick2>.. | %botnick% v <nick1 <nick2>...\002"

#o

set black(say.ro.man.10) "\[MAN\] \002o\002 reprezinta o comanda prin care puteti da statutul de op (@) userilor de pe canal."
set black(say.ro.man.11) "\[MAN\] Sintaxa: \002%char%o <nick1> <nick2>.. | %botnick% o <nick1 <nick2>...\002"

#userlist

set black(say.ro.man.12) "\[MAN\] \002userlist\002 reprezinta o comanda prin care puteti vizualiza lista de accese a eggdrop-ului pe %chan%."
set black(say.ro.man.13) "\[MAN\] Sintaxa: \002%char%userlist <tip> | %botnick% userlist <tip>\002"
set black(say.ro.man.14) "\[MAN\] Ca \002<tip>\002 avem: \002autovoice\002 (useri cu autovoice), \002autoop\002	 (useri cu autoop) \002online\002 (useri cu access online), \002protect\002, \002all\002, \002voice\002 , \002op\002 , \002senior\002 , \002admin\002 , \002manager\002"
set black(say.ro.man.15) "\[MAN\] Ca \002<tip>\002 avem: \002autovoice\002 (useri cu autovoice), \002autoop\002 (useri cu autoop) \002online\002 (useri cu access online), \002protect\002, \002all\002, \002voice\002 , \002op\002 , \002senior\002 , \002admin\002 , \002manager\002 , \002owner\002"

#version

set black(say.ro.man.16) "\[MAN\] \002version\002 reprezinta o comanda prin care puteti vizualiza versiunea scriptului BlackTools."
set black(say.ro.man.17) "\[MAN\] Sintaxa: \002%char%version | %botnick% version\002"

#info

set black(say.ro.man.18) "\[MAN\] \002info\002 reprezinta o comanda prin care putem vizualiza informatii despre useri / canale"
set black(say.ro.man.19) "\[MAN\] Sintaxa \002%char%info <user> / <chan> | %botnick% info <user> / <chan>\002"

#ping 

set black(say.ro.man.20) "\[MAN\] \002ping\002 reprezinta o comanda prin care va puteti afla lag-ul prin intermediul eggdrop-ului."
set black(say.ro.man.21) "\[MAN\] Sintaxa: \002%char%ping | %botnick% ping\002"

#act

set black(say.ro.man.22) "\[MAN\] \002act\002 reprezinta o comanda prin care eggdrop-ul va trimite un mesaj pe canal de tip /me (ACTION)"
set black(say.ro.man.23) "\[MAN\] Sintaxa: \002%char%act <text> | %botnick% act <text>\002"

#t

set black(say.ro.man.24) "\[MAN\] \002t\002 reprezinta o comanda prin care eggdrop-ul va pune ca TOPIC textul dvs."
set black(say.ro.man.25) "\[MAN\] Sintaxa: \002%char%t <text> | %botnick% t <text>\002"
set black(say.ro.man.26) "\[MAN\] Pentru a aparea pe langa topic si nick-ul dvs aplicati urmatoarea setare: \002%char%set +showhandle\002"

#l

set black(say.ro.man.27) "\[MAN\] \002l\002 reprezinta o comanda prin care eggdrop-ul va pune modurile \002+%msg.1%\002 timp de \002<t> secunde\002 pe %chan%"
set black(say.ro.man.28) "\[MAN\] Sintaxa: \002l <secunde> | %botnick% l <secunde>\002"

#ul

set black(say.ro.man.29) "\[MAN\] \002ul\002 reprezinta o comanda prin care eggdrop-ul va scoate modurile (\002+%msg.1%\002) puse de comanda \002l\002"
set black(say.ro.man.30) "\[MAN\] Sintaxa: \002%char%ul | %botnick% ul\002"

#cycle

set black(say.ro.man.31) "\[MAN\] \002cycle\002 reprezinta o comanda prin care eggdrop-ul va face /hop pe %chan% cu un motiv anume"
set black(say.ro.man.32) "\[MAN\] Sintaxa: \002%char%cycle <motiv> | %botnick% cycle <motiv>\002"

#mode

set black(say.ro.man.33) "\[MAN\] \002mode\002 reprezinta o comanda prin care eggdrop-ul va pun un \002mod\002 pe %chan%"
set black(say.ro.man.34) "\[MAN\] Sintaxa: \002%char%mode +<mod> | %botnick% mode +<mode\002"

#i

set black(say.ro.man.35) "\[MAN\] \002i\002 reprezinta o comanda prin care eggdrop-ul va invita un user sau mai multi pe %chan%"
set black(say.ro.man.36) "\[MAN\] Sintaxa: \002%char%i <nick1> <nick2>.. | %botnick% i <nick1> <nick2> ..\002"

#vers

set black(say.ro.man.37) "\[MAN\] \002vers\002 reprezinta o comanda prin care eggdrop-ul va afla versiunea scriptului de mirc unui user dat"
set black(say.ro.man.38) "\[MAN\] Sintaxa: \002%char%vers <nick> | %botnick% vers <nick>\002"

#whois

set black(say.ro.man.39) "\[MAN\] \002whois\002 reprezinta o comanda prin care eggdrop-ul va afisa informatii (host,realname,canale) din whois-ul unui user"
set black(say.ro.man.40) "\[MAN\] Sintaxa: \002%char%whois <nick> | %botnick% whois <nick>"

#cc

set black(say.ro.man.41) "\[MAN\] \002cc\002 reprezinta o comanda prin care eggdrop-ul va afisa data in care a fost creeat un canal dat."
set black(say.ro.man.42) "\[MAN\] Sintaxa: \002%char%cc <#canal> | %botnick% cc <#canal>\002"

#time

set black(say.ro.man.43) "\[MAN\] \002time\002 reprezinta o comanda prin care puteti afla timpul curent"
set black(say.ro.man.44) "\[MAN\] Sintaxa: \002%char%time | %botnick% time\002"

#clear

set black(say.ro.man.45) "\[MAN\] \002clear\002 reprezinta o comanda prin care puteti reseta anumite \002<optiuni>\002"
set black(say.ro.man.46) "\[MAN\] Sintaxa: \002%char%clear <optiune> | %botnick% clear <optiune>\002"
set black(say.ro.man.47) "\[MAN\] Ca \002<optiune>\002 avem: \002<userlist>\002 (se sterg accesele), \002<banlist>\002 (se reseteaza banurile), \002<activ>\002 (se reseteaza activitatea  userilor)"

#PRIVAT op

set black(say.ro.man.48) "\[MAN\] \002op\002 reprezinta o comanda data pe PRIVAT pentru a lua op pe un anumit canal."
set black(say.ro.man.49) "\[MAN\] Sintaxa: \002op <#chan> <nick>\002"

#PRIVAT voice

set black(say.ro.man.50) "\[MAN\] \002voice\002 reprezinta o comanda data pe PRIVAT pentru a lua voice pe un anumit canal."
set black(say.ro.man.51) "\[MAN\] Sintaxa: \002voice <#chan> <nick>\002"

#PRIVAT deop

set black(say.ro.man.52) "\[MAN\] \002deop\002 reprezinta o comanda data pe PRIVAT pentru a primii deop pe un anumit canal."
set black(say.ro.man.53) "\[MAN\] Sintaxa: \002deop <#chan> <nick>\002"

#PRIVAT devoice

set black(say.ro.man.54) "\[MAN\] \002devoice\002 reprezinta o comanda data pe PRIVAT pentru a primii devoice pe un anumit canal."
set black(say.ro.man.55) "\[MAN\] Sintaxa: \002devoice <#chan> <nick>\002"

#k

set black(say.ro.man.56) "\[MAN\] \002k\002 reprezinta o comanda care care va da kick unui user sau mai multi cu un motiv dat"
set black(say.ro.man.57) "\[MAN\] Sintaxa: \002%char%k <nick1>,<nick2>.. | %botnick% k <nick1>,<nick2>..\002"
set black(say.ro.man.58) "\[MAN\] Setari optionale: \002k-reason\002 (setare motiv default)"
set black(say.ro.man.59) "\[MAN\] Pentru setare optiuni foloseste: \002%char%set <setare> <text> | %botnick% set <setare> <text>\002"
set black(say.ro.man.60) "\[MAN\] Pentru vizualizare setari optiuni: \002%char%show <setare> | %botnick% show <setare>"

#w

set black(say.ro.man.61) "\[MAN\] \002w\002 reprezinta o comanda prin care un user sau mai multi primesc o avertizare printr-un kick cu motiv predefinit"
set black(say.ro.man.62) "\[MAN\] Sintaxa: \002%char%w <nick1>,<nick2>..| %botnick% w <nick1>,<nick2>..\002"
set black(say.ro.man.63) "\[MAN\] Setari optionale: \002w-reason\002 (setare motiv predefinit)"
set black(say.ro.man.64) "\[MAN\] Pentru setare optiuni foloseste: \002%char%set <setare> <text> | %botnick% set <setare> <text>\002"
set black(say.ro.man.65) "\[MAN\] Pentru vizualizare setari optiuni: \002%char%show <setare> | %botnick% show <setare>\002"

#check

set black(say.ro.man.66) "\[MAN\] \002check\002 reprezinta o comanda prin care un user este verificat printr-un mesaj pe privat daca este virusat sau face reclama"
set black(say.ro.man.67) "\[MAN\] Sintaxa: \002%char%check <nick> | %botnick% check <nick>\002"
set black(say.ro.man.68) "\[MAN\] Setari optionale: \002check-message\002 (setare mesaj comanda)"
set black(say.ro.man.69) "\[MAN\] Pentru setare optiuni foloseste: \002%char%set <setare> <text> | %botnick% set <setare> <text>\002"
set black(say.ro.man.70) "\[MAN\] Pentru vizualizare setari optiuni: \002%char%show <setare> | %botnick% show <setare>\002"

#sb

set black(say.ro.man.71) "\[MAN\] \002sb\002 reprezinta o comanda prin care se pot vizualiza detalii despre un anumit ban dat."
set black(say.ro.man.72) "\[MAN\] Sintaxa: \002%char%sb <host>/<nick> | %botnick% sb <host>/<nick>"
set black(say.ro.man.73) "\[MAN\] Sintaxa: \002%char%sb <host>/<nick> \[global\] | %botnick% sb <host>/<nick> \[global\]"
set black(say.ro.man.74) "\[MAN\] In caz ca se specifica \002<nick>\002 si acesta nu este pe %chan% eggdrop-ul va da \002WHOIS\002 si va verifica daca are ban  pe \002ident/host/nick\002 si afisa detalii despre el."

#id

set black(say.ro.man.75) "\[MAN\] \002id\002 reprezinta o comanda prin care se poate da ban pe unu sau mai multe \002IDENT-uri\002 date. Daca se specifica un user eggdrop-ul ii va luat ident-ul automat."
set black(say.ro.man.76) "\[MAN\] Sintaxa: \002%char%id <nick1>,<nick2>../<ident>,<ident2>.. | %botnick% id <nick>,<nick2>../<ident>,<ident2>..\002"
set black(say.ro.man.77) "\[MAN\] Setari optionale: \002id-reason\002 (setare motiv predefinit), \002id-bantime\002 (setare timp ban in minute)"
set black(say.ro.man.78) "\[MAN\] Pentru setare optiuni foloseste: \002%char%set <setare> <text>/<numar> | %botnick% set <setare> <text>/<numar>\002"
set black(say.ro.man.79) "\[MAN\] Pentru vizualizare setari optiuni: \002%char%show <setare> | %botnick% show <setare>\002"

#n

set black(say.ro.man.80) "\[MAN\] \002n\002 reprezinta o comanda prin care se poate da ban pe unu sau mai multe \002NICK-uri\002 date."
set black(say.ro.man.81) "\[MAN\] Sintaxa: \002%char%n <nick1>,<nick2> .. | <botnick> <nick1>,<nick2>.."
set black(say.ro.man.82) "\[MAN\] Setari optionale: \002n-reason\002 (setare motiv predefinit), \002n-bantime\002 (setare timp ban in minute)"
set black(say.ro.man.83) "\[MAN\] Pentru setare optiuni foloseste: \002%char%set <setare> <text>/<numar> | %botnick% set <setare> <text>/<numar>\002"
set black(say.ro.man.84) "\[MAN\] Pentru vizualizare setari optiuni: \002%char%show <setare> | %botnick% show <setare>\002"

#spam

set black(say.ro.man.85) "\[MAN\] \002spam\002 reprezinta o comanda prin care se poate da ban un user sau la mai multi cu motiv predefinit de \002spam\002."
set black(say.ro.man.86) "\[MAN\] Sintaxa: \002%char%spam <nick1>,<nick2>/<host1>,<host2> | %botnick% spam <nick1>,<nick2>/<host1>,<host2>"
set black(say.ro.man.88) "\[MAN\] Setari optionale: \002spam-reason\002 (setare motiv predefinit), \002spam-bantime\002 (setare timp ban in minute)"
set black(say.ro.man.89) "\[MAN\] Pentru setare optiuni foloseste: \002%char%set <setare> <text>/<numar> | %botnick% set <setare> <text>/<numar>\002"
set black(say.ro.man.90) "\[MAN\] Pentru vizualizare setari optiuni: \002%char%show <setare> | %botnick% show <setare>\002"

#dr

set black(say.ro.man.91) "\[MAN\] \002dr\002 reprezinta o comanda prin care se poate da ban un user sau la mai multi cu motiv predefinit de \002drona\002."
set black(say.ro.man.92) "\[MAN\] Sintaxa: \002%char%dr <nick1>,<nick2>/<host1>,<host2> | %botnick% dr <nick1>,<nick2>/<host1>,<host2>"
set black(say.ro.man.94) "\[MAN\] Setari optionale: \002dr-reason\002 (setare motiv predefinit), \002dr-bantime\002 (setare timp ban in minute)"
set black(say.ro.man.95) "\[MAN\] Pentru setare optiuni foloseste: \002%char%set <setare> <text>/<numar> | %botnick% set <setare> <text>/<numar>\002"
set black(say.ro.man.96) "\[MAN\] Pentru vizualizare setari optiuni: \002%char%show <setare> | %botnick% show <setare>\002"

#b

set black(say.ro.man.97) "\[MAN\] \002b\002 reprezinta o comanda prin care se poate da ban un user sau la mai multi cu un motiv dat precum si ban-time dat."
set black(say.ro.man.98) "\[MAN\] Sintaxa: \002%char%b <nick1>,<nick2>/<host1>,<host2> <timp> <motiv> | %botnick% b <nick1>,<nick2>/<host1>,<host2> <timp> <motiv>\002"
set black(say.ro.man.99) "\[MAN\] Sintaxa: \002%char%b <nick1>,<nick2>/<host1>,<host2> <timp> \[global\] <motiv> | %botnick% b <nick1>,<nick2>/<host1>,<host2> <timp> \[global\] <motiv>\002"
set black(say.ro.man.101) "\[MAN\] Setari optionale: \002b-reason\002 (setare motiv predefinit), \002b-bantime\002 (setare timp ban in minute)"
set black(say.ro.man.102) "\[MAN\] Pentru setare optiuni foloseste: \002%char%set <setare> <text>/<numar> | %botnick% set <setare> <text>/<numar>\002"
set black(say.ro.man.103) "\[MAN\] Pentru vizualizare setari optiuni: \002%char%show <setare> | %botnick% show <setare>\002"

#ub

set black(say.ro.man.104) "\[MAN\] \002ub\002 reprezinta o comanda prin care se poate scoate un ban"
set black(say.ro.man.105) "\[MAN\] Sintaxa: \002%char%ub <nick>/<host> | %botnick% ub <nick>/<host>"
set black(say.ro.man.106) "\[MAN\] Sintaxa: \002%char%ub <nick>/<host> \[global\] | %botnick% ub <nick>/<host> \[global\]"
set black(say.ro.man.107) "\[MAN\] In caz ca se specifica \002<nick>\002 si acesta nu este pe %chan% eggdrop-ul va da \002WHOIS\002 si va verifica daca are ban pe \002ident/host/nick\002 si va da unban."

#d

set black(say.ro.man.108) "\[MAN\] \002d\002 reprezinta o comanda prin care se poate da ban unui user sau la mai multi pe un interval de timp exprimat in zile."
set black(say.ro.man.109) "\[MAN\] Sintaxa: \002%char%d <nr zile> <nick> / <host> <reason> | %botnick%d <nr zile> <nick> / <host> <reason>"
set black(say.ro.man.111) "\[MAN\] Setari optionale: \002d-reason\002 (setare motiv predefinit), \002d-bantime\002 (setare timp ban in zile)"
set black(say.ro.man.112) "\[MAN\] Pentru setare optiuni foloseste: \002%char%set <setare> <text>/<numar> | %botnick% set <setare> <text>/<numar>\002"
set black(say.ro.man.113) "\[MAN\] Pentru vizualizare setari optiuni: \002%char%show <setare> | %botnick% show <setare>\002"

#bot


set black(say.ro.man.114) "\[MAN\] \002bot\002 reprezinta o comanda prin care se poate da ban un user sau la mai multi cu motiv predefinit de \002bot(mech)\002."
set black(say.ro.man.115) "\[MAN\] Sintaxa: \002%char%bot <nick1>,<nick2>/<host1>,<host2> | %botnick% bot <nick1>,<nick2>/<host1>,<host2>"
set black(say.ro.man.117) "\[MAN\] Setari optionale: \002bot-reason\002 (setare motiv predefinit), \002bot-bantime\002 (setare timp ban in minute)"
set black(say.ro.man.118) "\[MAN\] Pentru setare optiuni foloseste: \002%char%set <setare> <text>/<numar> | %botnick% set <setare> <text>/<numar>\002"
set black(say.ro.man.119) "\[MAN\] Pentru vizualizare setari optiuni: \002%char%show <setare> | %botnick% show <setare>\002"

#bw

set black(say.ro.man.120) "\[MAN\] \002bw\002 reprezinta o comanda prin care se poate da ban un user sau la mai multi cu motiv predefinit de \002CUVANT INTERZIS SPUS\002."
set black(say.ro.man.121) "\[MAN\] Sintaxa: \002%char%bw <nick1>,<nick2>/<host1>,<host2> | %botnick% bw <nick1>,<nick2>/<host1>,<host2>"
set black(say.ro.man.123) "\[MAN\] Setari optionale: \002bw-reason\002 (setare motiv predefinit), \002bw-bantime\002 (setare timp ban in minute)"
set black(say.ro.man.124) "\[MAN\] Pentru setare optiuni foloseste: \002%char%set <setare> <text>/<numar> | %botnick% set <setare> <text>/<numar>\002"
set black(say.ro.man.125) "\[MAN\] Pentru vizualizare setari optiuni: \002%char%show <setare> | %botnick% show <setare>\002"

#black

set black(say.ro.man.126) "\[MAN\] \002black\002 reprezinta o comanda prin care se poate da ban un user sau la mai multi cu motiv dat pe o perioada \002NELIMITATA\002"
set black(say.ro.man.127) "\[MAN\] Sintaxa: \002%char%black <nick1>,<nick2>/<host1>,<host2> <reason> | %botnick% black <nick1>,<nick2>/<host1>,<host2> <reason>"
set black(say.ro.man.129) "\[MAN\] Setari optionale: \002black-reason\002 (setare motiv predefinit)"
set black(say.ro.man.130) "\[MAN\] Pentru setare optiuni foloseste: \002%char%set <setare> <text> | %botnick% set <setare> <text>\002"
set black(say.ro.man.131) "\[MAN\] Pentru vizualizare setari optiuni: \002%char%show <setare> | %botnick% show <setare>\002"

#stick 

set black(say.ro.man.132) "\[MAN\] \002stick\002 reprezinta o comanda prin care se poate da ban un user sau la mai multi cu motiv dat si perioada data si un caracter de tip \"sticky\" (va fii mentinut in lista de ban a canalului)"
set black(say.ro.man.133) "\[MAN\] Sintaxa: \002%char%stick <nick> / <host> <timp> <motiv> | %botnick% stick <nick> / <host> <timp> <motiv>\002"
set black(say.ro.man.134) "\[MAN\] Setari optionale: \002stick-reason\002 (setare motiv predefinit), \002stick-bantime\002 (setare timp ban in minute)"
set black(say.ro.man.135) "\[MAN\] Pentru setare optiuni foloseste: \002%char%set <setare> <text>/<numar> | %botnick% set <setare> <text>/<numar>\002"
set black(say.ro.man.136) "\[MAN\] Pentru vizualizare setari optiuni: \002%char%show <setare> | %botnick% show <setare>\002"

#gag

set black(say.ro.man.137) "\[MAN\] \002gag\002 reprezinta o comanda prin care se poate reduce la tacere un user (acesta numai poate vorbii pe %chan%) timp de o perioada."
set black(say.ro.man.138) "\[MAN\] Sintaxa: \002%char%gag <nick> <timp> <motiv> | %botnick% gag <nick> <timp> <motiv>\002. Pentru vizualizare lista gag: \002%char%gag -list | %botnick% gag -list\002"
set black(say.ro.man.139) "\[MAN\] Setari optionale: \002gag-reason\002 (setare motiv predefinit), \002gag-time\002 (setare timp predefinit)"
set black(say.ro.man.140) "\[MAN\] Pentru setare optiuni foloseste: \002%char%set <setare> <text> | %botnick% set <setare> <text>\002"
set black(say.ro.man.141) "\[MAN\] Pentru vizualizare setari optiuni: \002%char%show <setare> | %botnick% show <setare>\002"


#add

set black(say.ro.man.142) "\[MAN\] \002add\002 reprezinta o comanda prin care se adauga access la un \002user\002 sau la mai multi. Ca user se foloseste user-ul de la \002%msg.1%\002, iar hostul adaugat automat pentru acest user va fi : \002%msg.2%\002"
set black(say.ro.man.143) "\[MAN\] Sintaxa: \002%char%add <nivel> <user1> <user2>.. | %botnick% add <nivel> <user1> <user2>..\002"
set black(say.ro.man.144) "\[MAN\] Ca <nivel> avem: \002protect\002, \002voice\002, \002op\002, \002senior\002, \002admin\002, \002manager\002, \002owner\002."
set black(say.ro.man.145) "\[MAN\] Ca <nivel> avem: \002protect\002, \002voice\002, \002op\002, \002senior\002, \002admin\002, \002manager\002."
set black(say.ro.man.146) "\[MAN\] Ca <nivel> avem: \002protect\002, \002voice\002, \002op\002, \002senior\002, \002admin\002."
set black(say.ro.man.147) "\[MAN\] Ca <nivel> avem: \002protect\002, \002voice\002, \002op\002, \002senior\002."


set black(say.ro.man.148) "\[MAN\] \002adduser\002 reprezinta o comanda prin care se adauga access la un \002user\002 sau la mai multi. Ca user se foloseste \002NICK-ul\002, iar hostul adaugat automat pentru acest user va fi cel curent adica cel luat de pe IRC."
set black(say.ro.man.149) "\[MAN\] Sintaxa: \002%char%adduser <nivel> <nick1> <nick2>.. | %botnick% adduser <nivel> <nick1> <nick2>..\002"
set black(say.ro.man.150) "\[MAN\] Ca <nivel> avem: \002protect\002, \002voice\002, \002op\002, \002senior\002, \002admin\002, \002manager\002, \002owner\002."
set black(say.ro.man.151) "\[MAN\] Ca <nivel> avem: \002protect\002, \002voice\002, \002op\002, \002senior\002, \002admin\002, \002manager\002."
set black(say.ro.man.152) "\[MAN\] Ca <nivel> avem: \002protect\002, \002voice\002, \002op\002, \002senior\002, \002admin\002."
set black(say.ro.man.153) "\[MAN\] Ca <nivel> avem: \002protect\002, \002voice\002, \002op\002, \002senior\002."

#delacc

set black(say.ro.man.154) "\[MAN\] \002delacc\002 reprezinta o comanda prin care se sterge accesul unui user sau la mai multi de pe %chan%."
set black(say.ro.man.155) "\[MAN\] Sintaxa 1: \002%char%delacc <user1> <user2>.. | %botnick% delacc <user1> <user2>..\002"
set black(say.ro.man.156) "\[MAN\] Sintaxa 2: \002%char%delacc owner <user1> <user2> | %botnick% delacc owner <user1> <user2> (stergere access global owner)"

#del

set black(say.ro.man.157) "\[MAN\] \002del\002 reprezinta o comanda prin care se sterge un user sau mai multi din memoria eggdrop-ului."
set black(say.ro.man.158) "\[MAN\] Sintaxa: \002%char%del <user1> <user2>.. | %botnick% del <user1> <user2>..\002"

#ungag

set black(say.ro.man.159) "\[MAN\] \002ungag\002 reprezinta o comanda prin care se sterge un \002gag\002 dat"
set black(say.ro.man.160) "\[MAN\] Sintaxa: \002%char%ungag <nick>/<host> | %botnick% ungag <nick>/<host>\002"

#banlist

set black(say.ro.man.161) "\[MAN\] \002banlist\002 reprezinta o comanda prin care se vizualizeaza banurile de pe %chan%"
set black(say.ro.man.162) "\[MAN\] Sintaxa: \002%char%banlist <user>/<-all> | %botnick% banlist <user>/<-all>\002"
set black(say.ro.man.163) "\[MAN\] Sintaxa: \002%char%banlist <user>/<-all>/<global> | %botnick% banlist <user>/<-all>/<global>\002"

#addhost

set black(say.ro.man.164) "\[MAN\] \002addhost\002 reprezinta o comanda prin care se adauga un host unui <user> dat"
set black(say.ro.man.165) "\[MAN\] Sintaxa: \002%char%addhost <user> <host> | %botnick% addhost <user> <host>\002"

#delhost

set black(say.ro.man.166) "\[MAN\] \002delhost\002 reprezinta o comanda prin care se sterge un host unui <user> dat"
set black(say.ro.man.167) "\[MAN\] Sintaxa: \002%char%delhost <user> <host> | %botnick% delhost <user> <host>\002"

#chuser

set black(say.ro.man.168) "\[MAN\] \002chuser\002 reprezinta o comanda prin care schimbi <handle> (numele) unui <user> in <newuser>"
set black(say.ro.man.169) "\[MAN\] Sintaxa: \002%char%chuser <user> <newuser> | %botnick% chuser <user> <newuser>\002"

#s

set black(say.ro.man.170) "\[MAN\] \002s\002 reprezinta o comanda prin care se suspenda access-ul unui <user> pe %chan%"
set black(say.ro.man.171) "\[MAN\] Sintaxa: \002%char%s <user> | %botnick% s <user>\002"

#us

set black(say.ro.man.172) "\[MAN\] \002us\002 reprezinta o comanda prin care se scoate suspendul pe access unui <user> pe %chan%"
set black(say.ro.man.173) "\[MAN\] Sintaxa: \002%char%us <user> | %botnick% us <user>\002"

#auto

set black(say.ro.man.174) "\[MAN\] \002auto\002 reprezinta o comanda prin care se acorda autoop/autovoice unui <user>"
set black(say.ro.man.175) "\[MAN\] Sintaxa 1: \002%char%auto (+/-)v <user> | %botnick% auto (+/-)v <user>\002 (adaugare autovoice)"
set black(say.ro.man.176) "\[MAN\] Sintaxa 2: \002%char%auto (+/-)o <user> | %botnick% auto (+/-)o <user>\002 (adaugare autoop)"
set black(say.ro.man.177) "\[MAN\] Sintaxa 1: \002%char%auto (+/-)v <user> \[-global\] | %botnick% auto (+/-)v <user> \[-global\]\002 (adaugare autovoice)"
set black(say.ro.man.178) "\[MAN\] Sintaxa 2: \002%char%auto (+/-)o <user> \[-global\] | %botnick% auto (+/-)o <user> \[-global\]\002 (adaugare autoop)"

########################################## man protectii #########################################

#antipub

set black(say.ro.man.179) "\[MAN\] \002antipub\002 reprezinta o protectie ce protejeaza impotriva userilor ce fac reclama de tipul \"#\" sau \"www.*\""
set black(say.ro.man.180) "\[MAN\] Sintaxa activare/dezactivare: \002%char%set (+/-)antipub | %botnick% set (+/-)antipub\002"
set black(say.ro.man.181) "\[MAN\] Setari optionale: \002antipub-reason\002 (setare motiv predefinit), \002antipub-bantime\002 (setare timp ban in minute)"
set black(say.ro.man.182) "\[MAN\] Pentru setare optiuni foloseste: \002%char%set <setare> <text>/<numar> | %botnick% set <setare> <text>/<numar>\002"
set black(say.ro.man.183) "\[MAN\] Pentru vizualizare setari optiuni: \002%char%show <setare> | %botnick% show <setare>\002"

#antinotice

set black(say.ro.man.184) "\[MAN\] \002antinotice\002 reprezinta o protectie ce protejeaza impotriva userilor ce executa o actiune tip \"NOTICE\" pe %chan%"
set black(say.ro.man.185) "\[MAN\] Sintaxa activare/dezactivare: \002%char%set (+/-)antinotice | %botnick% set (+/-)antinotice\002"
set black(say.ro.man.186) "\[MAN\] Setari optionale: \002antinotice-reason\002 (setare motiv predefinit), \002antinotice-bantime\002 (setare timp ban in minute)"
set black(say.ro.man.187) "\[MAN\] Pentru setare optiuni foloseste: \002%char%set <setare> <text>/<numar> | %botnick% set <setare> <text>/<numar>\002"
set black(say.ro.man.188) "\[MAN\] Pentru vizualizare setari optiuni: \002%char%show <setare> | %botnick% show <setare>\002"

#antictcp

set black(say.ro.man.189) "\[MAN\] \002antictcp\002 reprezinta o protectie ce protejeaza impotriva userilor ce executa o actiune tip \"CTCP\" pe %chan%"
set black(say.ro.man.190) "\[MAN\] Sintaxa activare/dezactivare: \002%char%set (+/-)antictcp | %botnick% set (+/-)antictcp\002"
set black(say.ro.man.191) "\[MAN\] Setari optionale: \002antictcp-reason\002 (setare motiv predefinit), \002antictcp-bantime\002 (setare timp ban in minute)"
set black(say.ro.man.192) "\[MAN\] Pentru setare optiuni foloseste: \002%char%set <setare> <text>/<numar> | %botnick% set <setare> <text>/<numar>\002"
set black(say.ro.man.193) "\[MAN\] Pentru vizualizare setari optiuni: \002%char%show <setare> | %botnick% show <setare>\002"

#antibadword

set black(say.ro.man.194) "\[MAN\] \002antibadword\002 reprezinta o protectie ce protejeaza impotriva userilor ce folosesc cuvinte *interzise* pe %chan%"
set black(say.ro.man.195) "\[MAN\] Sintaxa activare/dezactivare: \002%char%set (+/-)antibadword | %botnick% set (+/-)antibadword\002"
set black(say.ro.man.196) "\[MAN\] Setari optionale: \002antibadword-reason\002 (setare motiv predefinit), \002antibadword-bantime\002 (setare timp ban in minute)"
set black(say.ro.man.197) "\[MAN\] Pentru setare optiuni foloseste: \002%char%set <setare> <text>/<numar> | %botnick% set <setare> <text>/<numar>\002"
set black(say.ro.man.198) "\[MAN\] Pentru vizualizare setari optiuni: \002%char%show <setare> | %botnick% show <setare>\002"

#antilongtext

set black(say.ro.man.199) "\[MAN\] \002antilongtext\002 reprezinta o protectie ce protejeaza impotriva userilor ce scriu fraze mult prea mari pe %chan%"
set black(say.ro.man.200) "\[MAN\] Sintaxa activare/dezactivare: \002%char%set (+/-)antilongtext | %botnick% set (+/-)antilongtext\002"
set black(say.ro.man.201) "\[MAN\] Setari optionale: \002antilongtext-reason\002 (setare motiv predefinit), \002antilongtext-bantime\002 (setare timp ban in minute), \002antilongtextmax\002 (setare nr. maxim caractere)"
set black(say.ro.man.202) "\[MAN\] Pentru setare optiuni foloseste: \002%char%set <setare> <text>/<numar> | %botnick% set <setare> <text>/<numar>\002"
set black(say.ro.man.203) "\[MAN\] Pentru vizualizare setari optiuni: \002%char%show <setare> | %botnick% show <setare>\002"

#badquitpart

set black(say.ro.man.204) "\[MAN\] \002badquitpart\002 reprezinta o protectie ce protejeaza impotriva userilor ce parasesc %chan% utilizand in motiv cuvinte *interzise*"
set black(say.ro.man.205) "\[MAN\] Sintaxa activare/dezactivare: \002%char%set (+/-)badquitpart | %botnick% set (+/-)badquitpart\002"
set black(say.ro.man.206) "\[MAN\] Setari optionale: \002antibadquitpart-reason\002 (setare motiv predefinit), \002antibadquitpart-bantime\002 (setare timp ban in minute)"
set black(say.ro.man.207) "\[MAN\] Pentru setare optiuni foloseste: \002%char%set <setare> <text>/<numar> | %botnick% set <setare> <text>/<numar>\002"
set black(say.ro.man.208) "\[MAN\] Pentru vizualizare setari optiuni: \002%char%show <setare> | %botnick% show <setare>\002"

#antijoinpart

set black(say.ro.man.209) "\[MAN\] \002antijoinpart\002 reprezinta o protectie ce protejeaza impotriva userilor ce intra pe %chan% si dau part mult prea rapid."
set black(say.ro.man.210) "\[MAN\] Sintaxa activare/dezactivare: \002%char%set (+/-)antijoinpart | %botnick% set (+/-)antijoinpart\002"
set black(say.ro.man.211) "\[MAN\] Setari optionale: \002antijoinpart-reason\002 (setare motiv predefinit), \002antijoinpart-bantime\002 (setare timp ban in minute)"
set black(say.ro.man.212) "\[MAN\] Pentru setare optiuni foloseste: \002%char%set <setare> <text>/<numar> | %botnick% set <setare> <text>/<numar>\002"
set black(say.ro.man.213) "\[MAN\] Pentru vizualizare setari optiuni: \002%char%show <setare> | %botnick% show <setare>\002"

#antispam

set black(say.ro.man.214) "\[MAN\] \002antispam\002 reprezinta o protectie ce protejeaza impotriva userilor ce fac spam prin mesaje catre eggdrop continand \"#\" sau \"*www.*\"."
set black(say.ro.man.215) "\[MAN\] Sintaxa activare/dezactivare: \002%char%set (+/-)antispam | %botnick% set (+/-)antispam\002"
set black(say.ro.man.216) "\[MAN\] Setari optionale: \002antispam-reason\002 (setare motiv predefinit), \002antispam-bantime\002 (setare timp ban in minute), \002antispam-message\002 (setare mesaj intrare canal)"
set black(say.ro.man.217) "\[MAN\] Pentru setare optiuni foloseste: \002%char%set <setare> <text>/<numar> | %botnick% set <setare> <text>/<numar>\002"
set black(say.ro.man.218) "\[MAN\] Pentru vizualizare setari optiuni: \002%char%show <setare> | %botnick% show <setare>\002"

#antirepeat

set black(say.ro.man.219) "\[MAN\] \002antirepeat\002 reprezinta o protectie ce protejeaza impotriva userilor ce se repeta prea mult pe %chan%."
set black(say.ro.man.220) "\[MAN\] Sintaxa activare/dezactivare: \002%char%set (+/-)antirepeat | %botnick% set (+/-)antirepeat\002"
set black(say.ro.man.221) "\[MAN\] Setari optionale: \002antirepeat-reason\002 (setare motiv predefinit), \002antirepeat-bantime\002 (setare timp ban in minute), \002antirepeat-setting\002 (<repetari>:<secunde>)"
set black(say.ro.man.222) "\[MAN\] Pentru setare optiuni foloseste: \002%char%set <setare> <text>/<numar> | %botnick% set <setare> <text>/<numar>\002"
set black(say.ro.man.223) "\[MAN\] Pentru vizualizare setari optiuni: \002%char%show <setare> | %botnick% show <setare>\002"

#anticolor

set black(say.ro.man.224) "\[MAN\] \002anticolor\002 reprezinta o protectie ce protejeaza impotriva userilor ce folosesc \002CULORI\002 pe %chan%"
set black(say.ro.man.225) "\[MAN\] Sintaxa activare/dezactivare: \002%char%set (+/-)anticolor | %botnick% set (+/-)anticolor\002"
set black(say.ro.man.226) "\[MAN\] Setari optionale: \002anticolor-reason\002 (setare motiv predefinit), \002anticolor-bantime\002 (setare timp ban in minute)"
set black(say.ro.man.227) "\[MAN\] Pentru setare optiuni foloseste: \002%char%set <setare> <text>/<numar> | %botnick% set <setare> <text>/<numar>\002"
set black(say.ro.man.228) "\[MAN\] Pentru vizualizare setari optiuni: \002%char%show <setare> | %botnick% show <setare>\002"

#antibold

set black(say.ro.man.229) "\[MAN\] \002antibold\002 reprezinta o protectie ce protejeaza impotriva userilor ce folosesc \002BOLD\002 pe %chan%"
set black(say.ro.man.230) "\[MAN\] Sintaxa activare/dezactivare: \002%char%set (+/-)antibold | %botnick% set (+/-)antibold\002"
set black(say.ro.man.231) "\[MAN\] Setari optionale: \002antibold-reason\002 (setare motiv predefinit), \002antibold-bantime\002 (setare timp ban in minute)"
set black(say.ro.man.232) "\[MAN\] Pentru setare optiuni foloseste: \002%char%set <setare> <text>/<numar> | %botnick% set <setare> <text>/<numar>\002"
set black(say.ro.man.233) "\[MAN\] Pentru vizualizare setari optiuni: \002%char%show <setare> | %botnick% show <setare>\002"

#antiunderline

set black(say.ro.man.234) "\[MAN\] \002antiunderline\002 reprezinta o protectie ce protejeaza impotriva userilor ce folosesc \002UNDERLINE\002 pe %chan%"
set black(say.ro.man.235) "\[MAN\] Sintaxa activare/dezactivare: \002%char%set (+/-)antiunderline | %botnick% set (+/-)antiunderline\002"
set black(say.ro.man.236) "\[MAN\] Setari optionale: \002antiunderline-reason\002 (setare motiv predefinit), \002antiunderline-bantime\002 (setare timp ban in minute)"
set black(say.ro.man.237) "\[MAN\] Pentru setare optiuni foloseste: \002%char%set <setare> <text>/<numar> | %botnick% set <setare> <text>/<numar>\002"
set black(say.ro.man.238) "\[MAN\] Pentru vizualizare setari optiuni: \002%char%show <setare> | %botnick% show <setare>\002"

#anticaps

set black(say.ro.man.239) "\[MAN\] \002anticaps\002 reprezinta o protectie ce protejeaza impotriva userilor ce folosesc \002CAPS LOCK\002 pe %chan%"
set black(say.ro.man.240) "\[MAN\] Sintaxa activare/dezactivare: \002%char%set (+/-)anticaps | %botnick% set (+/-)anticaps\002"
set black(say.ro.man.241) "\[MAN\] Setari optionale: \002anticaps-reason\002 (setare motiv predefinit), \002anticaps-bantime\002 (setare timp ban in minute)"
set black(say.ro.man.242) "\[MAN\] Pentru setare optiuni foloseste: \002%char%set <setare> <text>/<numar> | %botnick% set <setare> <text>/<numar>\002"
set black(say.ro.man.243) "\[MAN\] Pentru vizualizare setari optiuni: \002%char%show <setare> | %botnick% show <setare>\002"

#badnick

set black(say.ro.man.244) "\[MAN\] \002badnick\002 reprezinta o protectie ce protejeaza impotriva userilor ce folosesc NICK-uri ce au in componenta caractere interzise"
set black(say.ro.man.245) "\[MAN\] Sintaxa activare/dezactivare: \002%char%set (+/-)badnick | %botnick% set (+/-)badnick\002"
set black(say.ro.man.246) "\[MAN\] Setari optionale: \002badnick-reason\002 (setare motiv predefinit), \002badnick-bantime\002 (setare timp ban in minute)"
set black(say.ro.man.247) "\[MAN\] Pentru setare optiuni foloseste: \002%char%set <setare> <text>/<numar> | %botnick% set <setare> <text>/<numar>\002"
set black(say.ro.man.248) "\[MAN\] Pentru vizualizare setari optiuni: \002%char%show <setare> | %botnick% show <setare>\002"

#badfullname

set black(say.ro.man.249) "\[MAN\] \002badfullname\002 reprezinta o protectie ce protejeaza impotriva userilor ce folosesc fullname-uri ce au in componenta caractere interzise"
set black(say.ro.man.250) "\[MAN\] Sintaxa activare/dezactivare: \002%char%set (+/-)badfullname | %botnick% set (+/-)badfullname\002"
set black(say.ro.man.251) "\[MAN\] Setari optionale: \002badfullname-reason\002 (setare motiv predefinit), \002badfullname-bantime\002 (setare timp ban in minute)"
set black(say.ro.man.252) "\[MAN\] Pentru setare optiuni foloseste: \002%char%set <setare> <text>/<numar> | %botnick% set <setare> <text>/<numar>\002"
set black(say.ro.man.253) "\[MAN\] Pentru vizualizare setari optiuni: \002%char%show <setare> | %botnick% show <setare>\002"

#autoop

set black(say.ro.man.254) "\[MAN\] \002autoop\002 reprezinta o optiune care odata activata va da \002OP\002 fiecarui user ce da join pe %chan%"
set black(say.ro.man.255) "\[MAN\] Sintaxa activare/dezactivare: \002%char%set (+/-)autoop | %botnick% set (+/-)autoop\002"

#autovoice

set black(say.ro.man.256) "\[MAN\] \002autovoice\002 reprezinta o optiune care odata activata va da \002VOICE\002 fiecarui user ce da join pe %chan%"
set black(say.ro.man.257) "\[MAN\] Sintaxa activare/dezactivare: \002%char%set (+/-)autovoice | %botnick% set (+/-)autovoice"

#antijoinflood

set black(say.ro.man.258) "\[MAN\] \002antijoinflood\002 reprezinta o protectie ce protejeaza impotriva actiunii de \002massjoin\002 prin blocarea canalului cu moduri."
set black(say.ro.man.259) "\[MAN\] Sintaxa activare/dezactivare: \002%char%set (+/-)antijoinflood | %botnick% set (+/-)antijoinflood"
set black(say.ro.man.260) "\[MAN\] Setari optionale: \002joinflood\002 (<numar intrari>:<nr secunde>)"
set black(say.ro.man.261) "\[MAN\] Pentru setare optiuni foloseste: \002%char%set <setare> <text>/<numar> | %botnick% set <setare> <text>/<numar>\002"
set black(say.ro.man.262) "\[MAN\] Pentru vizualizare setari optiuni: \002%char%show <setare> | %botnick% show <setare>\002"

#antichanflood

set black(say.ro.man.263) "\[MAN\] \002antichanflood\002 reprezinta o protectie ce protejeaza impotriva userilor care fac text flood pe %chan%."
set black(say.ro.man.264) "\[MAN\] Sintaxa activare/dezactivare: \002%char%set (+/-)antichanflood | %botnick% set (+/-)antichanflood\002"
set black(say.ro.man.265) "\[MAN\] Setari optionale: \002antichanflood-reason\002 (setare motiv predefinit), \002antichanflood-bantime\002 (setare timp ban in minute), \002chanflood\002 (<numar linii>:<nr secunde>)"
set black(say.ro.man.266) "\[MAN\] Pentru setare optiuni foloseste: \002%char%set <setare> <text>/<numar> | %botnick% set <setare> <text>/<numar>\002"
set black(say.ro.man.267) "\[MAN\] Pentru vizualizare setari optiuni: \002%char%show <setare> | %botnick% show <setare>\002"

#badident

set black(say.ro.man.268) "\[MAN\] \002badident\002 reprezinta o protectie ce protejeaza impotriva userilor ce folosesc IDENT-uri ce au in componenta caractere *interzise*."
set black(say.ro.man.269) "\[MAN\] Sintaxa activare/dezactivare: \002%char%set (+/-)badident | %botnick% set (+/-)badident"
set black(say.ro.man.270) "\[MAN\] Setari optionale: \002badident-reason\002 (setare motiv predefinit), \002badident-bantime\002 (setare timp ban in minute)"
set black(say.ro.man.271) "\[MAN\] Pentru setare optiuni foloseste: \002%char%set <setare> <text>/<numar> | %botnick% set <setare> <text>/<numar>\002"
set black(say.ro.man.272) "\[MAN\] Pentru vizualizare setari optiuni: \002%char%show <setare> | %botnick% show <setare>\002"


#showtime

set black(say.ro.man.273) "\[MAN\] \002showtime\002 reprezinta o optiune care odata activata va pune in motiv-ul banurilor si timpul de expirare a banului"
set black(say.ro.man.274) "\[MAN\] Sintaxa activare/dezactivare: \002%char%set (+/-)showtime | %botnick% set (+/-)showtime"

#showhandle

set black(say.ro.man.275) "\[MAN\] \002showhandle\002 reprezinta o optiune care odata activata va pune in motiv-ul banurilor si user-ul care a dat banul"
set black(say.ro.man.276) "\[MAN\] Sintaxa activare/dezactivare: \002%char%set (+/-)showhandle | %botnick% set (+/-)showhandle"

#showcount

set black(say.ro.man.277) "\[MAN\] \002showtime\002 reprezinta o optiune care odata activata va pune in motiv-ul banurilor si numaratoarea lor"
set black(say.ro.man.278) "\[MAN\] Sintaxa activare/dezactivare: \002%char%set (+/-)showcount | %botnick% set (+/-)showcount"

#xbantime

set black(say.ro.man.279) "\[MAN\] \002xbantime\002 reprezinta o optiune prin care se seteaza timpul de ban la X (doar daca xban este activat)"
set black(say.ro.man.280) "\[MAN\] Sintaxa: \002%char%set xbantime <nr ore> | %botnick% set xbantime <nr ore>\002"

#xbanlevel

set black(say.ro.man.281) "\[MAN\] \002xbanlevel\002 reprezinta o optiune prin care se seteaza nivelul de ban la X (doar daca xban este activat)"
set black(say.ro.man.282) "\[MAN\] Sintaxa: \002%char%set xbanlevel <nr> | %botnick% set xbanlevel <nr>\002"

#oprotect

set black(say.ro.man.283) "\[MAN\] \002oprotect\002 reprezinta o optiune care odata activata va proteja pe cei cu OP de la protectii"
set black(say.ro.man.284) "\[MAN\] Sintaxa activare/dezactivare: \002%char%set oprotect <ON>/<OFF> | %botnick% set oprotect <on>/<off>\002"

#vprotect

set black(say.ro.man.285) "\[MAN\] \002vprotect\002 reprezinta o optiune care odata activata va proteja pe cei cu VOICE de la protectii"
set black(say.ro.man.286) "\[MAN\] Sintaxa activare/dezactivare: \002\%char%set vprotect <ON>/<OFF> | %botnick% set vprotect <on>/<off>\002"


########################################## module ##########################################


#TopicRefresh

set black(say.ro.man.287) "\[MAN\] \002topicrefresh\002 reprezinta un modul care ajuta la mentinerea topicului de pe %chan% prin reaplicarea lui la un interval de timp"
set black(say.ro.man.288) "\[MAN\] Sintaxa activare/dezactivare: \002%char%set (+/-)topicrefresh | %botnick% set (+/-)topicrefresh"
 
 #count
 
set black(say.ro.man.289) "\[MAN\] \002count\002 reprezinta un modul care va retine numarul userilor ce viziteaza %chan% si va afisa la intrare un mesaj cu numarul lor."
set black(say.ro.man.290) "\[MAN\] Sintaxa activare/dezactivare: \002%char%count <on>/<off> | %botnick% count <on>/<off>"
set black(say.ro.man.291) "\[MAN\] Alte sintaxe : \002%char%count <display> (afiseaza numaratoarea), <reset> (reseteaza numaratoarea)"
set black(say.ro.man.292) "\[MAN\] Setari optionale: \002count-message\002 (setare mesaj intrare)"
set black(say.ro.man.293) "\[MAN\] Pentru setare optiuni foloseste: \002%char%set <setare> <text>/<numar> | %botnick% set <setare> <text>/<numar>\002"
set black(say.ro.man.294) "\[MAN\] Pentru vizualizare setari optiuni: \002%char%show <setare> | %botnick% show <setare>\002"

#xtools

set black(say.ro.man.295) "\[MAN\] \002XtoolS\002 reprezinta un modul care va avea grija ca eggdrop-ul sa isi i-a Op, Voice, sa isi dea Unban, Invite de la chanserv(X)"
set black(say.ro.man.296) "\[MAN\] Sintaxa activare/dezactivare: \002%char%set (+/-)xtools | %botnick% set (+/-)xtools\002"

#badchan

set black(say.ro.man.297) "\[MAN\] \002BadChan\002 reprezinta un modul care nu va lasa userii care se afla pe anumite canale sa intre pe %chan%."
set black(say.ro.man.298) "\[MAN\] Sintaxa activare/dezactivare: \002%char%badchan <on>/<off> | %botnick% badchan <on>/<off>\002"
set black(say.ro.man.299) "\[MAN\] Sintaxa adaugare/stergere: \002%char%badchan <add> <#chan> \[-global\] \[reason\] | <del> <#chan> \[-global\] | <list> \[-global\]\002"
set black(say.ro.man.300) "\[MAN\] Sintaxa adaugare/stergere: \002%char%badchan <add> <#chan> \[reason\] | <del> <#chan> | <list>\002"
set black(say.ro.man.301) "\[MAN\] Alte Sintaxe: \002%char%badchan <status> \[-global\] | <find> <#chan> \[-global\]\002"
set black(say.ro.man.302) "\[MAN\] Alte Sintaxe: \002%char%badchan <status> | <find> <#chan>\002"
set black(say.ro.man.303) "\[MAN\] Setari optionale: %char%badchan \002<set> reason <reason>\002 (setare motiv predefinit) | \002<set> bantime <minute>\002 (setare timp ban predefinit)"

#anunt

set black(say.ro.man.304) "\[MAN\] \002Anunt\002 reprezinta un modul care va avea rolul de a afisa anunturi pe %chan% la un interval de timp."
set black(say.ro.man.305) "\[MAN\] Sintaxa activare/dezactivare: \002%char%anunt <on>/<off> | %botnick% anunt <on>/<off>"
set black(say.ro.man.306) "\[MAN\] Sintaxa adaugare/stergere: \002%char%anunt <add> <mesaj> / <list> / <del> <numar>\002"
set black(say.ro.man.307) "\[MAN\] Pentru a adauga mai mult de 1 propozitie intr-un anunt folositi \002%char%anunt add <anunt1>~<anunt2>..\002 iar eggdrop-ul va da anuntul ca doua propozitii diferite."

#limit

set black(say.ro.man.308) "\[MAN\] \002Limit\002 reprezinta un modul care are rolul de a avea grija de limita canalului"
set black(say.ro.man.309) "\[MAN\] Sintaxa activare/dezactivare: \002%char%limit <on>/<off> < | %botnick% limit <on>/<off>"
set black(say.ro.man.310) "\[MAN\] Setari optionale: \002%char%limit set <numar> (setare valoare pentru limita)"

#Topic

set black(say.ro.man.311) "\[MAN\] \002Topic\002 reprezinta un modul care va ajuta sa salvati , adaugati topic-uri intr-o lista a canalului.Din acea lista putand seta orice topic."
set black(say.ro.man.312) "\[MAN\] Sintaxa adaugare/stergere: \002%char%topic <save> / <list> / <add> / <del> <numar>"
set black(say.ro.man.313) "\[MAN\] Sintaxa setare: \002%char%topic set <numar>\002 (numarul se i-a din lista)"
set black(say.ro.man.313_1) "\[MAN\] Comenzi optionale: \002%char%topic <lock>/<unlock> (blocare/deblocare topic)"

#CloneScan

set black(say.ro.man.314) "\[MAN\] \002CloneScan\002 reprezinta un modul care odata activat la un interval de timp va scana %chan% de clone."
set black(say.ro.man.315) "\[MAN\] Sintaxa activare/dezactivare: \002%char%set (+/-)clonescan | %botnick% set (+/-)clonescan"
set black(say.ro.man.316) "\[MAN\] Setari optionale: \002clonescan-action\002 (<message>/<ban>), \002clonescan-maxclone\002 (setare nr. maxim de clone), \002clonescan-bantime\002 (setare timp ban predefinit), \002clonescan-banreason\002 (setare motiv predefinit)"
set black(say.ro.man.317) "\[MAN\] Pentru setare optiuni foloseste: \002%char%set <setare> <text>/<numar> | %botnick% set <setare> <text>/<numar>\002"
set black(say.ro.man.318) "\[MAN\] Pentru vizualizare setari optiuni: \002%char%show <setare> | %botnick% show <setare>\002"

#seen

set black(say.ro.man.319) "\[MAN\] \002Seen\002 reprezinta un modul care odata activat va salva inregistrari cu join/part/quit/netsplit/nickchange a userilor de pe acel canal.Are o baza de date pentru fiecare canal."
set black(say.ro.man.320) "\[MAN\] Sintaxa activare/dezactivare: \002%char%set (+/-)seen | %botnick% set (+/-)seen"
set black(say.ro.man.321) "\[MAN\] Setari optionale: \002seen-method\002 (<notice>/<privmsg>)"
set black(say.ro.man.322) "\[MAN\] Pentru setare optiuni foloseste: \002%char%set <setare> <text>/<numar> | %botnick% set <setare> <text>/<numar>\002"
set black(say.ro.man.323) "\[MAN\] Pentru vizualizare setari optiuni: \002%char%show <setare> | %botnick% show <setare>\002"

#greet

set black(say.ro.man.324) "\[MAN\] \002Greet\002 reprezinta un modul prin care puteti adauga mesaje catre userii care dau join pe %chan%."
set black(say.ro.man.325) "\[MAN\] Sintaxa activare/dezactivare: \002%char%greet <on>/<off> | %botnick% greet <on>/<off>"
set black(say.ro.man.326) "\[MAN\] Sintaxa setare: \002%char%greet set <numar>\002 (se i-a din lista)"
set black(say.ro.man.327) "\[MAN\] Sintaxa adaugare/stergere: \002%char%greet <add> <mesaj> / <list> / <del> <greet>\002"
set black(say.ro.man.328) "\[MAN\] Pentru a adauga mai mult de 1 propozitie intr-un greet folositi \002%char%greet add <greet1>~<greet2>..\002 iar eggdrop-ul va da greet-ul ca doua propozitii diferite."

#leave

set black(say.ro.man.329) "\[MAN\] \002Leave\002 reprezinta un modul prin care puteti adauga mesaje catre userii care dau part de pe %chan%."
set black(say.ro.man.330) "\[MAN\] Sintaxa activare/dezactivare: \002%char%leave <on>/<off> | %botnick% leave <on>/<off>"
set black(say.ro.man.331) "\[MAN\] Sintaxa setare: \002%char%leave set <numar>\002 (se i-a din lista)"
set black(say.ro.man.332) "\[MAN\] Sintaxa adaugare/stergere: \002%char%leave <add> <mesaj> / <list> / <del> <leave>\002"
set black(say.ro.man.333) "\[MAN\] Pentru a adauga mai mult de 1 propozitie intr-un leave folositi \002%char%leave add <leave1>~<leave2>..\002 iar eggdrop-ul va da mesajul de leave ca doua propozitii diferite."

#idle

set black(say.ro.man.334) "\[MAN\] \002Idle\002 reprezinta un modul care odata activat nu va lasa pe userii cu idle sa aibe @/+"
set black(say.ro.man.335) "\[MAN\] Sintaxa activare/dezactivare: \002%char%idle <on>/<off> | %botnick% idle <on>/<off>\002"
set black(say.ro.man.335_1) "\[MAN\] Setari optionale: \002%char%set idleopmax <numar> | %char%set idledevoicemax <numar>\002"
set black(say.ro.man.336) "\[MAN\] Comenzi optionale: \002%char%idle add <nick>\002 (adaugare exceptie de la idle), \002%char%idle <list>\002 (listare exceptii), \002%char%idle del <nick>\002 (stergere exceptie)"
set black(say.ro.man.336_1) "\[MAN\] Pentru vizualizare setari optiuni: \002%char%show <setare> | %botnick% show <setare>\002"

#chanreport

set black(say.ro.man.337) "\[MAN\] \002ChanReport\002 reprezinta un modul care odata activat da posibilitatea ca fiecare canal sa aibe un backchan,in care eggdrop-ul va anunta banurile date de catre acesta pe canalul principal."
set black(say.ro.man.338) "\[MAN\] Sintaxa activare/dezactivare: \002%char%set (+/-)chanreport | %botnick% set (+/-)chanreport"
set black(say.ro.man.339) "\[MAN\] Sintaxa setare: \002%char%set backchan <#canal>\002 (setare backchan)"
set black(say.ro.man.340) "\[MAN\] Odata cu setarea canalului \002backchan\002 puteti folosii pe acesta toate comenzile de ban iar acestea vor fii aplicate pe \002mainchan\002 (canalul principal)"

#topwords

set black(say.ro.man.341) "\[MAN\] \002TopWords\002 reprezinta un modul care odata activat va inregistra activitatea userilor de pe %chan% (numarul de cuvinte scrise)."
set black(say.ro.man.342) "\[MAN\] Sintaxa activare/dezactivare: \002%char%set (+/-)topwords | %botnick% set (+/-)topwords"
set black(say.ro.man.343) "\[MAN\] Sintaxa afisare: \002%char%top words\002 |  \002%char%top words erase\002 (resetare top cuvinte)"

#xban

set black(say.ro.man.344) "\[MAN\] \002XBan\002 Reprezinta un modul care odata activat va face ca eggdrop-ul la fiecare ban aplicat de acesta sa il adauge si la X pe un anumit timp si cu acelasi motiv."
set black(say.ro.man.345) "\[MAN\] Sintaxa activare/dezactivare: \002%char%set (+/-)xban | %botnick% set (+/-)xban"
set black(say.ro.man.346) "\[MAN\] Setari optionale: \002xbantime\002 (setare bantime la X in ore), \002xbanlevel\002 (setare nivel ban la X)"
set black(say.ro.man.347) "\[MAN\] Pentru setare optiuni foloseste: \002%char%set <setare> <numar> | %botnick% set <setare> <numar>\002"
set black(say.ro.man.348) "\[MAN\] Pentru vizualizare setari optiuni: \002%char%show <setare> | %botnick% show <setare>\002"

#antitake

set black(say.ro.man.349) "\[MAN\] \002Antitake\002 reprezinta un modul care are doua componente: Prima avand functia de protejare impotriva celor care nu au access la Eggdrop si dau DEOP iar cea de-a doua pentru cei care nu au access la Eggdrop si dau OP."
set black(say.ro.man.350) "\[MAN\] Sintaxa activare/dezactivare: \002%char%set (+/-)dontdeop | %botnick% set (+/-)dontdeop\002  (protectie la deop), \002%char%set (+/-)dontop | %botnick% set (+/-)dontop\002 (protectie la op)"

#private

set black(say.ro.man.351) "\[MAN\] \002Private\002 reprezinta un modul care odata activat nu va lasa pe cei fara access sau pe cei care nu se afla in lista de exceptii la Eggdrop sa dea join pe %chan%."
set black(say.ro.man.352) "\[MAN\] Sintaxa activare/dezactivare: \002%char%private <on>/<off> | %botnick% private <on>/<off>\002"
set black(say.ro.man.353) "\[MAN\] Comenzi optionale: \002%char%private <add> <nume> <host>\002 (adaugare exceptie), \002%char%private <list>\002 (listare exceptii), \002%char%private del <nume\002 (stergere exceptie)"
set black(say.ro.man.353_1) "\[MAN\] Setari optionale: \002private-reason\002 (setare motiv predefinit), \002private-bantime\002 (setare timp ban in minute)"
set black(say.ro.man.353_2) "\[MAN\] Pentru setare optiuni foloseste: \002%char%set <setare> <text>/<numar> | %botnick% set <setare> <text>/<numar>\002"
set black(say.ro.man.353_3) "\[MAN\] Pentru vizualizare setari optiuni: \002%char%show <setare> | %botnick% show <setare>\002"

#autobroadcast

set black(say.ro.man.354) "\[MAN\] \002AutoBroadCast\002 reprezinta un modul care odata activat va da mesaje pe toate canalele eggdrop-ului odata la un interval de timp"
set black(say.ro.man.355) "\[MAN\] Sintaxa activare/dezactivare: \002%char%bt <on>/<off> | %botnick% bt <on>/<off>\002"
set black(say.ro.man.356) "\[MAN\] Sintaxa adaugare/stergere: \002%char%bt <add> <mesaj> | <list> | <del> <numar>\002"
set black(say.ro.man.357) "\[MAN\] Comenzi optionale: \002%char%set <chan> (+/-)silent\002 (nu va da broadcast pe canal)"

#AntiBotIdle

set black(say.ro.man.358) "\[MAN\] \002AntiBotIdle\002 reprezinta un modul care odata activat nu va lasa eggdrop-ul sa faca IDLE."
set black(say.ro.man.359) "\[MAN\] Sintaxa activare/dezactivare: \002%char%botidle <on>/<off> | %botnick% botidle <on>/<off>\002"

#Language

set black(say.ro.man.360) "\[MAN\] \002Language\002 reprezinta un modul care va seta limba motivelor de kick/ban."
set black(say.ro.man.361) "\[MAN\] Sintaxa activare/dezactivare: \002%char%set lang <limba> (RO | EN)\002"

#BadWordAdd

set black(say.ro.man.362) "\[MAN\] \002BadWordAdd\002 reprezinta un modul prin care puteti adauga cuvinte interzise pentru protectia \002AntiBadWord\002."
set black(say.ro.man.363) "\[MAN\] Sintaxa adaugare/stergere: \002%char%badword <add> <* cuvant *> | <list> | <del> <numar>\002"

#AntiPubExcept

set black(say.ro.man.364) "\[MAN\] \002AntiPubExcept\002 reprezinta un modul prin care puteti adauga link-uri/canale ca exceptii pentru protectia \002Antipub\002. Cine va folosii aceste link-uri/canale nu va lua ban."
set black(say.ro.man.365) "\[MAN\] Sintaxa adaugare/stergere: \002%char%antipub <chan> <add> <*link*> / <#chan> | <list> | <del> <link> / <#chan>\002"

#TCL

set black(say.ro.man.366) "\[MAN\] \002TCL\002 reprezinta un modul cu care puteti incarca tcl-uri, lista atat cele incarcate cat si cele din scripts"
set black(say.ro.man.367) "\[MAN\] Sintaxa comenzi: \002%char%tcl <list>\002 (vizualizare tcl-uri incarcate), \002%char%tcl <load> <nume.tcl>\002 (incarcare tcl), \002%char%tcl <unload> <nume.tcl>\002 (dezactivare tcl),  \002%char%tcl <all>\002 (vizualizare tcluri),  \002%char%tcl <info> <nume.tcl>\002 (informatii tcl) "

#next

set black(say.ro.man.368) "\[MAN\] \002Next\002 reprezinta un modul folosit pentru canalele de help prin care puteti asista useri ce au nevoie de ajutor."
set black(say.ro.man.369) "\[MAN\] Sintaxa activare/dezactivare: \002%char%set (+/-)next | %botnick% set (+/-)next\002"
set black(say.ro.man.370) "\[MAN\] Sintaxa comenzi: \002%char%next / .next list\002 (afisare lista), \002%char%helped <nick>\002, \002%char%noidle <nick>\002, \002%char%skip <nick>\002"
set black(say.ro.man.371) "\[MAN\] Setari optionale: \002next-noidlreason\002 (setare motiv predefinit), \002noidle-bantime\002 (setare timp ban in minute), \002next-backchan\002 (setare backchan)"
set black(say.ro.man.372) "\[MAN\] Pentru setare optiuni foloseste: \002%char%set <setare> <text>/<numar> | %botnick% set <setare> <text>/<numar>\002"
set black(say.ro.man.373) "\[MAN\] Pentru vizualizare setari optiuni: \002%char%show <setare> | %botnick% show <setare>\002"

##################################### comenzi ############################################


#uptime

set black(say.ro.man.374) "\[MAN\] \002uptime\002 reprezinta o comanda prin care puteti afla de cand este eggdrop-ul pornit, timpul de conectare la server cat si server-ul la care este conectat"
set black(say.ro.man.375) "\[MAN\] Sintaxa comanda: \002%char%uptime | %botnick% uptime\002"

#status

set black(say.ro.man.376) "\[MAN\] \002status\002 reprezinta o comanda prin care puteti afla atat informatiile din comanda %char%uptime cat si canalele eggdrop-ului si uptime-ul server-ului pe care e ridicat."
set black(say.ro.man.377) "\[MAN\] Sintaxa comanda: \002%char%status | %botnick% status\002"

#set

set black(say.ro.man.378) "\[MAN\] \002set\002 reprezinta o comanda prin care puteti seta orice optiuni ale eggdrop-ului (flaguri)"
set black(say.ro.man.379) "\[MAN\] Sintaxa comanda: \002%char%set (+/-)flag ; <flag> <optiune> | %botnick% set (+/-)flag ; <flag> <optiune>"
set black(say.ro.man.380) "\[MAN\] Comenzi optionale: \002%char% set global (+/-)flag ; <flag> <optiune>\002 (setare pentru toate canalele), \002%char%set chanmode +k <cheie>\002 (setare cheie canal)"
set black(say.ro.man.381) "\[MAN\] Comenzi optionale: \002%char%set chanmode +k <cheie>\002 (setare cheie canal)"

#away

set black(say.ro.man.382) "\[MAN\] \002away\002 reprezinta o comanda prin care puteti seta away-ul eggdropului dvs. Acesta la fiecare conectare isi va pune acest away."
set black(say.ro.man.383) "\[MAN\] Sintaxa comanda: \002 %char%away <away> | %botnick% away <away>"
set black(say.ro.man.384) "\[MAN\] Comanda optionala: \002 %char%away <off>\002 (dezactivare away)"

#silence

set black(say.ro.man.385) "\[MAN\] \002silence\002 reprezinta o comanda prin care puteti seta ca eggdrop-ul dvs sa numai primeasca niciun mesaj pe privat."
set black(say.ro.man.386) "\[MAN\] Sintaxa activare/dezactivate: \002 %char%silence <on>/<off> | %botnick% silence <on>/<off>\002"

#jump

set black(say.ro.man.387) "\[MAN\] \002jump\002 reprezinta o comanda prin care puteti schimba server-ul la care e conectat eggdrop-ul dvs."
set black(say.ro.man.388) "\[MAN\] Sintaxa comanda: \002 %char%jump <server> | %botnick% jump <server>\002"

#msg

set black(say.ro.man.389) "\[MAN\] \002msg\002 reprezinta o comanda prin care puteti da mesaj catre un canal sau un user."
set black(say.ro.man.390) "\[MAN\] Sintaxa comanda: \002 %char%msg <nick/chan> <text> | %botnick% msg <nick/chan> <text>\002"

#broadcast

set black(say.ro.man.391) "\[MAN\] \002broadcast\002 reprezinta o comanda prin care puteti trimite un mesaj catre toate canalele eggdrop-ului."
set black(say.ro.man.392) "\[MAN\] Sintaxa comanda: \002 %char%broadcast <text> | %botnick% broadcast <text>\002"

#ignore

set black(say.ro.man.393) "\[MAN\] \002ignore\002 reprezinta o comanda prin care puteti lista,adauga,sterge inregistrarile tip \002ignore\002 din eggdrop."
set black(say.ro.man.394) "\[MAN\] Sintaxa adaugare/stergere: \002%char%ignore <list> | <add> <host> <time> <reason> | <delete> <host>\002"

#chat

set black(say.ro.man.395) "\[MAN\] \002chat\002 reprezinta o comanda prin care va puteti conecta la botnet-ul eggdrop-ului dvs."
set black(say.ro.man.396) "\[MAN\] Sintaxa comanda: \002%char%chat | %botnick% chat\002"

#login

set black(say.ro.man.397) "\[MAN\] \002login\002 reprezinta o comanda prin care puteti loga manual eggdrop-ul dvs la Chanserv(X)"
set black(say.ro.man.398) "\[MAN\] Sintaxa comanda: \002%char%login | %botnick% login\002"

#channels

set black(say.ro.man.399) "\[MAN\] \002channels\002 reprezinta o comanda prin care puteti vizualiza canalele aflate in memoria eggdrop-ului dvs."
set black(say.ro.man.400) "\[MAN\] Sintaxa comanda: \002%char%channels | %botnick% channels\002"

#nick

set black(say.ro.man.401) "\[MAN\] \002nick\002 reprezinta o comanda prin care puteti schimba nick-ul eggdrop-ului dvs."
set black(say.ro.man.402) "\[MAN\] Sintaxa comanda: \002(PRIVMSG) nick <newnick> | %botnick% nick <newnick>\002"

#restart 

set black(say.ro.man.403) "\[MAN\] \002restart\002 reprezinta o comanda prin care puteti da restart eggdrop-ului dvs."
set black(say.ro.man.404) "\[MAN\] Sintaxa comanda: \002(PRIVMSG) restart | %botnick% nick restart\002"

#rehash

set black(say.ro.man.405) "\[MAN\] \002rehash\002 reprezinta o comanda prin care puteti reincarca fisierele eggdrop-ului dvs."
set black(say.ro.man.406) "\[MAN\] Sintaxa comanda: \002(PRIVMSG) rehash | %botnick% nick rehash\002"

#die

set black(say.ro.man.407) "\[MAN\] \002die\002 reprezinta o comanda prin care puteti inchide eggdrop-ului dvs."
set black(say.ro.man.408) "\[MAN\] Sintaxa comanda: \002(PRIVMSG) die | %botnick% nick die\002"

#suspend

set black(say.ro.man.409) "\[MAN\] \002suspend\002 reprezinta o comanda prin care puteti da suspend unui canal din lista eggdrop-ului dvs."
set black(say.ro.man.410) "\[MAN\] Sintaxa comanda: \002(PRIVMSG) suspend <chan> <motiv> | %botnick% suspend <chan> <motiv>\002"

#unsuspend

set black(say.ro.man.411) "\[MAN\] \002unsuspend\002 reprezinta o comanda prin care puteti scoate suspend-ul unui canal din lista eggdrop-ului dvs."
set black(say.ro.man.412) "\[MAN\] Sintaxa comanda: \002(PRIVMSG) unsuspend <chan> | %botnick% unsuspend <chan>\002"

#save

set black(say.ro.man.413) "\[MAN\] \002save\002 reprezinta o comanda prin care puteti salva fisierele eggdrop-ului dvs."
set black(say.ro.man.414) "\[MAN\] Sintaxa comanda: \002(PRIVMSG) save | %botnick% save\002"

#addchan

set black(say.ro.man.415) "\[MAN\] \002addchan\002 reprezinta o comanda prin care puteti adauga un canal in lista eggdrop-ului dvs."
set black(say.ro.man.416) "\[MAN\] Sintaxa comanda: \002(PRIVMSG) addchan <chan> \[key\] | %botnick% addchan <chan> \[\key\]\002"
set black(say.ro.man.417) "\[MAN\] Daca se specifica \[key\] eggdrop-ul va intra pe <chan> folosind cheia specificata."

#delchan

set black(say.ro.man.418) "\[MAN\] \002delchan\002 reprezinta o comanda prin care se sterge un canal din lista eggdrop-ului dvs."
set black(say.ro.man.419) "\[MAN\] Sintaxa comanda: \002(PRIVMSG) delchan <chan> <motiv> | %botnick% delchan <chan> <motiv>\002"

#purge

set black(say.ro.man.422) "\[MAN\] \002purge\002 reprezinta o comanda prin care se sterge un canal din lista eggdrop-ului de catre Owner sau managerul acelui canal."
set black(say.ro.man.423) "\[MAN\] Sintaxa comanda: \002%char%purge <chan> <motiv> | %botnick% purge <chan> <motiv>\002"


#find

set black(say.ro.man.420) "\[MAN\] \002find\002 reprezinta o comanda prin care se pot cauta usere dupa nume sau host din memorie, afisand hosturile acestora, canalele unde au access, precum si unde au fost vazuti ultima data."
set black(say.ro.man.421) "\[MAN\] Sintaxa comanda: \002%char%find <host> / <user> | %botnick% find <host> / <user>\002"

#addinfo

set black(say.ro.man.424) "\[MAN\] \002addinfo\002 reprezinta o comanda prin care iti poti adauga un mesaj personalizat la user. Acesta va fii disponibil in \002%char%info\002 dar va fii dat si la intrare pe canal."
set black(say.ro.man.425) "\[MAN\] Sintaxa comanda: \002%char%addinfo <text> | %botnick% addinfo <text>\002"
set black(say.ro.man.426) "\[MAN\] Sintaxa dezactivare: \002%char%addinfo <off>\002 "

#invite 

set black(say.ro.man.427) "\[MAN\] \002invite\002 reprezinta o comanda data pe PRIVAT pentru a primii invite pe un anumit canal."
set black(say.ro.man.428) "\[MAN\] Sintaxa: \002invite <#chan> <nick>\002"


