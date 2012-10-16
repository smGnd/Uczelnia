#!/bin/bash

ln=$1
pt="$2"
pw="$3"
i=1
r=$(( RANDOM %= 100 ))
j=$ln-1
touch "$2" "$3"
TAB[0]=2


function gen_random
{
	echo -n "$r " > "$pt"

	while [ $i -lt $ln ]
	do
		i=$[i+1]
		r=$(( RANDOM %= 100 ))
		echo -n "$r " >> "$pt"
		TAB[$i-1]="$r"
	done
}

function revers
{
	while (( $j <= 0 ))
	do
		echo "${TAB[$j]} " `cat "$pw"` > "$pw"
		j=$[j+1]
	done
}


gen_random
revers
