COPY "BIG_CHARS1.cpy".

01 CHARS REDEFINES CHAR_DATA OCCURS 91 TIMES INDEXED BY CHAR_SS.
   05 CHAR_NAME PIC X.
   05 SEG       OCCURS 9 TIMES.
      10        PIC X(9).  


