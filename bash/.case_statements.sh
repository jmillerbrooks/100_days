#!/bin/bash

read -p "Enter the name of your senator " senator

case $senator in

    Mitch)
        echo "Congratulations, ${senator} is Darth Vader, enjoy the dark side."
        ;;
    Ted)
        echo "${senator} is a cunt."
        ;;
    Tim | Todd)
        echo "Lol, ${senator}."
        ;;
    *)
        echo "${senator}... who that is?"
        ;;
esac
