#!/bin/sh
pactl set-sink-volume @DEFAULT_SINK@ $1
dunstctl close-all
notify-send $(/home/bodzio/scripts/get_volume.sh) &
