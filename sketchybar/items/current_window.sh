#!/bin/zsh
sketchybar --add item front_app center \
           --subscribe front_app front_app_switched \
           --set front_app icon.drawing=on script="$PLUGIN_DIR/front_app.sh" \
                           click_script="open -a 'Mission Control'" \
                           label.padding_left=5\
                          # background.padding_left=5 \
                          # background.corner_radius=4  \
                          # background.height=30 \
                          # background.border_width=3 \
                          # background.border_color=0xeeffffff \
                          # background.color=0x99353535 \
                          # icon.padding_left=15 \
                          # label.padding_right=15 \
