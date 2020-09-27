#!/bin/bash -x

PT=1
FT=2
MAX_HRS=100
EMP_RATE=20
NO_OF_DAYS=20

TOT_HRS=0
TOT_DAYS=0
declare -A dailywages

function getworkinghours() {
	case $1 in
		$FT)
			workhrs=8
			;;
		$PT)
			workhrs=4
			;;
		*)
			workhrs=0
			;;
	esac
}

function getEmpWage() {
	local hrs=$1
	echo $(($hrs*$EMP_RATE))
}

while [[ $TOT_HRS -lt $MAX_HRS && $TOT_DAYS -lt $NO_OF_DAYS ]]
do
	((TOT_DAYS++))
	getworkinghours $((RANDOM%3))
	TOT_HRS=$(($TOT_HRS + $workhrs));
	dailywages["Day "$TOT_DAYS]="$( getEmpWage $workhrs )"
done

totalsalary=$(($TOT_HRS*$EMP_RATE))
echo ${dailywages[@]}
echo ${!dailywages[@]}
