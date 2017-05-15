#!/bin/bash

size=`identify -format "%[fx:w]_%[fx:h]" $1`
if [[ -d sorted/$size ]]
then
    mv $1 sorted/$size/
else
    mv $1 sorted/misc/
fi

