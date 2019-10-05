#!/bin/bash
player_status=$(playerctl status 2> /dev/null)
artist=$(playerctl metadata artist)
title=$(playerctl metadata title)

if [ "$player_status" = "Playing" ]; then
    if [ -z "$artist" ]; then
        echo "$title"
    else
        echo "$artist - $title"
    fi
elif [ "$player_status" = "Paused" ]; then
    if [ -z "$artist" ]; then
        echo "$title"
    else
        echo "$artist - $title"
    fi
else 
    echo ""
fi