// Calcular  A + B
program ejercicio010;

uses crt;
var resultado, a,b,c,d:real;
begin
        clrscr;
        writeln('Ingese el valor A : '); readln(a);
        writeln('Ingese el valor B : '); readln(b);
        writeln('Ingese el valor C : '); readln(c);
        writeln('Ingese el valor D : '); readln(d);

        resultado:= (a+b)/(c+d);
        writeln('El resultado de su operacion es: ',resultado:0:2);
        readkey;
end.

