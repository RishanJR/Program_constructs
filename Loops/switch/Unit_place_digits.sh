#!/bin/bash

echo Enter 1 for single digit 2 for double digit 3 for triple digit and 4 for four digits
read ans
echo Enter the number
read n

case $ans in
	1)
		echo Units place is $(( $n%10 ))
		;;
	2)
		echo Units place is $(( $n%10 ))
		n=$(( $n/10 ))
		echo Tens place is $(( $n%10 ))
		;;
	3)
		echo Units place is $(( $n%10 ))
		n=$(( $n/10 ))
		echo Tens place is $(( $n%10 ))
		n=$(( $n/10 ))
		echo Hundreds place is $(( $n%10 ))
		;;
	4)
		echo Units place is $(( $n%10 ))
		n=$(( $n/10 ))
		echo Tens place is $(( $n%10 ))
		n=$(( $n/10 ))
		echo Hundreds place is $(( $n%10 ))
		n=$(( $n/10 ))
		echo Thousands place is $(( $n%10 ))
		;;
	*)
		echo Number too big
esac

