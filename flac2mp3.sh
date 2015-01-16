#!/bin/bash

for a in *.flac

do
OUTF=`echo "$a" | sed s/\.flac$/.mp3/g`

ARTIST=`metaflac "$a" --show-tag=ARTIST | sed s/.*=//g`
TITLE=`metaflac "$a" --show-tag=TITLE | sed s/.*=//g`
ALBUM=`metaflac "$a" --show-tag=ALBUM | sed s/.*=//g`
GENRE=`metaflac "$a" --show-tag=GENRE | sed s/.*=//g`
TRACKNUMBER=`metaflac "$a" --show-tag=TRACKNUMBER | sed s/.*=//g`
DATE=`metaflac "$a" --show-tag=DATE | sed s/.*=//g`

flac -c -d "$a" | lame --noreplaygain -V0 \
         --add-id3v2 --pad-id3v2 --ignore-tag-errors --tt "$TITLE" --tn "${TRACKNUMBER:-0}" --ta "$ARTIST" --tl "$ALBUM" --ty "$DATE" --tg "${GENRE:-12}" \
         - "$OUTF"

if [ "$1" ] && [ "$1" = "-d" ] && [ $? -eq 0 ]
then
        rm "$a"
fi

done
