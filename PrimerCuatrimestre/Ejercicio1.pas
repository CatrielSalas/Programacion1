//Calcular el promedio de tres n�meros ingresados.
program ejercicio01;
uses crt;
var num1,num2,num3:integer; prom:real;

begin
                clrscr;
                writeln('Ingrese numero 1'); readln(num1);
                writeln('Ingrese numero 2'); readln(num2);
                writeln('Ingrese numero 3'); readln(num3);

                prom:= (num1+num2+num3)/3;
                writeln('Su promedio es: ',prom:0:2);
                readkey;
end.
