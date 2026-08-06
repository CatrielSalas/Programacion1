{Algoritmo que lea tres valores DIA (num‚rico) MES (num‚rico) y A¥O (num‚rico) y escriba
en el siguiente formato: el d¡a DIA de MES del A¥O. Ejemplo: el d¡a 5 de Septiembre de 2020.}

program ejercicio023;

uses crt;

var
        dia, mes, anio: integer;

begin
  clrscr;

                writeln('Ingrese el dia: '); readln(dia);
                writeln('Ingrese el mes (1-12): '); readln(mes);
                write('Ingrese el anio: '); readln(anio);

                write('El dia ', dia, ' de ');
                        case mes of
                        1:
                        begin
                           write('Enero');
                        end;
                        2:
                        begin
                           write('Febrero');
                        end;
                        3:
                        begin
                           write('Marzo');
                        end;
                        4:
                        begin
                           write('Abril');
                        end;
                        5:
                        begin
                        write('Mayo');
                        end;
                        6:
                        begin
                        write('Junio');
                        end;
                        7:
                        begin
                        write('Julio');
                        end;
                        8:
                        begin
                        write('Agosto');
                        end;
                        9:
                        begin
                        write('Septiembre');
                        end;
                        10:
                        begin
                        write('Octubre');
                        end;
                        11:
                        begin
                        write('Noviembre');
                        end;
                        12:
                        begin
                        write('Diciembre');
                        end;
                        else
                        writeln('Mes invalido ');
                        end;
                        writeln(' de ', anio);
                        readkey;
end.

