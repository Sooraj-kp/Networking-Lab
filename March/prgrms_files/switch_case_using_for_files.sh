#!/bin/bash

# Function to display the menu
menu() {
    echo "Choose an option:"
    echo "1. Delete a particular line"
    echo "2. Delete the last line"
    echo "3. Delete lines from range X to Y"
    echo "4. Delete all blank lines"
    echo "5. Exit"
}

while true; do
    menu
    read -p "Enter your choice: " choice
    case $choice in
        1)
            read -p "Enter the file name: " filename
            read -p "Enter the line number to delete: " line
            sed -i "${line}d" "$filename"
            echo "Line $line deleted from $filename."
            ;;
        2)
            read -p "Enter the file name: " filename
            sed -i '$d' "$filename"
            echo "Last line deleted from $filename."
            ;;
        3)
            read -p "Enter the file name: " filename
            read -p "Enter the starting line (X): " start
            read -p "Enter the ending line (Y): " end
            sed -i "${start},${end}d" "$filename"
            echo "Lines from $start to $end deleted from $filename."
            ;;
        4)
            read -p "Enter the file name: " filename
            sed -i '/^$/d' "$filename"
            echo "All blank lines deleted from $filename."
            ;;
        5)
            echo "Exiting program."
            exit 0
            ;;
        *)
            echo "Invalid choice, please try again."
            ;;
    esac
done

