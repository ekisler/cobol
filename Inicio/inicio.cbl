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

        SELECT OPTIONAL CLIENTES ASSIGN TO "./clientes.dat"
          ORGANIZATION INDEXED
          ACCESS MODE DYNAMIC
          RECORD KEY IS ID_CLIENTE
          ALTERNATE KEY CLI_NOMBRE WITH DUPLICATES
          ALTERNATE KEY CLI_ALT_2  WITH DUPLICATES
          STATUS ST-FILE.

       DATA DIVISION.
       FILE SECTION.

       FD CLIENTES.

       01 REG-CLIENTES.
          03 ID_CLIENTE.            
            05 CLI_ID           PIC 9(7).
          03 CLI_SALDO          PIC S9(7)V9(3).
          03 CLI_NOMBRE         PIC X(60).
          03 CLI_DIRECCION      PIC X(80).
          03 CLI_CODPOST        PIC X(10).
          03 CLI_CATEGORIA      PIC X(10).
          03 CLI_ALT_2.
            05 CLI_CATEGORIA_2  PIC X.
            05 CLI_NOMBRE_2     PIC X(60).
          03 CLI_RAZONSOCIAL    PIC X(60).
          03 FILLER             PIC X(240).

       WORKING-STORAGE SECTION.
       01 ST-FILE PIC XX.

       PROCEDURE DIVISION.
       PABLO.
        PERFORM ABRO-ARCHIVOS.
        PERFORM GRABO-DATOS THRU F-GRABO-DATOS.
        PERFORM CIERRO-ARCHIVOS.
        STOP RUN.
       
       ABRO-ARCHIVOS.
        OPEN I-O CLIENTES.
        IF ST-FILE > "07"
          DISPLAY "ERROR ABRIENDO EL ARCHIVO".

       CIERRO-ARCHIVOS.
        CLOSE CLIENTES.
       
       GRABO-DATOS.
        INITIALIZE REG-CLIENTES.
        MOVE 1 TO CLI_ID.
        MOVE 0 TO CLI_SALDO.
        MOVE "VAR-NOMBRE" TO CLI_NOMBRE.
        MOVE "W-DIRECCION" TO CLI_DIRECCION.

       GRABO-REGISTRO.
        WRITE REG-CLIENTES.
        IF ST-FILE = "99" GO TO GRABO-DATOS.
        IF ST-FILE > "07"
          DISPLAY "ERROR GRABANDO EL ARCHIVO".

       F-GRABO-DATOS.
        EXIT.

       END PROGRAM "INICIO".
