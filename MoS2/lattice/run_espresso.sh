#!/bin/bash

for a in $(seq 3.000 0.005 3.300)
  do
  cd a_$a
  mpiexec pw.x -npool 2 -inp pw.relax.espresso > pw.relax.out
  cd ..
done
