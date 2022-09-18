#!/bin/bash

./make.sh

./slam -i lib -o slam-gb slam-gb.slm

rgbgfx -o game/lol.2bpp game/lol.png

nim r game/map.nim game/map.tmx game/map.bin

./slam-gb -i lib/gblib.slm -o gb.gb game/gb.slm $@ || echo $?

mgba-qt gb.gb
