#!/bin/bash -x

PT=1;
FT=2
MAX_HRS=100;
R_P_R=20;
WORKING_DAYS=20;

TOTEMPHR=0;
TOTWORKINGDAYS=0;

while [[ $TOTEMPHR -lt $MAX_HRS && $TOTWORKINGDAYS -lt $WORKING_DAYS ]]
do
	((TOTWORKINGDAYS++))
	empcheck=$((RANDOM%3));
	case $empcheck in
		$FT)
			emphrs=8
			;;
		$PT)
			emphrs=4
			;;
		*)
			emphrs=0
			;;
		esac
		TOTEMPHR=$(( $TOTEMPHR + $emphrs ))
done
totalsalary=$(($TOTEMPHR*R_P_R));

