// Ingresar 5 números en un vector y determinar cuántos de ellos son mayores que cero.
program ejercicio102;
uses crt;

var
    i: integer;
    num: integer;
    mayCeroVect: array[1..5] of integer;

begin
    clrscr;
    num := 0;

    WriteLn('---Ingrese valores---');
    for i := 1 to 5 do
    begin
        readln(mayCeroVect[i]);
        if mayCeroVect[i] > 0 then
        begin
            num := num + 1;
        end;
    end;

    WriteLn('Numeros positivos: ', num);
    readkey;
end.