#!/bin/bash

PRICE_PER_APPLE=5
MyFirstLetters=ABC
greeting='Hello        world!'

echo "The price of an Apple today is: \$HK $PRICE_PER_APPLE"
echo "The first 10 letters in the alphabet are: ${MyFirstLetters}DEFGHIJ"
echo $greeting
echo "$greeting"

CURRENT_DATE=$(date +"%Y-%m-%d")
echo "Today's date is : $CURRENT_DATE"

FILES_IN_DIR=$(ls)
echo "Files in the current directory:"
echo "$FILES_IN_DIR"

UPTIME=$(uptime -p)
echo "System uptime: $UPTIME"
