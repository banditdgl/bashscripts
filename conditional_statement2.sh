#!/bin/bash

NUMBER_OF_ARGUMENTS="$#"

if [ "$NUMBER_OF_ARGUMENTS" = 0 ]
then
	echo "You give 0 arguments"
elif [ "$NUMBER_OF_ARGUMENTS" = "1" ]
then
	echo "You give 1 argument: $1"
elif [ "$NUMBER_OF_ARGUMENTS" = "2" ]
then
	echo "You give 2 arguments: $1 and $2"
elif [ "$NUMBER_OF_ARGUMENTS" = "3" ]
then
	echo "You give 3 arguments: $1 $2 and $3"
else
	echo "You give more than 3 arguments"
fi

echo "Logical arguments: "
echo "! Negacja"
echo "|| OR"
echo "&& AND"


if [ "$#" -gt 2 ]
then
	echo "to much arguments"
	echo "call $0 file_name [name_of_katalog]"
	exit 1
fi

if [ "$#" = "0" ]
then
	echo "You didnt provide name of file"
	echo "call $0 file_name [name_of_katalog]"
        exit 2
fi

if [ ! -e "$1" ]
then
	echo "such file does not exist!"
	exit 3
fi

if [ -n "$2" ]
then
	if [ ! -d "$2" ]
	then
		mkdir "$2"
	fi
	cp "$1" "$2"/
else
	if [ ! -d "default" ]
	then
	mkdir "default"
	fi	
	cp "$1" default/
fi
# ? last returned value
if [ "$?" = "0" ]
then
	echo "copied"
else

	echo "not copied"
fi
