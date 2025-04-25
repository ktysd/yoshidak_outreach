#!/bin/bash

inext="wmv"

for i in ${inext}/*.*; do
    body=`basename $i`
    body=${body%.*}
    com="ffmpeg -y -i $i -vf scale=320:-1 -r 10 -an ${body}.mp4"
    echo $com
    eval $com
done

com="ffmpeg -y -i wmv/media3.wmv -vf scale=320:-1 -r 10 -frames 100 -an media3.mp4"
echo $com
eval $com

com="ffmpeg -y -i wmv/media10.wmv -vf scale=320:-1 -r 10 -frames 300 -an media10.mp4"
echo $com
eval $com

com="ffmpeg -y -i wmv/media16.wmv -vf scale=640:226 -r 10 -frames 200 -an media16.mp4"
echo $com
eval $com

com="ffmpeg -y -i wmv/media15.wmv -vf scale=640:-1 -r 10 -frames 100 -an media15.mp4"
echo $com
eval $com

