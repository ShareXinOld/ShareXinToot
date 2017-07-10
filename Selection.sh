#!/bin/sh

# pictures directory
XDG_PICTURES_DIR="${XDG_PICTURES_DIR:-$HOME/Pictures}"

# pause screen
gnome-screenshot -f /tmp/sharexin_img.png
feh /tmp/sharexin_img.png -F &

# take a screenshot using gnome-screen while pausing the screen
gnome-screenshot -a -f /tmp/sharexin_img.png
killall feh

# launches python script
python3 ~/ShareXinToot/Picture.py

# date and time for naming
date=$(date +%Y-%m-%d)
time=$(date +%T)

# copies to permanent location
mkdir $XDG_PICTURES_DIR/ShareXinToot
mkdir $XDG_PICTURES_DIR/ShareXinToot/Clip
cp /tmp/sharexin_img.png $XDG_PICTURES_DIR/ShareXin/Clip/twitter_clip-$date-$time.png
