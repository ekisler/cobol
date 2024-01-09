      *================================================================*
      * Author: Programador                                            *
      * Date: XX/XX/XXXX                                               *
      * Purpose:                                                       *
      * Tectonics: cobc                                                *
      *================================================================*
      *
      * 1) Seccion de Identificacion obligatoria. 
       IDENTIFICATION DIVISION.
       PROGRAM-ID. NOMBRE-DEL-PROGRAMA.
       AUTHOR Nombre del autor.
       INSTALLATION Lugar donde está instalado.
       DATE-WRITTEN Fecha de creación.
       DATE-COMPILED Fecha de compilación.
       
      *
      * 2) Seccion de ambiente del programa.
       ENVIRONMENT DIVISION.
             CONFIGURATION SECTION.
                   SOURCE-COMPUTER. Ordenador donde se escribió el fuente.
                   OBJECT-COMPUTER. Ordenador donde se ejecuta el objeto.
                   SPECIAL-NAMES. Cambiar valores para constantes del lenguaje, pueden variar en cada compilador.
             INPUT-OUTPUT SECTION.
                   FILE-CONTROL. Archivos que se utilizaran en el programa.
                   I-O CONTROL. Metodo de acceso que se utilizara para acceder a los archivos.

      *
      * 3) Seccion de la division de datos. 
       DATA DIVISION.
             FILE SECTION. Aqui describiremos todos los campos que componen los registros de todos los archivos que vayamos a utilizar, que previamente habremos declarado en la INPUT-OUTPUT SECTION dentro de la ENVIRONMENT DIVISION.
               FD NOMBRE-DEL-ARCHIVO. La descripción del archivo debe estar en formato de lista. Cada campo de la lista debe estar definido utilizando una cláusula 01. La cláusula 01 define el nombre del campo, el tipo de datos del campo, y el tamaño del campo.
                   01 REGISTRO-ARCHIVO.
                     02 CAMPO-1 PIC X(10). El tipo de datos del campo puede ser uno de los siguientes:
                     02 CAMPO-2 PIC X(10).                                   X: Cadena de caracteres
                     02 CAMPO-3 PIC X(30).                                   9: Número entero
                FD OTRO-ARCHIVO.                                             V9: Número real
                     01 REGISTRO-OTRO-ARCHIVO.                               A: Fecha
                     02 CAMPO-1 PIC X(10).                                   C: Hora
                     02 CAMPO-2 PIC X(20).                                   B: Binario                                                                            
                     02 CAMPO-3 PIC X(30).  
       WORKING-STORAGE SECTION. En ella declararemos todas las variables no referentes a archivos, pero que durante la ejecución del programa vayamos a utilizar.
       LINKAGE SECTION. Esta es la sección donde se registrarán las variables que nos servirán para enlazar el programa principal con el que llamemos mediante la orden CALL.
       COMMUNICATION SECTION. (No la he utilizado nunca).
       SCREEN SECTION. En ésta sección podremos describir los atributos y campos a utilizar en las pantallas.

      *
      * 4) Seccion de procedimiento.
       PROCEDURE DIVISION.
       DECLARATIVES.
       Nombre-seccionSECTION.
       USE AFTER ERROR PROCEDURE ON tipo.
       Nombre-parrafo.
       Sentencias.
       …..
       END DECLARATIVES.
       Nombre-seccion SECTION.
       Nombre-parrafo.
       Sentencias.