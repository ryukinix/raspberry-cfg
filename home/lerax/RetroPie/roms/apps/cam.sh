#!/bin/bash
base_path=/home/lerax/RetroPie/roms/apps
source $base_path/exit_joystick.sh.lib
# my password in the cam_url.txt file
cam_url="$(cat $base_path/cam_url.txt)"
exit_joystick&
mpv "${cam_url}/cam/realmonitor?channel=1&subtype=1" > /dev/null
