#!/bin/bash

#disable history
set +o history

keysFile="$HOME/.config/totp/keys.txt"

if [ ! -f $keysFile ]; then
    echo "File not found!"
    echo "File: $keysFile does not exist!"
    exit
fi

echo "Reading file: $keysFile"

num=1
listofkeys=()

while IFS="|" read key name
do
    echo $num: $name
    num=$((num+1))

    listofkeys+=($key)
done < $keysFile

read -p "Which one?: " userInput
numLength=$(($num-1));

if [[ ! $userInput =~ ^[0-9]*$ ]] || [ "$userInput" -gt "$numLength" ]; then
    echo -e "\nPlease enter a number between 1-$numLength."
    exit
fi

#decrement userInput by one because for the user, one is the first element not zero.
userInput=$((userInput-1))

totp=${listofkeys[$userInput]}

code=$(oathtool -b --totp $totp)
echo $code

if [ $XDG_SESSION_TYPE = "wayland" ]; then
    wl-copy $code
else
    echo "Not running on a wayland compositor. Clipboard has not been set."
    #eventually add x11
fi

#reenable history
set -o history
