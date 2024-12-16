*> The following demonstration is part of my "Simply COBOL"
*> educational opportunity. "Simply COBOL" is now available at
*> https://www.udemy.com/course/simply-cobol/?referralCode=EA98738662CCF9535E2B
*>
*> Mission: INTRO TO FILE PROCESSING.
*> Demonstrate file open / close / goback
*> cobc -x -j -free DEMO_READ_FILE_CHARS.cob
IDENTIFICATION DIVISION. 
PROGRAM-ID. DEMO_READ_FILE_CHARS.

ENVIRONMENT DIVISION.
INPUT-OUTPUT SECTION.
FILE-CONTROL.
SELECT COBOL-FILE
    ASSIGN TO 'THE-CHARS.SDF'.

DATA DIVISION.

FILE SECTION.               *> NEW!
FD COBOL-FILE
RECORD CONTAINS 1 CHARACTERS
DATA RECORD IS Z-BUFFER.
01 Z-BUFFER.
    05 CHAR-ONE             PIC X VALUE '?'.

PROCEDURE DIVISION.
    OPEN INPUT COBOL-FILE
    PERFORM UNTIL (CHAR-ONE = HIGH-VALUES)
        PERFORM PROC_READ
        DISPLAY "Buffer: [" CHAR-ONE "]"
    END-PERFORM
    DISPLAY "Mooo!"     *> No moo = no close here!
    CLOSE COBOL-FILE
    STOP RUN.           *> GOBACK. (ok here!)

PROC_READ.
    READ COBOL-FILE AT END MOVE HIGH-VALUES TO CHAR-ONE
    DISPLAY "FINAL: [" CHAR-ONE "]".
    *> GOBACK. *> (no moo!)
