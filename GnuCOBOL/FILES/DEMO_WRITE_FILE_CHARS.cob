*> The following demonstration is part of my "Simply COBOL"
*> educational opportunity. "Simply COBOL" is now available at
*> https://www.udemy.com/course/simply-cobol/?referralCode=EA98738662CCF9535E2B
*>
*> Mission: INTRO TO FILE PROCESSING.
*> Demonstrate file creation.
*> cobc -x -j -free DEMO_WRITE_FILE_CHARS.cob
IDENTIFICATION DIVISION. 
PROGRAM-ID. DEMO_WRITE_FILE_CHARS.

ENVIRONMENT DIVISION.
INPUT-OUTPUT SECTION.
FILE-CONTROL.


SELECT COBOL-FILE
    ASSIGN TO '~THE-CHARS.SDF'
    organization is line sequential.    *> NEW!
*> /study$ od -a ./THE-CHARS.SDF
*> 0000000   A   B   C   D   E   F   G   H   I   J   K   L   M   N   O   P
*> 0000020   Q   R   S   T   U   V   W   X   Y   Z  nl


DATA DIVISION.
FILE SECTION.
FD COBOL-FILE
RECORD CONTAINS 255 CHARACTERS
DATA RECORD IS Z-BUFFER.
01 Z-BUFFER PIC X(255). 

WORKING-STORAGE SECTION. 
01 THE-CHARS PIC X(26) VALUE 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'.

PROCEDURE DIVISION.
    OPEN OUTPUT COBOL-FILE
    *> MOVE 'First Line' to Z-BUFFER
    *> WRITE Z-BUFFER
    WRITE Z-BUFFER FROM THE-CHARS
    CLOSE COBOL-FILE.
STOP RUN.

