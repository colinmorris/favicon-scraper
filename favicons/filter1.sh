#!/bin/bash

if [[ ! -s $1 ]]
then
    echo $1 >> empty.txt
    rm $1
fi
