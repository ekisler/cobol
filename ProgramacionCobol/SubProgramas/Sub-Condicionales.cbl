      *================================================================*
      * Author: Programador: Emisael Kisler                            * 
      * Date: 05/02/2024                                               * 
      * Purpose: Condicionales "Sub-Programa"                          *      
      * Tectonics: cobc                                                * 
      *================================================================*  
       IDENTIFICATION DIVISION.
       PROGRAM-ID. Sub-Condicionales.
       AUTHOR. Emisael Kisler.
       
       DATA DIVISION.
       LINKAGE SECTION.
       01 Tipo-De-Dato PIC X(01).
       
       PROCEDURE DIVISION USING Tipo-De-Dato.
          DISPLAY "Ingrese un numero de un digito: " WITH NO ADVANCING.
          ACCEPT Tipo-De-Dato.
         IF Tipo-De-Dato IS NUMERIC THEN
          DISPLAY "El digito " "'" Tipo-De-Dato "'" " es numerico "  
         ELSE
          DISPLAY "El digito " "'" Tipo-De-Dato "'" " no es numerico"
         END-IF.
         
         EXIT PROGRAM.
       