{Dise¤ar un algoritmo que permita mostrar el estado civil de un empleado seg£n un valor
ingresado. Los valores son: 1 - casado; 2 - soltero; 3 - viudo; 4 - separado.}

program ejercicio025;

uses crt;

var estadocivil:integer;

begin
        clrscr;

        writeln('Ingrese un numero del 1 al 4: '); readln (estadocivil);

        write('Su estado civil ');
        case estadocivil of
        1:
        begin
        write('Casado');
        end;
        2:
        begin
        write('Soltero');
        end;
        3:
        begin
        write('Viudo');
        end;
        4:
        begin
        write('Separado');
        end;
        end;
        readkey;

end.