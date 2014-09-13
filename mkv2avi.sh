#!/bin/bash

for i in *.mkv ; do 
    avconv -i "$i" -c:v libxvid -c:a libmp3lame -vf scale=854:480 -qscale 11 -ar 44100 -ab 96k -aspect 16:9 $(basename "$i").avi
done
