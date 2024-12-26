#!/usr/bin/bash
/usr/bin/gt disable $1

if [[ "$1" =~ adb ]]; then
    /usr/bin/pkill adbd
    /usr/bin/umount /dev/usb-ffs/adb
    rm /dev/usb-ffs -rf
fi

if [[ "$1" =~ mtp ]]; then
    /usr/bin/pkill umtprd
    /usr/bin/umount /dev/ffs-mtp
    rm /dev/ffs-mtp -rf
fi

/usr/bin/gt rm -rf $1
