#!/bin/bash

dot_countdown(){ # Syntax for 30 sec countdown: dot_countdown 30
declare -i DOTS_AMOUNT=$1*2
while [[ "$ANYKEY" != "0" && $DOTS_AMOUNT -gt 0 ]]; do
    printf "\u2022%.0s" $( seq 1 $DOTS_AMOUNT )
    printf "\033[0K\r"
    ((DOTS_AMOUNT--))
    read -r -t 0.5 -s -N 1
    ANYKEY=$?
done
printf "\r\033[0K"     # Option 1: Delete counter, no line break
# printf "\r\033[0K\n" # Option 2: Delete counter, line break
# printf "\n"          # Option 3: Don't delete counter, line break
unset ANYKEY
} 
 
dot_countdown 30
