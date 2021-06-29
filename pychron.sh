#!/bin/bash
docker container prune -f

# if using mac os
#========================================================================================
xhost +127.0.0.1
docker run --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" --env="DISPLAY=host.docker.internal:0" pychron3
#========================================================================================

# if using linux comment out the above 2 lines
# and uncomment the the following 2 lines starting at xhost...
#========================================================================================
#xhost +local:root
#docker run -volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" --env="DISPLAY" --env="QT_X11_NO_MITSHM=1"  pychron3
#========================================================================================
