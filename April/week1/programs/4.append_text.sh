#!/bin/bash

echo "Enter the text you want to append:"
read input_text
echo "Enter the file name:"
read file_name

if [ ! -f "$file_name" ]; then
    echo "File not found! Creating a new file: $file_name"
    touch "$file_name"
fi


echo "$input_text" >> "$file_name"

echo "The text has been appended to $file_name."

