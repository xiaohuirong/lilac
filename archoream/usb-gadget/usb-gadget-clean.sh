#!/bin/bash
# remove network config will make ssh not work.
# you need this script to avoid the problem that can't shutdown.

gadget=/sys/kernel/config/usb_gadget/pi4

if [[ -e "${gadget}/configs/c.1/ffs.adb" ]]; then
    echo "" > ${gadget}/UDC
    echo "Remove ADB first"
    pkill adbd
    umount /dev/usb-ffs/adb
    rm /dev/usb-ffs/adb -rf
    rm ${gadget}/configs/c.1/ffs.adb
    ls /sys/class/udc > ${gadget}/UDC
fi

if [[ -e "${gadget}/configs/c.1/ffs.mtp" ]]; then
    echo "" > ${gadget}/UDC
    echo "Remove MTP first"
    pkill umtprd
    umount /dev/ffs-mtp
    rm /dev/ffs-mtp -rf
    rm ${gadget}/configs/c.1/ffs.mtp
    ls /sys/class/udc > ${gadget}/UDC
fi
