{Se realiza un censo en un edificio, que tiene 4 departamentos.
De cada departamento se ingresa la cantidad de personas mayores de edad y la cantidad de
personas menores de edad que viven en el mismo (se ingresa un 0 si el departamento est 
desocupado).
Al finalizar la carga de datos, el programa debe informar: - El total de personas que viven en el edificio.
- Si viven m s personas mayores, m s personas menores o iguales y cu ntos son.}

program ejercicio073;

uses crt;

var i:integer;
    menorEdad,mayorEdad,contPersonas,contMayores,contMenores:integer;
    opcion:string;

begin
        contMayores:=0;
        contMenores:=0;
        contPersonas:=0;

        clrscr;

        for i:= 1 to 4 do

        begin
        writeln('Esta desocupado el departamento  ',i, ' SI/NO');
        readln(opcion);

        if lowercase(opcion) = 'si' then

                begin
                        writeln('El departamento ',i,' esta descocupado');
                        writeln('---------------------------------------');
                end
        else if lowercase(opcion) = 'no' then
                begin
                        writeln('Cuantas personas mayores de edad tiene el departamento ',i);
                        readln(mayorEdad);
                        writeln('Cuantas personas menores de edad conviven en el mismo: ');
                        readln(menorEdad);
                        writeln('---------------------------------------------');
                end;

                contMayores:= contMayores + mayorEdad;
                contMenores:= contMenores + menorEdad;
                contPersonas:= contMayores + contMenores;
        end;

        writeln('Cantidad de personas en el edificio ', contPersonas);
        writeln('Cantidad de personas Mayores de edad: ',contMayores);
        writeln('Cantidad de personas Menores de edad: ',contMenores);

        if contMayores > contMenores then
        begin
                writeln('Hay mas cantidad de mayores abitando en el edificio');
        end
        else if contMenores > contMayores then
        begin
                writeln('Hay mas cantidad de menores abitando en el edificio');
        end
        else
        begin
                writeln('Hay una cantidad igual de Menores como Mayores');
        end;

        readkey;

end.

