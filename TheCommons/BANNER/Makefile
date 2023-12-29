cobol = cobc
opts = -x -free

OBJS = 	BANNER_EXAMPLE BANNER_EXAMPLE2

all: $(OBJS)

BANNER_EXAMPLE: BANNER_EXAMPLE.cob BIG_CHARS2.cpy
	$(cobol) $(opts) BANNER_EXAMPLE.cob

BANNER_EXAMPLE2: BANNER_EXAMPLE2.cob PROC_BANNER2.cob BIG_CHARS2.cpy 
	$(cobol) $(opts) BANNER_EXAMPLE2.cob PROC_BANNER2.cob

clean:
	rm -f $(OBJS)
	rm -f *E 
	rm -f *2 
	rm -f *.so


