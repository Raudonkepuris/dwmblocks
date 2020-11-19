#!/bin/sh

CL=$(setxkbmap -print |
		awk -F"+" '/xkb_symbols/ {print $2}')

printf " Keymap $CL  "
