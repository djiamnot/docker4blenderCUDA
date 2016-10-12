#!/bin/bash

docker run -ti --rm --device /dev/nvidia0:/dev/nvidia0 --device \
     /dev/nvidiactl:/dev/nvidiactl --device /dev/nvidia-uvm:/dev/nvidia-uvm \
     -e DISPLAY=$DISPLAY \
     -v /tmp/.X11-unix:/tmp/.X11-unix \
     -v /var/tmp/blender:/mount/blender djiamnot/blender \
     "$@"

