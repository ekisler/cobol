      ******************************************************************
      * Author: Cobol clase nro 3
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
      * La Division IDENTIFICATION DIVISION.
       IDENTIFICATION DIVISION.
       PROGRAM-ID. OPERACIONES.

      * La division DATA DIVISION.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
           01 var1       PICTURE 9(4).
           01 var2       PIC 9(4).
           01 resul      PIC 9(6).
      
      * La Division PROCEDURE DIVISION.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

      * Declaro las variables.
           DISPLAY "Ingrese variable".
           ACCEPT var1.
           DISPLAY "La variable 1 es: ", var1.
      *
           DISPLAY "Ingrese variable 2".
           ACCEPT var2.
           DISPLAY "La variable 2 es: ", var2.
      *
      * Sumo la variable var1 a la variable var2 (VAR!+VAR") dejo el resultado en resul.
             ADD var1, var2 GIVING resul.
             DISPLAY "El resultado de la suma es: ", resul.
      *
      * Resto la variable var2 a la variable var1 (VAR2-VAR1) dejo el resuñtado en resul.
             SUBTRACT var2 from var1 GIVING resul.
             DISPLAY "El resultado de la resta es: ", resul.
      *
      * Multiplico la variable var1 por la variable var2 (VAR1*VAR2) dejo el resultado en resil.
             MULTIPLY var1 BY var2 GIVING resul.
             DISPLAY "El resultado de la multipliccioin es: ", resul.
      *
      * Divido la variable var1 a la variable var2 (VAR!/VAR2) dejo el resultado en resul.
             DIVIDE var1 BY var2 GIVING resul.
             DISPLAY "El resultado de la division es: ", resul.

      * Utilizamos COMPUTE que abarca todas las operaciones aritmeticas pero consume mas recursos.
             COMPUTE resul = (var1 * var2) / var2.
             DISPLAY "El resultado del calculo con COMPUTE ES: ", resul.

      * Condicional IF.       
             IF resul > 9 DISPLAY "El resultado es mayor que 9"
                   ELSE
                   DISPLAY "El resultado es menor o igual a 9".

      * Detengo el programa.       
                   STOP RUN.
