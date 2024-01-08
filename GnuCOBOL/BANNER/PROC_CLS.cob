*> Mission: Show how LINKAGE WRITING is POSSIBLE. Constants OK in GNU - everywhere!
*> GnuCOBOL: cobc -free PROC_CLS.cob
*> Source: https://github.com/soft9000/COBOL/tree/master/TheMajority/BANNER
IDENTIFICATION DIVISION.
PROGRAM-ID. PROC_CLS.

DATA DIVISION.
WORKING-STORAGE SECTION.
COPY 'WS_COLORS.cpy'.
01 CELL_SS PIC 9(5).
01 LINE_SS PIC 9(5).

LINKAGE SECTION.
COPY 'CB_CLS.cpy'.

PROCEDURE DIVISION USING PARAMS-CLS.
PERFORM CLEAR-LINE 
    VARYING LINE_SS FROM 1 BY 1 
    UNTIL LINE_SS > SCREEN_HEIGHT
GOBACK.

CLEAR-LINE.
PERFORM VARYING CELL_SS FROM 1 BY 1 
    UNTIL CELL_SS > SCREEN_WIDTH
    DISPLAY SCREEN_CHAR
        AT LINE LINE_SS COLUMN CELL_SS 
        WITH FOREGROUND-COLOR IS COLOR_FORE   
        BACKGROUND-COLOR      IS COLOR_BACK
END-PERFORM.
END PROGRAM PROC_CLS.


