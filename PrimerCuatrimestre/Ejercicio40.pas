{Programa que lee una calificaci¢n entre 0 y 10 y la transforma en nota alfab‚tica e imprima
el resultado}

program ejercicio040;

uses crt;

var nota:integer;

begin
        clrscr;

        writeln('Ingrese la nota ');
        readln(nota);
        write('Su nota: ');
        case nota of
        0..3:
        begin
        write('Insuficiente');
        end;
        4,5:
        begin
        write('Suficiente');
        end;
        6,7:
        begin
        write('Bien ');
        end;
        8,9:
        begin
        write('Muy bien ');
        end;
        10:
        begin
        write('Sobresaliente ');
        end;

        else

        clrscr;
        begin
        writeln('Escriba una nota correcta ');
        end
        end;

        readkey;

end.