all: libradamsa.c radamsa.h
	$(CC) -O3 -I $(PWD) -o libradamsa.a -c libradamsa.c

test: libradamsa-test.c
	cc -O2 -I $(PWD) -o libradamsa-test libradamsa-test.c libradamsa.a
	./libradamsa-test libradamsa-test.c | grep "library test passed"
	rm /tmp/libradamsa-*.fuzz

clean:
	rm -f libradamsa.a libradamsa-test
