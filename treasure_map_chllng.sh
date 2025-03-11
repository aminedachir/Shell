#!/bin/bash

# Assign the correct values to these variables
LATITUDE=15
LONGITUDE=25

# Calculate the paces using arithmetic operations
PACES_NORTH=$((LATITUDE*2))
PACES_EAST=$((LONGITUDE/5))

# Don't modify the line below
echo "The treasure is buried ${PACES_NORTH} paces north and ${PACES_EAST} paces east from the old oak tree."
