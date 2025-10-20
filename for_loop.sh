#!/bin/bash

# use for loop to display only odd natural numbers from 1 to 99

for i in {1..99}; do
    if [ $(($i%2)) -eq 1 ]; then
        echo $i
    else
        continue
    fi
done
