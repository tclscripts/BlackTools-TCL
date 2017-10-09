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
      
   BlackTools commands:
      o h - display menu of all available commands
      o man - description manual of all commands, settings or modules

2.5.1 Most important changes (summary)

**** SMALL FIXES
-- Fixed some differences of eggdrop bantimes.
-- All options/settings are now case sensitive.

**** ANUNT
--- Changed the output method of showing the adverts.

**** BACKCHAN
-- Minor text fixes: spelling and grammar mistakes and some differences of bantimes.
--- Removed nextback-chan option.

**** BADCHAN
-- Added extra option 'ShowBadChan' - who sends a message to all users with OP (@/&)
   about the banned user and the forbidden channels on which that was found.

**** BADIDENT
-- Added possibility of being able to modify the banmask method.

**** IDLE 
-- Added anti-idle option for halfop users.

**** INVITEBAN 
-- Added exception for Undernet Official Bot *X*.

**** LIMIT 
-- Fixed some error regarding the way on how the eggdrop sets the channel limit.

**** OMSG 
-- This is a new command that will allow you to send specified messages to all
   users with OP (@/&) from a channel..

**** QUOTE
-- Minor text fixes: spelling and grammar mistakes.
--- Changed the output method of showing the quotes.

**** TROLL
-- Minor text fixes: spelling and grammar mistakes.
--- Added extra option 'ShowTroll' - once activated, makes the eggdrop to display a
    notice message list of current trolls of the day, when users with access joins
    the channel (the list is reset everyday at midnight).

**** VOICEME
-- Added extra option 'NoLogged' - once activated, will allow the command
  /msg botnick voiceme <#chan> to be used and by users without a CService Username.

****  MUCH MORE
-- possibility for every user to set his own cmdar ( ! ) as they wish.
---- repaired a few bugs...

     Read BlackTools MANUAL for more info about how to use it. 
     Read INSTALL file to know how to install it.
     Read FAQ file for the most frequently asked questions.

Credits:

    o Settore for hosting the tclscripts.net project website.
      settore@tclscripts.net [ www.thedeveloper.site ]
         
    o Florian (most craziest imagination guy) for spotting some major and important issues, also
      for provinding all the required and necessary materials needed for this script to be ready.
      florian@tclscripts.net [ www.tntradio.ro ]
      
Support: 

    Are you having problems with installing or running BlackToolS tcl script?
    In case you have not found a solution in the FAQ file which is contained in the BlackTools2.5.1.tar.gz you can try the following support methods:

    o Wiki: - Our wiki provides information about setting up BlackTools and frequently asked questions.
    o IRC: #TCL-HELP @ irc.undernet.org - There's usually someone available at our IRC channel who can help you with your questions.

Bugs tracker:

    We offer a lot of support for BlackTools script - however you can also support us:
    o Donations will help us to keep working on this project.

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
