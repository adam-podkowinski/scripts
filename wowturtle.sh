#!/bin/sh
cd /home/adam/Games/twmoa_1171
#Clear cache
rm -f /home/adam/Games/twmoa_1171/WDB/*

#Check hash of WoW.exe to see if it has changed
if ! sha256sum --status --check WoW.exe.sha256; then
    echo "WoW.exe has changed, updating WoW.exe.sha256 and WoW_tweaked.exe"
    sha256sum WoW.exe > WoW.exe.sha256
    cp WoW.exe WoW_orig.exe
    ./vanilla-tweaks --no-quickloot -o WoW.exe WoW.exe
fi
