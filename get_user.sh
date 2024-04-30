#!/bin/bash

#-------------------------------------------------------------------
#  Run the script without and then with sudo, to see the difference.
#-------------------------------------------------------------------

printf "\nMethods to get the current users name in a script:\n\n"

# Header
printf "\t| %-13s | %-13s |\n" "Method" "Output"
printf "\t| %-13s | %-13s |\n" | tr " " "-"

# Methods
printf "\t| %-13s | %-13s |\n" '$(logname)' $(logname)
printf "\t| %-13s | %-13s |\n" '$SUDO_USER' $SUDO_USER
printf "\t| %-13s | %-13s |\n" '$USER' $USER
printf "\t| %-13s | %-13s |\n" '$(whoami)' $(whoami)

printf "\n"
