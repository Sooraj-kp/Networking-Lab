#!/bin/bash
echo "Enter the starting line number:"
read start_line
echo "Enter the ending line number:"
read end_line
echo "Enter the file name:"
read file_name

if [ ! -f "$file_name" ]; then
    echo "File not found!"
    exit 1
fi

sed -n "${start_line},${end_line}p" "$file_name"

