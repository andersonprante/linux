#!/bin/bash

filetext=$1

fullfile=$2

filename=$(basename "$fullfile")
pathfile=$(dirname "$fullfile")

outfile=${pathfile}/_${filename}

convert $fullfile -fill white -pointsize 15 -annotate +10+55 "$(cat $filetext)" "$outfile"

xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitor0/workspace0/last-image -s "$outfile"
