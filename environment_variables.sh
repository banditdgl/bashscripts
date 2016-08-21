#!/bin/bash

# HOME   path to home directory
# USER  name of logged user
# PATH path to directory with binaries
# TERM name of used emulator
# PWD path to the current directory
# OLDPWD path to the previous directory

cd ~
cd $OLDPWD
echo "Path to your home directory: $HOME"
echo "You are logged as: $USER "
echo "List of diretiories with executable files: $PATH"
echo "Used terminal emulator: $TERM"
echo "Current directory: $PWD"
echo "Previous directory: $OLDPWD"

#to see more environmental variables type: printenv |more
