#!/bin/bash

guess=`file -b $1`
echo $guess >> filetypes.txt

dest='nonimgs/other/'
if [[ $guess =~ ^MS\ Windows\ icon ]]
then
    dest='imgs/icon/'
elif [[ $guess =~ ^PNG ]]
then
    dest='imgs/png/'
elif [[ $guess =~ ^HTML ]]
then
    dest='nonimgs/html/'
elif [[ $guess =~ ^GIF ]]
then
    dest='imgs/gif/'
elif [[ $guess =~ ^PC\ bitmap ]]
then
    dest='imgs/bmp/'
elif [[ $guess =~ ^JPEG ]]
then
    dest='imgs/jpeg/'
elif [[ $guess =~ ^ASCII ]]
then
    dest='nonimgs/ascii/'
elif [[ $guess =~ ^UTF ]]
then
    dest='nonimgs/utf/'
fi

mv $1 $dest
#cp $1 "tmp/${dest}" 
