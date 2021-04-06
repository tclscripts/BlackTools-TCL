#!/usr/bin/env tclsh
# file github/github.tcl
#https://wiki.tcl-lang.org/page/github%3A%3Agithub

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
    #puts $url
    #puts [lindex $d 1]
    download $url $folder
}

# Folder download
proc ::github::download {url folder {debug true}} {
    if {![file exists $folder]} {
        file mkdir $folder
    }
    set data [http::data [http::geturl $url -timeout 5000]]
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
        lappend files [list $type $file]
    }

    # TODO subfolders (done)
    foreach item $files {
        set file [lindex $item 1]
        set type [lindex $item 0]
        if {$debug} {
            puts "fetching $file"
        }
        if {$type eq "file"} {
            set fname [file tail $file]
            set fname [file join $folder $fname]
            set f [open $fname w]
            fconfigure $f -translation binary
            set tok [http::geturl $file -channel $f]
            set Stat [::http::status $tok]
            flush $f
            close $f
            http::cleanup $tok
        } else {
            if {$debug} {
                puts "fetch new folder $file ..."
            }
            set nfolder [file join $folder [file tail $file]]
            download $file $nfolder $debug
        }
    }
    
}

