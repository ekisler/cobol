      ******************************************************************
      * Author: Programador Carlos A.                                  *
      * Date: 05/01/2024                                               *
      * Purpose: PERFORM TIMES                                         *
      * Tectonics: cobc                                                *
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. EJEMPLO-PERFORM-TIMES.

       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SOURCE-COMPUTER. HP-G3.

       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       77 CONTADOR  PIC 99 VALUE 1.

       PROCEDURE DIVISION.
       BUCLE.
           PERFORM 5 TIMES
               DISPLAY "Veces"
           END-PERFORM
           DISPLAY "HEMOS INTRODUCIDO 6 NUMEROS."
           STOP RUN.
