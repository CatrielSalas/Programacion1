{ Dadas 2 matrices A y B, diseñar un algoritmo para compararlas y verificar si B es la 
transpuesta de A. }

program ejercicio129;

uses crt;

const
        f=4; c=4;
type    
        matriz= array[1..f,1..c] of integer;

var matrizA,matrizB:matriz; fila,columna:integer; esTranspuesta:Boolean;


begin
    clrscr;
        WriteLn('Matriz A');
        for fila:= 1 to f do
          begin
            for columna:= 1 to c do
             begin
               write('Elemento [', fila, ',', columna, ']: ');
                    readln(matrizA[fila, columna]);
             end;
                
          end;
        
        WriteLn('Matriz B');
        for fila:= 1 to f do
          begin
            for columna:= 1 to c do
             begin
               write('Elemento [', fila, ',', columna, ']: ');
                    readln(matrizB[fila, columna]);
             end;
                
          end;
        clrscr;

        WriteLn('Matriz A');
        WriteLn;
        for fila := 1 to f do
          begin
           for columna:= 1 to c do
             begin
               Write(matrizA[fila,columna]:8 ,' ');
             end;
             WriteLn;
            end;

        WriteLn;
        
        WriteLn('Matriz B');
        WriteLn;
        for fila := 1 to f do
          begin
           for columna:= 1 to c do
             begin
               Write(matrizB[fila,columna]:8 ,' ');
             end;
             WriteLn;
            end;
    
    esTranspuesta := true;
    
        for fila := 1 to f do
            begin
                for columna := 1 to c do
                begin
                    if matrizB[fila, columna] <> matrizA[columna, fila] then
                    begin
                        esTranspuesta := false;
                    end;
                end;
            end;

        WriteLn;

        if esTranspuesta then
            WriteLn('Resultado: LA matriz B SI es la transpuesta de A.')
        else
            WriteLn('Resultado: LA matriz B NO es la transpuesta de A.');

        readkey;
end.