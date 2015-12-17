#!/bin/bash

for z in $(seq -f %3.1f 5.0 1.0 30.0)
  do
  mkdir z_$z
  cd z_$z
  sed "s/VAR_z/$z/g" ../pw.relax.espresso > pw.relax.espresso
  cd ..
done
