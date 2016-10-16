#!/bin/bash

for a in $(seq 2.400 0.005 2.600)
  do
  x=`echo "scale=8; $a*0.8660254037844386" | bc`
  y=`echo "scale=8; $a*0.5000" | bc`
  mkdir a_$a
  cd a_$a
  sed "s/VAR_x/$x/g" ../pw.relax.espresso > temp.espresso
  sed "s/VAR_y/$y/g" temp.espresso > pw.relax.espresso
  rm temp.espresso
  cd ..
done
