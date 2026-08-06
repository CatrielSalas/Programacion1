{Programa que lea una secuencia de n£meros no nulos (con un cero termina la secuencia).
Que se imprima el mayor y en el caso de haber alguno negativo, imprimir: "hay n£meros
negativos".}

program ejercicio063;

uses crt;

var num:real;
    numMayor:real;

begin
        numMayor:=0;
        clrscr;

        writeln('Ingrese un numero distinto de cero ');
        readln(num);

        while num <> 0 do
        begin
                if num > numMayor then
                begin
                   numMayor:=num;
                end;
                if num < 0 then
                begin
                writeln('Hay n£meros negativos ');
                end;
        writeln('Ingrese un numero distinto de cero ');
        readln(num);
        end;

        writeln('------------------------------');
        writeln('El numero mayor es ',numMayor:0:0);

        readkey;

end.




