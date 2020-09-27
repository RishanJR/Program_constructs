#!/bin/bash

echo How many numbers do you want to check?
read n

for (( i=1 ; i<=n ; i++ ))
do
	echo Enter the number $i
	read num[$i]
done

count=0

for (( i=1 ; i<=n ; i++ ))
do
	temp=0
	for (( j=2 ; j<=${num[$i]}/2 ; j++ ))
	do
		if [[ ${num[$i]}%j -eq 0 ]]
		then
			temp=1
			break;
		fi
	done
	if [ $temp -eq 0 ]
	then
		echo ${num[$i]} is prime
		count=1;
	fi
done

if [ $count -eq 0 ]
then
	echo All the numbers are not prime
fi

