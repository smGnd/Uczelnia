#!/bin/bash

i=$1;

while [ $i -gt 0 ]
do
	echo "$i..."
	i=$[i-1]
	sleep 1s
done
echo "wybuch"
