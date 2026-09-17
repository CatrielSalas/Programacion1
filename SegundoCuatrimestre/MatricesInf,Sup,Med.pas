program ejercicio133;
uses crt;

const 
  f = 5; 
  c = 5;

type 
  matriz = array[1..f, 1..c] of integer;

var 
  fila, columna, k: integer; 
  matriz1, transpuesta, producto: matriz;

begin
  clrscr;
  
  Writeln('--- CARGA DE LA MATRIZ ---');
  for fila := 1 to f do
    begin
        for columna := 1 to c do
        begin
        if fila <= columna then
        begin
            Write('Elemento [', fila, ',', columna, ']: ');
            ReadLn(matriz1[fila, columna]);
        end
        else
        begin
            matriz1[fila, columna] := 0;
        end;
        end;
    end;

    clrscr;

  Writeln;
  Writeln('Matriz Inferior:');
  for fila := 1 to f do
  begin
    for columna := 1 to c do
      Write(matriz1[columna, fila]:4);
    Writeln;
  end;
  
   Writeln;
  Writeln('Matriz Superior:');
  for fila := 1 to f do
  begin
    for columna := 1 to c do
      Write(matriz1[fila, columna]:4);
    Writeln;
  end;

  for fila := 1 to f do
    for columna := 1 to c do
      transpuesta[fila, columna] := matriz1[columna, fila];
    Writeln;
    Writeln('Matriz Transpuesta de la superiror:');
    for fila := 1 to f do
    begin
      for columna := 1 to c do
        Write(transpuesta[fila, columna]:4);
      Writeln;
    end;
    
  for fila := 1 to f do
    for columna := 1 to c do
      transpuesta[fila, columna] := matriz1[columna, fila];
    Writeln;
    Writeln('Matriz Transpuesta de la inferior:');
    for fila := 1 to f do
    begin
      for columna := 1 to c do
        Write(transpuesta[columna, fila]:4);
      Writeln;
    end;

  Writeln;
  Writeln('Presione una tecla para salir...');
  readkey;
end.