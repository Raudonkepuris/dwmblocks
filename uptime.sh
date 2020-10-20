#!/bin/sh

uptime=$(uptime -p)

printf " %s %s \\n" "$uptime"
