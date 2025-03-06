#!/bin/bash
is_prime() {
    number=$1
    if [ $number -le 1 ]; then
        echo 0
        return
    fi
    for (( i=2; i*i<=$number; i++ ))
    do
        if [ $((number % i)) -eq 0 ]; then
            echo 0
            return
        fi
    done
    echo 1
}

echo "Prime numbers between 50 and 100 are:"


for (( num=50; num<=100; num++ ))
do
    if [ $(is_prime $num) -eq 1 ]; then
        echo -n "$num "
    fi
done

echo


