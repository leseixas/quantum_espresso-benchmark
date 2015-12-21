#!/bin/bash

for temp in 1.0 0.3 0.1 0.03 0.01 0.003 0.001
  do
  cd temp_$temp
  for k in $(seq 2 2 20)
    do
    cd k_$k
    energy=`grep ! pw.relax.out | awk '{print $5}'`
    deltaE=`echo "scale=8; ($energy)*13.60569253*1000/2" | bc`
    echo $k $deltaE >> ../../dat_$temp.dat
    cd ..
  done
  cd ..
done
