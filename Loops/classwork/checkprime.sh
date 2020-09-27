#!/bin/bash -x

l=0;
o=0;

echo Enter how many number you would like to check
read n

for(( j=1 ; j<=n ; j++ ))
do
	m=0
	echo Enter number $j
	read k

	for (( i=2 ; i<=(k/2) ; i++ ))
	do
		if [ $(( $n % i )) == 0 ]
		then
			m=$(( $m + 1 ))
		fi
	done

	if [ $m -eq 0 ]
	then
		a[l]=$k
		o=$(( $o + 1 ))
	fi
done

if [ $o -eq 0 ]
then
	echo There are no prime numbers
else
	echo The prime numbers are

	for (( i=0 ; i<=0 ; i++ ))
	do
		echo ${a[i]}
	done
fi
