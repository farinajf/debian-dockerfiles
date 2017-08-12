#!/bin/bash

export DISPLAY=xserver:0

xauth merge /Xauthority/xserver.xauth
chmod 644 /Xauthority/xserver.xauth

exec "$@"

