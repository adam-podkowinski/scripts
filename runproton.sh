#!/bin/sh

export WINE_LARGE_ADDRESS_AWARE=1; export WINEDLLOVERRIDES="mshtml=d;";

Help()
{
   # Display Help
   echo "Run app with proton in a terminal."
   echo
   echo "runproton.sh <path_to_proton> <prefix> <apppath>"
   echo "example command:"
   echo "runproton.sh ~/.config/heroic/tools/proton/Proton-GE-Proton7-24/proton 0 myfavoritegame.exe"
   echo
   echo "path_to_proton Path to proton executable to use"
   echo "prefix         Proton prefix to use (will be created in ~/.local/share/proton-pfx/). example: 0"
   echo "apppath        Path to the app to run."
   echo "-h             Print this Help."
   echo
}

while getopts ":h" option; do
   case $option in
      h) # display Help
         Help
         exit;;
   esac
done

if [ -z "$3" ]; then
    echo -e "Please call 'runproton.sh <arguments>' to run this command or 'runproton.sh -h' to get help!"
    exit 1
fi
WINEFSYNC=1 WINE_FULLSCREEN_FSR_STRENGTH=4 WINE_FULLSCREEN_FSR=1 WINEDLLOVERRIDES=vulkan-1=n,b DXVK_HUD=fps STEAM_COMPAT_CLIENT_INSTALL_PATH="$HOME/.steam/steam" STEAM_COMPAT_DATA_PATH=$HOME/.local/share/proton-pfx/$2 gamemoderun $1 run $3
