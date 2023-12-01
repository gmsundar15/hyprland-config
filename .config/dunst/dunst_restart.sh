#!/bin/sh

killall dunst &
dunst &
sleep 5 && dunstify -u normal "Test" && dunstify -u normal "Test 2" &
dunstify -u critical "Test" && dunstify -u critical "Test 2" && dunstify -u low "Test"
