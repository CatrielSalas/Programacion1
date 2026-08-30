{Buscar el mínimo elemento de un vector e intercambiarlo con el máximo. Mostrar vector 
intercambiado.}

program ejercicio111;
uses crt;

const
    n = 6; 
var
  i: Integer;
  min,max: Integer;
  aux: Integer;
  vec:array[1..n] of Integer;
begin
      clrscr;
      writeln('Ingrese ', n, ' numeros enteros:');
      for i := 1 to n do
      begin
        write('Elemento [', i, ']: ');
        readln(vec[i]);
      end;

    min := 1;
    max := 1;

    for i := 2 to n do
    begin
      if vec[i] < vec[min] then
        min := i;

      if vec[i] > vec[max] then
        max := i;
    end;

    aux := vec[min];
    vec[min] := vec[max];
    vec[max] := aux;

    writeln;
    writeln('--- Vector Intercambiado ---');
    for i := 1 to n do
    begin
      write(vec[i], ' ');
    end;

  Readkey;
end.