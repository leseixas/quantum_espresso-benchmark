#!/bin/bash

for wfc in $(seq 525 25 750)
do
  cd wfc_$wfc
  mpiexec pw.x -npool 2 -inp pw.relax.espresso > pw.relax.out
  cd ..
done
