#!/bin/bash

for wfc in $(seq 175 5 200)
  do
  cd wfc_$wfc
  pw.x -inp pw.relax.espresso > pw.relax.out
  cd ..
done
