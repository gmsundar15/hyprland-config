#!/bin/sh
#

### Wallpaper with hyprpaper
hyprpaper &

### Waybar launch script
$HOME/PATH/launch_waybar.sh &

### System tray applets
#nm-applet &
#blueman-applet &

### Notifications with dunst
#if pgrep dunst
#then
#	killall dunst
#fi
#dunst -conf $HOME/.config/dunst/dunstrc &

### Notifications with mako
if pgrep mako
then
	killall mako
fi
mako &

###Automatic screen temperature with gammastep
gammastep-indicator &

###Optimus-manager for nvidia
optimus-manager-qt &

###Activate bluetooth file transfer
/usr/lib/bluetooth/obexd -n &

###Lock screen Timeout with swayidle
swayidle -w timeout 240 '$HOME/PATH/lock_screen_off.sh' before-sleep '$HOME/PATH/lock_screen_off.sh' &

###Clipboard with Cliphist
wl-paste --type text --watch cliphist store &
wl-paste --type image --watch cliphist store &
