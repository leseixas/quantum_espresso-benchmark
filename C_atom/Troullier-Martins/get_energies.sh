#!/bin/bash

for wfc in $(seq 20 5 200)
do
  cd wfc_$wfc
  energy=`grep ! pw.relax.out | awk '{print $5}'`
  deltaE=`echo "scale=8; ($energy+10.73209238)*13.60569253*1000" | bc`
  echo $wfc $deltaE
  cd ..
done
