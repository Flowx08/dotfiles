#!/usr/bin/env bash
if [ "$#" -ne 3 ]; then
    echo "Illegal number of parameters: $# parameters, 3 required"
	exit
fi
sudo sed -i '' -e "s/$1/$2/" $3;
