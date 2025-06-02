#!/bin/bash
sketchybar --add item status right \
           --set status update_freq=5 \
                        script="$PLUGIN_DIR/usage.sh" \
                        icon.padding_right=7 \
                        drawing=off\
                        #icon.padding_left=5 \
                        #padding_left=2.5 \
                        #padding_right=2.5 \
                        #label.padding_right=10 \
                        #click_script='' \

#sketchybar --add bracket status cpu ram \
#           --set status background.color=0x99353535 \
#                                background.corner_radius=4  \
#                                background.height=30 \
#                                background.border_width=3 \
#                                background.border_color=0xeeffffff \
#                                corner_radius=10 \
