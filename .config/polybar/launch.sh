#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar
# If all your bars have ipc enabled, you can also use 
# polybar-msg cmd quit

export WIFI_DEVICE=$(nmcli device | awk '$2 == "wifi" {print $1}')

# Launch bar1 and bar2
echo "---" | tee -a /tmp/polybar1.log /tmp/polybar2.log
polybar topbar >>/tmp/polybar1.log 2>&1 & disown

if [[ $(xrandr | grep "HDMI-1 connected 1920x1080") ]]; then
  export MONITOR=HDMI-1
  polybar topbar >>/tmp/polybar1.log 2>&1 & disown
fi

echo "Bars launched..."
