#!/bin/bash

# An infinite spinner function with passed string argument

spin(){
    spinner=(Oooo OOoo OOOo oOOO ooOO oooO)
    while true; do
        for i in ${spinner[@]}; do
            printf "\r[\033[00;34m%s\033[0m] %s" $i "$1"
            sleep 0.2
        done
    done
}

spin "This spinner will run for 5 seconds." &
spin_pid=$!

sleep 5

kill $spin_pid
printf "\n"
