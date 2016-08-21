#!/bin/bash

#three ways to do mathematical operations
#  a=a+1   isnt correct

a=1
a=$(( a+1 ))
echo $a

a=$[a+10]
echo $a

let a=a+100
echo $a
echo  "a = 1 b = 2"
a=1
b=2
echo "a+b:"
echo $(($a+b))
echo "a/b:"  # will be 0 because operations are on integers
echo $[$a/$b]
result=$[b*$b+2*a-8*b]
echo $resulti
echo $((a+55))

c=21
let c-=20
echo "c=21-20: $c"

echo "known  operations: =, -, /, *, **"





