{Pasar los elementos de un vector de longitud N, a una matriz de dimensión M x P, 
ordenando previamente los elementos del vector de mayor a menor. (Se supone que N ≥ M x 
P). }

program ejercicio123;

uses crt;

const m= 2; p=2; n=4;

type mat = array[1..m,1..p] of integer;
     vec_matriz = array[1..n] of integer;

var  matriz: mat; vec:vec_matriz; aux:integer; i,j,k:integer;

begin
        clrscr;
            for i:= 1 to n do
              begin
                Writeln('Ingresar valor : [',i,']');
                ReadLn(vec[i]);
              end;

            for i := 1 to n - 1 do
              begin
                for j := i + 1 to n do
                  begin
                        if vec[i] < vec[j] then
                        begin
                            aux := vec[i];
                            vec[i] := vec[j];
                            vec[j] := aux;
                        end;
                  end;
              end;

            Write('Orden de mayor a menor: ');
            for i:= 1 to n do
              begin
                Write(vec[i],'  ');
              end;

        k:=1;
        for i:= 1 to m do
          begin
            for j:= 1 to p do
                begin
                matriz[i,j]:= vec[k];
                k:= k +1;
                end;
          end;
          WriteLn;
          WriteLn('Matriz pasada ');
  
          for i := 1 to m do
          begin
            for j := 1 to p do
            begin
              Write(matriz[i, j]:4);
            end;
            WriteLn; 
          end;
    readkey;
end.