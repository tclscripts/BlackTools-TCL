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
set black(say.ro.gl.usernotonchan) "%msg% nu este pe %chan%."
set black(say.ro.gl.nocmem) "Nu am in memorie canalul %msg.1%"


#################################################################################
#
#                                   PROTECTII
# 
#################################################################################


#################################### antipub ###################################

set black(say.ro.antipub.1) "Nu ai respectat regulile pe %chan% in privinta RECLAMEI !"


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


################################ Report Chan ###################################

set black(say.ro.reportchan) "Am adaugat ban pe %chan% pe hostul %banmask% cu motivul :%reason% .Acesta va expira in %bantime% minute."


################################ clone scan ###################################

set black(say.ro.clonescan.1) "Am gasit %msg.1% clone pe %chan% de la host -= %msg.2% =-. Nick-urile sunt -= %msg.7% =-"
set black(say.ro.clonescan.2) "Sfarsit clone.."
set black(say.ro.clonescan.3) "Am gasit %num% clone pe %chan% de la host -= %host% =-. Nick-urile sunt -= %clone% =-"
set black(say.ro.clonescan.4) "Scanez.."

################################## count ######################################

set black(say.ro.count.1) "Use : %char%count <chan> on / off / display / reset | %char%count on / off / display / reset"
set black(say.ro.count.2) "Use : %botnick% count <chan> on / off / display / reset | %botnick% count on / off / display / reset"
set black(say.ro.count.3) "Use : %char%count <chan> on / off / display / reset"
set black(say.ro.count.4) "Use :%botnick% count <chan> on / off / display / reset"
set black(say.ro.count.5) "Count pentru %chan% este deja activat"
set black(say.ro.count.6) "Count pentru %chan% este deja dezactivat"
set black(say.ro.count.7) "Am activat count pe %chan% ."
set black(say.ro.count.8) "Am dezactivat count pe %chan% ."
set black(say.ro.count.9) "Numaratoarea pentru %chan% este de %msg.1% vizitator(i)"
set black(say.ro.count.10) "Am resetat count pentru %chan%"
set black(say.ro.count.11) "Esti user-ul cu numarul %num% care ai dat join pe %chan% ."

################################# private ######################################

set black(say.ro.private.1) "Use : %char%private <chan> <on> / <off> / <add> <nick> <host> / <list> / <del> <name> | %char%private <on> / <off> / <add> <nick> <host> / <list> / <del> <name>"
set black(say.ro.private.2) "Use : %botnick% private <chan> <on> / <off> / <add> <nick> <host> | <list> / <del> <name> | %botnick% private <on> / <off> / <add> <nick> <host> / <list> / <del> <name>"
set black(say.ro.private.3) "%char%private <on> | <off> | <add> <nick> <host> | <list> | <del> <name>"
set black(say.ro.private.4) "Use :%botnick% private <on> | <off> | <add> <nick> <host> | <list> | <del> <name>"
set black(say.ro.private.5) "Am activat modulul privat pe %chan%"
set black(say.ro.private.6) "Am dezactivat modulul privat pe %chan%"
set black(say.ro.private.7) "%msg.1% este deja in baza mea de date.Il adaug ca exceptie pe %chan%"
set black(say.ro.private.8) "Am adaugat %msg.1% cu host %msg.2% ca exceptie la private pe %chan%"
set black(say.ro.private.9) "AM sters %msg.1% din lista de exceptii pe %chan%"
set black(say.ro.private.10) "%msg.1% nu este baza de date pe %chan%."
set black(say.ro.private.11) "Userii exceptati de la private pe %chan% sunt : %msg%"
set black(say.ro.private.12) "Canal Privat !"


################################# badchan ######################################

set black(say.ro.badchan.1) "Use : %char%badchan <chan> <on> / <off> / <add> <#chan> / <list> / <del> <numar> | %char%badchan <on> / <off> / <add> <#chan> / <list> / <del> <numar>"
set black(say.ro.badchan.2) "Use : %botnick% badchan <chan> <on> / <off> / <add> <#chan> / <list> / <del> <numar> | %botnick% badchan <on> / <off> / <add> <#chan> / <list> / <del> <numar>"
set black(say.ro.badchan.3) "Use : %char%badchan <on> / <off> / <add> <#chan> / <list> / <del> <numar>"
set black(say.ro.badchan.4) "Use : %botnick% badchan <on> / <off> / <add> <#chan> / <list> / <del> <numar>"
set black(say.ro.badchan.5) "Ai activat BadChan pe %chan%."
set black(say.ro.badchan.6) "Am dezactivat BlackChan pe %chan%."
set black(say.ro.badchan.7) "Adaug in lista canalul: %msg.1%"
set black(say.ro.badchan.8) "Nu sunt canale in BlackList pentru %chan%."
set black(say.ro.badchan.9) "Lista canalelor din BlackList pentru %chan% este :"
set black(say.ro.badchan.10) "%msg%"
set black(say.ro.badchan.11) "Use :del <numar>"
set black(say.ro.badchan.12) "Am sters pentru %chan% canalul cu numarul : %msg.1%"
set black(say.ro.badchan.13) "Te rog verifica cu comanda : %char%badchan <list>"
set black(say.ro.badchan.14) "Te aflii pe un canal care este considerat a fii interzis."
set black(say.ro.badchan.15) "Ai primit ban pe %chan% deoarece ai fost gasit pe un canal care este considerat interzis. Canalul pe care te afli si care este considerat interzis este : %bchan%"


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
set black(say.ro.anunt.3) "Use :%char%anunt <on> / <off> / <add> <mesaj> / <list> / <del> <numar>"
set black(say.ro.anunt.4) "Use :%botnick% anunt <on> / <off> / <add> <mesaj> / <list> / <del> <numar>"
set black(say.ro.anunt.5) "Ai activat modulul de anunt pe %chan%."
set black(say.ro.anunt.6) "Am dezactivat modulul de anunt pe %chan%."
set black(say.ro.anunt.7) "Am adaugat urmatorul anunt pentru %chan%:"
set black(say.ro.anunt.8) "%msg%"
set black(say.ro.anunt.9) "Nu sunt anunturi pentru %chan%"
set black(say.ro.anunt.10) "Lista de anunturi pentru %chan% este:"
set black(say.ro.anunt.11) "Use :del <numar>."
set black(say.ro.anunt.12) "Am sters anuntul cu numarul :%msg.1% pentru %chan%."
set black(say.ro.anunt.13) "Verifica daca este corect cu comanda %char%anunt list"


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

set black(say.ro.topic.1) "Use : %char%topic <chan> save / list / add <topic> / del <number> / set <number> | %char% topic save / list / add <topic> / del <number> / set <number>"
set black(say.ro.topic.2) "Use : %botnick% topic <chan> save / list / add <topic> / del <number> / set <number> | %botnick% topic save / list / add <topic> / del <number> / set <number>"
set black(say.ro.topic.3) "Use : %char% topic save / list / add <topic> / del <number> / set <number>"
set black(say.ro.topic.4) "Use : %botnick% topic save / list / add <topic> / del <number> / set <number>"
set black(say.ro.topic.5) "Nu pot salva topic-ul deoarece este gol"
set black(say.ro.topic.6) "Am salvat topic-ul curent..."
set black(say.ro.topic.7) "Am salvat topic-ul pentru %chan%..."
set black(say.ro.topic.8) "Nu sunt topic-uri %chan%"
set black(say.ro.topic.9) "Lista de TOPIC pentru %chan% este:"
set black(say.ro.topic.10) "%msg%"
set black(say.ro.topic.11) "Use :del <numar> ( il iei din lista )"
set black(say.ro.topic.12) "Am sters topic-ul cu numarul %msg.1% din lista de pe %chan%"
set black(say.ro.topic.13) "Use :set <numar> ( il iei din lista )"
set black(say.ro.topic.14) "Am pus topic-ul cu numarul %msg.1% pe %chan%"


################################# Seen ######################################

set black(say.ro.seen.1) "Use : %char%seen <chan> <nick>/<host> | %char%seen <nick>/<host>"
set black(say.ro.seen.2) "Use : %botnick% seen <chan> <nick>/<host> | %botnick% seen <nick>/<host>"
set black(say.ro.seen.3) "Use : %char%seen <nick>/<host>"
set black(say.ro.seen.4) "Use : %botnick% seen <nick>/<host>"
set black(say.ro.seen.5) "Asteapta 1 minut pentru a putea cauta."
set black(say.ro.seen.6) "%msg.1% uite-te in oglinda"
set black(say.ro.seen.7) "%msg.1% este pe %chan% deja"
set black(say.ro.seen.8) "nu stiu exact cat a stat."
set black(say.ro.seen.9) "dupa ce a stat %staytime% pe %chan%."
set black(say.ro.seen.10) "%userentry% este inca aici."
set black(say.ro.seen.11) "Nu il vad pe %userentry% momentan pe %chan%"
set black(say.ro.seen.12) "%entry% (%host%) a iesit de pe %chan% acum %output% %date% zicand: %reason%, %staymsg%"
set black(say.ro.seen.13) "%entry% (%host%) a iesit de pe IRC acum %output% %date% zicand: %reason%, %staymsg%"
set black(say.ro.seen.14) "%entry% (%host%) a intrat pe %chan% acum %output% %date%.%nowon%"
set black(say.ro.seen.15) "%entry% (%host%)  a iesit in *.net *.split acum %output% %date%, %staymsg%"
set black(say.ro.seen.16) "%entry% (%host%) a fost dat(a) afara de pe %chan% acum %output% %date% cu motivul (%reason%), %staymsg%"
set black(say.ro.seen.17) "%entry% (%host%) si-a schimbat nick-ul in %newnick% acum %output% %date%.%nowon%"
set black(say.ro.seen.18) "Nu l-am vazut pe %msg.1%"

################################# greet ######################################

set black(say.ro.greet.1) "GLOBAL : Use %char%greet <chan> <on> | <off> | <add> <mesaj> | <list> | <del> <numar>"
set black(say.ro.greet.2) "LOCAL : Use %char%greet <on> | <off> | <add> <mesaj> | <list> | <del> <numar>"
set black(say.ro.greet.3) "GLOBAL: Use %botnick% greet <chan> <on> | <off> | <add> <mesaj> | <list> | <del> <numar>"
set black(say.ro.greet.4) "LOCAL : Use %botnick% greet <on> | <off> | <add> <mesaj> | <list> | <del> <numar>"
set black(say.ro.greet.5) "Use %char%greet <on> | <off> | <add> <mesaj> | <list> | <del> <numar>"
set black(say.ro.greet.6) "Use %botnick% greet <on> | <off> | <add> <mesaj> | <list> | <del> <numar>"
set black(say.ro.greet.7) "Ai activat modulul de greet pe %chan% .Pentru a adauga un greet foloseste %char%greet add <mesaj> | %botnick% greet add <mesaj>. Poti adauga cate vrei."
set black(say.ro.greet.8) "Am dezactivat modulul de greet pe %chan%."
set black(say.ro.greet.9) "Am adaugat urmatorul greet pentru %chan%:"
set black(say.ro.greet.10) "%msg%"
set black(say.ro.greet.11) "Nu sunt greet-uri pentru %chan%"
set black(say.ro.greet.12) "Lista de greet pentru %chan% este:"
set black(say.ro.greet.13) "Use :del <numar>. Pentru a lista greet-urile si numerelor lor foloseste type %char%greet list"
set black(say.ro.greet.14) "Am sters greet-ul cu numarul :%msg.1% pentru %chan%."
set black(say.ro.greet.15) "Verifica daca este corect cu comanda %char%greet list"


