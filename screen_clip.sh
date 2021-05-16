#!/bin/bash
if [ "$1" == "pick" ]
then
 maim -s | xclip -selection clipboard -t image/png -i
else
  mkdir -p ~/Pictures/Screenshots
  maim | tee ~/Pictures/Screenshots/screenshot-$(date +%F_%T).png | xclip -selection clipboard -t image/png
fi

notify-send "Screenshot copied to clipboard" -t 1500
