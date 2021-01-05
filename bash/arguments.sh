#!/bin/bash


# Access individual arguments with their index (starts at 1 not 0)
# $0 references the script itself, you can self destruct the file
# or get the name of the script this way.

echo "Argument one is $1"
echo "Argument two is $2"
echo "Argument three is $3"

# Access all arguments with $@

echo "Accessing all of the arguments passed gives: $@"

