#!/usr/bin/env tclsh
# file github/github.tcl
#https://wiki.tcl-lang.org/page/github%3A%3Agithub
#
#Version 1.1 - added a timer in seconds between files & folders

# chicken and egg problem we need non-standard packages tls and json ...
package require tls
package require http
::http::register https 443 ::tls::socket

namespace eval ::github {
    variable libdir [file normalize [file join [file dirname [info script]] ..]]
    if {[lsearch $::auto_path $libdir] == -1} {
        lappend auto_path $libdir
    }
} 

# I already placed the json folder below of the github folder
package require json
package provide github::github 0.2
package provide github 0.2

# Tcl package download
proc ::github::github {cmd owner repo folder} {
    variable libdir
    set url https://api.github.com/repos/$owner/$repo/contents/
    download $url $folder
}

# Folder download
proc ::github::download {url folder {debug true}} {
    if {![file exists $folder]} {
        file mkdir $folder
    }
    set sfiles ""
    set dfiles ""
    set data [http::data [http::geturl $url]]
    set d [json::json2dict $data]
    set l [llength $d]
    set files [list]
for {set i 0} {$i < $l} {incr i 1} {
    set dic [dict create {*}[lindex $d $i]]
    set file [dict get $dic download_url]
    set type [dict get $dic type]
if {$file eq "null" &&  $type eq "dir"} {
    set file [dict get $dic url]
    set file [regsub {.ref=master} $file ""]
}
if {$type eq "file"} {
    lappend sfiles $file
} else {
    lappend dfiles $file
    }
}
if {$sfiles != ""} {
    files $sfiles $folder 0 $dfiles
    return
    }
if {$dfiles != ""} {
    dirs $dfiles $folder 0
    }
}

# Folders make
proc ::github::dirs {dirs dir num} {
    set file [lindex $dirs $num]
    set nfolder [file join $dir [file tail $file]]
     download $file $nfolder
    set counter [expr $num + 1]
if {[lindex $dirs $counter] != ""} {
    utimer 2 [list ::github::dirs $dirs $dir $counter]
    }
}

# Files make
proc ::github::files {files dir num dirs} {
    set item [lindex $files $num]
    set file [lindex $item 0]
    set fname [file tail $file]
    set fname [file join $dir $fname]
    set f [open $fname w]
    fconfigure $f -translation binary
    set tok [http::geturl $file -channel $f]
    set Stat [::http::status $tok]
    flush $f
    close $f
    http::cleanup $tok
    set counter [expr $num + 1]
if {[lindex $files $counter] != ""} {
    utimer 2 [list ::github::files $files $dir $counter $dirs]
    } else {
if {$dirs != ""} {
    dirs $dirs $dir 0
        }
    }
}

