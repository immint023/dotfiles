#!/usr/bin/env bash

SOURCE=$(im-select)

case ${SOURCE} in
'com.apple.keylayout.ABC') LABEL='en' ;;
'com.apple.inputmethod.VietnameseIM.VietnameseTelex') LABEL='vi' ;;
esac

sketchybar --set $NAME label="$LABEL |"
