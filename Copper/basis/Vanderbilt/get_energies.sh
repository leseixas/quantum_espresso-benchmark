#!/bin/bash

for wfc in $(seq 20 5 300)
do
  cd wfc_$wfc
  energy=`grep ! pw.relax.out | awk '{print $5}'`
  deltaE=`echo "scale=8; ($energy+88.08657006)*13.60569253*1000/2" | bc`
  echo $wfc $deltaE
  cd ..
done
