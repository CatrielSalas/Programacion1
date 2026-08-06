{Leer N n£meros e imprimir cuantos n£meros igual a cero se ingresaron.}


program ejercicio054;

uses crt;

var n,numero:integer;
    ceros:integer;
    i:integer;


begin
        clrscr;

        ceros:=0;

        writeln('Ingrese una cantidad de numeros');
        readln(n);

        for i:= 1 to N do

        begin

        writeln('Ingrese un numero ',i,' : ');
        readln(numero);

        if numero = 0 then

        begin
          ceros:= ceros + 1;
        end;

        end;


        if ceros = 1 then
                writeln('Se ingreso ', ceros, ' cero')

        else
        begin
                writeln('Se ingresaron ', ceros, ' ceros');
        end;

    readkey;
end.
