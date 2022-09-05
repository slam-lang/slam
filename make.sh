#!/bin/bash

[[ ! -f ./slim ]] && ./old/slim.py -o slim ./slim.slm && rm output.*

./slim -i lib/stdlib.slm,lib/tables.slm,lib/arrays.slm,lib/log.slm,lib/os.slm -o slim slim.slm $@

./slim -v

