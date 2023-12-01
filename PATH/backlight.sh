!/usr/bin/env bash

iDIR="$HOME/.config/mako/icons"

# Get brightness
get_backlight() {
	LIGHT=$(printf "%.0f\n" $(brightnessctl g))
	echo "${LIGHT}"
}

# Get icons
get_icon() {
	current="$(get_backlight)"
	if [[ ("$current" -ge "0") && ("$current" -le "7111") ]]; then
		icon="$iDIR/brightness-0.png"
	elif [[ ("$current" -ge "7111") && ("$current" -le "14222") ]]; then
		icon="$iDIR/brightness-50.png"
	elif [[ ("$current" -ge "14222") && ("$current" -le "21333") ]]; then
		icon="$iDIR/brightness-100.png"
	fi
}

# Notify
notify_user() {
	notify-send -h string:x-canonical-private-synchronous:sys-notify -u low -i "$icon" "Brightness : $(get_backlight)"
}

# Increase brightness
inc_backlight() {
	brightnessctl s +5% && get_icon && notify_user
}

# Decrease brightness
dec_backlight() {
	brightnessctl s 5%- && get_icon && notify_user
}

# Execute accordingly
if [[ "$1" == "--get" ]]; then
	get_backlight
elif [[ "$1" == "--inc" ]]; then
	inc_backlight
elif [[ "$1" == "--dec" ]]; then
	dec_backlight
else
	get_backlight
fi
