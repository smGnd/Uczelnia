#!/bin/bash

i=1

echo -n $0 "* " | sed -E 's/\.\///g'

while [ $i -le $# ]
do
	echo -n "${!i} * "
	i=$[i+1]
done
echo
