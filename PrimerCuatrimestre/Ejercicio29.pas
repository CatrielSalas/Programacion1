{Dise¤ar el algoritmo que permita comprobar si un n£mero dado es par.}

program ejercicio029;

uses crt;

var num:integer;

begin
        clrscr;

        writeln('Ingrese un numero '); readln(num);
        if num mod 2 = 0 then
        begin
        writeln('Su numero es par ');
        end
        else
        begin
        writeln('Numero impar');
        end;

        readkey;



end.


