#!/bin/bash

sleep 2
echo "3,2,1 -> GO"
cd $HOME/antispy/
./catchmouse.sh "$$" &
key=`./keyboard "/dev/input/event3"`

if [[ $key -eq 61 ]]; then
	killall catchmouse.sh
	exit 0
else
	./stop.sh "$$"
	exit 0
fi