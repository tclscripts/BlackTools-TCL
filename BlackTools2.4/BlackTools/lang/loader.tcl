################################################################################
#
#EN : This is the file that loads the language for the script
#
#RO :Acesta este fisierul ce incarca limbajul pentru BlacKTools
#
################################################################################

set get_lang_files [glob -directory "$black(dirname)/BlackTools/lang" "*lang.tcl*"]

foreach lang $get_lang_files {
set black(lang_error_$lang) [catch {source $lang} black(lang_error_stats_$lang)]
if {$black(lang_error_$lang) == "1"} {
putlog "\[BlackTools\] :Couldn't load the lang file \"$lang\".Reason: \"$black(lang_error_stats_$lang)\""
} else {
	set split_lang [split $lang "."]
	set the_lang [lindex $split_lang 1]
	lappend black(current_lang) [join $the_lang ","]
} 

if {![info exists black(current_lang) ]} {set black(current_lang) "NONE"}

}