################################# Leave ######################################

set black(say.ro.leave.1) "GLOBAL : Use %char%leave <chan> <on> | <off> | <add> <mesaj> | <list> | <del> <numar>"
set black(say.ro.leave.2) "LOCAL : Use %char%leave <on> | <off> | <add> <mesaj> | <list> | <del> <numar>"
set black(say.ro.leave.3) "GLOBAL: Use %botnick% leave <chan> <on> | <off> | <add> <mesaj> | <list> | <del> <numar>"
set black(say.ro.leave.4) "LOCAL : Use %botnick% leave <on> | <off> | <add> <mesaj> | <list> | <del> <numar>"
set black(say.ro.leave.5) "Use %char%leave <on> | <off> | <add> <mesaj> | <list> | <del> <numar>"
set black(say.ro.leave.6) "Use %botnick% leave <on> | <off> | <add> <mesaj> | <list> | <del> <numar>"
set black(say.ro.leave.7) "Ai activat modulul de leave pe %chan% .Pentru a adauga un leave foloseste %char%leave add <mesaj> | %botnick% greet leave <mesaj>. Poti adauga cate vrei."
set black(say.ro.leave.8) "Am dezactivat modulul de leave pe %chan%."
set black(say.ro.leave.9) "Am adaugat urmatorul leave pentru %chan%:"
set black(say.ro.leave.10) "%msg%"
set black(say.ro.leave.11) "Nu sunt leave-uri pentru %chan%"
set black(say.ro.leave.12) "Lista de leave pentru %chan% este:"
set black(say.ro.leave.13) "Use :del <numar>. Pentru a lista leave-urile si numerelor lor foloseste type %char%leave list"
set black(say.ro.leave.14) "Am sters leave-ul cu numarul :%msg.1% pentru %chan%."
set black(say.ro.leave.15) "Verifica daca este corect cu comanda %char%leave list"


################################# Idle ######################################

set black(say.ro.idle.1) "GLOBAL :Use %char%idle <chan> <on>/<off> | %char%idle <chan> op <on>/<off> | %char%idle <chan> voice <on>/<off> | %char%idle <chan> add <nick>"
set black(say.ro.idle.2) "LOCAL :Use %char%idle <on>/<off> | %char%idle op <on>/<off> | %char%idle voice <on>/<off> | %char%idle add <nick>"
set black(say.ro.idle.3) "GLOBAL :Use %botnick% idle <chan> <on>/<off> | %botnick% idle <chan> op <on>/<off> | %botnick% idle <chan> voice <on>/<off> | %botnick% idle <chan> add <nick>"
set black(say.ro.idle.4) "LOCAL :Use %botnick% idle <on>/<off> | %botnick% idle op <on>/<off> | %botnick% idle voice <on>/<off> | %botnick% idle add <nick>"
set black(say.ro.idle.5) "Use %char%idle <on>/<off> | %char%idle op <on>/<off> | %char%idle voice <on>/<off> | %char%idle add <nick>"
set black(say.ro.idle.6) "Use %botnick% idle <on>/<off> | %botnick% idle op <on>/<off> | %botnick% idle voice <on>/<off> | %botnick% idle add <nick>"
set black(say.ro.idle.7) "Am activat modulul de anti-idle pe %chan%, pentru a putea functiona activeaza una din optiuni : %char%idle op <on>/<off> (idle-deop) | %char%idle voice <on/<off> (idle-devoice)"
set black(say.ro.idle.8) "I dezactivat modulul de anti-idle pe %chan%"
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



################################# AntiBotIdle ######################################

set black(say.ro.antibotidle.1) "Use %char%botidle <on> | <off> ."
set black(say.ro.antibotidle.2) "Use %botnick% botidle <on> | <off> ."
set black(say.ro.antibotidle.3) "AntiBotIdle este activat deja."
set black(say.ro.antibotidle.4) "Am activat modulul de AntiBotIdle"
set black(say.ro.antibotidle.5) "Am dezactivat modulul de AntiBotIdle"

################################################################################
#
#                                     COMENZI
#
################################################################################



#################################### myset ####################################

set black(say.ro.myset.1) "Ti-am setat limba la %msg.1%"
set black(say.ro.myset.2) "Ti-am setat iesirea la %msg.1%"
set black(say.ro.myset.3) "Use :%char%myset <lang> <RO> / <EN> | <output> <CHAN> / <NOTICE>"
set black(say.ro.myset.4) "Use :%botnick% myset <lang> <RO> / <EN> | <output> <CHAN> / <NOTICE>"

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

################################## n #####################################

set black(say.ro.n.1) "Use : %char%n <chan> <nick> | %char%n <nick>"
set black(say.ro.n.2) "Use : %botnick% n <chan> <nick> | %botnick% b <nick>"
set black(say.ro.n.3) "Use : %char%n <nick>"
set black(say.ro.n.4) "Use : %botnick% n <nick>"
set black(say.ro.n.5) "Nick-ul tau este considerat ca fiind unul obscen te rog schimba-l si revino !"

################################## id ####################################

set black(say.ro.id.1) "Use : %char%id <chan> <nick> | %char%id <nick>"
set black(say.ro.id.2) "Use : %botnick% id <chan> <nick> | %botnick% id <nick>"
set black(say.ro.id.3) "Use : %char%id <nick>"
set black(say.ro.id.4) "Use : %botnick% id <nick>"
set black(say.ro.id.5) "Identul tau este considerat ca fiind unul obscen te rog schimba-l si revino !"


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

set black(say.ro.gag.1) "Use : %char%gag <chan> <nick> | %char%gag <nick>"
set black(say.ro.gag.2) "Use : %botnick% gag <chan> <nick> | %botnick% gag <nick>"
set black(say.ro.gag.3) "Use : %char%gag <nick>"
set black(say.ro.gag.4) "Use : %botnick% gag <nick>"
set black(say.ro.gag.5) "%msg.1% ai fost redus la tacere.Asteapta sa primesti unban pe %chan% pentru a putea vorbii."

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
set black(say.ro.sb.5) "4Ban Global : 1%msg.1% | 4Setat de : 12%msg.2% | 4Motiv : 1%msg.5% | 4Creat in data de : 1%msg.3% | 4Expira la : 1permanent , sticky"
set black(say.ro.sb.6) "4Ban Global : 1%msg.1% | 4Setat de : 1%msg.2% | 4Motiv : 1%msg.5% | 4Creat in data de : 1%msg.3% | 4Expira la : 1permanent"
set black(say.ro.sb.7) "4Ban Global : 1%msg.1% | 4Setat de : 1%msg.2% | 4Motiv : 1%msg.5% | 4Creat in data de : 1%msg.3% | 4Expira la : 1%msg.4% ,sticky"
set black(say.ro.sb.8) "4Ban Global : 12%msg.1% | 4Setat de : 12%msg.2% | 4Motiv : 12%msg.5% | 4Creat in data de : 12%msg.3% | 4Expira la : 12%msg.4%"
set black(say.ro.sb.9) "4Ban Local : 1%msg.1% | 4Setat de : 12%msg.2% | 4Motiv : 1%msg.5% | 4Creat in data de : 1%msg.3% | 4Expira la : 1permanent , sticky"
set black(say.ro.sb.10) "4Ban Local : 1%msg.1% | 4Setat de : 1%msg.2% | 4Motiv : 1%msg.5% | 4Creat in data de : 1%msg.3% | 4Expira la : 1permanent"
set black(say.ro.sb.11) "4Ban Local : 1%msg.1% | 4Setat de : 1%msg.2% | 4Motiv : 1%msg.5% | 4Creat in data de : 1%msg.3% | 4Expira la : 1%msg.4% ,sticky"
set black(say.ro.sb.12) "4Ban Local : 12%msg.1% | 4Setat de : 12%msg.2% | 4Motiv : 12%msg.5% | 4Creat in data de : 12%msg.3% | 4Expira la : 12%msg.4%"
set black(say.ro.sb.13) "Nu am gasit nimic in lista mea."

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
set black(say.ro.i.3) "Use : %char%i <chan> <nick1> <nick2>.. | %char%i <nick1> <nick2>.."
set black(say.ro.i.4) "Use : %botnick% i <chan> <nick1> <nick2>.. | %botnick% i <nick1> <nick2>.."
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

set black(say.ro.version.1) "1VERSIUNE SCRIPT : 4BlackToolS 2.3  1Created by 12BLaCkShaDoW . 1Pentru mai multe informatii ---=1 4WwW.TclScripts.Net 1or 4#TCL-HELP @ UNDERNET"

################################# ub ######################################

set black(say.ro.ub.1) "Use : %char%ub <chan> <host> | %char%ub <host>"
set black(say.ro.ub.2) "Use : %botnick% ub <chan> <host> | %botnick% ub <host>"
set black(say.ro.ub.3) "Use : %char%ub <host>"
set black(say.ro.ub.4) "Use : %botnick% ub <host>"
set black(say.ro.ub.5) "Nu poti scoate acest ban.Necesita nivel Senior+"
set black(say.ro.ub.6) "Am scos %msg.1% din lista globala de banuri"
set black(say.ro.ub.7) "Nu exista un asemenea ban in baza de date globala"
set black(say.ro.ub.8) "Am scos %msg.1% din lista de banuri a canalului %chan%"
set black(say.ro.ub.9) "Nu exista un asemenea ban in baza de date"
set black(say.ro.ub.10) "%msg.1% a scos ban-ul de pe %chan% de pe hostul %msg.2%."

################################## away ###################################

set black(say.ro.away.1) "Use %char%away <text> / Pentru a sterge away scrie : %char%away off"
set black(say.ro.away.2) "Use %botnick% away <text> / Pentru a sterge away scrie : %botnick% away off"
set black(say.ro.away.3) "Mi-am setat AWAY OFF"
set black(say.ro.away.4) "Mi-am setat ca AWAY :%msg%."

################################## mode ###################################

set black(say.ro.mode.1) "Use : %char%mode <chan> +mode | %char%mode +mode"
set black(say.ro.mode.2) "Use : %botnick% mode <chan> +mode | %botnick% mode +mode"
set black(say.ro.mode.3) "se : %char%mode +mode"
set black(say.ro.mode.4) "Use : %botnick% mode +mode"
set black(say.ro.mode.5) "Use : %char%mode +mode"
set black(say.ro.mode.6) "Am aplicat modurile %msg.1% pe %chan%."


################################### set ###################################


set black(say.ro.set.1) "Use : %char%set <chan> +flag / %char%set <chan> flag 0:0 | %char%set +flag / %char%set flag 0:0"
set black(say.ro.set.2) "Use : %botnick% set <chan> +flag / %botnick% set <chan> flag 0:0 | %botnick% set +flag / %botnick% set flag 0:0"
set black(say.ro.set.3) "Use : %char%set +flag / %char%set flag 0:0"
set black(say.ro.set.4) "Use : %botnick% set +flag / %botnick% set flag 0:0"
set black(say.ro.set.5) "1Nu am putut seta 12 %msg.1%  1pe %chan%."
set black(say.ro.set.6) "1Am setat 12 %msg.1%  1pe %chan%"
set black(say.ro.set.7) "1Nu am putut seta1 12%msg.1% 4 %msg.set%  1pe %chan%."
set black(say.ro.set.8) "1Am setat1 4%msg.1% 12 %msg.set%  1pe %chan%"


#################################### ignore ################################

