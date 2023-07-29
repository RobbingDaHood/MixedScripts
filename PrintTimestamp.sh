#!/bin/sh
# Copy the old clipboard content to var
OLDSELECT=$(xsel --clipboard --output)
# Then use clipboard to store timestamp
CURRENTDATE=$(date +"%Y-%m-%d")
# Print timestamp
echo -n $CURRENTDATE | xsel --clipboard --input
sleep 0.3
# Only works outside of terminals
# Unselect the hotkey you use to trigger this script, so change accordingly
xdotool keyup ctrl+shift+alt+v key Control_L+v
# Reset old clipboard content
sleep 0.3s
echo -n $OLDSELECT | xsel  --clipboard --input
