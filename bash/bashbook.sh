#!/bin/bash

# comments in bash are just preceded by a hash as in other common syntax


# Use of the -p flag following read will echo the quoted text on execution
# user input will be stored in $name"


read -p "What is your name?" name

echo "Hello $name!"
echo "Welcome to the bashbook program"

