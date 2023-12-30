*> Mission: Demonstrate a call to a linked procedure (PROC_).
*> GnuCOBOL: cobc -x -j -free BANNER_EXAMPLE2.cob PROC_BANNER2.cob
*> Source: https://github.com/soft9000/COBOL/tree/master/TheCommons/BANNER
IDENTIFICATION DIVISION.
PROGRAM-ID. BANNER-EXAMPLE2.
PROCEDURE DIVISION.
DISPLAY ' '.
CALL 'PROC_BANNER' USING '65.42.21'.
DISPLAY ' '.
DISPLAY "EXAMPLE ENDS".
GOBACK.
