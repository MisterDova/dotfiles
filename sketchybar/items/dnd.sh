#!/bin/zsh
sketchybar --add item dnd right \
           --set dnd script="$PLUGIN_DIR/dnd.sh" \
                     click_script='shortcuts run "Do Not Disturb" -i on' \
                     update_freq=1 \
           #--subscribe dnd mouse.clicked 
           #require to set a shortcut named "Do Not Disturb" for toggle focus 

