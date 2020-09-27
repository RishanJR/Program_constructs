#!/bin/bash -x


isPartTime=1;
isFullTime=2;
sum=0;
empRateperHr=20;
noWorkDays=20;
tothrs=0;

for(( day=1; day<=$noWorkDays; day++ ))
do
	while [ $valid ]
	do
		if [ tothrs -le 50 ]
		then
			empcheck=$((RANDOM%3));
			case $empcheck in
				$isPartTime)
					emphrs=8
					tothrs=$(($emphrs + $tothrs));
					;;
				$isFullTime)
					emphrs=4
					tothrs=$(($emphrs + $tothrs));
					;;
				*)
				emphrs=0
				;;
			esac
			salary=$(($emphrs*$empRateperHr));
			sum=$(($salary+$sum));
		else
			break
		fi
done
echo Total Salary is $sum
echo Total hours worked is $tothrs
