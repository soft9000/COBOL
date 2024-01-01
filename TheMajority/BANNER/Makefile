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

OBJS = 	BannerClock

all: $(OBJS)

# Mission: Show how LINKAGE WRITING is POSSIBLE. Caveat: Constants in LS!
BannerClock: BannerClock.cob PROC_BANNER8.cob CB_RASTER_IO.cpy \
	WS_CURRENT_DATE.cpy BIG_CHARS3.cpy BIG_CHARS1.cpy
	$(cobol) $(opts) BannerClock.cob

clean:
	rm -f $(OBJS) 
	rm -f *.so


