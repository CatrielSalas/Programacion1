{Dadas dos matrices A y B obtener una C con la suma de ambas.}
program ejercicio120;
uses crt;

const n=2; m=2; 

type mat = array [1..n,1..m] of integer;

var matriz1,matriz2,matriz3: mat;
    i,j:integer;

begin
    clrscr;

    WriteLn('Ingrese numero de matriz 1: ');
                for i:= 1 to n do
        begin
                for j:= 1 to m do
                begin
                    Write('Posicion [',i,',',j,'] ');
                    ReadLn(matriz1[i,j]);
                end;
        end;
    WriteLn;

    WriteLn('Ingrese numero de matriz2: ');
                for i:= 1 to n do
        begin
                for j:= 1 to m do
                begin
                    Write('Posicion [',i,',',j,'] '); 
                    ReadLn(matriz2[i,j]);
                end;
        end;
    
                for i:= 1 to n do
                begin
                for j:= 1 to m do
                begin
                    matriz3[i,j]:= matriz1[i,j] + matriz2[i,j]; 
                end;        
        end;

    WriteLn('La suma de sus matrices dio como matriz: ');
                for i:= 1 to n do
                begin
                    for j:= 1 to m do
                    begin
                        Write(matriz3[i,j]:4);
                        Write(' '); 
                    end;        
                    WriteLn;
                end;
    readkey;

end.

