      ******************************************************************
      * Author: Cobol clase nro 6
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
      * La Division IDENTIFICATION DIVISION.
       IDENTIFICATION DIVISION.
       PROGRAM-ID. OPERADORES-clase-6.

       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       77  A         PIC 9(2) value 0.
       77  B         PIC 9(2) value 0.
       77  C         PIC 9(2) value 0.
       77  RESTO     PIC 9(2) value 0.
       77  COCIENTE  PIC 9(2) value 0.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
             DISPLAY "Ingrese numero"
             ACCEPT A.
             DISPLAY "Ingrese un 2do nuemro"
             ACCEPT B.
             DISPLAY "Ingresa un 3er numero"
             ACCEPT C.
             DISPLAY " ".
             DISPLAY "A = " A " B = " b " C = " C.

           IF (A = B AND B = C)
               DISPLAY "En (A = B AND B 0 C) A, B Y C -Son!! iguales- "
           ELSE
               DISPLAY "EN A = B AND B = C) A, B Y C No!! son iguales"
           END-IF.

           IF (A > B AND B >= C)
               DISPLAY "En (A > B AND B ≥ C) A es el numero mayor "
           ELSE
               DISPLAY "En (A > B AND B ≥ C) A no es el numero mayor "
           END-IF.

           IF (A < B AND C < B)
               DISPLAY "En (A < B AND C < B) B es el numero mayor"
           ELSE
               DISPLAY "En (A < B AND C < B) B no es el numero mayor"
           END-IF.

           IF (A < B OR B < C) AND NOT(A = B)
               DISPLAY "---> C es mayor "
           ELSE 
               DISPLAY "---> C no es mayor "
           END-IF.

       STOP RUN.
      