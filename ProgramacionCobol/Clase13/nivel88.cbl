      ******************************************************************
      * Author: Programador Emisael AI                                 * 
      * Date: 06/01/2024                                               * 
      * Purpose: Bucle Wuile                                          *      
      * Tectonics: cobc                                                * 
      ******************************************************************
        IDENTIFICATION DIVISION.
        PROGRAM-ID. NIVEL-88.
        
        ENVIRONMENT DIVISION.
        CONFIGURATION SECTION.
        SOURCE-COMPUTER. HP-G3.
        
        DATA DIVISION.
        FILE SECTION.
        WORKING-STORAGE SECTION.
       01 Cliente.
        05 Codigo-estado PIC 9.
        88 Cliente-activo VALUE 1.
        88 Cliente-inactivo VALUE 2.

        PROCEDURE DIVISION.
        PERFORM 01-aceptaDatos.
        PERFORM 02-estado.
        STOP RUN.
        02-estado.
        IF Cliente-activo THEN
             DISPLAY "El estado del cliente es activo."
           ELSE
                   IF Cliente-inactivo THEN      
                         DISPLAY "El estado del cliente es inactivo."
        END-IF.
       02-fin-estado.
       01-aceptaDatos.
       DISPLAY "Ingresa estado del cliente".
       DISPLAY "Selecciona una de estas dos opciones: "
       DISPLAY "1 - activo".
       DISPLAY "2 - inactivo".
       ACCEPT Codigo-estado.
       01-FIN-acepta.
       END PROGRAM NIVEL-88.



       