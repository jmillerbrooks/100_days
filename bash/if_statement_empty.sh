#!/bin/bash

read -p "Enter your name " name

if [[ -z ${name} ]]
then
    read -p "Please enter your name! " name
fi
