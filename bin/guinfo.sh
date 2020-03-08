#!/bin/bash
if [ $1 = "mouse" ]
then
	location=$( xdotool getmouselocation )
	location=${location%%['screen']*}
	notify-send "Mouse location" "$location" \
		--icon=/home/isamu/Pictures/Icons/cursor.png
	echo $location >> ~/mouse
elif [ $1 = "window" ]
then
	active=$( xdotool getactivewindow )
	window_data=""
	IFS=$'\n'
	for line in $( xdotool getwindowgeometry $active )
	do
		window_data="$window_data\n$line"
	done
	size=$( echo -e $window_data | grep Geometry )
	size=${size##*['Geometry: ']}
	position=$( echo -e $window_data | grep Position )
	position=${position:0:-11}
	position=${position:12:100}
	notify-send "Active window geometry" \
		"Size: $size\nPosition: $position" \
		--icon=gtk-fullscreen
else
	echo No valid argument given
fi
