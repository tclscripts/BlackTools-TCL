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
## This file goes along with BlackTools.tcl and is loaded automatically if exist in /lang folder (this file is required)        ##
##################################################################################################################################
#                                                                                                                                #
#                                                  *** The Future is Here ***                                                    #
#                                                                                     Copyright 2008 - 2024 @ www.tclscripts.net #
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
#   				           #                         translation updated by BLaCkShaDoW | Florian@tclscripts.net #
#             		FRENCH (FR)	   #                    								 #
#				           #	                                                        Date: 11.07.2024 14:26PM #
##################################################################################################################################

##################################################################################################################################
#                                                                                                                                #
#                                                         ACCESS LEVELS                                                          #
#                                                                                                                                #
##################################################################################################################################

set black(say.en.level.1) "BOSS OWNER"
set black(say.en.level.2) "OWNER"
set black(say.en.level.3) "MANAGER"
set black(say.en.level.4) "ADMIN"
set black(say.en.level.5) "OP"
set black(say.en.level.6) "VOICE"
set black(say.en.level.7) "PROTECT"
set black(say.en.level.8) "MASTER"
set black(say.en.level.9) "BAN"

##################################################################################################################################
#                                                                                                                                #
#                                                       STANDARD MESSAGES                                                        #
#                                                                                                                                #
##################################################################################################################################


set black(say.en.gl.instr) "\005\[BT\]\005 Pour plus d'informations, consultez: \002%char%man %msg.1%\002"
set black(say.en.gl.instr_nick) "\005\[BT\]\005 Pour plus d'informations, consultez: \002%botnick% man %msg.1%\002"
set black(say.en.gl.instr_priv) "\005\[BT\]\005 Pour plus d'informations, consultez : \002man %msg.1%\002"
set black(say.en.gl.noban) "\005\[BT\]\005 ÉCHEC : Impossible d'exécuter, l'utilisateur a ACCÈS."
set black(say.en.gl.notonchan) "\005\[BT\]\005 ÉCHEC : Je ne suis pas sur \001%chan%\001"
set black(say.en.gl.suspend) "\005\[BT\]\005 Vous êtes suspendu sur \002%chan%\002, vous ne pouvez pas utiliser cette commande."
set black(say.en.gl.glsuspend) "\005\[BT\]\005 Vous êtes suspendu \002GLOBALEMENT\002, vous ne pouvez pas utiliser cette commande."
set black(say.en.gl.novalidchan) "\005\[BT\]\005 ÉCHEC : Canal invalide."
set black(say.en.gl.nomem) "\005\[BT\]\005 Je n'ai aucun enregistrement en mémoire de cet utilisateur."
set black(say.en.gl.noaccess) "\005\[BT\]\005 ÉCHEC : N'a pas accès sur \002%chan%\002."
set black(say.en.gl.noop) "\005\[BT\]\005 ÉCHEC : Je ne suis pas opérateur sur \002%chan%\002."
set black(say.en.gl.nomodif) "\005\[BT\]\005 ÉCHEC : Impossible de modifier un utilisateur ayant un accès égal ou supérieur au vôtre."
set black(say.en.gl.usernotonchan) "\005\[BT\]\005 ÉCHEC : \001%msg.1%\001 n'est pas sur \002%chan%\002."
set black(say.en.gl.nocmem) "\005\[BT\]\005 Je n'ai aucun enregistrement en mémoire du canal \001%msg.1%\001"
set black(say.en.gl.isowner) "\005\[BT\]\005 \002%msg.1%\002 a déjà un accès \002%msg.set%\002."
set black(say.en.gl.usernotexist) "\005\[BT\]\005 ÉCHEC : \002%msg.1%\002 n'existe pas."
set black(say.en.gl.hostnotexist) "\005\[BT\]\005 Je n'ai trouvé aucune information sur ce masque hôte."
set black(say.en.gl.reason) "raison"
set black(say.en.gl.invalidlevel) "\005\[BT\]\005 Désolé, vous n'avez pas l'accès suffisant pour exécuter cette commande (doit être \002%msg%\002)"
set black(say.en.gl.nounban) "\005\[BT\]\005 Désolé, vous n'avez pas l'accès suffisant pour retirer le ban \002%msg.1%\002."
set black(say.en.gl.hasop) "\005\[BT\]\005 ÉCHEC : L'utilisateur est opérateur. Je ne peux pas procéder."
set black(say.en.gl.notonline) "\005\[BT\]\005 \002%msg.1%\002 n'est PAS en ligne."
set black(say.en.gl.showline) "#\001%msg.1%\001) %msg.8%"
set black(say.en.gl.wordexists) "\005\[BT\]\005 \001%msg.1%\001 existe déjà dans la base de données de \002%chan%\002."
set black(say.en.gl.noset) "N/A"
set black(say.en.gl.validuser) "\005\[BT\]\005 ÉCHEC : Impossible d'exécuter (l'hôte appartient à \002%msg.1%\002)."
set black(say.en.gl.banexists) "\005\[BT\]\005 \002%msg.1%\002 est déjà couvert par l'hôte \002%msg.2%\002"
set black(say.en.gl.noipv4) "\005\[BT\]\005 \002%msg.1%\002 n'est pas une IPv4 pour utiliser le ban CIDR."
set black(say.en.gl.fullbans) "\005\[BT\]\005 \002ATTENTION\002 : La banlist de \002%chan%\002 est actuellement détectée comme étant PLEINE avec \002%numbans%\002 entrées. Suppression de la banlist du canal..."
set black(say.en.gl.noxonly) "\005\[BT\]\005 ÉCHEC : Je ne suis pas connecté à \002X\002."
set black(say.en.gl.banblack) "\005\[BT\]\005 ÉCHEC : Impossible d'exécuter, l'utilisateur est sur la LISTE NOIRE."
set black(say.en.gl.protexcept) "excepté"
set black(say.en.gl.nobanlevel) "\005\[BT\]\005 Désolé, vous n'avez pas l'accès suffisant pour mettre en place le ban \002%msg.1%\002."

#############################################################################################################################
#                                                                                                                           #
#                                            Internal AntiFlood Protections                                                 #
#                                                                                                                           #
#############################################################################################################################

set black(say.en.antiflood.1) "\005\[BT\]\005 Vous envoyez des requêtes trop rapidement. Calmez-vous et réessayez après \002%msg.1% minute\002. Merci!"
set black(say.en.antiflood.2) "\005\[BT\]\005 Ignorer \002%msg.1%\002. Raison: \002%msg.8%\002"
set black(say.en.gl.antiflood.3) "\002\005\[BT\]\005\002 SILENCE activé. Raison :\002%msg%\002"
set black(say.en.gl.antiflood.4) "\002\005\[BT\]\005\002 SILENCE désactivé."

#############################################################################################################################
#                                                                                                                           #
#                                                    Time Outputs                                                           #
#                                                                                                                           #
#############################################################################################################################

set black(say.en.timeout.1) "an"
set black(say.en.timeout.2) "ans"
set black(say.en.timeout.3) "jour"
set black(say.en.timeout.4) "jours"
set black(say.en.timeout.5) "heure"
set black(say.en.timeout.6) "heures"
set black(say.en.timeout.7) "minute"
set black(say.en.timeout.8) "minutes"
set black(say.en.timeout.9) "secondes"

#############################################################################################################################
#                                                                                                                           #
#                                                    MAX UPTIME                                                             #
#                                                                                                                           #
#############################################################################################################################

set black(say.en.maxup.1) "\005\[BT\]\005 Début : \002%msg.1% %msg.2% %msg.3%\002 - Temps de connexion maximum : \001%msg.9%\001"
set black(say.en.maxon.1) "\005\[BT\]\005 Temps en ligne : \002%msg.1% %msg.2% %msg.3%\002 - Temps de connexion maximum : \001%msg.9%\001"

#############################################################################################################################
#                                                                                                                           #
#                                                      STATS                                                                #
#                                                                                                                           #
#############################################################################################################################


set black(say.en.stats.1) "\005\[BT\]\005 Aucune information statistique trouvée concernant \002%msg.1%\002."
set black(say.en.stats.2) "\005\[BT\]\005 Statistiques du jour : (\001%msg.1%\001) Bans : \002%msg.2%\002 Expulsions : \002%msg.3%\002 Commandes : %msg.6%"
set black(say.en.stats.3) "\005\[BT\]\005 Statistiques totales : (\001%msg.1%\001) Bans : local \002%msg.2%\002 ; Expulsions : \002%msg.3%\002 ; Commandes : %msg.6%"
set black(say.en.stats.4) "\005\[BT\]\005 Statistiques totales : (\001%msg.1%\001) Bans : local \002%msg.2%\002 global \002%msg.3%\002 ; Expulsions : \002%msg.4%\002 ; Commandes : %msg.10%"
set black(say.en.stats.5) "\005\[BT\]\005 Réinitialisation des statistiques de \001%msg.1%\001 depuis \002%chan%\002."

#############################################################################################################################
#                                                                                                                           #
#                                                   PROTECTIONS                                                             #
#                                                                                                                           #
#############################################################################################################################

#################################### InviteBan #################################

set black(say.en.inviteban.1) "\[INVITEBAN\] Invitation stupide et ennuyeuse"

#################################### AntiPub ###################################

set black(say.en.antipub.1) "Les publicités ne sont pas autorisées sur ce canal"
set black(say.en.antipub.2) "Les publicités ne sont \002PAS\002 autorisées et entraîneront un bannissement la prochaine fois"
set black(say.en.antipub.3) "\005\[BT\]\005 *** FIN de la liste Antipub ***"
set black(say.en.antipub.4) "\005\[BT\]\005 ÉCHEC : Aucune entrée correspondant au numéro \001%msg.1%\001 dans la \002Liste Antipub\002 de %chan%."
set black(say.en.antipub.5) "\005\[BT\]\005 Suppression de l'\002entrée antipub\002 avec le numéro \001%msg.1%\001 de \002%chan%\002."
set black(say.en.antipub.6) "\005\[BT\]\005 Ajout de \002%msg.8%\002 avec le numéro \001%msg.1%\001 à la liste Antipub pour \002%chan%\002."
set black(say.en.antipub.7) "\005\[BT\]\005 \002Liste Antipub\002 pour %chan% est:"
set black(say.en.antipub.8) "\005\[BT\]\005 Pour voir les prochaines entrées, tapez : \001%char%antipub list -next\001 (\002%counter%\002 entrées restantes)"
set black(say.en.antipub.9) "\005\[BT\]\005 Pour voir les prochaines entrées, tapez : \001%char%antipub %chan% list -next\001 (\002%counter%\002 entrées restantes)"
set black(say.en.antipub.10) "\005\[BT\]\005 Ajout de \002%msg.8%\002 avec le numéro \001%msg.1%\001 aux Exceptions Antipub pour \002%chan%\002."

#################################### BadHost ##################################

set black(say.en.badhost.1) "Votre VHOST/IP est considéré comme incorrect"
set black(say.en.badhost.3) "\005\[BT\]\005 *** FIN de la liste BadHosts ***"
set black(say.en.badhost.4) "\005\[BT\]\005 ÉCHEC : Aucune entrée correspondant au numéro \001%msg.1%\001 dans la \002Liste BadHosts\002 de \001%chan%\001."
set black(say.en.badhost.5) "\005\[BT\]\005 \002Badhost\002 avec le numéro \001%msg.1%\001 supprimé de \002%chan%\002."
set black(say.en.badhost.6) "\005\[BT\]\005 Ajout de \001%msg.8%\001 avec le numéro \001%msg.1%\001 à la liste BadHosts pour \002%chan%\002."
set black(say.en.badhost.7) "\005\[BT\]\005 La \002liste BadHosts\002 pour \001%chan%\001 est :"
set black(say.en.badhost.8) "\005\[BT\]\005 Pour voir les prochaines entrées, tapez : \001%char%badhost list -next\001 (\002%counter%\002 BadHosts restants)"
set black(say.en.badhost.9) "\005\[BT\]\005 Pour voir les prochaines entrées, tapez : \001%char%badhost %chan% list -next\001 (\002%counter%\002 BadHosts restants)"
set black(say.en.badhost.10) "\005\[BT\]\005 Ajout de \001%msg.8%\001 comme exception avec le numéro \001%msg.1%\001 à la liste BadHosts pour \002%chan%\002."

#################################### AntiNotice ###############################

set black(say.en.antinotice.1) "Les NOTICEs du canal ne sont pas autorisés"
set black(say.en.antinotice.2) "Veuillez ne pas utiliser NOTICE ici"

#################################### AntiCtcp #################################

set black(say.en.antictcp.1) "Les CTCP du canal ne sont pas autorisés"
set black(say.en.antictcp.2) "Arrêtez d'utiliser les CTCP ici"

#################################### AntiBadWord ###############################

set black(say.en.antibadword.1) "Le langage grossier n'est pas amusant, vous n'auriez jamais dû dire cela"
set black(say.en.antibadword.2) "Arrêtez d'utiliser des mots/un langage grossier"
set black(say.en.antibadword.3) "\005\[BT\]\005 *** FIN de la liste BadWords ***"
set black(say.en.badword.4) "\005\[BT\]\005 Aucune entrée correspondant au numéro \001%msg.1%\001 dans la \002Liste BadWords\002 de \001%chan%\001."
set black(say.en.badword.5) "\005\[BT\]\005 Suppression de l'entrée \002badword\002 avec le numéro \001%msg.1%\001 de %chan%."
set black(say.en.badword.6) "\005\[BT\]\005 Ajout de \002%msg.8%\002 avec le numéro \001%msg.1%\001 à la liste BadWords pour \002%chan%\002."
set black(say.en.antibadword.7) "\005\[BT\]\005 La \002liste BadWords\002 pour \001%chan%\001 est :"
set black(say.en.antibadword.8) "\005\[BT\]\005 Pour voir les prochaines entrées, tapez : \001%char%badword list -next\001 (\002%counter%\002 entrées restantes)"
set black(say.en.antibadword.9) "\005\[BT\]\005 Pour voir les prochaines entrées, tapez : \001%char%badword %chan% list -next\001 (\002%counter%\002 entrées restantes)"
set black(say.en.badword.7) "\005\[BT\]\005 Ajout de \002%msg.18%\002 avec le numéro \001%msg.1%\001 avec la méthode de bannissement numéro \001%msg.2%\002 à la liste BadWords pour \002%chan%\002."
set black(say.en.badword.8) "\005\[BT\]\005 Ajout de \002%msg.8%\002 comme exception avec le numéro \001%msg.1%\001 à la liste BadWords pour \002%chan%\002."

#################################### AntiLongText ##############################

set black(say.en.antilongtext.1) "Votre message est trop long. Veuillez utiliser des lignes plus courtes"
set black(say.en.antilongtext.2) "Vos messages sont trop longs, vous devez les raccourcir"

#################################### AntiBadQuitPart ###########################

set black(say.en.antibadquitpart.1) "Message de départ/quitter inacceptable"
set black(say.en.antibadquitpart.3) "\005\[BT\]\005 *** FIN de la liste Bad parts/quits ***"
set black(say.en.badquitpart.4) "\005\[BT\]\005 ÉCHEC : Aucune entrée correspondant au numéro \001%msg.1%\001 dans la \002Liste Bad part/quit\002 de \001%chan%\001."
set black(say.en.badquitpart.5) "\005\[BT\]\005 \002bad part/quit\002 avec le numéro \001%msg.1%\001 supprimé de %chan%."
set black(say.en.badquitpart.6) "\005\[BT\]\005 Ajout de \002%msg.8%\002 avec le numéro \001%msg.1%\001 à la liste Bad part/quit pour \002%chan%\002."
set black(say.en.antibadquitpart.7) "\005\[BT\]\005 La \002liste Bad part/quit\002 pour \001%chan%\001 est :"
set black(say.en.antibadquitpart.8) "\005\[BT\]\005 Pour voir les prochaines entrées, tapez : \001%char%badquitpart list -next\001 (\002%counter%\002 entrées restantes)"
set black(say.en.antibadquitpart.9) "\005\[BT\]\005 Pour voir les prochaines entrées, tapez : \001%char%badquitpart %chan% list -next\001 (\002%counter%\002 entrées restantes)"
set black(say.en.badquitpart.10) "\005\[BT\]\005 Ajout de \002%msg.8%\002 comme exception avec le numéro \001%msg.1%\001 à la liste Bad part/quit pour \002%chan%\002."

################################### AntiJoinPart ###############################

set black(say.en.antijoinpart.1) "Les floods join/part ne sont pas autorisés sur ce canal"
set black(say.en.antijoinpart.2) "Flood join/part détecté"

################################## AntiSpam ###################################

set black(say.en.antispam.1) "Spam de message (spambot) détecté"
set black(say.en.antispam.2) "\[SPAMCHECK\] Bienvenue sur \002%chan%\002, veuillez NE PAS répondre à ce message, sinon vous serez considéré comme un spammeur et vous serez banni ! Merci !"
set black(say.en.antispam.3) "\005\[BT\]\005 *** FIN de la liste antispam ***"
set black(say.en.antispam.4) "\005\[BT\]\005 ÉCHEC : Aucune entrée correspondant au numéro \001%msg.1%\001 dans la \002Liste antispam\002 de \001%chan%\001."
set black(say.en.antispam.5) "\005\[BT\]\005 Suppression de l'\002antispam\002 avec le numéro \001%msg.1%\001 de \002%chan%\002."
set black(say.en.antispam.6) "\005\[BT\]\005 Ajout de \001%msg.8%\001 avec le numéro \001%msg.1%\001 à la Liste antispam pour \002%chan%\002."
set black(say.en.antispam.7) "\005\[BT\]\005 La \002Liste antispam\002 pour \001%chan%\001 est :"
set black(say.en.antispam.8) "\005\[BT\]\005 Pour voir les prochaines entrées, tapez : \001%char%antispam list -next\001 (\002%counter%\002 entrées antispam restantes)"
set black(say.en.antispam.9) "\005\[BT\]\005 Pour voir les prochaines entrées, tapez : \001%char%antispam %chan% list -next\001 (\002%counter%\002 entrées antispam restantes)"
set black(say.en.antispam.10) "\005\[BT\]\005 Ajout de \001%msg.8%\001 comme exception avec le numéro \001%msg.1%\001 à la liste Antispam pour \002%chan%\002."
set black(say.en.antispam.11) {	"Vérification de spam en cours.."
"Chasse aux lapins en cours.."
"Actualisation de mon uHost.."
}

################################# AntiRepeat ##################################

set black(say.en.antirepeat.1) "Abus de répétition de texte"
set black(say.en.antirepeat.2) "Arrêtez de vous répéter"

################################# AntiColor ###################################

set black(say.en.anticolor.1) "Arrêtez d'utiliser 4C8O12L7O11R3S"
set black(say.en.anticolor.2) "Veuillez ne PAS utiliser 4C8O12L7O11R3S"

################################# AntiBold ###################################

set black(say.en.antibold.1) "Arrêtez d'utiliser des caractères \002GRAS\002"
set black(say.en.antibold.2) "Veuillez ne PAS utiliser des caractères \002GRAS\002"

################################# AntiUnderline ###################################

set black(say.en.antiunderline.1) "Arrêtez d'utiliser des caractères \037SOULIGNÉS\037"
set black(say.en.antiunderline.2) "Veuillez ne PAS utiliser des caractères \037SOULIGNÉS\037"

################################# AntiCaps #######################################

set black(say.en.anticaps.1) "Arrêtez d'utiliser les MAJUSCULES"
set black(say.en.anticaps.2) "Veuillez NE PAS utiliser excessivement de majuscules"

################################# BadRealname ###################################

