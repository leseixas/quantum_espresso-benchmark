#!/bin/bash

for temp in 1.0 0.3 0.1 0.03 0.01 0.003 0.001
do
  cd temp_$temp
  for k in $(seq 2 2 20)
  do
    cd k_$k
    mpiexec pw.x -npool 2 -inp pw.relax.espresso > pw.relax.out
    cd ..
  done
  cd ..
done
