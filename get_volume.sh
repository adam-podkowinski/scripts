#!/bin/sh
first=$(pulsemixer --get-v | awk '{print $1}')
pulsemixer --get-m | grep 1 -q && echo MUTED || echo $first% &
