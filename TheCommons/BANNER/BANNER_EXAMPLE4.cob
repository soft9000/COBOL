*> Mission: Demonstrate a call to an included procedure (PROC_).
*> GnuCOBOL: cobc -x -j -free BANNER_EXAMPLE4.cob
*> Source: https://github.com/soft9000/COBOL/tree/master/TheCommons/BANNER
IDENTIFICATION DIVISION.
PROGRAM-ID. BANNER-EXAMPLE4.
PROCEDURE DIVISION.
DISPLAY ' '.
CALL 'PROC_BANNER' USING '876.543!'.
DISPLAY 'Magic Register: [' RETURN-CODE ']'. *> New!
DISPLAY "EXAMPLE4 ENDS".
GOBACK.

END PROGRAM BANNER-EXAMPLE4.

COPY "PROC_BANNER4.cob".
