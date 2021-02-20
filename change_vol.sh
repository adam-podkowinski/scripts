#!/bin/sh
pactl set-sink-volume @DEFAULT_SINK@ $1
notify-send -t 300 $(/home/bodzio/scripts/get_volume.sh) &
