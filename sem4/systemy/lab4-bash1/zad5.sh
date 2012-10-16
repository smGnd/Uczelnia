#!/bin/bash

function max
{
	if [ $1 -gt $2 ]
	then
		echo "wieksza jest $1"
	else
		echo "wieksza jest $2"
	fi
}
echo "podaj pierwsza liczbe: "
read a
echo "podaj druga liczbe"
read b

max $a $b
