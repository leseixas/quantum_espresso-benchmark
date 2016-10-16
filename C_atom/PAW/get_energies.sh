#!/bin/bash

for wfc in $(seq 10 5 100)
do
  cd wfc_$wfc
  energy=`grep ! pw.relax.out | awk '{print $5}'`
  deltaE=`echo "scale=8; ($energy+17.76939663)*13.60569253*1000" | bc`
  echo $wfc $deltaE
  cd ..
done
