#!/usr/bin/env bash

#configs here!
keyrepeat_delay=0.025
initial_delay=14

echo "OSX ultrafast keyboard script by Carlo Meroni"
while true; do
    read -p "Do you want a blazingly fast keyboard? [y/n] " yn
    case $yn in
        [Yy]* ) 
			echo "KeyRepeat setted to $keyrepeat_delay"
			defaults write NSGlobalDomain KeyRepeat -int $keyrepeat_delay
			echo "InitialKeyRepeat setted to $initial_delay"
			defaults write NSGlobalDomain InitialKeyRepeat -int $initial_delay
			echo "Done :)"
			echo "* May require to log out for settings to take effect"
			break;;
	    [Nn]* )
			defaults delete NSGlobalDomain KeyRepeat
			defaults delete NSGlobalDomain InitialKeyRepeat 
			echo "Restored default settings"
			echo "Done :)"
			echo "* May require to log out for settings to take effect"
			exit;;
        * ) 
			echo "Please answer yes or no.";;
    esac
done
