#!/bin/bash

location=`xdotool getmouselocation 2>&1 |  sed -rn '${s/x:([0-9]+) y:([0-9]+) .*/\1 \2/p}'`
IFS=' ' read -a array <<< "$location"
oldx="${array[0]}"
oldy="${array[1]}"

while [[ true ]]; do
	location=`xdotool getmouselocation 2>&1 |  sed -rn '${s/x:([0-9]+) y:([0-9]+) .*/\1 \2/p}'`
	IFS=' ' read -a array <<< "$location"
	x="${array[0]}"
	y="${array[1]}"
	if [[ $x -ne $oldx || $y -ne $oldy ]]; then
		./stop.sh
		exit 0
	fi

done

