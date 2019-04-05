#!/bin/bash

DIR="`dirname \"$0\"`" 
DIR="`( cd \"$DIR\" && readlink -f $(pwd) )`"
echo "DIR: $DIR"
export APPDIR=$DIR

mkdir -p "$HOME/.config/GIMP-AppImage/2.10/plug-ins" || exit 1
rm -rf "$HOME/.config/GIMP-AppImage/2.10/plug-ins/LiquidRescale"
cp -a "$APPDIR/LiquidRescale" "$HOME/.config/GIMP-AppImage/2.10/plug-ins" || exit 1