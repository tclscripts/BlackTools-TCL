#################################################################
#     _   _   _   _   _   _   _   _   _   _   _   _   _   _  ####
#    / \ / \ / \ / \ / \ / \ / \ / \ / \ / \ / \ / \ / \ / \    #
#   ( T | C | L | S | C | R | I | P | T | S | . | N | E | T )   #
#    \_/ \_/ \_/ \_/ \_/ \_/ \_/ \_/ \_/ \_/ \_/ \_/ \_/ \_/    #
#                                                               #
###############                                                 #
#################################################################
#
##### LANGUAGE MODULE 
### This is the language loader for BlackTools.tcl
#
### Provides replies/notices in diff languages.
### The default lang can be set in BlackTools.tcl
#
## 1 - Romanian
## 2 - English
## 3 - Italian (not available)
## 4 - Spanish (not available)
## 5 - French (not available)
#                                                 ###############
#################################################################

if {[info exists black(backup_update)]} {
	set black(backdir) $black(backup_dir)
} else {
	set black(backdir) $black(dirname)
}

#load language

	set get_lang_files [glob -directory "$black(backdir)/BlackTools/lang" "*.??.lang.tcl"]
foreach lang $get_lang_files {
	set black(lang_error_$lang) [catch {source $lang} black(lang_error_stats_$lang)]
if {$black(lang_error_$lang) == "1"} {
	putlog "\[BT\] :Couldn't load the lang file \"$lang\".Reason: \"$black(lang_error_stats_$lang)\""
} else {
	set split_lang [split $lang "."]
	set the_lang [lindex $split_lang 1]
	lappend black(current_lang) [join $the_lang ","]
} 

if {![info exists black(current_lang) ]} {set black(current_lang) "N/A"}

}

#load manual

set get_man_files [glob -directory "$black(backdir)/BlackTools/lang" "*.???-??.lang.tcl"]
foreach lang $get_man_files {
	set black(man_error_$lang) [catch {source $lang} black(man_error_stats_$lang)]
if {$black(man_error_$lang) == "1"} {
	putlog "\[BT\] :Couldn't load the manual file \"$lang\".Reason: \"$black(man_error_stats_$lang)\""
	}
}

###############
#################################################################
#   END                                                         #
#################################################################