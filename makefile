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

tests/test: slam
	./slam -o tests/test tests/test.slm

tests/slam2/test: slam2
	./slam2 -o tests/slam2/test tests/slam2/test.slm

test: tests/test
	rm -f tests/temp.fasm
	cd tests; ./test
	rm tests/test -rf
	rm tests/tester

test2: tests/slam2/test
	rm -f tests/slam2/test.asm
	cd tests/slam2; ./test
	rm tests/slam2/test -rf
	rm tests/slam2/tester

slam2: slam
	cp -r compiler ~/.local/slam/lib/
	./slam -o slam2 slam2.slm	

s2.asm: slam2
	./slam2 -o s2 slam2.slm	
