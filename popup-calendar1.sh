#!/bin/sh
DATE="$(date +"  %a, %d %b  %H:%M ")"

case "$1" in
    --popup)
        urxvt -hold -e cal && i3-msg "[id=$(xdotool getactivewindow)] floating enable"

esac
