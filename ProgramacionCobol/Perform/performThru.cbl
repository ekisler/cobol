      ******************************************************************
      * Author: Programador                                            * 
      * Date: 04/01/2024                                               * 
      * Purpose: PERFORM THRU                                          *      
      * Tectonics: cobc                                                * 
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. EJEMPLO-PERFORM-THRU.

       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SOURCE-COMPUTER. HP-G3.

       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 CONTADOR PIC 9(4) VALUE 1.

       PROCEDURE DIVISION.
       PERFORM 100-LOOP THRU 100-EXIT.
      *
      * Comienza el PERFORM
       100-LOOP.
      *
      * Dsplayamos el valor inicial de CONTADOR que es = 1 
           DISPLAY "Valor inicial de CONTADOR(1): " CONTADOR.
      *
      * Al valor inicial de CONTADOR le agregamos 1
           ADD 1 TO CONTADOR.
           DISPLAY "Iteracion1, agrega 1 a CONTADOR: " CONTADOR.
      *
      * Agregamos uno mas a CONTADOR
           ADD 1 TO CONTADOR.
           DISPLAY "Iteracion2, agrega 1 a CONTADOR: " CONTADOR.
      *
      * Agregamos dos mas a CONTADOR
           ADD 2 TO CONTADOR.
           DISPLAY "Iteracion3, agrega 2 a CONTADOR: " CONTADOR.
      *
      * Restamos 2 a CONTADOR
           SUBTRACT 2 FROM CONTADOR.
           DISPLAY "Iteracion4, substrae 2 a CONTADOR: " CONTADOR.
      *
      * Termina el PERFORM
       100-EXIT.
           DISPLAY "CONTADOR Finalizado EN: " CONTADOR.
           STOP RUN.
