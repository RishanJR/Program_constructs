#!/bin/bash

declare -A sounds
sounds[dog]="Bark"
sounds[bird]="Tweet"
sounds[cow]="Moo"
sounds[wolf]="Howl"

echo "The sound of dog" ${sounds[dog]}
echo "Sound of all the animals" ${sounds[@]}
echo "Animals" ${!sounds[@]}
echo "Number of animals" ${#sounds[@]}
unset sounds[dog]
echo ${!sounds[@]}

for values in ${#sounds[@]}
do
	echo $values
done
