{Convertir una matriz de números de dimensión N x N en un vector ordenado de menor a 
mayor.  }

program ejercicio135;

uses crt;

const f = 3; c = 3;

type matriz = array [1..f,1..c] of integer;
     vector = array [1..9] of integer;

var  vector1:vector; matriz1:matriz;
     fila,columna:integer;
     


begin
    clrscr;
    
    for fila:= 1 to f do
      begin
        for columna:= 1 to c do
          begin
            Write('Elemento [',fila,',',columna,']: ');
            ReadLn(matriz1[fila,columna]);
          end;
      end;
    WriteLn;
    for fila:= 1 to f do
      begin
        for columna:= 1 to c do
          begin
            Write(matriz1[fila,columna]:8,' |');
          end;
        WriteLn;
      end;

      for i:= 1 to vector1 do
        begin
          
        end;
    
    readkey;
end.