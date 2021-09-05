#!/bin/bash
#
#   double borders
#

outer='0x000000'   # outer
inner1='0x627539' # focused
inner2='0x627539'  # normal

trap 'bspc config border_width 0; kill -9 -$$' INT TERM

targets() {
	case $1 in
		focused) bspc query -N -n .local.focused.\!fullscreen;;
		normal)  bspc query -N -n .\!focused.\!fullscreen
	esac #| grep -iv "$v"
}
bspc config border_width 10

draw() { chwb2 -I "$inner" -O "$outer" -i "2" -o "8" $*; }

# initial draw, and then subscribe to events
{ echo; bspc subscribe node_geometry node_focus; } |
	while read -r _; do
		#v=$(echo $(xdo id -N Firefox))
		#v=${v// /\\|}
		[ "$v" ] || v='abcdefg'
		inner=$inner1 draw $(targets focused)
		inner=$inner2 draw $(targets  normal)
	done

