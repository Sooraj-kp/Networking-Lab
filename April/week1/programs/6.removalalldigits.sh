#!/bin/bash

read -p "Enter the file name: " file

if [ ! -f "$file" ]; then
    echo "File not found!"
    exit 1
fi


cp "$file" "${file}.bak"

sed -i 's/[0-9]//g' "$file"

echo "All digits have been removed from $file. A backup is saved as ${file}.bak."
