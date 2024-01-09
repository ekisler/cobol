      ******************************************************************
      * Author: Programador                                            *                               
      * Date: 05/01/2024                                               * 
      * Purpose: PERFORM UNTIL                                         * 
      * Tectonics: cobc                                                *      
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. EJEMPLO-PERFORM-UNTIL.

       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SOURCE-COMPUTER. HP-G3.

       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 CONTADOR PIC 9(2) VALUE 1.

       PROCEDURE DIVISION.
      *
      * PERFORM UNTIL: Lo mas parecido al bucle "do-while" de otros lenguajes.
      * En nuestro caso lo va a ejecutar hasta que CONTADOR sea mayor a 10.
       PERFORM UNTIL CONTADOR > 10
           DISPLAY "Iteracion: " CONTADOR
      *
      * En cada iteracion va agregando 1 hasta llegar a 10
           ADD 1 TO CONTADOR
      *
      * Finaliza el PERFORM y continua
       END-PERFORM.

       DISPLAY "Finalizado".
       STOP RUN.
