#!/bin/bash


read -p "enter User : " $user

mkdir /home/${user}/Audio &> /dev/null

cd /home/${user}/Audio

rm -rf output.mp4

ffmpeg -video_size 1920x1080 -framerate 25 -f x11grab -i :0.0 output.mp4

