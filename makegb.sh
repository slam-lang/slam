#!/bin/bash

./make.sh

./slim -i lib/stdlib.slm,lib/mem.slm,lib/tables.slm,lib/arrays.slm,lib/log.slm,lib/os.slm -o slim-gb slim-gb.slm

sudo cp slim-gb /usr/bin

rgbgfx -o game/lol.2bpp game/lol.png

nim r game/map.nim game/map.tmx game/map.bin

./slim-gb -i lib/gblib.slm -o gb.gb game/gb.slm $@ || echo $?

mgba-qt gb.gb
