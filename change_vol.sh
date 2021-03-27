#!/bin/sh
pulsemixer --change-volume $1 &
#dunstctl close-all &
dunstify -t 200 -i audio-volume-muted-blocking -r 1 $(get_volume.sh) &
