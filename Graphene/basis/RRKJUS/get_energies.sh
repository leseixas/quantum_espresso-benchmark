#!/bin/bash

for rho in $(seq 4 2 12)
  do
  cd rho_$rho
  for wfc in $(seq 20 5 150)
    do
    cd wfc_$wfc
    energy=`grep ! pw.relax.out | awk '{print $5}'`
    deltaE=`echo "scale=8; ($energy+22.79148430)*13.60569253*1000/2" | bc`
    echo $wfc $deltaE >> ../../results_rho_$rho.dat
    cd ..
  done
  cd ..
done
