#!/bin/bash

echo "Please enter the path to the file or directory:"
read file_path


if [ -d "$file_path" ]; then
    echo "$file_path is a directory."
else
    echo "$file_path is not a directory."
fi
