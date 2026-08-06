{Programa que lea un n£mero A y otro entero positivo N y calcule la N_‚sima potencia de A.}

program ejercicio060;

uses crt;


var a,resultado:real;
        n,i:integer;

begin
        clrscr;

        write('Ingrese valor de A ');
        readln(a);
        write('Ingrese valor de N ');
        readln(n);
        resultado:=1;

        for i:= 1 to N do
        begin
        resultado:= resultado*a;
        end;

        writeln('El resultado es: ',resultado:0:2);
        readkey;

end.