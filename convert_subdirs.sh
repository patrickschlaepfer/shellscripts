#!/bin/bash

find . -depth -name *.avi | while read file ; do

    directory=$(dirname "$file")
    oldfilename=$(basename "$file")
    newfilename=$(basename "${file%.[Aa][Vv][Ii]}")

    ffmpeg -i "$directory/$oldfilename" -y -acodec libfaac -b:a 128k -vcodec mpeg4 -b:v 1200k -flags +aic +mv4 "$directory/$newfilename.mp4" </dev/null
    rm "$directory/$oldfilename"
done
