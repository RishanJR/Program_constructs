#!/bin/bash

echo Enter 1 for feet to inch
echo Enter 2 for feet to meter
echo Enter 3 for inch to feet
echo Enter 4 for meter to feet
read ans

case $ans in
	1)
		echo Enter feet
		read n
		n=$(( $n*12 ))
		echo resultant feet in inch is $n
		;;
	2)
		echo Enter feet
		read n
		n=$(($n*3048/10000))
		echo resultant feet in meter is $n
		;;
	3)
		echo Enter inch
		read n
		n=$(( $n/12 ))
		echo resultant inch in feet is $n
		;;
	4)
		echo Enter meter
		read n
		n=$(( $n*10000/3048 ))
		echo resultant meter in feet is $n
		;;
	*)
		echo Not a valid option
esac

