#!/bin/awk -f

BEGIN {
	FS = "\t"
	skmparz=0
	skmnieparz=0
}

NR >=3 {
	if ($9%2==0) skmparz+=$3
	else skmnieparz+=$3
}

END{
	print "Kolarz przejechal " skmparz " kilometrow w zawodach, gdzie zajal miejsce parzyste,\ni " skmnieparz " kilometrow, w zawodach gdzie zajal miejsce nieparzyste."
}
