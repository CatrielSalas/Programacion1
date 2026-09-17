{Algoritmo que lea una matriz triangular de 6 x 6. Obtener su transpuesta y consultar su 
diagonal principal, imprimiendo la cantidad de unos que encuentre en la misma. Si son todos 
unos, imprimir un mensaje “DIAGONAL UNITARIA”.}


program ejercicio127;

uses crt;

const 
  f = 6; 
  c = 6; 

type 

  matriz = array [1..f, 1..c] of integer;

var 
  mat, transpuesta: matriz; 
  fila, columna, contUnos: integer;

begin
    mat[1,1]:= 1;  mat[1,2]:= 20; mat[1,3]:= 30; mat[1,4]:= 40; mat[1,5]:= 50; mat[1,6]:= 60;
    mat[2,1]:= 10; mat[2,2]:= 1;  mat[2,3]:= 30; mat[2,4]:= 40; mat[2,5]:= 50; mat[2,6]:= 60;
    mat[3,1]:= 10; mat[3,2]:= 20; mat[3,3]:= 1;  mat[3,4]:= 40; mat[3,5]:= 50; mat[3,6]:= 60;
    mat[4,1]:= 10; mat[4,2]:= 20; mat[4,3]:= 30; mat[4,4]:= 1;  mat[4,5]:= 50; mat[4,6]:= 60;
    mat[5,1]:= 10; mat[5,2]:= 20; mat[5,3]:= 30; mat[5,4]:= 40; mat[5,5]:= 1;  mat[5,6]:= 60;
    mat[6,1]:= 10; mat[6,2]:= 20; mat[6,3]:= 30; mat[6,4]:= 40; mat[6,5]:= 50; mat[6,6]:= 1;
    
    { writeln('Ingrese los elementos de la matriz 6x6:');
            for fila := 1 to f do
                begin
                    for columna := 1 to c do
                        begin
                            write('Elemento [', fila, ',', columna, ']: ');
                            readln(mat[fila, columna]);
                        end;
                end;}

    clrscr;

    for fila := 1 to f do
    begin
        for columna := 1 to c do
        begin
            transpuesta[columna, fila] := mat[fila, columna];
        end;
    end;

    contUnos := 0;
    writeln;
    WriteLn('Elementos de la Diagonal Principal:');
    for fila := 1 to f do
    begin
        write(mat[fila, fila]:4);
        if mat[fila, fila] = 1 then
            contUnos := contUnos + 1;
    end;
    
    writeln;
    writeln('Cantidad de unos encontrados: ', contUnos);

    if contUnos = f then
        writeln('DIAGONAL UNITARIA');

    writeln;
    writeln('Matriz Transpuesta:');
    for fila := 1 to f do
    begin
        for columna := 1 to c do
            write(transpuesta[fila, columna]:4);
        writeln;
    end;

    readkey;
end.