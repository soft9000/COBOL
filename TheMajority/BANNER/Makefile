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
opts = -x -free --debug

OBJS = 	BannerClock

all: $(OBJS)

# Mission: Demonstrate LS I/O. Also suporting Constants / Level 78.
BannerClock: BannerClock.cob PROC_BANNER8.cob CB_RASTER_IO.cpy \
	WS_CURRENT_DATE.cpy BIG_CHARS3.cpy BIG_CHARS1.cpy \
	CB_YIKES.cpy
	$(cobol) $(opts) BannerClock.cob

clean:
	rm -f $(OBJS) 
	rm -f *.so


