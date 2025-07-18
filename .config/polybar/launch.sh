#!/bin/bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Load pywal colors into Xresources
xrdb merge ~/.cache/wal/colors.Xresources

# Launch polybar
polybar main &

echo "Polybar launched..."
