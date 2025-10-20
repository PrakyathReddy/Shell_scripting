#!/bin/bash

# compare strings

read A

if [ $A == "N" ] || [ $A == "n" ]; then
    echo "NO"
elif [ $A == "Y" ] || [ $A == "y" ]; then
    echo "YES"
fi

