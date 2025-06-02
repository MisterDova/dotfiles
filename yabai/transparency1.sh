#!/bin/bash

BSP_OPACITY=1.0#0.93    # Transparency when in bsp mode
STACK_OPACITY=1.0 #0.0000001  # Transparency when in stack mode
NORMAL_OPACITY=1.0 #0.93
FULL_OPACITY=1.0

LAYOUT=$(yabai -m query --spaces --space | jq -r '.type')

if [ "$LAYOUT" == "bsp" ]; then
    yabai -m config window_opacity on
    yabai -m config active_window_opacity $NORMAL_OPACITY
    yabai -m config normal_window_opacity $BSP_OPACITY
elif [ "$LAYOUT" == "stack" ]; then
    yabai -m config window_opacity on
    yabai -m config active_window_opacity $FULL_OPACITY
    yabai -m config normal_window_opacity $STACK_OPACITY
    #yabai -m rule --add app="^Ghostty$" opacity=0.93
fi

