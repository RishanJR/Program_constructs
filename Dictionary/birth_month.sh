#!/bin/bash

MONTH_ONE=1
MONTH_TWO=2
MONTH_THREE=3
MONTH_FOUR=4
MONTH_FIVE=5
MONTH_SIX=6
MONTH_SEVEN=7
MONTH_EIGHT=8
MONTH_NINE=9
MONTH_TEN=10
MONTH_ELEVEN=11
MONTH_TWELVE=12

count1=0
count2=0
count3=0
count4=0
count5=0
count6=0
count7=0
count8=0
count9=0
count10=0
count11=0
count12=0

inroll=0

declare -A month_value

while [[ inroll -lt 50 ]]
do
	month=$(( RANDOM%11 + 1))
	case $month in
		$MONTH_ONE)
		month="JANUARY"
		((count1++))
		month_value[$month]=$count1
		;;
		$MONTH_TWO)
		month="FEBRUARY"
		((count2++))
		month_value[$month]=$count2
		;;
		$MONTH_THREE)
		month="MARCH"
		((count3++))
		month_value[$month]=$count3
		;;
		$MONTH_FOUR)
		month="APRIL"
		((count4++))
		month_value[$month]=$count4
		;;
		$MONTH_FIVE)
		month="MAY"
		((count5++))
		month_value[$month]=$count5
		;;
		$MONTH_SIX)
		month="JUNE"
		((count6++))
		month_value[$month]=$count6
		;;
		$MONTH_SEVEN)
		month="JULY"
		((count7++))
		month_value[$month]=$count7
		;;
		$MONTH_EIGHT)
		month="AUGUST"
		((count8++))
		month_value[$month]=$count8
		;;
		$MONTH_NINE)
		month="SEPTEMBER"
		((count9++))
		month_value[$month]=$count9
		;;
		$MONTH_TEN)
		month="OCTOBER"
		((count10++))
		month_value[$month]=$count10
		;;
		$MONTH_ELEVEN)
		month="NOVEMBER"
		((count11++))
		month_value[$month]=$count11
		;;
		$MONTH_TWELVE)
		month="DECEMBER"
		((count12++))
		month_value[$month]=$count12
		;;
	*)
		echo Unpredictable situation happened
		;;
esac

((inroll++))

done

echo ${month_value[@]}
echo ${!month_value[@]}
