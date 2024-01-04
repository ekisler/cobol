      ******************************************************************
      * Author: Cobol clase nro 9
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
      * La Division IDENTIFICATION DIVISION.
       IDENTIFICATION DIVISION.
       PROGRAM-ID. POBLAR-ARRAY1-CLASE-9.
       DATA DIVISION.
      *
      * Declaramos las variables en sus distintos niveles
       WORKING-STORAGE SECTION.
      * MY-ARRAY es un arreglo que contiene MY_ELEMENTS. 
       01  MY-ARRAY.
      * MY_ELEMENTS es un grupo que se repite 5 veces y contiene ELEMENT.
           02  MY_ELEMENTS OCCURS 5 TIMES.
      * ELEMENT es un número de dos dígitos.
               03  ELEMENT PIC 9(2).

       PROCEDURE DIVISION.
       MAIN-LOGIC.
      * 
      * Llena el arreglo con numeros
       MOVE 10 TO ELEMENT(1)
       MOVE 20 TO ELEMENT(2)
       MOVE 30 TO ELEMENT(3)
       MOVE 40 TO ELEMENT(4)
       MOVE 50 TO ELEMENT(5)

       DISPLAY "Array elementos: "
       PERFORM DISPLAY-ELEMENTS

       STOP RUN.
      *
      * Subrutina para mostrar cada elemento del arreglo
       DISPLAY-ELEMENTS.
       DISPLAY "Elemento 1: " ELEMENT(1)
       DISPLAY "Elemento 2: " ELEMENT(2)
       DISPLAY "Elemento 3: " ELEMENT(3)
       DISPLAY "Elemento 4: " ELEMENT(4)
       DISPLAY "Elemento 5: " ELEMENT(5).
