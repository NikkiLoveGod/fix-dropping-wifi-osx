#!/bin/bash

# This tries to fix dropping wifi connection by removing network settings
# See http://apple.stackexchange.com/questions/195359/wifi-keeps-dropping-macbook-pro-13in-retina-early-2015

set -e # Halt on errors

function setWifi() {
	ON_OR_OFF=$1
	echo "Turning Wifi $ON_OR_OFF..."
	networksetup -setairportpower airport ${ON_OR_OFF}
}

function deleteFromSystemSettings() {
	FILENAMES=$1
	sudo rm -f /Library/Preferences/SystemConfiguration/$FILENAMES
}

function deleteNetworkSettings() {
	echo "Deleting network settings..."
	deleteFromSystemSettings {com.apple.airport.preferences.plist,NetworkInterfaces.plist,preferences.plist}
}

function restartMachine() {
	sudo reboot now
}

setWifi off
deleteNetworkSettings
setWifi on
restartMachine