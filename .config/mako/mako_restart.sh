#!/bin/sh
#
killall mako;
setsid -f mako &
sleep 5;
dunstify -u normal "Hello";
dunstify -u normal "Hello 2";
dunstify -u critical "Hello 3";
dunstify -u critical "Hello 4";

