#!/bin/bash
#
# https://github.com/suchja/x11server/blob/master/docker-entrypoint.sh
#

if [ -z "$VNC_PASSWORD" ]; then
    echo >&2 'No password!!'
    exit 1
fi

if [ -z "$XFB_SCREEN" ]; then
    XFB_SCREEN=1024x768x24
fi

if [ ! -z "$XFB_SCREEN_DPI" ]; then
    DPI_OPTIONS="-dpi $XFB_SCREEN_DPI"
fi

mcookie | sed -e 's/^/add :0 MIT-MAGIC-COOKIE-1 /' | xauth -q
xauth nlist :0 | sed -e 's/^..../ffff/' | xauth -f /Xauthority/xserver.xauth nmerge -

Xvfb :0 -auth ~/.Xauthority $DPI_OPTIONS -screen 0 $XFB_SCREEN >> ~/xvfb.log 2>&1 &
sleep 2

# finally we can run the VNC-Server based on our just started X-Server
x11vnc -forever -passwd $VNC_PASSWORD -display :0

