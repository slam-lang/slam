main: output.o
	ld -dynamic-linker /lib64/ld-linux-x86-64.so.2 -o main -lc output.o 

output.o: output.asm
	nasm -f elf64 output.asm

output.asm: slim.py lol.slm stdlib.slm
	./slim.py
