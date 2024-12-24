#!/bin/bash

if [ -z "$1" ]; then
  echo "Need dtb parameter"
  exit 1
fi

if [[ $1 == uz* ]]; then
  img=boot-uz.img
  dtb=msm8916-yiming-uz801v3.dtb
elif [[ $1 == ufi* ]]; then
  img=boot-ufi.img
  dtb=msm8916-thwc-ufi001c.dtb
else
  echo "No such device tree."
  exit 1
fi

echo "Generate ${img} for ${dtb}"
cat /boot/Image.gz /boot/dtbs/qcom/${dtb} > /boot/zImage.gz

echo "Successful generate /boot/zImage.gz"

mkbootimg \
    --base 0x80000000 \
    --kernel_offset 0x00080000 \
    --ramdisk_offset 0x02000000 \
    --tags_offset 0x01e00000 \
    --pagesize 2048 \
    --second_offset 0x00f00000 \
    --ramdisk /boot/initramfs-linux-msm8916.img \
    --cmdline "earlycon root=PARTUUID=a7ab80e8-e9d1-e8cd-f157-93f69b1d141e console=ttyMSM0,115200 rw zswap.enabled=0" \
    --kernel /boot/zImage.gz \
    -o /boot/${img}

echo "Successful generate /boot/${img}"
rm /boot/zImage.gz
echo "Remove /boot/zImage.gz"
