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

oathtool -b --totp $totp

#reenable history
set -o history
