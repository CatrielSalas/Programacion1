{Realizar un algoritmo que lea N n£meros e imprima:
a) Los valores: menor y mayor.
b) El porcentaje de n£meros impares.}

program ejercicio064;

uses crt;


var num:integer;
    numMayor,numMenor:integer;
    contImpares:integer;
    porcentaje:real;
    contNumeros:integer;

begin
        numMayor:=0;
        numMenor:=0;
        contNumeros:=0;
        clrscr;

        writeln('Ingrese un numero ');
        readln(num);

        while num <> 0 do
        begin
        contNumeros:=contNumeros+1;
        if num > numMayor then
                begin
                numMayor:= num;
                end
        else
                begin
                numMenor:= num;
                end;
        if num mod 2 <> 0 then
                begin
                contImpares:= contImpares+1;
                end;

        writeln('Ingrese un numero ');
        readln(num);

        end;

        porcentaje:= (contImpares*100)/contNumeros;


        writeln('--------------------------------');
        writeln('El numero menor es: ', numMenor);
        writeln('El numero mayor es: ', numMayor);
        writeln('El porcentaje de impares: ',porcentaje:0:2,' %');
        readkey;

end.
