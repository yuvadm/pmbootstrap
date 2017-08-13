#!/bin/sh

# various kernel parameters taken from
# https://github.com/mozilla-b2g/device-flame/blob/master/init.target.rc
echo "100" > /sys/kernel/mm/ksm/pages_to_scan
echo "500" > /sys/kernel/mm/ksm/sleep_millisecs
echo "1" > /sys/kernel/mm/ksm/run
echo "192M" > /sys/block/zram0/disksize

# params to get the screen working
echo "480,1708" > /sys/devices/virtual/graphics/fb0/virtual_size

# Add firmware partition mount points
mkdir /{data,persist,modem}

# Add firmware partitions to fstab
echo "/dev/mmcblk0p29     /data       ext4    defaults        0       2" >> /etc/fstab
echo "/dev/mmcblk0p13     /persist    ext4    defaults        0       2" >> /etc/fstab
echo "/dev/mmcblk0p1      /modem      vfat    defaults        0       2" >> /etc/fstab

# Link all on-device firmware
ln -s /modem/image/{adsp,cmnlib,mba,modem,playread,tqs,wcnss,widevine}.mdt /lib/firmware/
