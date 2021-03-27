#!/bin/sh
color=$(xccp)
notify-send "Color picked:
$color" -t 10000
echo $color | xclip -sel clip
