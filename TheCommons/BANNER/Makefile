# New to using make / Makefiles?
# https://www.udemy.com/course/the-gnu-tool-primer/?referralCode=E858B2C2AC9CD872A100
# :-)
#
cobol = cobc
opts = -x -free

OBJS = 	BANNER_EXAMPLE PROC_BANNER2 PROC_BANNER3 BANNER_EXAMPLE3

all: $(OBJS)

BANNER_EXAMPLE: BANNER_EXAMPLE.cob BIG_CHARS2.cpy BIG_CHARS1.cpy
	$(cobol) $(opts) BANNER_EXAMPLE.cob

PROC_BANNER2: BANNER_EXAMPLE2.cob PROC_BANNER2.cob BIG_CHARS2.cpy BIG_CHARS1.cpy
	$(cobol) $(opts) BANNER_EXAMPLE2.cob PROC_BANNER2.cob -o PROC_BANNER2

PROC_BANNER3: BANNER_EXAMPLE2.cob PROC_BANNER3.cob BIG_CHARS3.cpy BIG_CHARS1.cpy
	$(cobol) $(opts) BANNER_EXAMPLE2.cob PROC_BANNER3.cob -o PROC_BANNER3

BANNER_EXAMPLE3: BANNER_EXAMPLE3.cob PROC_BANNER3.cob BIG_CHARS3.cpy BIG_CHARS1.cpy
	$(cobol) $(opts) BANNER_EXAMPLE3.cob

clean:
	rm -f $(OBJS) 
	rm -f *.so


