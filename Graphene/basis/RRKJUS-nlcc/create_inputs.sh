#!/bin/bash

# The external loop concern the ratio between ecutrho/ecutwfc. From 4 to 12.
# The internal loop concern the energy cutoff for the planewave basis. From 20 to 150 Ry.

for rho in $(seq 4 2 12)
  do
  mkdir rho_$rho
  cd rho_$rho
  for wfc in $(seq 20 5 150)
    do
    ecutrho=`echo "$wfc*$rho"| bc`
    mkdir wfc_$wfc
    cd wfc_$wfc
      sed "s/VAR_WFC/$wfc/g" ../../pw.relax.espresso > .temp.espresso
      sed "s/VAR_RHO/$ecutrho/g" .temp.espresso > pw.relax.espresso
      rm .temp.espresso
    cd ../
  done
  cd ../
done
