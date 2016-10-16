#!/bin/bash


for wfc in $(seq 50 25 750)
do
  cd wfc_$wfc
  energy=`grep ! pw.relax.out | awk '{print $5}'`
  deltaE=`echo "scale=8; ($energy+22.78660825)*13.60569253*1000/2" | bc`
  echo $wfc $deltaE
  cd ..
done
