{Dada una matriz de 3 x 3. Calcular la suma de sus elementos de las columnas y la suma 
de las filas. }
program ejercicio132;

uses crt;

const 
  f = 3; 
  c = 3;

type 
  matriz = array [1..f, 1..c] of integer;

var 
  matriz1: matriz; 
  fila, columna: integer; 
  sumaFila, sumaColumna: integer;

begin
    clrscr;

    
    for fila := 1 to f do
      begin
        for columna := 1 to c do
          begin
            Write('Elemento [', fila, ',', columna, ']: ');
            ReadLn(matriz1[fila, columna]);
          end;
      end;
      
    WriteLn;
    WriteLn('==============================');
    WriteLn;


    WriteLn('--- SUMA DE LAS FILAS ---');
    for fila := 1 to f do
      begin
        sumaFila := 0; 
        for columna := 1 to c do
          begin
            sumaFila := sumaFila + matriz1[fila, columna];
          end;
        WriteLn('La suma de la fila ', fila, ' es: ', sumaFila);
      end;

    WriteLn;

    WriteLn('--- SUMA DE LAS COLUMNAS ---');
    for columna := 1 to c do
      begin
        sumaColumna := 0; 
        for fila := 1 to f do
          begin
            sumaColumna := sumaColumna + matriz1[fila, columna];
          end;
        WriteLn('La suma de la columna ', columna, ' es: ', sumaColumna);
      end;

    readkey;
end.