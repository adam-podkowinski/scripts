#!/bin/sh
killall screenkey
screenkey -p fixed -g 50%x7%+25%-5% -t 1.4 & disown
