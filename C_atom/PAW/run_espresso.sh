#!/bin/bash

for wfc in $(seq 10 5 100)
  do
  cd wfc_$wfc
  mpiexec pw.x -inp pw.relax.espresso > pw.relax.out
  cd ..
done
