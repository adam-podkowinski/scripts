#!/bin/bash
if [ "$1" == "pick" ]
then
  scrot -sp /tmp/screenshot-$(date +%F_%T).png -e 'xclip -selection c -t image/png < $f'
else
  scrot -p /tmp/screenshot-$(date +%F_%T).png -e 'xclip -selection c -t image/png < $f'
fi

notify-send "Screenshot copied to clipboard" -t 2000
