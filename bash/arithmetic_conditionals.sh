#!/bin/bash

if [[ $1 -le $2 ]]
then
echo "${1} is less than or equal to ${2}"
else
echo "${1} is not less than ${2}"
fi
