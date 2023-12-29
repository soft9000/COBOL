*> Mission: Demonstrate multi-dimensional array.
*> GnuCOBOL: cobc -free PROC_BANNER3.cob
*> Source: https://github.com/soft9000/COBOL/tree/master/TheCommons/BANNER
IDENTIFICATION DIVISION.
PROGRAM-ID. PROC_BANNER.

DATA DIVISION.
WORKING-STORAGE SECTION.
COPY "BIG_CHARS3.cpy".

*> Can only fit 8 across the screen (todo: calculate)
01 BANNER_CHARS_WIDE PIC 9 VALUE 8.

01 RASTER-GROUP.
   05 RASTER_BUFFER PIC X(648)  VALUE SPACES.
   05 RASTER_SEG REDEFINES RASTER_BUFFER OCCURS 72 TIMES
      INDEXED BY RASTER_SEG_SS.
      10 FILLER PIC X(9).
   05 RASTER_LINE REDEFINES RASTER_BUFFER OCCURS 9 TIMES
      INDEXED BY RASTER_LINE_SS.
      10 FILLER PIC X(72).

01 OFFSETS.
   05 RASTER_CHAR_OFFSET PIC 9(4) VALUE 1.
   05 RASTER_SEG_OFFSET  PIC 9(4) VALUE 1.

01 COUNTERS.
   05 LOOP-01            PIC 9(4) VALUE 0.

LINKAGE SECTION.
01 BANNER-GROUP.
   05 BANNER_FIELD PIC X(8).
   05 BANNER_ARRAY 
      REDEFINES BANNER_FIELD OCCURS 8 TIMES 
      INDEXED BY BANNER_ARRAY_SS.
      10 FILLER PIC X.

PROCEDURE DIVISION USING BANNER-GROUP.
DISPLAY ' '.
PERFORM VARYING BANNER_ARRAY_SS 
  FROM 1 BY 1 UNTIL BANNER_ARRAY_SS > BANNER_CHARS_WIDE
    MOVE 1 TO CHAR_SS
    SEARCH CHARS 
        AT END DISPLAY BANNER_ARRAY(BANNER_ARRAY_SS) ' NOT FOUND!'
            GOBACK
        WHEN BANNER_ARRAY(BANNER_ARRAY_SS) = CHAR_NAME OF CHARS(CHAR_SS)
            *> DISPLAY 'GOT: [' CHAR_NAME OF CHARS(CHAR_SS) ']'
            PERFORM SEG_TO_RASTER
            ADD 1 TO RASTER_CHAR_OFFSET
            MOVE BANNER_ARRAY_SS TO RASTER_SEG_OFFSET
            ADD 1 TO RASTER_SEG_OFFSET
            MULTIPLY RASTER_SEG_OFFSET BY RASTER_CHAR_OFFSET
        END-SEARCH
    END-PERFORM

PERFORM DISPLAY_RASTER.
DISPLAY ' '.

EXIT PROGRAM.

DISPLAY_RASTER.
    PERFORM VARYING RASTER_LINE_SS 
    FROM 1 BY 1 UNTIL RASTER_LINE_SS > CHAR_HEIGHT
    DISPLAY '['RASTER_LINE(RASTER_LINE_SS)']'
    END-PERFORM.

*> RASTERIZE CHARACTER, BY SEGMENT
SEG_TO_RASTER.
    PERFORM VARYING LOOP-01 FROM 1 BY 1 UNTIL LOOP-01 > CHAR_HEIGHT
        ADD BANNER_CHARS_WIDE TO RASTER_SEG_OFFSET
        MOVE SEG(CHAR_SS, LOOP-01) TO RASTER_SEG(RASTER_SEG_OFFSET)
    END-PERFORM
.
