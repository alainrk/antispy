#!/bin/bash

sleep 1

./catchmouse.sh "$$" &
key=`./keyboard "/dev/input/event3"`

if [[ $key -eq 61 ]]; then
	killall catchmouse.sh
	exit 0
else
	./stop.sh "$$"
	exit 0
fi