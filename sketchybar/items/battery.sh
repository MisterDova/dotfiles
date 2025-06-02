#!/bin/zsh
sketchybar --add item battery right \
           --set battery update_freq=120 script="$PLUGIN_DIR/battery.sh" \
           --subscribe battery system_woke power_source_change \
                 #padding_left=2.5 \
                 #padding_right=2.5 \
                 #icon.padding_left=10 \
                 #label.padding_right=10 \
                 #background.color=0x99353535 \
                 #background.corner_radius=4  \
                 #background.height=30 \
                 #background.border_width=3 \
                 #background.border_color=0xeeffffff \
                 #corner_radius=10 \

