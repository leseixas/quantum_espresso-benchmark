#!/bin/bash

for wfc in $(seq 20 5 200)
do
  cd wfc_$wfc
  energy=`grep ! pw.relax.out | awk '{print $5}'`
  deltaE=`echo "scale=8; ($energy+36.05543449)*13.60569253*1000/3" | bc`
  echo $wfc $deltaE
  cd ..
done
