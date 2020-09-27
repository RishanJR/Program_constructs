#!/bin/bash

power=2
ref=1
i=1

echo Enter how many powers of 2 you want to compute
read n

while [[ ($ref -lt 256) && ($i -le $n) ]]
do
	ref=$(( $ref*$power ))
	echo $power^$i =  $ref
	i=$(( $i + 1 ))
done
