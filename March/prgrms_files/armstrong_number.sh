#!/bin/bash

is_armstrong() {
    number=$1
    sum=0
    temp=$number

    while [ $temp -gt 0 ]; do
        digit=$((temp % 10))
        sum=$((sum + digit * digit * digit))
        temp=$((temp / 10))
    done

    if [ $sum -eq $number ]; then
        echo "$number is an Armstrong number."
    else
        echo "$number is not an Armstrong number."
    fi
}

read -p "Enter a number: " num

is_armstrong $num
