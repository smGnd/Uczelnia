#!/bin/awk -f
BEGIN{
	FS = "\t"
	}

NR>=2{
	if ($3 >= 200) {
		print "W edycji " $2 " zajal miejsce " $9
	}
}

END{}
