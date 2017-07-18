#!/usr/bin/env bash

#GiDeviceInfoMenu by BobyMCBobs
#Under GPL 3.0
#See https://github.com/BobyMCbobs/GiDeviceInfoMenu for more info

NAMEOFDEVICE=$(ideviceinfo | grep DeviceName | sed 's/DeviceName: *//g')
BATT=$(ideviceinfo -q com.apple.mobile.battery | grep BatteryCurrentCapacity | grep -o -E '[0-9]+')
IOSVER=$(ideviceinfo | grep ProductVersion | sed 's/ProductVersion: *//g')
IDI=$(ideviceinfo | grep DeviceName | cksum | cut -b 1)
CH=$(ideviceinfo -q com.apple.mobile.battery | grep BatteryIsCharging | cksum | cut -b 1)

if [ $IDI -eq 4 ]
then
	echo "No iDevice"
	echo "Please Connect Your iOS Device"
	FULLC='0'
else

	if [ $BATT != 100 ]
	then	
		echo "📱$BATT%⚡️"
		echo "---"
		echo "$NAMEOFDEVICE"
		echo "iOS $IOSVER"
		echo "$BATT% Charged ⚡️"
		FULLC='0'
	
	else
		echo "📱$BATT%☑️"
		echo "---"
		echo "$NAMEOFDEVICE"
		echo "iOS $IOSVER"
		echo "$NAMEOFDEVICE is Charged ☑️"
		
		OS="`uname`"
                DE="`echo $XDG_CURRENT_DESKTOP`"
                if [ $OS = "Linux" ] && [ $DE = "GNOME" ] && [ $FULLC = '0' ]
                then
                        notify-send GiDeviceInfo "Device has charged to 100%"
			FULLC='1' 
                fi

	fi

fi

refresh=true
