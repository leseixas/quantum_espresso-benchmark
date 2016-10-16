#!/bin/bash

for wfc in $(seq 50 25 750)
do
  cd wfc_$wfc
  pw.x -inp pw.relax.espresso > pw.relax.out
  cd ..
done
