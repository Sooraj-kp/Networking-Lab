#!/bin/bash

echo "Enter the file path:"
read file

if [ -e "$file" ]; then
    if [ ! -s "$file" ]; then
        echo "The file '$file' is empty."
    else
        echo "The file '$file' is not empty."
    fi
else
    echo "The file '$file' does not exist."
fi

