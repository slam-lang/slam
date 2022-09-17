#!/bin/bash

./make.sh

./slim -i lib -o slim-gb slim-gb.slm

rgbgfx -o game/lol.2bpp game/lol.png

nim r game/map.nim game/map.tmx game/map.bin

./slim-gb -i lib/gblib.slm -o gb.gb game/gb.slm $@ || echo $?

mgba-qt gb.gb
