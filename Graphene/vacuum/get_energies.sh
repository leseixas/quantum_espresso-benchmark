#!/bin/bash

for z in $(seq -f %3.1f 5.0 1.0 30.0)
do
  cd z_$z
  energy=`grep ! pw.relax.out | awk '{print $5}'`
  deltaE=`echo "scale=8; ($energy+22.82039537)*13.60569253*1000/2" | bc`
  echo $z $deltaE
  cd ..
done
