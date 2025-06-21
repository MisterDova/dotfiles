#!/bin/zsh
SPACE_ICONS=("" "󰊯" "󱋊" "" "" "" "" "" "" "")
for i in "${!SPACE_ICONS[@]}"
do
  sid="$(($i+1))"
  space=(
    space="$sid"
    icon="${SPACE_ICONS[i]}"
    # padding_left=5 
    # padding_right=5
    icon.padding_left=5
    icon.padding_right=5
    icon.font="Hack Nerd Font:Bold:16.0"
    background.color=0xff808591
    background.width=10
    background.corner_radius=4
    background.border_width=0
    background.height=23
    label.drawing=off
    script="$PLUGIN_DIR/space.sh"
    click_script="yabai -m space --focus $sid"
  )
  sketchybar --add space space."$sid" left \
             --set space."$sid" "${space[@]}" \
                         paddiing_left=5 
done

sketchybar --add bracket spaces '/space\..*/' \
           --set         spaces background.color=0xdd353535 \
                                background.corner_radius=4  \
                                background.height=28 \
                                background.border_width=2.5 \
                                background.border_color=0xffd6b4fc \
                                corner_radius=10 \
