#!/bin/bash

sleep 0.5
echo '3'
sleep 0.5
echo '2'
sleep 0.5
echo '1'
sleep 0.5
echo 'GO'
sleep 0.5

cd $HOME/antispy/
./catchmouse.sh "$$" &
key=`./keyboard "/dev/input/event3"`

if [[ $key -eq 41 ]]; then
	killall catchmouse.sh
	exit 0
else
	./stop.sh "$$"
	exit 0
fi