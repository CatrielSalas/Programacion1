{Construir un algoritmo que permita escribir los d¡as de la semana, dependiendo de un valor
entero ingresado. Si el valor no es v lido, escribir un mensaje de error. Ej.: DIA = 1 escribir
LUNES; DIA = 2 escribir MARTES, etc.}

program ejercicio026;

uses crt;

var  dia:integer;

begin
        clrscr;
        writeln('Escribi un numero entero: '); readln(dia);

        write('El dia de la semana es ' );

        case dia of

        1:
        begin
        write('Lunes');
        end;
        2:
        begin
        write('Martes');
        end;
        3:
        begin
        write('Miercoles');
        end;
        4:
        begin
        write('Jueves');
        end;
        5:
        begin
        write('Viernes');
        end;
        6:
        begin
        write('Sabado');
        end;
        7:
        begin
        write('Domingo');
        end;

        else
        clrscr;
        begin
        writeln('Error: Numero no par');
        end;
        end;
        readkey;


end.