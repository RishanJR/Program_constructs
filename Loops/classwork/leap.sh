#!/bin/bash

echo Enter a year
read n

count=0

if [[ $(($n%4)) == 0 ]]
then

	if [[ $(($n%100)) == 0 ]]
	then

		if [[ $(($n%400)) == 0 ]]
		then
			count=1
		fi

	else
		count=1
	fi
fi

if [[ $count == 1 ]]
then
	echo It is a leap year
else
	echo The year is not a leap year
fi
