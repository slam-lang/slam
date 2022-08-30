default: slim
run: slimNative

slim: slim.py slim.slm lib/stdlib.slm lib/tables.slm
	./slim.py slim.slm -o slim
	
slim2.slm:
	cat lib/stdlib.slm lib/tables.slm slim.slm > slim2.slm

slimNative: slim slim2.slm
	./slim slim2.slm -o slimNative

slimNativeRun: slimNative
	./slimNative

tests/test%: tests/test%.slm lib/stdlib.slm slim.py
	./slim.py -o $@ $<
	$@
