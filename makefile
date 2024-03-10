all: eater.o
	ld65 -C eater.cfg tmp/eater.o -o tmp/eater.bin -Ln tmp/eater.lbl

eater.o: msbasic.s
	ca65 -D eater msbasic.s -o tmp/eater.o
