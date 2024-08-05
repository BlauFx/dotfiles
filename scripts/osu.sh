#!/bin/sh

file="$HOME"/.osu
fileDev="$HOME"/.local/share/osu-development

drive=/run/media/"$USER"/General/Games

# Link osu-stable to home folder so lazer can access stable files
if [ ! -L $file ]
then
	ln -s "$drive"/osu/drive_c/osu/ $file
fi

# Store osu-lazer development files in $drive/osu-development not in home folder
if [ ! -L $fileDev ]
then
	ln -s "$drive"/osu-development/ $fileDev
fi

# Change lazer folder location
localosufolder=$HOME/.local/share/osu
osulazerGamefiles="$drive"/osulazer
	
mkdir -p $localosufolder
echo "FullPath = $osulazerGamefiles " > $localosufolder/storage.ini
