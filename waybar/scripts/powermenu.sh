#!/bin/bash
# ─── POWERMENU via Rofi ───────────────────────────────

chosen=$(printf "󰐥  Shutdown\n󰜉  Reboot\n󰒲  Suspend\n󰍃  Logout\n󰌾  Lock" \
    | rofi -dmenu \
        -p "Power" \
        -theme-str 'window { width: 220px; }' \
        -theme-str 'listview { lines: 5; }')

case "$chosen" in
    *Shutdown)  systemctl poweroff ;;
    *Reboot)    systemctl reboot ;;
    *Suspend)   systemctl suspend ;;
    *Logout)    hyprctl dispatch exit ;;
    *Lock)      hyprlock ;;
esac
