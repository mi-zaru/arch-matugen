#!/bin/bash

WALL_DIR="$HOME/Pictures/Wallpapers"

# Generate list with icons for Rofi
SELECTED=$(
    find "$WALL_DIR" -type f | while read -r img; do
        [[ "$img" =~ \.(jpg|jpeg|png|webp|JPG|PNG)$ ]] || continue
        REL_PATH="${img#$WALL_DIR/}"
        printf "%s\0icon\x1f%s\n" "$REL_PATH" "$img"
    done | rofi \
        -dmenu \
        -i \
        -show-icons \
        -theme ~/.config/rofi/wallpaper.rasi \
        -p ""
)

if [ -n "$SELECTED" ]; then
    FULL_PATH="$WALL_DIR/$SELECTED"
    walset-backend "$FULL_PATH"   # <-- Matugen + color change here
fi
