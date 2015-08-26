#!/bin/bash

for i in {1..5}; do
    if [ `arecord -d 1 -c 2 -f S16_LE -r 44100 -t wav -D default --vumeter=mono /dev/null 2>&1 | grep -c 00%` -eq 0 ]; then
        state=0
        break
    fi
    state=1
done

if [ "$state" -eq 0 ]; then
    location=`xdotool getmouselocation 2>/dev/null | cut -d" " -f1-2`
    x=`echo "$location" | cut -d" " -f1 | cut -d":" -f2`
    y=`echo "$location" | cut -d" " -f2 | cut -d":" -f2`
    xdotool mousemove `xdotool getdisplaygeometry`
    xdotool mousemove "$x" "$y"
    # `date` #debugging:-)
fi
