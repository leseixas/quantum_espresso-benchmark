#!/bin/bash

for a in $(seq 2.400 0.005 2.600)
  do
  cd a_$a
  pw.x -inp pw.relax.espresso > pw.relax.out
  cd ..
done
