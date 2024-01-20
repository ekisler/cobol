COBOL *================================================================*
      * Author: Programador Carlos Arabito / Emisael Kisler / AI       * 
      * Date: 10/01/2024                                               * 
      * Purpose: Variable to Array.                                    *      
      * Tectonics: cobc                                                * 
      *================================================================*
       IDENTIFICATION DIVISION.
       PROGRAM-ID. VARIABLE_TO_TABLE.
       
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SOURCE-COMPUTER. HP-G3.
                                                                       
       DATA DIVISION.                                                   
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 Input-Variable  PIC X(100) VALUE SPACES.
       01 Char-Tabla.
           05 Char-Entrada  PIC X OCCURS 100 TIMES.
       77 I               PIC 9(3) VALUES 0.
       77 Length-Input   PIC X(100).

       PROCEDURE DIVISION.
         DISPLAY "¡ATENCION!"
         DISPLAY "       -Introduzaca una cadena maximo 100 caracteres;"
         DISPLAY "       El sistema solo acptara 100 caracteres."
         DISPLAY "       Por favor, ingresa una variable".
         ACCEPT Input-Variable.
         MOVE Input-Variable TO Char-Tabla.
         DISPLAY "Variable original: ", Input-Variable
         PERFORM VARYING I FROM 1 BY 1 UNTIL Char-Entrada(I) 
                                             <= Length-Input
           DISPLAY "Char-Tabla(" I ") = " Char-Entrada(I)
           END-PERFORM
           STOP RUN.
