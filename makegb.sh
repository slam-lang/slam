#!/bin/bash

./make.sh

./slim -i lib/stdlib.slm,lib/mem.slm,lib/tables.slm,lib/arrays.slm,lib/log.slm,lib/os.slm -o slim-gb slim-gb.slm

rgbgfx -o game/lol.2bpp game/lol.png

./slim-gb -i lib/gblib.slm -o gb.gb game/gb.slm $@ || echo $?

mgba-qt gb.gb
