#!/bin/bash

function sort() {
	for (( i=1 ; i<=10 ; i++ ))
	do
		for (( j=1 ; j<=(10-i-1) ; j++ ))
		do
			if [[ ${a[j]} -gt ${a[ $((j+1)) ]} ]]
			then
				temp=${a[j]}
				a[j]=${a[ $((j+1)) ]}
				a[$((j+1))]=$temp
			fi
		done
	done
}

for (( i=1 ; i<=10 ; i++ ))
do
	a[i]=$(( RANDOM%900 + 100 ))
done

echo The random numbers are ${a[@]}
sort ${a[@]}
echo The sorted numbers are ${a[@]}
echo The second smallest number is ${a[2]}
echo The second largest number is ${a[9]}
