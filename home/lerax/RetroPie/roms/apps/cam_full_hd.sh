#!/bin/bash
base_path=/home/lerax/RetroPie/roms/apps
source $base_path/exit_joystick.sh.lib
cam_url="$(cat $base_path/cam_url.txt)"
exit_joystick&
mpv --no-cache --profile=low-latency --rtsp-transport=udp "${cam_url}/cam/realmonitor?channel=1&subtype=0"  > /dev/null
