{ Dada una matriz de N x M de números reales, separar sus elementos en dos vectores 
(uno con los elementos positivos y otro con los negativos). Mostrar los vectores resultantes e 
indicar cantidad de valor igual a 0 encontrados en matriz.}

program ejercicio130;

uses crt;

const f=2; c=3;

type matriz = array[1..f,1..c] of real;
     vector = array [1..6] of real;

var vectorPositivo,vectorNegativo:vector; matriz1:matriz;
    fila,columna:integer;
    contCeros:integer; i,iPos,iNeg:integer;

begin
        clrscr;
        contCeros:=0;

        for fila:= 1 to f do
          begin
            for columna:= 1 to c do
              begin
                write('Elemento [', fila, ',', columna, ']: ');
                ReadLn(matriz1[fila,columna]);
                if matriz1[fila,columna] = 0 then
                    begin
                      contCeros:= contCeros + 1;
                    end;
                if matriz1[fila,columna] <= 0 then
                  begin
                    vectorNegativo[iNeg]:= matriz1[fila,columna];
                    iNeg := iNeg + 1;
                  end
                else 
                  begin
                    vectorPositivo[iPos]:= matriz1[fila,columna];
                    iPos := iPos + 1;
                  end;
              end;
          end;
      clrscr;
      writeln('Matriz Resultante: '); 
        for fila := 1 to f do
          begin
           for columna:= 1 to c do
             begin
               Write(matriz1[fila,columna]:8:0,' | ');
             end;
             WriteLn;
            end;
          WriteLn;
          
          writeln('Vector Positivo '); 
        for i := 1 to (iPos - 1) do
          begin
               Write(vectorPositivo[i]:0:0,'  ');  
          end;

        WriteLn;
        WriteLn;
        
        writeln('Vector Negativo '); 
        for i := 1 to (iNeg - 1) do
             begin
               Write(vectorNegativo[i]:0:0,'  ');
            end;

        WriteLn;
        WriteLn;

        Write('Ceros en total: ',contCeros);

        readkey;
end.

