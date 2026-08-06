{Escribir un algoritmo que determine si un n£mero ingresado tiene o no parte fraccionaria.}

program ejercicio035;

uses crt;

var numero:real;



begin
    clrscr;
    writeln('Ingrese un numero ');
    readln(numero);

    if numero = trunc (numero) then
    begin
       writeln('El numero no tiene fraccion');
    end
    else
    begin
       writeln('El numero tiene parte fraccionaria');
    end;
    readkey;

end.
