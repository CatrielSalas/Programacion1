{ Leer un vector de n elementos y 4 valores (2 posiciones y 2 valores). Intercambiar valores 
con el vector original. Mostrar vector original y vector modificado. }
program ejercicio106;
uses crt;

var
    i: integer;
    pos1, pos2: integer;
    valor1, valor2: real;
    vecNumeros: array[1..5] of real;

begin
    clrscr;

    for i := 1 to 5 do
    begin
        Write('Ingrese el elemento ', i, ': ');
        ReadLn(vecNumeros[i]);
    end;

    WriteLn;
    Write('Ingrese la primera posicion: ');
    ReadLn(pos1);

    Write('Ingrese el segundo valor: ');
    ReadLn(valor1);

    Write('Ingrese la segunda posicion: ');
    ReadLn(pos2);

    Write('Ingrese el segundo valor: ');
    ReadLn(valor2);

    WriteLn;
    WriteLn('Vector original:');

    for i := 1 to 5 do
        Write(vecNumeros[i]:0:2, ' ');

    { Modificamos el vector }
    vecNumeros[pos1] := valor1;
    vecNumeros[pos2] := valor2;

    WriteLn;
    WriteLn;
    WriteLn('Vector modificado:');

    for i := 1 to 5 do
        Write(vecNumeros[i]:0:2, ' ');

    ReadKey;
end.