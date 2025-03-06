
#!/bin/bash
reverse_number() {
    num=$1
    reversed=0

    while [ $num -gt 0 ]
    do
        remainder=$(( num % 10 ))
        reversed=$(( reversed * 10 + remainder ))
        num=$(( num / 10 ))
    done

    echo "Reversed number: $reversed"
}
read -p "Enter a number: " number
reverse_number $number
