      ******************************************************************
      * Author: Pablo Tilotta                                          *
      * Date: 23/12/2023                                               *  
      * Purpose: Education                                             *
      * Tectonic: cobc                                                 *
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
       01 X       PIC X.
       
       77 BANDERA PIC 9.
       01 SALDO-Z PIC Z(6)9,99.
       01 SALDO-ZZ PIC ------9,99.

       PROCEDURE DIVISION.
       PABLO.
        PERFORM ABRO-ARCHIVOS.
        PERFORM LEO-DATOS THRU F-LEO-DATOS.
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
        IF ST-FILE = "99" GO TO GRABO-REGISTRO.
        IF ST-FILE > "07"
          DISPLAY "ERROR GRABANDO EL ARCHIVO".
          ACCEPT X.

       F-GRABO-DATOS.
        EXIT.
      
       LEO-DATOS.
        INITIALIZE REG-CLIENTES.
        START CLIENTES KEY IS NOT LESS THAN ID_CLIENTE.
        READ CLIENTES NEXT RECORD.
        IF ST-FILE = "99" GO TO LEO-DATOS.
        IF ST-FILE > "07"
          DISPLAY "ERROR LEYENDO EL ARCHIVO".

       MUESTRO-DATOS.
        MOVE -15,58 TO SALDO-ZZ.
        DISPLAY "Id Cliente"    LINE 10 COL 5.
        DISPLAY "Saldo"         LINE 11 COL 5.
        DISPLAY "Nombre"        LINE 12 COL 5.
        DISPLAY "Direccion"     LINE 13 COL 5.
        DISPLAY CLI_ID          LINE 10 COL 30.
        DISPLAY SALDO-ZZ        LINE 11 COL 30.
        DISPLAY CLI_NOMBRE      LINE 12 COL 30.
        DISPLAY CLI_DIRECCION   LINE 13 COL 30.
        ACCEPT X                LINE 14 COL 70.

       F-LEO-DATOS.
        EXIT.

       END PROGRAM "INICIO".
