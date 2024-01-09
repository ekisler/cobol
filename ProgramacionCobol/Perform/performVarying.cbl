      ******************************************************************
      * Author: Programador                                            *
      * Date: 05/01/2024                                               *
      * Purpose: PERFORM VARYING                                       *
      * Tectonics: cobc                                                *
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. EJEMPLO-PERFORM-VARYING.

       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SOURCE-COMPUTER. HP-G3.

       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 CONTADOR  PIC 9(2) VALUE 1.
       01 CONTADOR2 PIC 9(2) VALUE 2.

       PROCEDURE DIVISION.
           DISPLAY 'ITERACION DE UNO EN UNO.'
       PERFORM VARYING CONTADOR FROM 1 BY 1 UNTIL CONTADOR > 10
           DISPLAY 'Iteracion1: ' CONTADOR
       END-PERFORM.

           DISPLAY '---------------------------------------------------'
           DISPLAY 'ITERACION DE DOS EN DOS.'
       PERFORM VARYING CONTADOR2 FROM 2 BY 2 UNTIL CONTADOR2 > 10
           DISPLAY 'Iteracion2: ' CONTADOR2
       END-PERFORM.

           DISPLAY '---------------------------------------------------'
           DISPLAY 'ITERACION EN REVERSA.'
       PERFORM VARYING CONTADOR FROM 10 BY -1 UNTIL CONTADOR = 0
           DISPLAY 'Iteracion-1: ' CONTADOR
       END-PERFORM.

       DISPLAY 'Programa finalizado'.
       STOP RUN.
