#!/bin/bash

# hope and pray the input is a pdf filepath
pdf=$1

convert $pdf -append image-version.png
tesseract image-version.png text-version -psm 11

# Replace two consecutive line breaks with a space
sed -i.bak -n -e 'H;${x;s/\n/ /g;p;}' text-version.txt

# Make it more musical...if you can
VOICE="Alex"
isItOrganTime=$(say -v ? | grep "Pipe Organ" | wc -l)
if (($isItOrganTime > 0)); then
  VOICE="Pipe Organ"
fi

say -v "$VOICE" -o audio-version.aiff < text-version.txt
rm image-version.png
rm text-version.txt
