#!/bin/bash

set -xe

../slim -a -o p${1} -i ../lib/stdlib.slm,../lib/tables.slm p${1}.slm
time ./p${1}
rm ./p${1}
