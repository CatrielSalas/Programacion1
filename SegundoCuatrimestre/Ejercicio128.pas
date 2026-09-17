{Algoritmo que cargue una matriz cuadrada de números enteros. Informar si la matriz es 
triangular superior o triangular inferior. Sino que indique que no es matriz triangular.  
}

program ejercicio128;

uses crt;

const f = 4; c = 4;

type
        matriz = array [1..f,1..c] of integer;

var     mat:matriz; i,j:integer;
        esSuperior,esInferior:Boolean;

begin
        clrscr;

        for i:= 1 to f do
          begin
            for j:= 1 to c do
             begin
               Write('Elemento [',i,',',j,'] de la matriz: ');
               ReadLn(mat[i,j]);
             end;
          end;

        for i:= 1 to f do
          begin
            for j:= 1 to c do
             begin
               Write(mat[i,j]:5,' ');
             end; 
             WriteLn
          end;
        
        esSuperior:= True;
        esInferior:=True;

        for i := 1 to f do
        begin
            for j := 1 to c do
                begin
                    if (i > j) and (mat[i, j] <> 0) then
                    esSuperior := false;
                    if (i < j) and (mat[i, j] <> 0) then
                    esInferior := false;
            end;
        end;
        WriteLn;
        if esSuperior and esInferior then
            WriteLn('La matriz es diagonal (cumple ambas condiciones).')
        else if esSuperior then
            WriteLn('La matriz es triangular superior.')
        else if esInferior then
            WriteLn('La matriz es triangular inferior.')
        else
            WriteLn('La matriz NO es matriz triangular.');

    readkey;

end.