#!/bin/bash

for wfc in $(seq 20 5 200)
  do
  cd wfc_$wfc
  mpiexec -np 2 pw.x -inp pw.relax.espresso > pw.relax.out
  cd ..
done
