#!/usr/bin/expect -f

set timeout -1
set install_dir [lindex $argv 0]

spawn ./fury_unleashed_v1.8.4.run -e
expect "Enter a path to extract files from the embedded archive:"
send "$install_dir\r"

expect eof
