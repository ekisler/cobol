      *================================================================*
      * Author: Programador Carlos Arabito                             * 
      * Date: 09/01/2024                                               * 
      * Purpose: VARIABLES - VIDEO14.                                  *      
      * Tectonics: cobc                                                * 
      *================================================================*
       IDENTIFICATION DIVISION.
       PROGRAM-ID. VARIABLES.
       
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SOURCE-COMPUTER. HP-G3.
       SPECIAL-NAMES.
      *
      * El punto decimal es una coma
           DECIMAL-POINT IS COMMA. 
       
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
      *
      * Constante declarada en el nivel 77 con un string de 1 caracter y un valor inicial de un espacio en blanco  
       77 OPERACION PIC X(1) VALUE SPACES.
       01 VARIABLE-ALF-NUM PIC X(10) VALUE "ASD5678Hg0".
       01 VARIABLE-ALFABE PIC A(10) VALUE "AvBnjIopwe".
      *
      * V9(2) Significa que el numero lleva un punto decimal de 2 digitos 
       01 VARIABLE-NUM PIC 9(5)V9(2) VALUE 12345,67.
       01 VARIABLE-SNUM PIC S9(5)V9(2) VALUE 12345,67.
      *
      * COMP significa: que es numerica hexadecimal.
       01 NUMERICA-COMP PIC 9(5)V9(2) COMP VALUE 12345,67.
      *
      * COMP-3 significa: numerica comprimida. 
       01 NUMERICA-COMP-3 PIC S9(5)V9(2) COMP-3 VALUE 12345,67. 
      *
      * Variables de edicion.
       01 NUMERICA-EDI PIC Z.ZZZ.ZZ9,99- VALUE -12345,67.
       01 VARIABLE-EDI PIC -.---.--9,99 VALUE -12345,67.
       01 FECHA.
      *
      * Un subnivel no puede ser mayor de 59!!!
         05 DIA PIC 9(2) VALUE 01.
         05 FILLER PIC X VALUE '/'.
         05 MES PIC 9(2) VALUE 06.
         05 FILLER PIC X VALUE '/'.
         05 ANIO PIC 9(4) VALUE 2023.

       01 LINEA-IMPRE.
         05 NOMBRE PIC X(10) VALUE "RAUL".
         05 FILLER PIC X(5) VALUE SPACES.
         05 APELLIDO1 PIC X(10) VALUE "GONZALEZ".
         05 FILLER PIC X(5) VALUE SPACES.
         05 APELLIDO2 PIC X(10) VALUE "GARCIA".

       01 CAMPO1 PIC X(3).
       01 CAMPO2 REDEFINES CAMPO1 PIC 9(3).

       01 RESPUETA PIC XX.
       88 RESPUESTA-SI VALUE "SI".
       88 RESPUESTA-NO VALUE "NO".
      *
      * Arrays clase 11.
       01 MI-ARRAY.
       05 MI-ELEMENTOS OCCURS 5 TIMES.
         10 ELEMENT PIC 9(2).

       PROCEDURE DIVISION.
       INGRESA.
       DISPLAY "<------------------------------------->"
       DISPLAY "Ingresa grupo de variables con las siguiente opciones:".
       DISPLAY "A = Variables Alfabeticas y Alfanumericas.".
       DISPLAY "N = Variables Numericas".
       DISPLAY "E = Variables de Edicion".
       DISPLAY "S = Salir del programa".
       DISPLAY "<------------------------------------->"
       ACCEPT OPERACION.
       PERFORM DECIDE.
       DECIDE.
       EVALUATE OPERACION
       WHEN 'A'
             DISPLAY "ALFANUMERICA X(10) -----> " VARIABLE-ALF-NUM
             DISPLAY "ALFABETICA A (10)  -----> " VARIABLE-ALFABE
             PERFORM INGRESA
       WHEN 'N'
             DISPLAY "NUMERICA 9(5)V9(2) ------------> " VARIABLE-NUM
             DISPLAY "NUMERICA con S9(5)V9(2) ------> " VARIABLE-SNUM
       
             DISPLAY "N-COMP 9(5)V9(2) COMP     -----> " NUMERICA-COMP
             DISPLAY "N-COMP3 S9(5)V9(2) COMP-3 ----> " NUMERICA-COMP-3
             PERFORM INGRESA

       WHEN 'E'
             DISPLAY "NUMERICA-EDI ----------------> " NUMERICA-EDI
             DISPLAY "VARIABLE-EDI -.---.--9,99 ---> " VARIABLE-EDI
             DISPLAY "FECHA con FILLER ------------> " FECHA
             DISPLAY "LINEA-IMPRE1 -----> " LINEA-IMPRE
             DISPLAY "LINEA-IMPRE2 -----> " LINEA-IMPRE
             DISPLAY "LINEA-IMPRE3 -----> " LINEA-IMPRE
             PERFORM INGRESA
       WHEN "S"  
             DISPLAY "Finalizo el programa... Goodbye!" 
             STOP RUN

       WHEN OTHER
             DISPLAY "El grupo seleccionado es invalido,"
             DISPLAY "por favor, intente de nuevo..."
                 PERFORM INGRESA
       END-EVALUATE. 
