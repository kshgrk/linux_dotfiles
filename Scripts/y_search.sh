
#!/bin/sh
word=` rofi -theme ~/.config/rofi_k/list_purple.rasi -dmenu -i -p "search youtube" -lines 0`
if [ -z "$word" ];
	then echo "null";
	else eval "firefox https://www.youtube.com/results?search_query=${word// /+}"
fi

