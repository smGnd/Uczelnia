#!/bin/awk -f

BEGIN {
	FS="\t"
	RS="\n"
}

NR>=2 {
	if (NR%2==0)
		print $1
	
}

END {
	print "koniec"
}
