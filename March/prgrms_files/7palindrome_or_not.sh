#!/bin/bash

is_palindrome() {
    str=$1
    reversed_str=$(echo $str | rev)
    
    if [ "$str" == "$reversed_str" ]; then
        echo "The string '$str' IS a palindrome."
    else
        echo "The string '$str' is NOT a palindrome."
    fi
}

read -p "Enter a string: " input_str

is_palindrome $input_str
