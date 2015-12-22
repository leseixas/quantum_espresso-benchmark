#!/bin/bash

for wfc in $(seq 10 5 200)
  do
  cd wfc_$wfc
  mpiexec pw.x -npool 2 -inp pw.relax.espresso > pw.relax.out
  cd ..
done
