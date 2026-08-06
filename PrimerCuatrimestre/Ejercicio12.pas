//Programa que solicte cuatro valores numericos enteros e informar su suma y promedio

program ejercicio012;

uses crt;

var     n1,n2,n3,n4,sum: integer;
        promedio:real;

begin
        clrscr;
        promedio:=4;
        writeln('Ingrese 1 valor entero'); readln(n1);
        writeln('Ingrese 2 valor entero'); readln(n2);
        writeln('Ingrese 3 valor entero'); readln(n3);
        writeln('Ingrese 4 valor entero'); readln(n4);

        sum:= n1+n2+n3+n4;
        promedio:= sum/promedio;
        writeln('La suma de sus productos es: ',sum);
        writeln('Su promedio es: ',promedio:0:2);
        readkey;


end.