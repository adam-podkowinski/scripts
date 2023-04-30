#!/bin/sh
xset r rate 170 36
nitrogen --restore &
slstatus &
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
dunst &
pulseaudio --start
# /usr/bin/pipewire & /usr/bin/pipewire-pulse & /usr/bin/wireplumber &
setxkbmap pl
setxkbmap -option caps:swapescape
xmodmap ~/.config/xmodmap
picom -b
xinput --set-prop 'pointer:COMPANY USB Device' 'libinput Accel Profile Enabled' 0 1
xinput --set-prop 13 'libinput Accel Profile Enabled' 0, 1
exec dwm > /tmp/dwmlog.txt
