#!/bin/bash
volume_slider=(
  script="$PLUGIN_DIR/volume.sh"
  updates=on
  label.drawing=off
  icon.drawing=off
  padding_right=-2.5
  slider.highlight_color=0xffffffff
  slider.background.height=5
  slider.background.corner_radius=3
  slider.background.color=0x00ffffff
  slider.knob=""
  slider.knob.drawing=on
)

volume_icon=(
  click_script="$PLUGIN_DIR/volume_click.sh"
  #icon='$'
)

#status_bracket=(
#)

sketchybar --add slider volume right \
  --set volume "${volume_slider[@]}" \
  --subscribe volume volume_change \
  mouse.clicked \
  \
  --add item volume_icon right \
  --set volume_icon "${volume_icon[@]}"

#sketchybar --add bracket status brew github.bell wifi volume_icon \
#  --set status "${status_bracket[@]}"
