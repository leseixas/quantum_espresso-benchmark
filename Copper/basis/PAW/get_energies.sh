#!/bin/bash

for wfc in $(seq 20 5 300)
do
  cd wfc_$wfc
  energy=`grep ! pw.relax.out | awk '{print $5}'`
  deltaE=`echo "scale=8; ($energy+213.21250124)*13.60569253*1000/2" | bc`
  echo $wfc $deltaE
  cd ..
done
