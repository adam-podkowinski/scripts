#!/bin/bash
echo $(amixer sget Master | grep off -q && echo MUTED || pactl list sinks | grep -e analog-stereo -e Volume: | cut -d' ' -f6 | cut -d'/' -f1)


