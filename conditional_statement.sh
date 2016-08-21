#!/bin/bash
#
echo  "operators: "
echo "-lt less than"
echo "-le less or equal than"
echo "-gt more than"
echo "-ge more or euqal than"
echo "= equal"
echo -e "!= not equal\n"
echo -e "------------------\n"
echo "-a file exist"
echo "-b file exist and is special block file"
echo "- file exist and is file of characters"
echo "-e file exist"
echo "-h file exist and its symbolic link"
echo "-n impression is longer than 0"
echo "-d impression exist and its directory"
echo "-z impression have null length" 
echo "-r file can be read"
echo "-w you can save in this file"
echo "-x file is executable"
echo "-f file exist and its normal file"
#-p Plik jest łączem nazwanym
echo "-N file exist and it was changed after last use"
echo "P1 -nt P2 P1 is newer than P2"
echo "P1 -ot P2 P1 is older than P2"

if [ "$#" != 1 ]
then
	echo "Podales zla ilosc argumentow"
	echo "Wywolanie nazwa $0 nazwa pliku"
	exit 1
fi

if [ -e "$1" ]
then
	echo "Plik istnieje"
else
	echo "Plik nie istnieje"
fi


