*> NOTE: GnuCOBOL has a huge problem with passing an initialized copybook
*> here. Recommended using constants here (Standard 2002), instead. Our
*> tactic is to simply re-use CB_RETURN_CODES for RASTER_RETURN_CODE.
*> 
01 RASTER-IO.
   05 RASTER_RETURN_CODE        PIC 99.
      88 RASTER_SUCCESS         VALUE 1.
      88 RASTER_WARNING         VALUE 4.
      88 RASTER_EXCEPTION       VALUE 8.
      88 RASTER_ERROR           VALUE 9. 
   05 NINE_LINES OCCURS 9 TIMES.
      10 FILLER PIC X(72) VALUE ALL '/'.
   05 BANNER_FIELD PIC X(8).
   05 BANNER_ARRAY 
      REDEFINES BANNER_FIELD OCCURS 8 TIMES 
      INDEXED BY BANNER_ARRAY_SS.
      15 FILLER PIC X.
      
