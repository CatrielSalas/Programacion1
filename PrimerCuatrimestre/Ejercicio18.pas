//Calcular el producto de dos n£meros naturales.

program ejercicio018;

uses crt;

var num1,num2:integer;
        prod:real;

begin
        clrscr;
        writeln('Valor 1 '); readln(num1);
        writeln('Valor 2 '); readln(num2);

        prod:= num1*num2;

        writeln('El valor de su producto es: ',prod:0:2);
        readkey;
end.

