#!/bin/bash

function degF() {
	conv=$(( $1*9/5 + 32 ))
	echo $conv
}

function degC() {
	conv=$(( ( $1 - 32 )*5/9 ))
	echo $conv
}

echo Enter 1 to convert to degF or 2 to convert to degC
read n

case $n in
	1)
		echo Enter the value to be converted within the limit 0degC to 100degC
		read val
		if [[ $val -gt 0 && $val -lt 100 ]]
		then
			result="$( degF $val )"
			echo The resultant temp in deg F is $result
		else
			echo The value is not within the freezing point
		fi
		;;
	2)
		echo Enter the value to be converted within the limit 32degF to 212degF
		read val
		if [[ $val -gt 32 && $val -lt 212 ]]
		then
			result="$( degC $val )"
			echo The resultant temp in deg C is $result
		else
			echo The value is not with the freezing point
		fi
		;;
	*)
		echo Invalid response
		;;
esac
