#!/bin/bash

for a in $(seq 2.400 0.005 2.600)
do
  cd a_$a
  energy=`grep ! pw.relax.out | awk '{print $5}'`
  echo $a $energy
  cd ..
done
