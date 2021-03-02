#!/bin/sh
pulsemixer --change-volume $1 &
dunstctl close-all &
notify-send $(/home/bodzio/scripts/get_volume.sh) -t 500 &
