#!/bin/bash

echo "Enter the word to search for:"
read word
echo "Enter the file name:"
read file_name


if [ ! -f "$file_name" ]; then
    echo "File not found!"
    exit 1
fi

sed -i "/$word/d" "$file_name"

echo "Lines containing '$word' have been deleted from $file_name."

