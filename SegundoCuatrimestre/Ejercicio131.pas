{Calcular la suma de los elementos de la diagonal principal de una matriz de 5 x 5.}

program ejercicio131;

uses crt;

const f = 5; c = 5;

type    matriz = array [1..f,1..c] of integer;

var     matriz1:matriz; suma:integer;
        fila,columna:integer;

begin
    clrscr;
        suma:= 0;

        for fila:= 1 to f do
          begin
            for columna:= 1 to c do
              begin
                Write('Elemento [',fila,',',columna,']: ');
                ReadLn(matriz1[fila,columna]);
              end;
          end;
        
         writeln('Matriz Resultante: '); 
        for fila := 1 to f do
          begin
           for columna:= 1 to c do
             begin
               Write(matriz1[fila,columna]:8,' | ');
             end;
             WriteLn;
            end;

        for fila:= 1 to f do
            begin
                suma:= suma + matriz1[fila,fila];
            end;

        WriteLn('La Suma de su diagonal principal es: ',suma);
        readkey;

end.