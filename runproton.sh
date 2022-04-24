#!/bin/sh
DXVK_HUD=fps WINEFSYNC=1 STEAM_COMPAT_CLIENT_INSTALL_PATH="$HOME/.steam/steam" STEAM_COMPAT_DATA_PATH=/home/bodzio/.local/share/proton-pfx/$1 gamemoderun ~/.steam/root/compatibilitytools.d/GE-Proton7-14/proton run $2
