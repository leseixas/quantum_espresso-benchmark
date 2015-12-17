#!/bin/bash

for z in $(seq -f %3.1f 5.0 1.0 30.0)
  do
  cd z_$z
  mpiexec pw.x -npool 2 -inp pw.relax.espresso > pw.relax.out
  cd ..
done
