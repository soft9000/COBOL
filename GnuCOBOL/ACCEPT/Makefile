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

OBJS = 	acceptance

all: $(OBJS)

# Mission: Demonstrate ACCEPTance promises & caveats.
acceptance: acceptance.cob
	$(cobol) $(opts) acceptance.cob

clean:
	rm -f $(OBJS) 
	rm -f *.so


