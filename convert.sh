!/bin/bash

for file in *.wmv
do
	# mplayer -vo jpeg -frames 1 -ss 30 $file  -o ${file%.*}.jpg
	# ffmpeg -i $file -vcodec png -vframes 1 -ss 30 -an -f rawvideo -s 106x106 ${file%.*}.png 
	avconv -i "$file" -strict -2 -tune film "${file%.*}".mp4
done

