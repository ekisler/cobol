      ******************************************************************
      * Author: Programador                                            * 
      * Date: 03/01/2024                                               * 
      * Purpose: ORDENAR ARRAY (Mas en https://cobol.es/tablas-arrays/)*
      * Tectonics: cobc                                                *           
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. EJERCICIO_ARRAY_DESCENDENTE.

       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SOURCE-COMPUTER. HP-G3.

       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
      * 
      * Variable para contar el número de elementos en el array
       77  N     PIC 9. 
      *
      * Variable para usar como contador en los bucles (Indice = I)
       77  I     PIC 9.
      *
      * Variable para intercambiar elementos del array (TEMPORAL = TEMP)
       77  TEMP  PIC 99.

       01  MI_ARRAY.
      *
      * Definición de un array con cinco elementos utilizando "OCCURS"
            05  MI_ELEMENTOS OCCURS 5 TIMES.
      *
      * Cada elemento es un número de dos dígitos
                 10 ELEMENT PIC 9(2).

       PROCEDURE DIVISION.
       MAIN-LOGIC.
      * 
      *  Poblamos el array
       MOVE 5 TO ELEMENT(1)
       MOVE 1 TO ELEMENT(2)
       MOVE 4 TO ELEMENT(3)
       MOVE 2 TO ELEMENT(4)
       MOVE 8 TO ELEMENT(5)

       DISPLAY "Array antes de ordenado:"
      *
      * Llamada a la subrutina para mostrar los elementos del array
       PERFORM DISPLAY-ELEMENTOS
      *
      * Llamada a la subrutina para ordenar el array
       PERFORM SORT-ARRAY

       DISPLAY "Array despues de ordenado:"
       PERFORM DISPLAY-ELEMENTOS
      *
      *  Detiene la ejecución del programa
       STOP RUN.

       SORT-ARRAY.
      *
      * Movimiento del valor 5 a N (el número de elementos en el array)
         MOVE 5 TO N.
      *
      * Bucle que continúa hasta que N sea igual a 1
       PERFORM UNTIL N = 1
      *
      * Movimiento del valor 1 a I (usado como contador en los bucles)
           MOVE 1 TO I
      *
      * Bucle que comienza con I igual a 1 y continúa hasta que I sea mayor o igual a N
           PERFORM UNTIL I >= N
      *
      * Condición para verificar si el elemento actual es menor que el siguiente
             IF ELEMENT(I) < ELEMENT(I + 1)
      *
      * Intercambio de los elementos del array utilizando el temporal
                 MOVE ELEMENT(I) TO TEMP
                 MOVE ELEMENT(I + 1) TO ELEMENT(I)
                 MOVE TEMP TO ELEMENT(I + 1)
             END-IF
      * 
      * Incremento del contador I
             ADD 1 TO I
           END-PERFORM
      *
      * Reducción de N en 1 al final de cada iteración del bucle externo
           SUBTRACT 1 FROM N
       END-PERFORM.

       DISPLAY-ELEMENTOS.
      *
      * Bucle que comienza con I igual a 1 y continúa hasta que I sea mayor que 5
       PERFORM VARYING I FROM 1 BY 1 UNTIL I > 5
             DISPLAY "Element " I " ---> " ELEMENT(I)
       END-PERFORM. 
       