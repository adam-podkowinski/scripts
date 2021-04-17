#!/bin/sh

f=/tmp/sound_to_mic_modules.txt

while read line; do
  pactl unload-module $line
done < $f

