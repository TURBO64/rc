#!/bin/bash
mkdir converted
for i in *.mkv ; do 
    avconv -i "$i" -c:v libx264 -c:a libmp3lame -vf scale=854:480 -qscale 7 -ar 44100 -ab 192k -aspect 16:9 "./converted/$i"
done
