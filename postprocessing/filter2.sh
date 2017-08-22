#!/bin/bash

for fname in `ls $1`
do
  guess=`file -b $1/$fname`
  echo -e "$fname\t$guess" >> filetypes.txt

  dest='nonimgs/other/'
  if [[ $guess =~ ^MS\ Windows\ icon ]]
  then
      dest='imgs/'
  elif [[ $guess =~ ^PNG ]]
  then
      dest='imgs/'
  elif [[ $guess =~ ^HTML ]]
  then
      dest='nonimgs/html/'
  elif [[ $guess =~ ^GIF ]]
  then
      dest='imgs/'
  elif [[ $guess =~ ^PC\ bitmap ]]
  then
      dest='imgs/'
  elif [[ $guess =~ ^JPEG ]]
  then
      dest='imgs/'
  elif [[ $guess =~ ^ASCII ]]
  then
      dest='nonimgs/ascii/'
  elif [[ $guess =~ ^UTF ]]
  then
      dest='nonimgs/utf/'
  fi

  mv $1/$fname $dest
  #cp $1 "tmp/${dest}" 
done
