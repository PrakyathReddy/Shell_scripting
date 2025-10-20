#!/bin/bash

# read 2 integers and determine the relation between those 2

read X
read Y

if [ $X -gt $Y ]; then
    echo "X is greater than Y"
elif [ $X -eq $Y ]; then
    echo "X is equal to Y"
else 
    echo "X is less than Y"
fi
