*> Mission: Demonstrate a call to an included procedure (PROC_).
*> GnuCOBOL: cobc -x -j -free BANNER_EXAMPLE3.cob
*> Source: https://github.com/soft9000/COBOL/tree/master/TheCommons/BANNER
IDENTIFICATION DIVISION.
PROGRAM-ID. BANNER-EXAMPLE3.
PROCEDURE DIVISION.
DISPLAY ' '.
CALL 'PROC_BANNER' USING '98.76.54'.
DISPLAY ' '.
DISPLAY "EXAMPLE ENDS".
GOBACK.

END PROGRAM BANNER-EXAMPLE3. *> New!

COPY "PROC_BANNER3.cob".
