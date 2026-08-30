{Dada una matriz de N por N, contar la cantidad de ceros}

program ejercicio119;

uses crt;

const n=2; m=2;

type tMatriz = array[1..n,1..m] of integer;

var matriz1:tMatriz; i,j:integer; contCeros:integer;

begin
    clrscr;

    Writeln('Ingrese numeros de la matriz: ');
    
    for i:= 1 to n do
      begin
        for j:= 1 to m do
          begin
          Write('Posicion [',i,',',j,'] ');
            ReadLn(matriz1[i,j]);
          end;
      end;
      contCeros:=0;
      for i:= 1 to n do
        begin
          for j:= 1 to m do
            begin
              if matriz1[i,j] = 0 then
              contCeros:= contCeros + 1;
            end;
        end;
        WriteLn;
    
    Write('Cantidad de ceros encontrados: ',contCeros);
    readkey;

end.



