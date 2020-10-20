#!/bin/sh

curl 'https://corona-stats.online/Lithuania' |
	grep Lithuania |
	tr -d '\n' |
	sed -E "s/\s//g;s/│/;/gi;s/║//g;s/\x1B\[([0-9];)?([0-9]{1,2}(;[0-9]{1,2})?)?[mGK]//g" |
	awk -F';' '{printf " (LT) New: " $4 "  Active: " $8 "  New deaths: " $6 "  "}'
