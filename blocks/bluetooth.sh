#!/bin/bash

ICON_OFF="󰂲"
ICON_ON=""
ICON_CONNECTED="󰂱"

command -v bluetoothctl >/dev/null 2>&1 || {
  exit 1
}

bt_powered=$(bluetoothctl show | grep "Powered:" | awk '{print $2}')

if [[ "$bt_powered" != "yes" ]]; then
  printf "$ICON_OFF"
  exit 0
fi

connected_devices=$(bluetoothctl info | grep "Connected: yes" | wc -l)

if [[ "$connected_devices" -eq 0 ]]; then
  printf "$ICON_ON"
else

  printf "$ICON_CONNECTED (%s)" "$connected_devices"
fi
