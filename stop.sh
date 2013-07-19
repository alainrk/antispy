#!/bin/bash

#zenity --error --width=1500 --timeout=5 --height=800 --title="Wrong day for you" --text="" &
zenity --error --timeout=2 --title="Come on! Not so easy!" --text="<span font-family=\"sans\" font-weight=\"999\" font-size=\"xx-large\">ACCESS DENIED BABY</span>\n<span font-family=\"sans\" font-weight=\"600\" font-size=\"xx-large\">           3, 2, 1...</span>" 
gnome-screensaver-command -l
kill -9 "$1"
exit 0