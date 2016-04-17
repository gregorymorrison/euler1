       * Euler1 in COBOL

       IDENTIFICATION DIVISION.
       PROGRAM-ID. myTest.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  cnt      PIC 9(4) VALUE 999.
       01  result   PIC 9(9).
       PROCEDURE DIVISION.
           CALL "euler1" USING BY CONTENT cnt, 
                               BY REFERENCE result.
           DISPLAY result.
           STOP RUN.
       END PROGRAM myTest.

       IDENTIFICATION DIVISION.
       PROGRAM-ID. euler1.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  quot     PIC 9(3) VALUE 0.
       01  rem      PIC 9(3) VALUE 0.
       LINKAGE SECTION.
       01  cnt      PIC 9(4).
       01  result   PIC 9(9) VALUE 0.
       PROCEDURE DIVISION USING cnt, result.
           PERFORM UNTIL cnt <= 0 
               DIVIDE 3 INTO cnt GIVING quot REMAINDER rem
               IF rem = 0 THEN
                   ADD cnt TO result
               ELSE
                   DIVIDE 5 INTO cnt GIVING quot REMAINDER rem
                   IF rem = 0 THEN
                       ADD cnt TO result
                   END-IF
               END-IF

               ADD -1 TO cnt
           END-PERFORM
       EXIT PROGRAM.
       END PROGRAM euler1.
