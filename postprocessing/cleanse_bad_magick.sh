#!/bin/bash

grep -o 'imgs/[^ ]*.ico' badmagick.txt | xargs -I{} mv {} badmagicks/
