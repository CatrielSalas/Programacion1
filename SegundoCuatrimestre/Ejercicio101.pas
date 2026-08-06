//Programa que devuelva la suma de los elementos de un vector.
program ejercicio101;
uses crt;
var
    suma,i:integer;
    sumaVect:array[1..5] of integer;
begin
    clrscr;
    suma:= 0;

     writeln('---Ingrese valores---');
     for i:= 1 to 5 do
        begin
        readln(sumaVect[i]);
        suma:= suma + sumaVect[i];
        end;
    WriteLn('Su suma es: ',suma);

    readkey;
end.