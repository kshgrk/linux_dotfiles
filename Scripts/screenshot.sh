#!/usr/bin/bash

p="/tmp/$(date +"%d-%m-%y-%M").png"
c=$(echo -en "Selection\nScreen\n" \
  | rofi -dmenu -theme ~/.config/rofi_k/screenshot.rasi -p "")
sleep 0.2
#
case $c in
  # "Window")
    # maim -u -o $p
    # ;;
  "Selection")
    maim -u -o -s $p
    ;;
  "Screen")
    maim -u -o $p
    ;;
  *)
    exit
    ;;
esac

xclip -selection clipboard -target image/png -i $p

notify-send "Screenshot copied to clipboard!"
