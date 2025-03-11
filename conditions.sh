#!/bin/bash

if [ $# -eq 0 ]; then
    echo "No arguments provided"
elif [ $# -eq 1 ]; then
    echo "One argument provided: $1"
elif [ $# -eq 2 ]; then 
    echo "Two arguments provided: $1 and $2"
else
    echo "Script name: $0"
    echo "First argument: $1"
    echo "Second argument: $2"
    echo "Third argument: $3"
fi
