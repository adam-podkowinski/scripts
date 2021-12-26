#!/bin/bash
killall x11vnc
doas modprobe -r evdi
doas modprobe evdi initial_device_count=2
xrandr --setprovideroutputsource 1 0 --setprovideroutputsource 2 0
OUTPUT=$(xrandr | grep DVI-I-1-. | cut -d\  -f1)
xrandr --addmode $OUTPUT 1280x800
xrandr --output $OUTPUT --mode 1280x800 --left-of HDMI-0
nitrogen --restore &
x11vnc -repeat -clip 1280x800-1920-280 -forever -noxdamage -nosel -notruecolor & disown
