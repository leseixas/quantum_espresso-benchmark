#!/bin/bash

for wfc in $(seq 20 10 500)
  do
  cd wfc_$wfc
  pw.x -inp pw.relax.espresso > pw.relax.out
  cd ..
done
