#!/bin/bash



current_date=$(date +%d_%m_%Y)
((lecture_time=60*20))
screen_size=$(xrandr | grep '*' | awk '{print $1}')
lecture_time=10*60
#select current subject


xdg-open https://services.ba-sachsen.de/c/4TI20Allgemein


sleep 15
xdotool mousemove 717 417
for i in 2; do
	xdotool click 1
done

for i in E r i k; do
	xdotool key ${i}
done

xdotool mousemove 792 472
xdotool click 1

sleep 15
xdotool mousemove 215 671
xdotool click 1
xdotool mousemove 347 624
xdotool click 1

exit 1
ffmpeg -s ${screen_size} -framerate 25 -f x11grab -i :0.0 -f pulse -i default -t ${lecture_time} lecture.mp4

sleep 5

wmctrl -c firefox

mv /home/erik/Schreibtisch/lecture.mp4 /home/erik/Schreibtisch/Vorlesungen/lecture_${current_date}.mp4

