#!/bin/sh

fbdev=/sys/class/graphics/fb0
echo "480,1708" > $fbdev/virtual_size
cat $fbdev/modes > $fbdev/mode

echo -n "Firefox OS" > /sys/devices/virtual/android_usb/android0/iManufacturer
echo -n "Firefox OS" > /sys/devices/virtual/android_usb/android0/iProduct
echo -n "f30ecc8f" > /sys/devices/virtual/android_usb/android0/iSerial
