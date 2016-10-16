#!/bin/bash

for k in $(seq 2 2 20)
do
  mkdir k_$k
  cd k_$k
  for T in $(seq 0.005 0.005 0.1)
  do
    mkdir T_$T
    cd T_$T
    sed "s/VAR_T/$T/" ../../pw.relax.espresso > .temp.espresso
    sed "s/VAR_K/$k/g" .temp.espresso > pw.relax.espresso
    rm .temp.espresso
    cd ..
  done
  cd ..
done
