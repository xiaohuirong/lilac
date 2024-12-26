#!/usr/bin/bash
/usr/bin/gt load $1.scheme $1

if [[ "$1" =~ adb ]]; then
    mkdir -p /dev/usb-ffs/adb
    /usr/bin/mount -t functionfs adb /dev/usb-ffs/adb
    /usr/bin/adbd &
    sleep 1
    /usr/bin/gt enable $1
fi

if [[ "$1" =~ mtp ]]; then
    mkdir -p /dev/ffs-mtp
    /usr/bin/mount -t functionfs mtp /dev/ffs-mtp
    /usr/bin/umtprd &
    sleep 2
    /usr/bin/gt enable $1
fi
