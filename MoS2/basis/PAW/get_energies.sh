#!/bin/bash

for wfc in $(seq 10 5 200)
do
  cd wfc_$wfc
  energy=`grep ! pw.relax.out | awk '{print $5}'| tail -1`
  deltaE=`echo "scale=8; ($energy+496.68724036)*13.60569253*1000/2" | bc`
  echo $wfc $deltaE
  cd ..
done
