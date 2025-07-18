#!/bin/bash

# Sway Animation Script
# Provides smooth animations and effects for window management

# Kill any existing animation processes
pkill -f "sway-animation" 2>/dev/null

# Function to animate window focus changes
animate_focus() {
    swaymsg -t subscribe -m '["window"]' | while read -r event; do
        if echo "$event" | grep -q '"change":"focus"'; then
            # Get focused window
            focused_id=$(echo "$event" | jq -r '.container.id')
            
            # Animate focused window to full opacity
            swaymsg "[con_id=$focused_id] opacity 1.0" 2>/dev/null
            
            # Animate other windows to reduced opacity
            sleep 0.1
            swaymsg "[con_id=!$focused_id] opacity 0.9" 2>/dev/null
        fi
    done &
}

# Function to animate new windows
animate_new_windows() {
    swaymsg -t subscribe -m '["window"]' | while read -r event; do
        if echo "$event" | grep -q '"change":"new"'; then
            window_id=$(echo "$event" | jq -r '.container.id')
            
            # Fade in animation
            swaymsg "[con_id=$window_id] opacity 0.3" 2>/dev/null
            sleep 0.05
            swaymsg "[con_id=$window_id] opacity 0.6" 2>/dev/null
            sleep 0.05
            swaymsg "[con_id=$window_id] opacity 0.9" 2>/dev/null
            sleep 0.05
            swaymsg "[con_id=$window_id] opacity 1.0" 2>/dev/null
        fi
    done &
}

# Function to animate workspace changes
animate_workspace() {
    swaymsg -t subscribe -m '["workspace"]' | while read -r event; do
        if echo "$event" | grep -q '"change":"focus"'; then
            # Apply subtle fade effect on workspace change
            sleep 0.1
            swaymsg "[workspace=__focused__] opacity 0.9" 2>/dev/null
            sleep 0.1
            swaymsg "[workspace=__focused__] opacity 1.0" 2>/dev/null
        fi
    done &
}

# Check if required commands are available
if ! command -v jq &> /dev/null; then
    echo "Warning: jq is not installed. Install it for better animation support."
    exit 1
fi

# Start animation functions
animate_focus
animate_new_windows
animate_workspace

# Keep the script running
wait