set black(say.ro.ignore.1) "Use %char%ignore <list> | <add> <host> <time> <reason> | <delete> <host> ."
set black(say.ro.ignore.2) "Use %botnick% ignore <list> | <add> <host> <time> <reason> | <delete> <host> ."
set black(say.ro.ignore.3) "Nu sunt ignoruri date."
set black(say.ro.ignore.4) "12%msg.1% 1de :12%msg.2%1 1motiv :12%msg.6% 1Data expirare :12%msg.3%"
set black(say.ro.ignore.5) "1Eroare.%msg.1% are deja ignore."
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
set black(say.ro.show.6) "4%msg.1% 1este setat la: %msg.8%"



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
set black(say.ro.banlist.7) "1*** NONE ***"
set black(say.ro.banlist.8) "1*** Sfarsit lista ***"
set black(say.ro.banlist.9) "1Lista de banuri globale este urmatoarea :"
set black(say.ro.banlist.10) "12%msg.1% 1de: 12%msg.2% 1Reason : 12%msg.5% 1Expira in : 12%msg.4% 1Creat in data de : 12%msg.3%"
set black(say.ro.banlist.11) "1Lista de banuri pentru %msg.1% (%chan%) este urmatoarea :"
set black(say.ro.banlist.12) "12%msg.1% 1Reason : 12%msg.6% 1Expira in : 12%msg.3% 1Creat in data de : 12%msg.2%"

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

set black(say.ro.delchan.1) "Use : delchan #canal"
set black(say.ro.delchan.2) "%msg.1% nu se afla in memoria mea."
set black(say.ro.delchan.3) "Am sters %msg.1% din lista mea de canale."
set black(say.ro.delchan.4) "Use : %botnick% delchan #canal"

################################### suspend ##################################

set black(say.ro.suspend.1) "Use : suspend #canal"
set black(say.ro.suspend.2) "%msg.1% nu se afla in memoria mea."
set black(say.ro.suspend.3) "%msg.1% are deja suspend"
set black(say.ro.suspend.4) "Am setat suspend pentru canalul %msg.1%"
set black(say.ro.suspend.5) "Use : %botnick% suspend #canal"

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

set black(say.ro.add.1) "Use %char%add <level> <chan> <user1> <user2>.. (Level : voice, op, senior, admin, manager,protect)  | %char%add <level> <user1> <user2>.. (Nivele : voice, op, senior, admin, manager,protect)"
set black(say.ro.add.2) "Use : %botnick% add <level> <chan> <user1> <user2>.. (Level : voice, op, senior, admin, manager,protect)  | %botnick% add <level> <user1> <user2>.. (Nivele : voice, op, senior, admin, manager,protect)"
set black(say.ro.add.3) "Use : %char%add <level> <user1> <user2>.. (Nivele : voice, op, senior, admin, manager,protect)"
set black(say.ro.add.4) "Use : %botnick% add <level> <user1> <user2>.. (Nivele : voice, op, senior, admin, manager,protect)"
set black(say.ro.add.5) "Mai exista un user in baza mea de date cu acelasi host.Acesta este %msg.1%."
set black(say.ro.add.6) "Nu poti da access de manager deoarece acesta este desupra level-ului tau."
set black(say.ro.add.7) "Nu poti da access de admin deoarece acesta este level-ul tau."
set black(say.ro.add.8) "Nu poti da access de manager deoarece acesta este level-ul tau."
set black(say.ro.add.9) "%msg.1% are access de manager pe %chan%."
set black(say.ro.add.10) "Am adaugat user-ul %msg.1% cu host :%msg.2%"
set black(say.ro.add.11) "%msg.1% are access de admin pe %chan%."
set black(say.ro.add.12) "%msg.1% are access de senior pe %chan%."
set black(say.ro.add.13) "%msg.1% are access de op pe %chan%."
set black(say.ro.add.14) "%msg.1% are access de voice pe %chan%."
set black(say.ro.add.15) "%msg.1% are access de protect pe %chan%."
set black(say.ro.add.16) "%msg.1% are access de owner ."

################################### adduser #########################################

set black(say.ro.adduser.1) "Use %char%adduser <level> <chan> <nick1> <nick2>.. (Level : voice, op, senior, admin, manager,protect)  | %char%adduser <level> <nick1> <nick2>.. (Nivele : voice, op, senior, admin, manager,protect)"
set black(say.ro.adduser.2) "Use : %botnick% adduser <level> <chan> <nick1> <nick2>.. (Level : voice, op, senior, admin, manager,protect)  | %botnick% adduser <level> <nick1> <nick2>.. (Nivele : voice, op, senior, admin, manager,protect)"
set black(say.ro.adduser.3) "Use : %char%adduser <level> <nick1> <nick2>.. (Nivele : voice, op, senior, admin, manager,protect)"
set black(say.ro.adduser.4) "Use : %botnick% adduser <level> <nick1> <nick2>.. (Nivele : voice, op, senior, admin, manager,protect)"

################################### delacc #########################################


set black(say.ro.delacc.1) "Use %char%delacc <chan> <user1> <user2>.. | %char%delacc <user1> <user2>.."
set black(say.ro.delacc.2) "Use : %botnick% delacc <chan> <user1> <user2>..  | %botnick% delacc <user1> <user2>.."
set black(say.ro.delacc.3) "Use : %char%delacc <user1> <user2>.."
set black(say.ro.delacc.4) "Use : %botnick% delacc <user1> <user2>.."
set black(say.ro.delacc.5) "Am sters access-ul pentru %msg.1% pe %chan%."

#################################### del ###########################################

set black(say.ro.del.1) "Use : %char%del <user1> <user2>.."
set black(say.ro.del.2) "Use : %botnick% del <user1> <user2>.."
set black(say.ro.del.3) "Am sters %msg.1% din memoria mea."


################################### addhost ########################################

set black(say.ro.addhost.1) "Use : %char%addhost <user1> <host>"
set black(say.ro.addhost.2) "Use : %botnick% addhost <user1> <host>"
set black(say.ro.addhost.3) "%msg.2% exista deja in baza de date a lui %msg.1%."
set black(say.ro.addhost.4) "Am adaugat :%msg.2% la %msg.1%"

################################### delhost ########################################


set black(say.ro.delhost.1) "Use : %char%addhost <user1> <host>"
set black(say.ro.delhost.2) "Use : %botnick% addhost <user1> <host>"
set black(say.ro.delhost.3) "%msg.2% nu exista in baza de date a lui %msg.1%."
set black(say.ro.delhost.4) "Am sters host-ul :%msg.2% de la user-ul :%msg.1%"

################################### chuser ########################################

set black(say.ro.chuser.1) "Use : %char%chuser <user> <newuser>"
set black(say.ro.chuser.2) "Use : %botnick% chuser <user> <newuser>"
set black(say.ro.chuser.3) "Am schimbat user-ul %msg.1% in : %msg.2% ."

################################### userlist ########################################

set black(say.ro.userlist.1) "Use %char%userlist <chan> <all> / <op> / <voice> / <senior> / <admin> / <protect> /  <manager> | %char%userlist <all> / <op> / <voice> / <senior> / <admin> / <protect> /  <manager>"
set black(say.ro.userlist.2) "Use : %botnick% userlist <chan> <all> / <op> / <voice> / <senior> / <admin> / <protect> /  <manager>  | %botnick% userlist <all> / <op> / <voice> / <senior> / <admin> / <protect> /  <manager>"
set black(say.ro.userlist.3) "Use : %char%userlist <all> / <op> / <voice> / <senior> / <admin> / <protect> /  <manager>"
set black(say.ro.userlist.4) "Use : %botnick% userlist <all> / <op> / <voice> / <senior> / <admin> / <protect>"

set black(say.ro.userlist.5) "4Am in memorie 12%msg.1% 4useri cu access de Manager."
set black(say.ro.userlist.6) "4Lista de useri 12Manager 4este urmatoarea.."
set black(say.ro.userlist.7) "12%msg%"
set black(say.ro.userlist.8) "4Am in memorie 12%msg.1% 4useri cu access de Administrator."
set black(say.ro.userlist.9) "4Lista de useri 12Administrator 4este urmatoarea.."
set black(say.ro.userlist.10) "4Am in memorie 12%msg.1% 4useri cu access de Senior."
set black(say.ro.userlist.11) "4Lista de useri 12Senior 4este urmatoarea.."
set black(say.ro.userlist.12) "4Am in memorie 12%msg.1% 4useri cu access de Protect."
set black(say.ro.userlist.13) "4Lista de useri 12Protect 4este urmatoarea.."
set black(say.ro.userlist.14) "4Am in memorie 12%msg.1% 4useri cu access de Op."
set black(say.ro.userlist.15) "4Lista de useri 12Op 4este urmatoarea.."
set black(say.ro.userlist.16) "4BOSS OWNER :12%msg%"
set black(say.ro.userlist.17) "4Lista OWNERI :12%msg%"
set black(say.ro.userlist.18) "4Am in memorie 12%msg.1% 4useri cu access de Voice."
set black(say.ro.userlist.19) "4Lista de useri 12Voice 4este urmatoarea.."
set black(say.ro.userlist.20) "4Am in memorie 12%msg.1% 4useri 4pe %chan%"
set black(say.ro.userlist.21) "4Lista de useri este urmatoarea.."

#################################### channels #####################################

set black(say.ro.channels.1) "Am in memorie %msg.1% canale.."
set black(say.ro.channels.2) "%msg%"


#################################### info ########################################

set black(say.ro.info.1) "Use : %char%info <chan> <user1> | %char%info <user1>"
set black(say.ro.info.2) "Use : %botnick% info <chan> <user1> | %botnick% info <user1>"
set black(say.ro.info.3) ":Use : %char%info <user1>"
set black(say.ro.info.4) "Use : %botnick% info <user1>"
set black(say.ro.info.5) "4Acesta are access pe urmatoarele canale :%msg%"
set black(say.ro.info.6) "4HOSTURI: 1%msg%"
set black(say.ro.info.7) "4Ultima oara vazut ONLINE : 1%msg%"
set black(say.ro.info.8) "4Informatii despre 1%msg.1%"
set black(say.ro.info.9) "4Timpul curent   : 1%msg%"
set black(say.ro.info.10) "suspendat din functie"
set black(say.ro.info.11) "4Nivel de access :1%msg.8% 12(%msg.1%)"
set black(say.ro.info.12) "4Info - 12%msg%"
set black(say.ro.info.13) "4Ultima oara modificat de : 1%msg.1% in data de : 1%msg.8%"
set black(say.ro.info.14) "4Ultima oara vazut ONLINE :1NONE"
set black(say.ro.info.15) "4Pentru a vedea statisticile privind activitatea user-ului %msg.1% tastati - 1%char%activ 4%msg.1% -"
set black(say.ro.info.16) "4Sfarsit informatii.."
set black(say.ro.info.17) "4Ultima oara vazut ONLINE :1%msg%"

################################## s #############################################

set black(say.ro.s.1) "Use %char%s <chan> <user1> | %char%s <user1>"
set black(say.ro.s.2) "Use : %botnick% s <chan> <user1>  | %botnick% s <user1>"
set black(say.ro.s.3) "Use : %char%s <user1>"
set black(say.ro.s.4) "Use : %botnick% s <user1>"
set black(say.ro.s.5) "%msg.1% este deja suspendat pe %chan%."
set black(say.ro.s.6) "I-am suspendat acces-ul lui %msg.1% pe %chan%"


################################## us #############################################

