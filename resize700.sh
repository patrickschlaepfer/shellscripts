#!/bin/bash
mkdir pics700
for file in $( find . -type f -name "*.JPG" )
do
	convert -define jpeg:size=700x700 $file -thumbnail '600x600>' -background "#777777" -gravity center -extent 700x700  pics700/$file
done
