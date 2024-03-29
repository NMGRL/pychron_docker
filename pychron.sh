#!/bin/bash
docker container prune -f

if [ "$(uname)" == "Darwin" ]
then
    echo "using mac os"
    #========================================================================================
    # if using mac os
    #========================================================================================
    xhost +127.0.0.1
    docker login ghcr.io
    docker run --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" --env="DISPLAY=host.docker.internal:0" ghcr.io/nmgrl/pychron:latest
    #========================================================================================
else
    
    echo "using linux"
    # if linux
    #========================================================================================
    xhost +local:root
    docker run --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" --env="DISPLAY" --env="QT_X11_NO_MITSHM=1" ghcr.io/nmgrl/pychron:latest
fi
