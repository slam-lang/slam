#!/bin/bash

../slim -i ../lib -o $1 $1.slm -a

./$1

#rm $1
