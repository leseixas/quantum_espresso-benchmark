#!/bin/bash

for a in $(seq 3.000 0.005 3.300)
do
  cd a_$a
  energy=`grep ! pw.relax.out | awk '{print $5}' | tail -1`
  echo $a $energy
  cd ..
done
