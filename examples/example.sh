#!/bin/bash

../slim -i ../lib -o $1 $1.slm

./$1

rm $1
