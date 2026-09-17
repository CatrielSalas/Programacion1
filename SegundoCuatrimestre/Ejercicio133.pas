{Dada una matriz triangular inferior de orden 5. Cargar sus datos, imprimir su transpuesta y 
obtener el producto de ambas.  }

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
  
  Writeln('--- CARGA DE LA MATRIZ (Triangular Inferior) ---');
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

  Writeln;
  Writeln('Matriz Inferior:');
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
    Writeln('Matriz Transpuesta:');
    for fila := 1 to f do
    begin
      for columna := 1 to c do
        Write(transpuesta[fila, columna]:4);
      Writeln;
    end;

  
  for fila := 1 to f do
  begin
    for columna := 1 to c do
    begin
      producto[fila, columna] := 0;
      for k := 1 to c do
        producto[fila, columna] := producto[fila, columna] + (matriz1[fila, k] * transpuesta[k, columna]);
    end;
  end;

  Writeln;
  Writeln('Producto de la Matriz por su Transpuesta:');
  for fila := 1 to f do
  begin
    for columna := 1 to c do
      Write(producto[fila, columna]:6);
    Writeln;
  end;

  Writeln;
  Writeln('Presione una tecla para salir...');
  readkey;
end.