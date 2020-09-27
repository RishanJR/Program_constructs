#!/bin/bash

declare -A face_value

FACE_ONE=1
FACE_TWO=2
FACE_THREE=3
FACE_FOUR=4
FACE_FIVE=5
FACE_SIX=6
count_one=0
count_two=0
count_three=0
count_four=0
count_five=0
count_six=0

while [[ $count_one -lt 10 && $count_two -lt 10 && $count_three -lt 10 && $count_four -lt 10 && $count_five -lt 10 && $count_six -lt 10 ]]
do
	roll=$(( RANDOM%6 + 1 ))
	case $roll in
		$FACE_ONE)
			face="One"
			((count_one++))
			face_value[$face]=$count_one
			;;
		$FACE_TWO)
			face="Two"
			((count_two++))
			face_value[$face]=$count_two
			;;
		$FACE_THREE)
			face="Three"
			((count_three++))
			face_value[$face]=$count_three
			;;
		$FACE_FOUR)
			face="Four"
			((count_four++))
			face_value[$face]=$count_four
			;;
		$FACE_FIVE)
			face="Five"
			((count_five++))
			face_value[$face]=$count_five
			;;
		$FACE_SIX)
			face="Six"
			((count_six++))
			face_value[$face]=$count_six
			;;
		*)
			face="Unpredictable Situation Happened"
			;;
	esac
done

echo ${face_value[@]}
echo ${!face_value[@]}

max=${face_value[One]}
min=${face_value[One]}

for face in ${!face_value[@]}
do
	if [[ ${face_value[${face}]} -gt $max ]]
	then
		max=${face_value[${face}]}
		keys=$face
	fi
done

for face in ${!face_value[@]}
do
	if [[ ${face_value[${face}]} -lt $min ]]
	then
		min=${face_value[${face}]}
		key=$face
	fi
done

echo The face of maximum occurrence is $keys
echo The face of minimum occurrence is $key
