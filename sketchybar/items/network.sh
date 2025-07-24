#!/bin/zsh

sketchybar --add item internet right \
           --subscribe internet wifi_change \
           --set internet script="$PLUGIN_DIR/internet.sh" \
                          update_freq=1 \
                          click_script="open x-apple.systempreferences:com.apple.preference.network?Wi-Fi" \
                          padding_left=5 \
                          icon.padding_left=13
                          #background.corner_radius=4  \
                          #background.height=30 \
                          #background.border_width=3 \
                          #background.border_color=0xeeffffff \
                          #background.color=0x99353535 \
                          #icon.padding_left=5 \
                          #label.padding_right=15 \
                          #background.padding_left=5\
