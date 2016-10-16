#!/bin/bash

for k in $(seq 2 2 20)
do
  cd k_$k
  energy=`grep ! pw.relax.out | awk '{print $5}' | tail -1`
  deltaE=`echo "scale=8; ($energy+57.20331549)*13.60569253*1000/3" | bc`
  echo $k $deltaE
  cd ..
done
