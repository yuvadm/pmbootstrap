#!/bin/sh

# various kernel parameters taken from
# https://github.com/mozilla-b2g/device-flame/blob/master/init.target.rc
echo "100" > /sys/kernel/mm/ksm/pages_to_scan
echo "500" > /sys/kernel/mm/ksm/sleep_millisecs
echo "1" > /sys/kernel/mm/ksm/run
echo "192M" > /sys/block/zram0/disksize

# params to get the screen working
echo "480,1708" > /sys/class/graphics/fb0/virtual_size

