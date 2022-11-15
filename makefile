default: clean slam s2.asm

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
	rm -f slam2
	rm -f s2.asm
	rm -f slam
	rm -f slam-pyc
	rm -f temp.fasm
	rm -f s2

tester: slam
	slam -o tests/test tests/test.slm

test: tester
	cd tests; ./test
	rm tests/test -rf
	rm tests/tester

slam2:
	cp -r compiler ~/.local/slam/lib/
	./slam -o slam2 slam2.slm	

s2.asm: slam2
	./slam2 -o s2 slam2.slm	
