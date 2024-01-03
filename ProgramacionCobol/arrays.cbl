      ******************************************************************
      * Author: Cobol clase nro 7
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
      * La Division IDENTIFICATION DIVISION.
       IDENTIFICATION DIVISION.
       PROGRAM-ID. ARRAYS.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77  I         PIC 9 value 0.
       01  NUMEROS OCCURS 5 TIMES.
           02 NUMERO PIC 9(2).
       
       PROCEDURE DIVISION.

      *
      * Asignacion de valores a cada uno de los elemntos del array.
             MOVE 10 TO NUMERO(1).
             MOVE 20 TO NUMERO(2).
             MOVE 30 TO NUMERO(3).
             MOVE 40 TO NUMERO(4).
             MOVE 50 TO NUMERO(5).
           BEGIN.
           DISPLAY "Ingresa un numero de indice del array"
           DISPLAY "Entre 1 y 5"
           ACCEPT I.
             IF I > 0 AND < 6
             DISPLAY " El dato en la posicion " I " es " NUMERO(I)
             ELSE DISPLAY "El Indice solicitado es erroneo: " I
                  DISPLAY "Debe introducir un Nro entre 1 y 5"
      *
      * Prestar atencion a la sentencia GO TO, utilizar en xaso extremo.
                  GO TO BEGIN.
       STOP RUN.


