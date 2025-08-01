#!/bin/sh

case "$1" in
    1) alacritty -t bluetui -e bluetui ;;
    3)  
		  if bluetoothctl show | grep -q "Powered: yes"; then
            bluetoothctl power off
        else
            bluetoothctl power on
        fi
        ;;
esac

pkill -RTMIN+4 dwmblocks
