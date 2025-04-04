#!/bin/bash

read -p "Enter the file name: " file

if [ ! -f "$file" ]; then
    echo "File not found!"
    exit 1
fi

sed -i 's/\([0-9]\+\)/[\1]/g' "$file"

echo "All numbers in each line have been surrounded with square brackets in $file."
