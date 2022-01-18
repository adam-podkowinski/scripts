#!/bin/sh
xset r rate 199 30
nitrogen --restore &
slstatus &
/usr/lib/polkit-kde-authentication-agent-1 &
dunst &
#/usr/bin/pipewire & /usr/bin/pipewire-pulse & /usr/bin/pipewire-media-session &
setxkbmap pl
xmodmap ~/.config/xmodmap
export QT_QPA_PLATFORMTHEME=gtk2
picom -b
xinput --set-prop 'pointer:COMPANY USB Device' 'libinput Accel Profile Enabled' 0 1
xinput --set-prop 13 'libinput Accel Profile Enabled' 0, 1
exec dwm > /tmp/dwmlog.txt
