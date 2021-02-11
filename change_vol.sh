#!/bin/sh
pactl set-sink-volume @DEFAULT_SINK@ $1
notify-send -t 500 $(/home/bodzio/scripts/get_volume.sh)
