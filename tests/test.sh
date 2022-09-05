#!/bin/bash

../slim -o test${1} -i ../lib/stdlib.slm,../lib/log.slm,../lib/os.slm,../lib/inet.slm,../lib/math.slm,../lib/arrays.slm,../lib/tables.slm test${1}.slm
time ./test${1}
#rm ./test${1}
