#!/bin/sh

case "$1" in
dark)
  hyprctl hyprpaper wallpaper ",$HOME/.config/hypr/wallpaper/mononoke-dark.png"
  ;;
light)
  hyprctl hyprpaper wallpaper ",$HOME/.config/hypr/wallpaper/mononoke.png"
  ;;
esac
