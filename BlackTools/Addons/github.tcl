package require tls
package require http
::http::register https 443 ::tls::socket

namespace eval ::github {
    variable libdir [file normalize [file join [file dirname [info script]] ..]]
    if {[lsearch $::auto_path $libdir] == -1} {
        lappend auto_path $libdir
    }
}

package provide github::github 0.4
package provide github 0.4

# Main procedure to download GitHub repository as a .tar.gz archive
proc ::github::github {cmd owner repo folder {branch "BlackTools-3.0"}} {
    variable libdir
    set url https://api.github.com/repos/$owner/$repo/tarball/$branch
    download_archive $url $folder
}

# Background download with wget
proc ::github::download_archive {url folder} {
    # Create the folder if it doesn't exist
    if {![file exists $folder]} {
        file mkdir $folder
    }

    # Define the path for the downloaded archive
    set archive_path [file join $folder "bt.tar.gz"]

    # Run the wget command in the background
    set command "curl -L -o $archive_path $url &"

    if {[catch {exec {*}$command} errMsg]} {
        putlog "\[BT\] - AutoUpdate - Error: Failed to start download $url in background"
        putlog "\[BT\] - AutoUpdate - Details: $errMsg"
        return
    }

    # Check periodically if download is complete
    utimer 5 [list ::github::check_download_complete $archive_path $folder]
}

# Periodically check if the download is complete
proc ::github::check_download_complete {archive_path folder} {
    # If the download is complete, proceed with extraction
    if {[file exists $archive_path] && [file size $archive_path] > 0} {
        if {[catch {::github::unpack_archive $archive_path $folder} errMsg]} {
            putlog "\[BT\] - AutoUpdate - Error: Failed to unpack archive $archive_path"
            putlog "\[BT\] - AutoUpdate - Details: $errMsg"
        } else {
            putlog "\[BT\] - AutoUpdate - Successfully unpacked archive to $folder"
        }

        # Clean up the archive file after extraction
        file delete $archive_path
    } else {
        # Re-check in 5 seconds if download isn't complete
        utimer 5 [list ::github::check_download_complete $archive_path $folder]
    }
}

# Unpack the .tar.gz archive into the specified folder
proc ::github::unpack_archive {archive_path folder} {
    # Define a temporary folder for unpacking
    set temp_folder [file join $folder "temp_unpack"]

    # Ensure the temporary folder exists
    if {![file exists $temp_folder]} {
        file mkdir $temp_folder
    }

    # Extract the tarball into the temporary folder
    if {[catch {exec tar -xzf $archive_path -C $temp_folder} errMsg]} {
        putlog "\[BT\] - AutoUpdate - Error: Failed to extract $archive_path"
        putlog "\[BT\] - AutoUpdate - Details: $errMsg"
        return
    }

    # Locate the first directory inside temp_unpack (e.g., "owner-repo-branch")
    set extracted_dir [lindex [glob -directory $temp_folder *] 0]

    # Move contents from the extracted directory to the target folder
    foreach item [glob -directory $extracted_dir *] {
        file rename -force $item $folder/
    }

    # Clean up the temporary folder and extracted directory
    file delete -force $temp_folder
}
