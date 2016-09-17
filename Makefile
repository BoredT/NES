all: 	main.o crt.o
		ld65 main.o crt0.o --config nes.cfg --lib runtime.lib -o main.bin

main.o: main.s
		ca65 main.s

main.s:
		cc65 main.c

crt.o: 
		ca65 crt0.s
