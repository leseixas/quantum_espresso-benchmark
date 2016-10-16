#!/bin/bash

for wfc in $(seq 20 5 150)
  do
  cd wfc_$wfc
  pw.x -inp pw.relax.espresso > pw.relax.out
  cd ..
done
