#!/bin/bash

for path in $(find -name "*.txt"); do
    if [[ "$path" = *.txt ]]; then
        lines=$(wc -l < "${path:2}")
        echo "lines = $lines"
    else 
        echo "...."
    fi
done

echo "git log --oneline | wc -l = $(git log --oneline | wc -l)"