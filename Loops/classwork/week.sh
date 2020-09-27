#!/bin/bash

echo Enter a digit between 1 and 7
read n

if [ $n -eq 1 ]
then
   echo Sunday
elif [ $n -eq 2 ]
then
   echo Monday
elif [ $n -eq 3 ]
then
   echo Tuesday
elif [ $n -eq 4 ]
then
   echo Wednesday
elif [ $n -eq 5 ]
then
   echo Thursday
elif [ $n -eq 6 ]
then
   echo Friday
elif [ $n -eq 7 ]
then
   echo Saturday
else
   echo Number exceeds the number of days in a week
fi
