#!/bin/bash

# Presents hosts from ssh config file in a handy menu
#
# If you want to use it like other commands, you can add an allias
# to your shell config, or rename the script and move it to /usr/bin/
# example command: sudo mv ssh.cin.sh /usr/bin/my_ssh

# Read hosts from config file and add a QUIT option to array
CONFIG_HOSTS=($(awk '/^Host/ && !/*/ {print $2}' $HOME/.ssh/config) "QUIT")

echo
PS3="  Choose ssh destination: "
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
