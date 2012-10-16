#!/bin/awk -f
BEGIN {
	FS = " ";
	print "Osoby zalogowane:";
}

NR >= 1 {
	print $1 "\t" $3 " " $4;
}

END {
}
