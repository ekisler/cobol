      *================================================================*
      * Author: Emisael Kisler.                                        *
      * Date: 19/01/2024.                                              *
      * Purpose: Evaluate Basico.                                      *
      * Tectonics: cobc.                                               * 
      *================================================================*
       IDENTIFICATION DIVISION.
       PROGRAM-ID. EVALUATE-BASICO.

       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SOURCE-COMPUTER. HP-G3-800.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 SEGUN-SUELDO  PIC 9(5) VALUE ZEROS.
          88 BAJO         VALUE    1 THRU   449.
          88 JUNIOR       VALUE  450 THRU   750.
          88 SEMI-SENIOR  VALUE  751 THRU  1500.
          88 SENIOR       VALUE 1501 THRU  3000.
          88 GENIAL       VALUE 3001 THRU 20000.
       01 SALIR         PIC X.
 
       PROCEDURE DIVISION.
       MY-PROCEDURE.
       PERFORM INICIO.
       PERFORM PROCESO.
       PERFORM SALIDA.

       SALIDA.
       STOP RUN.

       INICIO.
            DISPLAY "POSICION SEGUN SUELDO EN LATINOAMERICA"
            DISPLAY "Introduce tu sueldo en $ EEUU al mes: "
            ACCEPT SEGUN-SUELDO.
            PERFORM PROCESO
            
            IF SALIR = "S" OR SALIR = "s"
                PERFORM SALIDA
            ELSE
                PERFORM INICIO
                INITIALIZE SEGUN-SUELDO.   

       PROCESO.
            EVALUATE TRUE
                WHEN BAJO
                    DISPLAY "Eres un aguila en un gallinero, vuela alto"
                    DISPLAY "------------------------------------------"
                WHEN JUNIOR
                    DISPLAY "Eres Junior..."
                    DISPLAY "--------------"
                WHEN SEMI-SENIOR
                    DISPLAY "Eres Semi-Senior..."
                    DISPLAY "-------------------"
                WHEN SENIOR
                    DISPLAY "Eres un Senior experimentado..."
                    DISPLAY "-------------------------------"
                WHEN GENIAL
                    DISPLAY "Ayuda a otros, se prudente..."
                    DISPLAY "-----------------------------"
      *
      * En algunos casos es posible que la opcion 'WHEN OTHER' no este
      * permitida.
      *
                WHEN OTHER
                    DISPLAY "¡No divagues!"
                    DISPLAY "-------------"
             END-EVALUATE
             DISPLAY "¿DESEA SALIR?"
             DISPLAY "Seleccione 'S' si desea SALIR... " 
             DISPLAY "Presione una tecla para CONTINUAR..."
             DISPLAY "------------------------------------"
             ACCEPT SALIR.     
