#!/bin/bash

for a in $(seq 3.40 0.01 3.80)
  do
  cd a_$a
  mpiexec pw.x -npool 2 -inp pw.relax.espresso > pw.relax.out
  cd ..
done
