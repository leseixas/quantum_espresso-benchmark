#!/bin/bash

for temp in 1.0 0.3 0.1 0.03 0.01 0.003 0.001
do
  mkdir temp_$temp
  cd temp_$temp
  for k in $(seq 2 2 20)
    do
    mkdir k_$k
    cd k_$k
    sed "s/VAR_TEMP/$temp/" ../../pw.relax.espresso > .temp.espresso
    sed "s/VAR_K/$k/g" .temp.espresso > pw.relax.espresso
    rm .temp.espresso
    cd ..
  done
  cd ..
done
