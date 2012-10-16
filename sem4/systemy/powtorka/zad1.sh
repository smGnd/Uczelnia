#!/bin/bash

if [ "$#" -ne "1" ]; then
	echo "nie ma parametru"
else
	case "$1" in
		"a")
			find $HOME -depth -type f -mtime -2
		;;
		"b")
			find $HOME -depth -type f -size 0
		;;
		"c")
			find $HOME -depth -type f -not -user $USER
		;;
	esac
fi
