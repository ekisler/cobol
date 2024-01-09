      ******************************************************************
      * Author: Programador Emisael AI                                 * 
      * Date: 05/01/2024                                               * 
      * Purpose: EJERCICIO12                                          *      
      * Tectonics: cobc                                                * 
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. EJERCICIO12-PERFORM.
       
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SOURCE-COMPUTER. HP-G3.
       
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 WS-USER-INPUT PIC 9(2).
       01 MY-NUMBERS.
        05 INPUT-ITEM PIC 9(2) OCCURS 6 TIMES.
       01 I PIC 9(2) VALUE 1.
       01 WS-NUMERIC-INPUT PIC 9.
       01 NUM-ENTRIES PIC 9 VALUE ZEROS.
       
       PROCEDURE DIVISION.
       MY-PROCEDURE.
             PERFORM 100-LOOP UNTIL I > 6.
             100-LOOP.
                   DISPLAY "Por favor, introduce 6 numeros separados"
                   DISPLAY "*** Ej: 1 2 3 4 5 6 ***"
                   DISPLAY "*** O tambien Ej: 01 10 23 14 51 63 ***".
                   DISPLAY "Los numeros ingresados son: " WITH NO 
                                                          ADVANCING.
                   ACCEPT WS-USER-INPUT.
                   MOVE FUNCTION NUMVAL(WS-USER-INPUT) 
                                     TO WS-NUMERIC-INPUT
                   IF WS-NUMERIC-INPUT = ZEROES THEN
                     DISPLAY "ERROR: por favor introduce solo numeros"
                     DISPLAY "Los numeros pueden ser solo de 2 digitos"
                     DISPLAY "Ej: 01 25 32 etc... o tambien 1 2 3".
                     CONTINUE
                   MOVE WS-NUMERIC-INPUT TO INPUT-ITEM (I)               
                   ADD 1 TO I
                   ADD 1 TO NUM-ENTRIES
                   IF I > 6 AND < 0 THEN
                     IF NUM-ENTRIES <> 6 THEN
                       DISPLAY "Debes introducir exactamente 6 numeros."
                         STOP RUN.
                     
                      DISPLAY 'Finalizado'.
                      STOP RUN. 
              END PROGRAM EJERCICIO12-PERFORM.             


