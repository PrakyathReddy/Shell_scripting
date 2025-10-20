#!/bin/bash

# Given three integers (X, Y, and Z) representing the three sides of a triangle, identify whether the triangle is scalene, isosceles, or equilateral.

read X
read Y
read Z

if [ $X -eq $Y ] && [ $Y -eq $Z ]; then
    echo "EQUILATERAL"
elif [ $X -eq $Y ] || [ $Y -eq $Z ] || [ $Z -eq $X ]; then 
    echo "ISOSCELES"
else 
    echo "SCALENE"
fi
