#!/bin/bash

../slim -a -o test${1} -i ../lib/stdlib.slm,../lib/tables.slm test${1}.slm
time ./test${1}
rm ./test${1}
