#!/bin/bash

count=0

function palcheck() {
	if [[ $1%10 -eq $1/10 ]]
	then
		a[count]=$1
		((count++))
	fi
}

for (( i=10 ; i<100 ; i++ ))
do
	palcheck $i
done

echo The numbers with digits repeated twice are
echo ${a[@]}
