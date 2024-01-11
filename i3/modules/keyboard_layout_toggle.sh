#!/bin/bash

# Define your layouts
LAYOUT1="us"
LAYOUT2="dk"

# Get the current layout
CURRENT_LAYOUT=$(setxkbmap -query | grep layout | awk '{print $2}')

# Toggle between the layouts
if [ "$CURRENT_LAYOUT" = "$LAYOUT1" ]; then
  setxkbmap $LAYOUT2
else
  setxkbmap $LAYOUT1
fi
