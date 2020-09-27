#!/bin/bash

d=`date +%d`
m=`date +%m`

if [[ $d -gt 20 && $m -eq 3 ]]
then
	count=1
fi
if [[ $d -lt 20 && $m -eq 6 ]]
then
	count=1
fi
if [[ $m -gt 3 && $m -lt 6 ]]
then
	count=1
fi

if [[ $count -eq 1 ]]
then
	echo True
else
	echo False
fi

