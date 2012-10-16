#!/bin/bash

w=1;

function silnia
{
	N=$1;
  if [ $N -eq 0 -o $N -eq 1 ]
  then
    w=$[w*1];
  else
    w=$[w*N];
    N=$[N-1];
    silnia $N
  fi
}

read a

silnia $a

echo $w
