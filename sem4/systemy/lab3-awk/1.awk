#!/bin/awk -f

BEGIN {
	FS="\t"
	miejsce=1000
	edycja=""
}

NR>2 {
	if (miejsce > $9)
		miejsce=$9
		edycja=$2
}

END {
	print "Najlepsze miejsce: " miejsce ", w edycji: " edycja "."
}
