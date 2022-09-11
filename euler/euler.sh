#!/bin/bash

set -xe

../slim -o p${1} -i ../lib p${1}.slm
time ./p${1}
./p${1} | wc -l
rm ./p${1}
