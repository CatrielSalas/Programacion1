{Escribir un algoritmo que permita calcular el n£mero de cd's necesarios para hacer una
copia de seguridad de la informaci¢n almacenada en un disco cuya capacidad efectiva se
conoce (gigabytes) y es ingresada por el usuario. Cada cd tiene 700mb y 1gb es 1024mb.}

program ejercicio022;

uses crt;
var
    capacidadGB : real;
    capacidadMB : real;
    cantidadCD  : integer;

begin
        clrscr;
    writeln('Ingrese la capacidad del disco en GB:');
    readln(capacidadGB);

    { Convertir GB a MB }
    capacidadMB := capacidadGB * 1024;

    { Calcular cantidad de CDs (redondeo hacia arriba) }
    cantidadCD := trunc(capacidadMB / 700);

    if (capacidadMB / 700) > cantidadCD then
        cantidadCD := cantidadCD + 1;

    writeln('Se necesitan ', cantidadCD, ' CDs para la copia de seguridad.');
    readkey;

    end.