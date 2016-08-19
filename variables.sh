#!/bin/bash
#lockal variables

AGE=27
HELLO="Hello"
NAME=Michal 

#  -n stay at same line

echo -n $HELLO $NAME
echo -n ". Your age is: "
echo $AGE

echo HELLO
echo AGE
echo "$HELLO $NAME. Your age is: "
echo '$AGE'

# when variables is in ' apostrophes its print just content

CURRENT_DIRECTORY= pwd   #thanks to space its like system order
CURRENT_DIRECTORY2='pwd'
CURRENT_DIRECTORY3=$(pwd)

echo -n $CURRENT_DIRECTORY
echo $CURRENT_DIRECTORY2
echo $CURRENT_DIRECTORY3
echo 'pwd'
echo $(pwd)

#echo with white characters

export LICZBY="098765432"
export DIGITS="1 2 3 4 5	6

7
8"
DIGITS2="1234"

echo $DIGITS
echo $DIGITS2
echo "$DIGITS"
echo ${DIGITS}
echo "${DIGITS}"

