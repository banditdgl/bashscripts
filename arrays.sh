#!/bin/bash

# arrays can handle with diffrent types

TABLE=(1 3 9 "Some string" Some string)

echo ${TABLE[0]}
echo ${TABLE[1]}
echo ${TABLE[2]}
echo ${TABLE[3]}
echo ${TABLE[4]}
echo ${TABLE[5]}

TABLE[0]=666

echo ${TABLE[0]}   #printing all array elements
echo -e "ALL array elements: \n"${TABLE[*]}
echo -e "ALL array elements: \n"${TABLE[@]}

# We can print number of characters in particular element of array and print number of arrays arguments

echo ${#TABLE[3]}
echo ${#TABLE[@]}


