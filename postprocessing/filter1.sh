#!/bin/bash

for fname in `ls $1`
do
  if [[ ! -s $1/$fname ]]
  then
      echo $fname >> empty.txt
      rm $1/$fname
  fi
done
