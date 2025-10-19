#!/bin/bash

# this script is to accept name and role as input and print a sentence using that info

echo "enter your name: "
read NAME
echo "enter your role: "
read ROLE

echo "Hello $NAME! Welcome to our team as $ROLE engineer"
echo "Your working directory would be: $HOME"
echo "Your shell would be $SHELL"
