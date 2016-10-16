#!/bin/bash

for T in $(seq 0.005 0.005 0.1)
do
  cd T_$T
  for k in $(seq 2 2 20)
    do
    cd k_$k
    energy=`grep ! pw.relax.out | awk '{print $5}'`
    deltaE=`echo "scale=8; ($energy)*13.60569253*1000/2" | bc`
    echo $k $deltaE >> ../../dat_$T.dat
    cd ..
  done
  cd ..
done
