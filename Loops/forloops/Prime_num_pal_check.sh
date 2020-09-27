#!/bin/bash

function Prime() {
	num=$1
	flag=0
	for (( i=2 ; i<=$num/2 ; i++ ))
	do
		if [[ $num%$i -eq 0 ]]
		then
			((++flag))
			break
		fi
	done
	echo $flag
}

function Palcheck() {
	num=$1
	i=0
	rev=" "
	while [ $num -gt 0 ]
	do
		i=$(( $num%10 ))
		num=$(( $num/10 ))
		rev=$( echo ${rev}${i} )
	done
	echo $rev
}

echo Enter the number to be checked
read n
temp=$n

result=$( Prime $n )
if [ $result == 1 ]
then
	echo The number is not prime
else
	echo The number is prime and checking for palindrome
	pal=$( Palcheck $temp )
	if [ $pal -eq $n ]
	then
		echo The number is palindrom and checking if it is prime
		pri=$( Prime $pal )
		if [ $pri == 1 ]
		then
			echo The palindrome number is not prime
		else
			echo The palindrome number is also prime
		fi
	else
		echo The prime number is not a palindrome number
	fi
fi
