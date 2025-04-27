#!/bin/sh
while true; do
  while [ "$(playerctl status)" = "Playing" ]; do
    echo "Inhibiting sleep"
    systemd-inhibit \
      --who="playerctl inhibit" \
      --what="sleep" \
      --why="Media playing" \
      sleep 5
  done
  sleep 5
done
