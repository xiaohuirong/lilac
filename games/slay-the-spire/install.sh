#!/usr/bin/expect -f

set timeout -1
set install_dir [lindex $argv 0]

spawn ./slay_the_spire_v2.3.2-10.04.2022.run --extract
expect "Enter a path to extract files from the embedded archive:"
send "$install_dir\r"
expect "Create a launcher in the applications menu"
send "n\r"
expect "Create a launcher on the desktop"
send "n\r"

expect eof
