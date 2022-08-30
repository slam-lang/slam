default: slim
run: slimNative

slim: slim.py slim.slm lib/stdlib.slm lib/tables.slm
	./slim.py slim.slm -o slim
	
slim2.slm:
	cat lib/stdlib.slm lib/tables.slm slim.slm > slim2.slm

slimNative: slim slim2.slm
	./slim slim2.slm -o slimNative

slimNativeRun: slimNative
	./slimNative slim2.slm -o slim2

tests/test%: tests/test%.slm lib/stdlib.slm slim.py
	./slim.py -o $@ $<
	$@

diff: slimNativeRun
	cat temp.nasm | sed -n "/^ .*/P" | sed "s/addr[_0-9]*//" | sed "s/;.*//" > tempcode
	cat output.asm | sed -n "/^ .*/P" | sed "s/addr[_0-9]*//" | sed "s/;.*//" > outcode
	diff tempcode outcode > lol
