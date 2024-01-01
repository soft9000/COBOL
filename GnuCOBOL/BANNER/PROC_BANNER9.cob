*> Mission: Show how LINKAGE WRITING is POSSIBLE. Constants OK in GNU - everywhere!
*> GnuCOBOL: cobc -free PROC_BANNER8.cob
*> Source: https://github.com/soft9000/COBOL/tree/master/TheMajority/BANNER
IDENTIFICATION DIVISION.
PROGRAM-ID. PROC_BANNER.

DATA DIVISION.
WORKING-STORAGE SECTION.
COPY "BIG_CHARS3.cpy".

*> Can only fit 8 across the screen (todo: calculate)
01 BANNER_CHARS_WIDE PIC 9 VALUE 8.

01 OFFSETS.
   05 RASTER_CHAR_OFFSET PIC 9(4) VALUE 1.
   05 RASTER_SEG_OFFSET  PIC 9(4) VALUE 1.

01 COUNTERS.
   05 LOOP-01            PIC 9(4) VALUE 0.

01 RASTER-GROUP.
   05 RASTER_BUFFER PIC X(648)  VALUE SPACES.
   05 RASTER_SEG REDEFINES RASTER_BUFFER OCCURS 72 TIMES
      INDEXED BY RASTER_SEG_SS.
      10 FILLER PIC X(9).
   05 RASTER_LINE REDEFINES RASTER_BUFFER OCCURS 9 TIMES
      INDEXED BY RASTER_LINE_SS.
      10 FILLER PIC X(72).

LINKAGE SECTION.
COPY 'CB_RASTER_IO.cpy'.

PROCEDURE DIVISION USING RASTER-IO.
MOVE 1 TO RASTER_SEG_OFFSET.
PERFORM VARYING BANNER_ARRAY_SS 
  FROM 1 BY 1 UNTIL BANNER_ARRAY_SS > BANNER_CHARS_WIDE
    MOVE 1 TO CHAR_SS
    SEARCH CHARS 
        AT END MOVE RASTER_CODE_ERROR TO RASTER_RETURN_CODE
            EXIT PROGRAM
        WHEN BANNER_ARRAY(BANNER_ARRAY_SS) = CHAR_NAME OF CHARS(CHAR_SS)
            PERFORM SEG_TO_RASTER
            ADD 1 TO RASTER_CHAR_OFFSET
            MOVE BANNER_ARRAY_SS TO RASTER_SEG_OFFSET
            ADD 1 TO RASTER_SEG_OFFSET
            MULTIPLY RASTER_SEG_OFFSET BY RASTER_CHAR_OFFSET
        END-SEARCH
    END-PERFORM

MOVE RASTER_CODE_SUCCESS TO RASTER_RETURN_CODE.
*> TODO: Why not just raster to NINE_LINES?
PERFORM VARYING RASTER_LINE_SS FROM 1 BY 1 UNTIL RASTER_LINE_SS = RASTER_LINES
    MOVE RASTER_LINE(RASTER_LINE_SS) TO NINE_LINES(RASTER_LINE_SS)
END-PERFORM
EXIT PROGRAM.

*> RASTERIZE CHARACTER, BY SEGMENT
SEG_TO_RASTER.
    PERFORM VARYING LOOP-01 FROM 1 BY 1 UNTIL LOOP-01 > CHAR_HEIGHT
        MOVE SEG(CHAR_SS, LOOP-01) TO RASTER_SEG(RASTER_SEG_OFFSET)
        ADD BANNER_CHARS_WIDE TO RASTER_SEG_OFFSET
    END-PERFORM
.

END PROGRAM PROC_BANNER.