all: libradamsa.c radamsa.h
	$(CC) -O3 -I $(PWD) -o libradamsa.a -c libradamsa.c
