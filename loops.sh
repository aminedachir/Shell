#!/bin/bash

echo "Total arg: $#"
echo "all arg:"

count=1
for arg in "$@";do
    echo "arg $count:$arg"
    count=$((count+1))
done