set black(say.en.badrealname.1) "Champ de vrai nom inapproprié, veuillez le modifier avant de revenir"
set black(say.en.badrealname.3) "\005\[BT\]\005 *** FIN de la liste BadRealnames ***"
set black(say.en.badrealname.4) "\005\[BT\]\005 ÉCHEC : Aucune entrée correspondant au numéro \001%msg.1%\001 dans la \002Liste BadRealname\002 de \001%chan%\001."
set black(say.en.badrealname.5) "\005\[BT\]\005 \002badrealname\002 avec le numéro \001%msg.1%\001 supprimé de \001%chan%\001."
set black(say.en.badrealname.6) "\005\[BT\]\005 Ajout de \002%msg.8%\002 avec le numéro \001%msg.1%\001 à la Liste BadRealname pour \002%chan%\002."
set black(say.en.badrealname.7) "\005\[BT\]\005 La \002liste BadRealname\002 pour \001%chan%\001 est :"
set black(say.en.badrealname.8) "\005\[BT\]\005 Pour voir les prochaines entrées, tapez : \001%char%badrealname list -next\001 (\002%counter%\002 BadRealnames restants)"
set black(say.en.badrealname.9) "\005\[BT\]\005 Pour voir les prochaines entrées, tapez : \001%char%badrealname %chan% list -next\001 (\002%counter%\002 BadRealnames restants)"
set black(say.en.badrealname.10) "\005\[BT\]\005 Ajout de \002%msg.8%\002 comme exception avec le numéro \001%msg.1%\001 à la Liste BadRealname pour \002%chan%\002."

################################# BadNick #####################################

set black(say.en.badnick.1) "Votre PSEUDO n'est pas approprié pour ce canal"
set black(say.en.badnick.3) "\005\[BT\]\005 *** FIN de la liste BadNicks ***"
set black(say.en.badnick.4) "\005\[BT\]\005 ÉCHEC : Aucune entrée correspondant au numéro \001%msg.1%\001 dans la \002Liste BadNicks\002 de \001%chan%\001."
set black(say.en.badnick.5) "\005\[BT\]\005 Suppression du \002badnick\002 avec le numéro \001%msg.1%\001 de \001%chan%\001."
set black(say.en.badnick.6) "\005\[BT\]\005 Ajout de \002%msg.8%\002 avec le numéro \001%msg.1%\001 à la Liste BadNicks pour \002%chan%\002."
set black(say.en.badnick.7) "\005\[BT\]\005 La \002liste BadNicks\002 pour \001%chan%\001 est :"
set black(say.en.badnick.8) "\005\[BT\]\005 Pour voir les prochaines entrées, tapez : \001%char%badnick list -next\001 (\002%counter%\002 BadNicks restants)"
set black(say.en.badnick.9) "\005\[BT\]\005 Pour voir les prochaines entrées, tapez : \001%char%badnick %chan% list -next\001 (\002%counter%\002 BadNicks restants)"
set black(say.en.badnick.10) "Si vous ne changez pas votre pseudo dans \002%time%\002 secondes, vous serez retiré du canal !"
set black(say.en.badnick.11) "\005\[BT\]\005 Ajout de \002%msg.8%\002 comme exception avec le numéro \001%msg.1%\001 à la liste BadNicks pour \002%chan%\002."

################################# BadIdent #####################################

set black(say.en.badident.1) "Votre IDENT n'est pas approprié pour ce canal"
set black(say.en.badident.3) "\005\[BT\]\005 *** FIN de la liste BadIdents ***"
set black(say.en.badident.4) "\005\[BT\]\005 ÉCHEC : Aucune entrée correspondant au numéro \001%msg.1%\001 dans la \002Liste BadIdents\002 de \001%chan%\001."
set black(say.en.badident.5) "\005\[BT\]\005 Suppression du \002badident\002 avec le numéro \001%msg.1%\001 de \002%chan%\002."
set black(say.en.badident.6) "\005\[BT\]\005 Ajout de \002%msg.8%\002 avec le numéro \001%msg.1%\001 à la Liste BadIdents pour \002%chan%\002."
set black(say.en.badident.7) "\005\[BT\]\005 La \002liste BadIdents\002 pour \001%chan%\001 est :"
set black(say.en.badident.8) "\005\[BT\]\005 Pour voir les prochaines entrées, tapez : \001%char%badident list -next\001 (\002%counter%\002 BadIdents restants)"
set black(say.en.badident.9) "\005\[BT\]\005 Pour voir les prochaines entrées, tapez : \001%char%badident %chan% list -next\001 (\002%counter%\002 BadIdents restants)"
set black(say.en.badident.10) "\005\[BT\]\005 Ajout de \002%msg.8%\002 comme exception avec le numéro \001%msg.1%\001 à la Liste BadIdents pour \002%chan%\002."

################################# AntiJoinFlood #####################################

set black(say.en.antijoinflood.1) "Les floods de join ne sont pas tolérés"
set black(say.en.antijoinflood.2) "\002ATTENTION\002 ! Flood de join détecté sur \002%chan%\002 ! Veuillez vérifier !"

################################# AntiChanFlood #####################################

set black(say.en.antichanflood.1) "Flood de texte détecté"
set black(say.en.antichanflood.2) "Vous écrivez trop de lignes, ralentissez votre saisie"

################################### NickFlood #######################################

set black(say.en.nickflood.1) "Flood de pseudo"
set black(say.en.nickflood.2) "Choisissez un pseudo et gardez-le, s'il vous plait..."

################################ Repetitive Chars ###################################

set black(say.en.repetitivechars.1) "Abus de caractères répétitifs"
set black(say.en.repetitivechars.2) "Veuillez ne pas utiliser une répétition excessive de caractères."

################################### NickFlood #######################################

set black(say.en.noproxy.1) "Les IP de PROXY ne sont pas autorisées ici. FAI : \002%isp%\002"

#############################################################################################################################
#                                                                                                                           #
#                                                       MODULES                                                             #
#                                                                                                                           #
#############################################################################################################################

################################## SecureMode ##################################


set black(say.en.securemode.1) {
"\002ATTENTION :\002 Vous venez d'essayer de rejoindre %chan% mais le canal est en \002verrouillage\002 (\002+mD\002). Comme nous sommes attaqués par des bots, veuillez taper : \002/msg %botnick% check %chan% %msg.1%\002 pour prouver que vous êtes humain. Si vous le faites, vous serez autorisé à rejoindre. Si vous vous trompez, rien ne se passera."
"\002ATTENTION :\002 Bienvenue sur %chan%. Comme nous sommes attaqués par des bots, le canal est en \002verrouillage\002 (\002+mD\002), veuillez taper : \002/msg %botnick% check %chan% %msg.1%\002"
"\002ATTENTION :\002 Notre canal est en \002verrouillage\002 (\002+mD\002) et comme nous sommes attaqués par des bots et que vous venez d'essayer de rejoindre %chan%, veuillez taper : \002/msg %botnick% check %chan% %msg.1%\002"
}

set black(say.en.securemode.2) "\002%msg.1%\002 : Bonne conversation ! Désolé pour le désagrément que vous avez subi !"
set black(say.en.securemode.3) "\005\[BT\]\005 *** FIN de la Liste des Exceptions SecureMode ***"
set black(say.en.securemode.4) "\005\[BT\]\005 ÉCHEC : Aucune entrée correspondant au numéro \001%msg.1%\001 dans la \002Liste des Exceptions SecureMode\002 de \001%chan%\001."
set black(say.en.securemode.5) "\005\[BT\]\005 Suppression de l'\002exception securemode\002 avec le numéro \002%msg.1%\002 de %chan%."
set black(say.en.securemode.6) "\005\[BT\]\005 Ajout de \002%msg.8%\002 avec le numéro \001%msg.1%\001 à la liste des exceptions SecureMode pour \002%chan%\002."
set black(say.en.securemode.7) "\005\[BT\]\005 La \002Liste des Exceptions SecureMode\002 pour \001%chan%\001 est :"
set black(say.en.securemode.8) "\005\[BT\]\005 Pour voir la suite des exceptions, tapez : \001%char%securemode list -next\001 (\002%counter%\002 Exceptions restantes)"
set black(say.en.securemode.9) "\005\[BT\]\005 Pour voir la suite des exceptions, tapez : \001%char%securemode %chan% list -next\001 (\002%counter%\002 Exceptions restantes)"
set black(say.en.securemode.10) "Mode défensif : activé"
set black(say.en.securemode.11) "Mode défensif : désactivé"

################################## VoiceMe #####################################

set black(say.en.voiceme.1) "Le canal est \002modéré (mode +m)\002. Si vous souhaitez pouvoir discuter dans \002%chan%\002 alors utilisez :\002 /msg %botnick% voiceme %chan%\002. Nécessite d'être \002enregistré et connecté à X\002. Si vous n'avez pas de nom d'utilisateur Cservice, allez sur \002https://cservice.undernet.org/live\002 et créez-en un."
set black(say.en.voiceme.2) "Le canal n'est plus \002modéré (mode +m)\002. Profitez-en !"
set black(say.en.voiceme.3) "Vous avez reçu \002voix(+v)\002 sur \002%chan%\002. Bonne conversation !"
set black(say.en.voiceme.4) "Vous êtes déjà \002voix\002 dans \002%chan%\002."
set black(say.en.voiceme.5) "Si HUMAIN -> \002/msg %botnick% voiceme %chan% %msg%\002"
set black(say.en.voiceme.6) "Le canal est \002modéré (mode +m)\002. Si vous souhaitez pouvoir discuter dans \002%chan%\002 alors utilisez :\002 /msg %botnick% voiceme %chan%\002. Profitez-en !"

################################# TopWords #####################################


