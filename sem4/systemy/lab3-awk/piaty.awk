#!/bin/awk -f

BEGIN {
	FS = "\t"
	edycja
	miejsce=10000
}

NR > 3 {
	if (miejsce > $9){
		miejsce = $9
		edycja = $2
	}
}

END {
	print "Najlepszym wynikiem bylo zajecie " miejsce " miejsca podczas edycji " edycja
}
