#!/bin/bash

# Present hosts from ssh config file in a handy menu
SSH_CONFIG_LOCATION="$HOME/.ssh/config"


# Read hosts from config file and add a QUIT option to array
CONFIG_HOSTS=($(awk '/^Host/ && !/*/ {print $2}' $SSH_CONFIG_LOCATION) "QUIT")

echo
PS3="Choose ssh destination: "
select CHOICE in "${CONFIG_HOSTS[@]}"
do
	[[ -n $CHOICE ]] || { echo "  Invalid choice. Please try again." >&2; continue; }
	case $CHOICE in
		QUIT)
            echo -e "\n  We're done, bye.\n"
            break
        ;;
		*)
            echo -e "\n  Your choice: $CHOICE\n"
            ssh $CHOICE
            break
        ;;
	esac
done
