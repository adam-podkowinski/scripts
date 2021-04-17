#!/bin/bash
pactl load-module module-null-sink sink_name=Virtual1 > /tmp/sound_to_mic_modules.txt
pactl load-module module-loopback source=alsa_input.usb-ARKMICRO_USB2.0_PC_CAMERA-02.mono-fallback sink=Virtual1 >> /tmp/sound_to_mic_modules.txt
pactl load-module module-loopback source=Virtual1.monitor sink=alsa_output.pci-0000_00_1b.0.analog-stereo >> /tmp/sound_to_mic_modules.txt
