#!/bin/bash

#disable history
set +o history

keysFile=""

if [[ ! $keysFile ]]; then
    echo "Please set 'keyFile' to the file location."
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

#decrement userInput by one because for the user, one is the first element not zero.
userInput=$((userInput-1))

totp=${listofkeys[$userInput]}

oathtool -b --totp $totp

#reenable history
set -o history
