#!/bin/bash

for k in $(seq 2 2 20)
  do
  cd k_$k
  mpiexec pw.x -inp pw.relax.espresso > pw.relax.out
  cd ..
done
