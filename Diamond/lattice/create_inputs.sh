#!/bin/bash

for a in $(seq 3.40 0.01 3.80)
  do
  x=`echo "scale=8; $a*0.5" | bc`
  mkdir a_$a
  cd a_$a
  sed "s/VAR/$x/g" ../pw.relax.espresso > pw.relax.espresso
  cd ..
done
