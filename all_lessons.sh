#!/bin/bash

i=0
table=()

for i in {1..10}; do
    table+=("$i")
    c=$((i % 2))
    if [ "$c" -eq 0 ]; then
        echo "The number $i is even"
    else
        echo "The number $i is odd"
    fi
done

