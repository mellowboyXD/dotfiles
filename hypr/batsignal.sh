#!/bin/bash
# Batsignal notifies me when my battery level is low
# Author: mellowboyxd

LOW_LEVEL=20
CRITICAL_LEVEL=8
BAT_PATH="/sys/class/power_supply/BAT1"

LEVEL=$(cat "$BAT_PATH/capacity")
STATUS=$(cat "$BAT_PATH/status")

function notify {
	notify-send -a "Batsignal" "$1" -u critical
	(aplay ~/Music/low-battery-alert.wav)& pid=$! ; sleep 0.5s; kill -9 $pid
}

if [[ $STATUS == "Discharging" ]]; then
	if [[ $LEVEL -le $CRITICAL_LEVEL ]]; then
		notify "Battery level critical!!!"
		notify "Battery level critical!!!"
		notify "Plug the it in already!!!"
	elif [[ $LEVEL -le $LOW_LEVEL ]]; then
		notify "Low Battery!"
		notify "Plug in charger!"
	fi
fi

