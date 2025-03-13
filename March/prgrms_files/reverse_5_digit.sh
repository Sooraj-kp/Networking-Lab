#!/bin/bash
echo "Enter the 5 digit number: "
read number
if [[ $number =~ ^[0-9]{5}$ ]];then
	reverse_number=$(echo $number | rev)
	echo "The reverse of the number is: $reverse_number"
else
	echo "please enter the valid 5-digit number."
fi

