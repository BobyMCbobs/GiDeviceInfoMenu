#!/usr/bin/env bash

NAMEOFDEVICE=$(ideviceinfo | grep DeviceName | sed 's/DeviceName: *//g')
BATT=$(ideviceinfo -q com.apple.mobile.battery | grep BatteryCurrentCapacity | grep -o -E '[0-9]+')
IOSVER=$(ideviceinfo | grep ProductVersion | sed 's/ProductVersion: *//g')
IDI=$(ideviceinfo | grep DeviceName | cksum | cut -b 1)

if [ $IDI -eq 4 ]
then

echo "Device Not Connected"
echo "Please Connect Your iOS Device"

else

echo "$NAMEOFDEVICE's batt is $BATT%"
echo "---"
echo "$NAMEOFDEVICE"
echo "iOS $IOSVER"
echo "$BATT% charged"

fi

refresh=true
