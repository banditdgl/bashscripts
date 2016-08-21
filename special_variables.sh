#!/bin/bash
# 0 name of the scrip
# 1..9 name of arguments
# @ all arguments
# ? returned value from last order
# $  PID of current shell
# # number of arguments

echo "Name of the script is: $0"
echo "First argument: $1"
echo "Second argument: $2"
echo "All arguments: $@"
echo "Returned value from program echo: $?"
echo "PID of current shell: $$"
echo "Number of arguments: $#"
#sample of call this script  ./name.sh ARG1 ARG2 3 45 LAST
