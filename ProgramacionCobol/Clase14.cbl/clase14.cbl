      *================================================================*
      * Author: Programador Carlos Arabito                             * 
      * Date: 08/01/2024                                               * 
      * Purpose: SENTENCIA-EVALUATE.                                   *      
      * Tectonics: cobc                                                * 
      *================================================================*
       IDENTIFICATION DIVISION.
       PROGRAM-ID. EJEMPLO_EVALUATE.
       
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SOURCE-COMPUTER. HP-G3.
       
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
      *
      *  Variable para almacenar el número del día de la semana
       01  DIA-SEMANA PIC 9.
      *
      * Variable para almacenar el nombre del día de la semana 
       01 NOMBRE-DIA PIC X(22).

       PROCEDURE DIVISION.
       MAIN-ROUTINE.
           DISPLAY "Ingresa un numero de dia de la semana entre 1 y 7:"
           ACCEPT DIA-SEMANA
      *
      * Evalúa el valor de DIA-SEMANA
           EVALUATE DIA-SEMANA
               WHEN 1
      *
      * Asigna el dia de la semana a NOMBRE-DIA con numero ingresado
                   MOVE "Lunes / Monday"        TO NOMBRE-DIA
               WHEN 2
                   MOVE "Martes / Tuesday"      TO NOMBRE-DIA
               WHEN 3
                   MOVE "Miércoles / Wednesday" TO NOMBRE-DIA
               WHEN 4
                   MOVE "Jueves / Thursday"     TO NOMBRE-DIA
               WHEN 5
                   MOVE "Viernes / Friday"      TO NOMBRE-DIA
               WHEN 6
                   MOVE "Sabado / Saturday"     TO NOMBRE-DIA
               WHEN 7
                   MOVE "Domingo / Sunday"      TO NOMBRE-DIA
               WHEN OTHER
      *
      * Si NOMBRE-DIA no es ninguno de los declarados, da error.
                   MOVE "ERROR"     TO NOMBRE-DIA             
           END-EVALUATE.
      *
      * Imprime el dia que corresponde al numero seleccionado
           DISPLAY "El numero ingresado corresponde al dia: "NOMBRE-DIA

           STOP RUN.
