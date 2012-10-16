#!/bin/awk -f
BEGIN{
	FS = "\t"
	sumakm=0
	sumaed=0
}

NR>=3{
	sumakm=sumakm+$3
	sumaed++
}

END{
	print "Kolarz przebyl " sumakm " km podczas " sumaed " Harpaganow."
}
