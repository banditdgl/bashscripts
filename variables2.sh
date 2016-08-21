#!/bin/bash

#variables with type
# read only -r
# integer -i
# table -a
# function -f

function fun1
{
echo "Hello"
}

declare -r VAR1=10
echo $VAR1

VAR1=100
echo $VAR1

declare -i DIG1=5
declare -i DIG2=6
declare -i wynik
wynik=DIG1+DIG2
echo $wynik

declare -a tab=(1 2 3)
echo ${tab[0]} ${tab[1]} ${tab[2]}

declare -f fun1
# f isnt type, its show us function body given as an argument,  with no parameters it will show body of all functions
