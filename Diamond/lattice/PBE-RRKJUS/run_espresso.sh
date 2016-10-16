#!/bin/bash

for a in $(seq 3.40 0.01 3.80)
  do
  cd a_$a
  pw.x -inp pw.relax.espresso > pw.relax.out
  cd ..
done
