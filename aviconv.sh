#!/bin/bash
mkdir conv
for i in *.avi ; do 
    avconv -i "$i" -c:v libxvid -c:a libmp3lame -qscale 11 -ar 44100 -ab 128k -aspect 16:9 ./conv/"$(basename "$i")"
done
