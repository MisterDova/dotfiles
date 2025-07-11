# credit goes to: ~/github/dotfiles-latest/sketchybar/felixkratz/plugins/volume.sh
volume_change() {
	case $INFO in
	[6-9][0-9] | 100)
		ICON=""
		;;
	[3-5][0-9])
		ICON=""
		;;
	[1-2][0-9])
		ICON=""
		;;
	[1-9])
		ICON=""
		;;
	0)
		ICON=""
		;;
	*) ICON=$VOLUME_100 ;;
	esac

    sketchybar --set volume_icon icon=$ICON\
		--set $NAME slider.percentage=$INFO

	INITIAL_WIDTH="$(sketchybar --query $NAME | jq -r ".slider.width")"
	if [ "$INITIAL_WIDTH" -eq "0" ]; then
		sketchybar --animate tanh 30 --set $NAME slider.width=$WIDTH
	fi

	sleep 2

	# Check wether the volume was changed another time while sleeping
	FINAL_PERCENTAGE="$(sketchybar --query $NAME | jq -r ".slider.percentage")"
	if [ "$FINAL_PERCENTAGE" -eq "$INFO" ]; then
		sketchybar --animate tanh 30 --set $NAME slider.width=0
	fi
}

mouse_clicked() {
	osascript -e "set volume output volume $PERCENTAGE"
}

case "$SENDER" in
"volume_change")
	volume_change
	;;
"mouse.clicked")
	mouse_clicked
	;;
esac
