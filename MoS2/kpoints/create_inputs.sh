#!/bin/bash

for k in $(seq 2 2 20)
  do
  mkdir k_$k
  sed "s/VAR_K/$k/g" pw.relax.espresso > k_$k/pw.relax.espresso
done
