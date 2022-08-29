main: slim.py slim.slm lib/stdlib.slm lib/tables.slm
	./slim.py slim.slm -o main

run: main
	cat lib/stdlib.slm lib/tables.slm slim.slm > slim2.slm
	./main slim2.slm

tests/test1: tests/test1.slm lib/stdlib.slm slim.py
	./slim.py -o $@ $<

tests/test2: tests/test2.slm lib/tables.slm slim.py
	./slim.py -o $@ $<
	tests/test2
