#!/bin/bash

money=100
bet=1
number_of_bets=0
won=0
loss=0

while [[ money -gt 0 && money -lt 200 ]]
do
	result=$(( RANDOM%2 ))
	case $result in
		0)
			((money+=$bet))
			((won++))
			;;
		1)
			((money-=$bet))
			((loss++))
			;;
	esac
	((number_of_bets++))
done

if [ $money == 0 ]
then
	echo You have lost all your money on gambling
else
	echo You have won your daily limit and your balance is $money
fi

echo Number of bets is $number_of_bets
echo Number of wins is $won
echo Number of losses is $loss
