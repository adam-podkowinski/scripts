export _JAVA_AWT_WM_NONREPARENTING=1 LIBVA_DRIVER_NAME=nvidia XDG_SESSION_TYPE=wayland __GLX_VENDOR_LIBRARY_NAME=nvidia WLR_NO_HARDWARE_CURSORS=1 __GL_GSYNC_ALLOWED=0 __GL_SYNC_TO_VBLANK=0 __GL_VRR_ALLOWED=0 XWAYLAND_NO_GLAMOR=1
dwl & 2>&1 | tee /home/adam/lol.txt
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 & rog-control-center & /home/adam/.config/hypr/xwayland-fix.sh & dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP &
