#!/bin/bash

function 2ndlargest() {
	first=${a[1]}
	second=${a[1]}

	for (( i=2 ; i<=10 ; i++ ))
	do
		if [[ $first -lt ${a[i]} ]]
		then
			second=$first
			first=${a[i]}
		elif [[ ${a[i]} -gt $second && ${a[i]} -ne $first ]]
		then
			second=${a[i]}
		fi
	done
	echo $second
}

function 2ndsmallest() {
	firstsmall=${a[1]}
	secondsmall=${a[1]}

	for (( i=2 ; i<=10 ; i++ ))
	do
		if [[ $firstsmall -gt ${a[i]} ]]
		then
			secondsmall=$firstsmall
			firstsmall=${a[i]}
		elif [[ ${a[i]} -lt $secondsmall && ${a[i]} -ne $firstsmall ]]
		then
			secondsmall=${a[i]}
		fi
	done
	echo $secondsmall
}


for (( i=1 ; i<=10 ; i++ ))
do
	a[i]=$(( RANDOM%900 + 100 ))
done

echo The numbers generated are
echo ${a[@]}

secl=$( 2ndlargest ${a[@]} )
secs=$( 2ndsmallest ${a[@]} )

echo The second largest number is $secl
echo The second smallest number is $secs
