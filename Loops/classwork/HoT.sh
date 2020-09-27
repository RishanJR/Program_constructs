#!/bin/bash

res=$(( RANDOM%2 ))

if [ $res == 0 ]
then
	echo Heads
else
	echo Tails
fi

