default: slam

slam-pyc: old/slam.py
	./old/slam.py -i ~/.local/slam/lib -o slam-pyc slam.slm
	rm output.o output.asm
	./slam-pyc -o slam slam.slm

slam: slam-pyc slam.slm
	./slam -o slam slam.slm

install: slam
	cp slam /usr/bin
	mkdir -p ~/.local/slam/
	cp -r lib ~/.local/slam/

clean:
	rm -f slam
	rm -f slam-pyc
	rm -f slam-gb
	rm -f gb.gb gb.sav temp.o

tester: slam
	slam -o tests/test tests/test.slm

test: tester
	cd tests; ./test
	rm tests/test -rf
	rm tests/tester

slam-gb: slam
	slam -i lib -o slam-gb slam-gb.slm

game/lol.2bpp: game/lol.png
	rgbgfx -o game/lol.2bpp game/lol.png

game/map.bin: game/map.tmx
	nim r game/map.nim game/map.tmx game/map.bin

gb.gb: slam-gb lib/gblib.slm game/gb.slm
	./slam-gb -i lib/gblib.slm -o gb.gb game/gb.slm; exit 0

run-gb: gb.gb
	mgba-qt gb.gb
