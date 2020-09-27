#!/bin/bash

function check() {
	count=0
	for (( i=0 ; i<=$(($n-2)) ; i++ ))
	do
		for (( j=i+1 ; j<=$(($n-1)) ; j++ ))
		do
			for (( k=j+1 ; k<=$n ; k++ ))
			do
				if [[ ${a[i]}+${a[j]}+${a[k]} -eq 0 ]]
				then
					echo ${a[i]} " " ${a[j]} " " ${a[k]}
					count=1
				fi
			done
		done
	done
	if [ $count -eq 0 ]
	then
		echo The following condition does not exist
	fi
}

echo Enter the size of the array
read n

for (( i=1 ; i<=n ; i++ ))
do
	read -p "Enter the integer $i " num
	a[i]=$num
done

echo The array is ${a[@]}
echo Checking if the sum of any 3 integers is zero
check ${a[@]}
