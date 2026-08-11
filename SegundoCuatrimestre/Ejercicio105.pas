{Leer un vector con un número par de elementos.  
 Calcule la suma de las componentes de las posiciones pares y el producto de las 
posiciones impares.  }
program ejercicio105;
uses crt;
var
    i:integer; 
    vecNumeros: array [1..5] of Integer;
    pares,impares:Integer;

begin
    clrscr;
    pares:= 0; impares:=1;

    for i:= 1 to 6 do
        begin
            Write ('---Ingrese un numero--- ');
            begin
            ReadLn(vecNumeros[i]);
            if i mod 2 = 0 then
            begin pares:= pares + vecNumeros[i]; end
            else 
            begin impares:= impares * vecNumeros[i]; end;
            end;
        end;
    WriteLn('La suma de sus numeros pares es: ',pares);
    WriteLn;
    WriteLn('El producto de sus numeros impares es: ',impares);

    readkey;



end.
