#!/bin/bash

fact=1

echo Enter the number you want to find the factorial of
read n

for (( i=1 ; i<=n ; i++ ))
do
	fact=$(( $fact * $i ))
done

echo The factorial of $n is $fact
