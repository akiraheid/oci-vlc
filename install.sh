#!/bin/bash

# Install vlc container app

set -e

APP=~/.local/share/applications
BIN=~/.local/bin

mkdir -p $APP $BIN

# Install the executable
cp podman/vlc $BIN/

# Install desktop shortcut
cp vlc.desktop $APP/

if [ -z "`which vlc`" ]; then
	echo "Add '~/.local/bin' to your PATH and restart your computer"
fi

echo "Done!"
