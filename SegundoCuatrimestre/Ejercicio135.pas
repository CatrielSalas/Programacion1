{Convertir una matriz de números de dimensión N x N en un vector ordenado de menor a 
mayor.  }

program ejercicio135;

uses crt;

const f = 3; c = 3;
      max = f*c;

type matriz = array [1..f,1..c] of integer;
     vector = array [1..max] of integer;

var  vector1:vector; matriz1:matriz;
     fila,columna:integer; j,i,aux:integer;

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

      i:= 1;
      for fila:= 1 to f do
        begin
          for columna:= 1 to c do
          begin
            vector1[i]:= matriz1[fila,columna];
            i:= i+1;
          end;
        end;
        
      for i:= 1 to max -1 do
        begin
          for j:= 1 to max - i do
            begin
              if vector1[j] > vector1[j+1] then
                begin
                  aux:= vector1[j];
                  vector1[j] := vector1[j+1];
                  vector1[j+1]:= aux;
                end;
            end;
        end;
      WriteLn;
      WriteLn('--- VECTOR ORDENADO DE MENOR A MAYOR ---');
      for i:= 1 to max do
        begin
          Write('[',vector1[i],'] ');
        end;
        WriteLn;
    
    readkey;
end. 