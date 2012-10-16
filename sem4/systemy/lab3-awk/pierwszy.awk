#!/bin/awk -f
BEGIN{
         print "Lista edycji Harpagan";
         FS="\t";
         }

         {
         print $2
         }
END{
         print "Koniec listy";
         }
