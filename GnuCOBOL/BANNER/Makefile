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

OBJS = 	ConstantClock CoolerClock ShockClock CountdownClock

all: $(OBJS)

# Mission: Demonstrate a colorized console clock.
ConstantClock: ConstantClock.cob PROC_BANNER9.cob CB_RASTER_IO.cpy \
	WS_CURRENT_DATE.cpy BIG_CHARS3.cpy BIG_CHARS1.cpy \
	WS_COLORS.cpy
	$(cobol) $(opts) ConstantClock.cob

# Mission: Demonstrate how to replace a character in a string buffer.
CoolerClock: CoolerClock.cob PROC_BANNER9.cob PROC_CLS.cob \
    CB_CLS.cpy CB_RASTER_IO.cpy WS_CURRENT_DATE.cpy \
	BIG_CHARS3.cpy BIG_CHARS1.cpy WS_COLORS.cpy
	$(cobol) $(opts) CoolerClock.cob

# Mission: Demonstrate an attention-getting time display.
ShockClock: ShockClock.cob PROC_BANNER9.cob PROC_CLS.cob \
    CB_CLS.cpy CB_RASTER_IO.cpy BIG_CHARS3.cpy BIG_CHARS1.cpy WS_COLORS.cpy
	$(cobol) $(opts) ShockClock.cob

# Mission: Demonstrate an attention-getting countdown! (W.I.P)
CountdownClock: CountdownClock.cob PROC_BANNER9.cob PROC_CLS.cob \
    CB_CLS.cpy CB_RASTER_IO.cpy BIG_CHARS3.cpy BIG_CHARS1.cpy WS_COLORS.cpy
	$(cobol) $(opts) CountdownClock.cob

clean:
	rm -f $(OBJS) 
	rm -f *.so


