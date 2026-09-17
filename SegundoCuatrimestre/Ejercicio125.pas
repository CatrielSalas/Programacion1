{Programa que genera e imprima una matriz unitaria de orden N. Una matriz unitaria de 
orden N es la que tiene N filas y N columnas con todas sus componentes en 0 excepto las de 
su diagonal principal, que están a 1.  }

program ejercicio125;

uses crt;

const
  MAX = 100;

var
  matriz: array[1..MAX, 1..MAX] of integer;
  N, i, j: integer;

begin
        clrscr;

            write('Ingrese el N 3: ');
            readln(N);
                for i := 1 to N do
                begin
                    for j := 1 to N do
                    begin
                    if i = j then
                        matriz[i, j] := 1
                    else
                        matriz[i, j] := 0;
                    end;
                end;

            writeln;
            writeln('Matriz unitaria de orden ', N, ':');
            for i := 1 to N do
            begin
                for j := 1 to N do
                begin
                write(matriz[i, j]:3);
                    end;
                writeln;
            end;  
  writeln;
  readkey;
end.