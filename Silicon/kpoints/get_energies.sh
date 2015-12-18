#!/bin/bash

for k in $(seq 2 2 20)
do
  cd k_$k
  energy=`grep ! pw.relax.out | awk '{print $5}'`
  deltaE=`echo "scale=8; ($energy+15.76210592)*13.60569253*1000/2" | bc`
  echo $k $deltaE
  cd ..
done
