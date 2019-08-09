FLAGS=-std=c11 -g -static

s_cc: s_cc.c

test: s_cc
	./test.sh

clean:
	rm -f 9cc *.o *~ tmp*

.PHONY: test clean
