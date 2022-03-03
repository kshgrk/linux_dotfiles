#!/bin/bash

## Author : Aditya Shakya (adi1090x)
## Mail : adi1090x@gmail.com
## Github : @adi1090x
## Reddit : @adi1090x

# Available Styles
# >> Styles Below Only Works With "rofi-git(AUR)", Current Version: 1.5.4-76-gca067234
# full     full_circle     full_rounded     full_alt
# card     card_circle     column     column_circle
# row     row_alt     row_circle
# single     single_circle     single_full     single_full_circle     single_rounded     single_text

style="power"
rofi_command="rofi -theme ~/.config/rofi_k/power.rasi"
uptime=$(uptime -p)
my_hostname=$(cat /etc/hostname)

# Options
shutdown=""
reboot=""
lock=""
suspend=" "
logout=""

# Variable passed to rofi
options="$shutdown\n$reboot\n$lock\n$suspend\n$logout"

chosen="$(echo -e "$options" | $rofi_command -p " $my_hostname | $uptime" -dmenu -selected-row 2)"
case $chosen in
    $shutdown)
        rm -rfv ~/tmp/* && systemctl poweroff
        ;;
    $reboot)
        rm -rfv ~/tmp/* && systemctl reboot
        ;;
    $lock)
        /home/$USER/.config/bspwm/scripts/i3lock-fancy/i3lock-fancy.sh
        ;;
    $suspend)
        /home/$USER/.config/bspwm/scripts/i3lock-fancy/i3lock-fancy.sh && systemctl suspend
        ;;
    $logout)
        pkill -KILL -u $USER
        ;;
esac
