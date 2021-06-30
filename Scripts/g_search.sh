#!/bin/sh
word=` rofi -theme ~/.config/rofi_k/list_purple.rasi -dmenu -i -p "search" -lines 0`
if [ -z "$word" ]; then
	echo "null";

elif [[ $word == *".com"*  ||  $word == *".net"* ]]; then
    eval "firefox $word"

else eval "firefox https://www.google.com/search?q=${word// /+}"

fi
