      ******************************************************************
      * Author: Cobol clase nro 6
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
      * La Division IDENTIFICATION DIVISION.
       IDENTIFICATION DIVISION.
       PROGRAM-ID. BISIESTO-clase-6.

       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       77  ANIO     PIC 9(4) value 0.
       77  RESTO4   PIC 9(2) value 0.
       77  RESTO400 PIC 9(2) value 0.
       77  RESTO100 PIC 9(2) value 0.
       77  COCIENTE PIC 9(4) value 0.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
             DISPLAY "ingrese un año"
             ACCEPT ANIO.
             DIVIDE ANIO BY 400 GIVING COCIENTE REMAINDER RESTO400.
             DIVIDE ANIO BY 100 GIVING COCIENTE REMAINDER RESTO100.
             DIVIDE ANIO BY 4   GIVING COCIENTE REMAINDER RESTO4.
      *
      * Año es bisiesto si es multiplo de 4 o de 400 y si no es multiplo de 100.
             IF (RESTO4 = 0 OR RESTO400 = 0) AND (RESTO100 NOT = 0)
                   DISPLAY "El año es bisiesto!! "
             ELSE
                   DISPLAY "El año No!!! es bisiesto"      
                   DISPLAY "RESTO4 = " RESTO4 " RESTO100 = " RESTO100
             END-IF.
       STOP RUN. 
       
