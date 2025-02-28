#!/bin/bash
a=10
b=20
if [[ $a -eq $b ]]
then
	echo "a is Equal to b"
elif [[ $a -gt $b ]]
then
	echo "a is greater than b"
elif [[ $a -lt $b ]]
then
	echo "a is less than b"
fi
