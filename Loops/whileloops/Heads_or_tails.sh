#!/bin/bash

hcount=0
tcount=0

while [[ hcount -lt 11 && tcount -lt 11 ]]
do
	result=$(( RANDOM%2 ))
	case $result in
		0)
			((hcount++))
			;;
		1)
			((tcount++))
			;;
	esac
done

echo The number of heads is $hcount
echo The number of tails is $tcount

