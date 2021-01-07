#!/bin/bash

cd ..

pwd

if [[ -d bash ]]
then
    echo "bash exists and is a directory"
fi

cd -

FILE_TEST=$1

if [[ -x ${FILE_TEST} ]]
then
    echo "${FILE_TEST} exists and is executable"
fi

if [[ -v $FILE_TEST ]]
then
    echo "This works too"
else
    echo "couldn't get the -v flag to work"
fi