set black(say.ro.us.1) "Use %char%us <chan> <user1> | %char%us <user1>"
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
set black(say.ro.vers.3) "4%msg.1% are ca version : 12%msg.4%"


################################## whois ##########################################

set black(say.ro.whois.1) "Use :%char%whois <nick>"
set black(say.ro.whois.2) "Use :%botnick% whois <nick>"
set black(say.ro.whois.3) "4Informatii despre %msg.1% :%msg.4%"
set black(say.ro.whois.4) "4Se afla pe canalele : 12%msg%"
set black(say.ro.whois.5) "Nu exista un asemenea nick."

################################## clear ##########################################

set black(say.ro.clear.1) "Use %char%clear <chan> <banlist> / <userlist> | %char%clear <banlist> / <userlist>"
set black(say.ro.clear.2) "Use : %botnick% clear <chan> <banlist> / <userlist>  | %botnick% clear <banlist> / <userlist>"
set black(say.ro.clear.3) "Use : %char%clear <banlist> | <userlist>"
set black(say.ro.clear.4) "Use : %botnick% clear <banlist> | <userlist>"
set black(say.ro.clear.5) "Am sters toate accesele dupa %chan%"
set black(say.ro.clear.6) "Am resetat (%msg.1%) banuri pentru %chan%"


################################## addbot #########################################

set black(say.ro.addbot.1) "Use %char%addbot <handle> <host>"
set black(say.ro.addbot.2) "Use %botnick% addbot <handle> <host>"
set black(say.ro.addbot.3) "%msg.1% exista deja in baza mea de date."
set black(say.ro.addbot.4) "Am adaugat bot-ul cu handle : %msg.1% , host : %msg.2%."

################################## addop ##########################################

set black(say.ro.addop.1) "Use %char%addop <chan> <user> | %char%addop <user>"
set black(say.ro.addop.2) "Use : %botnick% addop <chan> <user>  | %botnick% addop <user>"
set black(say.ro.addop.3) "Use : %char%char(p)addop <user>"
set black(say.ro.addop.4) "Use : %botnick% addop <user>"
set black(say.ro.addop.5) "%msg.1% are deja autoop."
set black(say.ro.addop.6) "Am adaugat autoop pentru user-ul %msg.1% pe %chan%."

################################## addvoice ##########################################

set black(say.ro.addvoice.1) "Use %char%addvoice <chan> <user> | %char%addvoice <user>"
set black(say.ro.addvoice.2) "Use : %botnick% addvoice <chan> <user>  | %botnick% addvoice <user>"
set black(say.ro.addvoice.3) "Use : %char%char(p)addvoice <user>"
set black(say.ro.addvoice.4) "Use : %botnick% addvoice <user>"
set black(say.ro.addvoice.5) "%msg.1% are deja autovoice."
set black(say.ro.addvoice.6) "Am adaugat autovoice pentru user-ul %msg.1% pe %chan%."


################################## delvoice ##########################################

set black(say.ro.delvoice.1) "Use %char%delvoice <chan> <user> | %char%delvoice <user>"
set black(say.ro.delvoice.2) "Use : %botnick% delvoice <chan> <user>  | %botnick% delvoice <user>"
set black(say.ro.delvoice.3) "Use : %char%char(p)delvoice <user>"
set black(say.ro.delvoice.4) "Use : %botnick% delvoice <user>"
set black(say.ro.delvoice.5) "%msg.1% nu are autovoice."
set black(say.ro.delvoice.6) "Am sters autovoice pentru user-ul %msg.1% pe %chan%."

################################## delop ##########################################

set black(say.ro.delop.1) "Use %char%delop <chan> <user> | %char%delop <user>"
set black(say.ro.delop.2) "Use : %botnick% delop <chan> <user>  | %botnick% delop <user>"
set black(say.ro.delop.3) "Use : %char%char(p)delop <user>"
set black(say.ro.delop.4) "Use : %botnick% delop <user>"
set black(say.ro.delop.5) "%msg.1% nu are autoop."
set black(say.ro.delop.6) "Am sters autoop pentru user-ul %msg.1% pe %chan%."

################################## activ ##########################################

set black(say.ro.activ.1) "Use %char%activ <chan> <user> | %char%activ <user>"
set black(say.ro.activ.2) "Use : %botnick% activ <chan> <user>  | %botnick% activ <user>"
set black(say.ro.activ.3) "Use : %char%activ <user>"
set black(say.ro.activ.4) "Use : %botnick% activ <user>"
set black(say.ro.activ.5) "4Statisticile privind comenzile folosite de catre 12%msg.1% 4 pe %chan% sunt :"
set black(say.ro.activ.6) "%msg%"
set black(say.ro.activ.7) "4Sfarsit lista.."
set black(say.ro.activ.8) "4Statisticile privind comenzile folosite de catre 12%msg.1% 4avand access de OP sunt :"
set black(say.ro.activ.9) "4Statisticile privind comenzile folosite de catre 12%msg.1% 4avand access de VOICE sunt :"

################################## addmyhost ######################################

set black(say.ro.addmyhost.1) "Use %char%addmyhost <host> ."
set black(say.ro.addmyhost.2) "Use %botnick% addmyhost <host> ."
set black(say.ro.addmyhost.3) "%msg.1% exista deja in baza ta de hosturi."
set black(say.ro.addmyhost.4) "Ti-am adaugat ca host %msg.1%."

################################## delmyhost ######################################

set black(say.ro.delmyhost.1) "Use %char%delmyhost <host> ."
set black(say.ro.delmyhost.2) "Use %botnick% delmyhost <host> ."
set black(say.ro.delmyhost.3) "%msg.1% nu exista in baza ta de hosturi."
set black(say.ro.delmyhost.4) "Ti-am sters host-ul %msg.1%."

################################## cc ############################################

set black(say.ro.cc.1) "Use %char%cc <chan>"
set black(say.ro.cc.2) "Use %botnick% cc <chan>"
set black(say.ro.cc.3) "Canalul a fost creeat in data de :%msg% ."
set black(say.ro.cc.4) "Acest canal nu este creeat.Te rog specifica altul"

################################## stats ##########################################

set black(say.ro.stats.1) "1Canal adaugat de : 12%awho% (%ahost%) 1in data de : 12%atime%"
set black(say.ro.stats.2) "1Canalul este adaugat de : 12%duration%"
set black(say.ro.stats.3) "1Canalul a fost adaugat timp de : 12%duration%"
set black(say.ro.stats.4) "1Canal sters de : 12%rwho% (%rhost%) 1in data de : 12%rtime%"
set black(say.ro.stats.5) "1Deocamdata nu exista statistici pentru %chan%"
set black(say.ro.stats.6) "1Statistici pentru 12%chan% :"
set black(say.ro.stats.7) "%msg%"
set black(say.ro.stats.8) "1Statut canal : 12ONLINE"
set black(say.ro.stats.9) "1Statut canal : 12ONLINE 1(nu sunt pe %chan%)"
set black(say.ro.stats.10) "1Total useri : 12 %msg.1%  (1useri cu OP : 12 %msg.2%  - 1useri cu VOICE : 12 %msg.3% ) - 1Total banuri : 12 %msg.4% "
set black(say.ro.stats.11) "1Sfarsit statistici.."
set black(say.ro.stats.12) "1Statut canal : 12OFFLINE"


################################# login #########################################

set black(say.ro.login.1) "Ma loghez la %msg.1%.."


################################ Top ###########################################

set black(say.ro.top.1) "Use %char%top <chan> <command> / Use %char%top <chan> <words> (Top Words) | %char%top <command> / Use %char%top <words> (Top Words)"
set black(say.ro.top.2) "Comenzile pentru care aveti TOP sunt : <dr>,<bot>, <b>, <bw>, <black>, <spam>, <stick>, <n>, <i>, <w>, <k>, <d>"
set black(say.ro.top.3) "Use : %botnick% top <chan> <command> / Use %botnick% top <chan> <words> (Top Words)  | %botnick% top <command> / Use %botnick% top <words> (Top Words)"
set black(say.ro.top.4) "Comenzile pentru care aveti TOP sunt : <dr>,<bot>, <b>, <bw>, <black>, <spam>, <stick>, <n>, <i>, <w>, <k>, <d>"
set black(say.ro.top.5) "Use : %char%top <command> | Use %char%top <words> (Top Words)"
set black(say.ro.top.6) "Comenzile pentru care aveti TOP sunt : <dr>,<bot>, <b>, <bw>, <black>, <spam>, <stick>, <n>, <i>, <w>, <k>, <d>"
set black(say.ro.top.6) "Use : %botnick% top <command> | Use %botnick% top <words> (Top Words)"
set black(say.ro.top.7) "Use : %botnick% top <command> | Use %botnick% top <words> (Top Words)"
set black(say.ro.top.8) "Comenzile pentru care aveti TOP sunt : <dr>,<bot>, <b>, <bw>, <black>, <spam>, <stick>, <n>, <i>, <w>, <k>, <d>"
set black(say.ro.top.9) "Nu sunt useri in top"
set black(say.ro.top.10) "12Topul 4%char%dr 12pentru %chan% 12este :"
set black(say.ro.top.11) "%msg%"
set black(say.ro.top.12) "12Topul pentru 4%char%b 12este :"
set black(say.ro.top.13) "12Topul pentru 4%char%bot 12este :"
set black(say.ro.top.14) "12Topul pentru 4%char%bw 12este :"
set black(say.ro.top.15) "12Topul pentru 4%char%black 12este :"
set black(say.ro.top.16) "12Topul pentru 4%char%spam 12este :"
set black(say.ro.top.17) "12Topul pentru 4%char%stick 12este :"
set black(say.ro.top.18) "12Topul pentru 4%char%n 12este :"
set black(say.ro.top.19) "12Topul pentru 4%char%i 12este :"
set black(say.ro.top.20) "12Topul pentru 4%char%k 12este :"
set black(say.ro.top.21) "12Topul pentru 4%char%w 12este :"
set black(say.ro.top.22) "12Topul pentru 4%char%d 12este :"
set black(say.ro.top.23) "Modulul de Top nu este activat pe %chan%."
set black(say.ro.top.24) "OK! sterg top-ul de cuvinte..."
set black(say.ro.top.25) "Top-ul %msg.1% al celor mai vorbareti useri este :"



#################################### h ############################################

