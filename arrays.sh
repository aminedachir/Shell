#!/bin/bash

NUMBERS=()
STRINGS=()
NAMES=()

NUMBERS+=(1)
NUMBERS+=(2)
NUMBERS+=(3)

STRINGS+=("hello")
STRINGS+=("world")

NAMES+=("John")
NAMES+=("Eric")
NAMES+=("Jessica")
NumberOfNames=${#NAMES[@]}
echo "${NumberOfNames}"
second_name=${NAMES[0]}
echo "${second_name}"

# Print the arrays and variables
echo "NUMBERS array: ${NUMBERS[@]}"
echo "STRINGS array: ${STRINGS[@]}"
echo "The number of names listed in the NAMES array: $NumberOfNames"
echo "The second name on the NAMES list is: $second_name"
