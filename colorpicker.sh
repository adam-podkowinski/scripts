#!/bin/sh
color=$(hyprpicker)
notify-send "Color picked:
$color" -t 10000
echo $color | wl-copy
