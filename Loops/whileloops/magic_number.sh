#!/bin/bash

echo Enter a magic number between 1 and 100
read n

num=0
max=100
min=0
sum=0

while [ $num != $n ]
do
	num=$(( $(($max+$min)) / 2 ))
	if [ $num -lt $n ]
	then
		min=$num
	else
		max=$num
	fi
done

echo The magic number is $num
