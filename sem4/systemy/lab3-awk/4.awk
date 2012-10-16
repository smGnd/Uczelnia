#!/bin/awk -f

BEGIN {
	FS="\t"
	sumaparz=0
	sumanparz=0
}

NR>2 {
	if ($9%2==0)
		sumaparz+=$3
	else sumanparz+=$3
}

END {
	print "Parzyste miejsce: " sumaparz ", nieparzyste miejsce: " sumanparz "."
}
