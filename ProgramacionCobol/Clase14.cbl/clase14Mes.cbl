      *================================================================*
      * Author: Programador Carlos Arabito                             * 
      * Date: 08/01/2024                                               * 
      * Purpose: SENTENCIA-EVALUATE-MES.                               *      
      * Tectonics: cobc                                                * 
      *================================================================*
       IDENTIFICATION DIVISION.
       PROGRAM-ID. EJEMPLO_EVALUATE-MES.
       
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SOURCE-COMPUTER. HP-G3.
       
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 MESE PIC 9(2).
       01 NOMBRE-MES PIC X(22).
       
       PROCEDURE DIVISION.
       MAIN-ROUTINE.
         DISPLAY "Por favor, ingrese un numero de mes entre 1 y 12:"
         ACCEPT MESE
       
         EVALUATE MESE
             WHEN 1
                 MOVE "Enero / January"        TO NOMBRE-MES
             WHEN 2
                 MOVE "Febrero / February"     TO NOMBRE-MES
             WHEN 3
                 MOVE "Marzo / March"          TO NOMBRE-MES
             WHEN 4
                 MOVE "Abril / April"          TO NOMBRE-MES
             WHEN 5
                 MOVE "Mayo / May"             TO NOMBRE-MES
             WHEN 6
                 MOVE "Junio / June"           TO NOMBRE-MES
             WHEN 7
                 MOVE "Julio / July"           TO NOMBRE-MES
             WHEN 8
                 MOVE "Agosto / August"        TO NOMBRE-MES
             WHEN 9
                 MOVE "Septiembre / September" TO NOMBRE-MES
             WHEN 10
                 MOVE "Octubre/ October"       TO NOMBRE-MES
             WHEN 11
                 MOVE "Noviembre / November"   TO NOMBRE-MES
             WHEN 12
                 MOVE "Diciembre / December"   TO NOMBRE-MES
             WHEN OTHER
                 MOVE "ERROR"                  TO NOMBRE-MES
         END-EVALUATE.
       
       DISPLAY "El número ingresado corresponde al mes de: " NOMBRE-MES

       STOP RUN.
