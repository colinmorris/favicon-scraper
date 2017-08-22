#!/bin/bash

header="colorspace,depth,width,height,fname,type,format,nimgs,compression"
echo $header > magick.csv
for f in $1/*
do
  identify -format "%[colorspace],%[depth],%[width],%[height],%f,%[type],%m,%n,%C\n" $f >> magick.csv
done
