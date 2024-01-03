      ******************************************************************
      * Author: Cobol clase nro 7
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
      * La Division IDENTIFICATION DIVISION.
       IDENTIFICATION DIVISION.
       PROGRAM-ID. ESTRUCTURA2.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 MES-INGRESADO        PIC 99 value 0.

           05 ENERO      PIC X(7) value 'ENERO'.
           05 FEBRERO    PIC X(9) value 'FEBRERO'.
           05 MARZO      PIC X(6) value 'MARZO'.
           05 ABRIL      PIC X(6) value 'ABRIL'.
           05 MAYO       PIC X(5) value 'MAYO'.
           05 JUMIO      PIC X(6) value 'JUNIO'.
           05 JULIO      PIC X(6) value 'JULIO'.
           05 AGOSTO     PIC X(7) value 'AGOSTO'.
           05 SEPTIEMBRE PIC X(10) value 'SEPTIEMBRE'.
           05 OCTUBRE    PIC X(7) value 'OCTUBRE'.
           05 NOVIEMBRE  PIC X(9) value 'NOVIEMBRE'.
           05 DICIEMBRE  PIC X(9) value 'DICIEMBRE'.

           05 ENERO-DIAS       PIC 99 value 31.   
           05 FEBRERO-DIAS     PIC 99 value 28.   
           05 MARZO-DIAS       PIC 99 value 31.  
           05 ABRIL-DIAS       PIC 99 value 30.  
           05 MAYO-DIAS        PIC 99 value 31.  
           05 JUNIO-DIAS       PIC 99 value 30.  
           05 JULIO-DIAS       PIC 99 value 31.  
           05 AGOSTO-DIAS      PIC 99 value 31.  
           05 SEPTIEMBRE-DIAS  PIC 99 value 30.  
           05 OCTUBRE-DIAS     PIC 99 value 31.  
           05 NOVIEMBRE-DIAS   PIC 99 value 30.  
           05 DICIEMBRE-DIAS   PIC 99 value 31.  

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
         DISPLAY "Por favor ingrese un numero de mes (Del 01 al 12): ".
         ACCEPT MES-INGRESADO.

         IF MES-INGRESADO = 1
           DISPLAY "El mes de " ENERO "tiene " ENERO-DIAS " dias"

         ELSE IF MES-INGRESADO = 2
           DISPLAY "El mes de " FEBRERO "tiene " FEBRERO-DIAS " dias" 

         ELSE IF MES-INGRESADO = 3
           DISPLAY "El mes de " MARZO "tiene " MARZO-DIAS " dias"

         ELSE IF MES-INGRESADO = 4 OR MES-INGRESADO = 6 OR MES-INGRESADO
                               = 9 OR MES-INGRESADO = 11
           DISPLAY "El mes ingresado tiene " ABRIL-DIAS " dias"
         ELSE IF MES-INGRESADO = 5
           DISPLAY " El mes de " MAYO "tiene " MAYO-DIAS " dias"

         ELSE IF MES-INGRESADO = 7
           DISPLAY "El mes de " JULIO "tiene " JULIO-DIAS " dias"
         
         ELSE IF MES-INGRESADO = 8
           DISPLAY "El mes de " AGOSTO "tiene " AGOSTO-DIAS " dias"

         ELSE IF MES-INGRESADO = 10
           DISPLAY "El mes de " OCTUBRE " tiene " OCTUBRE-DIAS " dias"

         ELSE IF MES-INGRESADO = 12
           DISPLAY "El mes de " DICIEMBRE " tiene " DICIEMBRE-DIAS 
                               " dias"

         END-IF.
         STOP RUN.
         