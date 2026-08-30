{Dado un vector V de dimensión N con números enteros y dado un número K que indica 
una posición del vector (0<K<N), diseñar un algoritmo que permita ordenar V desde 1 hasta K 
de menor a mayor y desde K+1 hasta N de mayor a menor. }

program ejercicio110;
uses crt;

const n = 6;

var
    k,j: integer;
    vecV:array[1..n] of integer;
    aux:integer;

begin
    clrscr;

    for k:= 1 to n do
      begin
        Write('---Ingrese numero',k,' --- ');
        ReadLn(vecV[k]);
      end;
        
        for k := 1 to n - 3 do
        begin
        for j := k + 1 to 6 do
        begin
          if vecV[k] < vecV[j] then
          begin
            aux := vecV[k];
            vecV[k] := vecV[j];
            vecV[j] := aux;
          end;
        end;
        end;

        Write('Numeros ordenados de mayor a menor: ');
        for k:= 1 to 3 do
          begin
           Write(vecV[k],'  ');
           end;

        writeln;
        Write('Numeros ordenados de menor a mayor: ');
        for j:= 4 to 6 do
          begin
           Write(vecV[j],'  ');
           end;

    readkey;
end.
