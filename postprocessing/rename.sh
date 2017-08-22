#!/bin/bash

for f in `ls $1 `
do
  dest=${f/.favicon.ico/.ico}
  #echo "$f -> $dest"
  mv $1/$f $1/$dest
done
