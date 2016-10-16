#!/bin/bash

for rho in $(seq 4 4 12)
  do
  cd rho_$rho
  for wfc in $(seq 20 10 250)
  do
    cd wfc_$wfc
    pw.x -inp pw.relax.espresso > pw.relax.out
    cd ..
  done
  cd ..
done
