      *================================================================*
      * Author: Programador: Emisael Kisler                            * 
      * Date: 05/02/2024                                               * 
      * Purpose: Condicionales "Programa"                              *      
      * Tectonics: cobc                                                * 
      *================================================================*  
       IDENTIFICATION DIVISION.
       PROGRAM-ID. Principal.
       
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 Tipo-De-Dato PIC X(01).
       
       PROCEDURE DIVISION.
           CALL 'Sub-Condicionales' USING Tipo-De-Dato.
           STOP RUN.
