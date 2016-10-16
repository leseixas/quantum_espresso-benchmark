#!/bin/bash

for T in $(seq 0.005 0.005 0.1)
do
  cd T_$T
  for k in $(seq 2 2 20)
  do
    cd k_$k
    pw.x -inp pw.relax.espresso > pw.relax.out
    cd ..
  done
  cd ..
done
