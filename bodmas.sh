#!/bin/bash

# A mathematical expression containing +,-,*,^, / and parenthesis will be provided. Read in the expression, then evaluate it. Display the result rounded to  decimal places.

read exp

trim=$(echo $exp | sed "s/ //g")

result=$(echo "scale=4; $trim" | bc -l)
printf "%.3f\n" "$result"
