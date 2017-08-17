#!/bin/sh

# various kernel parameters taken from
# https://github.com/mozilla-b2g/device-flame/blob/master/init.target.rc
echo "100" > /sys/kernel/mm/ksm/pages_to_scan
echo "500" > /sys/kernel/mm/ksm/sleep_millisecs
echo "1" > /sys/kernel/mm/ksm/run
echo "192M" > /sys/block/zram0/disksize

# params to get the screen working
echo "480,1708" > /sys/devices/virtual/graphics/fb0/virtual_size

# params for wifi support
echo -n "Firefox OS" > /sys/devices/virtual/android_usb/android0/iManufacturer
echo -n "Firefox OS" > /sys/devices/virtual/android_usb/android0/iProduct
echo -n "f30ecc8f" > /sys/devices/virtual/android_usb/android0/iSerial
