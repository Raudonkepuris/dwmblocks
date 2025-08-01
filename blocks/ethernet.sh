#!/bin/bash

interface=$(ip route | awk '/default/ {print $5}' | head -n 1)

if [ -z "$interface" ]; then
    printf "󰈂"
    exit 0
fi

if [[ "$interface" =~ ^(en|eth|eno|ens|enp)[0-9a-z]*$ ]]; then
	 printf "󰈁"
    exit 0
fi

if [[ "$interface" =~ ^(wl|wlp|wlan)[0-9a-z]*$ ]]; then
    signal=$(grep "$interface" /proc/net/wireless | awk '{ print int($3 * 100 / 70) }')

    if [ "$signal" -ge 75 ]; then
        printf "󰤨 "
    elif [ "$signal" -ge 50 ]; then
        printf "󰤥 "
    elif [ "$signal" -ge 25 ]; then
        printf "󰤢 "
	 elif [ "$signal" -ge 20 ]; then
        printf "󰤟 "
	 else
	 	  printf "󰤯 "
    fi 
fi

