#!/bin/bash
echo "Enter the file path:"
read file
if [ -e "$file" ]; then
    if [ -r "$file" ] && [ -w "$file" ] && [ -x "$file" ]; then
        echo "The file '$file' has read, write, and execute permissions."
    else
        echo "The file '$file' does NOT have all read, write, and execute permissions."
    fi
else
    echo "The file '$file' does not exist."
fi

