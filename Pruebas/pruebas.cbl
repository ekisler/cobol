           IDENTIFICATION DIVISION.
           PROGRAM-ID. LECTURA-CLIENTES.
           
           ENVIRONMENT DIVISION.
           INPUT-OUTPUT SECTION.
           FILE-CONTROL.
              SELECT CLIENTES-FILE ASSIGN TO "clientes.dat".
           
           DATA DIVISION.
           FILE SECTION.
           FD CLIENTES-FILE.
           01 CLIENTE.
              05 CLIENTE-ID PIC X(10).
              05 CLIENTE-NAME PIC X(50).
              05 CLIENTE-ADDRESS PIC X(100).
              05 FILLER PIC X(1000).
           
           WORKING-STORAGE SECTION.
           01 WS-END-OF-FILE PIC X VALUE 'N'.
           
           PROCEDURE DIVISION.
           OPEN INPUT CLIENTES-FILE.
           PERFORM UNTIL WS-END-OF-FILE = "Y"
              READ CLIENTES-FILE
              AT END MOVE 'Y' TO WS-END-OF-FILE
              DISPLAY CLIENTE
           END-PERFORM
           CLOSE CLIENTES-FILE.
           
           STOP RUN.
