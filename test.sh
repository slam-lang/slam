#!/bin/bash

pushd tests/
../slim -i ../lib -o ./test test.slm
./test
popd
