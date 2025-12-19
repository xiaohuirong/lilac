#!/bin/bash

cat /boot/Image.gz /boot/dtbs/qcom/sm8150-xiaomi-nabu.dtb > /boot/zImage.gz
echo "Successful generate /boot/zImage.gz"

mkbootimg \
    --kernel /boot/zImage.gz \
    --ramdisk /boot/initramfs-linux-nabu.img \
    --cmdline "pd_ignore_unused clk_ignore_unused console=tty0 root=/dev/sda32 rw rootwait" \
    --base 0x00000000 \
    --kernel_offset 0x00008000 \
    --tags_offset 0x00000100 \
    --ramdisk_offset 0x1000000 \
    --pagesize 4096 \
    --id \
    -o /boot/boot.img

echo "Successful generate /boot/boot.img"
rm /boot/zImage.gz
echo "Remove /boot/zImage.gz"