set black(say.ro.cmdsvoice) "1Comenzi disponibile : 1%char%v <nick> | 4%char%userlist | 1%char%version | 4%char%info <user> | 1%char%addinfo <text> | 4%char%t <topic>"
set black(say.ro.cmdsop) "1Comenzi disponibile : 1%char%v <nick> | 4%char%o <nick> | 1%char%userlist | 4%char%version | 1%char%info <user> | 4%char%ping | 1%char%act <mesaj> | 4%char%addinfo <text> | 1%char%t <topic> | 4%char%l <secunde> | 1%char%ul | 4%char%cycle | 1%char%mode <chanmode> | 4%char%i <nick> | 1%char%vers <nick> | 4%char%whois <nick> | 1%char%cc <canal> | 4%char%time | 1%char%stats .1Comenzi Privat : 1op <chan> <nick> | 4deop <chan> <nick> | 1voice <chan> <nick> | 4devoice <chan> <nick> | 1invite <chan> ."
set black(say.ro.cmdsenior) "1Comenzi disponibile : :1%char%v <nick> | 4%char%o <nick> | 1%char%userlist | 4%char%version | 1%char%info <user> | 4%char%ping | 1%char%act <mesaj> | 4%char%addinfo <text> | 1%char%t <topic> | 4%char%l <secunde> | 1%char%ul | 4%char%cycle | 1%char%mode <chanmode> | 4%char%i <nick> | 1%char%vers <nick> | 4%char%whois <nick> | 1%char%cc <canal> | 4%char%time | 1%char%stats .1Comenzi Privat : 1op <chan> <nick> | 4deop <chan> <nick> | 1voice <chan> <nick> | 4devoice <chan> <nick> | 1invite <chan> ."
set black(say.ro.cmdadmin) "1Comenzi disponibile : : 1%char%v <nick> | 4%char%o <nick> | 1%char%userlist | 4%char%version | 1%char%info <user> | 4%char%ping | 1%char%act <mesaj> | 4%char%addinfo <text> | 1%char%t <topic> | 4%char%l <secunde> | 1%char%ul | 4%char%cycle | 1%char%mode <chanmode> | 4%char%i <nick> | 1%char%vers <nick> | 4%char%whois <nick> | 1%char%cc <canal> | 4%char%time | 1%char%stats .1Comenzi Privat : 1op <chan> <nick> | 4deop <chan> <nick> | 1voice <chan> <nick> | 4devoice <chan> <nick> | 1invite <chan> ."
set black(say.ro.cmdmanager) "1Comenzi disponibile : :1%char%v <nick> | 4%char%o <nick> | 1%char%userlist | 4%char%version | 1%char%info <user> | 4%char%ping | 1%char%act <mesaj> | 4%char%addinfo <text> | 1%char%t <topic> | 4%char%l <secunde> | 1%char%ul | 4%char%cycle | 1%char%mode <chanmode> | 4%char%i <nick> | 1%char%vers <nick> | 4%char%whois <nick> | 1%char%cc <canal> | 4%char%time | 1%char%clear userlist / banlist | 1purge <reason> | 4%char%stats .1Comenzi Privat : 1op <chan> <nick> | 4deop <chan> <nick> | 1voice <chan> <nick> | 4devoice <chan> <nick> | 1invite <chan> ."
set black(say.ro.cmdowner) "1Comenzi disponibile : 1%char%v <nick> | 4%char%o <nick> | 1%char%userlist | 4%char%version | 1%char%info <user> | 4%char%ping | 1%char%act <mesaj> | 4%char%addinfo <text> | 1%char%t <topic> | 4%char%l <secunde> | 1%char%ul | 4%char%cycle | 1%char%mode <chanmode> | 4%char%i <nick> | 1%char%vers <nick> | 4%char%whois <nick> | 1%char%cc <canal> | 4%char%time 1%char%clear userlist / banlist | 4%char%stats <chan> .1Comenzi Privat : 1op <chan> <nick> | 4deop <chan> <nick> | 1voice <chan> <nick> | 4devoice <chan> <nick> | 1invite <chan> ."
set black(say.ro.cmdbossowner) "1Comenzi disponibile : 1%char%v <nick> | 4%char%o <nick> | 1%char%userlist | 4%char%version | 1%char%info <user> | 4%char%ping | 1%char%act <mesaj> | 4%char%addinfo <text> | 1%char%t <topic> | 4%char%l <secunde> | 1%char%ul | 4%char%cycle | 1%char%mode <chanmode> | 4%char%i <nick> | 1%char%vers <nick> | 4%char%whois <nick> | 1%char%cc <canal> | 4%char%time | 1%char%clear userlist / banlist | 4%char%stats <chan> .1Comenzi Privat : 1op <chan> <nick> | 4deop <chan> <nick> | 1voice <chan> <nick> | 4devoice <chan> <nick> | 1invite <chan> ."

set black(say.ro.banvoice) "1Comenzi disponibile : 1%char%k <nick> | 4%char%w <nick> | 1%char%check <nick> | 4%char%sb <host>"
set black(say.ro.banop) "1Comenzi disponibile : 1%char%k <nick> | 4%char%w <nick> | 1%char%check <nick> | 4%char%sb <host> | 1%char%id <nick> | 4%char%n <nick> | 1%char%spam <nick> | 4%char%dr <nick> | 1%char%b <nick>/<host> <timp> <motiv> | 4%char%bot <nick>/<host> | 1%char%bw <nick>/<host> | 4%char%ub <host> | 1%char%gag <nick> | 4%char%banlist <user>."
set black(say.ro.bansenior) "1Comenzi disponibile : 1%char%k <nick> | 4%char%w <nick> | 1%char%check <nick> | 4%char%sb <host> | 1%char%id <nick> | 4%char%n <nick> | 1%char%spam <nick> | 4%char%dr <nick> | 1%char%b <nick>/<host> <timp> <motiv> | 4%char%ub <host> | 1%char%d <nr zile> <nick> / <host> <reason> | 4%char%bot <nick>/<host> | 1%char%bw <nick>/<host> | 4%char%black <host> / <nick> <reason> | 1%char%stick <nick> / <host> <timp> <motiv> | 4%char%gag <nick> | 1%char%banlist <user> ."
set black(say.ro.banadmin) "1Comenzi disponibile : 1%char%k <nick> | 4%char%w <nick> | 1%char%check <nick> | 4%char%sb <host> | 1%char%id <nick> | 4%char%n <nick> | 1%char%spam <nick> | 4%char%dr <nick> | 1%char%b <nick>/<host> <timp> <motiv> | 4%char%ub <host> | 1%char%d <nr zile> <nick> / <host> <reason> | 4%char%bot <nick>/<host> | 1%char%bw <nick>/<host> | 4%char%black <host> / <nick> <reason> | 1%char%stick <nick> / <host> <timp> <motiv> | 4%char%gag <nick> | 1%char%banlist <user> ."
set black(say.ro.banmanager) "1Comenzi disponibile : 1%char%k <nick> | 4%char%w <nick> | 1%char%check <nick> | 4%char%sb <host> | 1%char%id <nick> | 4%char%n <nick> | 1%char%spam <nick> | 4%char%dr <nick> | 1%char%b <nick>/<host> <timp> <motiv> | 4%char%ub <host> | 1%char%d <nr zile> <nick> / <host> <reason> | 4%char%bot <nick>/<host> | 1%char%bw <nick>/<host> | 4%char%black <host> / <nick> <reason> | 1%char%stick <nick> / <host> <timp> <motiv> | 4%char%gag <nick> | 1%char%banlist <user>."
set black(say.ro.banowner) "1Comenzi disponibile : 1%char%k <nick> | 4%char%w <nick> | 1%char%check <nick> | 4%char%sb <host> | 1%char%id <nick> | 4%char%n <nick> | 1%char%spam <nick> | 4%char%dr <nick> | 1%char%b <nick>/<host> <timp> <motiv> | 4%char%ub <host> | 1%char%d <nr zile> <nick> / <host> <reason> | 4%char%bot <nick>/<host> | 1%char%bw <nick>/<host> | 4%char%black <host> / <nick> <reason> | 1%char%stick <nick> / <host> <timp> <motiv> | 4%char%gag <nick> | 1%char%banlist <user> .1Comenzi pentru ban global : 4%char%b <nick> / <host> <timp> global <motiv> | 1%char%sb <*!*@ban> global | 4%char%ub <*!*@ban> global | 1%char%banlist <global> ."
set black(say.ro.banbossowner) "1Comenzi disponibile : 1%char%k <nick> | 4%char%w <nick> | 1%char%check <nick> | 4%char%sb <host> | 1%char%id <nick> | 4%char%n <nick> | 1%char%spam <nick> | 4%char%dr <nick> | 1%char%b <nick>/<host> <timp> <motiv> | 4%char%ub <host> | 1%char%d <nr zile> <nick> / <host> <reason> | 4%char%bot <nick>/<host> | 1%char%bw <nick>/<host> | 4%char%black <host> / <nick> <reason> | 1%char%stick <nick> / <host> <timp> <motiv> | 4%char%gag <nick> | 1%char%banlist <user> .1Comenzi pentru ban global : 4%char%b <nick> / <host> <timp> global <motiv> | 1%char%sb <*!*@ban> global | 4%char%ub <*!*@ban> global | 1%char%banlist <global> ."

set black(say.ro.addadmin) "1Comenzi disponibile : 1%char%add <nivel> <user> 4(nivel= protect,voice,op,senior) | 1%char%adduser <nivel> <nick> 4(nivel= protect,voice,op,senior) | 1%char%delacc <user> ."
set black(say.ro.addmanager) "1Comenzi disponibile : 1%char%add <nivel> <user> 4(nivel= protect,voice,op,senior,admin) | 1%char%adduser <nivel> <nick> 4(nivel= protect,voice,op,senior,admin) | 1%char%delacc <user> | 1%char%del <user>."
set black(say.ro.addowner) "1Comenzi disponibile : 1%char%add <nivel> <user> 4(nivel= protect,voice,op,senior,admin,manager) | 1%char%adduser <nivel> <nick> 4(nivel= protect,voice,op,senior,admin,manager) | 1%char%delacc <user>"
set black(say.ro.addbossowner) "1Comenzi disponibile : 1%char%add <nivel> <user> 4(nivel= protect,voice,op,senior,admin,manager,owner) | 1%char%adduser <nivel> <nick> 4(nivel= protect,voice,op,senior,admin,manager,owner) | 1%char%delacc <user> | 1%char%del <user>."

set black(say.ro.modifadmin) "1Comenzi disponibile : 1%char%s <user> | 4%char%us <user> | 4%char%addvoice <user> | 1%char%delvoice <user> | 4%char%addop <user> | 1%char%delop <user> ."
set black(say.ro.modifmanager) "1Comenzi disponibile : 1%char%addhost <user> <host> | 4%char%chuser <user> <newuser> | 1%char%s <user> | 4%char%us <user> | 1%char%delhost <user> <host> | 4%char%addvoice <user> | 1%char%delvoice <user> | 4%char%addop <user> | 1%char%delop <user> ."
set black(say.ro.modifowner) "1Comenzi disponibile : 1%char%addhost <user> <host> | 4%char%chuser <user> <newuser> | 1%char%s <user> | 4%char%us <user> | 1%char%delhost <user> <host> | 4%char%addvoice <user> | 1%char%delvoice <user> | 4%char%addop <user> | 1%char%delop <user> | 4%char%addmyhost <host> 1(iti adaugi un host) | 1%char%delmyhost <host> 1(iti stergi un host)"
set black(say.ro.modifbossowner) "1Comenzi disponibile : 1%char%addhost <user> <host> | 4%char%chuser <user> <newuser> | 1%char%s <user> | 4%char%us <user> | 1%char%delhost <user> <host> | 4%char%addvoice <user> | 1%char%delvoice <user> | 4%char%addop <user> | 1%char%delop <user> | 4%char%addmyhost <host> 1(iti adaugi un host) | 1%char%delmyhost <host> 1(iti stergi un host)"
set black(say.ro.howner) "1Comenzi Privat : 1nick <newnick> | 4restart | 1rehash | 4die | 1suspend / unsuspend <canal> | 4delchan <canal> | 1addchan <canal> | 4save . Comenzi publice : 1%char%status | 4%char%uptime | 1%char%set +/-flag / %char%set flag number:number | 4%char%away <text> | 1%char%silence on/off | 4%char%jump <server> | 1%char%msg <nick/chan> <text> | 4%char%broadcast <text>  | 1%char%addbot <name> <host> | 4%char%ignore <list> | <add> <host> <time> <reason> | <delete> <host> | 1%char%chat 12(DCC-CHAT) | 4%char%login | 1%char%channels."

#################################### top #########################################

