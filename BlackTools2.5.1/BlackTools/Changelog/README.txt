============================================================================================
                         -= BLaCkShaDoW Production Presents =-
                    BlackTools - The Ultimate Channel Control Script
                             One TCL. One smart Eggdrop
============================================================================================

   BlackTools is the most complete channel management script who can manage channels from all 
   the IRC networks, although some modules are specifically designed only for Undernet network.

                                -----------------------

   BlackTools  : http://blacktools.tclscripts.net
   Bugs report : http://www.tclscripts.net/
   Online Help : irc://irc.undernet.org/tcl-help 
                  #TCL-HELP / UnderNet
                  You can ask in english or romanian

   Ideas, suggestions, comments ?

      This script is free of charge but I accept donations, old computers, free shells :))
      In any case, if you have any comment (good or bad) go to http://tclscripts.net.

Minimum requirements:
     o Eggdrop 1.6.x
     o Tcl 8.4 or higher.

BlackTools commands:
     o h - display menu of all available commands
     o man - description manual of all commands, settings or modules

Most important features:

    o Multi-channels support: intelligent IRC channel management, every owner(s)/manager(s)
      can customise this script and its component settings for each channel to his liking.
      (add/remove users, activate or disable desired protections, modules or commands)
    o Global boss owner(s) now have the possibility of being able to modify, directly into,
      their eggdrop config file (eggdrop.conf) without having to log on to the shell 
      machine to do that. (i.e. nickname, realname, homechan, chanserv, chanserv username, 
      chanserv password, etc.)
    o Designed for flexibility and ease of use: BlackTools is now 100% flexible to be 
      configured via channel, you can set different settings for each channel.
    o Owner(s) timer module system which allows to start timers to execute certain processes 
      (proc) and in case you want to kill/stop a timer you can do this through this module too. 
      Also provides and a list of active timers running.
    o Allows you to upload files that match the pattern *.tcl from a url inside your eggdrop's
      scripts directory.
    o Note module system where users can send messages to each other or save personal notes. 
      Also, eggdrop will send notes to global owner(s) to inform them every time is abused 
      (banned or can't join a channel).
    o All commands works through private message (PRIVMSG) and possibility that all users, who 
      have access to eggdrop, can set their own cmdchar such as '!'.
    o All the warn/kick/ban reasons are highly customizable. Every channel manager can add 
      or remove anything as want easily.
    o The new BlackTools version brings also a new and very well-implemented ban system which
      performs accurate and efficient searches through global banlist and every channel 
      banlists for a better management and an easier removal/unban.
    o Perfect navigational system through the pages of every module which has this option and 
      a quote support system module.
    o Protection against botnet (mass) and private floods.
    o And lots of cool features for your eggdrop :)

Changelog:

     Read BlackTools MANUAL for more info about how to use it. 
     Read INSTALL file to know how to install it.
     Read FAQ file for the most frequently asked questions.

Credits:

    o Settore for hosting the tclscripts.net project website.
      settore@tclscripts.net [ www.sitexperts.eu ]
         
    o Florian (most craziest imagination guy) for spotting some major and important issues, also
      for provinding all the required and necessary materials needed for this script to be ready.
      florian@tclscripts.net [ www.tntradio.ro ]

Utenti italiani:
---------------------
      Nessuna traduzione ufficiale ancora.

Usuarios espanoles:
---------------------
      Sin traduccion oficial todavia.

----------------------------------------------------------------------------------------------
Copyright (c) 2008-2017 Daniel Voipan (aka BLaCkShaDoW).
----------------------------------------------------------------------------------------------
AUTHOR   : Daniel Voipan
NICK     : BLaCkShaDoW
MEET ME  : On *UnderNet.org: #TCL-HELP, #UnBan, #Undernet, #TNTRadio
MAIL     : blackshadow@tclscripts.net
URL      : https://github.com/DanielVoipan/
GREETS   : o Special thanks to QueenElsa and Florian for testing, suggesting fixes and new 
             features inspiration for many parts of BlackTools.tcl that led to the improvement
             of this script. 
           o As well, many thanks to psycho for his interest in testing & searching for issues.
           o Thanks also to Time2Go > Ionut (retired..)
             - admin of #TCL-HELP Channel (without whom this script would not have gone so far)
           o Thank you to all those people who found bugs in the script and reported them and
             to all the users who joined #TCL-HELP and make me keep this project alive and updated.
             - #TCL-HELP web page: http://tclscripts.net
-----------------------------------------------------------------------------------------------