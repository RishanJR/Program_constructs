#!/bin/bash

echo Enter 3 numbers
read a b c

d=$(($a+$b*$c))
e=$(($c+$a/$b))
f=$(($a%$b+$c))
g=$(($a*$b+$c))

echo $d $e $f $g

if [[ $d -gt $e && $d -gt $f && $d -gt $g ]]
then
	max=$d
elif [[ $e -gt $d && $e -gt $f && $e -gt $g ]]
then
	max=$e
elif [[ $f -gt $d && $f -gt $e && $f -gt $g ]]
then
	max=$f
else
	max=$g
fi

if [[ $d -lt $e && $d -lt $f && $d -lt $g ]]
then
	min=$d
elif [[ $e -lt $d && $e -lt $f && $e -lt $g ]]
then
	min=$e
elif [[ $f -lt $d && $f -lt $e && $f -lt $g ]]
then
	min=$f
else
	min=$g
fi

echo The maximum value is $max
echo The minimum value is $min
