#!/bin/bash

echo Enter the number you want to find the prime factors for
read n
printf '\n'

count=0
flag=0

for (( i=2 ; i<=n/2 ; i++ ))
do
	num=$(( $n%$i ))
	if [ $num -eq 0 ]
	then

		for (( j=2 ; j<=$i/2 ; j++ ))
		do
			flag=0
			temp=$(( $i%$j ))

			if [ $temp -eq 0 ]
			then
				flag=1
				break
			fi

		done

		if [ $flag -eq 0 ]
		then
			echo $i
			count=1
		fi

	fi

done

if [ $count -eq 0 ]
then
	echo There are no prime factors other than 1 and $n
fi
