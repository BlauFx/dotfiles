#!/bin/sh

file="$HOME"/.osu
fileDev="$HOME"/.local/share/osu-development

drive=/run/media/"$USER"/General/Games

if [ ! -L $file ]
then
	ln -s "$drive"/osu/drive_c/osu/ $file
fi

if [ ! -L $fileDev ]
then
	ln -s "$drive"/osu-development/ $fileDev
fi

changeStorage() {
	localosufolder=$HOME/.local/share/osu
	osulazerGamefiles="$drive"/osulazer
	
	mkdir -p $localosufolder
	echo "FullPath = $osulazerGamefiles " > $localosufolder/storage.ini
}

