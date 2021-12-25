xrandr --setprovideroutputsource 1 0 --setprovideroutputsource 2 0
xrandr --addmode DVI-I-1-1 1280x800
xrandr --output DVI-I-1-1 --mode 1280x800 --left-of HDMI-0
x11vnc -repeat -clip 1280x800-1920-280
