      ******************************************************************
      * Author: Cobol clase nro 6
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
      * La Division IDENTIFICATION DIVISION.
       IDENTIFICATION DIVISION.
       PROGRAM-ID. ESTRUCTURAL1.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
      *
      * La "S" antes del "9" en una declaración de COBOL 
      * indica que la variable puede contener números negativos. 
      * Es decir, la "S" permite que la variable recuerde el signo 
      * del número. Esto es útil cuando los datos pueden ser negativos.
      *
           77 numero PIC S9(4).

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
             DISPLAY "Escribe un numero: ".
             ACCEPT numero.
             IF numero < 0 
               DISPLAY "El numero " numero " es negativo"
                 ELSE
                 IF numero = 0
                   DISPLAY "El numero es 'Cero'"
                     ELSE
                       DISPLAY "El numero " numero " es positivo".
             STOP RUN. 
