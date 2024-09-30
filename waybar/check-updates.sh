#!/bin/sh
updates=$((checkupdates ; paru -Qmu) | wc -l)

if [ $updates -gt 0 ]; then
    echo -en $" $updates\n$updates updates available\npending"
else
    echo -en $"\nUp to date\nok"
fi