#!/bin/bash

for wfc in $(seq 50 25 750)
  do
  mkdir wfc_$wfc
  sed "s/VAR_WFC/$wfc/g" pw.relax.espresso > wfc_$wfc/pw.relax.espresso
done
