#!/bin/bash

#select current screen size
screen_size=$(xrandr | grep '*' | awk '{print $1}')

#select current audio output source
audio_source=$(pacmd list-sources | grep output | head -n 1 | awk '{print $2}')

#remove first and last character from audio_output_source string
audio_source=$(echo ${audio_source} | cut -c 2- | rev | cut -c 2- | rev)

#take current date
current_date=$(date +%d.%m.%Y)


ffmpeg -s ${screen_size} -framerate 25 -f x11grab -i :0.0 video.mp4


