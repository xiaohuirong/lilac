#!/bin/bash

cat /boot/Image.gz /boot/dtbs/qcom/sdm845-xiaomi-perseus.dtb > /boot/zImage.gz
echo "Successful generate /boot/zImage.gz"

mkbootimg \
    --kernel /boot/zImage.gz \
    --cmdline "pd_ignore_unused clk_ignore_unused console=tty0 root=UUID=d3a8e2e3-edb1-429a-b9f8-bb9126ec592d rootfstype=ext4 rd.driver.blacklist=dm_mod rw rootwait zswap.enabled=0" \
    --base 0x00000000 \
    --kernel_offset 0x00008000 \
    --ramdisk_offset 0x1000000 \
    --tags_offset 0x00000100 \
    --pagesize 4096 \
    --id \
    --ramdisk /boot/initramfs-linux-perseus.img \
    -o /boot/boot.img

echo "Successful generate /boot/boot.img"
rm /boot/zImage.gz
echo "Remove /boot/zImage.gz"
