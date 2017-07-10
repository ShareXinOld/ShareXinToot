#!/bin/sh

# sets pictures directory
XDG_PICTURES_DIR="${XDG_PICTURES_DIR:-$HOME/Pictures}"

# take a screenshot using gnome-screenshot
gnome-screenshot -f /tmp/sharexin_img.png

python3 ~/ShareXinToot/Picture.py

# date and time for naming
date=$(date +%Y-%m-%d)
time=$(date +%T)

# copies tmo file to permanent location
mkdir $XDG_PICTURES_DIR/ShareXinToot
mkdir $XDG_PICTURES_DIR/ShareXinToot/Full
cp /tmp/sharexin_img.png $XDG_PICTURES_DIR/ShareXinToot/Full/twitter-$date-$time.png
