{Escribir un algoritmo que transforme una fecha dada en d¡as, meses y a¤os en un numero
entero con formato AAAAMMDD. Ejemplo: si la fecha es 25 mayo 2028 entonces devolver
20280525.}

program ejercicio070;

uses crt;

var
  dia, mes, anio, fecha: longint;

begin
        clrscr;
        write('Ingrese el dia: ');
        readln(dia);

        write('Ingrese el mes: ');
        readln(mes);

        write('Ingrese el anio: ');
        readln(anio);

        fecha := anio * 10000 + mes * 100 + dia;
        writeln('Fecha en formato AAAAMMDD: ', fecha);
  readkey;
end.
