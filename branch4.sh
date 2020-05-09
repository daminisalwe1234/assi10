#!/bin/bash -x
heads=0
tails=0
flipcoin() {
	result=$((RANDOM %2))
	if [ $result -eq 0 ]
	then
		$((tails++))
	else
		$((heads++))
	fi
}
while [ $tails -le 21 -o $heads -le 21 ]
do
	flipcoin
done
if [ $heads -eq $tails ]
then
	while [ $(($hrads - $tails)) -ne 2 -o $(($tails - $heads)) -ne 2 ]
	do
		flipcoin
	done
elif [ $heads -gt $tails ]
then
	echo "heads win"
elis [ $heads -gt $tails ]
then
	echo "tails win"
fi
