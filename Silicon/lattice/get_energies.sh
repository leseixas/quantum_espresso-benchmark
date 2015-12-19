#!/bin/bash

for a in $(seq 5.300 0.005 5.600)
do
  cd a_$a
  energy=`grep ! pw.relax.out | awk '{print $5}'`
  echo $a $energy
  cd ..
done
