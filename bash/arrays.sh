#!/bin/bash

my_array=("$1" "$2" "$3")

echo "The first element in an array can be accessed with \${array_name[0]}"

echo "You passed \"${my_array[0]}\" as the first argument"

# This does not actually seem to work...
echo "The last element in an array can be accessed with \${array_name[-1]}"

# Passing -1 yields: bad array subscript?
echo "You passed \"${my_array[2]}\" as the last argument"

echo "Access all elements in an array with \${array_name[@]}"

echo "${my_array[@]}"

echo "Access the total number of elements in an array with \${#array_name[@]}"

echo "You passed ${#my_array[@]} arguments"
