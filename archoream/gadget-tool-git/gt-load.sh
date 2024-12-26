#!/usr/bin/bash
try_enable() {
    max_retries=5
    retry_count=0
    while [ $retry_count -lt $max_retries ]; do
        /usr/bin/gt enable $1
        if [ $? -eq 0 ]; then
            echo "Run successful"
            break
        else
        retry_count=$((retry_count + 1))
            echo "Sleep 1s"
            sleep 1
        fi
    done
}

/usr/bin/gt load $1.scheme $1

need_enable="false"

if [[ "$1" =~ adb ]]; then
    mkdir -p /dev/usb-ffs/adb
    /usr/bin/mount -t functionfs adb /dev/usb-ffs/adb
    /usr/bin/adbd &
    need_enable="true"
fi

if [[ "$1" =~ mtp ]]; then
    mkdir -p /dev/ffs-mtp
    /usr/bin/mount -t functionfs mtp /dev/ffs-mtp
    /usr/bin/umtprd &
    need_enable="true"
fi

if [ "$need_enable" = "true" ]; then
    try_enable $1
fi
