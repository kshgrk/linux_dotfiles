#!/bin/sh
    find ~/.config/ -type f | rofi -theme ~/.config/rofi_k/list_purple.rasi -dmenu -i -p "list" -lines 14 -columns 1 | xargs -r alacritty -e nvim
