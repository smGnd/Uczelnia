#!/bin/bash

ilearg=$#

if [ $ilearg -eq 3 ] 
then
	if [ "$3" = "linux" ] 
	then
		echo "tak"
	else
		echo "nie"
	fi
else
	echo "nie"
fi
