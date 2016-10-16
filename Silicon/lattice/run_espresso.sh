#!/bin/bash

for a in $(seq 5.300 0.005 5.600)
  do
  cd a_$a
  pw.x -inp pw.relax.espresso > pw.relax.out
  cd ..
done
