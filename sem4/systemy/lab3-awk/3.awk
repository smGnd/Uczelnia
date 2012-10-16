#!/bin/awk -f

BEGIN {
	FS="\t"
	RS="\n"
	sumakm=0
	sumaed=0
}

NR>2 {
	sumakm=sumakm+$3
	sumaed++
}

END {
	print "Kolarz przebyl " sumakm " kilometrow w " sumaed " edycjach"
}
