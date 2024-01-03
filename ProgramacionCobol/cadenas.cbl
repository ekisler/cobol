      ******************************************************************
      * Author: Programador SR
      * Date: 15/05/2023
      * Purpose: USO DE CADENAS
      * Tectonics: cobc
      ******************************************************************
      * La Division IDENTIFICATION DIVISION.
       IDENTIFICATION DIVISION.
       PROGRAM-ID. CADENAS-CLASE-10.

       ENVIRONMENT DIVISION.

       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       77  WS-CADENA         PIC IS XXXXX.
       77  WS-CADENA_ALFAB   PIC A(30).
       77  WS-CADENA-ALFAN   PIC X(30).

       PROCEDURE DIVISION.
       PROGRAM-BEGIN.
           DISPLAY "Introduce cualquier cadena de texto:".
           ACCEPT WS-CADENA.
           DISPLAY "Cualquier cadena de texto es: " WS-CADENA.
           DISPLAY "Longitud: "FUNCTION LENGTH(WS-CADENA).
           DISPLAY "Mayuscula: "FUNCTION UPPER-CASE(WS-CADENA).
           DISPLAY "Minuscula: "FUNCTION LOWER-CASE(WS-CADENA).
           DISPLAY "-----------------------------------------"

           DISPLAY "Introduce una cadena alfabetica:".
           ACCEPT WS-CADENA_ALFAB.
           DISPLAY "Cadena alfabetica es: " WS-CADENA_ALFAB.
           DISPLAY "Longitud: "FUNCTION LENGTH(WS-CADENA_ALFAB).
           DISPLAY "Mayuscula: "FUNCTION UPPER-CASE(WS-CADENA_ALFAB).
           DISPLAY "Minuscula: "FUNCTION LOWER-CASE(WS-CADENA_ALFAB).
           DISPLAY "-----------------------------------------"

           DISPLAY "Introduce una cadena alfanumerica".
           ACCEPT WS-CADENA-ALFAN.
           DISPLAY "Cadena alfanumerica: " WS-CADENA-ALFAN.
           DISPLAY "Longitud: "FUNCTION LENGTH(WS-CADENA-ALFAN).
           DISPLAY "Mayuscula: "FUNCTION UPPER-CASE(WS-CADENA-ALFAN).
           DISPLAY "Minuscula: "FUNCTION LOWER-CASE(WS-CADENA-ALFAN).
           DISPLAY "-----------------------------------------".

       PROGRAM-DONE.
           PERFORM ES-ALFABETICA
           STOP RUN.

       ES-ALFABETICA.
             IF WS-CADENA_ALFAB IS ALPHABETIC THEN
             DISPLAY "Cadena alfabetica verificada es: " WS-CADENA_ALFAB
               ELSE 
             DISPLAY "Esta cadena no es alfabetica: " WS-CADENA_ALFAB
             END-IF.
