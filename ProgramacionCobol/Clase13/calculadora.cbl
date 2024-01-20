      *================================================================*
      * Author: Programador Carlos Arabito                             * 
      * Date: 08/01/2024                                               * 
      * Purpose: Calculadora.                                          *      
      * Tectonics: cobc                                                * 
      *================================================================*
       IDENTIFICATION DIVISION.
       PROGRAM-ID. CALCULADORA.
       
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SOURCE-COMPUTER. HP-G3.
       
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 Opciones PIC X VALUE SPACES.
          88 Sumar VALUE  "+".
          88 Restar VALUE "-".
          88 Multiplicar VALUE "*".
          88 Dividir VALUE "/".
          88 Salir VALUE "s".

       77 Numero1 PIC 999 VALUE ZEROS.
       77 Numero2 PIC 999 VALUE ZEROS.

       77 Resultado PIC S999999 VALUE ZEROS.

       PROCEDURE DIVISION.
      *
      * Presenta un menú al usuario y le solicita una opción.
       AceptaDatos.
       DISPLAY "Elige una operación.".
       DISPLAY "Sumar (+)".
       DISPLAY "Restar (-)".
       DISPLAY "Multiplicar (*)".
       DISPLAY "Dividir (/)".
       DISPLAY "Salir (s)".
       ACCEPT Opciones.
      *
      * Bucle infinito como el While de JavaScript o Python.
       IF Sumar THEN
           PERFORM Suma
       ELSE
           IF Restar THEN
             PERFORM Resta 
           ELSE
              IF Multiplicar THEN
                PERFORM Multiplicacion 
              ELSE
                 IF Dividir THEN
                  PERFORM Dividiendo
                 ELSE
                    IF Salir
                       DISPLAY "Saliendo del programa..."
                       STOP RUN
                    ELSE
                       DISPLAY "Opcion invalida. Intente de nuevo."
                       PERFORM AceptaDatos
                END-IF
              END-IF
           END-IF
       END-IF.

      *
      * Comianzan los párrafos para los PERFORM. La ejecución finaliza después de ejecutar su código.      
       Suma. 
           DISPLAY "Has elegido Sumar (+)".
           PERFORM SolicitaNumeros.
           ADD Numero1 To Numero2 GIVING Resultado.
           DISPLAY "El resultado de la suma es: " Resultado "."
           PERFORM AceptaDatos.

       Resta.
           DISPLAY "Has elegido restar (-)".
           PERFORM SolicitaNumeros.
           SUBTRACT Numero2 FROM Numero1 GIVING Resultado.
           DISPLAY "El resultado de la resta es: " Resultado "."
           PERFORM AceptaDatos.
         
       Multiplicacion.
           DISPLAY "Has elegido Multiplicación (*)".
           PERFORM SolicitaNumeros.
           MULTIPLY Numero1 BY Numero2 GIVING Resultado.
           DISPLAY "El resultado de la Multiplicación es: " Resultado 
                   "."
           PERFORM AceptaDatos.

       Dividiendo.
           DISPLAY "Has elegido División".
           PERFORM SolicitaNumeros.
           DIVIDE Numero1 BY Numero2 GIVING Resultado.
           DISPLAY "El resultado de la division es: " Resultado "."
           PERFORM AceptaDatos.

       SolicitaNumeros.
       DISPLAY "Por favor, introduzca el primer número: ".
       ACCEPT Numero1.
       DISPLAY "Por favor, introduzca el segundo número: ".
       ACCEPT Numero2.

       END PROGRAM CALCULADORA.
           