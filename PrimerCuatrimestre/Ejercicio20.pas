{Algoritmo que pregunte por su nombre y los a¤os que tiene. Debe dar como respuesta el
n£mero aproximado de d¡as vividos y un mensaje de fin de programa.}

program ejercicio020;

uses crt;

var nombre:string;
    edad,tiempo:integer;

begin
     clrscr;

     tiempo:= 365;

     writeln('Ingrese su nombre: '); readln(nombre);
     writeln('Ingrese su edad:   '); readln(edad);

     tiempo:= edad*tiempo;

     writeln('Ah vivido ',tiempo,' dias');

     write('Fin de Programa');

   readkey;
end.
