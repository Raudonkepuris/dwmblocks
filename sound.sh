#!/bin/bash

sound=$(pamixer --get-volume-human)
printf " %s %s \\n" $sound
