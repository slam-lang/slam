#!/bin/bash

set -xe

rm -f ./test${1} ./temp.fasm

../slim  -o test${1} -i ../lib test${1}.slm
time ./test${1}
rm ./test${1}

