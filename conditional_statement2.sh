#!/bin/bash

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
