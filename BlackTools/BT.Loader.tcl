#########################################################################
##          BlackTools - The Ultimate Channel Control Script           ##
##                    One TCL. One smart Eggdrop                       ##
#########################################################################
##########################   LOADER TCL   ###############################
#########################################################################
##						                       ##
##   BlackTools  : http://blacktools.tclscripts.net	               ##
##   Bugs report : http://www.tclscripts.net/	                       ##
##   GitHub page : https://github.com/tclscripts/BlackToolS-TCL        ##
##   Online Help : irc://irc.undernet.org/tcl-help 	               ##
##                 #TCL-HELP / UnderNet                                ##
##                 You can ask in english or romanian                  ##
##					                               ##
#########################################################################

if {[info exists black(backup_update)]} {
	set black(backdir) $black(backup_dir)
} else {
	set black(backdir) $black(dirname)
}

if {[info exists black(update_disabled)]} {
	unset black(update_disabled)
}

#Load modules

	set modules_files [glob -directory "$black(backdir)/BlackTools/Modules/" "*.tcl"]
foreach file $modules_files {
	set split_file [split $file "."]
	set themodule [lindex $split_file 1]
	set black(module_error_$themodule) [catch {source $file} black(module_error_stats_$themodule)]
if {$black(module_error_$themodule) == "1"} {
if {$themodule == "AutoUpdate"} {
	putlog "\[BT\] :Couldn't load the AutoUpdate module. Reason: $black(module_error_stats_$themodule)."
	set black(update_disabled) $black(module_error_stats_$themodule)
	continue
		}
	die "\[BT\] :Couldn't load the module file \"$file\".Reason: \"$black(module_error_stats_$themodule)\""
	}
}


#Load cmds

	set cmds_files [glob -directory "$black(backdir)/BlackTools/Commands/" "*.tcl"]
foreach file $cmds_files {
	set split_file [split $file "."]
	set themodule [lindex $split_file 1]
	set black(cmds_error_$themodule) [catch {source $file} black(cmds_error_stats_$themodule)]
if {$black(cmds_error_$themodule) == "1"} {
	die "\[BT\] :Couldn't load the cmds file \"$file\".Reason: \"$black(cmds_error_stats_$themodule)\""
	} 
}

#Load protections

	set prot_files [glob -directory "$black(backdir)/BlackTools/Protections/" "*.tcl"]
foreach file $prot_files {
	set split_file [split $file "."]
	set themodule [lindex $split_file 1]
	set black(prot_error_$themodule) [catch {source $file} black(prot_error_stats_$themodule)]
if {$black(prot_error_$themodule) == "1"} {
	die "\[BT\] :Couldn't load the prot. file \"$file\".Reason: \"$black(prot_error_stats_$themodule)\""
	} 
}

#Load script files

set black(timers_error) [catch {source $black(backdir)/BlackTools/BT.Timers.tcl} black(timers_error_stats)]
set black(binds_error) [catch {source $black(backdir)/BlackTools/BT.Binds.tcl} black(binds_error_stats)]
set black(ban_error) [catch {source $black(backdir)/BlackTools/BT.Ban.tcl} black(ban_error_stats)]
set black(core_error) [catch {source $black(backdir)/BlackTools/BT.Core.tcl} black(core_error_stats)]
set black(loader_error) [catch {source $black(backdir)/BlackTools/lang/loader.tcl} black(loader_error_stats)]

#Check for errors in script files
if {$black(timers_error) == "1"} {
	die "\[BT\] Error. Couldn't load the \"BT Timers\". Reason: \"$black(timers_error_stats)\""
}
if {$black(binds_error) == "1"} {
	die "\[BT\] Error. Couldn't load the \"BT Binds\". Reason: \"$black(binds_error_stats)\""
}
if {$black(core_error) == "1"} {
	die "\[BT\] Error. Couldn't load the \"BT Core\". Reason: \"$black(core_error_stats)\""
}
if {$black(ban_error) == "1"} {
	die "\[BT\] Error. Couldn't load the \"BT Ban\". Reason: \"$black(ban_error_stats)\""
}
if {$black(loader_error) == "1"} {
	die "\[BT\] Error. Couldn't load the \"BT Language\". Reason: \"$black(loader_error_stats)\""
}

#################
###########################################################################
##   END                                                                 ##
###########################################################################
