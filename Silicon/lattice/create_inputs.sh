#!/bin/bash

for a in $(seq 5.300 0.005 5.600)
  do
  x=`echo "scale=8; $a*0.5" | bc`
  mkdir a_$a
  cd a_$a
  sed "s/VAR/$x/g" ../pw.relax.espresso > pw.relax.espresso
  cd ..
done
