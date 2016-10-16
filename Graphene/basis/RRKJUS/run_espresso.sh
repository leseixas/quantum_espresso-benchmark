#!/bin/bash

for rho in $(seq 4 2 12)
  do
  cd rho_$rho
  for wfc in $(seq 20 5 150)
  do
    cd wfc_$wfc
    pw.x -inp pw.relax.espresso > pw.relax.out
    rm -rf pwscf.save
    cd ..
  done
  cd ..
done
