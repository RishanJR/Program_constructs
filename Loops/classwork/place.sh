#!/bin/bash

echo Enter 1 for single digit 2 for double digit 3 for triple digit or 4 for four digits
read ans
echo Enter the number
read n

if [ $ans -eq 1 ]
then
	echo Units place is $(( $n%10 ))
elif [ $ans -eq 2 ]
then
	echo Units place is $(( $n%10 ))
	n=$(( $n/10 ))
	echo Tens place is $(( $n%10 ))
elif [ $ans -eq 3 ]
then
	echo Units place is $(( $n%10 ))
	n=$(( $n/10 ))
	echo Tens place is $(( $n%10 ))
	n=$(( $n/10 ))
	echo Hundreds place is $(( $n%10 ))
elif [ $ans -eq 4 ]
then
	echo Units place is $(( $n%10 ))
	n=$(( $n/10 ))
	echo Tens place is $(( $n%10 ))
	n=$(( $n/10 ))
	echo Hundreds place is $(( $n%10 ))
	n=$(( $n/10 ))
	echo Thousands place is $(( $n%10 ))
else
	echo The number is big
fi
