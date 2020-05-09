#!/bin/bash -x
head=0
tails=0
while [ $tails -le 21 -o $head -le 21 ]
do
	result=$((RANDOM % 2))
	if [ $result -eq 0 ]
	then
		$((tails++))
	else
		$((heads++))
	fi
done
if [ $heads -eq $tails ]
then
	echo "its a tie !"
elif[ $heads -gt $tails ]
then
	echo "heads win"
elif [ $heads -it $tails ]
then
	echo "tails win"
fi