set black(say.ro.htop) "1Bun Venit 4%msg.1% 1in sectiunea TOP. 1Aici gasesti statisticile fiecarei comenzi folosite de catre useri ordonate intr-un TOP .Comenzile care au disponibil un TOP sunt 4<dr> | <b> | <bw> | <bot> | <black> | <spam> | <stick> | <n> | <i> | <w> | <k> | <d>. 1Foloseste 4%char%top <comanda> 1(spre exemplu %char%top dr).Poti viziona si activitatea totala a unui user prin intermediul comenzii 4%char%activ <user>."

#################################### chaninfo #####################################

set black(say.ro.hchaninfo.1) "1Aveti la dispozitie urmatoarele categorii de setari pentru %chan% :"
set black(say.ro.hchaninfo.2) "4blacktools          <  - >          4standard"
set black(say.ro.hchaninfo.3) "1Categoria 4blacktools 1contine : 1Protectiile interne ale scriptului BlackTools"
set black(say.ro.hchaninfo.4) "1Categoria 4standard 1contine : 1setarile interne standard ale Eggdrop-ului"
set black(say.ro.hchaninfo.5) "1Pentru a selecta categoria foloseste : 12%char%h <categorie> | %botnick% h <categorie>"

################################### blacktools ###################################

set black(say.ro.hblacktools.1) "1Protectii Disponibile : %msg%"
set black(say.ro.hblacktools.2) "1Pentru a activa protectiile folositi urmatoarea comanda : 4%char%set +flag ( ex : %char%set +antipub | %botnick% set +antipub ) 1Desigur aveti la dispozitie si comanda 4%char%secure on / off 1ce va permite sa activati / dezactivati toate protectiile."


#################################### standard ####################################

set black(say.ro.hstandard.1) "1Setarile interne ale eggdrop-ului sunt urmatoarele :"
set black(say.ro.hstandard.2) "1Pentru a putea modifica setarile folositi urmatoarea comanda :4%char%set +flag ( ex : %char%set +dontkickops | %char%set flood-chan 0:0 )"
set black(say.ro.hstandard.3) "%msg%"

################################### module #######################################

set black(say.ro.hmodule.1) "1Aveti urmatoarele module la dispozitie : 4TopicRefresh | 1Count | 4XtoolS | 1BadChan | 4Anunt | 1Limit | 4Topic | 1CloneScan | 4Seen | 1Greet | 4Leave | 1Idle | 4ChanReport | 1TopWords | 4Xban | 1AntiTake | 4Private | 1AutoBroadcast | 4AntiBotIdle | 1Language | 4BadWord."
set black(say.ro.hmodule.2) "1Aveti urmatoarele module la dispozitie : 4TopicRefresh | 1Count | 4XtoolS | 1BadChan | 4Anunt | 1Limit | 4Topic | 1CloneScan | 4Seen | 1Greet | 4Leave | 1Idle | 4TopWords | 1Xban | 4AntiTake | 1Private | 4Language | 1BadWord."
set black(say.ro.hmodule.3) "1Pentru a putea vizualiza detalii despre module precum si metodele de activare utilizati comanda 4%char%h <modul>4 1( ex: %char%h language )"


####################################### h ########################################

set black(say.ro.h.1) "NIVEL ACCESS 12-= BOSS OWNER =-"
set black(say.ro.h.2) "Poti folosi: 1%char%h cmds | 4%char%h top | 1%char%h ban | 4%char%h add | 1%char%h modif | 4%char%h chaninfo | 1%char%h module | 4%char%h extra | 1%char%h owner ."
set black(say.ro.h.3) "NIVEL ACCESS 12-= OWNER =-"
set black(say.ro.h.4) "Poti folosi: 1%char%h cmds | 4%char%h top | 1%char%h ban | 4%char%h add | 1%char%h modif | 4%char%h chaninfo | 1%char%h module | 4%char%h extra | 1%char%h owner ."
set black(say.ro.h.5) "NIVEL ACCESS 12-= VOICE =-"
set black(say.ro.h.6) "Poti folosi: 12%char%h cmds | 4%char%h top "
set black(say.ro.h.7) "NIVEL ACCESS 12-= OP =-"
set black(say.ro.h.8) "Poti folosi: 1%char%h cmds | 4%char%h top | 1%char%h ban"
set black(say.ro.h.9) "NIVEL ACCESS 12-= SENIOR =-"
set black(say.ro.h.10) "Poti folosi: 1%char%h cmds | 4%char%h top | 1%char%h ban"
set black(say.ro.h.11) "NIVEL ACCESS 12-= ADMINISTRATOR =-"
set black(say.ro.h.12) "Poti folosi: 1%char%h cmds | 4%char%h top | 1%char%h ban | 4%char%h add | 1%char%h modif"
set black(say.ro.h.13) "NIVEL ACCESS 12-= MANAGER =-"
set black(say.ro.h.14) "Poti folosi: 1%char%h cmds | 4%char%h top | 1%char%h ban | 4%char%h add | 1%char%h modif | 4%char%h chaninfo | 1%char%h module | 4%char%h extra ."
set black(say.ro.h.15) "%msg%"

###################################### antitake ##################################

set black(say.ro.hantitake.1) "1Reprezinta un modul care are doua componente: Prima avand functia de protejare impotriva celor care nu au access la Eggdrop si dau DEOP iar cea de-a doua pentru cei care nu au access la Eggdrop si dau OP."
set black(say.ro.hantitake.2) "1Pentru activare / dezactivare a primei componente folositi : 4%char%set +dontdeop | %char%set -dontdeop"
set black(say.ro.hantitake.3) "1Pentru activare / dezactivare a celei de-a doua componente folositi : 4%char%set +dontop | %char%set -dontop"
set black(say.ro.hantitake.4) "1Pentru protectie cu privire la modurile canalului aveti urmatoarea comanda : 4%char%set chanmode +mode 12(ex: +nt , +stn)"

###################################### private ####################################

set black(say.ro.hprivate.1) "1Reprezinta un modul care odata activat nu va lasa pe cei fara access la Eggdrop sa dea join pe canal."
set black(say.ro.hprivate.2) "1Puteti utiliza comenzile : 4%char%private <on>/<off> | <add> <nume> <host> | <list> | <del> <nume> - %botnick% private <on>/<off> | <add> <nume> <host> | <list> | <del> <nume>"


###################################### language ##################################

set black(say.ro.hlanguage.1) "1Reprezinta un modul care va seta limba motivelor de kick/ban. Aveti la dispozitie 2 limbi : 4RO | EN"
set black(say.ro.hlanguage.2) "1Pentru setarea limbii se utilizeaza urmatoarea comanda : 4%char%set lang <limba> (1RO | EN) 12(ex: %char%set lang EN)"
set black(say.ro.hlanguage.3) "1Motivele setate predefinit nu vor fii schimbate :)"

###################################### xban #######################################

set black(say.ro.hxban.1) "1Reprezinta un modul care odata activat va face ca eggdrop-ul la fiecare ban aplicat de acesta sa il adauge si la chanserv pe un anumit timp si cu acelasi motiv.1"
set black(say.ro.hxban.2) "1Pentru activare / dezactivare / setare utilizati : 4%char%set +xban | %char%set -xban | %char%set xbantime <numar> 1(timp banare la chanserv in ore. Default este 1) | 1%char%set xbanlevel <nivel> 1(nivel banare la chanserv.Default este 100)."
set black(say.ro.hxban.3) "1In acest moment setarile sunt: 4xbantime = %msg.1% | xbanlevel = %msg.2%"

#################################### topicrefresh #################################

set black(say.ro.htopicrefresh.1) "1Reprezinta un modul care odata activat la un interval de timp (setat in script) v-a reimprospata Topic-ul pentru a evita pierderea lui."
set black(say.ro.htopicrefresh.2) "1Pentru activare / dezactivare utilizati : 4%char%set +topicrefresh / -topicrefresh | %botnick% set +topicrefresh / -topicrefresh"

#################################### count #######################################

set black(say.ro.hcount.1) "1Reprezinta un modul care odata activat va retine numarul celor care viziteaza canalul.De asemenea afiseaza la /join un mesaj continand numarul corespunzator vizitatorului."
set black(say.ro.hcount.2) "1Pentru activare / dezactivare utilizati : 4%char%count <on> | <off> | <display> | <reset> - %botnick% count <on> | <off> | <display> | <reset>"

#################################### xtools ######################################

set black(say.ro.hxtools.1) "1Reprezinta un modul care odata activat va avea grija ca Eggdrop-ul sa isi i-a op de la chanserv, sa isi dea unban,invite."
set black(say.ro.hxtools.2) "1Pentru activare / dezactivare utilizati :1 4%char%set +xtools / -xtools | %botnick% set +xtools / -xtools"

#################################### badchan #####################################

set black(say.ro.hbadchan.1) "1Reprezinta un modul care odata activat va bana persoanele care intra pe canal si se afla pe canalele adaugate ca fiind interzise."
set black(say.ro.hbadchan.2) "1Pentru activare / dezactivare / adaugare canale utilizati : 4%char%badchan  <on> | <off> | <add> <#chan> | <list> | <del> <numar> - %botnick% badchan  <on> | <off> | <add> <#chan> | <list> | <del> <numar>"

#################################### anunt #######################################

set black(say.ro.hanunt.1) "1Reprezinta un modul care odata activat va da anunturi pe canal odata la un interval de timp (setat in script.Default este %msg.1%)"
set black(say.ro.hanunt.2) "1Pentru activare / dezactivare / adaugare anunturi utilizati : 4%char%anunt <on> | <off> | <add> <mesaj> | <list> | <del> <numar> - %botnick% anunt <on> | <off> | <add> <mesaj> | <list> | <del> <numar>"

#################################### autobroadcast ###############################

set black(say.ro.hautobroadcast.1) "1Reprezinta un modul care odata activat va da mesaje pe toate canalele eggdrop-ului odata la un interval de timp (setat in script.Default este %msg.1%)"
set black(say.ro.hautobroadcast.2) "1Pentru activare / dezactivare / adaugare mesaje utilizati : 4%char%bt <on> | <off> | <add> <mesaj> | <list> | <del> <numar> - %botnick% bt <on> | <off> | <add> <mesaj> | <list> | <del> <numar>"
set black(say.ro.hautobroadcast.3) "4NEW ! 1Acum puteti seta canalele unde nu doriti ca eggdrop-ul dumneavoastra sa dea broadcast cu comanda 4%char%set <chan> +silent / -silent"

################################### antibotidle ###################################

set black(say.ro.hantibotidle.1) "1Reprezinta un modul care odata activat nu va lasa eggdrop-ul sa faca IDLE.Acest modul este bazat pe trimiterea unui mesaj catre un obiect inexistent."
set black(say.ro.hantibotidle.2) "1Pentru activare / dezactivare utilizati :4%char%botidle <on> | <off> | 1(Idle maxim este setat in script la %msg.1%)"

################################### limit ########################################

set black(say.ro.hlimit.1) "1Reprezinta un modul care odata activat va avea grija de limita canalului sa nu depaseasca valoarea setata"
set black(say.ro.hlimit.2) "1Pentru activare / dezactivare : 4%char%limit <on> | <set> <number> | <off> - %botnick% limit <on> | <set> <number> | <off>"

################################### topic ########################################

set black(say.ro.htopic.1) "1Reprezinta un modul care va ajuta sa salvati , adaugati topic-uri intr-o lista a canalului.Din acea lista putand seta orice topic."
set black(say.ro.htopic.2) "1Pentru adaugare / eliminare utilizati : 4%char%topic <save> | <list> | <add> | <del> <number> | set <number> - %botnick% topic <save> | <list> | <add> | <del> <number> | set <number>"

