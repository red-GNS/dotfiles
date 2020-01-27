#!/bin/sh

# Specifying the icon(s) in the script
# This allows us to change its appearance conditionally

player_status=$(playerctl status 2> /dev/null)
metadata=$(playerctl metadata)

if [[ $metadata == *spotify* ]]; then
    icon=""
    metadata="$(playerctl metadata artist) - $(playerctl metadata title)"

    # Foreground color formatting tags are optional
    if [[ $player_status = "Playing" ]]; then
        echo "%{F#AAFF77}$icon $metadata"       # Green when playing
    elif [[ $player_status = "Paused" ]]; then
        echo "%{F#65737E}$icon $metadata"       # Greyed out info when paused
    else
        echo "%{F#65737E}$icon"                 # Greyed out icon when stopped
    fi
else
    echo ""
fi
