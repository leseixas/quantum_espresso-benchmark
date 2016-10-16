#!/bin/bash

for wfc in $(seq 50 25 750)
  do
  mkdir wfc_$wfc
  cd wfc_$wfc
    sed "s/VAR_WFC/$wfc/g" ../pw.relax.espresso > pw.relax.espresso
  cd ../
done