################################### seen ########################################

set black(say.ro.hseen.1) "1Reprezinta un modul care odata activat va salva inregistrari cu join/part/quit/netsplit/nickchange a userilor de pe acel canal.Are o baza de date pentru fiecare canal."
set black(say.ro.hseen.2) "1Pentru activare / dezactivare utilizati : 4%char%set +seen | %char%set -seen - %botnick% set +seen | %botnick% set -seen"

################################### clonescan ########################################

set black(say.ro.hclonescan.1) "1Reprezinta un modul care odata activat la un interval de timp va scana canalul de clone.Puteti alege din script metoda de actionare in caz ca se gasesc clone."
set black(say.ro.hclonescan.2) "1Pentru activare / dezactivare utilizati :1 4%char%set +clonescan / -clonescan | %botnick% set +clonescan / -clonescan"
set black(say.ro.hclonescan.3) "1Aveti la dispozitie si o comanda de scanare manual : 4%char%clonescan 1iar Eggdrop-ul va va afisa host + nick la clone."

################################### greet ########################################

set black(say.ro.hgreet.1) "1Reprezinta un modul prin care puteti adauga mesaje catre userii care dau join pe canal."
set black(say.ro.hgreet.2) "1Pentru activare / dezactivare / adaugare mesaje utilizati : 4%char%greet <on> | <off> | <add> | <list> | <del> - %botnick% greet <on> | <off> | <add> | <list> | <del>"

################################## leave #########################################

set black(say.ro.hleave.1) "1Reprezinta un modul prin care puteti adauga mesaje catre userii care dau part la canal."
set black(say.ro.hleave.2) "1Pentru activare / dezactivare / adaugare mesaje utilizati : 4%char%leave <on> | <off> | <add> | <list> | <del> - %botnick% leave <on> | <off> | <add> | <list> | <del>"

################################## idle ##########################################

set black(say.ro.hidle.1) "1Reprezinta un modul care odata activat nu va lasa pe userii cu idle sa aibe @/+"
set black(say.ro.hidle.2) "1Pentru activare / dezactivare / configurare utilizati : 4%char%idle <on> | <off> | voice <on>/<off> | op <on>/<off> | add <nick> (adaugi exceptii)  - %botnick% idle <on> | <off> | voice <on>/<off> | op <on>/<off> | add <nick> (adaugi exceptii)"

################################## chanreport ####################################

set black(say.ro.hchanreport.1) "1Reprezinta un modul care odata activat da posibilitatea ca fiecare canal sa aibe un backchan,in care eggdrop-ul va anunta banurile date de catre acesta pe canalul principal.1"
set black(say.ro.hchanreport.2) "1Pentru activare / dezactivare utilizati : 4%char%set +chanreport | -chanreport | %botnick% set +chanreport | -chanreport .1Pentru setarea backchannel utilizati : 4%char%set backchan #canal | %botnick% set backchan #canal."
set black(say.ro.hchanreport.3) "1Odata cu setarea canalului backchan puteti folosii pe acesta toate 12comenzile de ban 1iar acestea vor 12fii aplicate pe mainchan 1(canalul principal)."

############################### BadWord ########################################

set black(say.ro.hbadword.1) "1Reprezinta un modul prin care puteti adauga cuvinte interzise pentru protectia AntiBadWord."
set black(say.ro.hbadword.2) "1Pentru activare / dezactivare / adaugare cuvinte utilizati : 4%char%set +antibadword / -antibadword  | %char%badword <add> <* cuvant *> | <list> | <del> <numar> - %botnick% set +antibadword / -antibadword | <add> <* cuvant *> | <list> | <del> <numar>"


################################## topwords ####################################

set black(say.ro.htopwords.1) "1Reprezinta un modul care odata activat va inregistra activitatea userilor de pe chan (numarul de cuvinte scrise)."
set black(say.ro.htopwords.2) "1Pentru activare / dezactivare utilizati : 4%char%set +topwords | -topwords | %botnick% set +topwords | -topwords .1Pentru vizualizarea top-ului 20 al celor mai vorbareti useri utilizati :4%char%top words."
set black(say.ro.htopwords.3) "1Pentru resetarea top-ului de cuvinte utilizati urmatoarea comanda : 4%char%top words erase ."

################################## settings ####################################

set black(say.ro.hsettings.1) "1Bine ai venit in sectiunea settings ! De aici va puteti configura caracteristicile comenziilor / protectiilor (mesajele de kick - bantime) disponbile in BLaCkToolS. Lista este urmatoarea.."
set black(say.ro.hsettings.2) "12COMENZI : 4dr | 1n | 4id | 1w | 4spam | 1bw | 4bot."
set black(say.ro.hsettings.3) "12MODULE : 4badchannel | 1counter | 4privat | 1antidle."
set black(say.ro.hsettings.4) "12PROTECTII : 4antipub | 1antinotice | 4antictcp | 1antibadword | 4antilongtext | 1antibadquitpart | 4antijoinpart | 1antispam | 4antirepeat | 1anticolor | 4antibold | 1antiunderline | 4anticaps | 1badfullname | 4badnick | 1badident | 4antichanflood | 1antijoinflood ."
set black(say.ro.hsettings.5) "1Pentru vizualizare caracteristici comenzi / protectii / module utilizati comanda 4%char%h <nume> 12( ex: %char%h antipub | %char%h dr )"
set black(say.ro.hsettings.6) "1Pentru resetarea totala a motivelor & timpurilor de ban pentru acest canal utilizati comanda : 4%char%reset <all>."

################################## reason ####################################

set black(say.ro.hreason.1) "1Setarile referitoare la motiv sunt urmatoarele :"
set black(say.ro.hreason.2) "1%msg.1% 4%msg.2% 1%msg.3%"
set black(say.ro.hreason.3) "12showtime - 1va pune la motivul de kick cat a mai ramas din durata banului."
set black(say.ro.hreason.4) "12showhandle - 1va pune la motivul de kick numele celui care a dat banul (valabil pentru comenzi)."
set black(say.ro.hreason.5) "12showcount - 1va pune la motivul de kick numaratoarea banurilor pentru acel canal."
set black(say.ro.hreason.6) "1Pentru a putea modifica setarile folositi urmatoarea comanda :%char%set +flag ( ex : %char%set +showhandle | %char%set -showhandle )"

################################# extra ######################################

set black(say.ro.hextra.1) "1Aveti la dispozitie urmatoarele categorii de setari pentru %chan% :"
set black(say.ro.hextra.2) "4settings         < - >         4reason"
set black(say.ro.hextra.3) "1Categoria 4settings 1contine :1Setarile standard ale comenzilor & protectii & module (setari motive / bantime)1"
set black(say.ro.hextra.4) "1Categoria 4reason 1contine :1Setarile in ceea ce priveste afisarea nr banurilor date, numele celui ce a dat banul si perioada ramasa pana expira respectivul ban."
set black(say.ro.hextra.5) "1Pentru a selecta categoria foloseste : 12%char%h <categorie> | %botnick% h <categorie>"

################################# antipub ######################################

set black(say.ro.hantipub.1) "1Aveti la dispozitie urmatoarele optiuni : 4antipub-reason | antipub-bantime ."
set black(say.ro.hantipub.2) "1Pentru setarea optiunilor folositi : 4%char%set antipub-reason <motiv> | %char%set antipub-bantime <minute> ."
set black(say.ro.hantipub.3) "1Pentru a vizualiza daca optiunea este setata folositi comanda : 4%char%show antipub-reason | %char%show antipub-bantime ."

################################# privat ######################################

set black(say.ro.hprivat.1) "1Aveti la dispozitie urmatoarele optiuni : 4private-reason | private-bantime ."
set black(say.ro.hprivat.2) "1Pentru setarea optiunilor folositi : 4%char%set private-reason <motiv> | %char%set private-bantime <minute> ."
set black(say.ro.hprivat.3) "1Pentru a vizualiza daca optiunea este setata folositi comanda : 4%char%show private-reason | %char%show private-bantime ."


################################# antidle ######################################

set black(say.ro.hantidle.1) "1Aveti la dispozitie urmatoarele optiuni : 4idleopmax | idlevoicemax ."
set black(say.ro.hantidle.2) "1Pentru setarea optiunilor folositi : 4%char%set idleopmax <minute> | %char%set idlevoicemax <minute> ."
set black(say.ro.hantidle.3) "1Pentru a vizualiza daca optiunea este setata folositi comanda : 4%char%show idleopmax | %char%show idlevoicemax ."

################################# antinotice ######################################

set black(say.ro.hantinotice.1) "1Aveti la dispozitie urmatoarele optiuni : 4antinotice-reason | antinotice-bantime ."
set black(say.ro.hantinotice.2) "1Pentru setarea optiunilor folositi : 4%char%set antinotice-reason <motiv> | %char%set antinotice-bantime <minute> ."
set black(say.ro.hantinotice.3) "1Pentru a vizualiza daca optiunea este setata folositi comanda : 4%char%show antinotice-reason | %char%show antinotice-bantime ."

################################# antictcp ######################################

set black(say.ro.hantictcp.1) "1Aveti la dispozitie urmatoarele optiuni : 4antictcp-reason | antictcp-bantime ."
set black(say.ro.hantictcp.2) "1Pentru setarea optiunilor folositi : 4%char%set antictcp-reason <motiv> | %char%set antictcp-bantime <minute> ."
set black(say.ro.hantictcp.3) "1Pentru a vizualiza daca optiunea este setata folositi comanda : 4%char%show antictcp-reason | %char%show antictcp-bantime ."  


################################# antibadword ######################################

set black(say.ro.hantibadword.1) "1Aveti la dispozitie urmatoarele optiuni : 4antibadword-reason | antibadword-bantime ."
set black(say.ro.hantibadword.2) "1Pentru setarea optiunilor folositi : 4%char%set antibadword-reason <motiv> | %char%set antibadword-bantime <minute> ."
set black(say.ro.hantibadword.3) "1Pentru a vizualiza daca optiunea este setata folositi comanda : 4%char%show antibadword-reason | %char%show antibadword-bantime ."  

################################# antilongtext ######################################

set black(say.ro.hantilongtext.1) "1Aveti la dispozitie urmatoarele optiuni : 4antilongtext-reason | antilongtext-bantime | antilongtextmax"
set black(say.ro.hantilongtext.2) "1Pentru setarea optiunilor folositi : 4%char%set antilongtext-reason <motiv> | %char%set antilongtext-bantime <minute> | %char%set antilongtextmax <nr. char>"
set black(say.ro.hantilongtext.3) "1Pentru a vizualiza daca optiunea este setata folositi comanda : 4%char%show antilongtext-reason | %char%show antilongtext-bantime ."  

################################# antibadquitpart ######################################

set black(say.ro.hantibadquitpart.1) "1Aveti la dispozitie urmatoarele optiuni : 4antibadquitpart-reason | antibadquitpart-bantime ."
set black(say.ro.hantibadquitpart.2) "1Pentru setarea optiunilor folositi : 4%char%set antibadquitpart-reason <motiv> | %char%set antibadquitpart-bantime <minute> ."
set black(say.ro.hantibadquitpart.3) "1Pentru a vizualiza daca optiunea este setata folositi comanda : 4%char%show antibadquitpart-reason | %char%show antibadquitpart-bantime ."

################################# antijoinpart ######################################

