cobol = cobc
opts = -x -free

OBJS = 	BANNER_EXAMPLE

all: $(OBJS)

BANNER_EXAMPLE: BANNER_EXAMPLE.cob BIG_CHARS2.cpy
	$(cobol) $(opts) BANNER_EXAMPLE.cob

clean:
	rm -f $(OBJS)


