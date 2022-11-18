default: clean slam.asm slam

slam: slam.slm
	slam -o slam slam.slm

install: slam
	cp slam /usr/bin
	mkdir -p ~/.local/slam/
	cp -r lib ~/.local/slam/

clean:
	rm -f slam2
	rm -f s2.asm
	rm -f slam
	rm -f slam-pyc
	rm -f temp.fasm
	rm -f s2
	rm -f tests/slam2/test

tests/slam2/test: slam2
	slam -o tests/slam2/test tests/slam2/test.slm

test: tests/test
	rm -f tests/slam2/test.asm
	cd tests/slam2; ./test
	rm tests/slam2/test -rf
	rm tests/slam2/tester

slam.asm:
	rm -f slam.asm
	slam -a -o slam slam.slm	
