{ Dado un matriz de N x M, de componentes enteros, definir un algoritmo que genere otra 
matriz, en donde cada componente sea el producto del primero por el Nº de columna que 
ocupa en la misma}

program ejercicio120;
uses crt;
const n=2; m=2;

type mat = array[1..n,1..m] of integer;

var mat1,mat2:mat; i,j:integer;

begin
    clrscr;
        for i:= 1 to n do
          begin
            for j:= 1 to m do
              begin
                Write('Ingrese el numero de la matriz [Fila ',i,', Columna ',j,']--> ');
                ReadLn(mat1[i,j]);
                mat2[i,j]:= mat1[i,j]*j;
              end;
          end;
        
        WriteLn('===Resultado de la matriz===');
        for i:= 1 to n do
          begin
            for j:= 1 to m do
              begin
                Write(mat2[i,j]:4);
              end;
              WriteLn;
          end;
        readkey;
end.
