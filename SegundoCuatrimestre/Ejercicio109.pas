{Usar el procedimiento anterior para calcular el mínimo elemento de un vector e 
intercambiarlo por la componente en primer lugar.}
program ejercicio109;
uses crt;

const
  n = 5;

var
  i, aux, posMinima: integer;
  posicion: array[1..n] of integer;
  minimo: integer;

begin
        clrscr;
        for i := 1 to n do
        begin
            Write('Ingresar valor ', i, ': ');
            ReadLn(posicion[i]);
        end;

        minimo := posicion[1];
        posMinima := 1;
        for i := 2 to n do
        begin
            if posicion[i] < minimo then
            begin
                minimo := posicion[i];
                posMinima := i;
            end;
        end;

        aux := posicion[1];
        posicion[1] := posicion[posMinima];
        posicion[posMinima] := aux;

        WriteLn;
        WriteLn('Minimo: ', minimo,' Estaba en la posicion: ',posMinima);
        WriteLn;
        WriteLn('Vector:');

        for i := 1 to n do
            Write(posicion[i],'  ');

  ReadKey;
end.