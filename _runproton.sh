#!/bin/sh
Help()
{
   # Display Help
   echo "Run app with proton in a terminal."
   echo
   echo "runproton.sh <version> <prefix> <apppath>"
   echo "example command:"
   echo "runproton.sh GE-Proton7-19 0 myfavoritegame.exe"
   echo
   echo "version        Proton version to use (make sure it exists in ~/.steam/root/compatibilitytools.d/). example: GE-Proton7-19"
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

DXVK_HUD=fps WINEFSYNC=1 STEAM_COMPAT_CLIENT_INSTALL_PATH="$HOME/.steam/steam" STEAM_COMPAT_DATA_PATH=$2 gamemoderun ~/.steam/root/compatibilitytools.d/$1/proton run $3
