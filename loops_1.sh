#!/bin/bash

echo "LOOP FOR"
ARRAY=(1 9 2 3 11 23 0)
for i in 0 1 2 3 4 5 6 
do
	echo ${ARRAY[$i]}
done

echo "- - - -"

for i in {0..6}
do
	echo ${ARRAY[$i]}
done

echo "- - - -"
SIZE=${#ARRAY[@]}

for i in `seq 0 $[SIZE-1]`
do
	echo ${ARRAY[$i]}
done

echo " Max and Min value from array: "
ARRAY2=(1 2 9 7 45 23 5 -3 -9 10 11 -15)
SIZE2=${#ARRAY2[@]}
MIN=${ARRAY2[0]}
MAX=${ARRAY2[0]}

for i in `seq 0 $[SIZE2-1]`
do
	if [ ${ARRAY2[$i]} -lt  $MIN ] 
	then
		MIN=${ARRAY2[$i]}
	fi
	if [ ${ARRAY2[$i]} -ge $MAX ]
	then
		MAX=${ARRAY2[$i]}
	fi
done

echo "MIN = $MIN"
echo "MAX = $MAX"
