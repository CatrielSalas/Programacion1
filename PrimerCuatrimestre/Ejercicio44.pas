//Calcular la suma de los n primeros n£meros naturales.

program ejercicio044;

uses crt;

var numero:integer;
        suma,i:integer;

begin
    clrscr;

    suma:=0;
    writeln('Ingrese un numero ');
    readln(numero);

    for i:= 1 to numero do
    begin
        suma:= suma +i;
    end;

    writeln('La suma de su numero es: ',suma);

    readkey;


end.
