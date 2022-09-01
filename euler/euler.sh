#!/bin/bash

set -xe

../slim -a -o problem -i ../lib/stdlib.slm,../lib/tables.slm p${1}.slm
/usr/bin/ld -dynamic-linker /lib64/ld-linux-x86-64.so.2 -o p${1} -lc temp.o
rm ./temp.nasm ./temp.o
time ./p${1}
rm ./p${1}
