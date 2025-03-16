#!/bin/bash

# Define arrays for each cargo bay's inventory
forward_bay=()
midship_bay=()
aft_bay=()

forward_bay+=("Space Suits")
forward_bay+=("Oxygen Tanks")
forward_bay+=("Repair Kits")

midship_bay+=("Food Supplies")
midship_bay+=("Water Containers")
midship_bay+=("Medical Equipment")

aft_bay+=("Spare Parts")
aft_bay+=("Fuel Cells")
aft_bay+=("Scientific Instruments")

# Check if an argument is provided
if [ $# -eq 0 ]; then
    echo "Please specify a cargo bay: forward, midship, or aft"
fi
i=0
# Display inventory based on the argument
if [ "$1" = "forward" ]; then
    echo "Forward Bay Inventory:"
    for i in {0..2};do
        echo "${forward_bay[i]}"
    done
elif [ "$1" = "midship" ]; then
    echo "Midship Bay Inventory:"
    for i in {0..2};do
        echo "${midship_bay[i]}"
    done
elif [ "$1" = "aft" ]; then
    echo "Aft Bay Inventory:"
    for i in {0..2};do
        echo "${aft_bay[i]}"
    done
else
    echo "Invalid cargo bay. Choose forward, midship, or aft."
fi

