 //Calcular el  rea de una circunferencia, dada la medida de su radio
program ejercicio02;

uses crt;

var area,radio:real;

begin
        clrscr;
        writeln('Ingrese su radio'); readln(radio);

        area:=( 3.14 * radio * radio);
        writeln('Su area es: ', area:0:2);
        readkey;



end.

