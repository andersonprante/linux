#!/bin/bash
img="/tmp/locker.png"
scrot $img
convert $img -blur 0x5 $img
i3lock -i $img
