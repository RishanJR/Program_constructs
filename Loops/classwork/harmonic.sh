#!/bin/bash

Hn=0

echo Enter the number of terms in the harmonic series
read n

for (( i=1 ; i<=n ; i++ ))
do
	Hn=$(( $Hn + ( 1/$i) ))
done

echo The $n harmonic mumber is $Hn

