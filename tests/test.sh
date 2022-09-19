#!/bin/bash

set -xe

rm -f ./test${1} ./temp.fasm

../slam  -o test${1} test${1}.slm
time ./test${1}
rm ./test${1}

