#!/bin/bash

function PalCheck() {
	i=0
	num=$1
	rev=" "
	while [ $num -gt 0 ]
	do
		i=$(( $num % 10 ))
		num=$(( $num / 10 ))
		rev=$( echo ${rev}${i} )
	done
	echo $rev
}

echo Enter the number you want to check
read n

temp=$n
result=$( PalCheck $temp )
if [ $result -eq $n ]
then
	echo The number is Palindrome
else
	echo The number is not Palindrome
fi
