#!/bin/bash

echo "Enter a"
read a
echo "Enter b"
read b
echo "Enter c"
read c
echo "Enter d"
read d


result=$(echo " ($a * 20 - $b * 2 + $c / $d)" | bc)

echo "The result is: $result"

