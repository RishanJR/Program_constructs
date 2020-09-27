#!/bin/bash

factor=2;
power=1;

echo Enter how many terms you want
read n
printf '\n'

for (( i=1 ; i<=n ; i++ ))
do
	power=$(( $power * $factor ))
	echo 2^$i = $power
	printf '\n'
done

