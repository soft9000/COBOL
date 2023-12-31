# The order of the `make` herein is the order to review each mission.
# Videos available. For more information:
# https://github.com/soft9000/COBOL
#
# If you are new to using make / Makefiles you may enjoy:
# https://www.udemy.com/course/the-gnu-tool-primer/?referralCode=E858B2C2AC9CD872A100
#
# -- Happy 'Hackin!
# :-)
#
# Randall
#
cobol = cobc
opts = -x -free

OBJS = 	BANNER_EXAMPLE PROC_BANNER2 PROC_BANNER3 \
	BANNER_EXAMPLE3 BANNER_EXAMPLE4 BANNER_CLOCK \
	BANNER_CLOCK1 BANNER_EXAMPLE5 # BANNER_EXAMPLE7 # BANNER_EXAMPLE6

all: $(OBJS)

# Demonstrate a Rasterization-In-Place (R.I.P).
BANNER_EXAMPLE: BANNER_EXAMPLE.cob BIG_CHARS2.cpy BIG_CHARS1.cpy
	$(cobol) $(opts) BANNER_EXAMPLE.cob

# Demonstrate a LIBRARY (.so) creation - "linear" example
PROC_BANNER2: BANNER_EXAMPLE2.cob PROC_BANNER2.cob BIG_CHARS2.cpy BIG_CHARS1.cpy
	$(cobol) $(opts) BANNER_EXAMPLE2.cob PROC_BANNER2.cob -o PROC_BANNER2

# Mission: Demonstrate a call to a linked procedure (PROC_) - "2D Table"
PROC_BANNER3: BANNER_EXAMPLE2.cob PROC_BANNER3.cob BIG_CHARS3.cpy BIG_CHARS1.cpy
	$(cobol) $(opts) BANNER_EXAMPLE2.cob PROC_BANNER3.cob -o PROC_BANNER3

# Mission: Demonstrate a call to an included procedure (PROC_).
BANNER_EXAMPLE3: BANNER_EXAMPLE3.cob PROC_BANNER3.cob BIG_CHARS3.cpy BIG_CHARS1.cpy
	$(cobol) $(opts) BANNER_EXAMPLE3.cob

# Mission: Demonstrate a call + return code from a procedure (PROC_).
BANNER_EXAMPLE4: BANNER_EXAMPLE4.cob PROC_BANNER4.cob BIG_CHARS3.cpy BIG_CHARS1.cpy
	$(cobol) $(opts) BANNER_EXAMPLE4.cob

# Mission: Demonstrate time + the benifit of an enumerated 
BANNER_CLOCK: BANNER_CLOCK.cob BIG_CHARS3.cpy BIG_CHARS1.cpy WS_CURRENT_DATE.cpy
	$(cobol) $(opts) BANNER_CLOCK.cob

# Mission: Demonstrate time converted to an 'HH.MM.SS' display 
BANNER_CLOCK1: BANNER_CLOCK1.cob BIG_CHARS3.cpy BIG_CHARS1.cpy WS_CURRENT_DATE.cpy
	$(cobol) $(opts) BANNER_CLOCK1.cob

# Mission: Demonstrate a CUSTOM call + return code from a procedure (PROC_).
BANNER_EXAMPLE5: BANNER_EXAMPLE5.cob PROC_BANNER5.cob CB_RETURN_CODES.cpy \
	BIG_CHARS3.cpy BIG_CHARS1.cpy
	$(cobol) $(opts) BANNER_EXAMPLE5.cob

# Mission: Show how RECEIVING a GROUP is NOT POSSIBLE, but how RETURNING a GROUP is.
BANNER_EXAMPLE6: BANNER_EXAMPLE6.cob PROC_BANNER6.cob CB_RETURN_CODES.cpy \
	CB_RASTER_GROUP.cpy BIG_CHARS3.cpy BIG_CHARS1.cpy
	$(cobol) $(opts) BANNER_EXAMPLE6.cob

# Mission: Show how SENDING GROUP is POSSIBLE, but how LINKAGE WRITING is NOT.
BANNER_EXAMPLE7: BANNER_EXAMPLE7.cob PROC_BANNER7.cob CB_RASTER_IO.cpy \
	BIG_CHARS3.cpy BIG_CHARS1.cpy
	$(cobol) $(opts) BANNER_EXAMPLE7.cob

clean:
	rm -f $(OBJS) 
	rm -f *.so


