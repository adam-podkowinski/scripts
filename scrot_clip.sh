#!/bin/sh
scrot -s /tmp/screenshot-$(date +%F_%T).png -e 'xclip -selection c -t image/png < $f'

notify-send "Screenshot copied to clipboard" -t 2000
