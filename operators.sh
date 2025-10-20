#!/bin/bash

# given 2 integers X and Y, find their sum, difference, product and quotient

read X
read Y

sum=$(($X+$Y))
difference=$(($X-$Y))
product=$(($X*$Y))
quotient=$(($X/$Y))

echo -e "$sum\n$difference\n$product\n$quotient"