set black(say.ro.hantijoinpart.1) "1Aveti la dispozitie urmatoarele optiuni : 4antijoinpart-reason | antijoinpart-bantime ."
set black(say.ro.hantijoinpart.2) "1Pentru setarea optiunilor folositi : 4%char%set antijoinpart-reason <motiv> | %char%set antijoinpart-bantime <minute> ."
set black(say.ro.hantijoinpart.3) "1Pentru a vizualiza daca optiunea este setata folositi comanda : 4%char%show antijoinpart-reason | %char%show antijoinpart-bantime ."  

################################# antispam ######################################

set black(say.ro.hantispam.1) "1Aveti la dispozitie urmatoarele optiuni : 4antispam-reason | antispam-bantime ."
set black(say.ro.hantispam.2) "1Pentru setarea optiunilor folositi : 4%char%set antispam-reason <motiv> | %char%set antispam-bantime <minute> ."
set black(say.ro.hantispam.3) "1Pentru a vizualiza daca optiunea este setata folositi comanda : 4%char%show antispam-reason | %char%show antispam-bantime ."  

################################# antirepeat ######################################

set black(say.ro.hantirepeat.1) "1Aveti la dispozitie urmatoarele optiuni : 4antirepeat-reason | antirepeat-bantime | antirepeat-setting ."
set black(say.ro.hantirepeat.2) "1Pentru setarea optiunilor folositi : 4%char%set antirepeat-reason <motiv> | %char%set antirepeat-bantime <minute> | %char%set antirepeat-setting <repetari>:<secunde> ."
set black(say.ro.hantirepeat.3) "1Pentru a vizualiza daca optiunea este setata folositi comanda : 4%char%show antirepeat-reason | %char%show antirepeat-bantime | antirepeat-setting ."

################################# anticolor ######################################

set black(say.ro.hanticolor.1) "1Aveti la dispozitie urmatoarele optiuni : 4anticolor-reason | anticolor-bantime ."
set black(say.ro.hanticolor.2) "1Pentru setarea optiunilor folositi : 4%char%set anticolor-reason <motiv> | %char%set anticolor-bantime <minute> ."
set black(say.ro.hanticolor.3) "1Pentru a vizualiza daca optiunea este setata folositi comanda : 4%char%show anticolor-reason | %char%show anticolor-bantime ."  

################################# antibold ######################################

set black(say.ro.hantibold.1) "1Aveti la dispozitie urmatoarele optiuni : 4antibold-reason | antibold-bantime ."
set black(say.ro.hantibold.2) "1Pentru setarea optiunilor folositi : 4%char%set antibold-reason <motiv> | %char%set antibold-bantime <minute> ."
set black(say.ro.hantibold.3) "1Pentru a vizualiza daca optiunea este setata folositi comanda : 4%char%show antibold-reason | %char%show antibold-bantime ."


################################# antiunderline ######################################

set black(say.ro.hantiunderline.1) "1Aveti la dispozitie urmatoarele optiuni : 4antiunderline-reason | antiunderline-bantime ."
set black(say.ro.hantiunderline.2) "1Pentru setarea optiunilor folositi : 4%char%set antiunderline-reason <motiv> | %char%set antiunderline-bantime <minute> ."
set black(say.ro.hantiunderline.3) "1Pentru a vizualiza daca optiunea este setata folositi comanda : 4%char%show antiunderline-reason | %char%show antiunderline-bantime ."  

################################# anticaps ######################################

set black(say.ro.hanticaps.1) "1Aveti la dispozitie urmatoarele optiuni : 4anticaps-reason | anticaps-bantime ."
set black(say.ro.hanticaps.2) "1Pentru setarea optiunilor folositi : 4%char%set anticaps-reason <motiv> | %char%set anticaps-bantime <minute> ."
set black(say.ro.hanticaps.3) "1Pentru a vizualiza daca optiunea este setata folositi comanda : 4%char%show anticaps-reason | %char%show anticaps-bantime ."


################################# badfullname ######################################

set black(say.ro.hbadfullname.1) "1Aveti la dispozitie urmatoarele optiuni : 4badfullname-reason | badfullname-bantime ."
set black(say.ro.hbadfullname.2) "1Pentru setarea optiunilor folositi : 4%char%set badfullname-reason <motiv> | %char%set badfullname-bantime <minute> ."
set black(say.ro.hbadfullname.3) "1Pentru a vizualiza daca optiunea este setata folositi comanda : 4%char%show badfullname-reason | %char%show badfullname-bantime ."

################################# badnick ######################################

set black(say.ro.hbadnick.1) "1Aveti la dispozitie urmatoarele optiuni : 4badnick-reason | badnick-bantime ."
set black(say.ro.hbadnick.2) "1Pentru setarea optiunilor folositi : 4%char%set badnick-reason <motiv> | %char%set badnick-bantime <minute> ."
set black(say.ro.hbadnick.3) "1Pentru a vizualiza daca optiunea este setata folositi comanda : 4%char%show badnick-reason | %char%show badnick-bantime ."

################################# badident ######################################

set black(say.ro.hbadident.1) "1Aveti la dispozitie urmatoarele optiuni : 4badident-reason | badident-bantime ."
set black(say.ro.hbadident.2) "1Pentru setarea optiunilor folositi : 4%char%set badident-reason <motiv> | %char%set badident-bantime <minute> ."
set black(say.ro.hbadident.3) "1Pentru a vizualiza daca optiunea este setata folositi comanda : 4%char%show badident-reason | %char%show badident-bantime ."

################################# antichanflood ######################################

set black(say.ro.hantichanflood.1) "1Aveti la dispozitie urmatoarele optiuni : 4antichanflood-reason | antichanflood-bantime | chanflood ."
set black(say.ro.hantichanflood.2) "1Pentru setarea optiunilor folositi : 4%char%set antichanflood-reason <motiv> | %char%set antichanflood-bantime <minute> | %char%set chanflood <numar linii> <nr secunde> ."
set black(say.ro.hantichanflood.3) "1Pentru a vizualiza daca optiunea este setata folositi comanda : 4%char%show antichanflood-reason | %char%show antichanflood-bantime | %char%show chanflood ."

################################# antijoinflood ######################################

set black(say.ro.hantijoinflood.1) "1Aveti la dispozitie urmatoarele optiuni : 4joinflood"
set black(say.ro.hantijoinflood.2) "1Pentru setarea optiunilor folositi : 4%char%set joinflood <numar intrari> <nr secunde> ."
set black(say.ro.hantijoinflood.3) "1Pentru a vizualiza daca optiunea este setata folositi comanda : 4%char%show joinflood"

################################# badchannel ######################################

set black(say.ro.hbadchannel.1) "1Aveti la dispozitie urmatoarele optiuni : 4badchan-reason | badchan-bantime ."
set black(say.ro.hbadchannel.2) "1Pentru setarea optiunilor folositi : 4%char%set badchan-reason <motiv> | %char%set badchan-bantime <minute> ."
set black(say.ro.hbadchannel.3) "1Pentru a vizualiza daca optiunea este setata folositi comanda : 4%char%show badchan-reason | %char%show badchan-bantime ."

################################# counter ######################################

set black(say.ro.hcounter.1) "1Aveti la dispozitie urmatoarele optiuni : 4count-message"
set black(say.ro.hcounter.2) "1Pentru setarea optiunilor folositi : 4%char%set count-message <mesaj> "
set black(say.ro.hcounter.3) "1Pentru a vizualiza daca optiunea este setata folositi comanda : 4%char%show count-message"

################################ dr ############################################

set black(say.ro.hdr.1) "1Aveti la dispozitie urmatoarele optiuni : 4dr-reason | dr-bantime ."
set black(say.ro.hdr.2) "1Pentru setarea optiunilor folositi : 4%char%set dr-reason <motiv> | %char%set dr-bantime <minute> ."
set black(say.ro.hdr.3) "1Pentru a vizualiza daca optiunea este setata folositi comanda : 4%char%show dr-reason | %char%show dr-bantime ."

################################ bot ############################################

set black(say.ro.hbot.1) "1Aveti la dispozitie urmatoarele optiuni : 4bot-reason | bot-bantime ."
set black(say.ro.hbot.2) "1Pentru setarea optiunilor folositi : 4%char%set bot-reason <motiv> | %char%set bot-bantime <minute> ."
set black(say.ro.hbot.3) "1Pentru a vizualiza daca optiunea este setata folositi comanda : 4%char%show bot-reason | %char%show bot-bantime ." 

################################ n ############################################

set black(say.ro.hn.1) "1Aveti la dispozitie urmatoarele optiuni : 4n-reason | n-bantime ."
set black(say.ro.hn.2) "1Pentru setarea optiunilor folositi : 4%char%set n-reason <motiv> | %char%set n-bantime <minute> ."
set black(say.ro.hn.3) "1Pentru a vizualiza daca optiunea este setata folositi comanda : 4%char%show n-reason | %char%show n-bantime ."

################################ id ############################################

set black(say.ro.hid.1) "1Aveti la dispozitie urmatoarele optiuni : 4id-reason | id-bantime ."
set black(say.ro.hid.2) "1Pentru setarea optiunilor folositi : 4%char%set id-reason <motiv> | %char%set id-bantime <minute> ."
set black(say.ro.hid.3) "1Pentru a vizualiza daca optiunea este setata folositi comanda : 4%char%show id-reason | %char%show id-bantime ."  

################################ w ############################################

set black(say.ro.hw.1) "1Aveti la dispozitie urmatoarele optiuni : 4w-reason "
set black(say.ro.hw.2) "1Pentru setarea optiunilor folositi : 4%char%set w-reason <motiv>"
set black(say.ro.hw.3) "1Pentru a vizualiza daca optiunea este setata folositi comanda : 4%char%show w-reason ."

################################ spam ############################################

set black(say.ro.hspam.1) "1Aveti la dispozitie urmatoarele optiuni : 4spam-reason | spam-bantime ."
set black(say.ro.hspam.2) "1Pentru setarea optiunilor folositi : 4%char%set spam-reason <motiv> | %char%set spam-bantime <minute> ."
set black(say.ro.hspam.3) "1Pentru a vizualiza daca optiunea este setata folositi comanda : 4%char%show spam-reason | %char%show spam-bantime ."

################################ bw ############################################

set black(say.ro.hbw.1) "1Aveti la dispozitie urmatoarele optiuni : 4bw-reason | bw-bantime ."
set black(say.ro.hbw.2) "1Pentru setarea optiunilor folositi : 4%char%set bw-reason <motiv> | %char%set bw-bantime <minute> ."
set black(say.ro.hbw.3) "1Pentru a vizualiza daca optiunea este setata folositi comanda : 4%char%show bw-reason | %char%show bw-bantime ."


############################### GREETING #######################################

set black(say.ro.greeting.1) "RO : 1Bun venit in lumea 12BlackToolS."
set black(say.ro.greeting.2) "RO : 1Ai la dispozitie urmatoarele setari dupa preferintele tale : 4Language (12iti alegi limba de iesire a mesajelor) | 4Output ( 12alegi metoda de iesire a mesajelor )"
set black(say.ro.greeting.3) "RO : 1Pentru a seta foloseste pe %chan% 4%char%myset lang <limba> ( 12RO / EN ) | 4%char%myset output <metoda> ( 12CHAN / NOTICE )"
set black(say.ro.greeting.4) "RO : 1Iti urez o utilizare placuta . Pentru a-ti vedea comenzile tasteaza din nou 4%char%h . 1Have Fun"



