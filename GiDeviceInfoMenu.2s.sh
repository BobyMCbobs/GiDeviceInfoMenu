#!/usr/bin/env bash

#GiDeviceInfoMenu v1.0 by BobyMCBobs
#Licensed under GPL 3.0
#See https://github.com/BobyMCbobs/GiDeviceInfoMenu for more info

NAMEOFDEVICE=$(ideviceinfo | grep DeviceName | sed 's/DeviceName: *//g')
BATT=$(ideviceinfo -q com.apple.mobile.battery | grep BatteryCurrentCapacity | grep -o -E '[0-9]+')
IOSVER=$(ideviceinfo | grep ProductVersion | sed 's/ProductVersion: *//g')
IDI=$(ideviceinfo | grep DeviceName | cksum | cut -b 1)
CH=$(ideviceinfo -q com.apple.mobile.battery | grep BatteryIsCharging | cksum | cut -b 1)
OS="`uname`"
DE="`echo $XDG_CURRENT_DESKTOP`"

function sendBattNotif() {
if [ $OS = "Linux" ] && [ $DE = "GNOME" ] && [ ! -f /tmp/GiDeviceCH.notif.lock ]
then
	notify-send GiDeviceInfo "$NAMEOFDEVICE has charged to $BATT%"
	touch /tmp/GiDeviceCH.notif.lock
fi
}

function rmCHLock() {
if [ -f /tmp/GiDeviceCH.notif.lock ]
then
	rm /tmp/GiDeviceCH.notif.lock
fi
}

if [ $IDI -eq 4 ]
then
	echo "No iDevice"
	echo "Please Connect Your iOS Device"
	rmCHLock
else

	if [ $BATT != 100 ]
	then
		echo "📱$BATT%⚡️"
		echo "---"
		echo "$NAMEOFDEVICE"
		echo "iOS $IOSVER"
		echo "$BATT% Charged ⚡️"
		rmCHLock
	else
		echo "📱$BATT%☑️"
		echo "---"
		echo "$NAMEOFDEVICE"
		echo "iOS $IOSVER"
		echo "$NAMEOFDEVICE is Charged ☑️"
		echo $FULLC
		sendBattNotif
	fi

fi

refresh=true
