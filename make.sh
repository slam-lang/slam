#!/bin/bash

[[ ! -f ./slim ]] && ./old/slim.py -i lib -o slim ./slim.slm && rm output.*

./slim -i lib -o slim slim.slm $@ || echo $?

./slim -v

