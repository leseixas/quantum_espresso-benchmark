#!/bin/bash

for a in $(seq 3.40 0.01 3.80)
do
  cd a_$a
  energy=`grep ! pw.relax.out | awk '{print $5}'`
  echo $a $energy
  cd ..
done
