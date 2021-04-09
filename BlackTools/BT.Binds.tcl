#########################################################################
##          BlackTools - The Ultimate Channel Control Script           ##
##                    One TCL. One smart Eggdrop                       ##
#########################################################################
###########################   BINDS TCL   ###############################
#########################################################################
##						                       ##
##   BlackTools  : http://blacktools.tclscripts.net	    	       ##
##   Bugs report : http://www.tclscripts.net/	                       ##
##   GitHub page : https://github.com/tclscripts/BlackToolS-TCL	       ##
##   Online Help : irc://irc.undernet.org/tcl-help 	 	       ##
##                 #TCL-HELP / UnderNet                                ##
##                 You can ask in english or romanian                  ##
##					                               ##
#########################################################################

if {[info exists black(notlogged)]} {
	unset black(notlogged)
}

bind pubm - * blacktools:protect:pub
bind pubm - * voiceonmsg:public
bind pubm - * topwords:module
bind pubm - * seen:lastmsg
bind pubm - * notes:announce:pub
bind pubm - "**" comand:pubme
bind pubm - "**" comand:pubme:for
bind pubm - "***" comand:chan

bind msgm - * forward:redirect
bind msgm - "*" command:pubpriv
bind dcc - bt command:pubdcc
bind ctcp - ACTION blacktools:protect:me
bind ctcp - ACTION voiceonmsg:public:me
bind ctcp - ACTION topwords:module:me
bind msgm - * msg:flood:protection
bind notc - * notc:flood:protection
bind time - "* * * * *" maxuptime
bind time - "* * * * *" blacktools:expirebans
bind time - "* * * * *" seen:save_file

bind notc - * antinotice:protect
bind ctcp - * antictcp:protect
bind part - * badquitpart:protect
bind sign - * badquitpartsign:protect
bind join - * antispam:protect:msg
bind msgm - * antispam:protect
bind time - "20 00 * * *" seen:entry:delete
bind time - "20 00 * * *" remove:chan:timer
bind time - "30 00 * * *" user:autoexpire
bind time - "00 00 * * *" topwords:day:reset
bind time - "00 00 * * *" bans:day:reset
bind time - "10 00 * * *" secured:allowlist:reset
bind time - "00 00 * * *" notes:autoexpire
bind ctcp - * blackreply
bind join - * badrealname:protect:join
bind join - * badnick:protect:join
bind join - * badident:protect:join
bind join - * badhost:protect
bind join - * noproxy:protect
bind nick - * badnick:protect:change
bind nick - * nickflood:protect
bind mode - "*+b*" protectpublic
bind join - * joinflood:protect
bind join - * rebanpublic
bind need - * toolspublic
bind need - * keyneed
bind join - * badchanpublic:join
bind join - * seen:join
bind part - * seen:part
bind sign - * seen:sign
bind kick - * seen:kick
bind splt - * seen:split
bind nick - * seen:changenick
bind join - * greetpublic:join
bind part - * leavepublic:part
bind evnt - init-server setaway
bind join - * autovonjoin
bind join - * autoponjoin
bind join - * auto:join
bind join - * private:module
bind join - * reason:details:module
bind join - * troll:show
bind ctcr - VERSION ctcpvers
bind mode - *+o* dontoppublic
bind mode - *-o* dontdeoppublic

bind nick - * badchan:nickchange

bind kick - * massban:kick

bind join - * flood:join:protection
bind join - * join:count
bind join - * first:join
bind join - * topic:autotopic
bind mode - *-b* gag:reban

bind join - * black:next:join
bind part - * black:next:part
bind sign - * black:next:sign
bind splt - * black:next:split
bind kick - * black:next:kick
bind mode - * black:next:mode
bind nick - * black:next:chnick

bind part - * voiceonmsg:part
bind sign - * voiceonmsg:part
bind splt - * voiceonmsg:split
bind kick - * voiceonmsg:kick

bind part - * gag:part
bind sign - * gag:part
bind splt - * gag:split
bind kick - * gag:kick

bind kick - * autoinvite:kick

bind mode - * voiceme:mode
bind join - * voiceme:join
bind join - * notes:announce


bind kick - * securemode:kickremove
bind mode - * securemode:reply

bind join - * blacktools:join:ban
bind mode - * blacktools:mode:ban
bind nick - * blacktools:chnick:ban

bind join - * blacktools:backchan:verify

bind join - * blacktools:vote:greetshow

bind raw - invite inviteban:protect

bind raw - 474 abuse:ban:note
bind raw - 475 abuse:key:note
bind raw - 473 abuse:inviteonly:note
bind raw - 471 abuse:channelfull:note
bind raw - 477 abuse:restricted:note
bind raw - 478 blacktools:banlistfull

#chanserv

bind notc - "*AUTENTIFICARE REUSITA*" black:login:yes
bind notc - "*AUTHENTICATION SUCCESSFUL*" black:login:yes
bind notc - "*AUTENTIFICARE ESUATA*" black:login:no
bind notc - "*AUTHENTICATION FAILED*" black:login:no:failed
bind notc - "*You are already authenticated*" black:login:yes
bind notc - "*Esti deja autentificat*" black:login:yes
bind notc - "*SYNTAX: LOGIN*" black:login:no:user
bind notc - "*I don't know*" black:login:no:invalid
bind notc - "*Maximum concurrent logins exceeded*" black:login:max
#

#nickserv

bind notc - "*registered and protected*" black:nickserv:yes
bind notc - "*Password accepted*" black:nickserv:identify
bind notc - "*The password supplied*" black:nickserv:wrongpass
bind notc - "*registered to someone else*" black:nickserv:registered
bind nick - * black:nickserv:release
#

bind join - * blacktools:getlastaction:join
bind kick - * blacktools:getlastaction:kick
bind pubm - * blacktools:getlastaction:text
bind splt - * blacktools:getlastaction:split
bind sign - * blacktools:getlastaction:sign
bind mode - *+b* blacktools:getlastaction:ban
bind ctcp - ACTION blacktools:getlastaction:me
bind part - * blacktools:getlastaction:part

unbind msg - hello *msg:hello
unbind msg - pass *msg:pass
unbind msg - addhost *msg:addhost

##############
##########################################################
##   END                                                 #
##########################################################
