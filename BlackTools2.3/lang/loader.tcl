################################################################################
#
#EN : This is the file that loads the language for the script
#
#RO :Acesta este fisierul ce incarca limbajul pentru BlacKTools
#
################################################################################


#Here you can specify the languages that are in the /lang folder. You can add
#as many languages as you want using the standard below.

set black(language_load) {
"BlackTools.ro.lang.tcl"
"BlackTools.en.lang.tcl"
}


################################################################################
#
#                              DO NOT MODIFY HERE
#
################################################################################

foreach language $black(language_load) {
set black(lang_error_$language) [catch {source $black(dirname)/lang/$language} black(lang_error_stats_$language)]

if {$black(lang_error_$language) == "1"} {
putlog "4BlackTools :I didnt find the 12$language file in 12lang folder, so you can`t use this language.Please Load it in the lang folder."
}
}
