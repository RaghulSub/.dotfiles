#!/bin/sh

# Config
LOW_THRESHOLD=20   # when to consider battery low (percent)
RECOVERY_THRESHOLD=25  # when to consider battery recovered
CHECK_INTERVAL_LOW=240  # seconds between checks when low
CHECK_INTERVAL_OK=120   # seconds between checks when ok

# Find first battery device reported by upower
device=$(upower -e 2>/dev/null | grep -i 'BAT' | head -n 1)
[ -n "$device" ] || device=$(upower -e 2>/dev/null | grep -i 'battery' | head -n 1)

if [ -z "$device" ]; then
    echo "No battery device found by upower." >&2
    exit 1
fi

low_notified=0

while true; do
    # Extract percentage as integer (strip % and take first matching line)
    battery=$(upower -i "$device" 2>/dev/null | awk -F: '/percentage/ {gsub(/%/,"",$2); print $2; exit}')
    # Trim whitespace
    battery=$(printf '%s' "$battery" | tr -d '[:space:]')

    if [ -z "$battery" ] || [ "${battery//[0-9]/}" != "" ]; then
        # invalid or missing number
        echo "Failed to read battery percentage from $device: '$battery'" >&2
        sleep "$CHECK_INTERVAL_OK"
        continue
    fi

    if [ "$battery" -le "$LOW_THRESHOLD" ]; then
        if [ "$low_notified" -eq 0 ]; then
            hyprctl notify 0 5000 0 "Low battery: ${battery}%"
            low_notified=1
        fi
        sleep "$CHECK_INTERVAL_LOW"
    else
        # recovered
        if [ "$low_notified" -eq 1 ] && [ "$battery" -ge "$RECOVERY_THRESHOLD" ]; then
            hyprctl notify 0 3000 0 "Battery recovered: ${battery}%"
            low_notified=0
        fi
        sleep "$CHECK_INTERVAL_OK"
    fi
done
