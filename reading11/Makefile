CC=	gcc
CFLAGS=	-Wall -g -std=gnu99
LIBS=	

test:	
	@$(MAKE) -sk test-quiz test-program

program:    program.c
	$(CC) $(CFLAGS) -o $@ $^ $(LIBS)

test-quiz:
	../.scripts/check.py

test-program: program
	curl -sLO https://www3.nd.edu/~pbui/teaching/cse.30341.fa24/static/txt/reading11/test_program.sh
	chmod +x test_program.sh
	./test_program.sh

clean:
	rm -f program
