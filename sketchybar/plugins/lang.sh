#!/bin/zsh

# Get current input source ID
INPUT_SOURCE=$(defaults read com.apple.HIToolbox AppleSelectedInputSources | \
  awk -F'"' '/KeyboardLayout Name|InputSourceKind|Input Mode/ {
    gsub(/[[:punct:]]/, "", $4)
    print $4
  }' | head -n 1)

# Map to icons
case "$INPUT_SOURCE" in
  "comapplekeylayoutUS"|"ABC")
    ICON="🇺🇸"  # English
    ;;
  "comappleinputmethodSCIMITABC"|"ITABC")
    ICON="🇨🇳"  # Pinyin Traditional
    ;;
  "comappleinputmethodJapanese"|"Japanese")
    ICON="🇯🇵"  # Japanese
    ;;
  *)
    ICON="???"    # Fallback icon
    ;;
esac

# Handle click to cycle input sources
if [ "$BUTTON" = "left" ]; then
  osascript -e 'tell application "System Events" to key code 49 using control down'
fi

sketchybar --set $NAME label="$ICON"
