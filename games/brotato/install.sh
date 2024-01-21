#!/usr/bin/expect -f

set timeout -1
set install_dir [lindex $argv 0]

spawn ./Brotato_v1.0.1.3.run -e
expect "Enter a path to extract files from the embedded archive:"
send "$install_dir\r"
expect "Create a launcher in the applications menu"
send "n\r"
expect "Create a launcher on the desktop"
send "n\r"

expect eof
