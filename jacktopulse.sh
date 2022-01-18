#!/bin/sh
pactl load-module module-jack-sink && pacmd set-default-sink jack_out
