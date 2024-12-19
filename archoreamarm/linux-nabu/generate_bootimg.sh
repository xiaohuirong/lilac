#!/bin/bash

cat /boot/Image.gz /boot/dtbs/qcom/sm8150-xiaomi-nabu.dtb > /boot/zImage.gz
echo "Successful generate /boot/zImage.gz"

# mkbootimg \
#     --base 0x80000000 \
#     --kernel_offset 0x00080000 \
#     --ramdisk_offset 0x02000000 \
#     --tags_offset 0x01e00000 \
#     --pagesize 2048 \
#     --second_offset 0x00f00000 \
#     --ramdisk /boot/initramfs-linux-uz801.img \
#     --cmdline "earlycon root=PARTUUID=a7ab80e8-e9d1-e8cd-f157-93f69b1d141e console=ttyMSM0,115200 rw zswap.enabled=0" \
#     --kernel /boot/zImage.gz \
#     -o /boot/boot.img

mkbootimg \
    --kernel /boot/zImage.gz \
    --ramdisk /boot/initramfs-linux-nabu.img \
    --cmdline "pd_ignore_unused clk_ignore_unused console=tty0 root=UUID=02535273-d8ba-46bc-8072-4beef8eb8bca rw rootwait" \
    --base 0x00000000 \
    --kernel_offset 0x00008000 \
    --tags_offset 0x00000100 \
    --pagesize 4096 \
    --id \
    -o /boot/boot.img

echo "Successful generate /boot/boot.img"
rm /boot/zImage.gz
echo "Remove /boot/zImage.gz"
