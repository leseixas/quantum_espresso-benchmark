#!/bin/bash

for k in $(seq 2 2 20)
  do
  cd k_$k
  mpiexec pw.x -npool 2 -inp pw.relax.espresso > pw.relax.out
  cd ..
done
