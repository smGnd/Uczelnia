#!/bin/bash

args=$#

case "$args"  in
  0) echo "Brak parametrów";;
  1) echo "Jeden parametr";;
  2) echo "Dwa parametry";;
  3) echo "Trzy parametry";;
  4) echo "Cztery parametr";;
  5) echo "Piec parametr";;
  *) echo "PPowyzej pieciu parametrow";;
esac