set black(say.en.topwords.1) "Total \002TopWords\002 : \001%msg%\001"
set black(say.en.topwords.2) "TopWords du jour : \001%msg%\001"
set black(say.en.topwords.3) "TopWords : (\001%msg.1%\001) Hôte : \001%msg.2%\001 Mots : \002%msg.3%\002 Lignes : \002%msg.4%\002 Lettres : \002%msg.12%\002 Smileys : \002%msg.13%\002 Actions : \002%msg.15%\002 Questions : \002%msg.17%\002 (Place \002%msg.19%\002/\002%msg.21%\002 utilisateurs)."
set black(say.en.topwords.4) "TopWords : Désolé, je n'ai aucune statistique sur \002%msg.1%\002."
set black(say.en.topwords.7) "\005\[BT\]\005 Je n'ai aucun \002TopWords\002 pour \001%chan%\001."
set black(say.en.topwords.8) "\005\[BT\]\005 \002TopWords\002 réinitialisé sur \001%chan%\001"
set black(say.en.topwords.9) "(Pour voir les prochains rangs, tapez : \002%char%topwords -next\002)"
set black(say.en.topwords.10) "\005\[BT\]\005 Je n'ai aucun \002TopWords\002 pour \001%chan%\001"
set black(say.en.topwords.11) "(Pour voir les prochains rangs, tapez : \002%char%topwords total -next\002)"
set black(say.en.topwords.12) "(Pour voir les prochains rangs, tapez : \002%char%topwords %chan% total -next\002)"
set black(say.en.topwords.13) "(Pour voir les prochains rangs, tapez : \002%char%topwords %chan% -next\002)"
set black(say.en.topwords.14) "\005\[BT\]\005 Les TopWords du jour pour \001%chan%\001 sont vides."
set black(say.en.topwords.15) "\005\[BT\]\005 Ajout de \001%msg.1%\001 à la \002liste des exceptions TopWords\002 pour \001%chan%\001"
set black(say.en.topwords.16) "\005\[BT\]\005 Ajout de \001%msg.1%\001 avec le masque \002%msg.2%\002 à la \002Liste d'exceptions TopWords\002 pour \001%chan%\001"
set black(say.en.topwords.17) "\005\[BT\]\005 \001%msg.1%\001 existe déjà dans la \002liste des exceptions TopWords\002."
set black(say.en.topwords.18) "\005\[BT\]\005 La \002liste des exceptions TopWords\002 pour \001%chan%\001 est :"
set black(say.en.topwords.19) "%msg%" 
set black(say.en.topwords.20) "\005\[BT\]\005 \001%msg.1%\001 n'est pas ajouté en tant qu'exception à \002TopWords\002."
set black(say.en.topwords.21) "\005\[BT\]\005 Suppression de \001%msg.1%\001 de la \002Liste des Exceptions TopWords\002."
set black(say.en.topwords.22) "TopWords Total: (\001%msg.1%\001) Hôte: \001%msg.2%\001 Mots: \002%msg.3%\002 Lignes: \002%msg.4%\002 Lettres: \002%msg.12%\002 Smileys: \002%msg.13%\002 Actions: \002%msg.15%\002 Questions: \002%msg.17%\002 (Place \002%msg.19%\002/\002%msg.21%\002 utilisateurs)."
set black(say.en.topwords.23) "\005\[BT\]\005 Les \002TopWords\002 de cette semaine pour \001%chan%\001 sont vides."
set black(say.en.topwords.24) "TopWords de la semaine : \001%msg%\001"
set black(say.en.topwords.25) "(Pour voir les prochains rangs, tapez : \002%char%topwords %chan% week -next\002)"  (No translation needed since it's a command)
set black(say.en.topwords.26) "(Pour voir les prochains rangs, tapez : \002%char%topwords %chan% week -next\002)"  (No translation needed since it's a command)
set black(say.en.topwords.27) "\005\[BT\]\005 Aucune entrée trouvée concernant \002%msg.1%\002, je suppose qu'il/elle n'a pas parlé :("
set black(say.en.topwords.28) "TopWords de la semaine : (\001%msg.1%\001) Hôte : \001%msg.2%\001 Mots : \002%msg.3%\002 Lignes : \002%msg.4%\002 Lettres : \002%msg.12%\002 Smileys : \002%msg.13%\002 Actions : \002%msg.15%\002 Questions : \002%msg.17%\002 (Place \002%msg.19%\002/\002%msg.21%\002 utilisateurs)."
set black(say.en.topwords.29) "\005\[BT\]\005 Réinitialiser les topwords de \001%msg.1%\001 depuis \002%chan%\002"

################################ BackChan ###################################

set black(say.en.reportchan) "\005\[BT\]\005 Ajout d'un ban sur \002%chan%\002 pour l'hôte \002%banmask%\002 avec la raison : \002%reason%\002. Expire après : \002%bantime%\002."
set black(say.en.reportchan.1) "\005\[BT\]\005 \[\002%nick%\002\] a ajouté un ban sur \002%chan%\002 pour l'hôte \002%banmask%\002 avec la raison : \002%reason%\002. Expire après : \002%bantime%\002."
set black(say.en.backchan.1) "\005\[BT\]\005 Trouvé \002%msg.1%\002 dans la BanList de \002%chan%\002 correspondant à \002%msg.2%\002."
set black(say.en.reportchan.2) "\005\[BT\]\005 \[\002%nick%\002\] a ajouté un Gag sur \002%chan%\002 pour l'hôte \002%banmask%\002 avec la raison : \002%reason%\002. Expire après : \002%bantime%\002."
set black(say.en.reportchan.3) "\005\[BT\]\005 \[\002%nick%\002\] a supprimé \002%msg.1%\002 bans (\002%msg.2%\002 trouvés) de %chan% qui correspondaient à %msg.3%"
set black(say.en.reportchan.4) "\005\[BT\]\005 \[\002%nick%\002\] a retiré le Gag sur \002%chan%\002 pour l'hôte \002%banmask%\002"

################################ CloneScan ###################################

set black(say.en.clonescan.1) "Connexions excessives de \002*@%clone%\002. Les clones sont interdits !"
set black(say.en.clonescan.2) "\005\[BT\]\005 Aucun clone sur \001%chan%\001."
set black(say.en.clonescan.3) "*** FIN de la Liste des Exceptions Clones ***"
set black(say.en.clonescan.4) "\005\[BT\]\005 ÉCHEC : Aucune entrée correspondant au numéro \001%msg.1%\001 dans la \002Liste des Exceptions Clones\002."
set black(say.en.clonescan.5) "\005\[BT\]\005 Suppression de l'\002exception\002 avec le numéro \001%msg.1%\001 de \002%chan%\002."
set black(say.en.clonescan.6) "\005\[BT\]\005 Ajout de \001%msg.8%\001 avec le numéro \002%msg.1%\002 dans la \002Liste des Exceptions Clones\002"
set black(say.en.clonescan.7) "\005\[BT\]\005 La \002Liste des Exceptions Clones\002 pour \001%chan%\001 est :"
set black(say.en.clonescan.8) "\005\[BT\]\005 Pour voir les prochaines exceptions, tapez : \001%char%clonescan list -next\001 (\002%counter%\002 exceptions restantes)"
set black(say.en.clonescan.9) "\005\[BT\]\005 Pour voir les prochaines exceptions, tapez : \001%char%clonescan %chan% list -next\001 (\002%counter%\002 exceptions restantes)"
set black(say.en.clonescan.10) "\005\[BT\]\005 Trouvé \001%msg.1%\001 clones dans \002%chan%\002 à partir du masque \001%msg.2%\001. Les pseudos sont : \002%msg.7%\002"
set black(say.en.clonescan.11) "\005\[BT\]\005 Recherche de clones en cours..."

################################# Private ######################################

set black(say.en.private.1) "\002Restricted\002 Channel"
set black(say.en.private.5) "%msg%"
set black(say.en.private.6) "\005\[BT\]\005 \001%msg.1%\001 is not added as an exception."
set black(say.en.private.7) "\005\[BT\]\005 \001%msg.1%\001 is already in my database. Adding as an exception on \002%chan%\002."
set black(say.en.private.8) "\005\[BT\]\005 Added \001%msg.1%\001 with mask \002%msg.2%\002 as an exception on \001%chan%\001."
set black(say.en.private.9) "\005\[BT\]\005 Removed \001%msg.1%\001 from my \002Exception List\002 on \002%chan%\002."
set black(say.en.private.10) "\005\[BT\]\005 \001%msg.1%\001 added as an exception on \002%chan%\002."
set black(say.en.private.11) "\005\[BT\]\005 Users in \002Exception List\002 from \002%chan%\002 are: \001%msg%\001."


set black(say.en.private.1) "\002Canal\002 Restreint"
set black(say.en.private.5) "%msg%"
set black(say.en.private.6) "\005\[BT\]\005 \001%msg.1%\001 n'est pas ajouté comme exception."
set black(say.en.private.7) "\005\[BT\]\005 \001%msg.1%\001 est déjà dans ma base de données. Ajout en tant qu'exception sur \002%chan%\002."
set black(say.en.private.8) "\005\[BT\]\005 Ajout de \001%msg.1%\001 avec le masque \002%msg.2%\002 en tant qu'exception sur \001%chan%\001."
set black(say.en.private.9) "\005\[BT\]\005 Suppression de \001%msg.1%\001 de ma \002Liste d'Exceptions\002 sur \002%chan%\002."
set black(say.en.private.10) "\005\[BT\]\005 \001%msg.1%\001 ajouté en tant qu'exception sur \002%chan%\002."
set black(say.en.private.11) "\005\[BT\]\005 Les utilisateurs de la \002Liste d'Exceptions\002 de \002%chan%\002 sont : \001%msg%\001."

################################# BadChan ######################################

set black(say.en.badchan.1) "\005\[BT\]\005 \001%msg.1%\001 existe déjà dans la liste BadChans de \002%chan%\002."
set black(say.en.badchan.2) "\005\[BT\]\005 Pour voir les prochaines entrées, tapez : \001%char%badchan list global -next\001 (\002%counter%\002 BadChans restants)"
set black(say.en.badchan.3) "\005\[BT\]\005 Pour voir les prochaines entrées, tapez : \001%char%badchan list -next\001 (\002%counter%\002 BadChans restants)"
set black(say.en.badchan.4) "\005\[BT\]\005 *** FIN de la liste BadChans ***"
set black(say.en.badchan.5) "Vous avez été trouvé en co-canalisation dans un ou plusieurs canaux sur liste noire"
set black(say.en.badchan.6) "\005\[BT\]\005 \002BadChan\002 activé."
set black(say.en.badchan.8) "\005\[BT\]\005 \002BadChan\002 désactivé."
set black(say.en.badchan.11) "\005\[BT\]\005 Ajouté \001%msg.1%\001 avec le numéro \002%msg.2%\002 dans ma liste \002GLOBALE\002 BadChans."
set black(say.en.badchan.12) "\005\[BT\]\005 Ajouté \001%msg.1%\001 avec le numéro \002%msg.2%\002 dans la liste BadChans de \002%chan%\002."
set black(say.en.badchan.14) "\005\[BT\]\005 La \002liste BadChans\002 pour \001%chan%\001 est :"
set black(say.en.badchan.15) "\005\[BT\]\005 La \002Liste Globale BadChans\002 est :"
set black(say.en.badchan.16) "#\002%msg.1%\002) %msg.2%"
set black(say.en.badchan.17) "\005\[BT\]\005 ÉCHEC : Aucune entrée correspondant au numéro \002%msg.1%\002 dans ma liste BadChans."
set black(say.en.badchan.18) "\005\[BT\]\005 Suppression du numéro \001%msg.1%\001 de la liste BadChans de \002%chan%\002."
set black(say.en.badchan.19) "\005\[BT\]\005 Suppression du numéro \001%msg.1%\001 de la liste \002GLOBALE\002 BadChans."
set black(say.en.badchan.39) "Vous avez été trouvé en co-canalisation dans un ou plusieurs canaux sur liste noire"
set black(say.en.badchan.40) "\002ATTENTION !\002 Vous avez été trouvé dans un ou plusieurs canaux sur liste noire ! Vous avez \002 %time% secondes\002 pour quitter : \002 %badchans%\002, sinon vous serez banni. Merci !"
set black(say.en.badchan.41) "\005\[BT\]\005 Pour voir les prochaines entrées, tapez : \001%char%badchan %chan% list -next\001 (\002%counter%\002 BadChans restants)"
set black(say.en.badchan.42) "\005\[BT\]\005 \001%msg.1%\001 est déjà ajouté à la liste \002GLOBALE\002 BadChans"
set black(say.en.badchan.43) "\005\[BT\]\005 \002BadChan\002 est déjà activé."
set black(say.en.badchan.44) "( \002%nick%\002 ) trouvé dans les mauvais canaux : ( \002%chans%\002 )"
set black(say.en.badchan.45) "\005\[BT\]\005 Ajout de \001%msg.1%\001 comme exception avec le numéro \002%msg.2%\002 dans la liste BadChans de \002%chan%\002."
set black(say.en.badchan.46) "regex"
set black(say.en.badchan.47) "\005\[BT\]\005 Ajouté REGEX \001%msg.1%\001 avec le numéro \002%msg.2%\002 dans ma liste \002GLOBALE\002 BadChans."
set black(say.en.badchan.48) "\005\[BT\]\005 Ajouté REGEX \001%msg.1%\001 avec le numéro \002%msg.2%\002 dans la liste BadChans de \002%chan%\002."

################################# AntiTaKe ######################################

set black(say.en.antitake.1) "\005\[BT\]\005 Vous ne pouvez pas donner \002DEOP\002 car vous n'êtes pas dans ma base de données avec accès."
set black(say.en.antitake.2) "\005\[BT\]\005 Vous ne pouvez pas donner \002OP\002 car vous n'êtes pas dans ma base de données avec accès."

################################# Anunt (advert) ######################################

set black(say.en.anunt.1) "%msg%"
set black(say.en.anunt.2) "\005\[BT\]\005 *** FIN de la liste des annonces ***"
set black(say.en.anunt.3) "\005\[BT\]\005 Module \002Annonces\002 activé."
set black(say.en.anunt.4) "\005\[BT\]\005 Module \002Annonces\002 désactivé."
set black(say.en.anunt.5) "\005\[BT\]\005 Annonce avec le numéro \002%msg.1%\002 ajoutée sur \001%chan%\001 :"
set black(say.en.anunt.6) "\002%msg.1%\002) %msg.8%"
set black(say.en.anunt.7) "\005\[BT\]\005 Il n'y a pas d'annonces pour \001%chan%\001."
set black(say.en.anunt.8) "\005\[BT\]\005 La \002liste des annonces\002 pour \001%chan%\001 est :"
set black(say.en.anunt.9) "\005\[BT\]\005 Pour voir les prochaines entrées, tapez : \001%char%anunt list -next\001 (\002%counter%\002 annonces restantes)"
set black(say.en.anunt.10) "\005\[BT\]\005 Suppression du numéro \001%msg.1%\001 de la liste des annonces de %chan%."
set black(say.en.anunt.13) "\005\[BT\]\005 ÉCHEC : Aucune entrée correspondant au numéro \001%msg.1%\001 dans la liste des annonces de \002%chan%\002."
set black(say.en.anunt.14) "\005\[BT\]\005 Pour voir les prochaines entrées, tapez : \001%char%anunt %chan% list -next\001 (\002%counter%\002 annonces restantes)"

################################# AutoBroadcast ######################################

set black(say.en.autobroadcast.1) "%msg%"
set black(say.en.autobroadcast.2) "\005\[BT\]\005 ÉCHEC : Aucune entrée correspondant au numéro \001%msg.1%\001 dans ma \002Liste de diffusion automatique\002."
set black(say.en.autobroadcast.3) "\005\[BT\]\005 La \002DIFFUSION AUTOMATIQUE\002 est déjà activée."
set black(say.en.autobroadcast.4) "\005\[BT\]\005 Module \002DIFFUSION AUTOMATIQUE\002 activé."
set black(say.en.autobroadcast.5) "\005\[BT\]\005 Module \002DIFFUSION AUTOMATIQUE\002 désactivé."
set black(say.en.autobroadcast.6) "\005\[BT\]\005 Diffusion automatique avec le numéro \001%msg.2%\001 ajoutée à ma liste de base de données."
set black(say.en.autobroadcast.7) "#\002%msg.1%\002) %msg.8%"
set black(say.en.autobroadcast.8) "\005\[BT\]\005 Il n'y a pas de \002Diffusions Automatiques\002 dans ma liste de base de données..."
set black(say.en.autobroadcast.9) "\005\[BT\]\005 La \002Liste des Diffusions Automatiques\002 est :"
set black(say.en.autobroadcast.10) "\005\[BT\]\005 *** FIN de la Liste des Diffusions Automatiques ***"
set black(say.en.autobroadcast.11) "\005\[BT\]\005 Suppression du numéro \001%msg.1%\001 de la liste des Diffusions Automatiques."
set black(say.en.autobroadcast.12) "\005\[BT\]\005 Pour voir les prochaines entrées, tapez : \001%char%bt list -next\001 (\002%counter%\002 Diffusions Automatiques restantes)"

################################# Limit ######################################

set black(say.en.limit.5) "\005\[BT\]\005 Module \002AutoLimit\002 activé dans \002%chan%\002."
set black(say.en.limit.6) "\005\[BT\]\005 La limite actuelle du canal est de \002%msg.1%\002."
set black(say.en.limit.7) "\005\[BT\]\005 Module \002AutoLimit\002 désactivé dans \002%chan%\002."
set black(say.en.limit.9) "\005\[BT\]\005 ÉCHEC : Vous ne pouvez pas définir une limite inférieure à \0022\002."
set black(say.en.limit.10) "\005\[BT\]\005 Définition de la limite à \002+2\002."
set black(say.en.limit.11) "\005\[BT\]\005 ÉCHEC : Vous ne pouvez pas définir une limite supérieure à \002500\002."
set black(say.en.limit.12) "\005\[BT\]\005 Limite du canal définie avec succès à : \002+%msg.1%\002"

################################# Topic ######################################

set black(say.en.topic.1) "\005\[BT\]\005 Le sujet de \002%chan%\002 est maintenant : \001%msg%\001"
set black(say.en.topic.2) "\005\[BT\]\005 Je ne peux pas définir le sujet car \002il est vide\002."
set black(say.en.topic.3) "\005\[BT\]\005 Le sujet de \002%chan%\002 est maintenant : \001%msg%\001 (sujet actuel)"
set black(say.en.topic.4) "\005\[BT\]\005 Réinitialisation du sujet de \002%chan%\002"

####################################### Seen ######################################

set black(say.en.seen.4) "\005\[BT\]\005 \002%msg.1%\002 Je suis juste là :P"
set black(say.en.seen.5) "\005\[BT\]\005 Attendez \002 1 minute\002 pour chercher."
set black(say.en.seen.6) "\005\[BT\]\005 \001%msg.1%\001 regarde dans un miroir :0"
set black(say.en.seen.7) "\005\[BT\]\005 \001%msg.1%\001 est dans \002%chan%\002. Prenez une paire de lunettes..."
set black(say.en.seen.8) "je n'ai aucune trace du temps qu'il est resté." (This could be improved, but is kept as is since it's likely meant to be informal)
set black(say.en.seen.9) "après avoir passé \002%staytime%\002 sur \001%chan%\001."
set black(say.en.seen.10) " \002%newnick%\002 est toujours sur \002%chan%\002."
set black(say.en.seen.11) " Impossible de voir \002%userentry%\002 en ce moment sur \002%chan%\002"
set black(say.en.seen.12) "\005\[BT\]\005 \002%entry%\002 (%host%) a quitté \001%chan%\001 il y a %output% environ %date%, avec le message : %reason%, %staymsg%"
set black(say.en.seen.13) "\005\[BT\]\005 \002%entry%\002 (%host%) a quitté IRC il y a %output% environ %date%, avec le message : %reason%, %staymsg%"
set black(say.en.seen.14) "\005\[BT\]\005 \002%entry%\002 (%host%) a rejoint %chan% il y a %output% environ %date%.%nowon%"
set black(say.en.seen.15) "\005\[BT\]\005 \002%entry%\002 (%host%) est parti dans *.net *.split il y a %output% environ %date%, %staymsg%"
set black(say.en.seen.16) "\005\[BT\]\005 \002%entry%\002 (%host%) a été expulsé de %chan% il y a %output% environ %date% avec la raison (%reason%), %staymsg%"
set black(say.en.seen.17) "\005\[BT\]\005 \002%entry%\002 (%host%) a changé son pseudo pour %newnick% il y a %output% environ %date%.%nowon%"
set black(say.en.seen.18) "\005\[BT\]\005 Je ne me souviens pas avoir vu \002%msg.1%\002 récemment.."
set black(say.en.seen.19) " \002%latest%\002 est toujours sur \002%chan%\002."
set black(say.en.seen.20) " Impossible de voir \002%latest%\002 en ce moment sur \002%chan%\002."
set black(say.en.seen.21) "\005\[BT\]\005 Trouvé (\002%num%\002) résultats "%entry%". Plus récemment \002%latest%\002 (%host%) a quitté %chan% il y a %output% environ %date% avec le message : "%reason%", %staymsg%"
set black(say.en.seen.22) "\005\[BT\]\005 Trouvé (\002%num%\002) résultats "%entry%". Plus récemment \002%latest%\002 (%host%) a quitté IRC il y a %output% environ %date% avec le message : "%reason%", %staymsg%"
set black(say.en.seen.23) "\005\[BT\]\005 Trouvé (\002%num%\002) résultats "%entry%". Plus récemment \002%latest%\002 (%host%) a rejoint %chan% il y a %output% environ %date%.%nowon%"
set black(say.en.seen.24) "\005\[BT\]\005 Trouvé (\002%num%\002) résultats "%entry%". Plus récemment \002%latest%\002 (%host%) est parti dans *.net *.split il y a %output% environ %date%, %staymsg%"
set black(say.en.seen.25) "\005\[BT\]\005 Trouvé (\002%num%\002) résultats "%entry%". Plus récemment \002%latest%\002 (%host%) a été expulsé de %chan% il y a %output% environ %date% avec la raison "%reason%", %staymsg%"
set black(say.en.seen.26) "\005\[BT\]\005 Trouvé (\002%num%\002) résultats "%entry%". Plus récemment \002%latest%\002 (%host%) a changé son pseudo pour %newnick% il y a %output% environ %date%.%nowon%"

################################# Greet ######################################

set black(say.en.greet.1) "\005\[BT\]\005 Message de bienvenue défini pour \002%chan%\002 comme : \001%msg%\001"
set black(say.en.greet.2) "\005\[BT\]\005 Module \002Accueil\002 activé."
set black(say.en.greet.3) "\005\[BT\]\005 Module \002Accueil\002 désactivé."

################################# Leave #######################################

set black(say.en.leave.1) "\005\[BT\]\005 Message de départ défini pour \002%chan%\002 comme : \001%msg%\001"
set black(say.en.leave.2) "\005\[BT\]\005 Module \002Départ\002 activé."
set black(say.en.leave.3) "\005\[BT\]\005 Module \002Départ\002 désactivé."

################################# Idle ######################################


set black(say.en.idle.11) "\005\[BT\]\005 Module \002Idle-Deop\002 activé sur \001%chan%\001."
set black(say.en.idle.12) "\005\[BT\]\005 Module \002Idle-Deop\002 désactivé sur \001%chan%\001."
set black(say.en.idle.14) "\005\[BT\]\005 Module \002Idle-Voice\002 activé sur \001%chan%\001."
set black(say.en.idle.15) "\005\[BT\]\005 Module \002Idle-Voice\002 désactivé sur \001%chan%\001."
set black(say.en.idle.17) "\005\[BT\]\005 \001%msg.1%\001 n'est pas sur \002%chan%\002."
set black(say.en.idle.18) "\005\[BT\]\005 \001%msg.1%\001 est déjà dans ma base de données, ajout en tant qu'exception uniquement..."
set black(say.en.idle.19) "\005\[BT\]\005 J'ai ajouté en tant qu'exception \001%msg.1%\001 avec l'hôte \002%msg.2%\002 sur \001%chan%\001."
set black(say.en.idle.20) "\005\[BT\]\005 La \002Liste des Exceptions Idle\002 pour \001%chan%\001 est :"
set black(say.en.idle.21) "%msg%"
set black(say.en.idle.22) "\005\[BT\]\005 \002%msg.1%\002 n'est pas dans ma base de données."
set black(say.en.idle.23) "\005\[BT\]\005 \002%msg.1%\002 n'est pas ajouté en tant qu'exception à l'inactivité."
set black(say.en.idle.24) "\005\[BT\]\005 \001%msg.1%\001 a été retiré de ma \002Liste des Exceptions Idle\002."
set black(say.en.idle.25) "\005\[BT\]\005 Module \002Idle-HalfOp\002 activé sur \001%chan%\001."
set black(say.en.idle.26) "\005\[BT\]\005 Module \002Idle-HalfOp\002 désactivé sur \001%chan%\001."

################################# TCL ######################################

set black(say.en.tcl.2) "\005\[BT\]\005 *** FIN de la liste tcls ***"
set black(say.en.tcl.3) "\005\[BT\]\005 Impossible de charger le script : \001%msg.1%\001. Raison : \002%msg.8%\002"
set black(say.en.tcl.4) "\005\[BT\]\005 Le script \002"%msg.1%"\002 est déjà chargé."
set black(say.en.tcl.5) "\005\[BT\]\005 Le script \002"%msg.1%"\002 a été chargé avec succès."
set black(say.en.tcl.7) "\005\[BT\]\005 Le script \002"%msg.1%"\002 n'est pas chargé."
set black(say.en.tcl.8) "\005\[BT\]\005 Désactivation du script \002"%msg.1%"\002."
set black(say.en.tcl.9) "\005\[BT\]\005 Pour voir les prochaines entrées, tapez : \001%char%tcl list -next\001 (\002%counter%\002 tcls restants)"
set black(say.en.tcl.10) "\005\[BT\]\005 Liste des \002TCL\002 (ceux en gras sont chargés) :"
set black(say.en.tcl.12) "\005\[BT\]\005 \002"%msg.1%"\002 \002n'existe pas\002 dans les scripts."
set black(say.en.tcl.13) "\005\[BT\]\005 \002"%msg.1%"\002 existe mais \002n'est pas chargé\002"
set black(say.en.tcl.14) "\005\[BT\]\005 \002"%msg.1%"\002 existe et \002est chargé\002"
set black(say.en.tcl.17) "%msg%." 
set black(say.en.tcl.18) "\005\[BT\]\005 ÉCHEC : Vous ne pouvez pas décharger ce script !"
set black(say.en.tcl.19) "\005\[BT\]\005 ÉCHEC : Je n'ai pas pu \002télécharger\002 le script \001%msg.1%\001 à partir du lien donné."
set black(say.en.tcl.20) "\005\[BT\]\005 Téléchargement terminé ! Pour charger le script, utilisez : \002%char%tcl load %msg.1%\002"
set black(say.en.tcl.21) "\005\[BT\]\005 Le script \002%msg.1%\002 est déjà téléchargé."

#################################### Next #####################################

set black(say.en.next.1) "\005\[BT\]\005 Bienvenue \002%nick%\002, veuillez patienter... Dès qu'un assistant sera libre, vous aurez la voix. Veuillez ne \002PAS\002 envoyer de message à \002+v/+o\002. Vous êtes le numéro \002%counter%\002 dans la file d'attente. Merci !"
set black(say.en.next.2) "Vous êtes maintenant aidé par \002%nick%\002. Veuillez poser votre question en \002une\002 seule ligne et \002attendre\002 une réponse de l'assistant qui vous a été attribué !"
set black(say.en.next.3) "\005\[BT\]\005 \001%msg.1%\001 attendait \002%msg.set%\002, veuillez l'aider maintenant :)"
set black(say.en.next.4) "\001%current%\001 maintenant que vous avez été aidé, veuillez faire \002/part %chan%\002. Si vous avez d'autres questions, veuillez taper \001/hop %chan%\001. Merci !"
set black(say.en.next.5) "Vous n'êtes pas autorisé à rester inactif ici. Veuillez rejoindre à nouveau le canal lorsque vous avez besoin d'aide"
set black(say.en.next.6) "\005\[BT\]\005 \002ATTENTION\002 : \002%nick%\002 a besoin d'aide sur \002%chan%\002. C'est le numéro \002%counter%\002 dans la file d'attente."
set black(say.en.next.7) "\005\[BT\]\005 Liste des utilisateurs en attente d'aide :"
set black(say.en.next.8) "\005\[BT\]\005 Personne n'a besoin d'aide pour le moment."
set black(say.en.next.9) "%msg%"
set black(say.en.next.11) "\005\[BT\]\005 \002ATTENTION\002 : \002%current%\002 est aidé \002en ce moment\002 par \002%nick%\002 (%hand%)"
set black(say.en.next.13) "\005\[BT\]\005 ÉCHEC : \001%msg.1%\001 est dans la liste d'aide, mais n'a pas encore été aidé."
set black(say.en.next.14) "\005\[BT\]\005 ÉCHEC : \001%msg.1%\001 n'est pas dans la liste d'aide."
set black(say.en.next.15) "\005\[BT\]\005 \002ATTENTION\002 : \002%current%\002 a reçu de l'\002aide\002 de \002%nick%\002 (%hand%)."
set black(say.en.next.17) "\005\[BT\]\005 ÉCHEC : \002%msg.1%\002 doit d'abord recevoir de l'aide \001%msg.1%\001"
set black(say.en.next.19) "\005\[BT\]\005 \002%msg.1%\002 ignoré (l'utilisateur a été déplacé à la fin de la liste)"

#################################### Quote #####################################

set black(say.en.quote.1) "\005\[BT\]\005 Citation numéro \002%msg.1%\002 enregistrée avec succès dans la base de données."
set black(say.en.quote.2) "\005\[BT\]\005 *** FIN de la liste des citations ***"
set black(say.en.quote.3) "\005\[BT\]\005 Citation \001#%msg.1%\001 : %msg.8%"
set black(say.en.quote.4) "\005\[BT\]\005 \001%msg.1%\001 :: %msg.2% ::"
set black(say.en.quote.6) "#\002%msg.1%\002) %msg.8%" 
set black(say.en.quote.7) "\005\[BT\]\005 Aucune entrée dans la \002liste des citations\002 pour \001%chan%\001"
set black(say.en.quote.8) "\005\[BT\]\005 La \002liste des citations\002 pour \001%chan%\001 est :"
set black(say.en.quote.9) "\005\[BT\]\005 Pour voir la suite des entrées, tapez : \001%char%q list -next\001 (\002%counter%\002 citations restantes)"
set black(say.en.quote.10) "\005\[BT\]\005 Suppression réussie de la citation numéro \001%msg.1%\001 de la base de données de \002%chan%\002."
set black(say.en.quote.11) "\005\[BT\]\005 ÉCHEC : Je n'ai aucune trace de cette citation."
set black(say.en.quote.12) "\005\[BT\]\005 \002\[Citation du jour\]\002"
set black(say.en.quote.13) "\005\[BT\]\005 ÉCHEC : Aucune entrée correspondant au numéro \001%msg.1%\001 dans la \002liste des citations\002 de \002%chan%\002"
set black(say.en.quote.14) "\005\[BT\]\005 Pour voir la suite des entrées, tapez : \001%char%q %chan% list -next\001 (\002%counter%\002 citations restantes)"
set black(say.en.quote.15) "\002Ajouté par\002 :"
set black(say.en.quote.16) "%msg%" 
set black(say.en.quote.17) "\005\[BT\]\005 \002Citation\002 \001#%msg.1%: %msg.set%\001"
set black(say.en.quote.18) "\005\[BT\]\005 Autres numéros de citations : \002%msg%\002"
set black(say.en.quote.19) "\005\[BT\]\005 \002Citation\002 : \001%msg%\001"
set black(say.en.quote.20) "Créé le :"

#################################### Notes #####################################


set black(say.en.notes.1) "\005\[BT\]\005 \002Note\002 avec le numéro \002%msg.1%\002 enregistrée dans votre base de données."
set black(say.en.notes.2) "\005\[BT\]\005 Note envoyée à \002%msg.1%\002/\002%msg.2% utilisateurs."
set black(say.en.notes.3) "\005\[BT\]\005 Note envoyée à \002%msg.1%\002/\002%msg.2% utilisateurs. Utilisateurs invalides : \001%msg.7%\001."
set black(say.en.notes.4) "\005\[BT\]\005 ÉCHEC : Aucune entrée ne correspond au numéro #\002%msg.1%\002."
set black(say.en.notes.5) "\005\[BT\]\005 \002Note\002 # %msg.1% : \002Emplacement\002 : %msg.2% \002Depuis\002 : %msg.3%"
set black(say.en.notes.6) "\005\[BT\]\005 \002Message\002 : %msg%"
set black(say.en.notes.7) "\005\[BT\]\005 \002Note\002 #%msg.1% : \002Emplacement\002 : %msg.2% \002De\002 : %msg.3% \002Depuis\002 : %msg.4%"
set black(say.en.notes.8) "\005\[BT\]\005 Suppression réussie de la note numéro \002%msg.1%\002."
set black(say.en.notes.9) "\002Statut\002 : LU \002Message\002 :"
set black(say.en.notes.10) "\002Statut\002 : NON LU \002Message\002 :"
set black(say.en.notes.11) "\005\[BT\]\005 Vous avez \001%msg.1%\001 note(s) non lue(s) en attente. Celles-ci sont : \002%msg.7%\002. Total des notes : \001%msg.2%\001"
set black(say.en.notes.12) "\005\[BT\]\005 Vous avez \001%msg.1%\001 note(s) non lue(s) en attente. Total des notes : \002%msg.2%\002"
set black(say.en.notesinbox.13) "\005\[BT\]\005 Tapez : \002%char%note read <numéro>\002 pour la voir."
set black(say.en.notesinbox.15) "\005\[BT\]\005 Pour voir les prochaines entrées, tapez : \001%char%note inbox -next\001 (\002%counter%\002 notes restantes)"
set black(say.en.notesinbox.16) "\005\[BT\]\005 Pour voir les prochaines entrées, tapez : \001%char%note %chan% inbox -next\001 (\002%counter%\002 notes restantes)"
set black(say.en.notes.13) "\005\[BT\]\005 ÉCHEC : Votre \002liste de notes\002 est vide."
set black(say.en.notes.14) "\005\[BT\]\005 Vous avez \002%msg.1%\002 notes personnelles ajoutées :"
set black(say.en.noteslist.15) "\005\[BT\]\005 Pour voir les prochaines entrées, tapez : \001%char%note list -next\001 (\002%counter%\002 notes restantes)"
set black(say.en.noteslist.16) "\005\[BT\]\005 Pour voir les prochaines entrées, tapez : \001%char%note %chan% list -next\001 (\002%counter%\002 notes restantes)"
set black(say.en.noteslist.13) "\005\[BT\]\005 Tapez : \002%char%note read <numéro>\002 pour la voir."
set black(say.en.notes.15) "\005\[BT\]\005 Suppression de \002TOUTES\002 les notes de la boîte de réception."
set black(say.en.notes.16) "\005\[BT\]\005 Tapez : \002%char%note read <numéro>\002 pour la voir."
set black(say.en.notes.17) "NOTES_DISABLED"

#############################################################################################################################
#                                                                                                                           #
#                                                      COMMANDS                                                             #
#                                                                                                                           #
#############################################################################################################################

###################################### ReportNick #################################

set black(say.en.report.1) "\005\[BT\]\005 Vous envoyez des requêtes trop rapidement. Calmez-vous et réessayez après \002%msg.1% secondes\002. Merci !"
set black(say.en.report.2) "\[REPORT\] Pseudo : \002%msg.1%\002 a été signalé par : \001%msg.2%\001 ; Raison : \002%msg.8%\002"
set black(say.en.report.3) "\[REPORT\] Pseudo : \002%msg.1%\002 a été signalé par : \001%msg.2%\001"
set black(say.en.report.4) "\005\[BT\]\005 Votre signalement a été transmis à notre équipe d'opérateurs. Merci !"
set black(say.en.report.5) "\005\[BT\]\005 Vous ne pouvez pas vous signaler vous-même, idiot !"

###################################### cp #####################################

set black(say.en.cp.1) "\005\[BT\]\005 Échec de la copie. (La BanList de \002%msg.1%\002 est vide.)"
set black(say.en.cp.2) "\005\[BT\]\005 Échec de la copie. (\002%msg%\002 n'est pas un canal valide.)"
set black(say.en.cp.3) "\005\[BT\]\005 Échec de la copie. (\002%msg%\002 il n'y a pas de canaux valides.)"
set black(say.en.cp.4) "\005\[BT\]\005 Copie effectuée. (\002%msg.1%\002 enregistrements copiés.)"
set black(say.en.cp.5) "\005\[BT\]\005 Copie effectuée. (\002%msg.1%\002 utilisateurs sur \001%msg.2%\001 copiés.)"
set black(say.en.cp.6) "\005\[BT\]\005 Copie effectuée. (\002%msg.1%\002 paramètres copiés.)"
set black(say.en.cp.7) "\005\[BT\]\005 Copie effectuée. (\002%msg.1%\002 mauvais canaux copiés.)"

#################################### mySet ####################################

set black(say.en.myset.1) "\005\[BT\]\005 La \002langue\002 est maintenant définie sur : \001%msg.1%\001."
set black(say.en.myset.2) "\005\[BT\]\005 Vous recevrez tous les messages du bot via \002%msg.1%\001."
set black(say.en.myset.3) "\005\[BT\]\005 \002Autoinvitation\002 est maintenant définie sur : \001%msg.1%\001."
set black(say.en.myset.4) "\005\[BT\]\005 Votre \002pseudo\002 est maintenant défini sur : \001%msg.1%\001."
set black(say.en.myset.5) "\005\[BT\]\005 Impossible de définir la langue \001%msg.1%\001 car le fichier n'existe pas."
set black(say.en.myset.6) "\005\[BT\]\005 Votre \002infoline\002 (accueil) personnelle est maintenant définie sur : \001%msg%\001."
set black(say.en.myset.7) "\005\[BT\]\005 Ajout de \001%msg.1%\001 comme nom d'hôte."
set black(say.en.myset.8) "\005\[BT\]\005 Suppression de \001%msg.1%\001 de la base de données des noms d'hôte."
set black(say.en.myset.9) "\005\[BT\]\005 \001%msg.1%\001 ne figure pas dans la base de données des noms d'hôte."
set black(say.en.myset.10) "\005\[BT\]\005 Votre \002mychan\002 est maintenant défini sur : \001%msg.1%\001."
set black(say.en.myset.11) "\005\[BT\]\005 Votre \001%msg.1%\001 a été réinitialisé."
set black(say.en.myset.12) "\005\[BT\]\005 \002%msg.1%\002 est maintenant défini sur : \001%msg.8%\001."
set black(say.en.myset.13) "\005\[BT\]\005 \002NoteExpire\002 est maintenant réglé sur : \001%msg.1%\001."
set black(say.en.myset.14) "\005\[BT\]\005 Vous devez spécifier 4 couleurs parmi celles disponibles. Les couleurs disponibles sont : \002gras\002 \001souligné\001 \0034rouge\003 \00312bleu\003 \0033vert\003 \0038jaune\003 \0037orange\003 \00310cyan\003 \00314gris\003 \0035marron\003 \0036violet\003 \00313rose\003 noir"
set black(say.en.myset.15) "\005\[BT\]\005 Une des couleurs n'est pas valide. Les couleurs disponibles sont : \002gras\002 \001souligné\001 \0034rouge\003 \00312bleu\003 \0033vert\003 \0038jaune\003 \0037orange\003 \00310cyan\003 \00314gris\003 \0035marron\003 \0036violet\003 \00313rose\003 noir"
set black(say.en.myset.16) "\005\[BT\]\005 Vos \002couleurs\002 sont maintenant définies sur : \001%msg%\001"
set black(say.en.myset.17) "\005\[BT\]\005 Vous devez spécifier l'un des caractères disponibles. Les caractères disponibles sont : \001%msg%\001"
set black(say.en.myset.18) "\005\[BT\]\005 Votre \002mychar\002 est maintenant défini sur : \001%msg.1%\001"
set black(say.en.myset.19) "\005\[BT\]\005 Vous pouvez désormais recevoir des \002NOTES\002"
set black(say.en.myset.20) "\005\[BT\]\005 Vous ne pouvez plus recevoir de \002NOTES\002 à partir de maintenant"

################################# Troll ######################################

set black(say.en.troll.5) "Trolle constamment, n'a jamais appris à se comporter"
set black(say.en.troll.6) "Les trolls misérables actuels (non désirés ici) sont : \002%msg%\002"

#################################### dr #######################################

set black(say.en.dr.5) "Drone/possible infection par un logiciel malveillant"

#################################### vr #######################################

set black(say.en.vr.5) "Infecté/Exploité par un ver/virus, veuillez nettoyer votre ordinateur"

################################### Bot #######################################

set black(say.en.bot.5) "Bot possible"
set black(say.en.bot.6) "Pour le débannissement, utilisez : \002/msg %botnick% unbanme %chan% %msg%\002"
set black(say.en.bot.7) "Félicitations ! Votre bannissement de \002%chan%\002 a été supprimé. Vous pouvez maintenant revenir !"
set black(say.en.bot.8) "Si HUMAIN -> \002/msg %botnick% unbanme %chan%\002"

################################## b #####################################


set black(say.en.b.5) {"Tu es banni !"
"Problème résolu"
"Houston, nous avons décollé"
"Eh bien, vous n'êtes pas le bienvenu"
"Parle à mon pied !"
"Merci, passez au drive !"
}

set black(say.en.b.6) "\005\[BT\]\005 La durée maximale pour votre niveau de ban est de \0027d\002 (20160 minutes)"
set black(say.en.b.7) "\005\[BT\]\005 Ajout d'un ban \[LOCAL\] à \002%chan%\002 avec \[ID: \001%msg.1%\001\]"
set black(say.en.b.8) "\005\[BT\]\005 Ajout d'un ban \[GLOBAL\] avec \[ID: \001%msg.1%\001\]"
set black(say.en.b.9) "\005\[BT\]\005 Le \002MassBan\002 n'est pas autorisé !"
set black(say.en.b.10) "\005\[BT\]\005 \002%msg.1%\002 n'est PAS un masque de ban valide."
set black(say.en.b.11) "\005\[BT\]\005 \002%msg.1%\002 n'est PAS une expression régulière valide."
set black(say.en.b.12) "\005\[BT\]\005 Ajout d'un ban \[LOCAL\] REGEX à \002%chan%\002 avec \[ID: \001%msg.1%\001\]"
set black(say.en.b.13) "\005\[BT\]\005 Ajout d'un ban \[GLOBAL\] REGEX avec \[ID: \001%msg.1%\001\]"
set black(say.en.b.14) "\005\[BT\]\005 Ajout d'un ban \[LOCAL\] à \002%chan%\002 avec \[ID: \001%msg.1%\001\] \[XONLY\]"

################################## n #####################################

set black(say.en.n.5) "Votre PSEUDO n'est pas approprié pour ce canal. Veuillez le changer ou risquez un bannissement."

################################## id ####################################

set black(say.en.id.5) "Votre IDENT n'est pas approprié pour ce canal. Veuillez le changer ou vous vous exposez à un bannissement."

################################## Black #################################

set black(say.en.black.5) "Vous n'êtes plus le bienvenu ici"

################################## w #####################################


set black(say.en.w.5) {
"Ce que vous dites est inapproprié et ne sera pas toléré ici. Veuillez changer de comportement."
"Votre comportement n'est pas propice à l'environnement souhaité."
"Votre comportement est inapproprié, veuillez changer votre façon de discuter."
"Veuillez être amical et surveiller votre langage"
}

set black(say.en.w.6) "Ceci était le dernier avertissement. La prochaine fois, vous serez banni !"

################################# spam ###################################

set black(say.en.spam.5) "Publicité/Invitation/Spam possible par MSG"

################################# k #######################################


set black(say.en.k.1) "\005\[BT\]\005 Aucun utilisateur trouvé sur %chan%."
set black(say.en.k.2) "\005\[BT\]\005 %msg.1% a accès sur %chan%"
set black(say.en.k.5) {"Désolé, veuillez rejoindre pour que je puisse vous expulser à nouveau"
"Voici la sortie, apprenez-la bien"
"Oooops, je l'ai encore fait"
"Allez, partez"
}

################################# Gag ######################################


set black(say.en.gag.1) "- ATTENTION - \002%gag%\002 doit encore servir une pénitence de \001%minute%\001 pour avoir enfreint les règles du canal. Profitez du silence :-)"
set black(say.en.gag.2) "\005\[BT\]\005 *** FIN de la liste GAGList ***"
set black(say.en.gag.3) "\005\[BT\]\005 \002%msg.1%\002 a déjà été réduit au silence sur \001%chan%\001."
set black(say.en.gag.4) "\005\[BT\]\005 \002%msg.1%\002 est déjà banni sur \001%chan%\001."
set black(say.en.gag.5) "- ATTENTION - \002%nick%\002 peut à nouveau écrire sur \002%chan%\002."
set black(say.en.gag.6) "N/A"
set black(say.en.gag.7) "\005\[BT\]\005 La \002durée maximale de GAG\002 pour votre niveau d'accès est de \0017d\001 (20160 minutes)"
set black(say.en.gag.10) "\005\[BT\]\005 Vous avez été réduit au silence sur \002%chan%\002 pendant \001%time%\001 parce que vous avez enfreint les \002règles\002 du canal."
set black(say.en.gag.11) "- ATTENTION - \002%gagger%\002 ne pourra pas écrire dans \002%chan%\002 pendant \001%time%\001 car il a enfreint les \002règles\002 du canal."

################################# unGag #####################################

set black(say.en.ungag.5) "\005\[BT\]\005 Il n'y a pas de GAG pour \001%msg.1%\001 sur \002%chan%\002."
set black(say.en.ungag.6) "\005\[BT\]\005 Suppression du GAG pour \001%msg.1%\001 sur \002%chan%\002."
set black(say.en.ungag.7) "Vous pouvez à nouveau écrire sur \002%chan%\002. Veuillez être plus prudent et ne pas enfreindre à nouveau les \002règles\002 du canal."
set black(say.en.ungag.8) "- ATTENTION - \002%gagger%\002 peut à nouveau écrire sur %chan%."

################################ bw #########################################

set black(say.en.bw.5) "Utilisateur indésirable en raison d'un comportement abusif"

############################### sb ##########################################

set black(say.en.sb.1) "\005\[BT\]\005 Trouvé \001%msg.1%\001 bannissements (\002%msg.2%\002 globaux, \002%msg.3%\002 locaux)"
set black(say.en.sb.2) "\005\[BT\]\005 Il n'y a \002AUCUN\002 bannissement correspondant à \001%msg.1%\001."
set black(say.en.sb.3) "\005\[BT\]\005 \002%msg.1%\002 | \[ID : %msg.2%\] | \[CHAN\] : * | \002%msg.3%\002 | Ajouté par : \002%msg.4%\002 | Depuis : \002%msg.5%\002 | EXP : \002%msg.6%\002 | Raison : \002%msg.7%\002"
set black(say.en.sb.4) "\005\[BT\]\005 \002%msg.1%\002 | \[ID : %msg.2%\] | \[CHAN\] : \002%chan%\002 | \002%msg.3%\002 | Ajouté par : \002%msg.4%\002 | Depuis : \002%msg.5%\002 | EXP : \002%msg.6%\002 | Raison : \002%msg.7%\002"
set black(say.en.sb.5) "\005\[BT\]\005 Il y a trop de résultats (>10) correspondants. Veuillez être plus précis."
set black(say.en.sb.6) "\005\[BT\]\005 Trouvé \002%msg.1%\002 bannissements locaux."
set black(say.en.sb.7) "\005\[BT\]\005 Dit sur le canal : \002%msg%\002"
set black(say.en.sb.8) "\005\[BT\]\005 Co-canalisation dans de mauvais canaux : \002%msg%\002"
set black(say.en.sb.9) "\005\[BT\]\005 \002%msg.1%\002 | \[ID : %msg.2%\] | \[CHAN\] : \002%chan%\002 | \002%msg.3%\002 | Ajouté par : \002%msg.4%\002 | Depuis : \002%msg.5%\002 | EXP : \002%msg.6%\002 | Raison : \002%msg.7%\002"
set black(say.en.sb.10) "\005\[BT\]\005 \002%msg.1%\002 | \[ID : %msg.2%\] | \[CHAN\] : * | \002%msg.3%\002 | Ajouté par : \002%msg.4%\002 | Depuis : \002%msg.5%\002 | EXP : \002%msg.6%\002 | Raison : \002%msg.7%\002"
set black(say.en.sb.11) "\005\[BT\]\005 Il n'y a \002AUCUN\002 enregistrement d'ID correspondant à \001%msg.1%\001."
set black(say.en.sb.12) "\005\[BT\]\005 \[\002COMMENTAIRE DE BAN\002\] %msg%"

############################### Stick ########################################

set black(say.en.stick.5) "Ban permanent"

################################## BanList ##################################### 

set black(say.en.banlist.1) "Permanent"
set black(say.en.banlist.2) "\005\[BT\]\005 \[CHAN\] : * (\002%msg.1%\002 bannissements trouvés)"
set black(say.en.banlist.3) "\005\[BT\]\005 Pour voir la suite des entrées, tapez \001%char%banlist global -next\001 (\002%counter%\002 bannissements restants)"
set black(say.en.banlist.4) "\005\[BT\]\005 *** FIN de la BanList ***"
set black(say.en.banlist.5) "\005\[BT\]\005 \002%msg.2%\002 ; \[ID : %msg.1%\] ; \002%msg.3%\002 ; Ajouté par : \002%msg.4%\002 ; Depuis : \002%msg.12%\002 ; EXP : \002%msg.13%\002 \002%msg.15%\002 \002%msg.17%\002 ; Raison : \002%msg.20%\002"
set black(say.en.banlist.6) "\005\[BT\]\005 \[CHAN\] : %chan% (\002%msg.1%\002 bannissements trouvés)"
set black(say.en.banlist.7) "\005\[BT\]\005 \[UTILISATEUR\] : %msg.2% (\002%msg.1%\002 bannissements trouvés)"
set black(say.en.banlist.8) "\005\[BT\]\005 Pour voir la suite des entrées, tapez %char%banlist \002%user%\002 -next (\002%counter%\002 bannissements restants)"
set black(say.en.banlist.9) "\005\[BT\]\005 \002%msg.2%\002 ; \[ID : %msg.1%\] ; \002%msg.3%\002 ; Depuis : \002%msg.4%\002 ; EXP : %msg.12% \002%msg.13%\002 \002%msg.15%\002 ; Raison : \002%msg.16%\002"
set black(say.en.banlist.10) "\005\[BT\]\005 Pour voir la suite des entrées, tapez %char%banlist all -next (\002%counter%\002 bannissements restants)"
set black(say.en.banlist.11) "\005\[BT\]\005 \002%msg.2%\002 ; \[ID : %msg.1%\] ; \002%msg.3%\002 ; Ajouté par : \002%msg.4%\002 ; Depuis : \002%msg.12%\002 ; EXP : \002%msg.13%\002 ; Raison : \002%msg.14%\002"
set black(say.en.banlist.12) "\005\[BT\]\005 \002%msg.2%\002 ; \[ID : %msg.1%\] ; \002%msg.3%\002 ; Depuis : \002%msg.4%\002 ; EXP : \002%msg.12%\002 ; Raison : \002%msg.11%\002"
set black(say.en.banlist.13) "JAMAIS"
set black(say.en.banlist.14) "\005\[BT\]\005 Pour voir la suite des entrées, tapez \001%char%banlist %chan% all -next\001 (\002%counter%\002 bannissements restants)"
set black(say.en.banlist.15) "\005\[BT\]\005 Pour voir la suite des entrées, tapez \001%char%banlist %chan% other -next\001 (\002%counter%\002 bannissements restants)"

############################### Status #######################################

set black(say.en.status.1) "\005\[BT\]\005 Version du script : \001%msg.1% %msg.2%\001 - Version d'Eggdrop : \002%msg.3%\002 - Version TCL : \001%msg.12%\003"
set black(say.en.status.2) "\005\[BT\]\005 Heure de démarrage : \002%msg%\002"
set black(say.en.status.3) "\005\[BT\]\005 Temps en ligne : \002%msg%\002"
set black(say.en.status.4) "\005\[BT\]\005 Canaux surveillés : \002%msg%\002"
set black(say.en.status.5) "\005\[BT\]\005 Utilisateurs totaux : \001%msg.1%\001 - Propriétaire d'Eggdrop : \002%msg.2%\002"

############################## upTime #######################################

set black(say.en.uptime.2) "\005\[BT\]\005 Temps de fonctionnement du serveur : \002%msg%\002"
set black(say.en.uptime.3) "\005\[BT\]\005 Connecté à : \002%msg%\002"

################################ i ##########################################

set black(say.en.i.1) "\005\[BT\]\005 \001%msg.1%\001 est déjà sur \002%chan%\002."
set black(say.en.i.2) "\005\[BT\]\005 Invitation de \001%msg.1%\001 sur \002%chan%\002."
set black(say.en.i.7) "Vous êtes invité sur \002%chan%\002 par \001%nick%\001, pour rejoindre, tapez :\002 /join %chan%\002. Merci !"

################################ Cycle #####################################

set black(say.en.cycle.1) {
"Je fais de l'exercice.."
"J'essaie de réparer quelque chose.."
"Je reviens.."
"Je serai de retour dans un instant.."
}
set black(say.en.cycle.2) "Je serai de retour dans %msg.1% secondes.."

################################ Purge #####################################

set black(say.en.purge.1) "\005\[BT\]\005 Veuillez préciser une raison.."

################################## Chat #####################################

set black(say.en.chat.1) "\005\[BT\]\005 Discussion DCC - Initialisation..."
set black(say.en.chat.2) "\005\[BT\]\005 Vous n'avez pas défini de mot de passe, veuillez le faire maintenant : /msg %botnick% pass \001<votre mot de passe>\001"

################################## Version ##################################

set black(say.en.version.1) "\005\[BT\]\005 SCRIPT VERSION: \001BlackTools %msg.1%\001 (Last update: %msg.8%) coded by \002BLaCkShaDoW\002. For other details ---= \002WwW.TclScripts.Net\002 or #TCL-HELP @ UNDERNET"

################################# ub ######################################


set black(say.en.ub.1) "\005\[BT\]\005 Je n'ai trouvé aucun bannissement correspondant à \002%msg.1%\002"
set black(say.en.ub.2) "\005\[BT\]\005 Supprimé \001%msg.1%\001 bannissements (\002%msg.2%\002 trouvés) qui correspondaient à \001%msg.3%\001"
set black(say.en.ub.3) "\005\[BT\]\005 Je n'ai trouvé aucun ban \[GLOBAL\] correspondant à \002%msg.1%\002"
set black(say.en.ub.4) "\005\[BT\]\005 Supprimé \001%msg.1%\001 bannissements \[GLOBAL\] qui correspondaient à \002%msg.2%\003"
set black(say.en.ub.5) "\005\[BT\]\005 Vous n'avez pas suffisamment d'accès pour supprimer la BanList."
set black(say.en.ub.6) "\005\[BT\]\005 Bannissement supprimé de la BanList de \002%chan%\002."
set black(say.en.ub.7) "\005\[BT\]\005 \001%msg.1%\001 bannissements supprimés de \002%msg.2%\002 canaux \002LIÉS\002"
set black(say.en.ub.8) "\005\[BT\]\005 Je n'ai trouvé aucun bannissement correspondant à \[ID : \002%msg.1%\002\]"
set black(say.en.ub.9) "\005\[BT\]\005 Bannissement supprimé avec \[ID : \002%msg.3%\003\]"
set black(say.en.ub.10) "\005\[BT\]\005 Suppression du ban \[GLOBAL\] qui correspondait à \[ID : \002%msg.2%\003\]"
set black(say.en.ub.11) "\005\[BT\]\005 Je n'ai trouvé aucun ban \[GLOBAL\] correspondant à l'\[ID : \002%msg.1%\002\]"

################################## Mode ###################################

set black(say.en.mode.6) "\005\[BT\]\005 Fait ! Modes \001%msg.1%\001 définis sur \002%chan%\002."

################################### Set ###################################

set black(say.en.set.1) "\005\[BT\]\005 Défini \001%msg.1%\001 \004%msg.set%\004 ."
set black(say.en.set.2) "\005\[BT\]\005 ÉCHEC : Impossible de définir \001%msg.1%\001 \004%msg.set%\004"
set black(say.en.set.3) "\005\[BT\]\005 \001%msg.1%\001 est déjà défini sur \002%msg.set%\002 sur \002%chan%\002"
set black(say.en.set.4) "\005\[BT\]\005 \001%msg.1%\001 est déjà défini sur \002%chan%\002."
set black(say.en.set.5) "\005\[BT\]\005 ÉCHEC : Impossible de définir \001%msg.1%\001 sur \002%chan%\002"
set black(say.en.set.6) "\005\[BT\]\005 Défini \001%msg.1%\001 pour \002%chan%\002"
set black(say.en.set.7) "\005\[BT\]\005 ÉCHEC : Impossible de définir \001%msg.1%\001 \004%msg.set%\004 sur \002%chan%\002."
set black(say.en.set.8) "\005\[BT\]\005 Défini \001%msg.1%\001 \004%msg.set%\004 pour \002%chan%\002"
set black(say.en.set.9) "\005\[BT\]\005 \001%msg.1%\001 est déjà défini sur \002%msg.set%\002"
set black(say.en.set.14) "\005\[BT\]\005 Paramètre invalide."

#################################### unSet #################################

set black(say.en.unset.1) "\005\[BT\]\005 Aucun paramètre ne correspond à \002%msg.1%\002."
set black(say.en.unset.2) "\005\[BT\]\005 Réinitialisation de \001%msg.1%\001 sur \002%chan%\002 à la valeur par défaut."
set black(say.en.unset.3) "\005\[BT\]\005 \001%msg.1%\001 n'est pas défini sur \002%chan%\002."
set black(say.en.unset.4) "\005\[BT\]\005 Tous les paramètres de type \002flag\002 ont été désactivés sur \001%chan%\001."
set black(say.en.unset.5) "\005\[BT\]\005 Tous les paramètres de type \002string\002 ont été désactivés sur \001%chan%\001."

#################################### Timer ####################################

set black(say.en.timer.1) "\005\[BT\]\005 Minuteurs actifs :"
set black(say.en.timer.2) "\001%msg.1%\001) PID : \002%msg.2%\002 | Temps actif : \001%msg.3%\001 minutes | Nom du processus : \002%msg.4%\002"
set black(say.en.timer.3) "\001%msg.1%\001) PID : \002%msg.2%\002 | Temps actif : \001%msg.3%\001 secondes | Nom du processus : "\002%msg.9%\002""
set black(say.en.timer.4) "\005\[BT\]\005 *** FIN de la liste des minuteurs ***"
set black(say.en.timer.5) "\005\[BT\]\005 Le minuteur avec le pid \002%msg.1%\002 a été arrêté."
set black(say.en.timer.6) "\005\[BT\]\005 Il n'y a pas de minuteur correspondant au pid \002%msg.1%\002"
set black(say.en.timer.7) "\005\[BT\]\005 Minuteur démarré avec le pid \002%msg.1%"
set black(say.en.timer.8) "\005\[BT\]\005 Il y a déjà un minuteur démarré pour ce processus."

#################################### Ignore ################################


set black(say.en.ignore.2) "\005\[BT\]\005 Impossible d'ignorer car l'hôte appartient à un utilisateur ayant un accès supérieur au vôtre."
set black(say.en.ignore.3) "\005\[BT\]\005 Il n'y a aucune exclusion."
set black(say.en.ignore.4) "\005\[BT\]\005 Masque : \001%msg.1%\001 | Ajouté par : \002%msg.2%\002 | Raison : \001%msg.6%\001 | EXP : \002%msg.3%\002"
set black(say.en.ignore.5) "\005\[BT\]\005 ÉCHEC : \002%msg.1%\002 a déjà ignoré."
set black(say.en.ignore.6) "\005\[BT\]\005 Ajout d'une exclusion pour \001%msg.1%\001 avec la raison : \002%msg.7%\002 expire après : \001%msg.2%\001"
set black(say.en.ignore.8) "\005\[BT\]\005 Impossible de trouver \002%msg.1%\002 dans la liste des ignorés."
set black(say.en.ignore.9) "\005\[BT\]\005 Suppression de l'exclusion : \002%msg.1%\002."

################################## Show ####################################

set black(say.en.show.4) "\005\[BT\]\005 L'\001%msg.1%\001 actuel est défini sur : \002%msg.2%\002. Temps restant jusqu'au prochain minuteur : \002%msg.3%\002 minutes"
set black(say.en.show.5) "\005\[BT\]\005 Je n'ai pas pu obtenir d'informations sur \002%msg.1%\002."
set black(say.en.show.6) "\005\[BT\]\005 L'\001%msg.1%\001 actuel est défini sur : \002%msg.8%\002 sur \002%chan%\002."
set black(say.en.show.7) "\005\[BT\]\005 Actuellement \002%msg.1%\002 est activé sur \002%chan%\002."
set black(say.en.show.8) "\005\[BT\]\005 Actuellement \002%msg.1%\002 est désactivé sur \002%chan%\002."

################################### Rehash #####################################


set black(say.en.rehash.1) "\005\[BT\]\005 Rechargement des scripts/paramètres..."

################################### Restart ####################################

set black(say.en.restart.1) "\005\[BT\]\005 Redémarrage du système. De retour dans quelques instants..."

################################### Save #######################################

set black(say.en.save.1) "\005\[BT\]\005 Enregistrement des fichiers..."

################################### Jump #######################################

set black(say.en.jump.1) "\005\[BT\]\005 Changement de serveur vers : %msg%"

################################### Die #######################################

set black(say.en.die.1) "\005\[BT\]\005 Suicide commis.."
set black(say.en.die.2) "\005\[BT\]\005 ** BOOM** Cet Eggdrop BlackTools a été arrêté.."

################################### Nick #####################################


set black(say.en.nick.1) "\005\[BT\]\005 Changement de pseudo en \002%msg.1%\002 (paramètre permanent)"
set black(say.en.nick.2) "\005\[BT\]\005 Utilisation : \"nick <nouveau pseudo>\""
set black(say.en.nick.3) "\005\[BT\]\005 Attention ! Le pseudo n'a été changé que jusqu'au prochain redémarrage (vérifiez si le paramètre \"set nick\" existe dans votre configuration d'Eggdrop)."
set black(say.en.nick.4) "\005\[BT\]\005 Changement de pseudo en \002%msg.1%\002 (paramètre temporaire)"

################################### AddChan ##################################

set black(say.en.addchan.2) "\005\[BT\]\005 \002%msg.1%\002 est déjà dans ma liste de canaux."
set black(say.en.addchan.3) "\005\[BT\]\005 \002%msg.1%\002 ajouté à ma liste de canaux."

################################### DelChan ##################################

set black(say.en.delchan.1) "Le canal %chan% a été supprimé par \002%hand%\002 avec la raison : %reason%"
set black(say.en.delchan.2) "\005\[BT\]\005 \002%msg.1%\002 ne figure pas dans ma liste de canaux."
set black(say.en.delchan.3) "\005\[BT\]\005 Suppression de \002%msg.1%\002 de ma liste de canaux."
set black(say.en.delchan.5) "\005\[BT\]\005 Impossible de supprimer le canal \001%msg.1%\001 car c'est le \002HOMECHAN\002 de l'eggdrop."

################################### Suspend ##################################

set black(say.en.suspend.2) "\005\[BT\]\005 Le canal \002%chan%\002 a été suspendu par \001%hand%\001 avec la raison : \002%reason%\002"
set black(say.en.suspend.3) "\005\[BT\]\005 \002%msg.1%\002 est déjà suspendu."
set black(say.en.suspend.4) "\005\[BT\]\005 Le canal \002%msg.1%\002 est maintenant suspendu."

################################### unSuspend ##################################

set black(say.en.unsuspend.3) "\005\[BT\]\005 \002%msg.1%\002 n'est pas suspendu."
set black(say.en.unsuspend.4) "\005\[BT\]\005 La suspension pour le canal \002%msg.1%\002 est annulée."

################################### add #########################################


set black(say.en.add.5) "\005\[BT\]\005 Il y a \002déjà un autre utilisateur\002 dans ma base de données avec le même hôte connu sous le nom de \001%msg.1%\001."
set black(say.en.add.6) "\005\[BT\]\005 Impossible d'ajouter \002%msg.1%\002 car il est supérieur à votre niveau d'accès."
set black(say.en.add.7) "\005\[BT\]\005 Impossible d'ajouter \002%msg.2%\002 car c'est votre niveau d'accès."
set black(say.en.add.8) "\005\[BT\]\005 Impossible d'ajouter \002%msg.3%\002 car c'est votre niveau d'accès."
set black(say.en.add.10) "\005\[BT\]\005 Ajout de l'utilisateur \001%msg.1%\001 avec le masque : \002%msg.2%\002"
set black(say.en.add.17) "\005\[BT\]\005 L'utilisateur \001%msg.1%\001 est trop long. A été automatiquement tronqué à \002%msg.2%\002"
set black(say.en.add.18) "\005\[BT\]\005 Veuillez utiliser un format d'utilisateur valide contenant uniquement des caractères alphanumériques."
set black(say.en.add.19) "\005\[BT\]\005 \001%msg.1%\001 a un accès de niveau \002%msg.2%\002 sur \002%chan%\002"
set black(say.en.add.20) "\005\[BT\]\005 \001%msg.1%\001 a un accès de niveau \002%msg.2%\002."

################################### DelAcc #########################################

set black(say.en.delacc.1) "\005\[BT\]\005 Accès de \001%msg.1%\001 supprimé de \002%chan%\002."
set black(say.en.delacc.2) "\005\[BT\]\005 Accès \002OWNER\002 de \001%msg.1%\001 supprimé."
set black(say.en.delacc.3) "\005\[BT\]\005 N'a pas l'accès \002OWNER\002."
set black(say.en.delacc.4) "\005\[BT\]\005 Accès \002MASTER\002 de \001%msg.1%\001 supprimé."

#################################### Del ###########################################

set black(say.en.del.1) "\005\[BT\]\005 Suppression de \002%msg.1%\002 de ma mémoire..."
set black(say.en.del.2) "\005\[BT\]\005 Impossible de supprimer l'utilisateur \001%msg.1%\001 car il a accès à d'autres canaux. Utilisez : \002delacc %msg.1%\002"

################################### AddHost ########################################

set black(say.en.addhost.1) "\005\[BT\]\005 Le masque hôte \001%msg.2%\001 existe déjà dans la base de données de \002%msg.1%\002."
set black(say.en.addhost.2) "\005\[BT\]\005 Masque hôte \001%msg.2%\001 ajouté pour l'utilisateur \002%msg.1%\002."

################################### DelHost ########################################

set black(say.en.delhost.1) "\005\[BT\]\005 Le masque hôte \001%msg.2%\001 n'existe pas dans la base de données de \002%msg.1%\002."
set black(say.en.delhost.2) "\005\[BT\]\005 Masque hôte \001%msg.2%\001 supprimé de l'utilisateur \002%msg.1%\002."

################################### chUser ########################################

set black(say.en.chuser.1) "\005\[BT\]\005 Changement du pseudo de \001%msg.1%\001 en : \002%msg.2%\002."
set black(say.en.chuser.2) "\005\[BT\]\005 Votre pseudo a été changé en : \002%msg.1%\002."
set black(say.en.chuser.3) "\005\[BT\]\005 Il y a déjà un utilisateur avec le même pseudo. Veuillez en choisir un autre."

################################### UserList ########################################

set black(say.en.userlist.1) "\005\[BT\]\005 %msg%"
set black(say.en.userlist.2) "\005\[BT\]\005 Il y a \001%msg.1%\001 utilisateurs ayant accès sur \002%chan%\002."

#################################### Channels #####################################

set black(say.en.channels.1) "\005\[BT\]\005 J'ai \002%msg.1%\002 canaux.."
set black(say.en.channels.2) "%msg%"
set black(say.en.channels.3) "\002OK\002"
set black(say.en.channels.4) "\002PAS SUR LE CANAL\002"
set black(say.en.channels.5) "\002SUSPENDU\002"
set black(say.en.channels.6) "\002AUTOSUSPENSION\002"
set black(say.en.channels.7) "\002Utilisateurs\002"
set black(say.en.channels.8) "\002Invisible\002"

#################################### Info ########################################


set black(say.en.info.1) "\005\[BT\]\005 \[UTILISATEUR\] \002%msg.1%\002 Niveau d'accès : \002%msg.8%\002"
set black(say.en.info.2) "\005\[BT\]\005 \[CHAN\] \002%msg.1%\002 -- AUTOMODE : \001%msg.2%\001 -- STATS : \002%char%stats %msg.3%\002"
set black(say.en.info.3) "\005\[BT\]\005 \[Info\] %msg%"
set black(say.en.info.4) "\005\[BT\]\005 \[Dernière modification par\] \002%msg.1%\002 le : \001%msg.8%\001"
set black(say.en.info.5) "\005\[BT\]\005 \[Dernière fois vu EN LIGNE\] \001%msg.1%\001"
set black(say.en.info.6) "\005\[BT\]\005 \[HÔTES\] \002%msg%\002"
set black(say.en.info.7) "\005\[BT\]\005 ** SUSPENDU** - Expire dans \001%msg.1%\001 %msg.2% %msg.3% (Niveau \002%msg.4%\002) - Raison : \002%msg.10%\002"
set black(say.en.info.8) "\005\[BT\]\005 \[Canaux avec accès\] %msg%."
set black(say.en.info.9) "\005\[BT\]\005 ** SUSPENDU GLOBALEMENT** - Expire dans \001%msg.1%\001 %msg.2% %msg.3% (Niveau \002%msg.4%\002) - Raison : \002%msg.10%\002"
set black(say.en.info.10) "\005\[BT\]\005 \[Dernière fois vu EN LIGNE\] \001%msg.1%\001 dans : \002%msg.2%\002"
set black(say.en.info.11) "\005\[BT\]\005 \[UTILISATEUR\] \002%msg.1%\002"
set black(say.en.info.12) "\005\[BT\]\005 Trouvé (%msg.1%) enregistrements : \002%msg.8%\002."
set black(say.en.info.13) "\005\[BT\]\005 Trouvé (%msg.1%) enregistrements. Veuillez affiner votre recherche."
set black(say.en.info.14) "\005\[BT\]\005 Pour plus d'informations sur le bon utilisateur, tapez \002%char%info <user>\002"
set black(say.en.info.15) "\005\[BT\]\005 \[CHAN\] \002%msg.1%\002 -- modes : \002%msg.8%\002"
set black(say.en.info.16) "\005\[BT\]\005 \[GESTIONNAIRE\] \002%msg%\002"
set black(say.en.info.17) "\005\[BT\]\005 \[SUJET\] \002%msg%\002"
set black(say.en.info.18) "\005\[BT\]\005 \[URL\] \002%msg%\002"
set black(say.en.info.19) "\005\[BT\]\005 \[STATUT\] \002%msg%\002"
set black(sayen.info.20) "\005\[BT\]\005 \[ENREGISTRÉ\] \002%msg.1%\002 (\002%msg.8%\002)"
set black(say.en.info.21) "\005\[BT\]\005 \[STATS\] joins : \002%msg.1%\002 | utilisateurs : \002%msg.2%\002 (%msg.3% avec accès) | bans : \002%msg.4%\002 | vu : \002%msg.5%\002"
set black(say.en.info.22) "\001SUSPENDU\001"
set black(say.en.info.23) "\001PAS sur le canal\001"
set black(say.en.info.24) "\001PAS OP\001"
set black(say.en.info.25) "\005\[BT\]\005 \[CHAN\] \002%msg.1%\002 -- AUTOMODE : \002%msg.2%\002 -- Flags : \002%msg.3%\002 -- STATS : \002%char%activ %msg.4%\002"
set black(say.en.info.26) "AUTOSUSPENDU -- Raison : le canal est plein (+l)"
set black(say.en.info.27) "AUTOSUSPENDU -- Raison : le canal nécessite une clé (+k)"
set black(say.en.info.28) "AUTOSUSPENDU -- Raison : le canal est sur invitation seulement (+i)"
set black(say.en.info.29) "AUTOSUSPENDU -- Raison : banni (+b)"
set black(say.en.info.30) "PAS SUR LE CANAL -- Raison : impossible de rejoindre le canal (+l)"
set black(say.en.info.31) "PAS SUR LE CANAL -- Raison : impossible de rejoindre le canal (+k)"
set black(say.en.info.32) "PAS SUR LE CANAL -- Raison : impossible de rejoindre le canal (+i)"
set black(say.en.info.33) "PAS SUR LE CANAL -- Raison : impossible de rejoindre le canal (+b)"
set black(say.en.info.34) "PAS SUR LE CANAL -- Raison : impossible de rejoindre le canal (+r)"
set black(say.en.info.35) "AUTOSUSPENDU -- Raison : utilisateurs enregistrés seulement (+r)"
set black(say.en.info.36) "\005\[BT\]\005 \[Paramètres\] \001%msg%\001"
set black(say.en.info.37) "\[BT\] \[BLACKLIST\] %msg%"

################################## s #############################################

set black(say.en.s.1) "\005\[BT\]\005 L'accès de \001%msg.1%\001 sur \002%chan%\002 est déjà suspendu."
set black(say.en.s.2) "\005\[BT\]\005 L'accès de \001%msg.1%\001 sur \002%chan%\002 est maintenant suspendu."
set black(say.en.s.3) "Aucune raison fournie."
set black(say.en.s.4) "\005\[BT\]\005 L'accès de \001%msg.1%\001 est déjà suspendu par une personne de niveau supérieur."
set black(say.en.s.5) "\005\[BT\]\005 L'accès de \001%msg.1%\001 a été suspendu GLOBALEMENT."

################################## us #############################################

set black(say.en.us.1) "\005\[BT\]\005 \001%msg.1%\001 n'est pas suspendu sur \002%chan%\002."
set black(say.en.us.2) "\005\[BT\]\005 SUSPENSION pour \001%msg.1%\001 sur \002%chan%\002 est annulée."
set black(say.en.us.3) "\005\[BT\]\005 SUSPENSION globale pour \001%msg.1%\001 est annulée."
set black(say.en.us.4) "\005\[BT\]\005 \002%msg.1%\002 est suspendu par un utilisateur ayant un accès supérieur."

################################## r ##############################################

set black(say.en.r.1) {	
	"Actualisation du sujet en cours, veuillez patienter..."
	"Actualisation du sujet, veuillez patienter..."
}
set black(say.en.r.2) "\005\[BT\]\005 Impossible de procéder. Aucun sujet n'est défini."

################################## Auto ##########################################

set black(say.en.auto.6) "\005\[BT\]\005 Votre mode AUTO global est défini sur \002OP\002 (+o)"
set black(say.en.auto.7) "\005\[BT\]\005 Votre mode AUTO global est défini sur \002VOIX\002 (+v)"
set black(say.en.auto.8) "\005\[BT\]\005 Votre mode AUTO est défini sur \002OP\002 (+o) sur %chan%"
set black(say.en.auto.9) "\005\[BT\]\005 Votre mode AUTO est défini sur \002VOIX\002 (+v) sur %chan%"
set black(say.en.auto.10) "\005\[BT\]\005 Mode AUTO défini sur \002OP\002 (+o) pour %msg.1% sur %chan%"
set black(say.en.auto.11) "\005\[BT\]\005 Mode AUTO défini sur \002VOIX\002 (+v) pour %msg.1% sur %chan%"
set black(say.en.auto.12) "\005\[BT\]\005 Mode AUTO global défini sur \002OP\002 (+o) pour %msg.1%"
set black(say.en.auto.13) "\005\[BT\]\005 Mode AUTO global défini sur \002VOIX\002 (+v) pour %msg.1%"
set black(say.en.auto.14) "\005\[BT\]\005 Votre mode AUTO global \002OP\002 (+o) a été supprimé."
set black(say.en.auto.15) "\005\[BT\]\005 Votre mode AUTO global \002VOIX\002 (+v) a été supprimé."
set black(say.en.auto.16) "\005\[BT\]\005 Votre mode AUTO \002OP\002 (+o) a été supprimé sur %chan%"
set black(say.en.auto.17) "\005\[BT\]\005 Votre mode AUTO \002VOIX\002 (+v) a été supprimé sur %chan%"
set black(say.en.auto.18) "\005\[BT\]\005 Suppression du mode AUTO \002OP\002 (+o) de %msg.1% sur %chan%"
set black(say.en.auto.19) "\005\[BT\]\005 Suppression du mode AUTO \002VOIX\002 (+v) de %msg.1% sur %chan%"
set black(say.en.auto.20) "\005\[BT\]\005 Suppression du mode AUTO global \002OP\002 (+o) de %msg.1%"
set black(say.en.auto.21) "\005\[BT\]\005 Suppression du mode AUTO global \002VOIX\002 (+v) de %msg.1%"

################################# Login #########################################

set black(say.en.login.1) "\005\[BT\]\005 Connexion à \002%msg.1%\002..."
set black(say.en.login.2) "\005\[BT\]\005 Je suis déjà connecté à \002%msg.1%\002..."
set black(say.en.login.3) "\005\[BT\]\005 Je n'ai pas pu me connecter. Veuillez vérifier les informations de connexion ou si ChanServ (X, Q, L) est en ligne."
set black(say.en.login.4) "\005\[BT\]\005 Connexion échouée (Mauvais mot de passe)"
set black(say.en.login.5) "\005\[BT\]\005 Connexion réussie"
set black(say.en.login.6) "\005\[BT\]\005 Connexion échouée (Nombre maximum de connexions simultanées dépassé)"
set black(say.en.login.7) "\005\[BT\]\005 Connexion échouée (Aucun nom d'utilisateur spécifié)"
set black(say.en.login.8) "\005\[BT\]\005 Connexion échouée (Nom d'utilisateur invalide)"
set black(say.en.login.9) "\005\[BT\]\005 Je m'identifie à NICKSERV..."
set black(say.en.login.10) "\005\[BT\]\005 Identification réussie avec NickServ"
set black(say.en.login.11) "\005\[BT\]\005 Échec de l'identification avec NickServ (Mauvais mot de passe)"
set black(say.en.login.13) "Mot de passe incorrect"
set black(say.en.login.15) "Ce pseudo appartient à quelqu'un d'autre"
set black(say.en.login.16) "\005\[BT\]\005 Échec de l'identification avec NickServ (le pseudo appartient à quelqu'un d'autre)"

################################# Enable #####################################

set black(say.en.enable.1) "\005\[BT\]\005 Activé \001%msg.1%\001 sur \002%chan%\002"
set black(say.en.enable.2) "\005\[BT\]\005 \001%msg.1%\001 est déjà activé sur \002%chan%\002"
set black(say.en.enable.3) "\005\[BT\]\005 La commande \002%msg.1%\002 n'existe pas."
set black(say.en.enable.4) "\005\[BT\]\005 Activé \001%msg.1%\001 pour \002%msg.2%\002 sur \002%chan%\002"
set black(say.en.enable.5) "\005\[BT\]\005 \001%msg.1%\001 est déjà activé pour \002%msg.2%\002 sur \002%chan%\002"
set black(say.en.enable.6) "\005\[BT\]\005 Activé \002GLOBALEMENT\002 \001%msg.1%\001"
set black(say.en.enable.7) "\005\[BT\]\005 \001%msg.1%\001 est déjà activé \002GLOBALEMENT\002."
set black(say.en.enable.8) "\005\[BT\]\005 ATTENTION, \001%msg.1%\001 est \002GLOBALEMENT\002 désactivé."
set black(say.en.enable.9) "\005\[BT\]\005 Je ne peux pas exécuter, \002%msg.1%\002 est désactivé par un utilisateur avec un accès supérieur."

################################# Disable #####################################

set black(say.en.disable.1) "\005\[BT\]\005 Désactivé \001%msg.1%\001 sur \002%chan%\002"
set black(say.en.disable.2) "\005\[BT\]\005 \001%msg.1%\001 est déjà désactivé sur \002%chan%\002"
set black(say.en.disable.3) "\005\[BT\]\005 La commande \002%msg.1%\002 n'existe pas."
set black(say.en.disable.4) "\005\[BT\]\005 Désactivé \001%msg.1%\001 pour \002%msg.2%\002 sur \002%chan%\002"
set black(say.en.disable.5) "\005\[BT\]\005 \001%msg.1%\001 est déjà désactivé pour \002%msg.2%\002 sur \002%chan%\002"
set black(say.en.disable.6) "\005\[BT\]\005 \002GLOBALEMENT\002 désactivé \001%msg.1%\001"
set black(say.en.disable.7) "\005\[BT\]\005 \001%msg.1%\001 est déjà désactivé \002GLOBALEMENT\002."
set black(say.en.disable.8) "\005\[BT\]\005 Impossible de désactiver la commande \002%msg.1%\002."

################################### Module #######################################

set black(say.en.hmodule.1) "Modules : \002%msg%\002"
set black(say.en.hmodule.3) "Pour voir le \001Manuel BlackToolS\001 pour un module spécifique, utilisez : \002%char%man\002 <module> | \002%botnick% man\002 <module> | \002(PRIVMSG) man\002 <module>"

####################################### h ########################################


set black(say.en.h.1) "\005\[BT\]\005 \001NIVEAU D'ACCÈS\001 \002-= \001%msg%\001 =-\002"
set black(say.en.h.2) "\005\[BT\]\005 %char%\002h\002 \001cmds\001 ; %char%\002h\002 \001ban\001 ; %char%\002h\002 \001add\001 ; %char%\002h\002 \001chaninfo\001 ; %char%\002h\002 \001BTinfo\001 ; %char%\002h\002 \001module\001 ; %char%\002h\002 \001egg\001 ; %char%\002h\002 \001owner\001" 
set black(say.en.h.3) "\005\[BT\]\005 \001NIVEAU D'ACCÈS\001 \002-= \001%msg%\001 =-\002"
set black(say.en.h.4) "\005\[BT\]\005 %char%\002h\002 \001cmds\001 ; %char%\002h\002 \001ban\001 ; %char%\002h\002 \001add\001 ; %char%\002h\002 \001chaninfo\001 ; %char%\002h\002 \001BTinfo\001 ; %char%\002h\002 \001module\001 ; %char\002%h\002 \001owner\001" (No translation needed, just a formatting correction)
set black(say.en.h.5) "\005\[BT\]\005 \001NIVEAU D'ACCÈS\001 \002-= \001%msg%\001 =-\002"
set black(say.en.h.6) "\005\[BT\]\005 %char%\002h\002 \001cmds\001 ; %char%\002h\002 \001ban\001 ; %char%\002h\002 \001module\001" 
set black(say.en.h.7) "\005\[BT\]\005 \001NIVEAU D'ACCÈS\001 \002-= \001%msg%\001 =-\002"
set black(say.en.h.8) "\005\[BT\]\005 %char%\002h\002 \001cmds\001 ; %char%\002h\002 \001ban\001 ; %char%\002h\002 \001module\001" 
set black(say.en.h.11) "\005\[BT\]\005 \001NIVEAU D'ACCÈS\001 \002-= \001%msg%\001 =-\002"
set black(say.en.h.12) "\005\[BT\]\005 %char%\002h\002 \001cmds\001 ; %char%\002h\002 \001ban\001 ; %char%\002h\002 \001add\001 ; %char%\002h\002 \001module\001" 
set black(say.en.h.13) "\005\[BT\]\005 \001NIVEAU D'ACCÈS\001 \002-= \001%msg%\001 =-\002"
set black(say.en.h.14) "\005\[BT\]\005 %char%\002h\002 \001cmds\001 ; %char%\002h\002 \001ban\001 ; %char%\002h\002 \001add\001 ; %char%\002h\002 \001chaninfo\001 ; %char%\002h\002 \001BTinfo\001 ; %char%\002h\002 \001module\001" 
set black(say.en.h.15) "\005\[BT\]\005 %msg%"
set black(say.en.h.16) "\005\[BT\]\005 Vous envoyez des requêtes trop rapidement. Calmez-vous et réessayez après \002%msg.1% secondes\002. Merci !"
set black(say.en.h.17) "\005\[BT\]\005 \002h\002 \001cmds\001 ; \002h\002 \001ban\001 ; \002h\002 \001add\001 ; \002h\002 \001chaninfo\001 ; \002h\002 \001BTinfo\001 ; \002h\002 \001module\001 ; \002h\002 \001egg\001 ; \002h\002 \001owner\001" 
set black(say.en.h.18) "\005\[BT\]\005 \002h\002 \001cmds\001 ; \002h\002 \001ban\001 ; \002h\002 \001add\001 ; \002h\002 \001chaninfo\001 ; \002h\002 \001BTinfo\001 ; \002h\002 \001module\001" 
set black(say.en.h.19) "\005\[BT\]\005 \002h\002 \001cmds\001 ; \002h\002 \001ban\001 ; \002h\002 \001add\001 ; \002h\002 \001module\001" 
set black(say.en.h.20) "\005\[BT\]\005 \002h\002 \001cmds\001 ; \002h\002 \001ban\001 ; \002h\002 \001module\001" 
set black(say.en.h.21) "\005\[BT\]\005 %botnick% \002h\002 \001cmds\001 ; %botnick% \002h\002 \001ban\001 ; %botnick% \002h\002 \001add\001 ; %botnick% \002h\002 \001chaninfo\001 ; %botnick% \002h\002 \001BTinfo\001 ; %botnick% \002h\002 \001module\001 ; %botnick% \002h\002 \001egg\001 ; %botnick% \002h\002 \001owner\001" 
set black(say.en.h.22) "\005\[BT\]\005 %botnick% \002h\002 \001

set black(say.en.hcommand.1) "\005\[BT\]\005 Pour voir le \002Manuel BlackToolS\002 pour une commande spécifique, utilisez : \001%char%man <command>\001. Pour exécuter des commandes aussi en \002DCC\002, utilisez : \001.bt <command> \[#chan\] \[arguments\]\001"
set black(say.en.hcommand.2) "\005\[BT\]\005 Pour voir le \002Manuel BlackToolS\002 pour une commande spécifique, utilisez : \001%botnick% man <command>\001. Pour exécuter des commandes aussi en \002DCC\002, utilisez : \001.bt <command> \[#chan\] \[arguments\]\001"
set black(say.en.hcommand.3) "\005\[BT\]\005 Pour voir le \002Manuel BlackToolS\002 pour une commande spécifique, utilisez : \001man <command>\001. Pour exécuter des commandes aussi en \002DCC\002, utilisez : \001.bt <command> \[#chan\] \[arguments\]\001"
set black(say.en.hcommand.4) "\005\[BT\]\005 Pour voir le \002Manuel BlackToolS\002 pour un paramètre spécifique, utilisez : \001%char%man <setting>\001"
set black(say.en.hcommand.5) "\005\[BT\]\005 Pour voir le \002Manuel BlackToolS\002 pour un paramètre spécifique, utilisez : \001%botnick% man <setting>\001"
set black(say.en.hcommand.6) "\005\[BT\]\005 Pour voir le \002Manuel BlackToolS\002 pour un paramètre spécifique, utilisez : \001man <setting>\001"
set black(say.en.hcommand.7) "\005\[BT\]\005 Pour voir le \002Manuel BlackToolS\002 pour un module spécifique, utilisez : \001%char%man <module>\001"
set black(say.en.hcommand.8) "\005\[BT\]\005 Pour voir le \002Manuel BlackToolS\002 pour un module spécifique, utilisez : \001%botnick% man <module>\001"
set black(say.en.hcommand.9) "\005\[BT\]\005 Pour voir le \002Manuel BlackToolS\002 pour un module spécifique, utilisez : \001man <module>\001"


set black(say.en.cmdsvoice) "v \[#chan\] \[nick\] ; man <commande> ; version ; i \[#chan\] <nick> ; seen \[#chan\] <nick|ip|host> ; for <botnick1>,<botnick2> <commande> \[option\] ; activ \[#chan\] <nick> ; myset <option> \[description\] \[show|reset\] ; h \[#chan\] \[category\]"
set black(say.en.cmdsop) "o \[#chan\] \[nick\] ; v \[#chan\] \[nick\] ; ho \[#chan\] \[nick\] ; man <commande> ; version ; mode \[#chan\] <+/-mode> ; cycle \[#chan\] \[durée|raison\] ; i \[#chan\] <nick> ; seen \[#chan\] <nick|ip|host> ; for <botnick1>,<botnick2> <commande> \[option\] ; activ \[#chan\] <nick> ; t \[#chan\] <texte> ; myset <option> \[description\] \[show|reset\] ; h \[#chan\] \[category\] ; r \[#chan\] ; omsg \[#chan|all\] <texte>"
set black(say.en.cmdadmin) "o \[#chan\] \[nick\] ; v \[#chan\] \[nick\] ; ho \[#chan\] \[nick\] ; man <commande> ; version ; mode \[#chan\] <+/-mode> ; cycle \[#chan\] \[durée|raison\] ; say \[#chan\] <texte> ; act \[#chan\] <texte> ; i \[#chan\] <nick> ; seen \[#chan\] <nick|ip|host> ; for <botnick1>,<botnick2> <commande> \[option\] ; activ \[#chan\] <nick> ; t \[#chan\] <texte> ; myset <option> \[description\] \[show|reset\] ; h \[#chan\] \[category\] ; r \[#chan\] ; omsg \[#chan|all\] <texte>"
set black(say.en.cmdmanager) "o \[#chan\] \[nick\] ; v \[#chan\] \[nick\] ; ho \[#chan\] \[nick\] ; man <commande> ; version ; mode \[#chan\] <+/-mode> ; cycle \[#chan\] \[durée|raison\] ; say \[#chan\] <texte> ; act \[#chan\] <texte> ; i \[#chan\] <nick> ; seen \[#chan\] <nick|ip|host> ; for <botnick1>,<botnick2> <commande> \[option\] ; activ \[#chan\] <nick> ; t \[#chan\] <texte> ; myset <option> \[description\] \[show|reset\] ; h \[#chan\] \[category\] ; r \[#chan\] ; omsg \[#chan|all\] <texte>"
set black(say.en.cmdbossowner) "o \[#chan\] \[nick\] ; v \[#chan\] \[nick\] ; ho \[#chan\] \[nick\] ; man <command> ; version ; mode \[#chan\] <+/-mode> ; cycle \[#chan\] \[durée|raison\] ; say \[#chan\] <texte> ; act \[#chan\] <texte> ; seen \[#chan|global\] <nick|ip|host> ; for <botnick1>,<botnick2> <command> \[option\] ; broadcast <texte> ; i \[#chan\] <nick> ; activ \[#chan\] <nick> ; t \[#chan\] <texte> ; myset <option> \[description\] \[show|reset\] ; h \[#chan\] \[category\] ; r \[#chan\] ; msg <nick> <texte> ; omsg \[#chan|all\] <texte>"
set black(say.en.cmdmaster) "o \[#chan\] \[nick\] ; v \[#chan\] \[nick\] ; ho \[#chan\] \[nick\] ; man <command> ; version ; mode \[#chan\] <+/-mode> ; cycle \[#chan\] \[durée|raison\] ; say \[#chan\] <texte> ; act \[#chan\] <texte> ; seen \[#chan|global\] <nick|ip|host> ; for <botnick1>,<botnick2> <command> \[option\] ; i \[#chan\] <nick> ; activ \[#chan\] <nick> ; t \[#chan\] <texte> ; myset <option> \[description\] \[show|reset\] ; h \[#chan\] \[category\] ; r \[#chan\] ; msg <nick> <texte> ; omsg \[#chan|all\] <texte>"
set black(say.en.banvoice) "k \[#chan\] <nick|host> \[raison\] ; w \[#chan\] <nick>"
set black(say.en.banop) "b \[#chan\] <nick|host> \[-level\] \[duration\] \[raison\] ; dr \[#chan\] <nick|host> ; bot \[#chan\] <nick|host> ; n \[#chan\] <nick> ; id \[#chan\] <nick> ; spam \[#chan\] <nick|host> ; bw \[#chan\] <nick|host> ; vr \[#chan\] <nick|host> ; gag \[#chan\] <nick> \[duration\] \[raison\] ; ungag \[#chan\] <nick|host> ; troll \[#chan\] <nick> ; mb \[#chan\] <nick> \[reason\] ; ub \[#chan\] <nick|host|id> ; sb \[#chan\] <nick|host|id> ; banlist \[#chan\] <all|user|other> ; k \[#chan\] <nick|host> \[reason\] ; w \[#chan\] <nick>"
set black(say.en.banadmin) "b \[#chan\] <nick|host> \[-level\] \[duration\] \[raison\] ; black \[#chan\] <nick|host> \[reason\] ; stick \[#chan\] <nick|host> \[duration\] \[raison\] ; dr \[#chan\] <nick|host> ; bot \[#chan\] <nick|host> ; n \[#chan\] <nick> ; id \[#chan\] <nick> ; spam \[#chan\] <nick|host> ; bw \[#chan\] <nick|host> ; vr \[#chan\] <nick|host> ; gag \[#chan\] <nick> \[duration\] \[raison\] ; ungag \[#chan\] <nick|host> ; troll \[#chan\] <nick> ; mb \[#chan\] <nick> \[reason\] ; ub \[#chan\] <nick|host|id> ; sb \[#chan\] <nick|host|id> ; banlist \[#chan\] <all|user|other> ; stats <nick> \[total|reset\] ; k \[#chan\] <nick|host> \[reason\] ; w \[#chan\] <nick>"
set black(say.en.banmanager) "b \[#chan\] <nick|host> \[-level\] \[duration\] \[raison\] ; black \[#chan\] <nick|host> \[reason\] ; stick \[#chan\] <nick|host> \[duration\] \[raison\] ; dr \[#chan\] <nick|host> ; bot \[#chan\] <nick|host> ; n \[#chan\] <nick> ; id \[#chan\] <nick> ; spam \[#chan\] <nick|host> ; bw \[#chan\] <nick|host> ; vr \[#chan\] <nick|host> ; gag \[#chan\] <nick> \[duration\] \[raison\] ; ungag \[#chan\] <nick|host> ; troll \[#chan\] <nick> ; mb \[#chan\] <nick> \[reason\] ; ub \[#chan\] <nick|host|id> ; sb \[#chan\] <nick|host|id> ; exempt \[#chan\] <add|list|del> <ip|host> \[period\] \[global\] \[reason\] ; banlist \[#chan\] <all|user|other> ; stats <nick> \[total|reset\] ; k \[#chan\] <nick|host> \[reason\] ; w \[#chan\] <nick>"


set black(say.en.banbossowner) "b \[#chan\] <nick|host> \[-niveau\] \[durée\] \[global|link\] \[raison\] ; black \[#chan\] <nick|host> \[raison\] ; stick \[#chan\] <nick|host> \[durée\] \[raison\] ; dr \[#chan\] <nick|host> ; bot \[#chan\] <nick|host> ; n \[#chan\] <nick> ; id \[#chan\] <nick> ; spam \[#chan\] <nick|host> ; bw \[#chan\] <nick|host> ; vr \[#chan\] <nick|host> ; gag \[#chan\] <nick> \[durée\] \[raison\] ; ungag \[#chan\] <nick|host> ; troll \[#chan\] <nick> ; mb \[#chan\] <nick> \[raison\] ; ub \[#chan\] <nick|host|id> \[global|link\] ; sb \[#chan\] <nick|host|id> \[global\] ; exempt \[#chan\] <add|list|del> <ip|host> \[période\] \[global\] \[raison\] ; banlist \[#chan\] <all|user|other|global> ; stats <nick> \[total|reset\] ; k \[#chan\] <nick|host> \[raison\] ; w \[#chan\] <nick>"
set black(say.en.banmaster) "b \[#chan\] <nick|host> \[-niveau\] \[durée\] \[raison\] ; black \[#chan\] <nick|host> \[raison\] ; stick \[#chan\] <nick|host> \[durée\] \[raison\] ; dr \[#chan\] <nick|host> ; bot \[#chan\] <nick|host> ; n \[#chan\] <nick> ; id \[#chan\] <nick> ; spam \[#chan\] <nick|host> ; bw \[#chan\] <nick|host> ; vr \[#chan\] <nick|host> ; gag \[#chan\] <nick> \[durée\] \[raison\] ; ungag \[#chan\] <nick|host> ; troll \[#chan\] <nick> ; mb \[#chan\] <nick> \[raison\] ; ub \[#chan\] <nick|host|id> ; sb \[#chan\] <nick|host|id> ; exempt \[#chan\] <add|list|del> <ip|host> \[période\] \[global\] \[raison\] ; banlist \[#chan\] <all|user|other> ; stats <nick> \[total|reset\] ; k \[#chan\] <nick|host> \[raison\] ; w \[#chan\] <nick>"


set black(say.en.addadmin) "add \[#chan\] <niveau> <utilisateur chanserv|pseudo> ; userlist \[#chan\] <niveau|tous> ; info \[#chan\] <utilisateur|#chan> ; delacc \[#chan\] <utilisateur> ; auto \[#chan\] <+/-o> <utilisateur> ; auto \[#chan\] <+/-v> <utilisateur> ; s \[#chan\] <utilisateur> \[durée\] \[raison\] ; us \[#chan\] <utilisateur> ; addhost <utilisateur> <hôte> ; delhost <utilisateur> <hôte>"
set black(say.en.addmanager) "add \[#chan\] <niveau> <utilisateur chanserv|pseudo> ; userlist \[#chan\] <niveau|tous> ; info \[#chan\] <utilisateur|#chan> ; delacc \[#chan\] <utilisateur> ; del <utilisateur> ; auto \[#chan\] <+/-o> <utilisateur> ; auto \[#chan\] <+/-v> <utilisateur> ; chuser <utilisateur> <nouveau utilisateur> ; s \[#chan\] <utilisateur> \[durée\] \[raison\] ; us \[#chan\] <utilisateur> ; addhost <utilisateur> <hôte> ; delhost <utilisateur> <hôte>"
set black(say.en.addowner) "add \[#chan\] <niveau> <utilisateur chanserv|pseudo> ; userlist \[#chan\] <niveau|tous> ; info \[#chan\] <utilisateur|#chan> ; delacc \[#chan\] <utilisateur> ; del <utilisateur> ; auto \[#chan\] <+/-o> <utilisateur> ; auto \[#chan\] <+/-v> <utilisateur> ; chuser <utilisateur> <nouvel utilisateur> ; s \[#chan\] <utilisateur> \[durée\] \[raison\] ; us \[#chan\] <utilisateur> ; addhost <utilisateur> <hôte> ; delhost <utilisateur> <hôte>"
set black(say.en.addbossowner) "add \[#chan\] <niveau> <utilisateur chanserv|pseudo> ; userlist \[#chan\] <niveau> ; info \[#chan\] <utilisateur|#chan> ; delacc \[#chan\] <utilisateur> ; del <utilisateur> ; auto \[#chan\] <+/-o> <utilisateur> ; auto \[#chan\] <+/-v> <utilisateur> ; chuser <utilisateur> <nouvel utilisateur> ; s \[#chan\] <utilisateur> \[durée\] \[raison\] ; us \[#chan\] <utilisateur> ; addhost <utilisateur> <hôte> ; delhost <utilisateur> <hôte>"
set black(say.en.addmaster) "add \[#chan\] <niveau> <utilisateur chanserv|pseudo> ; userlist \[#chan\] <niveau> ; info \[#chan\] <utilisateur|#chan> ; delacc \[#chan\] <utilisateur> ; del <utilisateur> ; auto \[#chan\] <+/-o> <utilisateur> ; auto \[#chan\] <+/-v> <utilisateur> ; chuser <utilisateur> <nouvel utilisateur> ; s \[#chan\] <utilisateur> \[durée\] \[raison\] ; us \[#chan\] <utilisateur> ; addhost <utilisateur> <hôte> ; delhost <utilisateur> <hôte>"


set black(say.en.hmanager.1) "purge \[#chan\] <raison> ; set \[#chan\] <+/-option> ; set \[#chan\] <option> <description> ; unset \[#chan\] <option> ; show \[#chan\] <option> ; ignore <add|list|del> <host> \[duration\] \[raison\] ; enable <commande|all> \[utilisateur\] ; disable <commande|all> \[utilisateur\]"
set black(say.en.hbossowner.1) "addchan <#chan> ; delchan <#chan> <raison> ; suspend <#chan> <raison> ; unsuspend <#chan> ; set \[#chan|global\] <option> <description> ; unset \[#chan|global\] <option> ; show \[#chan\] <option> ; channels ; die \[raison\] ; restart ; jump \[server\] ; save ; rehash ; login ; nick <nick> ; uptime ; status ; cp <option> <#chan1> <#chan2> ; ignore <add|list|del> <host> \[durée\] \[raison\] ; enable <commande|all> \[utilisateur\] \[global\] ; disable <commande|all> \[utilisateur\] \[global\] ; chat"
set black(say.en.hmaster.1) "addchan <#chan> ; delchan <#chan> <raison> ; suspend <#chan> <raison> ; unsuspend <#chan> ; set \[#chan\] <option> <description> ; unset \[#chan\] <option> ; show \[#chan\] <option> ; channels ; uptime ; status ; ignore <add|list|del> <host> \[durée\] \[raison\] ; enable <commande|all> \[utilisateur\] \[global\] ; disable <commande|all> \[utilisateur\] \[global\]"
set black(say.en.hchaninfo.1) "\002Indicateurs Eggdrop\002 :"
set black(say.en.hchaninfo.2) "\002Paramètres BT\002 :"
set black(say.en.hchaninfo.3) "\002Chaîne Eggdrop\002"
set black(say.en.hchaninfo.4) "\002Chaîne BT\002 :"
set black(say.en.hegg.1) "\005\[BT\]\005 %msg%" (No translation needed)
set black(say.en.hegg.2) "\005\[BT\]\005 Pour voir le \002Manuel BlackToolS\002 pour une option spécifique, utilisez : \001%char%man <option>\001."
set black(say.en.hegg.3) "\005\[BT\]\005 Pour voir le \002Manuel BlackToolS\002 pour une option spécifique, utilisez : \001%botnick% man <option>\001"
set black(say.en.hegg.4) "\005\[BT\]\005 Pour voir le \002Manuel BlackToolS\002 pour une option spécifique, utilisez : \001man <option>\001"

############################### GREETING #######################################

set black(say.en.greeting.1) "\005\[BT\]\005 Bienvenue dans le \002monde BlackToolS\002 version \002$black(vers)\002. Pour commencer, veuillez définir les paramètres suivants pour vous :"
set black(say.en.greeting.2) "\002%char%myset mychar\002 <trigger> (définir le déclencheur souhaité) ; \002%char%myset lang <langue> ( RO | EN | ES | FR)"
set black(say.en.greeting.3) "\002%char%myset mychan\002 <#chan> ; \002%char%myset output\002 <méthode> ( CHAN | NOTICE )"
set black(say.en.greeting.4) "\002%char%myset noteexpire <nb jours> ; \002%char%myset greet\002 <message> (message d'accueil à l'arrivée) ; \002%char%myset autoinvite\002 <ON|OFF>"
set black(say.en.greeting.5) "\005\[BT\]\005 Utilisez \002%char%h\002 dans n'importe quel canal où se trouve le bot pour obtenir une liste complète de toutes les \002commandes disponibles\002."
set black(say.en.greeting.6) "\005\[BT\]\005 Pour lire le \002manuel BlackToolS\002 de chaque paramètre, utilisez : \001%char%man <paramètre>\001. Amusez-vous bien ! >:)"

################################### Abuse Report ###############################

set black(say.en.abuse.1) "\005\[BT\]\005 Impossible de rejoindre \001%msg.1%\001. Raison : \002banni (+b)\002."
set black(say.en.abuse.2) "Impossible de rejoindre \002%chan%\002 (banni (+b))"
set black(say.en.abuse.3) "\005\[BT\]\005 Impossible de rejoindre \001%msg.1%\001. Raison : \002canal sur invitation seulement (+i)\002."
set black(say.en.abuse.4) "Impossible de rejoindre \002%chan%\002 (sur invitation seulement (+i))"
set black(say.en.abuse.5) "\005\[BT\]\005 Impossible de rejoindre \001%msg.1%\001. Raison : \002canal nécessite une clé (+k)\002."
set black(say.en.abuse.6) "Impossible de rejoindre \002%chan%\002 (le canal est verrouillé (+k))"
set black(say.en.abuse.7) "\005\[BT\]\005 Impossible de rejoindre \001%msg.1%\001. Raison : \002le canal est plein (+l)\002"
set black(say.en.abuse.8) "Impossible de rejoindre \002%chan%\002 (le canal est plein (+l))"
set black(say.en.abuse.9) "\005\[BT\]\005 Suspension de \001%msg.1%\001 pour abus."
set black(say.en.abuse.10) "Le canal \001%msg.1%\001 a été suspendu pour abus."
set black(say.en.abuse.11) "Impossible de rejoindre \002%chan%\002 (utilisateurs enregistrés uniquement (+r))"
set black(say.en.abuse.12) "\005\[BT\]\005 Impossible de rejoindre \001%msg.1%\001. Raison : \002utilisateurs enregistrés uniquement (+r)\002."

################################### ChanLink ###################################

set black(say.en.chanlink.1) "\005\[BT\]\005 \002LIAISON\002 établie avec les canaux : \001%msg%\001."
set black(say.en.chanlink.2) "\005\[BT\]\005 La \002LIAISON\002 a été réinitialisée."
set black(say.en.chanlink.3) "\005\[BT\]\005 Les canaux \002LIÉS\002 sont : \001%msg%\001."
set black(say.en.chanlink.4) "\005\[BT\]\005 \002LIÉS\002 à \002tous\002 les canaux."
set black(say.en.chanlink.5) "\005\[BT\]\005 Il n'y a pas de canaux \002LIÉS\002."
set black(say.en.chanlink.6) "\005\[BT\]\005 Impossible de \002LIER\002. Canaux invalides : \001%msg%\001."
set black(say.en.chanlink.7) "\005\[BT\]\005 La \002LIAISON\002 pour \001%msg.1%\001 a été supprimée."
set black(say.en.chanlink.8) "\005\[BT\]\005 \002LIAISON\002 non activée sur \001%msg.1%\001."

###################################### O #######################################

set black(say.en.o.1) "\005\[BT\]\005 \001%msg.1%\001 est sur \002%chan%\002 vous ne pouvez pas faire de massdeop."

################################### man ########################################

set black(say.en.man.1_1) "\005\[BT\]\005 Désolé \002%msg.1%\002, il n'y a pas d'aide disponible pour ce sujet."

#################################### User Expire ###############################

set black(say.en.userexpire.1) "\005\[BT\]\005 Expiration de l'utilisateur : \002%msg.1%\002 utilisateurs expirés trouvés."

##################################### Hello ####################################

set black(say.en.hello.1) "*** HOURRA ! *** Vous avez un niveau d'accès \001%msg%\001 à mes commandes."
set black(say.en.hello.2) "\005\[BT\]\005 Bonjour \002%msg.1%\002. Je suis \004%botnick%\004, un bot Eggdrop fonctionnant avec \001%msg.2%\001 %msg.3%."
set black(say.en.hello.3) "\005\[BT\]\005 Je vous reconnaîtrai par le masque d'hôte '\001%msg.1%\001' à partir de maintenant. Veuillez définir votre mot de passe en tapant : /msg \001%botnick%\001 <pass> <votremotdepasse>"
set black(say.en.hello.4) "\005\[BT\]\005 Vous pouvez utiliser \002%char%h\002 dans n'importe quel canal où le bot est présent pour obtenir une liste complète de toutes les \002commandes disponibles\002. Amusez-vous bien :D"

##################################### Pass #####################################

set black(say.en.pass.1) "\005\[BT\]\005 Terminé. Votre mot de passe est maintenant : \002%msg%\002"

#################################### oMsg ######################################

set black(say.en.omsg.1) "\005\[BT\]\005 Message envoyé à tous les @s par : \002%msg%\002"

#################################### forward ###################################

set black(say.en.forward.1) "\005\[MSG PRIVÉ\]\005 de -- <\002%msg.1%\002> ��� \001%msg.8%\001"

##################################### mb #######################################

set black(say.en.mb.5) "Ce client IRC est utilisé pour des abus. Envisagez d'en obtenir un autre."

################################### handleban ##################################

set black(say.en.handleban.1) "Utilisateur sur liste noire !"

##################################### Exempt ###################################

set black(say.en.exempt.1) "Permanent"
set black(say.en.exempt.2) "\005\[BT\]\005 \[CHAN\]: * (\002%msg.1%\002 exemptions trouvées)"
set black(say.en.exempt.3) "\005\[BT\]\005 Pour voir l'ensemble suivant d'entrées, tapez \001%char%exempt list global -next\001 (\002%counter%\002 exemptions restantes)"
set black(say.en.exempt.4) "\005\[BT\]\005 *** FIN des exemptions ***"
set black(say.en.exempt.5) "\005\[BT\]\005 \002%msg.2%\002 ; \002%msg.3%\002 ; Ajouté par : \002%msg.4%\002 ; Date : \002%msg.12%\002 ; Expire : %msg.13% \002%msg.15%\002 \002%msg.17%\002 ; Raison : %msg.20%"
set black(say.en.exempt.6) "\005\[BT\]\005 \[CHAN\]: %chan% (\002%msg.1%\002 exemptions trouvées)"
set black(say.en.exempt.10) "\005\[BT\]\005 Pour voir l'ensemble suivant d'entrées, tapez \001%char%exempt list -next\001 (\002%counter%\002 exemptions restantes)"
set black(say.en.exempt.11) "\005\[BT\]\005 \002%msg.2%\002 ; \002%msg.3%\002 ; Ajouté par : \002%msg.4%\002 ; Date : \002%msg.12%\002 ; Expire : %msg.13% ; Raison : %msg.14%"
set black(say.en.exempt.13) "JAMAIS"
set black(say.en.exempt.14) "\005\[BT\]\005 Pour voir l'ensemble suivant d'entrées, tapez \001%char%exempt %chan% list -next\001 (\002%counter%\002 exemptions restantes)"
set black(say.en.exempt.7) "\005\[BT\]\005 Exemption ajoutée \002%msg.1%\002 sur %chan%"
set black(say.en.exempt.8) "\005\[BT\]\005 Exemption ajoutée \002%msg.1%\002 pour tous les canaux"
set black(say.en.exempt.9) "\005\[BT\]\005 Exemption supprimée \002%msg.1%\002 sur %chan%"
set black(say.en.exempt.12) "\005\[BT\]\005 Exemption supprimée \002%msg.1%\002 sur tous les canaux"
set black(say.en.exempt.15) "\005\[BT\]\005 Aucune exemption ne correspond à \002%msg.1%\002 sur %chan%"
set black(say.en.exempt.16) "\005\[BT\]\005 Aucune exemption ne correspond à \002%msg.1%\002 pour tous les canaux"

###################################### AutoUpdate ################################

set black(say.en.autoupdate.1) "\005\[BT\]\005 Impossible de démarrer %msg.1% : Aucun package TLS disponible."
set black(say.en.autoupdate.2) "\005\[BT\]\005 Échec de la mise à jour, impossible d'obtenir de nouvelles mises à jour"
set black(say.en.autoupdate.3) "\005\[BT\]\005 Nouvelle version \001BLACK\002 de BlackTools \002%msg.1%\002 trouvée, début du téléchargement.."
set black(say.en.autoupdate.4) "\005\[BT\]\005 Corrections de \001BUG\001 trouvées pour la version installée actuelle \002BlackTools %msg.1%\002, début du téléchargement.."
set black(say.en.autoupdate.5) "\005\[BT\]\005 Aucune nouvelle mise à jour trouvée."
set black(say.en.autoupdate.6) "\005\[BT\]\005 Échec de la mise à jour : \002%msg.1%\002"
set black(say.en.autoupdate.7) "\005\[BT\]\005 Suppression des fichiers de sauvegarde de la dernière sauvegarde ..."
set black(say.en.autoupdate.8) "\005\[BT\]\005 Sauvegarde de l'ancien répertoire \001BlackTools\001 ...réussie"
set black(say.en.autoupdate.9) "\005\[BT\]\005 Sauvegarde de l'ancien répertoire \001BlackTools\001 ...échouée : \002%msg.1%\002"
set black(say.en.autoupdate.10) "\005\[BT\]\005 Échec de la mise à jour, impossible de sauvegarder l'ancien fichier \001BlackTools.tcl\001."
set black(say.en.autoupdate.11) "\005\[BT\]\005 Sauvegarde de l'ancien fichier \001BlackTools.tcl\001 ...réussie"
set black(say.en.autoupdate.12) "\005\[BT\]\005 Sauvegarde terminée."
set black(say.en.autoupdate.13) "\005\[BT\]\005 Enregistrement des informations de l'ancien fichier \001BlackTools.tcl\001 ..."
set black(say.en.autoupdate.14) "\005\[BT\]\005 Suppression de l'ancienne version de \001BlackTools\001 ..."
set black(say.en.autoupdate.15) "\005\[BT\]\005 Téléchargement de BlackTools \001%msg.1%\001. Dernière correction de bug : \002%msg.2%\002"
set black(say.en.autoupdate.16) "\005\[BT\]\005 Échec de la mise à jour, impossible de télécharger \001BlackTools\001."
set black(say.en.autoupdate.17) "\005\[BT\]\005 \001BlackTools\001 téléchargé dans \002%msg.1%\002"
set black(say.en.autoupdate.18) "\005\[BT\]\005 Restauration des informations de l'ancien fichier \001BlackTools.tcl\001 ..."
set black(say.en.autoupdate.19) "\005\[BT\]\005 Restauré \002%msg.1%\002 variables modifiées de l'ancienne configuration \001BlackTools\001."
set black(say.en.autoupdate.20) "\005\[BT\]\005 Aucune variable restaurée de l'ancienne configuration \001BlackTools\001."
set black(say.en.autoupdate.21) "\005\[BT\]\005 Restauration des paramètres, interdictions et autres anciennes informations ..."
set black(say.en.autoupdate.22) "\005\[BT\]\005 Aucun paramètre, interdiction et autre information trouvés ..."
set black(say.en.autoupdate.23) "\005\[BT\]\005 Restauré (\002%msg.1%\002) fichiers contenant des paramètres, interdictions et autres informations."
set black(say.en.autoupdate.24) "\005\[BT\]\005 Mise à jour terminée pour \001BlackTools\001 dans \002%msg.1%\002 . Journal des modifications : \002https://github.com/tclscripts/BlackTools-TCL/blob/master/ChangeLog\002"
set black(say.en.autoupdate.25) "\005\[BT\]\005 Si quelque chose ne va pas, les fichiers de sauvegarde sont toujours disponibles dans \001\"%msg.1%\"\001 jusqu'à la prochaine mise à jour. Vous pouvez également consulter le journal des mises à jour dans \001\"%msg.2%\"\001"
set black(say.en.autoupdate.26) "\005\[BT\]\005 Rappelez-vous, pour des informations ou des problèmes de bugs, visitez le site officiel de \002BT\002 --- \001WwW.TclScripts.Net\001"
set black(say.en.autoupdate.27) "\005\[BT\]\005 Mise à jour commencée à \001%msg.1%\001"
set black(say.en.autoupdate.28) "\005\[BT\]\005 Vérification des nouvelles mises à jour.."
set black(say.en.autoupdate.29) "\005\[BT\]\005 Mise à jour déjà en cours.."
set black(say.en.autoupdate.30) "\005\[BT\]\005 Impossible de démarrer la mise à jour. Raison : \002%msg%\002"
set black(say.en.autoupdate.31) "\005\[BT\]\005 Impossible de vérifier la nouvelle mise à jour. Veuillez réessayer plus tard."
set black(say.en.autoupdate.32) "\005\[BT\]\005 Nouvelle version de \001BlackTools\001 trouvée : \002%msg%\002 . Utilisez \001%char%update start\002 pour démarrer la mise à jour"
set black(say.en.autoupdate.33) "\005\[BT\]\005 Corrections de \001BUG\001 trouvées pour la version installée actuelle de \001BlackTools\001 (\001%msg%\001) pour la version actuelle. Utilisez \001%char%update start\002 pour démarrer la mise à jour"
set black(say.en.autoupdate.34) "\005\[BT\]\005 \001AutoUpdate\001 est désactivé. Raison : \002%msg%\002"
set black(say.en.autoupdate.35) "\005\[BT\]\005 \001AutoUpdate\001 est déjà activé .."
set black(say.en.autoupdate.36) "\005\[BT\]\005 Le module \001AutoUpdate\001 est activé."
set black(say.en.autoupdate.37) "\005\[BT\]\005 \001AutoUpdate\001 est déjà désactivé .."
set black(say.en.autoupdate.38) "\005\[BT\]\005 Le module \001AutoUpdate\001 est désactivé."
set black(say.en.autoupdate.39) "\005\[BT\]\005 \001AutoUpdate\001 est en cours d'exécution .."
set black(say.en.autoupdate.40) "\005\[BT\]\005 \001AutoUpdate\001 ignoré pour le moment. Raison : \002Mise à jour manuelle démarrée\002."
set black(say.en.autoupdate.41) "\005\[BT\]\005 Le temps pour \001AutoUpdate\001 est réglé à : \002%msg.1%\002 minutes"
set black(say.en.autoupdate.42) "\005\[BT\]\005 Temps réglé pour \001AutoUpdate\001 à : \002%msg.1%\002 (%msg.2% minutes)"
set black(say.en.autoupdate.43) "\005\[BT\]\005 AutoUpdate a trouvé une nouvelle \001mise à jour\001 pour : BlackTools \002%msg.1%\002 (Dernière mise à jour : \001%msg.2%\001)."
set black(say.en.autoupdate.45) "\005\[BT\]\005 Pour terminer cette mise à jour, il est nécessaire de redémarrer l'eggdrop en utilisant la commande \001restart\002."
set black(say.en.autoupdate.46) "\005\[BT\]\005 Redémarrage automatique dans 10 secondes pour terminer la mise à jour."
set black(say.en.autoupdate.47) "\005\[BT\]\005 La dernière mise à jour (\001%msg.1%\001) a été installée par un autre eggdrop du même archive. Utilisez \001%char%update start\001 pour terminer la mise à jour."
set black(say.en.autoupdate.48) "\005\[BT\]\005 Dernière mise à jour (\001%msg.1%\001) installée par un autre eggdrop du même archive. Terminer la mise à jour.."
set black(say.en.autoupdate.49) "\005\[BT\]\005 \001AutoUpdate\001 est désactivé."

######################################## ALIAS ###################################

set black(say.en.alias.1) "\005\[BT\]\005 Utilisez \002%char%alias\002 add <cmd> \[arguments\]"
set black(say.en.alias.2) "\005\[BT\]\005 \002%msg.1%\002 n'est pas une commande valide pour vous."
set black(say.en.alias.3) "\005\[BT\]\005 \002%msg.1%\002 est déjà ajouté comme \001alias\001 avec la commande : \002%msg.2%\002"
set black(say.en.alias.4) "\005\[BT\]\005 \002%msg.1%\002 ajouté comme \001alias\001 avec la commande : \002%msg.2%\002"
set black(say.en.alias.5) "\005\[BT\]\005 \002%msg.1%\002 n'est pas ajouté comme \001alias\001"
set black(say.en.alias.6) "\005\[BT\]\005 \002%msg.1%\002 supprimé des commandes \001alias\001"
set black(say.en.alias.7) "\002COMMANDES D'ALIAS:\002"

######################################## VOTE ###################################


set black(say.en.vote.1) "\005\[BT\]\005 Utilisez \002%char%vote\002 add <nom du vote> -option <option1> -option <option2>.. \[-time \[JJ/MM/AA HH:MM\]\] (temps d'expiration) \[-type 1/0\] (\0021\002 - utilisateurs valides, \0020\002 - tous les utilisateurs)"
set black(say.en.vote.2) "\005\[BT\]\005 Veuillez spécifier une date d'expiration valide \[JJ/MM/AA HH:MM\] comme \00225/12/21 00:00\002"
set black(say.en.vote.3) "\005\[BT\]\005 Veuillez spécifier un type de vote valide \[-type 1/0\] (\0021\002 - utilisateurs valides, \0020\002 - tous les utilisateurs)"
set black(say.en.vote.4) "\005\[BT\]\005 Un autre vote avec ce nom est déjà enregistré. Veuillez en choisir un autre."
set black(say.en.vote.5) "\005\[BT\]\005 Ajout de "%msg.1%" en tant que vote avec l'ID : \002%msg.3%\002 et les options \[%msg.2%\]. Expiration : \002JAMAIS\002."
set black(say.en.vote.6) "\005\[BT\]\005 Ajout de "%msg.1%" en tant que vote avec l'ID : \002%msg.4%\002 et les options \[%msg.2%\]. Expiration : \002%msg.3%\002."
set black(say.en.vote.7) "\005\[BT\]\005 Utilisez \002%char%vote\002 del <id>" (No translation needed, as it's a command.)
set black(say.en.vote.8) "\005\[BT\]\005 Aucun vote avec l'ID : \002%msg.1%\002 trouvé."
set black(say.en.vote.9) "\005\[BT\]\005 Vote avec l'ID : \002%msg.1%\002 supprimé."
set black(say.en.vote.10) "\005\[BT\]\005 Utilisez \002%char%vote\002 end <id>" (No translation needed, as it's a command.)
set black(say.en.vote.11) "\005\[BT\]\005 Le vote avec l'ID : \002%msg.1%\002 est déjà terminé."
set black(say.en.vote.12) "\005\[BT\]\005 Vote avec l'ID : \002%msg.1%\002 terminé."
set black(say.en.vote.13) "ACTIF"
set black(say.en.vote.14) "TERMINÉ"
set black(say.en.vote.15) "Utilisateurs avec accès"
set black(say.en.vote.16) "Tous les utilisateurs"
set black(say.en.vote.17) "\005\[BT\]\005 Détails du vote -- ID : \002%msg.1%\002 ; Nom du vote : \002%msg.2%\002 ; Ajouté par : \002%msg.7%\002 ; Statut : \002%msg.4%\002 ; Audience : \002%msg.5%\002 ; Expire : \002%msg.6%\002"
set black(say.en.vote.18) "\005\[BT\]\005 Votes exprimés : N/A"
set black(say.en.vote.19) "\005\[BT\]\005 Votes exprimés : %msg.1%. Total des votes : \002%msg.2%\002."
set black(say.en.vote.20) "\005\[BT\]\005 Le vote avec l'ID : \002%msg.1%\002 est terminé, vous ne pouvez plus voter."
set black(say.en.vote.21) "\005\[BT\]\005 Veuillez indiquer une option de vote valide : de A à Z."
set black(say.en.vote.22) "\005\[BT\]\005 Il n'y a pas d'option avec la lettre \002%msg.1%\002 pour ce vote. Les options de vote sont : %msg.2%"
set black(say.en.vote.23) "\005\[BT\]\005 Vous avez déjà choisi votre option pour ce vote."
set black(say.en.vote.24) "\005\[BT\]\005 Vote \002%msg.1%\002 pour le vote avec ID : \002%msg.2%\002 et NOM : \002%msg.3%\002"
set black(say.en.vote.25) "\005\[BT\]\005 ID : \002%msg.1%\002 ; Nom du vote : \002%msg.2%\002 ; Ajouté par : \002%msg.7%\002 ; Statut : \002%msg.4%\002 ; Audience : \002%msg.5%\002 ; Détails de la commande : \002%char%vote %msg.1%\002"
set black(say.en.vote.26) "\005\[BT\]\005 Fin de la liste de vote"
set black(say.en.vote.27) "\005\[BT\]\005 Pour voir la suite des votes, tapez : \001%char%vote list -next\001 (\002%counter%\002 votes restants)"
set black(say.en.vote.28) "\005\[BT\]\005 Pour voir la suite des votes, tapez : \001%char%vote %chan% list -next\001 (\002%counter%\002 votes restants)"
set black(say.en.vote.29) "\005\[BT\]\005 Liste de vote pour %chan% est :"
set black(say.en.vote.30) "\005\[BT\]\005 Il n'y a pas de votes pour %chan%."
set black(say.en.vote.31) "\005\[BT\]\005 Pour voir la suite des votes, tapez : \001%char%vote list %id% -next\001 (\002%counter%\002 votes restants)"
set black(say.en.vote.32) "\005\[BT\]\005 Pour voir la suite des votes, tapez : \001%char%vote %chan% list %id% -next\001 (\002%counter%\002 votes restants)"
set black(say.en.vote.33) "\005\[BT\]\005 Il n'y a pas de votes pour le vote avec l'ID \002%msg.1%\002 sur %chan%."
set black(say.en.vote.34) "\002#%msg.1%\002 Nom : \002%msg.2%\002 ; Hôte : %msg.3% ; Vote : \002%msg.4%\002 ; Date du vote : \002%msg.5%\002"
set black(say.en.vote.35) "\005\[BT\]\005 Liste des votes pour l'ID : \002%msg.1%\002 sur %chan% est :"
set black(say.en.vote.36) "\005\[BT\]\005 Fin de la liste des votes"
set black(say.en.vote.37) "\005\[BT\]\005 ID: \002%msg.1%\002 ; Nom du vote : \002%msg.2%\002 ; Ajouté par : \002%msg.7%\002 ; Statut : \002%msg.4%\002 ; Audience : \002%msg.5%\002 ; Commande de détails : \002%char%vote %msg.1%\002"
set black(say.en.vote.38) "\005\[BT\]\005 Détails du vote -- ID : \002%msg.1%\002 ; Nom du vote : \002%msg.2%\002 ; Ajouté par : \002%msg.7%\002 ; Statut : \002%msg.4%\002 ; Audience : \002%msg.5%\002"
set black(say.en.vote.39) "\005\[BT\]\005 Utilisez \002%char%vote\002 time <id> <JJ/MM/AA HH:MM> (définir une nouvelle heure d'expiration)"
set black(say.en.vote.40) "\005\[BT\]\005 Définir une nouvelle heure d'expiration \002%msg.2%\002 pour le vote avec l'ID : \002%msg.1%\002"
set black(say.en.vote.41) "\005\[BT\]\005 Options de vote : \[%msg.1%\]"
set black(say.en.vote.42) "\005\[BT\]\005 -- VOTE -- Il y a des VOTES disponibles. Les IDs sont : \002%msg.1%\002 . Pour voir des informations sur un VOTE, utilisez \001%char%vote <id>\001 . Pour \002VOTER\002, utilisez \001%char%vote <id> <lettre>\001 . Pour voir la liste des votes, utilisez \001%char%vote list\001"


##############################
############################################################################################################
#   END                                                                                                    #
############################################################################################################
