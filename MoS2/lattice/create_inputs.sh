#!/bin/bash

for a in $(seq 3.000 0.005 3.300)
  do
  x=`echo "scale=8; $a*0.8660254037844386" | bc`
  y=`echo "scale=8; $a*0.5000" | bc`
  mkdir a_$a
  cd a_$a
  sed "s/VAR_X/$x/g" ../pw.relax.espresso > temp.espresso
  sed "s/VAR_Y/$y/g" temp.espresso > pw.relax.espresso
  rm temp.espresso
  cd ..
done
