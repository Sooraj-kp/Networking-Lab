#!/bin/bash

a=0
b=1

echo "Fibonacci series up to 10 terms:"
sum=0
for i in {1..10}
do
  echo -n "$a "
  sum=$((sum + a))
  next=$((a + b))
  a=$b
  b=$next
done

echo
echo "The sum of the Fibonacci series terms up to 10 is: $sum"
