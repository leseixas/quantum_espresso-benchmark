#!/bin/bash

for rho in $(seq 4 4 8)
  do
  cd rho_$rho
  for wfc in $(seq 20 10 250)
    do
    cd wfc_$wfc
    energy=`grep ! pw.relax.out | awk '{print $5}'`
    deltaE=`echo "scale=8; ($energy+36.89004179)*13.60569253*1000/2" | bc`
    echo $wfc $deltaE >> ../../results_rho_$rho.dat
    cd ..
  done
  cd ..
done
