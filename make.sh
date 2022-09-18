#!/bin/bash

[[ ! -f ./slam ]] && ./old/slam.py -i lib -o ./slam ./slam.slm && rm output.*

./slam -i lib -o ./slam slam.slm $@ || exit

./slam -v

