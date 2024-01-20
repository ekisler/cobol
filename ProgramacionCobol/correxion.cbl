      *================================================================*
      * Author: Cobol clase nro 7                                      *
      * Date:                                                          *
      * Purpose:                                                       *
      * Tectonics: cobc                                                *
      *================================================================* 
       IDENTIFICATION DIVISION.
       PROGRAM-ID. ESTRUCTURA2.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 MES-INGRESADO     PIC 99 VALUE 0.
       
       01 MES-NOMBRE        PIC X(10) VALUE SPACES.
       01 DIAS-MES          PIC 99 VALUE 0.
       
       01 ENERO.
         05 ENERO-MES       PIC X(5) VALUE 'ENERO'.
         05 ENERO-DIAS      PIC 99 VALUE 31.  

       01 FEBRERO.
         05 FEBRERO-MES     PIC X(7) VALUE 'FEBRERO'.
         05 FEBRERO-DIAS    PIC 99 VALUE 28.

       01 MARZO.
         05 MARZO-MES       PIC X(5) VALUE 'MARZO'.
         05 MARZO-DIAS      PIC 99 VALUE 31. 
       
       01 ABRIL.
         05 ABRIL-MES       PIC X(5) VALUE 'ABRIL'.
         05 ABRIL-DIAS      PIC 99 VALUE 30.

       01 MAYO.
         05 MAYO-MES        PIC X(4) VALUE 'MAYO'.
         05 MAYO-DIAS       PIC 99 VALUE 31.

       01 JUNIO.
         05 JUNIO-MES       PIC X(5) VALUE 'JUNIO'.
         05 JUNIO-DIAS      PIC 99 VALUE 30.

       01 JULIO.
         05 JULIO-MES       PIC X(5) VALUE 'JULIO'.
         05 JULIO-DIAS      PIC 99 VALUE 31.

       01 AGOSTO. 
         05 AGOSTO-MES      PIC X(6) VALUE 'AGOSTO'.
         05 AGOSTO-DIAS     PIC 99 VALUE 31.   

       01 SEPTIEMBRE.
         05 SEPTIEMBRE-MES  PIC X(10) VALUE 'SEPTIEMBRE'.
         05 SEPTIEMBRE-DIAS PIC 99 VALUE 30. 

       01 OCTUBRE.
         05 OCTUBRE-MES     PIC X(7) VALUE 'OCTUBRE'.
         05 OCTUBRE-DIAS    PIC 99 VALUE 31. 

       01 NOVIEMBRE.
         05 NOVIEMBRE-MES   PIC X(9) VALUE 'NOVIEMBRE'.
         05 NOVIEMBRE-DIAS  PIC 99 VALUE 30. 

       01 DICIEMBRE.
         05 DICIEMBRE-MES   PIC X(10) VALUE 'DICIEMBRE'.
         05 DICIEMBRE-DIAS  PIC 99 VALUE 31.       
       
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
        DISPLAY "Por favor ingrese un numero de mes (Del 01 al 12): ".
        ACCEPT MES-INGRESADO.
       
        IF MES-INGRESADO = 1 THEN
           MOVE ENERO-MES        TO MES-NOMBRE
           MOVE ENERO-DIAS       TO DIAS-MES 

           ELSE IF MES-INGRESADO = 2 THEN
            MOVE FEBRERO-MES     TO MES-NOMBRE
            MOVE FEBRERO-DIAS    TO DIAS-MES

           ELSE IF MES-INGRESADO = 3 THEN
            MOVE MARZO-MES       TO MES-NOMBRE
            MOVE MARZO-DIAS      TO DIAS-MES
 
           ELSE IF MES-INGRESADO = 4 THEN
            MOVE ABRIL-MES       TO MES-NOMBRE
            MOVE ABRIL-DIAS      TO DIAS-MES
 
           ELSE IF MES-INGRESADO = 5 THEN
            MOVE MAYO-MES        TO MES-NOMBRE
            MOVE MAYO-DIAS       TO DIAS-MES

           ELSE IF MES-INGRESADO = 6 THEN
            MOVE JUNIO-MES       TO MES-NOMBRE
            MOVE JUNIO-DIAS      TO DIAS-MES

           ELSE IF MES-INGRESADO = 7 THEN
            MOVE JULIO-MES       TO MES-NOMBRE
            MOVE JULIO-DIAS      TO DIAS-MES

           ELSE IF MES-INGRESADO = 8 THEN
            MOVE AGOSTO-MES      TO MES-NOMBRE
            MOVE AGOSTO-DIAS     TO DIAS-MES  

           ELSE IF MES-INGRESADO = 9 THEN
            MOVE SEPTIEMBRE-MES  TO MES-NOMBRE
            MOVE SEPTIEMBRE-DIAS TO DIAS-MES 

           ELSE IF MES-INGRESADO = 10 THEN
            MOVE OCTUBRE-MES     TO MES-NOMBRE
            MOVE OCTUBRE-DIAS    TO DIAS-MES 

           ELSE IF MES-INGRESADO = 11 THEN
            MOVE NOVIEMBRE-MES   TO MES-NOMBRE
            MOVE AGOSTO-DIAS     TO DIAS-MES 

           ELSE IF MES-INGRESADO = 12 THEN
            MOVE DICIEMBRE-MES   TO MES-NOMBRE
            MOVE DICIEMBRE-DIAS  TO DIAS-MES 

        END-IF.

         
       
        DISPLAY "El mes de " MES-NOMBRE " tiene " DIAS-MES " dias".
       
        
        STOP RUN.
       