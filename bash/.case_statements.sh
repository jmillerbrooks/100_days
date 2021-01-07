#!/bin/bash

read -p "Enter the name of your senator " senator

case $senator in

    Mitch)
        echo "Congratulations, ${senator} is Darth Vader, enjoy the dark side, he is a capable foe."
        ;;
    Tim | Todd)
        echo "Lol, ${senator}."
        ;;
    *)
        echo "${senator}... who that is?"
        ;;
esac
