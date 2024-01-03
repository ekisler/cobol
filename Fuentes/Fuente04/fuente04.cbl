      ******************************************************************
      * Author: Emisael Kisler
      * Date: 23/12/2023
      * Purpose: Education
      * Tectonic: cobc
      ****************************************************************** 
       IDENTIFICATION DIVISION.
       PROGRAM-ID. "INICIO".
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
        DECIMAL-POINT IS COMMA.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.

              COPY "/clientes.sel"

       DATA DIVISION.
       FILE SECTION.

              COPY "./clientes.fa"
        
       WORKING-STORAGE SECTION.

       01 ST-FILE PIC XX.
       01 X       PIC X.

       01 MENSAJE PIC X(70).

       01 FIN     PIC X VALUES "N".
       01 GUIONES PIC X(80) VALUES ALL "-".
       
       PROCEDURE DIVISION.
       
            PERFORM INICIALIZACION.
            PERFORM ABRO-ARCHIVO.
            PERFORM PROCESO THRU F-PROCESO UNTIL FIN = "S".
            PERFORM CIERRO-ARCHIVO.
            GO TO FINALIZAR.

       INICIALIZACION.
            MOVE "N" TO FIN.

       ABRO-ARCHIVO.
            OPEN I-O CLIENTES.
            IF ST-SIC > "07"
              STRING "Error al abrir Clientes " ST-SIC DELIMITED BY SIZE
                INTO MENSAJE
              DISPLAY MENSAJE LINE 10 COL 20
              MOVE "S" TO FIN.

       CIERRO-ARCHIVO.
            CLOSE CLIENTES.

       FINALIZAR.
            EXIT PROGRAM.

       PROCESO.
          PERFORM MUESTRO-PANTALLA.

       F-PROCESO.
          EXIT.
       
       MUESTRO-PANTALLA.
          DISPLAY " "                   LINE  1 COL  1 ERASE EOS
                  "A.B.M. Clientes"     LINE  3 COL 32
                  GUIONES               LINE  4 COL  1
                  "Id Cliente:      "   LINE 07 COL 10
                  "01. Nombre:      "   LINE 10 COL 10
                  "02. Direccion:   "   LINE 12 COL 10
                  "03. Cod. Postal: "   LINE 14 COL 10
                  "04. Categoria:   "   LINE 16 COL 10
                  "Opcion [   ]"        LINE 20 COL 30
                  GUIONES               LINE 22 COL 1.   

          ACCEPT X.
          
       END PROGRAM "INICIO".
