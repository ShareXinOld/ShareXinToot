#!/bin/sh

# pictures directory
XDG_PICTURES_DIR="${XDG_PICTURES_DIR:-$HOME/Pictures}"

# take a screenshot using gnome-screenshot
gnome-screenshot -w -f /tmp/sharexin_img.png

# launches python script
python3 ~/ShareXinToot/Picture.py

# date and time for naming
date=$(date +%Y-%m-%d)
time=$(date +%T)

# copies to permanent location
mkdir $XDG_PICTURES_DIR/ShareXinToot/
mkdir $XDG_PICTURES_DIR/ShareXinToot/Window
cp /tmp/sharexin_img.png $XDG_PICTURES_DIR/ShareXin/Window/twitter_window-$date-$time.png
