#!/bin/bash

echo -n "Give number from 1 to 12: "
read MONTH

case "$MONTH" in
	"1") echo "January" ;;
	"2") echo "Febuary" ;;
	"3") echo "March" ;;
	"4") echo "April" ;;
	"5") echo "May" ;;
	"6") echo "June" ;;
	"7") echo "July" ;;
	"8") echo "August" ;;
	"9") echo "September" ;;
	"10") echo "October" ;;
	"11") echo "November" ;;
	"12") echo "December" ;;
	*) echo "Not valid number" ;;
esac

#order read

echo -n "Write text: "
read TEXT
echo "$TEXT"

read -p "Write text: " TEXT
echo "$TEXT"

read -p "Write array elements: " -a TABLE
echo ${TABLE[@]}

read -p "Write text: "   # if we dont provide variables, value will be copied to variable: REPLY
echo "$REPLY"

