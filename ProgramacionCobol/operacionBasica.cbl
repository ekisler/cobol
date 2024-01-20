      *================================================================*
      * Author: Emisael Kisler.                                        *
      * Date: 19/01/2024.                                              *
      * Purpose: Operaciones Aritmecias Basicas.                       *
      * Tectonics: cobc.                                               * 
      *================================================================*
       IDENTIFICATION DIVISION.
       PROGRAM-ID. OPERACIONES-BASICAS.

       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SOURCE-COMPUTER. HP-G3-800.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77   WS-NUM-1            PIC 9(4).
       77   WS-NUM-1-VALIDO     PIC 9(4).
       77   WS-NUM-2            PIC 9(4).
       77   WS-NUM-2-VALIDO     PIC 9(4).
       77   WS-RESULTADO        PIC 9(5).
       77   WS-RESULTADO-2      PIC ZZZZ9. 
       77   WS-RESIDUO          PIC 9(2).
       77   WS-RESIDUO-2        PIC Z9.
       77   WS-SI-NO            PIC X.

       PROCEDURE DIVISION.
       MAIN-LOOP.
       DISPLAY "*************************************************"
       DISPLAY "///////////////---¡BIENVENIDO!---///////////////*"
       DISPLAY "*************************************************".
      * 
      * Procedimiento SI-NO 
       SI-NO.
       DISPLAY "* ¿Desea continuar?                             *"
       DISPLAY "* ---> 'C' para CONTINUAR...                    *"
       DISPLAY "* ---> 'S' para SALIR...                        *"
       DISPLAY "*************************************************"           
      * 
      * El programa acepta la opcion que el usuario introduce 
       ACCEPT WS-SI-NO.
      *
      * El programa evalua lo introducido por el usuario
       IF WS-SI-NO = "C" OR WS-SI-NO = "c" THEN
      *
      * Si el usuario pulsa "C, c" es enviado al procedimiento DIVIDAMOS
          PERFORM DIVIDAMOS
      * 
      * Si el usuario selecciona otra opcion, sale del programa
       ELSE
          DISPLAY "*************************************************"
          DISPLAY "*     /////...SALIENDO DEL PROGRAMA...//////    *"
          DISPLAY "* !Estare aqui para ayudarte cuando gustes!     *"
          DISPLAY "*************************************************".
          STOP RUN.

      * Procedimiento DIVIDAMOS: Solicita al usuario dos numeros y 
      * realiza una operación matematicas con ellos
       DIVIDAMOS.
          DISPLAY "*************************************************"
          DISPLAY "* Por favor, introduce el PRIMER numero...      *"
          DISPLAY "* El numero debe ser maximo de 4 cifras (1234): *"
          DISPLAY "*************************************************".
      *
      * Se guarda lo que digite el usuario en WS-NUM-1
          ACCEPT WS-NUM-1.
      * Movemos WS-NUM-1 a WS-NUM-1-VALIDO para poder validar con la -
      * FUNCTION NUMVAL de lo contrario dara error si validamos      -
      * directamente (Relativo al compilador)
          MOVE FUNCTION NUMVAL(WS-NUM-1) TO WS-NUM-1-VALIDO.
      
      * Si la validacion falla (es decir, el usuario no ingreso un      
      * numero), enviamos el error y retornamos al procedimiento 
      * DIVIDAMOS
          IF WS-NUM-1-VALIDO = 0 THEN
            PERFORM EL-ERROR     
      * Si el numero valida correctamnte, entonces continuamos...
            ELSE
            DISPLAY "*************************************************"
            DISPLAY "* Por favor introduce el SEGUNDO numero         *"
            DISPLAY "* El numero debe ser maximo de 4 cifras (1234): *" 
            DISPLAY "*************************************************".
            ACCEPT WS-NUM-2.
            MOVE FUNCTION NUMVAL(WS-NUM-2) TO WS-NUM-2-VALIDO.
      * Si la validacion falla (es decir, el usuario no ingreso un      
      * numero), enviamos el error y retornamos al procedimiento 
      * DIVIDAMOS
          IF WS-NUM-2-VALIDO = 0 THEN
            PERFORM EL-ERROR
          ELSE     
      *
      * Las 4 operaciones aritmeticas basica.
      *   ADD WS-NUMERO-1 TO WS-NUMERO-2 GIVING WS-RESULTADO.
      *   SUBTRACT WS-NUMERO-1 FROM WS-NUMERO-2 GIVING WS-RESULTADO.
      *   MULTIPLY WS-NUMERO-1 BY WS-NUMERO-2 GIVING WS-RESULTADO.

      * Si ambas validaciones son correctas, realizamos la division...
          DIVIDE WS-NUM-1-VALIDO BY WS-NUM-2-VALIDO GIVING WS-RESULTADO
      * Obtenemos el RESIDUO de la division    
          REMAINDER WS-RESIDUO.
          MOVE WS-RESULTADO TO WS-RESULTADO-2.
     
          IF WS-RESIDUO > 0 THEN
             MOVE WS-RESIDUO TO WS-RESIDUO-2
             DISPLAY "El resultado de la DIVISION es: " WS-RESULTADO-2
             DISPLAY "El RESIDUO es: " WS-RESIDUO-2
             DISPLAY "*************************************************"
      * El usuario es devuelto al procedimiento SI-NO para comenzar
             PERFORM SI-NO
      *
      * Si no hay residuo en la operacion imprimimos solo el resultado
      * de la division.
           ELSE
             DISPLAY "El resultado de la DIVISION es: " WS-RESULTADO-2
             DISPLAY "*************************************************"
      * Devolvemos al usuario al procedimiento SI-NO para comenzar
             PERFORM SI-NO
           END-IF.
      * Reutilizamos el codigo de ERROR!
       EL-ERROR.
            DISPLAY "*************************************************"
            DISPLAY "////////////////////¡ERROR!//////////////////////"
            DISPLAY "* Por favor, agregue solo numeros validos...    *"
            DISPLAY "* Intente de nuevo...                           *"
            DISPLAY "*************************************************"
            PERFORM DIVIDAMOS
            .
       END PROGRAM OPERACIONES-BASICAS. 
     